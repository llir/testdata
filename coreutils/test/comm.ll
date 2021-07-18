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
@only_file_1 = internal unnamed_addr global i1 false, align 1, !dbg !84
@only_file_2 = internal unnamed_addr global i1 false, align 1, !dbg !85
@both = internal unnamed_addr global i1 false, align 1, !dbg !86
@seen_unpairable = internal unnamed_addr global i1 false, align 1, !dbg !87
@issued_disorder_warning = internal unnamed_addr global [2 x i8] zeroinitializer, align 1, !dbg !54
@check_input_order = internal unnamed_addr global i32 0, align 4, !dbg !61
@total_option = internal unnamed_addr global i1 false, align 1, !dbg !88
@.str.18 = private unnamed_addr constant [5 x i8] c"123z\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !63
@delim = internal unnamed_addr global i1 false, align 1, !dbg !89
@col_sep_len = internal unnamed_addr global i64 0, align 8, !dbg !80
@optarg = external local_unnamed_addr global i8*, align 8
@col_sep = internal unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), align 8, !dbg !82
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), align 8, !dbg !90
@.str.55 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !96
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !101
@.str.58 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.59 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !103
@.str.1.69 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !109
@.str.82 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.83 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.84 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.87, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.88, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.93, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.94, i32 0, i32 0), i8* null], align 16, !dbg !115
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !143
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !149
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !159
@.str.11.95 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.96 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.97 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.98 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.99 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.100 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.101 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !166
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !173
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !161
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !175
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !181
@.str.1.149 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.153 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.154 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.155 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !189
@.str.172 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.173 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !670 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !674, metadata !DIExpression()), !dbg !675
  %3 = icmp eq i32 %0, 0, !dbg !676
  br i1 %3, label %9, label %4, !dbg !678

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !679, !tbaa !681
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #29, !dbg !679
  %7 = load i8*, i8** @program_name, align 8, !dbg !679, !tbaa !681
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #29, !dbg !679
  br label %85, !dbg !679

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 5) #29, !dbg !685
  %11 = load i8*, i8** @program_name, align 8, !dbg !685, !tbaa !681
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #29, !dbg !685
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 5) #29, !dbg !687
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !681
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !687
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 5) #29, !dbg !688
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !681
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !688
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.4, i64 0, i64 0), i32 5) #29, !dbg !689
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !681
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !689
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.5, i64 0, i64 0), i32 5) #29, !dbg !690
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !690, !tbaa !681
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !690
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #29, !dbg !691
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !691, !tbaa !681
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !691
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 5) #29, !dbg !692
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !692, !tbaa !681
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !692
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 5) #29, !dbg !693
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !693, !tbaa !681
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !693
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 5) #29, !dbg !694
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !694, !tbaa !681
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !694
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 5) #29, !dbg !695
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !695, !tbaa !681
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !695
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 5) #29, !dbg !696
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !696, !tbaa !681
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !696
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0), i32 5) #29, !dbg !697
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !697, !tbaa !681
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !697
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.13, i64 0, i64 0), i32 5) #29, !dbg !698
  %47 = load i8*, i8** @program_name, align 8, !dbg !698, !tbaa !681
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* %47, i8* %47) #29, !dbg !698
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !699, metadata !DIExpression()) #29, !dbg !718
  %49 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !720
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %49) #29, !dbg !720
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !705, metadata !DIExpression()) #29, !dbg !721
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %49, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #29, !dbg !721
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !714, metadata !DIExpression()) #29, !dbg !718
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !715, metadata !DIExpression()) #29, !dbg !718
  %50 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !722
  call void @llvm.dbg.value(metadata %struct.infomap* %50, metadata !715, metadata !DIExpression()) #29, !dbg !718
  br label %51, !dbg !723

51:                                               ; preds = %56, %9
  %52 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %9 ]
  %53 = phi %struct.infomap* [ %57, %56 ], [ %50, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !715, metadata !DIExpression()) #29, !dbg !718
  %54 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %52) #30, !dbg !724
  %55 = icmp eq i32 %54, 0, !dbg !724
  br i1 %55, label %61, label %56, !dbg !723

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 1, !dbg !725
  call void @llvm.dbg.value(metadata %struct.infomap* %57, metadata !715, metadata !DIExpression()) #29, !dbg !718
  %58 = getelementptr inbounds %struct.infomap, %struct.infomap* %57, i64 0, i32 0, !dbg !726
  %59 = load i8*, i8** %58, align 8, !dbg !726, !tbaa !727
  %60 = icmp eq i8* %59, null, !dbg !729
  br i1 %60, label %61, label %51, !dbg !730, !llvm.loop !731

61:                                               ; preds = %56, %51
  %62 = phi %struct.infomap* [ %53, %51 ], [ %57, %56 ]
  %63 = getelementptr inbounds %struct.infomap, %struct.infomap* %62, i64 0, i32 1, !dbg !733
  %64 = load i8*, i8** %63, align 8, !dbg !733, !tbaa !735
  %65 = icmp eq i8* %64, null, !dbg !736
  %66 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %64, !dbg !737
  call void @llvm.dbg.value(metadata i8* %66, metadata !714, metadata !DIExpression()) #29, !dbg !718
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 5) #29, !dbg !738
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0)) #29, !dbg !738
  %69 = tail call i8* @setlocale(i32 5, i8* null) #29, !dbg !739
  call void @llvm.dbg.value(metadata i8* %69, metadata !717, metadata !DIExpression()) #29, !dbg !718
  %70 = icmp eq i8* %69, null, !dbg !740
  br i1 %70, label %78, label %71, !dbg !742

71:                                               ; preds = %61
  %72 = tail call i32 @strncmp(i8* nonnull %69, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3) #30, !dbg !743
  %73 = icmp eq i32 %72, 0, !dbg !743
  br i1 %73, label %78, label %74, !dbg !744

74:                                               ; preds = %71
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.38, i64 0, i64 0), i32 5) #29, !dbg !745
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !745, !tbaa !681
  %77 = tail call i32 @fputs_unlocked(i8* %75, %struct._IO_FILE* %76) #29, !dbg !745
  br label %78, !dbg !747

78:                                               ; preds = %61, %71, %74
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i32 5) #29, !dbg !748
  %80 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #29, !dbg !748
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i64 0, i64 0), i32 5) #29, !dbg !749
  %82 = icmp eq i8* %66, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !749
  %83 = select i1 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), !dbg !749
  %84 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %81, i8* %66, i8* %83) #29, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %49) #29, !dbg !750
  br label %85

85:                                               ; preds = %78, %4
  tail call void @exit(i32 %0) #31, !dbg !751
  unreachable, !dbg !751
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !752 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !756 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !811 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !815 {
  %3 = alloca [2 x [4 x %struct.linebuffer]], align 16
  %4 = alloca [2 x [4 x %struct.linebuffer*]], align 16
  %5 = alloca [21 x i8], align 16
  %6 = alloca [21 x i8], align 16
  %7 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !820, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i8** %1, metadata !821, metadata !DIExpression()), !dbg !823
  %8 = load i8*, i8** %1, align 8, !dbg !824, !tbaa !681
  tail call void @set_program_name(i8* %8) #29, !dbg !825
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #29, !dbg !826
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #29, !dbg !827
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #29, !dbg !828
  %12 = tail call zeroext i1 @hard_locale(i32 3) #29, !dbg !829
  %13 = zext i1 %12 to i8, !dbg !830
  store i8 %13, i8* @hard_LC_COLLATE, align 1, !dbg !830, !tbaa !831
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #29, !dbg !833
  store i1 true, i1* @only_file_1, align 1, !dbg !834
  store i1 true, i1* @only_file_2, align 1, !dbg !835
  store i1 true, i1* @both, align 1, !dbg !836
  store i1 false, i1* @seen_unpairable, align 1, !dbg !837
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !838, !tbaa !831
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !839, !tbaa !831
  store i32 0, i32* @check_input_order, align 4, !dbg !840, !tbaa !841
  store i1 false, i1* @total_option, align 1, !dbg !842
  br label %15, !dbg !843

15:                                               ; preds = %44, %2
  %16 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #29, !dbg !844
  call void @llvm.dbg.value(metadata i32 %16, metadata !822, metadata !DIExpression()), !dbg !823
  switch i32 %16, label %49 [
    i32 -1, label %50
    i32 49, label %17
    i32 50, label %18
    i32 51, label %19
    i32 122, label %20
    i32 129, label %21
    i32 128, label %22
    i32 130, label %23
    i32 131, label %43
    i32 -130, label %45
    i32 -131, label %46
  ], !dbg !843

17:                                               ; preds = %15
  store i1 false, i1* @only_file_1, align 1, !dbg !845
  br label %44, !dbg !847

18:                                               ; preds = %15
  store i1 false, i1* @only_file_2, align 1, !dbg !848
  br label %44, !dbg !849

19:                                               ; preds = %15
  store i1 false, i1* @both, align 1, !dbg !850
  br label %44, !dbg !851

20:                                               ; preds = %15
  store i1 true, i1* @delim, align 1, !dbg !852
  br label %44, !dbg !853

21:                                               ; preds = %15
  store i32 2, i32* @check_input_order, align 4, !dbg !854, !tbaa !841
  br label %44, !dbg !855

22:                                               ; preds = %15
  store i32 1, i32* @check_input_order, align 4, !dbg !856, !tbaa !841
  br label %44, !dbg !857

23:                                               ; preds = %15
  %24 = load i64, i64* @col_sep_len, align 8, !dbg !858, !tbaa !860
  %25 = icmp eq i64 %24, 0, !dbg !858
  br i1 %25, label %26, label %28, !dbg !862

26:                                               ; preds = %23
  %27 = load i8*, i8** @optarg, align 8, !dbg !863, !tbaa !681
  br label %35, !dbg !862

28:                                               ; preds = %23
  %29 = load i8*, i8** @col_sep, align 8, !dbg !864, !tbaa !681
  %30 = load i8*, i8** @optarg, align 8, !dbg !864, !tbaa !681
  %31 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %29, i8* nonnull dereferenceable(1) %30) #30, !dbg !864
  %32 = icmp eq i32 %31, 0, !dbg !864
  br i1 %32, label %35, label %33, !dbg !865

33:                                               ; preds = %28
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 5) #29, !dbg !866
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %34) #29, !dbg !866
  unreachable, !dbg !866

35:                                               ; preds = %26, %28
  %36 = phi i8* [ %27, %26 ], [ %30, %28 ], !dbg !863
  store i8* %36, i8** @col_sep, align 8, !dbg !867, !tbaa !681
  %37 = load i8, i8* %36, align 1, !dbg !868, !tbaa !841
  %38 = icmp eq i8 %37, 0, !dbg !868
  br i1 %38, label %41, label %39, !dbg !868

39:                                               ; preds = %35
  %40 = tail call i64 @strlen(i8* nonnull %36) #30, !dbg !869
  br label %41, !dbg !868

41:                                               ; preds = %35, %39
  %42 = phi i64 [ %40, %39 ], [ 1, %35 ], !dbg !868
  store i64 %42, i64* @col_sep_len, align 8, !dbg !870, !tbaa !860
  br label %44, !dbg !871

43:                                               ; preds = %15
  store i1 true, i1* @total_option, align 1, !dbg !872
  br label %44, !dbg !873

44:                                               ; preds = %43, %41, %22, %21, %20, %19, %18, %17
  br label %15, !dbg !844, !llvm.loop !874

45:                                               ; preds = %15
  tail call void @usage(i32 0) #32, !dbg !876
  unreachable, !dbg !876

46:                                               ; preds = %15
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !877, !tbaa !681
  %48 = load i8*, i8** @Version, align 8, !dbg !877, !tbaa !681
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* null) #29, !dbg !877
  tail call void @exit(i32 0) #31, !dbg !877
  unreachable, !dbg !877

49:                                               ; preds = %15
  tail call void @usage(i32 1) #32, !dbg !878
  unreachable, !dbg !878

50:                                               ; preds = %15
  %51 = load i64, i64* @col_sep_len, align 8, !dbg !879, !tbaa !860
  %52 = icmp eq i64 %51, 0, !dbg !879
  br i1 %52, label %53, label %54, !dbg !881

53:                                               ; preds = %50
  store i64 1, i64* @col_sep_len, align 8, !dbg !882, !tbaa !860
  br label %54, !dbg !883

54:                                               ; preds = %53, %50
  %55 = load i32, i32* @optind, align 4, !dbg !884, !tbaa !886
  %56 = sub nsw i32 %0, %55, !dbg !888
  %57 = icmp slt i32 %56, 2, !dbg !889
  br i1 %57, label %58, label %70, !dbg !890

58:                                               ; preds = %54
  %59 = icmp slt i32 %55, %0, !dbg !891
  br i1 %59, label %62, label %60, !dbg !894

60:                                               ; preds = %58
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 5) #29, !dbg !895
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %61) #29, !dbg !896
  br label %69, !dbg !896

62:                                               ; preds = %58
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 5) #29, !dbg !897
  %64 = add nsw i32 %0, -1, !dbg !898
  %65 = sext i32 %64 to i64, !dbg !899
  %66 = getelementptr inbounds i8*, i8** %1, i64 %65, !dbg !899
  %67 = load i8*, i8** %66, align 8, !dbg !899, !tbaa !681
  %68 = tail call i8* @quote(i8* %67) #29, !dbg !900
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %63, i8* %68) #29, !dbg !901
  br label %69

69:                                               ; preds = %62, %60
  tail call void @usage(i32 1) #32, !dbg !902
  unreachable, !dbg !902

70:                                               ; preds = %54
  %71 = icmp eq i32 %56, 2, !dbg !903
  br i1 %71, label %80, label %72, !dbg !905

72:                                               ; preds = %70
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 5) #29, !dbg !906
  %74 = load i32, i32* @optind, align 4, !dbg !908, !tbaa !886
  %75 = add nsw i32 %74, 2, !dbg !909
  %76 = sext i32 %75 to i64, !dbg !910
  %77 = getelementptr inbounds i8*, i8** %1, i64 %76, !dbg !910
  %78 = load i8*, i8** %77, align 8, !dbg !910, !tbaa !681
  %79 = tail call i8* @quote(i8* %78) #29, !dbg !911
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %73, i8* %79) #29, !dbg !912
  tail call void @usage(i32 1) #32, !dbg !913
  unreachable, !dbg !913

80:                                               ; preds = %70
  %81 = sext i32 %55 to i64, !dbg !914
  %82 = getelementptr inbounds i8*, i8** %1, i64 %81, !dbg !914
  call void @llvm.dbg.value(metadata i8** %82, metadata !915, metadata !DIExpression()) #29, !dbg !966
  %83 = bitcast [2 x [4 x %struct.linebuffer]]* %3 to i8*, !dbg !968
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %83) #29, !dbg !968
  call void @llvm.dbg.declare(metadata [2 x [4 x %struct.linebuffer]]* %3, metadata !920, metadata !DIExpression()) #29, !dbg !969
  %84 = bitcast [2 x [4 x %struct.linebuffer*]]* %4 to i8*, !dbg !970
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %84) #29, !dbg !970
  call void @llvm.dbg.declare(metadata [2 x [4 x %struct.linebuffer*]]* %4, metadata !933, metadata !DIExpression()) #29, !dbg !971
  call void @llvm.dbg.value(metadata i64 0, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 0, metadata !947, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !947, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 0, metadata !948, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !948, metadata !DIExpression()) #29, !dbg !966
  %85 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 0, !dbg !972
  call void @initbuffer(%struct.linebuffer* nonnull %85) #29, !dbg !979
  %86 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 0, !dbg !980
  store %struct.linebuffer* %85, %struct.linebuffer** %86, align 16, !dbg !981, !tbaa !681
  call void @llvm.dbg.value(metadata i64 1, metadata !948, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 1, metadata !948, metadata !DIExpression()) #29, !dbg !966
  %87 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 1, !dbg !972
  call void @initbuffer(%struct.linebuffer* nonnull %87) #29, !dbg !979
  %88 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 1, !dbg !980
  store %struct.linebuffer* %87, %struct.linebuffer** %88, align 8, !dbg !981, !tbaa !681
  call void @llvm.dbg.value(metadata i64 2, metadata !948, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 2, metadata !948, metadata !DIExpression()) #29, !dbg !966
  %89 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 2, !dbg !972
  call void @initbuffer(%struct.linebuffer* nonnull %89) #29, !dbg !979
  %90 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 2, !dbg !980
  store %struct.linebuffer* %89, %struct.linebuffer** %90, align 16, !dbg !981, !tbaa !681
  call void @llvm.dbg.value(metadata i64 3, metadata !948, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 3, metadata !948, metadata !DIExpression()) #29, !dbg !966
  %91 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 3, !dbg !972
  call void @initbuffer(%struct.linebuffer* nonnull %91) #29, !dbg !979
  %92 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 3, !dbg !980
  store %struct.linebuffer* %91, %struct.linebuffer** %92, align 8, !dbg !981, !tbaa !681
  call void @llvm.dbg.value(metadata i64 4, metadata !948, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 0, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 0, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 0, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #29, !dbg !966
  %93 = load i8*, i8** %82, align 8, !dbg !982, !tbaa !681
  %94 = call i32 @strcmp(i8* nonnull dereferenceable(1) %93, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #30, !dbg !982
  %95 = icmp eq i32 %94, 0, !dbg !982
  br i1 %95, label %109, label %111, !dbg !982

96:                                               ; preds = %123
  call void @llvm.dbg.value(metadata i64 1, metadata !947, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !947, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 1, metadata !947, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 0, metadata !948, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !948, metadata !DIExpression()) #29, !dbg !966
  %97 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 0, !dbg !972
  call void @initbuffer(%struct.linebuffer* nonnull %97) #29, !dbg !979
  %98 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 0, !dbg !980
  store %struct.linebuffer* %97, %struct.linebuffer** %98, align 16, !dbg !981, !tbaa !681
  call void @llvm.dbg.value(metadata i64 1, metadata !948, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 1, metadata !948, metadata !DIExpression()) #29, !dbg !966
  %99 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 1, !dbg !972
  call void @initbuffer(%struct.linebuffer* nonnull %99) #29, !dbg !979
  %100 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 1, !dbg !980
  store %struct.linebuffer* %99, %struct.linebuffer** %100, align 8, !dbg !981, !tbaa !681
  call void @llvm.dbg.value(metadata i64 2, metadata !948, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 2, metadata !948, metadata !DIExpression()) #29, !dbg !966
  %101 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 2, !dbg !972
  call void @initbuffer(%struct.linebuffer* nonnull %101) #29, !dbg !979
  %102 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 2, !dbg !980
  store %struct.linebuffer* %101, %struct.linebuffer** %102, align 16, !dbg !981, !tbaa !681
  call void @llvm.dbg.value(metadata i64 3, metadata !948, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 3, metadata !948, metadata !DIExpression()) #29, !dbg !966
  %103 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 3, !dbg !972
  call void @initbuffer(%struct.linebuffer* nonnull %103) #29, !dbg !979
  %104 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 3, !dbg !980
  store %struct.linebuffer* %103, %struct.linebuffer** %104, align 8, !dbg !981, !tbaa !681
  call void @llvm.dbg.value(metadata i64 4, metadata !948, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 0, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 0, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 0, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #29, !dbg !966
  %105 = getelementptr inbounds i8*, i8** %82, i64 1, !dbg !982
  %106 = load i8*, i8** %105, align 8, !dbg !982, !tbaa !681
  %107 = call i32 @strcmp(i8* nonnull dereferenceable(1) %106, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #30, !dbg !982
  %108 = icmp eq i32 %107, 0, !dbg !982
  br i1 %108, label %329, label %327, !dbg !982

109:                                              ; preds = %80
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !983, !tbaa !681
  br label %113, !dbg !982

111:                                              ; preds = %80
  %112 = call %struct._IO_FILE* @fopen_safer(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #29, !dbg !984
  br label %113, !dbg !982

113:                                              ; preds = %111, %109
  %114 = phi %struct._IO_FILE* [ %110, %109 ], [ %112, %111 ], !dbg !982
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %114, metadata !939, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #29, !dbg !966
  %115 = icmp eq %struct._IO_FILE* %114, null, !dbg !985
  br i1 %115, label %116, label %123, !dbg !987

116:                                              ; preds = %331, %113
  %117 = phi i64 [ 0, %113 ], [ 1, %331 ]
  %118 = getelementptr inbounds i8*, i8** %82, i64 %117, !dbg !982
  %119 = tail call i32* @__errno_location() #33, !dbg !988
  %120 = load i32, i32* %119, align 4, !dbg !988, !tbaa !886
  %121 = load i8*, i8** %118, align 8, !dbg !988, !tbaa !681
  %122 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %121) #29, !dbg !988
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8* %122) #29, !dbg !988
  unreachable, !dbg !988

123:                                              ; preds = %113
  call void @fadvise(%struct._IO_FILE* nonnull %114, i32 2) #29, !dbg !989
  %124 = load i1, i1* @delim, align 1, !dbg !990
  %125 = select i1 %124, i8 0, i8 10, !dbg !990
  %126 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* nonnull %85, %struct._IO_FILE* nonnull %114, i8 signext %125) #29, !dbg !991
  call void @llvm.dbg.value(metadata %struct.linebuffer* %126, metadata !930, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %114, metadata !992, metadata !DIExpression()) #29, !dbg !998
  %127 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %114, i64 0, i32 0, !dbg !1001
  %128 = load i32, i32* %127, align 8, !dbg !1001, !tbaa !1002
  %129 = and i32 %128, 32, !dbg !1005
  %130 = icmp eq i32 %129, 0, !dbg !1005
  call void @llvm.dbg.value(metadata i64 0, metadata !947, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #29, !dbg !966
  br i1 %130, label %96, label %131, !dbg !1006

131:                                              ; preds = %334, %123
  %132 = phi i64 [ 0, %123 ], [ 1, %334 ]
  %133 = getelementptr inbounds i8*, i8** %82, i64 %132, !dbg !982
  %134 = tail call i32* @__errno_location() #33, !dbg !1007
  %135 = load i32, i32* %134, align 4, !dbg !1007, !tbaa !886
  %136 = load i8*, i8** %133, align 8, !dbg !1007, !tbaa !681
  %137 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %136) #29, !dbg !1007
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8* %137) #29, !dbg !1007
  unreachable, !dbg !1007

138:                                              ; preds = %314, %342
  %139 = phi i64 [ 0, %342 ], [ %318, %314 ], !dbg !1008
  %140 = phi i64 [ 0, %342 ], [ %319, %314 ], !dbg !966
  %141 = phi i64 [ 0, %342 ], [ %320, %314 ], !dbg !1008
  call void @llvm.dbg.value(metadata i64 0, metadata !947, metadata !DIExpression()) #29, !dbg !966
  %142 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %114) #29, !dbg !1009
  %143 = icmp eq i32 %142, 0, !dbg !1013
  call void @llvm.dbg.value(metadata i64 0, metadata !947, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #29, !dbg !966
  br i1 %143, label %253, label %256, !dbg !1014

144:                                              ; preds = %342, %314
  %145 = phi i32 [ %321, %314 ], [ 0, %342 ], !dbg !1015
  %146 = phi i32 [ %322, %314 ], [ 0, %342 ], !dbg !1016
  %147 = phi i32 [ %317, %314 ], [ 0, %342 ], !dbg !1015
  %148 = phi i32 [ %316, %314 ], [ 0, %342 ], !dbg !1016
  %149 = phi %struct.linebuffer* [ %323, %314 ], [ %337, %342 ]
  %150 = phi %struct.linebuffer* [ %315, %314 ], [ %126, %342 ]
  %151 = phi i64 [ %320, %314 ], [ 0, %342 ]
  %152 = phi i64 [ %319, %314 ], [ 0, %342 ]
  %153 = phi i64 [ %318, %314 ], [ 0, %342 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %149, metadata !930, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata %struct.linebuffer* %150, metadata !930, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 %148, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 %147, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 %146, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 %145, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 %151, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 %152, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 %153, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #29, !dbg !966
  call void @llvm.dbg.declare(metadata [2 x i8]* undef, metadata !951, metadata !DIExpression()) #29, !dbg !1017
  %154 = icmp eq %struct.linebuffer* %150, null, !dbg !1018
  br i1 %154, label %155, label %156, !dbg !1019

155:                                              ; preds = %144
  store i1 true, i1* @seen_unpairable, align 1, !dbg !1020
  br label %210, !dbg !1023

156:                                              ; preds = %144
  %157 = icmp eq %struct.linebuffer* %149, null, !dbg !1024
  br i1 %157, label %196, label %158, !dbg !1025

158:                                              ; preds = %156
  %159 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1026, !tbaa !831, !range !1027
  %160 = icmp eq i8 %159, 0, !dbg !1026
  br i1 %160, label %173, label %161, !dbg !1028

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %150, i64 0, i32 2, !dbg !1029
  %163 = load i8*, i8** %162, align 8, !dbg !1029, !tbaa !1030
  %164 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %150, i64 0, i32 1, !dbg !1032
  %165 = load i64, i64* %164, align 8, !dbg !1032, !tbaa !1033
  %166 = add i64 %165, -1, !dbg !1034
  %167 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %149, i64 0, i32 2, !dbg !1035
  %168 = load i8*, i8** %167, align 8, !dbg !1035, !tbaa !1030
  %169 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %149, i64 0, i32 1, !dbg !1036
  %170 = load i64, i64* %169, align 8, !dbg !1036, !tbaa !1033
  %171 = add i64 %170, -1, !dbg !1037
  %172 = call i32 @xmemcoll(i8* %163, i64 %166, i8* %168, i64 %171) #29, !dbg !1038
  call void @llvm.dbg.value(metadata i32 %172, metadata !949, metadata !DIExpression()) #29, !dbg !1039
  br label %190, !dbg !1040

173:                                              ; preds = %158
  %174 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %150, i64 0, i32 1, !dbg !1041
  %175 = load i64, i64* %174, align 8, !dbg !1041, !tbaa !1033
  %176 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %149, i64 0, i32 1, !dbg !1041
  %177 = load i64, i64* %176, align 8, !dbg !1041, !tbaa !1033
  %178 = icmp ult i64 %175, %177, !dbg !1041
  %179 = select i1 %178, i64 %175, i64 %177, !dbg !1041
  %180 = add i64 %179, -1, !dbg !1042
  call void @llvm.dbg.value(metadata i64 %180, metadata !952, metadata !DIExpression()) #29, !dbg !1043
  %181 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %150, i64 0, i32 2, !dbg !1044
  %182 = load i8*, i8** %181, align 8, !dbg !1044, !tbaa !1030
  %183 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %149, i64 0, i32 2, !dbg !1045
  %184 = load i8*, i8** %183, align 8, !dbg !1045, !tbaa !1030
  %185 = call i32 @memcmp(i8* %182, i8* %184, i64 %180) #30, !dbg !1046
  call void @llvm.dbg.value(metadata i32 %185, metadata !949, metadata !DIExpression()) #29, !dbg !1039
  %186 = icmp eq i32 %185, 0, !dbg !1047
  br i1 %186, label %187, label %197, !dbg !1049

187:                                              ; preds = %173
  %188 = icmp ne i64 %175, %177, !dbg !1050
  %189 = zext i1 %188 to i32, !dbg !1050
  br i1 %178, label %196, label %190

190:                                              ; preds = %187, %161
  %191 = phi i32 [ %172, %161 ], [ %189, %187 ], !dbg !1051
  call void @llvm.dbg.value(metadata i32 %191, metadata !949, metadata !DIExpression()) #29, !dbg !1039
  %192 = icmp eq i32 %191, 0, !dbg !1052
  br i1 %192, label %193, label %197, !dbg !1053

193:                                              ; preds = %190
  %194 = add i64 %152, 1, !dbg !1054
  call void @llvm.dbg.value(metadata i64 %194, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #29, !dbg !966
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1056, !tbaa !681
  call fastcc void @writeline(%struct.linebuffer* nonnull %149, %struct._IO_FILE* %195, i32 3) #29, !dbg !1057
  br label %213, !dbg !1058

196:                                              ; preds = %187, %156
  store i1 true, i1* @seen_unpairable, align 1, !dbg !1020
  br label %200, !dbg !1023

197:                                              ; preds = %190, %173
  %198 = phi i32 [ %191, %190 ], [ %185, %173 ]
  store i1 true, i1* @seen_unpairable, align 1, !dbg !1020
  %199 = icmp slt i32 %198, 1, !dbg !1059
  br i1 %199, label %200, label %210, !dbg !1023

200:                                              ; preds = %197, %196
  %201 = add i64 %151, 1, !dbg !1061
  call void @llvm.dbg.value(metadata i64 %201, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata %struct.linebuffer* %150, metadata !1063, metadata !DIExpression()) #29, !dbg !1092
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !1070, metadata !DIExpression()) #29, !dbg !1092
  call void @llvm.dbg.value(metadata i32 1, metadata !1071, metadata !DIExpression()) #29, !dbg !1092
  %202 = load i1, i1* @only_file_1, align 1, !dbg !1094
  br i1 %202, label %203, label %213, !dbg !1096

203:                                              ; preds = %200
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1097, !tbaa !681
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %204, metadata !1070, metadata !DIExpression()) #29, !dbg !1092
  %205 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %150, i64 0, i32 1, !dbg !1098
  %206 = load i64, i64* %205, align 8, !dbg !1098, !tbaa !1033
  %207 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %150, i64 0, i32 2, !dbg !1098
  %208 = load i8*, i8** %207, align 8, !dbg !1098, !tbaa !1030
  %209 = call i64 @fwrite_unlocked(i8* %208, i64 1, i64 %206, %struct._IO_FILE* %204) #29, !dbg !1098
  br label %213, !dbg !1098

210:                                              ; preds = %197, %155
  %211 = add i64 %153, 1, !dbg !1099
  call void @llvm.dbg.value(metadata i64 %211, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #29, !dbg !966
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1101, !tbaa !681
  call fastcc void @writeline(%struct.linebuffer* %149, %struct._IO_FILE* %212, i32 2) #29, !dbg !1102
  br label %279, !dbg !1058

213:                                              ; preds = %203, %200, %193
  %214 = phi i1 [ false, %193 ], [ true, %203 ], [ true, %200 ], !dbg !1039
  %215 = phi i64 [ %194, %193 ], [ %152, %203 ], [ %152, %200 ]
  %216 = phi i64 [ %151, %193 ], [ %201, %203 ], [ %201, %200 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !947, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 %147, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 %148, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #29, !dbg !966
  %217 = add nsw i32 %148, 1, !dbg !1103
  %218 = and i32 %217, 3, !dbg !1108
  call void @llvm.dbg.value(metadata i32 %218, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #29, !dbg !966
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %219, !dbg !1109
  %221 = load %struct.linebuffer*, %struct.linebuffer** %220, align 8, !dbg !1109, !tbaa !681
  %222 = load i1, i1* @delim, align 1, !dbg !1110
  %223 = select i1 %222, i8 0, i8 10, !dbg !1110
  %224 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %221, %struct._IO_FILE* nonnull %114, i8 signext %223) #29, !dbg !1111
  call void @llvm.dbg.value(metadata %struct.linebuffer* %224, metadata !930, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #29, !dbg !966
  %225 = icmp eq %struct.linebuffer* %224, null, !dbg !1112
  br i1 %225, label %230, label %226, !dbg !1114

226:                                              ; preds = %213
  %227 = sext i32 %148 to i64, !dbg !1115
  %228 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %227, !dbg !1115
  %229 = load %struct.linebuffer*, %struct.linebuffer** %228, align 8, !dbg !1115, !tbaa !681
  call fastcc void @check_order(%struct.linebuffer* %229, %struct.linebuffer* nonnull %224, i32 1) #29, !dbg !1116
  br label %241, !dbg !1116

230:                                              ; preds = %213
  %231 = sext i32 %147 to i64, !dbg !1117
  %232 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %231, !dbg !1117
  %233 = load %struct.linebuffer*, %struct.linebuffer** %232, align 8, !dbg !1117, !tbaa !681
  %234 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %233, i64 0, i32 2, !dbg !1119
  %235 = load i8*, i8** %234, align 8, !dbg !1119, !tbaa !1030
  %236 = icmp eq i8* %235, null, !dbg !1117
  br i1 %236, label %241, label %237, !dbg !1120

237:                                              ; preds = %230
  %238 = sext i32 %148 to i64, !dbg !1121
  %239 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %238, !dbg !1121
  %240 = load %struct.linebuffer*, %struct.linebuffer** %239, align 8, !dbg !1121, !tbaa !681
  call fastcc void @check_order(%struct.linebuffer* nonnull %233, %struct.linebuffer* %240, i32 1) #29, !dbg !1122
  br label %241, !dbg !1122

241:                                              ; preds = %237, %230, %226
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %114, metadata !992, metadata !DIExpression()) #29, !dbg !1123
  %242 = load i32, i32* %127, align 8, !dbg !1126, !tbaa !1002
  %243 = and i32 %242, 32, !dbg !1127
  %244 = icmp eq i32 %243, 0, !dbg !1127
  br i1 %244, label %252, label %245, !dbg !1128

245:                                              ; preds = %310, %241
  %246 = phi i64 [ 0, %241 ], [ 1, %310 ]
  %247 = tail call i32* @__errno_location() #33, !dbg !1129
  %248 = load i32, i32* %247, align 4, !dbg !1129, !tbaa !886
  %249 = getelementptr inbounds i8*, i8** %82, i64 %246, !dbg !1129
  %250 = load i8*, i8** %249, align 8, !dbg !1129, !tbaa !681
  %251 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %250) #29, !dbg !1129
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8* %251) #29, !dbg !1129
  unreachable, !dbg !1129

252:                                              ; preds = %241
  call void @llvm.dbg.value(metadata %struct.linebuffer* %224, metadata !930, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 %218, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 %148, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 1, metadata !947, metadata !DIExpression()) #29, !dbg !966
  br i1 %214, label %314, label %279, !dbg !1130

253:                                              ; preds = %138
  call void @llvm.dbg.value(metadata i64 1, metadata !947, metadata !DIExpression()) #29, !dbg !966
  %254 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %332) #29, !dbg !1009
  %255 = icmp eq i32 %254, 0, !dbg !1013
  call void @llvm.dbg.value(metadata i64 1, metadata !947, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #29, !dbg !966
  br i1 %255, label %277, label %256, !dbg !1014

256:                                              ; preds = %253, %138
  %257 = phi i64 [ 0, %138 ], [ 1, %253 ]
  %258 = tail call i32* @__errno_location() #33, !dbg !1131
  %259 = load i32, i32* %258, align 4, !dbg !1131, !tbaa !886
  %260 = getelementptr inbounds i8*, i8** %82, i64 %257, !dbg !1131
  %261 = load i8*, i8** %260, align 8, !dbg !1131, !tbaa !681
  %262 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %261) #29, !dbg !1131
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %259, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8* %262) #29, !dbg !1131
  unreachable, !dbg !1131

263:                                              ; preds = %277
  %264 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1132
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %264) #29, !dbg !1132
  call void @llvm.dbg.declare(metadata [21 x i8]* %5, metadata !958, metadata !DIExpression()) #29, !dbg !1133
  %265 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0, !dbg !1134
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %265) #29, !dbg !1134
  call void @llvm.dbg.declare(metadata [21 x i8]* %6, metadata !964, metadata !DIExpression()) #29, !dbg !1135
  %266 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0, !dbg !1136
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %266) #29, !dbg !1136
  call void @llvm.dbg.declare(metadata [21 x i8]* %7, metadata !965, metadata !DIExpression()) #29, !dbg !1137
  %267 = call i8* @umaxtostr(i64 %141, i8* nonnull %264) #29, !dbg !1138
  %268 = load i8*, i8** @col_sep, align 8, !dbg !1138, !tbaa !681
  %269 = call i8* @umaxtostr(i64 %139, i8* nonnull %265) #29, !dbg !1138
  %270 = load i8*, i8** @col_sep, align 8, !dbg !1138, !tbaa !681
  %271 = call i8* @umaxtostr(i64 %140, i8* nonnull %266) #29, !dbg !1138
  %272 = load i8*, i8** @col_sep, align 8, !dbg !1138, !tbaa !681
  %273 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i32 5) #29, !dbg !1138
  %274 = load i1, i1* @delim, align 1, !dbg !1138
  %275 = select i1 %274, i32 0, i32 10, !dbg !1138
  %276 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i8* %267, i8* %268, i8* %269, i8* %270, i8* %271, i8* %272, i8* %273, i32 %275) #29, !dbg !1138
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %266) #29, !dbg !1139
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %265) #29, !dbg !1139
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %264) #29, !dbg !1139
  br label %346, !dbg !1140

277:                                              ; preds = %253
  call void @llvm.dbg.value(metadata i64 1, metadata !947, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #29, !dbg !966
  %278 = load i1, i1* @total_option, align 1, !dbg !1141
  br i1 %278, label %263, label %346, !dbg !1142

279:                                              ; preds = %252, %210
  %280 = phi %struct.linebuffer* [ %224, %252 ], [ %150, %210 ]
  %281 = phi i32 [ %218, %252 ], [ %148, %210 ]
  %282 = phi i32 [ %148, %252 ], [ %147, %210 ]
  %283 = phi i64 [ %153, %252 ], [ %211, %210 ]
  %284 = phi i64 [ %215, %252 ], [ %152, %210 ]
  %285 = phi i64 [ %216, %252 ], [ %151, %210 ]
  call void @llvm.dbg.value(metadata i32 %145, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 %146, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #29, !dbg !966
  %286 = add nsw i32 %146, 1, !dbg !1103
  %287 = and i32 %286, 3, !dbg !1108
  call void @llvm.dbg.value(metadata i32 %287, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #29, !dbg !966
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %288, !dbg !1109
  %290 = load %struct.linebuffer*, %struct.linebuffer** %289, align 8, !dbg !1109, !tbaa !681
  %291 = load i1, i1* @delim, align 1, !dbg !1110
  %292 = select i1 %291, i8 0, i8 10, !dbg !1110
  %293 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %290, %struct._IO_FILE* nonnull %332, i8 signext %292) #29, !dbg !1111
  call void @llvm.dbg.value(metadata %struct.linebuffer* %293, metadata !930, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #29, !dbg !966
  %294 = icmp eq %struct.linebuffer* %293, null, !dbg !1112
  br i1 %294, label %299, label %295, !dbg !1114

295:                                              ; preds = %279
  %296 = sext i32 %146 to i64, !dbg !1115
  %297 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %296, !dbg !1115
  %298 = load %struct.linebuffer*, %struct.linebuffer** %297, align 8, !dbg !1115, !tbaa !681
  call fastcc void @check_order(%struct.linebuffer* %298, %struct.linebuffer* nonnull %293, i32 2) #29, !dbg !1116
  br label %310, !dbg !1116

299:                                              ; preds = %279
  %300 = sext i32 %145 to i64, !dbg !1117
  %301 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %300, !dbg !1117
  %302 = load %struct.linebuffer*, %struct.linebuffer** %301, align 8, !dbg !1117, !tbaa !681
  %303 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %302, i64 0, i32 2, !dbg !1119
  %304 = load i8*, i8** %303, align 8, !dbg !1119, !tbaa !1030
  %305 = icmp eq i8* %304, null, !dbg !1117
  br i1 %305, label %310, label %306, !dbg !1120

306:                                              ; preds = %299
  %307 = sext i32 %146 to i64, !dbg !1121
  %308 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %307, !dbg !1121
  %309 = load %struct.linebuffer*, %struct.linebuffer** %308, align 8, !dbg !1121, !tbaa !681
  call fastcc void @check_order(%struct.linebuffer* nonnull %302, %struct.linebuffer* %309, i32 2) #29, !dbg !1122
  br label %310, !dbg !1122

310:                                              ; preds = %306, %299, %295
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %332, metadata !992, metadata !DIExpression()) #29, !dbg !1123
  %311 = load i32, i32* %338, align 8, !dbg !1126, !tbaa !1002
  %312 = and i32 %311, 32, !dbg !1127
  %313 = icmp eq i32 %312, 0, !dbg !1127
  br i1 %313, label %314, label %245, !dbg !1128

314:                                              ; preds = %310, %252
  %315 = phi %struct.linebuffer* [ %224, %252 ], [ %280, %310 ]
  %316 = phi i32 [ %218, %252 ], [ %281, %310 ]
  %317 = phi i32 [ %148, %252 ], [ %282, %310 ]
  %318 = phi i64 [ %153, %252 ], [ %283, %310 ]
  %319 = phi i64 [ %215, %252 ], [ %284, %310 ]
  %320 = phi i64 [ %216, %252 ], [ %285, %310 ]
  %321 = phi i32 [ %145, %252 ], [ %146, %310 ], !dbg !966
  %322 = phi i32 [ %146, %252 ], [ %287, %310 ], !dbg !966
  %323 = phi %struct.linebuffer* [ %149, %252 ], [ %293, %310 ], !dbg !966
  call void @llvm.dbg.value(metadata %struct.linebuffer* %323, metadata !930, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 %322, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i32 %321, metadata !935, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 2, metadata !947, metadata !DIExpression()) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 %153, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #29, !dbg !966
  %324 = icmp ne %struct.linebuffer* %315, null, !dbg !1143
  %325 = icmp ne %struct.linebuffer* %323, null, !dbg !1144
  %326 = or i1 %324, %325, !dbg !1144
  br i1 %326, label %144, label %138, !dbg !1145, !llvm.loop !1146

327:                                              ; preds = %96
  %328 = call %struct._IO_FILE* @fopen_safer(i8* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #29, !dbg !984
  br label %331, !dbg !982

329:                                              ; preds = %96
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !983, !tbaa !681
  br label %331, !dbg !982

331:                                              ; preds = %329, %327
  %332 = phi %struct._IO_FILE* [ %330, %329 ], [ %328, %327 ], !dbg !982
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %332, metadata !939, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #29, !dbg !966
  %333 = icmp eq %struct._IO_FILE* %332, null, !dbg !985
  br i1 %333, label %116, label %334, !dbg !987

334:                                              ; preds = %331
  call void @fadvise(%struct._IO_FILE* nonnull %332, i32 2) #29, !dbg !989
  %335 = load i1, i1* @delim, align 1, !dbg !990
  %336 = select i1 %335, i8 0, i8 10, !dbg !990
  %337 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* nonnull %97, %struct._IO_FILE* nonnull %332, i8 signext %336) #29, !dbg !991
  call void @llvm.dbg.value(metadata %struct.linebuffer* %337, metadata !930, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %332, metadata !992, metadata !DIExpression()) #29, !dbg !998
  %338 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %332, i64 0, i32 0, !dbg !1001
  %339 = load i32, i32* %338, align 8, !dbg !1001, !tbaa !1002
  %340 = and i32 %339, 32, !dbg !1005
  %341 = icmp eq i32 %340, 0, !dbg !1005
  call void @llvm.dbg.value(metadata i64 1, metadata !947, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #29, !dbg !966
  br i1 %341, label %342, label %131, !dbg !1006

342:                                              ; preds = %334
  call void @llvm.dbg.value(metadata i64 1, metadata !947, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #29, !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !944, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #29, !dbg !966
  %343 = icmp ne %struct.linebuffer* %126, null, !dbg !1143
  %344 = icmp ne %struct.linebuffer* %337, null, !dbg !1144
  %345 = or i1 %343, %344, !dbg !1144
  br i1 %345, label %144, label %138, !dbg !1145

346:                                              ; preds = %263, %277
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %84) #29, !dbg !1148
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %83) #29, !dbg !1148
  %347 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !1149, !tbaa !831, !range !1027
  %348 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1
  %349 = or i8 %348, %347, !dbg !1151
  %350 = icmp eq i8 %349, 0, !dbg !1151
  br i1 %350, label %353, label %351, !dbg !1151

351:                                              ; preds = %346
  %352 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 5) #29, !dbg !1152
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %352) #29, !dbg !1152
  unreachable, !dbg !1152

353:                                              ; preds = %346
  ret i32 0, !dbg !1153
}

; Function Attrs: nounwind
declare !dbg !1154 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1157 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1160 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1167 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1173 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @writeline(%struct.linebuffer* nocapture readonly %0, %struct._IO_FILE* %1, i32 %2) unnamed_addr #8 !dbg !1064 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1063, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1070, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 %2, metadata !1071, metadata !DIExpression()), !dbg !1177
  switch i32 %2, label %28 [
    i32 1, label %4
    i32 2, label %6
    i32 3, label %14
  ], !dbg !1178

4:                                                ; preds = %3
  %5 = load i1, i1* @only_file_1, align 1, !dbg !1179
  br i1 %5, label %28, label %34, !dbg !1180

6:                                                ; preds = %3
  %7 = load i1, i1* @only_file_2, align 1, !dbg !1181
  br i1 %7, label %8, label %34, !dbg !1183

8:                                                ; preds = %6
  %9 = load i1, i1* @only_file_1, align 1, !dbg !1184
  br i1 %9, label %10, label %28, !dbg !1185

10:                                               ; preds = %8
  %11 = load i64, i64* @col_sep_len, align 8, !dbg !1186, !tbaa !860
  %12 = load i8*, i8** @col_sep, align 8, !dbg !1186, !tbaa !681
  %13 = tail call i64 @fwrite_unlocked(i8* %12, i64 1, i64 %11, %struct._IO_FILE* %1), !dbg !1186
  br label %28, !dbg !1186

14:                                               ; preds = %3
  %15 = load i1, i1* @both, align 1, !dbg !1187
  br i1 %15, label %16, label %34, !dbg !1189

16:                                               ; preds = %14
  %17 = load i1, i1* @only_file_1, align 1, !dbg !1190
  br i1 %17, label %18, label %22, !dbg !1191

18:                                               ; preds = %16
  %19 = load i64, i64* @col_sep_len, align 8, !dbg !1192, !tbaa !860
  %20 = load i8*, i8** @col_sep, align 8, !dbg !1192, !tbaa !681
  %21 = tail call i64 @fwrite_unlocked(i8* %20, i64 1, i64 %19, %struct._IO_FILE* %1), !dbg !1192
  br label %22, !dbg !1192

22:                                               ; preds = %18, %16
  %23 = load i1, i1* @only_file_2, align 1, !dbg !1193
  br i1 %23, label %24, label %28, !dbg !1194

24:                                               ; preds = %22
  %25 = load i64, i64* @col_sep_len, align 8, !dbg !1195, !tbaa !860
  %26 = load i8*, i8** @col_sep, align 8, !dbg !1195, !tbaa !681
  %27 = tail call i64 @fwrite_unlocked(i8* %26, i64 1, i64 %25, %struct._IO_FILE* %1), !dbg !1195
  br label %28, !dbg !1195

28:                                               ; preds = %22, %24, %8, %10, %4, %3
  %29 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1196
  %30 = load i64, i64* %29, align 8, !dbg !1196, !tbaa !1033
  %31 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1196
  %32 = load i8*, i8** %31, align 8, !dbg !1196, !tbaa !1030
  %33 = tail call i64 @fwrite_unlocked(i8* %32, i64 1, i64 %30, %struct._IO_FILE* %1), !dbg !1196
  br label %34, !dbg !1196

34:                                               ; preds = %28, %14, %6, %4
  ret void, !dbg !1197
}

; Function Attrs: nofree nounwind
declare !dbg !1198 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @check_order(%struct.linebuffer* nocapture readonly %0, %struct.linebuffer* nocapture readonly %1, i32 %2) unnamed_addr #8 !dbg !1203 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1207, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata %struct.linebuffer* %1, metadata !1208, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i32 %2, metadata !1209, metadata !DIExpression()), !dbg !1215
  %4 = load i32, i32* @check_input_order, align 4, !dbg !1216, !tbaa !841
  switch i32 %4, label %5 [
    i32 2, label %38
    i32 1, label %7
  ], !dbg !1217

5:                                                ; preds = %3
  %6 = load i1, i1* @seen_unpairable, align 1, !dbg !1218
  br i1 %6, label %7, label %38, !dbg !1219

7:                                                ; preds = %3, %5
  %8 = add nsw i32 %2, -1, !dbg !1220
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 %9, !dbg !1221
  %11 = load i8, i8* %10, align 1, !dbg !1221, !tbaa !831, !range !1027
  %12 = icmp eq i8 %11, 0, !dbg !1221
  br i1 %12, label %13, label %38, !dbg !1222

13:                                               ; preds = %7
  %14 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1223, !tbaa !831, !range !1027
  %15 = icmp eq i8 %14, 0, !dbg !1223
  %16 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1225
  %17 = load i8*, i8** %16, align 8, !dbg !1225, !tbaa !1030
  %18 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1225
  %19 = load i64, i64* %18, align 8, !dbg !1225, !tbaa !1033
  %20 = add i64 %19, -1, !dbg !1225
  %21 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %1, i64 0, i32 2, !dbg !1225
  %22 = load i8*, i8** %21, align 8, !dbg !1225, !tbaa !1030
  %23 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %1, i64 0, i32 1, !dbg !1225
  %24 = load i64, i64* %23, align 8, !dbg !1225, !tbaa !1033
  %25 = add i64 %24, -1, !dbg !1225
  br i1 %15, label %28, label %26, !dbg !1226

26:                                               ; preds = %13
  %27 = tail call i32 @xmemcoll(i8* %17, i64 %20, i8* %22, i64 %25) #29, !dbg !1227
  call void @llvm.dbg.value(metadata i32 %27, metadata !1210, metadata !DIExpression()), !dbg !1228
  br label %30, !dbg !1229

28:                                               ; preds = %13
  %29 = tail call i32 @memcmp2(i8* %17, i64 %20, i8* %22, i64 %25) #30, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %29, metadata !1210, metadata !DIExpression()), !dbg !1228
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ], !dbg !1225
  call void @llvm.dbg.value(metadata i32 %31, metadata !1210, metadata !DIExpression()), !dbg !1228
  %32 = icmp sgt i32 %31, 0, !dbg !1231
  br i1 %32, label %33, label %38, !dbg !1233

33:                                               ; preds = %30
  %34 = load i32, i32* @check_input_order, align 4, !dbg !1234, !tbaa !841
  %35 = icmp eq i32 %34, 1, !dbg !1236
  %36 = zext i1 %35 to i32, !dbg !1234
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.54, i64 0, i64 0), i32 5) #29, !dbg !1237
  tail call void (i32, i32, i8*, ...) @error(i32 %36, i32 0, i8* %37, i32 %2) #29, !dbg !1238
  store i8 1, i8* %10, align 1, !dbg !1239, !tbaa !831
  br label %38, !dbg !1240

38:                                               ; preds = %30, %33, %3, %7, %5
  ret void, !dbg !1241
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1242 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1244, metadata !DIExpression()), !dbg !1245
  store i8* %0, i8** @file_name, align 8, !dbg !1246, !tbaa !681
  ret void, !dbg !1247
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1248 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1252, metadata !DIExpression()), !dbg !1253
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1254, !tbaa !831
  ret void, !dbg !1255
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1256 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1261, !tbaa !681
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #29, !dbg !1262
  %3 = icmp eq i32 %2, 0, !dbg !1263
  br i1 %3, label %22, label %4, !dbg !1264

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1265, !tbaa !831, !range !1027
  %6 = icmp eq i8 %5, 0, !dbg !1265
  br i1 %6, label %11, label %7, !dbg !1266

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #33, !dbg !1267
  %9 = load i32, i32* %8, align 4, !dbg !1267, !tbaa !886
  %10 = icmp eq i32 %9, 32, !dbg !1268
  br i1 %10, label %22, label %11, !dbg !1269

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i32 5) #29, !dbg !1270
  call void @llvm.dbg.value(metadata i8* %12, metadata !1258, metadata !DIExpression()), !dbg !1271
  %13 = load i8*, i8** @file_name, align 8, !dbg !1272, !tbaa !681
  %14 = icmp eq i8* %13, null, !dbg !1272
  %15 = tail call i32* @__errno_location() #33, !dbg !1274
  %16 = load i32, i32* %15, align 4, !dbg !1274, !tbaa !886
  br i1 %14, label %19, label %17, !dbg !1275

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #29, !dbg !1276
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.59, i64 0, i64 0), i8* %18, i8* %12) #29, !dbg !1277
  br label %20, !dbg !1277

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.60, i64 0, i64 0), i8* %12) #29, !dbg !1278
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1279, !tbaa !886
  tail call void @_exit(i32 %21) #31, !dbg !1280
  unreachable, !dbg !1280

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1281, !tbaa !681
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #29, !dbg !1283
  %25 = icmp eq i32 %24, 0, !dbg !1284
  br i1 %25, label %28, label %26, !dbg !1285

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1286, !tbaa !886
  tail call void @_exit(i32 %27) #31, !dbg !1287
  unreachable, !dbg !1287

28:                                               ; preds = %22
  ret void, !dbg !1288
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1289 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1295, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %1, metadata !1296, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %2, metadata !1297, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i32 %3, metadata !1298, metadata !DIExpression()), !dbg !1301
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #29, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %5, metadata !1299, metadata !DIExpression()), !dbg !1303
  ret void, !dbg !1304
}

; Function Attrs: nounwind
declare !dbg !1305 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1309 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1347, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i32 %1, metadata !1348, metadata !DIExpression()), !dbg !1349
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1350
  br i1 %3, label %7, label %4, !dbg !1352

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !1353
  call void @llvm.dbg.value(metadata i32 %5, metadata !1295, metadata !DIExpression()) #29, !dbg !1354
  call void @llvm.dbg.value(metadata i64 0, metadata !1296, metadata !DIExpression()) #29, !dbg !1354
  call void @llvm.dbg.value(metadata i64 0, metadata !1297, metadata !DIExpression()) #29, !dbg !1354
  call void @llvm.dbg.value(metadata i32 %1, metadata !1298, metadata !DIExpression()) #29, !dbg !1354
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #29, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %6, metadata !1299, metadata !DIExpression()) #29, !dbg !1357
  br label %7, !dbg !1358

7:                                                ; preds = %4, %2
  ret void, !dbg !1359
}

; Function Attrs: nofree nounwind
declare !dbg !1360 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #8 !dbg !1363 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1401, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %1, metadata !1402, metadata !DIExpression()), !dbg !1416
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !1417
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !1403, metadata !DIExpression()), !dbg !1416
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !1418
  br i1 %4, label %25, label %5, !dbg !1419

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #29, !dbg !1420
  call void @llvm.dbg.value(metadata i32 %6, metadata !1404, metadata !DIExpression()), !dbg !1421
  %7 = icmp ult i32 %6, 3, !dbg !1422
  br i1 %7, label %8, label %25, !dbg !1422

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #29, !dbg !1423
  call void @llvm.dbg.value(metadata i32 %9, metadata !1407, metadata !DIExpression()), !dbg !1424
  %10 = icmp slt i32 %9, 0, !dbg !1425
  br i1 %10, label %11, label %15, !dbg !1426

11:                                               ; preds = %8
  %12 = tail call i32* @__errno_location() #33, !dbg !1427
  %13 = load i32, i32* %12, align 4, !dbg !1427, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %13, metadata !1410, metadata !DIExpression()), !dbg !1428
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #29, !dbg !1429
  store i32 %13, i32* %12, align 4, !dbg !1430, !tbaa !886
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #29, !dbg !1431
  %17 = icmp eq i32 %16, 0, !dbg !1432
  br i1 %17, label %18, label %21, !dbg !1433

18:                                               ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #29, !dbg !1434
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !1403, metadata !DIExpression()), !dbg !1416
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !1435
  br i1 %20, label %21, label %25, !dbg !1436

21:                                               ; preds = %18, %15
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !1403, metadata !DIExpression()), !dbg !1416
  %22 = tail call i32* @__errno_location() #33, !dbg !1437
  %23 = load i32, i32* %22, align 4, !dbg !1437, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %23, metadata !1413, metadata !DIExpression()), !dbg !1438
  %24 = tail call i32 @close(i32 %9) #29, !dbg !1439
  store i32 %23, i32* %22, align 4, !dbg !1440, !tbaa !886
  br label %25

25:                                               ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !1416
  ret %struct._IO_FILE* %26, !dbg !1441
}

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1442 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1445 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !1449 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1453, metadata !DIExpression()), !dbg !1458
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !1459
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #29, !dbg !1459
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !1454, metadata !DIExpression()), !dbg !1460
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #29, !dbg !1461
  %5 = icmp eq i32 %4, 0, !dbg !1461
  br i1 %5, label %6, label %13, !dbg !1463

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !1464
  %8 = load i16, i16* %7, align 16, !dbg !1464
  %9 = icmp eq i16 %8, 67, !dbg !1464
  br i1 %9, label %13, label %10, !dbg !1465

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.69, i64 0, i64 0), i64 6), !dbg !1466
  %12 = icmp ne i32 %11, 0, !dbg !1467
  br label %13, !dbg !1465

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !1458
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #29, !dbg !1468
  ret i1 %14, !dbg !1468
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #12

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #13 !dbg !1469 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1474, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %1, metadata !1475, metadata !DIExpression()), !dbg !1477
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1478
  call void @llvm.dbg.value(metadata i8* %3, metadata !1476, metadata !DIExpression()), !dbg !1477
  store i8 0, i8* %3, align 1, !dbg !1479, !tbaa !841
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !1477
  call void @llvm.dbg.value(metadata i8* %6, metadata !1476, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %5, metadata !1474, metadata !DIExpression()), !dbg !1477
  %7 = urem i64 %5, 10, !dbg !1480
  %8 = trunc i64 %7 to i8, !dbg !1483
  %9 = or i8 %8, 48, !dbg !1483
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1484
  call void @llvm.dbg.value(metadata i8* %10, metadata !1476, metadata !DIExpression()), !dbg !1477
  store i8 %9, i8* %10, align 1, !dbg !1485, !tbaa !841
  %11 = udiv i64 %5, 10, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %11, metadata !1474, metadata !DIExpression()), !dbg !1477
  %12 = icmp ult i64 %5, 10, !dbg !1487
  br i1 %12, label %13, label %4, !dbg !1488, !llvm.loop !1489

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !1476, metadata !DIExpression()), !dbg !1477
  ret i8* %10, !dbg !1492
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @initbuffer(%struct.linebuffer* %0) local_unnamed_addr #14 !dbg !1493 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1503, metadata !DIExpression()), !dbg !1504
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !1505
  call void @llvm.dbg.value(metadata i8* %2, metadata !1506, metadata !DIExpression()) #29, !dbg !1514
  call void @llvm.dbg.value(metadata i32 0, metadata !1512, metadata !DIExpression()) #29, !dbg !1514
  call void @llvm.dbg.value(metadata i64 24, metadata !1513, metadata !DIExpression()) #29, !dbg !1514
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(24) %2, i8 0, i64 24, i1 false) #29, !dbg !1516
  ret void, !dbg !1517
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer(%struct.linebuffer* %0, %struct._IO_FILE* %1) local_unnamed_addr #8 !dbg !1518 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1556, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1557, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1559, metadata !DIExpression()) #29, !dbg !1574
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1564, metadata !DIExpression()) #29, !dbg !1574
  call void @llvm.dbg.value(metadata i8 10, metadata !1565, metadata !DIExpression()) #29, !dbg !1574
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1576
  %4 = load i8*, i8** %3, align 8, !dbg !1576, !tbaa !1030
  call void @llvm.dbg.value(metadata i8* %4, metadata !1567, metadata !DIExpression()) #29, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %4, metadata !1568, metadata !DIExpression()) #29, !dbg !1574
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1577
  call void @llvm.dbg.value(metadata i8* undef, metadata !1569, metadata !DIExpression()) #29, !dbg !1574
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1578, metadata !DIExpression()) #29, !dbg !1583
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1586
  %7 = load i32, i32* %6, align 8, !dbg !1586, !tbaa !1002
  %8 = and i32 %7, 16, !dbg !1587
  %9 = icmp eq i32 %8, 0, !dbg !1587
  br i1 %9, label %10, label %62, !dbg !1588

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !1577, !tbaa !1589
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !1590
  call void @llvm.dbg.value(metadata i8* %12, metadata !1569, metadata !DIExpression()) #29, !dbg !1574
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15, !dbg !1591

15:                                               ; preds = %48, %10
  %16 = phi i8* [ %49, %48 ], [ %4, %10 ], !dbg !1574
  %17 = phi i8* [ %53, %48 ], [ %4, %10 ], !dbg !1574
  %18 = phi i8* [ %51, %48 ], [ %12, %10 ], !dbg !1574
  call void @llvm.dbg.value(metadata i8* %18, metadata !1569, metadata !DIExpression()) #29, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %17, metadata !1568, metadata !DIExpression()) #29, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %16, metadata !1567, metadata !DIExpression()) #29, !dbg !1574
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1592, metadata !DIExpression()) #29, !dbg !1595
  %19 = load i8*, i8** %13, align 8, !dbg !1597, !tbaa !1598
  %20 = load i8*, i8** %14, align 8, !dbg !1597, !tbaa !1599
  %21 = icmp ult i8* %19, %20, !dbg !1597
  br i1 %21, label %22, label %26, !dbg !1597, !prof !1600

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1597
  store i8* %23, i8** %13, align 8, !dbg !1597, !tbaa !1598
  %24 = load i8, i8* %19, align 1, !dbg !1597, !tbaa !841
  %25 = zext i8 %24 to i32, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %27, metadata !1566, metadata !DIExpression()) #29, !dbg !1574
  br label %39, !dbg !1601

26:                                               ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #29, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %27, metadata !1566, metadata !DIExpression()) #29, !dbg !1574
  %28 = icmp eq i32 %27, -1, !dbg !1602
  br i1 %28, label %29, label %39, !dbg !1601

29:                                               ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !1604
  br i1 %30, label %62, label %31, !dbg !1607

31:                                               ; preds = %29
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1608, metadata !DIExpression()) #29, !dbg !1611
  %32 = load i32, i32* %6, align 8, !dbg !1613, !tbaa !1002
  %33 = and i32 %32, 32, !dbg !1614
  %34 = icmp eq i32 %33, 0, !dbg !1614
  br i1 %34, label %35, label %62, !dbg !1615

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !1616
  %37 = load i8, i8* %36, align 1, !dbg !1616, !tbaa !841
  %38 = icmp eq i8 %37, 10, !dbg !1618
  br i1 %38, label %55, label %39, !dbg !1619

39:                                               ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ], !dbg !1620
  call void @llvm.dbg.value(metadata i32 %40, metadata !1566, metadata !DIExpression()) #29, !dbg !1574
  %41 = icmp eq i8* %17, %18, !dbg !1621
  br i1 %41, label %42, label %48, !dbg !1622

42:                                               ; preds = %39
  %43 = load i64, i64* %5, align 8, !dbg !1623, !tbaa !1589
  call void @llvm.dbg.value(metadata i64 %43, metadata !1570, metadata !DIExpression()) #29, !dbg !1624
  %44 = tail call i8* @x2realloc(i8* %16, i64* nonnull %5) #29, !dbg !1625
  call void @llvm.dbg.value(metadata i8* %44, metadata !1567, metadata !DIExpression()) #29, !dbg !1574
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !1626
  call void @llvm.dbg.value(metadata i8* %45, metadata !1568, metadata !DIExpression()) #29, !dbg !1574
  store i8* %44, i8** %3, align 8, !dbg !1627, !tbaa !1030
  %46 = load i64, i64* %5, align 8, !dbg !1628, !tbaa !1589
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !1629
  call void @llvm.dbg.value(metadata i8* %47, metadata !1569, metadata !DIExpression()) #29, !dbg !1574
  br label %48, !dbg !1630

48:                                               ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ], !dbg !1574
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ], !dbg !1574
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ], !dbg !1574
  call void @llvm.dbg.value(metadata i8* %51, metadata !1569, metadata !DIExpression()) #29, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %50, metadata !1568, metadata !DIExpression()) #29, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %49, metadata !1567, metadata !DIExpression()) #29, !dbg !1574
  %52 = trunc i32 %40 to i8, !dbg !1631
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1632
  call void @llvm.dbg.value(metadata i8* %53, metadata !1568, metadata !DIExpression()) #29, !dbg !1574
  store i8 %52, i8* %50, align 1, !dbg !1633, !tbaa !841
  %54 = icmp eq i32 %40, 10, !dbg !1634
  br i1 %54, label %55, label %15, !dbg !1635, !llvm.loop !1636

55:                                               ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ], !dbg !1574
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ], !dbg !1574
  call void @llvm.dbg.value(metadata i8* %57, metadata !1568, metadata !DIExpression()) #29, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %56, metadata !1567, metadata !DIExpression()) #29, !dbg !1574
  %58 = ptrtoint i8* %57 to i64, !dbg !1638
  %59 = ptrtoint i8* %56 to i64, !dbg !1638
  %60 = sub i64 %58, %59, !dbg !1638
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1639
  store i64 %60, i64* %61, align 8, !dbg !1640, !tbaa !1033
  br label %62, !dbg !1641

62:                                               ; preds = %29, %31, %2, %55
  %63 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %31 ], [ null, %29 ], !dbg !1574
  ret %struct.linebuffer* %63, !dbg !1642
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %0, %struct._IO_FILE* %1, i8 signext %2) local_unnamed_addr #8 !dbg !1560 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1559, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1564, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8 %2, metadata !1565, metadata !DIExpression()), !dbg !1643
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1644
  %5 = load i8*, i8** %4, align 8, !dbg !1644, !tbaa !1030
  call void @llvm.dbg.value(metadata i8* %5, metadata !1567, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8* %5, metadata !1568, metadata !DIExpression()), !dbg !1643
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1645
  call void @llvm.dbg.value(metadata i8* undef, metadata !1569, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1578, metadata !DIExpression()), !dbg !1646
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1648
  %8 = load i32, i32* %7, align 8, !dbg !1648, !tbaa !1002
  %9 = and i32 %8, 16, !dbg !1649
  %10 = icmp eq i32 %9, 0, !dbg !1649
  br i1 %10, label %11, label %64, !dbg !1650

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !1645, !tbaa !1589
  %13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !1651
  call void @llvm.dbg.value(metadata i8* %13, metadata !1569, metadata !DIExpression()), !dbg !1643
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = sext i8 %2 to i32
  br label %17, !dbg !1652

17:                                               ; preds = %11, %50
  %18 = phi i8* [ %51, %50 ], [ %5, %11 ], !dbg !1643
  %19 = phi i8* [ %55, %50 ], [ %5, %11 ], !dbg !1643
  %20 = phi i8* [ %53, %50 ], [ %13, %11 ], !dbg !1643
  call void @llvm.dbg.value(metadata i8* %20, metadata !1569, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8* %19, metadata !1568, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8* %18, metadata !1567, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1592, metadata !DIExpression()) #29, !dbg !1653
  %21 = load i8*, i8** %14, align 8, !dbg !1655, !tbaa !1598
  %22 = load i8*, i8** %15, align 8, !dbg !1655, !tbaa !1599
  %23 = icmp ult i8* %21, %22, !dbg !1655
  br i1 %23, label %24, label %28, !dbg !1655, !prof !1600

24:                                               ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1655
  store i8* %25, i8** %14, align 8, !dbg !1655, !tbaa !1598
  %26 = load i8, i8* %21, align 1, !dbg !1655, !tbaa !841
  %27 = zext i8 %26 to i32, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %29, metadata !1566, metadata !DIExpression()), !dbg !1643
  br label %41, !dbg !1656

28:                                               ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #29, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %29, metadata !1566, metadata !DIExpression()), !dbg !1643
  %30 = icmp eq i32 %29, -1, !dbg !1657
  br i1 %30, label %31, label %41, !dbg !1656

31:                                               ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !1658
  br i1 %32, label %64, label %33, !dbg !1659

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1608, metadata !DIExpression()), !dbg !1660
  %34 = load i32, i32* %7, align 8, !dbg !1662, !tbaa !1002
  %35 = and i32 %34, 32, !dbg !1663
  %36 = icmp eq i32 %35, 0, !dbg !1663
  br i1 %36, label %37, label %64, !dbg !1664

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1665
  %39 = load i8, i8* %38, align 1, !dbg !1665, !tbaa !841
  %40 = icmp eq i8 %39, %2, !dbg !1666
  br i1 %40, label %57, label %41, !dbg !1667

41:                                               ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ], !dbg !1668
  call void @llvm.dbg.value(metadata i32 %42, metadata !1566, metadata !DIExpression()), !dbg !1643
  %43 = icmp eq i8* %19, %20, !dbg !1669
  br i1 %43, label %44, label %50, !dbg !1670

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !1671, !tbaa !1589
  call void @llvm.dbg.value(metadata i64 %45, metadata !1570, metadata !DIExpression()), !dbg !1672
  %46 = tail call i8* @x2realloc(i8* %18, i64* nonnull %6) #29, !dbg !1673
  call void @llvm.dbg.value(metadata i8* %46, metadata !1567, metadata !DIExpression()), !dbg !1643
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !1674
  call void @llvm.dbg.value(metadata i8* %47, metadata !1568, metadata !DIExpression()), !dbg !1643
  store i8* %46, i8** %4, align 8, !dbg !1675, !tbaa !1030
  %48 = load i64, i64* %6, align 8, !dbg !1676, !tbaa !1589
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !1677
  call void @llvm.dbg.value(metadata i8* %49, metadata !1569, metadata !DIExpression()), !dbg !1643
  br label %50, !dbg !1678

50:                                               ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ], !dbg !1643
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ], !dbg !1643
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ], !dbg !1643
  call void @llvm.dbg.value(metadata i8* %53, metadata !1569, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8* %52, metadata !1568, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8* %51, metadata !1567, metadata !DIExpression()), !dbg !1643
  %54 = trunc i32 %42 to i8, !dbg !1679
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1680
  call void @llvm.dbg.value(metadata i8* %55, metadata !1568, metadata !DIExpression()), !dbg !1643
  store i8 %54, i8* %52, align 1, !dbg !1681, !tbaa !841
  %56 = icmp eq i32 %42, %16, !dbg !1682
  br i1 %56, label %57, label %17, !dbg !1683, !llvm.loop !1684

57:                                               ; preds = %37, %50
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ], !dbg !1643
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ], !dbg !1643
  call void @llvm.dbg.value(metadata i8* %59, metadata !1568, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8* %58, metadata !1567, metadata !DIExpression()), !dbg !1643
  %60 = ptrtoint i8* %59 to i64, !dbg !1686
  %61 = ptrtoint i8* %58 to i64, !dbg !1686
  %62 = sub i64 %60, %61, !dbg !1686
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1687
  store i64 %62, i64* %63, align 8, !dbg !1688, !tbaa !1033
  br label %64, !dbg !1689

64:                                               ; preds = %31, %33, %3, %57
  %65 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %33 ], [ null, %31 ], !dbg !1643
  ret %struct.linebuffer* %65, !dbg !1690
}

; Function Attrs: nounwind sspstrong uwtable willreturn
define dso_local void @freebuffer(%struct.linebuffer* nocapture readonly %0) local_unnamed_addr #16 !dbg !1691 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1693, metadata !DIExpression()), !dbg !1694
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1695
  %3 = load i8*, i8** %2, align 8, !dbg !1695, !tbaa !1030
  tail call void @free(i8* %3) #29, !dbg !1696
  ret void, !dbg !1697
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @memcmp2(i8* nocapture readonly %0, i64 %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #18 !dbg !1698 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1702, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %1, metadata !1703, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %2, metadata !1704, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %3, metadata !1705, metadata !DIExpression()), !dbg !1707
  %5 = icmp ugt i64 %1, %3, !dbg !1708
  %6 = select i1 %5, i64 %3, i64 %1, !dbg !1709
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %6) #30, !dbg !1710
  call void @llvm.dbg.value(metadata i32 %7, metadata !1706, metadata !DIExpression()), !dbg !1707
  %8 = icmp eq i32 %7, 0, !dbg !1711
  br i1 %8, label %9, label %13, !dbg !1713

9:                                                ; preds = %4
  %10 = icmp ult i64 %1, %3, !dbg !1714
  br i1 %10, label %13, label %11, !dbg !1717

11:                                               ; preds = %9
  %12 = zext i1 %5 to i32, !dbg !1718
  ret i32 %12, !dbg !1718

13:                                               ; preds = %9, %4
  %14 = phi i32 [ %7, %4 ], [ -1, %9 ], !dbg !1707
  call void @llvm.dbg.value(metadata i32 %14, metadata !1706, metadata !DIExpression()), !dbg !1707
  ret i32 %14, !dbg !1719
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1720 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1722, metadata !DIExpression()), !dbg !1725
  %2 = icmp eq i8* %0, null, !dbg !1726
  br i1 %2, label %3, label %6, !dbg !1728

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1729, !tbaa !681
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.82, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #34, !dbg !1731
  tail call void @abort() #31, !dbg !1732
  unreachable, !dbg !1732

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #30, !dbg !1733
  call void @llvm.dbg.value(metadata i8* %7, metadata !1723, metadata !DIExpression()), !dbg !1725
  %8 = icmp eq i8* %7, null, !dbg !1734
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1735
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1735
  call void @llvm.dbg.value(metadata i8* %10, metadata !1724, metadata !DIExpression()), !dbg !1725
  %11 = ptrtoint i8* %10 to i64, !dbg !1736
  %12 = ptrtoint i8* %0 to i64, !dbg !1736
  %13 = sub i64 %11, %12, !dbg !1736
  %14 = icmp sgt i64 %13, 6, !dbg !1738
  br i1 %14, label %15, label %24, !dbg !1739

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1740
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.83, i64 0, i64 0), i64 7) #30, !dbg !1741
  %18 = icmp eq i32 %17, 0, !dbg !1742
  br i1 %18, label %19, label %24, !dbg !1743

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1722, metadata !DIExpression()), !dbg !1725
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.84, i64 0, i64 0), i64 3) #30, !dbg !1744
  %21 = icmp eq i32 %20, 0, !dbg !1747
  br i1 %21, label %22, label %24, !dbg !1748

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1749
  call void @llvm.dbg.value(metadata i8* %23, metadata !1722, metadata !DIExpression()), !dbg !1725
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1751, !tbaa !681
  br label %24, !dbg !1752

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1722, metadata !DIExpression()), !dbg !1725
  store i8* %25, i8** @program_name, align 8, !dbg !1753, !tbaa !681
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1754, !tbaa !681
  ret void, !dbg !1755
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #19

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1756 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1761, metadata !DIExpression()), !dbg !1764
  %2 = tail call i32* @__errno_location() #33, !dbg !1765
  %3 = load i32, i32* %2, align 4, !dbg !1765, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %3, metadata !1762, metadata !DIExpression()), !dbg !1764
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1766
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1766
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1766
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #29, !dbg !1767
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1767
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1763, metadata !DIExpression()), !dbg !1764
  store i32 %3, i32* %2, align 4, !dbg !1768, !tbaa !886
  ret %struct.quoting_options* %8, !dbg !1769
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #20 !dbg !1770 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1776, metadata !DIExpression()), !dbg !1777
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1778
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1778
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1779
  %5 = load i32, i32* %4, align 8, !dbg !1779, !tbaa !1780
  ret i32 %5, !dbg !1782
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1783 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1787, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i32 %1, metadata !1788, metadata !DIExpression()), !dbg !1789
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1790
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1790
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1791
  store i32 %1, i32* %5, align 8, !dbg !1792, !tbaa !1780
  ret void, !dbg !1793
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #21 !dbg !1794 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1798, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %1, metadata !1799, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 %2, metadata !1800, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %1, metadata !1801, metadata !DIExpression()), !dbg !1806
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1807
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1807
  %6 = lshr i8 %1, 5, !dbg !1808
  %7 = zext i8 %6 to i64, !dbg !1808
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1809
  call void @llvm.dbg.value(metadata i32* %8, metadata !1802, metadata !DIExpression()), !dbg !1806
  %9 = and i8 %1, 31, !dbg !1810
  %10 = zext i8 %9 to i32, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %10, metadata !1804, metadata !DIExpression()), !dbg !1806
  %11 = load i32, i32* %8, align 4, !dbg !1811, !tbaa !886
  %12 = lshr i32 %11, %10, !dbg !1812
  %13 = and i32 %12, 1, !dbg !1813
  call void @llvm.dbg.value(metadata i32 %13, metadata !1805, metadata !DIExpression()), !dbg !1806
  %14 = and i32 %2, 1, !dbg !1814
  %15 = xor i32 %13, %14, !dbg !1815
  %16 = shl i32 %15, %10, !dbg !1816
  %17 = xor i32 %16, %11, !dbg !1817
  store i32 %17, i32* %8, align 4, !dbg !1817, !tbaa !886
  ret i32 %13, !dbg !1818
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #21 !dbg !1819 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1823, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i32 %1, metadata !1824, metadata !DIExpression()), !dbg !1826
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1827
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1829
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1823, metadata !DIExpression()), !dbg !1826
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1830
  %6 = load i32, i32* %5, align 4, !dbg !1830, !tbaa !1831
  call void @llvm.dbg.value(metadata i32 %6, metadata !1825, metadata !DIExpression()), !dbg !1826
  store i32 %1, i32* %5, align 4, !dbg !1832, !tbaa !1831
  ret i32 %6, !dbg !1833
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1834 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1838, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i8* %1, metadata !1839, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i8* %2, metadata !1840, metadata !DIExpression()), !dbg !1841
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1842
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1844
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1838, metadata !DIExpression()), !dbg !1841
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1845
  store i32 10, i32* %6, align 8, !dbg !1846, !tbaa !1780
  %7 = icmp ne i8* %1, null, !dbg !1847
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1849
  br i1 %9, label %11, label %10, !dbg !1849

10:                                               ; preds = %3
  tail call void @abort() #31, !dbg !1850
  unreachable, !dbg !1850

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1851
  store i8* %1, i8** %12, align 8, !dbg !1852, !tbaa !1853
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1854
  store i8* %2, i8** %13, align 8, !dbg !1855, !tbaa !1856
  ret void, !dbg !1857
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1862, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %1, metadata !1863, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %2, metadata !1864, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %3, metadata !1865, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1866, metadata !DIExpression()), !dbg !1870
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1871
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1871
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1867, metadata !DIExpression()), !dbg !1870
  %8 = tail call i32* @__errno_location() #33, !dbg !1872
  %9 = load i32, i32* %8, align 4, !dbg !1872, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %9, metadata !1868, metadata !DIExpression()), !dbg !1870
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1873
  %11 = load i32, i32* %10, align 8, !dbg !1873, !tbaa !1780
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1874
  %13 = load i32, i32* %12, align 4, !dbg !1874, !tbaa !1831
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1875
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1876
  %16 = load i8*, i8** %15, align 8, !dbg !1876, !tbaa !1853
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1877
  %18 = load i8*, i8** %17, align 8, !dbg !1877, !tbaa !1856
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %19, metadata !1869, metadata !DIExpression()), !dbg !1870
  store i32 %9, i32* %8, align 4, !dbg !1879, !tbaa !886
  ret i64 %19, !dbg !1880
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1881 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1887, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %1, metadata !1888, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %2, metadata !1889, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %3, metadata !1890, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 %4, metadata !1891, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 %5, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32* %6, metadata !1893, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %7, metadata !1894, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %8, metadata !1895, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 0, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 0, metadata !1898, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* null, metadata !1899, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 0, metadata !1900, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1901, metadata !DIExpression()), !dbg !1956
  %13 = tail call i64 @__ctype_get_mb_cur_max() #29, !dbg !1957
  %14 = icmp eq i64 %13, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i1 %14, metadata !1902, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1956
  %15 = lshr i32 %5, 1, !dbg !1959
  %16 = trunc i32 %15 to i8, !dbg !1959
  %17 = and i8 %16, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i8 %17, metadata !1903, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1905, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 1, metadata !1906, metadata !DIExpression()), !dbg !1956
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1960

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1961
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1962
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1963
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1964
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1956
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1965
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1966
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1967
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1888, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %38, metadata !1906, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %37, metadata !1905, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %36, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %35, metadata !1903, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %34, metadata !1890, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %33, metadata !1901, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %32, metadata !1900, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %31, metadata !1899, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %30, metadata !1898, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 0, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %29, metadata !1895, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %28, metadata !1894, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 %27, metadata !1891, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.label(metadata !1950), !dbg !1968
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
  ], !dbg !1969

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1903, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 5, metadata !1891, metadata !DIExpression()), !dbg !1956
  br label %92, !dbg !1970

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1903, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 5, metadata !1891, metadata !DIExpression()), !dbg !1956
  %42 = and i8 %35, 1, !dbg !1972
  %43 = icmp eq i8 %42, 0, !dbg !1972
  br i1 %43, label %44, label %92, !dbg !1970

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1974
  br i1 %45, label %92, label %46, !dbg !1977

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1974, !tbaa !841
  br label %92, !dbg !1974

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.95, i64 0, i64 0), i32 %27), !dbg !1978
  call void @llvm.dbg.value(metadata i8* %48, metadata !1894, metadata !DIExpression()), !dbg !1956
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), i32 %27), !dbg !1982
  call void @llvm.dbg.value(metadata i8* %49, metadata !1895, metadata !DIExpression()), !dbg !1956
  br label %50, !dbg !1983

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1895, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %51, metadata !1894, metadata !DIExpression()), !dbg !1956
  %53 = and i8 %35, 1, !dbg !1984
  %54 = icmp eq i8 %53, 0, !dbg !1984
  br i1 %54, label %55, label %70, !dbg !1986

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1899, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 0, metadata !1897, metadata !DIExpression()), !dbg !1956
  %56 = load i8, i8* %51, align 1, !dbg !1987, !tbaa !841
  %57 = icmp eq i8 %56, 0, !dbg !1990
  br i1 %57, label %70, label %58, !dbg !1990

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1899, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %61, metadata !1897, metadata !DIExpression()), !dbg !1956
  %62 = icmp ult i64 %61, %39, !dbg !1991
  br i1 %62, label %63, label %65, !dbg !1994

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1991
  store i8 %59, i8* %64, align 1, !dbg !1991, !tbaa !841
  br label %65, !dbg !1991

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %66, metadata !1897, metadata !DIExpression()), !dbg !1956
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1995
  call void @llvm.dbg.value(metadata i8* %67, metadata !1899, metadata !DIExpression()), !dbg !1956
  %68 = load i8, i8* %67, align 1, !dbg !1987, !tbaa !841
  %69 = icmp eq i8 %68, 0, !dbg !1990
  br i1 %69, label %70, label %58, !dbg !1990, !llvm.loop !1996

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1998
  call void @llvm.dbg.value(metadata i64 %71, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 1, metadata !1901, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %52, metadata !1899, metadata !DIExpression()), !dbg !1956
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #30, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %72, metadata !1900, metadata !DIExpression()), !dbg !1956
  br label %92, !dbg !2000

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1901, metadata !DIExpression()), !dbg !1956
  br label %74, !dbg !2001

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %75, metadata !1901, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 1, metadata !1903, metadata !DIExpression()), !dbg !1956
  br label %76, !dbg !2002

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1964
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %78, metadata !1903, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %77, metadata !1901, metadata !DIExpression()), !dbg !1956
  %79 = and i8 %78, 1, !dbg !2003
  %80 = icmp eq i8 %79, 0, !dbg !2003
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2005
  br label %82, !dbg !2005

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1956
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1959
  call void @llvm.dbg.value(metadata i8 %84, metadata !1903, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %83, metadata !1901, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 2, metadata !1891, metadata !DIExpression()), !dbg !1956
  %85 = and i8 %84, 1, !dbg !2006
  %86 = icmp eq i8 %85, 0, !dbg !2006
  br i1 %86, label %87, label %92, !dbg !2008

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2009
  br i1 %88, label %92, label %89, !dbg !2012

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2009, !tbaa !841
  br label %92, !dbg !2009

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1903, metadata !DIExpression()), !dbg !1956
  br label %92, !dbg !2013

91:                                               ; preds = %26
  call void @abort() #31, !dbg !2014
  unreachable, !dbg !2014

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1998
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %40 ], !dbg !1956
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1956
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1956
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %100, metadata !1903, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %99, metadata !1901, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %98, metadata !1900, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %97, metadata !1899, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %96, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %95, metadata !1895, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %94, metadata !1894, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 %93, metadata !1891, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 0, metadata !1896, metadata !DIExpression()), !dbg !1956
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
  br label %121, !dbg !2015

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2016
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1998
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1961
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1965
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1966
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1967
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1888, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %128, metadata !1906, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %127, metadata !1905, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %126, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %125, metadata !1890, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %124, metadata !1898, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %123, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %122, metadata !1896, metadata !DIExpression()), !dbg !1956
  %130 = icmp eq i64 %125, -1, !dbg !2017
  br i1 %130, label %131, label %135, !dbg !2018

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2019
  %133 = load i8, i8* %132, align 1, !dbg !2019, !tbaa !841
  %134 = icmp eq i8 %133, 0, !dbg !2020
  br i1 %134, label %587, label %137, !dbg !2021

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2022
  br i1 %136, label %587, label %137, !dbg !2021

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1912, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 0, metadata !1913, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 0, metadata !1914, metadata !DIExpression()), !dbg !2023
  br i1 %106, label %138, label %153, !dbg !2024

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2026
  %140 = and i1 %107, %130, !dbg !2027
  br i1 %140, label %141, label %143, !dbg !2027

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #30, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %142, metadata !1890, metadata !DIExpression()), !dbg !1956
  br label %143, !dbg !2029

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2029
  call void @llvm.dbg.value(metadata i64 %144, metadata !1890, metadata !DIExpression()), !dbg !1956
  %145 = icmp ugt i64 %139, %144, !dbg !2030
  br i1 %145, label %153, label %146, !dbg !2031

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2032
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2033
  %149 = icmp ne i32 %148, 0, !dbg !2034
  %150 = or i1 %149, %109, !dbg !2035
  %151 = xor i1 %149, true, !dbg !2035
  %152 = zext i1 %151 to i8, !dbg !2035
  br i1 %150, label %153, label %646, !dbg !2035

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2023
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2023
  call void @llvm.dbg.value(metadata i8 %156, metadata !1912, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %154, metadata !1890, metadata !DIExpression()), !dbg !1956
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2036
  %158 = load i8, i8* %157, align 1, !dbg !2036, !tbaa !841
  call void @llvm.dbg.value(metadata i8 %158, metadata !1907, metadata !DIExpression()), !dbg !2023
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
  ], !dbg !2037

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2038

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2039

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1913, metadata !DIExpression()), !dbg !2023
  %162 = and i8 %126, 1, !dbg !2043
  %163 = icmp eq i8 %162, 0, !dbg !2043
  %164 = and i1 %110, %163, !dbg !2043
  br i1 %164, label %165, label %181, !dbg !2043

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2045
  br i1 %166, label %167, label %169, !dbg !2049

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2045
  store i8 39, i8* %168, align 1, !dbg !2045, !tbaa !841
  br label %169, !dbg !2045

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %170, metadata !1897, metadata !DIExpression()), !dbg !1956
  %171 = icmp ult i64 %170, %129, !dbg !2050
  br i1 %171, label %172, label %174, !dbg !2053

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2050
  store i8 36, i8* %173, align 1, !dbg !2050, !tbaa !841
  br label %174, !dbg !2050

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %175, metadata !1897, metadata !DIExpression()), !dbg !1956
  %176 = icmp ult i64 %175, %129, !dbg !2054
  br i1 %176, label %177, label %179, !dbg !2057

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2054
  store i8 39, i8* %178, align 1, !dbg !2054, !tbaa !841
  br label %179, !dbg !2054

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %180, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 1, metadata !1904, metadata !DIExpression()), !dbg !1956
  br label %181, !dbg !2058

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1956
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %183, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %182, metadata !1897, metadata !DIExpression()), !dbg !1956
  %184 = icmp ult i64 %182, %129, !dbg !2059
  br i1 %184, label %185, label %187, !dbg !2062

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2059
  store i8 92, i8* %186, align 1, !dbg !2059, !tbaa !841
  br label %187, !dbg !2059

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %188, metadata !1897, metadata !DIExpression()), !dbg !1956
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2063
  br i1 %191, label %192, label %473, !dbg !2063

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2065
  %194 = load i8, i8* %193, align 1, !dbg !2065, !tbaa !841
  %195 = add i8 %194, -48, !dbg !2066
  %196 = icmp ult i8 %195, 10, !dbg !2066
  br i1 %196, label %197, label %473, !dbg !2066

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2067
  br i1 %198, label %199, label %201, !dbg !2071

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2067
  store i8 48, i8* %200, align 1, !dbg !2067, !tbaa !841
  br label %201, !dbg !2067

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %202, metadata !1897, metadata !DIExpression()), !dbg !1956
  %203 = icmp ult i64 %202, %129, !dbg !2072
  br i1 %203, label %204, label %206, !dbg !2075

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2072
  store i8 48, i8* %205, align 1, !dbg !2072, !tbaa !841
  br label %206, !dbg !2072

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %207, metadata !1897, metadata !DIExpression()), !dbg !1956
  br label %473, !dbg !2076

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2077

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2078

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2079

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2081
  br i1 %214, label %215, label %473, !dbg !2081

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2083
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2084
  %218 = load i8, i8* %217, align 1, !dbg !2084, !tbaa !841
  %219 = icmp eq i8 %218, 63, !dbg !2085
  br i1 %219, label %220, label %473, !dbg !2086

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2087
  %222 = load i8, i8* %221, align 1, !dbg !2087, !tbaa !841
  %223 = sext i8 %222 to i32, !dbg !2087
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
  ], !dbg !2088

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2089

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1907, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 undef, metadata !1896, metadata !DIExpression()), !dbg !1956
  %226 = icmp ult i64 %123, %129, !dbg !2091
  br i1 %226, label %227, label %229, !dbg !2094

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2091
  store i8 63, i8* %228, align 1, !dbg !2091, !tbaa !841
  br label %229, !dbg !2091

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %230, metadata !1897, metadata !DIExpression()), !dbg !1956
  %231 = icmp ult i64 %230, %129, !dbg !2095
  br i1 %231, label %232, label %234, !dbg !2098

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2095
  store i8 34, i8* %233, align 1, !dbg !2095, !tbaa !841
  br label %234, !dbg !2095

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %235, metadata !1897, metadata !DIExpression()), !dbg !1956
  %236 = icmp ult i64 %235, %129, !dbg !2099
  br i1 %236, label %237, label %239, !dbg !2102

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2099
  store i8 34, i8* %238, align 1, !dbg !2099, !tbaa !841
  br label %239, !dbg !2099

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %240, metadata !1897, metadata !DIExpression()), !dbg !1956
  %241 = icmp ult i64 %240, %129, !dbg !2103
  br i1 %241, label %242, label %244, !dbg !2106

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2103
  store i8 63, i8* %243, align 1, !dbg !2103, !tbaa !841
  br label %244, !dbg !2103

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %245, metadata !1897, metadata !DIExpression()), !dbg !1956
  br label %473, !dbg !2107

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1911, metadata !DIExpression()), !dbg !2023
  br label %256, !dbg !2108

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1911, metadata !DIExpression()), !dbg !2023
  br label %256, !dbg !2109

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1911, metadata !DIExpression()), !dbg !2023
  br label %254, !dbg !2110

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1911, metadata !DIExpression()), !dbg !2023
  br label %254, !dbg !2111

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1911, metadata !DIExpression()), !dbg !2023
  br label %256, !dbg !2112

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1911, metadata !DIExpression()), !dbg !2023
  br i1 %110, label %252, label %253, !dbg !2113

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2114

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2117

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2119
  call void @llvm.dbg.value(metadata i8 %255, metadata !1911, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.label(metadata !1951), !dbg !2120
  br i1 %111, label %256, label %631, !dbg !2121

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2119
  call void @llvm.dbg.value(metadata i8 %257, metadata !1911, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.label(metadata !1952), !dbg !2123
  br i1 %102, label %495, label %473, !dbg !2124

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2125

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2126, !tbaa !841
  %261 = icmp eq i8 %260, 0, !dbg !2128
  br i1 %261, label %262, label %473, !dbg !2129

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2130
  br i1 %263, label %264, label %473, !dbg !2132

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1914, metadata !DIExpression()), !dbg !2023
  br label %265, !dbg !2133

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2023
  call void @llvm.dbg.value(metadata i8 %266, metadata !1914, metadata !DIExpression()), !dbg !2023
  br i1 %111, label %473, label %631, !dbg !2134

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1905, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 1, metadata !1914, metadata !DIExpression()), !dbg !2023
  br i1 %110, label %268, label %473, !dbg !2136

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2137

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2140
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2142
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2142
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %274, metadata !1888, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %273, metadata !1898, metadata !DIExpression()), !dbg !1956
  %275 = icmp ult i64 %123, %274, !dbg !2143
  br i1 %275, label %276, label %278, !dbg !2146

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2143
  store i8 39, i8* %277, align 1, !dbg !2143, !tbaa !841
  br label %278, !dbg !2143

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %279, metadata !1897, metadata !DIExpression()), !dbg !1956
  %280 = icmp ult i64 %279, %274, !dbg !2147
  br i1 %280, label %281, label %283, !dbg !2150

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2147
  store i8 92, i8* %282, align 1, !dbg !2147, !tbaa !841
  br label %283, !dbg !2147

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %284, metadata !1897, metadata !DIExpression()), !dbg !1956
  %285 = icmp ult i64 %284, %274, !dbg !2151
  br i1 %285, label %286, label %288, !dbg !2154

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2151
  store i8 39, i8* %287, align 1, !dbg !2151, !tbaa !841
  br label %288, !dbg !2151

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %289, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1904, metadata !DIExpression()), !dbg !1956
  br label %473, !dbg !2155

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2156

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1915, metadata !DIExpression()), !dbg !2157
  %292 = tail call i16** @__ctype_b_loc() #33, !dbg !2158
  %293 = load i16*, i16** %292, align 8, !dbg !2158, !tbaa !681
  %294 = zext i8 %158 to i64, !dbg !2158
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2158
  %296 = load i16, i16* %295, align 2, !dbg !2158, !tbaa !2160
  %297 = lshr i16 %296, 14, !dbg !2161
  %298 = trunc i16 %297 to i8, !dbg !2161
  %299 = and i8 %298, 1, !dbg !2161
  call void @llvm.dbg.value(metadata i8 %354, metadata !1918, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %355, metadata !1915, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %306, metadata !1890, metadata !DIExpression()), !dbg !1956
  %300 = icmp eq i8 %299, 0, !dbg !2162
  call void @llvm.dbg.value(metadata i1 %357, metadata !1914, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2023
  br label %359, !dbg !2163

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #29, !dbg !2164
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1919, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8* %23, metadata !2166, metadata !DIExpression()) #29, !dbg !2171
  call void @llvm.dbg.value(metadata i32 0, metadata !2169, metadata !DIExpression()) #29, !dbg !2171
  call void @llvm.dbg.value(metadata i64 8, metadata !2170, metadata !DIExpression()) #29, !dbg !2171
  store i64 0, i64* %10, align 8, !dbg !2173
  call void @llvm.dbg.value(metadata i64 0, metadata !1915, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 1, metadata !1918, metadata !DIExpression()), !dbg !2157
  %302 = icmp eq i64 %154, -1, !dbg !2174
  br i1 %302, label %303, label %305, !dbg !2176

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #30, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %304, metadata !1890, metadata !DIExpression()), !dbg !1956
  br label %305, !dbg !2178

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2023
  call void @llvm.dbg.value(metadata i64 %306, metadata !1890, metadata !DIExpression()), !dbg !1956
  br label %307, !dbg !2179

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2180
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2181
  call void @llvm.dbg.value(metadata i8 %309, metadata !1918, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %308, metadata !1915, metadata !DIExpression()), !dbg !2157
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2182
  %310 = add i64 %308, %122, !dbg !2183
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2184
  %312 = sub i64 %306, %310, !dbg !2185
  call void @llvm.dbg.value(metadata i32* %12, metadata !1936, metadata !DIExpression(DW_OP_deref)), !dbg !2186
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #29, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %313, metadata !1939, metadata !DIExpression()), !dbg !2186
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2188

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1915, metadata !DIExpression()), !dbg !2157
  %315 = icmp ugt i64 %306, %310, !dbg !2189
  br i1 %315, label %316, label %341, !dbg !2191

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2192
  br label %318, !dbg !2192

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1915, metadata !DIExpression()), !dbg !2157
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2193
  %322 = load i8, i8* %321, align 1, !dbg !2193, !tbaa !841
  %323 = icmp eq i8 %322, 0, !dbg !2191
  br i1 %323, label %341, label %324, !dbg !2192

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %325, metadata !1915, metadata !DIExpression()), !dbg !2157
  %326 = add i64 %325, %122, !dbg !2195
  %327 = icmp ult i64 %326, %306, !dbg !2189
  br i1 %327, label %318, label %341, !dbg !2191, !llvm.loop !2196

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2197
  call void @llvm.dbg.value(metadata i64 1, metadata !1940, metadata !DIExpression()), !dbg !2198
  br i1 %330, label %331, label %344, !dbg !2197

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1940, metadata !DIExpression()), !dbg !2198
  %333 = add i64 %332, %310, !dbg !2199
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2202
  %335 = load i8, i8* %334, align 1, !dbg !2202, !tbaa !841
  %336 = sext i8 %335 to i32, !dbg !2202
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2203

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %338, metadata !1940, metadata !DIExpression()), !dbg !2198
  %339 = icmp eq i64 %338, %313, !dbg !2205
  br i1 %339, label %344, label %331, !dbg !2206, !llvm.loop !2207

340:                                              ; preds = %307
  br label %341, !dbg !2209

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1918, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 undef, metadata !1915, metadata !DIExpression()), !dbg !2157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2209
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2210, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %345, metadata !1936, metadata !DIExpression()), !dbg !2186
  %346 = call i32 @iswprint(i32 %345) #29, !dbg !2212
  %347 = icmp eq i32 %346, 0, !dbg !2212
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2213
  call void @llvm.dbg.value(metadata i8 %348, metadata !1918, metadata !DIExpression()), !dbg !2157
  %349 = add i64 %313, %308, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %349, metadata !1915, metadata !DIExpression()), !dbg !2157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2209
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #30, !dbg !2215
  %351 = icmp eq i32 %350, 0, !dbg !2216
  br i1 %351, label %307, label %353, !dbg !2217, !llvm.loop !2218

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1918, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 undef, metadata !1915, metadata !DIExpression()), !dbg !2157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2209
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #29, !dbg !2220
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #29, !dbg !2220
  call void @llvm.dbg.value(metadata i8 %354, metadata !1918, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %355, metadata !1915, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %306, metadata !1890, metadata !DIExpression()), !dbg !1956
  %356 = and i8 %354, 1, !dbg !2162
  %357 = icmp eq i8 %356, 0, !dbg !2162
  call void @llvm.dbg.value(metadata i1 %357, metadata !1914, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2023
  %358 = icmp ugt i64 %355, 1, !dbg !2221
  br i1 %358, label %367, label %359, !dbg !2163

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2222
  br i1 %364, label %367, label %365, !dbg !2222

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i8 %472, metadata !1914, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %441, metadata !1913, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %440, metadata !1912, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %439, metadata !1907, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %438, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %371, metadata !1890, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %437, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %375, metadata !1896, metadata !DIExpression()), !dbg !1956
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %372, metadata !1947, metadata !DIExpression()), !dbg !2224
  %373 = and i1 %102, %368
  br label %374, !dbg !2225

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2016
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1956
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1965
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2023
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2023
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2226
  call void @llvm.dbg.value(metadata i8 %380, metadata !1913, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %379, metadata !1912, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %378, metadata !1907, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %377, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %376, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %375, metadata !1896, metadata !DIExpression()), !dbg !1956
  br i1 %373, label %381, label %427, !dbg !2227

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2232

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1913, metadata !DIExpression()), !dbg !2023
  %383 = and i8 %377, 1, !dbg !2235
  %384 = icmp eq i8 %383, 0, !dbg !2235
  %385 = and i1 %110, %384, !dbg !2235
  br i1 %385, label %386, label %402, !dbg !2235

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2237
  br i1 %387, label %388, label %390, !dbg !2241

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2237
  store i8 39, i8* %389, align 1, !dbg !2237, !tbaa !841
  br label %390, !dbg !2237

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %391, metadata !1897, metadata !DIExpression()), !dbg !1956
  %392 = icmp ult i64 %391, %129, !dbg !2242
  br i1 %392, label %393, label %395, !dbg !2245

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2242
  store i8 36, i8* %394, align 1, !dbg !2242, !tbaa !841
  br label %395, !dbg !2242

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2245
  call void @llvm.dbg.value(metadata i64 %396, metadata !1897, metadata !DIExpression()), !dbg !1956
  %397 = icmp ult i64 %396, %129, !dbg !2246
  br i1 %397, label %398, label %400, !dbg !2249

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2246
  store i8 39, i8* %399, align 1, !dbg !2246, !tbaa !841
  br label %400, !dbg !2246

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %401, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 1, metadata !1904, metadata !DIExpression()), !dbg !1956
  br label %402, !dbg !2250

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1956
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %404, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %403, metadata !1897, metadata !DIExpression()), !dbg !1956
  %405 = icmp ult i64 %403, %129, !dbg !2251
  br i1 %405, label %406, label %408, !dbg !2254

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2251
  store i8 92, i8* %407, align 1, !dbg !2251, !tbaa !841
  br label %408, !dbg !2251

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %409, metadata !1897, metadata !DIExpression()), !dbg !1956
  %410 = icmp ult i64 %409, %129, !dbg !2255
  br i1 %410, label %411, label %415, !dbg !2258

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2255
  %413 = or i8 %412, 48, !dbg !2255
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2255
  store i8 %413, i8* %414, align 1, !dbg !2255, !tbaa !841
  br label %415, !dbg !2255

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %416, metadata !1897, metadata !DIExpression()), !dbg !1956
  %417 = icmp ult i64 %416, %129, !dbg !2259
  br i1 %417, label %418, label %423, !dbg !2262

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2259
  %420 = and i8 %419, 7, !dbg !2259
  %421 = or i8 %420, 48, !dbg !2259
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2259
  store i8 %421, i8* %422, align 1, !dbg !2259, !tbaa !841
  br label %423, !dbg !2259

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %424, metadata !1897, metadata !DIExpression()), !dbg !1956
  %425 = and i8 %378, 7, !dbg !2263
  %426 = or i8 %425, 48, !dbg !2264
  call void @llvm.dbg.value(metadata i8 %426, metadata !1907, metadata !DIExpression()), !dbg !2023
  br label %436, !dbg !2265

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2266
  %429 = icmp eq i8 %428, 0, !dbg !2266
  br i1 %429, label %436, label %430, !dbg !2268

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2269
  br i1 %431, label %432, label %434, !dbg !2273

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2269
  store i8 92, i8* %433, align 1, !dbg !2269, !tbaa !841
  br label %434, !dbg !2269

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %435, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1912, metadata !DIExpression()), !dbg !2023
  br label %436, !dbg !2274

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1956
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1965
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2023
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2023
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2023
  call void @llvm.dbg.value(metadata i8 %441, metadata !1913, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %440, metadata !1912, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %439, metadata !1907, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %438, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %437, metadata !1897, metadata !DIExpression()), !dbg !1956
  %442 = add i64 %375, 1, !dbg !2275
  %443 = icmp ugt i64 %372, %442, !dbg !2277
  br i1 %443, label %444, label %471, !dbg !2278

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2279
  %446 = icmp ne i8 %445, 0, !dbg !2279
  %447 = and i8 %441, 1, !dbg !2279
  %448 = icmp eq i8 %447, 0, !dbg !2279
  %449 = and i1 %446, %448, !dbg !2279
  br i1 %449, label %450, label %461, !dbg !2279

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2282
  br i1 %451, label %452, label %454, !dbg !2286

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2282
  store i8 39, i8* %453, align 1, !dbg !2282, !tbaa !841
  br label %454, !dbg !2282

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2286
  call void @llvm.dbg.value(metadata i64 %455, metadata !1897, metadata !DIExpression()), !dbg !1956
  %456 = icmp ult i64 %455, %129, !dbg !2287
  br i1 %456, label %457, label %459, !dbg !2290

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2287
  store i8 39, i8* %458, align 1, !dbg !2287, !tbaa !841
  br label %459, !dbg !2287

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %460, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1904, metadata !DIExpression()), !dbg !1956
  br label %461, !dbg !2291

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2292
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %463, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %462, metadata !1897, metadata !DIExpression()), !dbg !1956
  %464 = icmp ult i64 %462, %129, !dbg !2293
  br i1 %464, label %465, label %467, !dbg !2296

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2293
  store i8 %439, i8* %466, align 1, !dbg !2293, !tbaa !841
  br label %467, !dbg !2293

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %468, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %442, metadata !1896, metadata !DIExpression()), !dbg !1956
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2297
  %470 = load i8, i8* %469, align 1, !dbg !2297, !tbaa !841
  call void @llvm.dbg.value(metadata i8 %470, metadata !1907, metadata !DIExpression()), !dbg !2023
  br label %374, !dbg !2298, !llvm.loop !2299

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i8 %472, metadata !1914, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %441, metadata !1913, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %440, metadata !1912, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %439, metadata !1907, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %438, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %371, metadata !1890, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %437, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %375, metadata !1896, metadata !DIExpression()), !dbg !1956
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2016
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1956
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1961
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2302
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1956
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1956
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2023
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2023
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2023
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1888, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %482, metadata !1914, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %481, metadata !1913, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %156, metadata !1912, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %480, metadata !1907, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %479, metadata !1905, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %478, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %477, metadata !1890, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %476, metadata !1898, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %475, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %474, metadata !1896, metadata !DIExpression()), !dbg !1956
  br i1 %116, label %494, label %484, !dbg !2303

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2305
  %486 = zext i8 %485 to i64, !dbg !2305
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2306
  %488 = load i32, i32* %487, align 4, !dbg !2306, !tbaa !886
  %489 = and i8 %480, 31, !dbg !2307
  %490 = zext i8 %489 to i32, !dbg !2307
  %491 = shl nuw i32 1, %490, !dbg !2308
  %492 = and i32 %488, %491, !dbg !2308
  %493 = icmp eq i32 %492, 0, !dbg !2308
  br i1 %493, label %494, label %495, !dbg !2309

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2310

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2311
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1956
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1961
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2302
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1965
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1966
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2023
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2023
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1888, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %503, metadata !1914, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %502, metadata !1907, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %501, metadata !1905, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %500, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %499, metadata !1890, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %498, metadata !1898, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %497, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %496, metadata !1896, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.label(metadata !1953), !dbg !2312
  br i1 %109, label %505, label %635, !dbg !2313

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1913, metadata !DIExpression()), !dbg !2023
  %506 = and i8 %500, 1, !dbg !2315
  %507 = icmp eq i8 %506, 0, !dbg !2315
  %508 = and i1 %110, %507, !dbg !2315
  br i1 %508, label %509, label %525, !dbg !2315

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2317
  br i1 %510, label %511, label %513, !dbg !2321

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2317
  store i8 39, i8* %512, align 1, !dbg !2317, !tbaa !841
  br label %513, !dbg !2317

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %514, metadata !1897, metadata !DIExpression()), !dbg !1956
  %515 = icmp ult i64 %514, %504, !dbg !2322
  br i1 %515, label %516, label %518, !dbg !2325

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2322
  store i8 36, i8* %517, align 1, !dbg !2322, !tbaa !841
  br label %518, !dbg !2322

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %519, metadata !1897, metadata !DIExpression()), !dbg !1956
  %520 = icmp ult i64 %519, %504, !dbg !2326
  br i1 %520, label %521, label %523, !dbg !2329

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2326
  store i8 39, i8* %522, align 1, !dbg !2326, !tbaa !841
  br label %523, !dbg !2326

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %524, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 1, metadata !1904, metadata !DIExpression()), !dbg !1956
  br label %525, !dbg !2330

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2023
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %527, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %526, metadata !1897, metadata !DIExpression()), !dbg !1956
  %528 = icmp ult i64 %526, %504, !dbg !2331
  br i1 %528, label %529, label %531, !dbg !2334

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2331
  store i8 92, i8* %530, align 1, !dbg !2331, !tbaa !841
  br label %531, !dbg !2331

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %543, metadata !1888, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %542, metadata !1914, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %541, metadata !1913, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %540, metadata !1907, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %539, metadata !1905, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %538, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %537, metadata !1890, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %536, metadata !1898, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %535, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %534, metadata !1896, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.label(metadata !1954), !dbg !2335
  br label %560, !dbg !2336

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2311
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1956
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1961
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2302
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1965
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1966
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2339
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2023
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2023
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1888, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %542, metadata !1914, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %541, metadata !1913, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %540, metadata !1907, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %539, metadata !1905, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %538, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %537, metadata !1890, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %536, metadata !1898, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %535, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %534, metadata !1896, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.label(metadata !1954), !dbg !2335
  %544 = and i8 %538, 1, !dbg !2336
  %545 = icmp ne i8 %544, 0, !dbg !2336
  %546 = and i8 %541, 1, !dbg !2336
  %547 = icmp eq i8 %546, 0, !dbg !2336
  %548 = and i1 %545, %547, !dbg !2336
  br i1 %548, label %549, label %560, !dbg !2336

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2340
  br i1 %550, label %551, label %553, !dbg !2344

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2340
  store i8 39, i8* %552, align 1, !dbg !2340, !tbaa !841
  br label %553, !dbg !2340

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %554, metadata !1897, metadata !DIExpression()), !dbg !1956
  %555 = icmp ult i64 %554, %543, !dbg !2345
  br i1 %555, label %556, label %558, !dbg !2348

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2345
  store i8 39, i8* %557, align 1, !dbg !2345, !tbaa !841
  br label %558, !dbg !2345

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2348
  call void @llvm.dbg.value(metadata i64 %559, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1904, metadata !DIExpression()), !dbg !1956
  br label %560, !dbg !2349

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2023
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %569, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %568, metadata !1897, metadata !DIExpression()), !dbg !1956
  %570 = icmp ult i64 %568, %561, !dbg !2350
  br i1 %570, label %571, label %573, !dbg !2353

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2350
  store i8 %563, i8* %572, align 1, !dbg !2350, !tbaa !841
  br label %573, !dbg !2350

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %574, metadata !1897, metadata !DIExpression()), !dbg !1956
  %575 = icmp eq i8 %562, 0, !dbg !2354
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2356
  call void @llvm.dbg.value(metadata i8 %576, metadata !1906, metadata !DIExpression()), !dbg !1956
  br label %577, !dbg !2357

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2311
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1956
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1961
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2302
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1965
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1956
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1967
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1888, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %584, metadata !1906, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %583, metadata !1905, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %582, metadata !1904, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %581, metadata !1890, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %580, metadata !1898, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %579, metadata !1897, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %578, metadata !1896, metadata !DIExpression()), !dbg !1956
  %586 = add i64 %578, 1, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %586, metadata !1896, metadata !DIExpression()), !dbg !1956
  br label %121, !dbg !2359, !llvm.loop !2360

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2362
  %590 = and i1 %110, %589, !dbg !2364
  %591 = xor i1 %590, true, !dbg !2364
  %592 = or i1 %109, %591, !dbg !2364
  br i1 %592, label %593, label %635, !dbg !2364

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2365
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2365
  br i1 %597, label %598, label %607, !dbg !2365

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2367
  %600 = icmp eq i8 %599, 0, !dbg !2367
  br i1 %600, label %603, label %601, !dbg !2370

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2371
  br label %652, !dbg !2372

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2373
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2375
  br i1 %606, label %26, label %607, !dbg !2375

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2376
  %610 = and i1 %609, %608, !dbg !2378
  br i1 %610, label %611, label %626, !dbg !2378

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1899, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %123, metadata !1897, metadata !DIExpression()), !dbg !1956
  %612 = load i8, i8* %97, align 1, !dbg !2379, !tbaa !841
  %613 = icmp eq i8 %612, 0, !dbg !2382
  br i1 %613, label %626, label %614, !dbg !2382

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1899, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %617, metadata !1897, metadata !DIExpression()), !dbg !1956
  %618 = icmp ult i64 %617, %129, !dbg !2383
  br i1 %618, label %619, label %621, !dbg !2386

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2383
  store i8 %615, i8* %620, align 1, !dbg !2383, !tbaa !841
  br label %621, !dbg !2383

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %622, metadata !1897, metadata !DIExpression()), !dbg !1956
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2387
  call void @llvm.dbg.value(metadata i8* %623, metadata !1899, metadata !DIExpression()), !dbg !1956
  %624 = load i8, i8* %623, align 1, !dbg !2379, !tbaa !841
  %625 = icmp eq i8 %624, 0, !dbg !2382
  br i1 %625, label %626, label %614, !dbg !2382, !llvm.loop !2388

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1998
  call void @llvm.dbg.value(metadata i64 %627, metadata !1897, metadata !DIExpression()), !dbg !1956
  %628 = icmp ult i64 %627, %129, !dbg !2390
  br i1 %628, label %629, label %652, !dbg !2392

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2393
  store i8 0, i8* %630, align 1, !dbg !2394, !tbaa !841
  br label %652, !dbg !2393

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1888, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %637, metadata !1890, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.label(metadata !1955), !dbg !2395
  %633 = icmp eq i8 %101, 0, !dbg !2396
  %634 = select i1 %633, i32 2, i32 4, !dbg !2396
  br label %642, !dbg !2396

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1888, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %637, metadata !1890, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.label(metadata !1955), !dbg !2395
  %639 = icmp eq i32 %93, 2, !dbg !2398
  %640 = icmp eq i8 %636, 0, !dbg !2396
  %641 = select i1 %640, i32 2, i32 4, !dbg !2396
  br i1 %639, label %642, label %646, !dbg !2396

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2396

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1891, metadata !DIExpression()), !dbg !1956
  %650 = and i32 %5, -3, !dbg !2399
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2400
  br label %652, !dbg !2401

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2402
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2403 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2407, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 %1, metadata !2408, metadata !DIExpression()), !dbg !2411
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #29, !dbg !2412
  call void @llvm.dbg.value(metadata i8* %3, metadata !2409, metadata !DIExpression()), !dbg !2411
  %4 = icmp eq i8* %3, %0, !dbg !2413
  br i1 %4, label %5, label %72, !dbg !2415

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #29, !dbg !2416
  call void @llvm.dbg.value(metadata i8* %6, metadata !2410, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8* %6, metadata !2417, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* undef, metadata !2423, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8 85, metadata !2424, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8 84, metadata !2425, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8 70, metadata !2426, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8 45, metadata !2427, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8 56, metadata !2428, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8 0, metadata !2429, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8 0, metadata !2431, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2433
  %7 = load i8, i8* %6, align 1, !dbg !2436, !tbaa !841
  %8 = and i8 %7, -33, !dbg !2436
  %9 = sext i8 %8 to i32, !dbg !2436
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2436

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2438, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* undef, metadata !2443, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 84, metadata !2444, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 70, metadata !2445, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 45, metadata !2446, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 56, metadata !2447, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2448, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2449, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2450, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2451, metadata !DIExpression()), !dbg !2452
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2456
  %12 = load i8, i8* %11, align 1, !dbg !2456, !tbaa !841
  %13 = and i8 %12, -33, !dbg !2456
  %14 = icmp eq i8 %13, 84, !dbg !2456
  br i1 %14, label %15, label %69, !dbg !2456

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2458, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* undef, metadata !2463, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 70, metadata !2464, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 45, metadata !2465, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 56, metadata !2466, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2467, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2468, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2469, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2470, metadata !DIExpression()), !dbg !2471
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2475
  %17 = load i8, i8* %16, align 1, !dbg !2475, !tbaa !841
  %18 = and i8 %17, -33, !dbg !2475
  %19 = icmp eq i8 %18, 70, !dbg !2475
  br i1 %19, label %20, label %69, !dbg !2475

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2477, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8* undef, metadata !2482, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 45, metadata !2483, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 56, metadata !2484, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 0, metadata !2485, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 0, metadata !2486, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 0, metadata !2487, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 0, metadata !2488, metadata !DIExpression()), !dbg !2489
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2493
  %22 = load i8, i8* %21, align 1, !dbg !2493, !tbaa !841
  %23 = icmp eq i8 %22, 45, !dbg !2493
  br i1 %23, label %24, label %69, !dbg !2495

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2496, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* undef, metadata !2501, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 56, metadata !2502, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2503, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2505, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2506, metadata !DIExpression()), !dbg !2507
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2511
  %26 = load i8, i8* %25, align 1, !dbg !2511, !tbaa !841
  %27 = icmp eq i8 %26, 56, !dbg !2511
  br i1 %27, label %28, label %69, !dbg !2513

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2514, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8* undef, metadata !2519, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 0, metadata !2520, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 0, metadata !2521, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2524
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2528
  %30 = load i8, i8* %29, align 1, !dbg !2528, !tbaa !841
  %31 = icmp eq i8 %30, 0, !dbg !2528
  br i1 %31, label %32, label %69, !dbg !2530

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2531, !tbaa !841
  %34 = icmp eq i8 %33, 96, !dbg !2532
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.98, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.99, i64 0, i64 0), !dbg !2531
  br label %72, !dbg !2533

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2438, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* undef, metadata !2443, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 66, metadata !2444, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 49, metadata !2445, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 56, metadata !2446, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 48, metadata !2447, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 51, metadata !2448, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 48, metadata !2449, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 0, metadata !2450, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 0, metadata !2451, metadata !DIExpression()), !dbg !2534
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2538
  %38 = load i8, i8* %37, align 1, !dbg !2538, !tbaa !841
  %39 = and i8 %38, -33, !dbg !2538
  %40 = icmp eq i8 %39, 66, !dbg !2538
  br i1 %40, label %41, label %69, !dbg !2538

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2458, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8* undef, metadata !2463, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 49, metadata !2464, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 56, metadata !2465, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 48, metadata !2466, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 51, metadata !2467, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 48, metadata !2468, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 0, metadata !2469, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 0, metadata !2470, metadata !DIExpression()), !dbg !2539
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2541
  %43 = load i8, i8* %42, align 1, !dbg !2541, !tbaa !841
  %44 = icmp eq i8 %43, 49, !dbg !2541
  br i1 %44, label %45, label %69, !dbg !2542

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2477, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8* undef, metadata !2482, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 56, metadata !2483, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 48, metadata !2484, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 51, metadata !2485, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 48, metadata !2486, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 0, metadata !2487, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 0, metadata !2488, metadata !DIExpression()), !dbg !2543
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2545
  %47 = load i8, i8* %46, align 1, !dbg !2545, !tbaa !841
  %48 = icmp eq i8 %47, 56, !dbg !2545
  br i1 %48, label %49, label %69, !dbg !2546

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2496, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* undef, metadata !2501, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 48, metadata !2502, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 51, metadata !2503, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 48, metadata !2504, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 0, metadata !2505, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 0, metadata !2506, metadata !DIExpression()), !dbg !2547
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2549
  %51 = load i8, i8* %50, align 1, !dbg !2549, !tbaa !841
  %52 = icmp eq i8 %51, 48, !dbg !2549
  br i1 %52, label %53, label %69, !dbg !2550

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2514, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* undef, metadata !2519, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 51, metadata !2520, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 48, metadata !2521, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2551
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2553
  %55 = load i8, i8* %54, align 1, !dbg !2553, !tbaa !841
  %56 = icmp eq i8 %55, 51, !dbg !2553
  br i1 %56, label %57, label %69, !dbg !2554

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2555, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8* undef, metadata !2560, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8 48, metadata !2561, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8 0, metadata !2562, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8 0, metadata !2563, metadata !DIExpression()), !dbg !2564
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2568
  %59 = load i8, i8* %58, align 1, !dbg !2568, !tbaa !841
  %60 = icmp eq i8 %59, 48, !dbg !2568
  br i1 %60, label %61, label %69, !dbg !2570

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2571, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* undef, metadata !2576, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 0, metadata !2577, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 0, metadata !2578, metadata !DIExpression()), !dbg !2579
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2583
  %63 = load i8, i8* %62, align 1, !dbg !2583, !tbaa !841
  %64 = icmp eq i8 %63, 0, !dbg !2583
  br i1 %64, label %65, label %69, !dbg !2585

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2586, !tbaa !841
  %67 = icmp eq i8 %66, 96, !dbg !2587
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.100, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.101, i64 0, i64 0), !dbg !2586
  br label %72, !dbg !2588

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2589
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), !dbg !2590
  br label %72, !dbg !2591

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2411
  ret i8* %73, !dbg !2592
}

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2593 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2597 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2603 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2607, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %1, metadata !2608, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2609, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8* %0, metadata !2611, metadata !DIExpression()) #29, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %1, metadata !2616, metadata !DIExpression()) #29, !dbg !2624
  call void @llvm.dbg.value(metadata i64* null, metadata !2617, metadata !DIExpression()) #29, !dbg !2624
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2618, metadata !DIExpression()) #29, !dbg !2624
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2626
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2626
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2619, metadata !DIExpression()) #29, !dbg !2624
  %6 = tail call i32* @__errno_location() #33, !dbg !2627
  %7 = load i32, i32* %6, align 4, !dbg !2627, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %7, metadata !2620, metadata !DIExpression()) #29, !dbg !2624
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2628
  %9 = load i32, i32* %8, align 4, !dbg !2628, !tbaa !1831
  %10 = or i32 %9, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %10, metadata !2621, metadata !DIExpression()) #29, !dbg !2624
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2630
  %12 = load i32, i32* %11, align 8, !dbg !2630, !tbaa !1780
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2631
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2632
  %15 = load i8*, i8** %14, align 8, !dbg !2632, !tbaa !1853
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2633
  %17 = load i8*, i8** %16, align 8, !dbg !2633, !tbaa !1856
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #29, !dbg !2634
  %19 = add i64 %18, 1, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %19, metadata !2622, metadata !DIExpression()) #29, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %19, metadata !2636, metadata !DIExpression()) #29, !dbg !2641
  %20 = tail call noalias i8* @xmalloc(i64 %19) #29, !dbg !2643
  call void @llvm.dbg.value(metadata i8* %20, metadata !2623, metadata !DIExpression()) #29, !dbg !2624
  %21 = load i32, i32* %11, align 8, !dbg !2644, !tbaa !1780
  %22 = load i8*, i8** %14, align 8, !dbg !2645, !tbaa !1853
  %23 = load i8*, i8** %16, align 8, !dbg !2646, !tbaa !1856
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #29, !dbg !2647
  store i32 %7, i32* %6, align 4, !dbg !2648, !tbaa !886
  ret i8* %20, !dbg !2649
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2612 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2611, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %1, metadata !2616, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64* %2, metadata !2617, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2618, metadata !DIExpression()), !dbg !2650
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2651
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2651
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2619, metadata !DIExpression()), !dbg !2650
  %7 = tail call i32* @__errno_location() #33, !dbg !2652
  %8 = load i32, i32* %7, align 4, !dbg !2652, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %8, metadata !2620, metadata !DIExpression()), !dbg !2650
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2653
  %10 = load i32, i32* %9, align 4, !dbg !2653, !tbaa !1831
  %11 = icmp eq i64* %2, null, !dbg !2654
  %12 = zext i1 %11 to i32, !dbg !2654
  %13 = or i32 %10, %12, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %13, metadata !2621, metadata !DIExpression()), !dbg !2650
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2656
  %15 = load i32, i32* %14, align 8, !dbg !2656, !tbaa !1780
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2657
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2658
  %18 = load i8*, i8** %17, align 8, !dbg !2658, !tbaa !1853
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2659
  %20 = load i8*, i8** %19, align 8, !dbg !2659, !tbaa !1856
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2660
  %22 = add i64 %21, 1, !dbg !2661
  call void @llvm.dbg.value(metadata i64 %22, metadata !2622, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %22, metadata !2636, metadata !DIExpression()) #29, !dbg !2662
  %23 = tail call noalias i8* @xmalloc(i64 %22) #29, !dbg !2664
  call void @llvm.dbg.value(metadata i8* %23, metadata !2623, metadata !DIExpression()), !dbg !2650
  %24 = load i32, i32* %14, align 8, !dbg !2665, !tbaa !1780
  %25 = load i8*, i8** %17, align 8, !dbg !2666, !tbaa !1853
  %26 = load i8*, i8** %19, align 8, !dbg !2667, !tbaa !1856
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2668
  store i32 %8, i32* %7, align 4, !dbg !2669, !tbaa !886
  br i1 %11, label %29, label %28, !dbg !2670

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2671, !tbaa !860
  br label %29, !dbg !2673

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2674
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2675 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2679, !tbaa !681
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2677, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i32 1, metadata !2678, metadata !DIExpression()), !dbg !2680
  %2 = load i32, i32* @nslots, align 4, !dbg !2681, !tbaa !886
  %3 = icmp sgt i32 %2, 1, !dbg !2684
  br i1 %3, label %4, label %12, !dbg !2685

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2684
  br label %6, !dbg !2685

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2678, metadata !DIExpression()), !dbg !2680
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2686
  %9 = load i8*, i8** %8, align 8, !dbg !2686, !tbaa !2687
  tail call void @free(i8* %9) #29, !dbg !2689
  %10 = add nuw nsw i64 %7, 1, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %10, metadata !2678, metadata !DIExpression()), !dbg !2680
  %11 = icmp eq i64 %10, %5, !dbg !2684
  br i1 %11, label %12, label %6, !dbg !2685, !llvm.loop !2691

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2693
  %14 = load i8*, i8** %13, align 8, !dbg !2693, !tbaa !2687
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2695
  br i1 %15, label %17, label %16, !dbg !2696

16:                                               ; preds = %12
  tail call void @free(i8* %14) #29, !dbg !2697
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2699, !tbaa !2700
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2701, !tbaa !2687
  br label %17, !dbg !2702

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2703
  br i1 %18, label %21, label %19, !dbg !2705

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2706
  tail call void @free(i8* %20) #29, !dbg !2708
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2709, !tbaa !681
  br label %21, !dbg !2710

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2711, !tbaa !886
  ret void, !dbg !2712
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2713 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2715, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %1, metadata !2716, metadata !DIExpression()), !dbg !2717
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2718
  ret i8* %3, !dbg !2719
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2720 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2724, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8* %1, metadata !2725, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %2, metadata !2726, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2727, metadata !DIExpression()), !dbg !2739
  %5 = tail call i32* @__errno_location() #33, !dbg !2740
  %6 = load i32, i32* %5, align 4, !dbg !2740, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %6, metadata !2728, metadata !DIExpression()), !dbg !2739
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2741, !tbaa !681
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2729, metadata !DIExpression()), !dbg !2739
  %8 = icmp slt i32 %0, 0, !dbg !2742
  br i1 %8, label %9, label %10, !dbg !2744

9:                                                ; preds = %4
  tail call void @abort() #31, !dbg !2745
  unreachable, !dbg !2745

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2746, !tbaa !886
  %12 = icmp sgt i32 %11, %0, !dbg !2747
  br i1 %12, label %34, label %13, !dbg !2748

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2749
  call void @llvm.dbg.value(metadata i1 %14, metadata !2730, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2750
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2733, metadata !DIExpression()), !dbg !2750
  %15 = icmp eq i32 %0, 2147483647, !dbg !2751
  br i1 %15, label %16, label %17, !dbg !2753

16:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !2754
  unreachable, !dbg !2754

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2755
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2755
  %20 = add nuw nsw i32 %0, 1, !dbg !2756
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2757
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #29, !dbg !2758
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2758
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2729, metadata !DIExpression()), !dbg !2739
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2759, !tbaa !681
  br i1 %14, label %25, label %26, !dbg !2760

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2761, !tbaa.struct !2763
  br label %26, !dbg !2764

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2765, !tbaa !886
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2766
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2767
  %31 = sub nsw i32 %20, %27, !dbg !2768
  %32 = sext i32 %31 to i64, !dbg !2769
  %33 = shl nsw i64 %32, 4, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %30, metadata !2166, metadata !DIExpression()) #29, !dbg !2771
  call void @llvm.dbg.value(metadata i32 0, metadata !2169, metadata !DIExpression()) #29, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %33, metadata !2170, metadata !DIExpression()) #29, !dbg !2771
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #29, !dbg !2773
  store i32 %20, i32* @nslots, align 4, !dbg !2774, !tbaa !886
  br label %34, !dbg !2775

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2739
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2729, metadata !DIExpression()), !dbg !2739
  %36 = zext i32 %0 to i64, !dbg !2776
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2777
  %38 = load i64, i64* %37, align 8, !dbg !2777, !tbaa !2700
  call void @llvm.dbg.value(metadata i64 %38, metadata !2734, metadata !DIExpression()), !dbg !2778
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2779
  %40 = load i8*, i8** %39, align 8, !dbg !2779, !tbaa !2687
  call void @llvm.dbg.value(metadata i8* %40, metadata !2736, metadata !DIExpression()), !dbg !2778
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2780
  %42 = load i32, i32* %41, align 4, !dbg !2780, !tbaa !1831
  %43 = or i32 %42, 1, !dbg !2781
  call void @llvm.dbg.value(metadata i32 %43, metadata !2737, metadata !DIExpression()), !dbg !2778
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2782
  %45 = load i32, i32* %44, align 8, !dbg !2782, !tbaa !1780
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2783
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2784
  %48 = load i8*, i8** %47, align 8, !dbg !2784, !tbaa !1853
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2785
  %50 = load i8*, i8** %49, align 8, !dbg !2785, !tbaa !1856
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %51, metadata !2738, metadata !DIExpression()), !dbg !2778
  %52 = icmp ugt i64 %38, %51, !dbg !2787
  br i1 %52, label %63, label %53, !dbg !2789

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %54, metadata !2734, metadata !DIExpression()), !dbg !2778
  store i64 %54, i64* %37, align 8, !dbg !2792, !tbaa !2700
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2793
  br i1 %55, label %57, label %56, !dbg !2795

56:                                               ; preds = %53
  tail call void @free(i8* %40) #29, !dbg !2796
  br label %57, !dbg !2796

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2636, metadata !DIExpression()) #29, !dbg !2797
  %58 = tail call noalias i8* @xmalloc(i64 %54) #29, !dbg !2799
  call void @llvm.dbg.value(metadata i8* %58, metadata !2736, metadata !DIExpression()), !dbg !2778
  store i8* %58, i8** %39, align 8, !dbg !2800, !tbaa !2687
  %59 = load i32, i32* %44, align 8, !dbg !2801, !tbaa !1780
  %60 = load i8*, i8** %47, align 8, !dbg !2802, !tbaa !1853
  %61 = load i8*, i8** %49, align 8, !dbg !2803, !tbaa !1856
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2804
  br label %63, !dbg !2805

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2778
  call void @llvm.dbg.value(metadata i8* %64, metadata !2736, metadata !DIExpression()), !dbg !2778
  store i32 %6, i32* %5, align 4, !dbg !2806, !tbaa !886
  ret i8* %64, !dbg !2807
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2808 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2812, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8* %1, metadata !2813, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %2, metadata !2814, metadata !DIExpression()), !dbg !2815
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2816
  ret i8* %4, !dbg !2817
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2818 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2820, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 0, metadata !2715, metadata !DIExpression()) #29, !dbg !2822
  call void @llvm.dbg.value(metadata i8* %0, metadata !2716, metadata !DIExpression()) #29, !dbg !2822
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #29, !dbg !2824
  ret i8* %2, !dbg !2825
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2826 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 %1, metadata !2831, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i32 0, metadata !2812, metadata !DIExpression()) #29, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %0, metadata !2813, metadata !DIExpression()) #29, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %1, metadata !2814, metadata !DIExpression()) #29, !dbg !2833
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #29, !dbg !2835
  ret i8* %3, !dbg !2836
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2837 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2841, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %1, metadata !2842, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8* %2, metadata !2843, metadata !DIExpression()), !dbg !2845
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2846
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2846
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2844, metadata !DIExpression()), !dbg !2847
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2848), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %1, metadata !2852, metadata !DIExpression()) #29, !dbg !2858
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2857, metadata !DIExpression()) #29, !dbg !2860
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #29, !dbg !2860, !alias.scope !2848
  %6 = icmp eq i32 %1, 10, !dbg !2861
  br i1 %6, label %7, label %8, !dbg !2863

7:                                                ; preds = %3
  tail call void @abort() #31, !dbg !2864, !noalias !2848
  unreachable, !dbg !2864

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2865
  store i32 %1, i32* %9, align 8, !dbg !2866, !tbaa !1780, !alias.scope !2848
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2867
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2868
  ret i8* %10, !dbg !2869
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2870 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2874, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i32 %1, metadata !2875, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %2, metadata !2876, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %3, metadata !2877, metadata !DIExpression()), !dbg !2879
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2880
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !2880
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2878, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2882), !dbg !2885
  call void @llvm.dbg.value(metadata i32 %1, metadata !2852, metadata !DIExpression()) #29, !dbg !2886
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2857, metadata !DIExpression()) #29, !dbg !2888
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #29, !dbg !2888, !alias.scope !2882
  %7 = icmp eq i32 %1, 10, !dbg !2889
  br i1 %7, label %8, label %9, !dbg !2890

8:                                                ; preds = %4
  tail call void @abort() #31, !dbg !2891, !noalias !2882
  unreachable, !dbg !2891

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2892
  store i32 %1, i32* %10, align 8, !dbg !2893, !tbaa !1780, !alias.scope !2882
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2894
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !2895
  ret i8* %11, !dbg !2896
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2897 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2901, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8* %1, metadata !2902, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 0, metadata !2841, metadata !DIExpression()) #29, !dbg !2904
  call void @llvm.dbg.value(metadata i32 %0, metadata !2842, metadata !DIExpression()) #29, !dbg !2904
  call void @llvm.dbg.value(metadata i8* %1, metadata !2843, metadata !DIExpression()) #29, !dbg !2904
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2906
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !2906
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2844, metadata !DIExpression()) #29, !dbg !2907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2908) #29, !dbg !2911
  call void @llvm.dbg.value(metadata i32 %0, metadata !2852, metadata !DIExpression()) #29, !dbg !2912
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2857, metadata !DIExpression()) #29, !dbg !2914
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #29, !dbg !2914, !alias.scope !2908
  %5 = icmp eq i32 %0, 10, !dbg !2915
  br i1 %5, label %6, label %7, !dbg !2916

6:                                                ; preds = %2
  tail call void @abort() #31, !dbg !2917, !noalias !2908
  unreachable, !dbg !2917

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2918
  store i32 %0, i32* %8, align 8, !dbg !2919, !tbaa !1780, !alias.scope !2908
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #29, !dbg !2920
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !2921
  ret i8* %9, !dbg !2922
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2923 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2927, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8* %1, metadata !2928, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %2, metadata !2929, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 0, metadata !2874, metadata !DIExpression()) #29, !dbg !2931
  call void @llvm.dbg.value(metadata i32 %0, metadata !2875, metadata !DIExpression()) #29, !dbg !2931
  call void @llvm.dbg.value(metadata i8* %1, metadata !2876, metadata !DIExpression()) #29, !dbg !2931
  call void @llvm.dbg.value(metadata i64 %2, metadata !2877, metadata !DIExpression()) #29, !dbg !2931
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2933
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2933
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2878, metadata !DIExpression()) #29, !dbg !2934
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2935) #29, !dbg !2938
  call void @llvm.dbg.value(metadata i32 %0, metadata !2852, metadata !DIExpression()) #29, !dbg !2939
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2857, metadata !DIExpression()) #29, !dbg !2941
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #29, !dbg !2941, !alias.scope !2935
  %6 = icmp eq i32 %0, 10, !dbg !2942
  br i1 %6, label %7, label %8, !dbg !2943

7:                                                ; preds = %3
  tail call void @abort() #31, !dbg !2944, !noalias !2935
  unreachable, !dbg !2944

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2945
  store i32 %0, i32* %9, align 8, !dbg !2946, !tbaa !1780, !alias.scope !2935
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #29, !dbg !2947
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2948
  ret i8* %10, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2950 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %1, metadata !2955, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8 %2, metadata !2956, metadata !DIExpression()), !dbg !2958
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2959
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2959
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2957, metadata !DIExpression()), !dbg !2960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2961, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1798, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 %2, metadata !1799, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i32 1, metadata !1800, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 %2, metadata !1801, metadata !DIExpression()), !dbg !2963
  %6 = lshr i8 %2, 5, !dbg !2965
  %7 = zext i8 %6 to i64, !dbg !2965
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2966
  call void @llvm.dbg.value(metadata i32* %8, metadata !1802, metadata !DIExpression()), !dbg !2963
  %9 = and i8 %2, 31, !dbg !2967
  %10 = zext i8 %9 to i32, !dbg !2967
  call void @llvm.dbg.value(metadata i32 %10, metadata !1804, metadata !DIExpression()), !dbg !2963
  %11 = load i32, i32* %8, align 4, !dbg !2968, !tbaa !886
  %12 = lshr i32 %11, %10, !dbg !2969
  %13 = and i32 %12, 1, !dbg !2970
  call void @llvm.dbg.value(metadata i32 %13, metadata !1805, metadata !DIExpression()), !dbg !2963
  %14 = xor i32 %13, 1, !dbg !2971
  %15 = shl i32 %14, %10, !dbg !2972
  %16 = xor i32 %15, %11, !dbg !2973
  store i32 %16, i32* %8, align 4, !dbg !2973, !tbaa !886
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2974
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2975
  ret i8* %17, !dbg !2976
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2977 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2981, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %1, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()) #29, !dbg !2984
  call void @llvm.dbg.value(metadata i64 -1, metadata !2955, metadata !DIExpression()) #29, !dbg !2984
  call void @llvm.dbg.value(metadata i8 %1, metadata !2956, metadata !DIExpression()) #29, !dbg !2984
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2986
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !2986
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2957, metadata !DIExpression()) #29, !dbg !2987
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !2988, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1798, metadata !DIExpression()) #29, !dbg !2989
  call void @llvm.dbg.value(metadata i8 %1, metadata !1799, metadata !DIExpression()) #29, !dbg !2989
  call void @llvm.dbg.value(metadata i32 1, metadata !1800, metadata !DIExpression()) #29, !dbg !2989
  call void @llvm.dbg.value(metadata i8 %1, metadata !1801, metadata !DIExpression()) #29, !dbg !2989
  %5 = lshr i8 %1, 5, !dbg !2991
  %6 = zext i8 %5 to i64, !dbg !2991
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2992
  call void @llvm.dbg.value(metadata i32* %7, metadata !1802, metadata !DIExpression()) #29, !dbg !2989
  %8 = and i8 %1, 31, !dbg !2993
  %9 = zext i8 %8 to i32, !dbg !2993
  call void @llvm.dbg.value(metadata i32 %9, metadata !1804, metadata !DIExpression()) #29, !dbg !2989
  %10 = load i32, i32* %7, align 4, !dbg !2994, !tbaa !886
  %11 = lshr i32 %10, %9, !dbg !2995
  %12 = and i32 %11, 1, !dbg !2996
  call void @llvm.dbg.value(metadata i32 %12, metadata !1805, metadata !DIExpression()) #29, !dbg !2989
  %13 = xor i32 %12, 1, !dbg !2997
  %14 = shl i32 %13, %9, !dbg !2998
  %15 = xor i32 %14, %10, !dbg !2999
  store i32 %15, i32* %7, align 4, !dbg !2999, !tbaa !886
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #29, !dbg !3000
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3001
  ret i8* %16, !dbg !3002
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3003 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8* %0, metadata !2981, metadata !DIExpression()) #29, !dbg !3007
  call void @llvm.dbg.value(metadata i8 58, metadata !2982, metadata !DIExpression()) #29, !dbg !3007
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()) #29, !dbg !3009
  call void @llvm.dbg.value(metadata i64 -1, metadata !2955, metadata !DIExpression()) #29, !dbg !3009
  call void @llvm.dbg.value(metadata i8 58, metadata !2956, metadata !DIExpression()) #29, !dbg !3009
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3011
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #29, !dbg !3011
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2957, metadata !DIExpression()) #29, !dbg !3012
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !3013, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1798, metadata !DIExpression()) #29, !dbg !3014
  call void @llvm.dbg.value(metadata i8 58, metadata !1799, metadata !DIExpression()) #29, !dbg !3014
  call void @llvm.dbg.value(metadata i32 1, metadata !1800, metadata !DIExpression()) #29, !dbg !3014
  call void @llvm.dbg.value(metadata i8 58, metadata !1801, metadata !DIExpression()) #29, !dbg !3014
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3016
  call void @llvm.dbg.value(metadata i32* %4, metadata !1802, metadata !DIExpression()) #29, !dbg !3014
  call void @llvm.dbg.value(metadata i32 26, metadata !1804, metadata !DIExpression()) #29, !dbg !3014
  %5 = load i32, i32* %4, align 4, !dbg !3017, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %5, metadata !1805, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #29, !dbg !3014
  %6 = or i32 %5, 67108864, !dbg !3018
  store i32 %6, i32* %4, align 4, !dbg !3018, !tbaa !886
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #29, !dbg !3019
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #29, !dbg !3020
  ret i8* %7, !dbg !3021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3022 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3024, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %1, metadata !3025, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()) #29, !dbg !3027
  call void @llvm.dbg.value(metadata i64 %1, metadata !2955, metadata !DIExpression()) #29, !dbg !3027
  call void @llvm.dbg.value(metadata i8 58, metadata !2956, metadata !DIExpression()) #29, !dbg !3027
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3029
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3029
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2957, metadata !DIExpression()) #29, !dbg !3030
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !3031, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1798, metadata !DIExpression()) #29, !dbg !3032
  call void @llvm.dbg.value(metadata i8 58, metadata !1799, metadata !DIExpression()) #29, !dbg !3032
  call void @llvm.dbg.value(metadata i32 1, metadata !1800, metadata !DIExpression()) #29, !dbg !3032
  call void @llvm.dbg.value(metadata i8 58, metadata !1801, metadata !DIExpression()) #29, !dbg !3032
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3034
  call void @llvm.dbg.value(metadata i32* %5, metadata !1802, metadata !DIExpression()) #29, !dbg !3032
  call void @llvm.dbg.value(metadata i32 26, metadata !1804, metadata !DIExpression()) #29, !dbg !3032
  %6 = load i32, i32* %5, align 4, !dbg !3035, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %6, metadata !1805, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #29, !dbg !3032
  %7 = or i32 %6, 67108864, !dbg !3036
  store i32 %7, i32* %5, align 4, !dbg !3036, !tbaa !886
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #29, !dbg !3037
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3038
  ret i8* %8, !dbg !3039
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3040 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2857, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3046
  call void @llvm.dbg.value(metadata i32 %0, metadata !3042, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 %1, metadata !3043, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8* %2, metadata !3044, metadata !DIExpression()), !dbg !3048
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3049
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3049
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3045, metadata !DIExpression()), !dbg !3050
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3051
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3051
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3052), !dbg !3051
  call void @llvm.dbg.value(metadata i32 %1, metadata !2852, metadata !DIExpression()) #29, !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !2857, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3055
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3046, !alias.scope !3052
  %8 = icmp eq i32 %1, 10, !dbg !3056
  br i1 %8, label %9, label %10, !dbg !3057

9:                                                ; preds = %3
  tail call void @abort() #31, !dbg !3058, !noalias !3052
  unreachable, !dbg !3058

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2857, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3055
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3051
  store i32 %1, i32* %11, align 8, !dbg !3051, !tbaa.struct !2962
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3051
  %13 = bitcast i32* %12 to i8*, !dbg !3051
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3051, !tbaa.struct !3059
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3051
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1798, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 58, metadata !1799, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i32 1, metadata !1800, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 58, metadata !1801, metadata !DIExpression()), !dbg !3060
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3062
  call void @llvm.dbg.value(metadata i32* %14, metadata !1802, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i32 26, metadata !1804, metadata !DIExpression()), !dbg !3060
  %15 = load i32, i32* %14, align 4, !dbg !3063, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %15, metadata !1805, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3060
  %16 = or i32 %15, 67108864, !dbg !3064
  store i32 %16, i32* %14, align 4, !dbg !3064, !tbaa !886
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3065
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3066
  ret i8* %17, !dbg !3067
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3068 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3072, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i8* %1, metadata !3073, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i8* %2, metadata !3074, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i8* %3, metadata !3075, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i32 %0, metadata !3077, metadata !DIExpression()) #29, !dbg !3087
  call void @llvm.dbg.value(metadata i8* %1, metadata !3082, metadata !DIExpression()) #29, !dbg !3087
  call void @llvm.dbg.value(metadata i8* %2, metadata !3083, metadata !DIExpression()) #29, !dbg !3087
  call void @llvm.dbg.value(metadata i8* %3, metadata !3084, metadata !DIExpression()) #29, !dbg !3087
  call void @llvm.dbg.value(metadata i64 -1, metadata !3085, metadata !DIExpression()) #29, !dbg !3087
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3089
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3089
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3086, metadata !DIExpression()) #29, !dbg !3090
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !3091, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1838, metadata !DIExpression()) #29, !dbg !3092
  call void @llvm.dbg.value(metadata i8* %1, metadata !1839, metadata !DIExpression()) #29, !dbg !3092
  call void @llvm.dbg.value(metadata i8* %2, metadata !1840, metadata !DIExpression()) #29, !dbg !3092
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1838, metadata !DIExpression()) #29, !dbg !3092
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3094
  store i32 10, i32* %7, align 8, !dbg !3095, !tbaa !1780
  %8 = icmp ne i8* %1, null, !dbg !3096
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3097
  br i1 %10, label %12, label %11, !dbg !3097

11:                                               ; preds = %4
  tail call void @abort() #31, !dbg !3098
  unreachable, !dbg !3098

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3099
  store i8* %1, i8** %13, align 8, !dbg !3100, !tbaa !1853
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3101
  store i8* %2, i8** %14, align 8, !dbg !3102, !tbaa !1856
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #29, !dbg !3103
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3104
  ret i8* %15, !dbg !3105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3078 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3077, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %1, metadata !3082, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %2, metadata !3083, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %3, metadata !3084, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 %4, metadata !3085, metadata !DIExpression()), !dbg !3106
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3107
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #29, !dbg !3107
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3086, metadata !DIExpression()), !dbg !3108
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3109, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1838, metadata !DIExpression()) #29, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %1, metadata !1839, metadata !DIExpression()) #29, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %2, metadata !1840, metadata !DIExpression()) #29, !dbg !3110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1838, metadata !DIExpression()) #29, !dbg !3110
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3112
  store i32 10, i32* %8, align 8, !dbg !3113, !tbaa !1780
  %9 = icmp ne i8* %1, null, !dbg !3114
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3115
  br i1 %11, label %13, label %12, !dbg !3115

12:                                               ; preds = %5
  tail call void @abort() #31, !dbg !3116
  unreachable, !dbg !3116

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3117
  store i8* %1, i8** %14, align 8, !dbg !3118, !tbaa !1853
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3119
  store i8* %2, i8** %15, align 8, !dbg !3120, !tbaa !1856
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3121
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #29, !dbg !3122
  ret i8* %16, !dbg !3123
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3124 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3128, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8* %1, metadata !3129, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8* %2, metadata !3130, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 0, metadata !3072, metadata !DIExpression()) #29, !dbg !3132
  call void @llvm.dbg.value(metadata i8* %0, metadata !3073, metadata !DIExpression()) #29, !dbg !3132
  call void @llvm.dbg.value(metadata i8* %1, metadata !3074, metadata !DIExpression()) #29, !dbg !3132
  call void @llvm.dbg.value(metadata i8* %2, metadata !3075, metadata !DIExpression()) #29, !dbg !3132
  call void @llvm.dbg.value(metadata i32 0, metadata !3077, metadata !DIExpression()) #29, !dbg !3134
  call void @llvm.dbg.value(metadata i8* %0, metadata !3082, metadata !DIExpression()) #29, !dbg !3134
  call void @llvm.dbg.value(metadata i8* %1, metadata !3083, metadata !DIExpression()) #29, !dbg !3134
  call void @llvm.dbg.value(metadata i8* %2, metadata !3084, metadata !DIExpression()) #29, !dbg !3134
  call void @llvm.dbg.value(metadata i64 -1, metadata !3085, metadata !DIExpression()) #29, !dbg !3134
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3136
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3136
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3086, metadata !DIExpression()) #29, !dbg !3137
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !3138, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1838, metadata !DIExpression()) #29, !dbg !3139
  call void @llvm.dbg.value(metadata i8* %0, metadata !1839, metadata !DIExpression()) #29, !dbg !3139
  call void @llvm.dbg.value(metadata i8* %1, metadata !1840, metadata !DIExpression()) #29, !dbg !3139
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1838, metadata !DIExpression()) #29, !dbg !3139
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3141
  store i32 10, i32* %6, align 8, !dbg !3142, !tbaa !1780
  %7 = icmp ne i8* %0, null, !dbg !3143
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3144
  br i1 %9, label %11, label %10, !dbg !3144

10:                                               ; preds = %3
  tail call void @abort() #31, !dbg !3145
  unreachable, !dbg !3145

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3146
  store i8* %0, i8** %12, align 8, !dbg !3147, !tbaa !1853
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3148
  store i8* %1, i8** %13, align 8, !dbg !3149, !tbaa !1856
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #29, !dbg !3150
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3151
  ret i8* %14, !dbg !3152
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3153 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3157, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %1, metadata !3158, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %2, metadata !3159, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %3, metadata !3160, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 0, metadata !3077, metadata !DIExpression()) #29, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %0, metadata !3082, metadata !DIExpression()) #29, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %1, metadata !3083, metadata !DIExpression()) #29, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %2, metadata !3084, metadata !DIExpression()) #29, !dbg !3162
  call void @llvm.dbg.value(metadata i64 %3, metadata !3085, metadata !DIExpression()) #29, !dbg !3162
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3164
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3164
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3086, metadata !DIExpression()) #29, !dbg !3165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !3166, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1838, metadata !DIExpression()) #29, !dbg !3167
  call void @llvm.dbg.value(metadata i8* %0, metadata !1839, metadata !DIExpression()) #29, !dbg !3167
  call void @llvm.dbg.value(metadata i8* %1, metadata !1840, metadata !DIExpression()) #29, !dbg !3167
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1838, metadata !DIExpression()) #29, !dbg !3167
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3169
  store i32 10, i32* %7, align 8, !dbg !3170, !tbaa !1780
  %8 = icmp ne i8* %0, null, !dbg !3171
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3172
  br i1 %10, label %12, label %11, !dbg !3172

11:                                               ; preds = %4
  tail call void @abort() #31, !dbg !3173
  unreachable, !dbg !3173

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3174
  store i8* %0, i8** %13, align 8, !dbg !3175, !tbaa !1853
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3176
  store i8* %1, i8** %14, align 8, !dbg !3177, !tbaa !1856
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #29, !dbg !3178
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3179
  ret i8* %15, !dbg !3180
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3181 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3185, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i8* %1, metadata !3186, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i64 %2, metadata !3187, metadata !DIExpression()), !dbg !3188
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3189
  ret i8* %4, !dbg !3190
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3191 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3195, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %1, metadata !3196, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i32 0, metadata !3185, metadata !DIExpression()) #29, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %0, metadata !3186, metadata !DIExpression()) #29, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %1, metadata !3187, metadata !DIExpression()) #29, !dbg !3198
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !3200
  ret i8* %3, !dbg !3201
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3202 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3206, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i8* %1, metadata !3207, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %0, metadata !3185, metadata !DIExpression()) #29, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %1, metadata !3186, metadata !DIExpression()) #29, !dbg !3209
  call void @llvm.dbg.value(metadata i64 -1, metadata !3187, metadata !DIExpression()) #29, !dbg !3209
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !3211
  ret i8* %3, !dbg !3212
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3213 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3217, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 0, metadata !3206, metadata !DIExpression()) #29, !dbg !3219
  call void @llvm.dbg.value(metadata i8* %0, metadata !3207, metadata !DIExpression()) #29, !dbg !3219
  call void @llvm.dbg.value(metadata i32 0, metadata !3185, metadata !DIExpression()) #29, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %0, metadata !3186, metadata !DIExpression()) #29, !dbg !3221
  call void @llvm.dbg.value(metadata i64 -1, metadata !3187, metadata !DIExpression()) #29, !dbg !3221
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !3223
  ret i8* %2, !dbg !3224
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3225 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3229, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8* %1, metadata !3230, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %2, metadata !3231, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 %0, metadata !3233, metadata !DIExpression()) #29, !dbg !3242
  call void @llvm.dbg.value(metadata i8* %1, metadata !3236, metadata !DIExpression()) #29, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %2, metadata !3237, metadata !DIExpression()) #29, !dbg !3242
  call void @llvm.dbg.value(metadata i32 %0, metadata !3244, metadata !DIExpression()) #29, !dbg !3250
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #29, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %4, metadata !3249, metadata !DIExpression()) #29, !dbg !3250
  call void @llvm.dbg.value(metadata i8* %4, metadata !3238, metadata !DIExpression()) #29, !dbg !3242
  %5 = icmp eq i8* %4, null, !dbg !3253
  br i1 %5, label %6, label %9, !dbg !3254

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3255
  br i1 %7, label %19, label %8, !dbg !3258

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3259, !tbaa !841
  br label %19, !dbg !3260

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #30, !dbg !3261
  call void @llvm.dbg.value(metadata i64 %10, metadata !3239, metadata !DIExpression()) #29, !dbg !3262
  %11 = icmp ult i64 %10, %2, !dbg !3263
  br i1 %11, label %12, label %14, !dbg !3265

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3266
  call void @llvm.dbg.value(metadata i8* %1, metadata !3268, metadata !DIExpression()) #29, !dbg !3277
  call void @llvm.dbg.value(metadata i8* %4, metadata !3275, metadata !DIExpression()) #29, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %13, metadata !3276, metadata !DIExpression()) #29, !dbg !3277
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #29, !dbg !3279
  br label %19, !dbg !3280

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3281
  br i1 %15, label %19, label %16, !dbg !3284

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3285
  call void @llvm.dbg.value(metadata i8* %1, metadata !3268, metadata !DIExpression()) #29, !dbg !3287
  call void @llvm.dbg.value(metadata i8* %4, metadata !3275, metadata !DIExpression()) #29, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %17, metadata !3276, metadata !DIExpression()) #29, !dbg !3287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #29, !dbg !3289
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3290
  store i8 0, i8* %18, align 1, !dbg !3291, !tbaa !841
  br label %19, !dbg !3292

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3293
  ret i32 %20, !dbg !3294
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3295 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3297, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 %0, metadata !3244, metadata !DIExpression()) #29, !dbg !3299
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #29, !dbg !3301
  call void @llvm.dbg.value(metadata i8* %2, metadata !3249, metadata !DIExpression()) #29, !dbg !3299
  ret i8* %2, !dbg !3302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32 %0) local_unnamed_addr #8 !dbg !3303 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3305, metadata !DIExpression()), !dbg !3306
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #29, !dbg !3307
  ret i32 %2, !dbg !3308
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3309 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3348, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %1, metadata !3349, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %2, metadata !3350, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %3, metadata !3351, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8** %4, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %5, metadata !3353, metadata !DIExpression()), !dbg !3354
  %7 = icmp eq i8* %1, null, !dbg !3355
  br i1 %7, label %10, label %8, !dbg !3357

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #29, !dbg !3358
  br label %12, !dbg !3358

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.113, i64 0, i64 0), i8* %2, i8* %3) #29, !dbg !3359
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.114, i64 0, i64 0), i32 5) #29, !dbg !3360
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #29, !dbg !3360
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.115, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3361
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.116, i64 0, i64 0), i32 5) #29, !dbg !3362
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.117, i64 0, i64 0)) #29, !dbg !3362
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.115, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3363
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
  ], !dbg !3364

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.118, i64 0, i64 0), i32 5) #29, !dbg !3365
  %21 = load i8*, i8** %4, align 8, !dbg !3365, !tbaa !681
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #29, !dbg !3365
  br label %147, !dbg !3367

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.119, i64 0, i64 0), i32 5) #29, !dbg !3368
  %25 = load i8*, i8** %4, align 8, !dbg !3368, !tbaa !681
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3368
  %27 = load i8*, i8** %26, align 8, !dbg !3368, !tbaa !681
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #29, !dbg !3368
  br label %147, !dbg !3369

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.120, i64 0, i64 0), i32 5) #29, !dbg !3370
  %31 = load i8*, i8** %4, align 8, !dbg !3370, !tbaa !681
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3370
  %33 = load i8*, i8** %32, align 8, !dbg !3370, !tbaa !681
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3370
  %35 = load i8*, i8** %34, align 8, !dbg !3370, !tbaa !681
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #29, !dbg !3370
  br label %147, !dbg !3371

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.121, i64 0, i64 0), i32 5) #29, !dbg !3372
  %39 = load i8*, i8** %4, align 8, !dbg !3372, !tbaa !681
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3372
  %41 = load i8*, i8** %40, align 8, !dbg !3372, !tbaa !681
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3372
  %43 = load i8*, i8** %42, align 8, !dbg !3372, !tbaa !681
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3372
  %45 = load i8*, i8** %44, align 8, !dbg !3372, !tbaa !681
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #29, !dbg !3372
  br label %147, !dbg !3373

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.122, i64 0, i64 0), i32 5) #29, !dbg !3374
  %49 = load i8*, i8** %4, align 8, !dbg !3374, !tbaa !681
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3374
  %51 = load i8*, i8** %50, align 8, !dbg !3374, !tbaa !681
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3374
  %53 = load i8*, i8** %52, align 8, !dbg !3374, !tbaa !681
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3374
  %55 = load i8*, i8** %54, align 8, !dbg !3374, !tbaa !681
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3374
  %57 = load i8*, i8** %56, align 8, !dbg !3374, !tbaa !681
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #29, !dbg !3374
  br label %147, !dbg !3375

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.123, i64 0, i64 0), i32 5) #29, !dbg !3376
  %61 = load i8*, i8** %4, align 8, !dbg !3376, !tbaa !681
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3376
  %63 = load i8*, i8** %62, align 8, !dbg !3376, !tbaa !681
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3376
  %65 = load i8*, i8** %64, align 8, !dbg !3376, !tbaa !681
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3376
  %67 = load i8*, i8** %66, align 8, !dbg !3376, !tbaa !681
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3376
  %69 = load i8*, i8** %68, align 8, !dbg !3376, !tbaa !681
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3376
  %71 = load i8*, i8** %70, align 8, !dbg !3376, !tbaa !681
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #29, !dbg !3376
  br label %147, !dbg !3377

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.124, i64 0, i64 0), i32 5) #29, !dbg !3378
  %75 = load i8*, i8** %4, align 8, !dbg !3378, !tbaa !681
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3378
  %77 = load i8*, i8** %76, align 8, !dbg !3378, !tbaa !681
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3378
  %79 = load i8*, i8** %78, align 8, !dbg !3378, !tbaa !681
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3378
  %81 = load i8*, i8** %80, align 8, !dbg !3378, !tbaa !681
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3378
  %83 = load i8*, i8** %82, align 8, !dbg !3378, !tbaa !681
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3378
  %85 = load i8*, i8** %84, align 8, !dbg !3378, !tbaa !681
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3378
  %87 = load i8*, i8** %86, align 8, !dbg !3378, !tbaa !681
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #29, !dbg !3378
  br label %147, !dbg !3379

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.125, i64 0, i64 0), i32 5) #29, !dbg !3380
  %91 = load i8*, i8** %4, align 8, !dbg !3380, !tbaa !681
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3380
  %93 = load i8*, i8** %92, align 8, !dbg !3380, !tbaa !681
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3380
  %95 = load i8*, i8** %94, align 8, !dbg !3380, !tbaa !681
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3380
  %97 = load i8*, i8** %96, align 8, !dbg !3380, !tbaa !681
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3380
  %99 = load i8*, i8** %98, align 8, !dbg !3380, !tbaa !681
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3380
  %101 = load i8*, i8** %100, align 8, !dbg !3380, !tbaa !681
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3380
  %103 = load i8*, i8** %102, align 8, !dbg !3380, !tbaa !681
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3380
  %105 = load i8*, i8** %104, align 8, !dbg !3380, !tbaa !681
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #29, !dbg !3380
  br label %147, !dbg !3381

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.126, i64 0, i64 0), i32 5) #29, !dbg !3382
  %109 = load i8*, i8** %4, align 8, !dbg !3382, !tbaa !681
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3382
  %111 = load i8*, i8** %110, align 8, !dbg !3382, !tbaa !681
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3382
  %113 = load i8*, i8** %112, align 8, !dbg !3382, !tbaa !681
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3382
  %115 = load i8*, i8** %114, align 8, !dbg !3382, !tbaa !681
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3382
  %117 = load i8*, i8** %116, align 8, !dbg !3382, !tbaa !681
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3382
  %119 = load i8*, i8** %118, align 8, !dbg !3382, !tbaa !681
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3382
  %121 = load i8*, i8** %120, align 8, !dbg !3382, !tbaa !681
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3382
  %123 = load i8*, i8** %122, align 8, !dbg !3382, !tbaa !681
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3382
  %125 = load i8*, i8** %124, align 8, !dbg !3382, !tbaa !681
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #29, !dbg !3382
  br label %147, !dbg !3383

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.127, i64 0, i64 0), i32 5) #29, !dbg !3384
  %129 = load i8*, i8** %4, align 8, !dbg !3384, !tbaa !681
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3384
  %131 = load i8*, i8** %130, align 8, !dbg !3384, !tbaa !681
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3384
  %133 = load i8*, i8** %132, align 8, !dbg !3384, !tbaa !681
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3384
  %135 = load i8*, i8** %134, align 8, !dbg !3384, !tbaa !681
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3384
  %137 = load i8*, i8** %136, align 8, !dbg !3384, !tbaa !681
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3384
  %139 = load i8*, i8** %138, align 8, !dbg !3384, !tbaa !681
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3384
  %141 = load i8*, i8** %140, align 8, !dbg !3384, !tbaa !681
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3384
  %143 = load i8*, i8** %142, align 8, !dbg !3384, !tbaa !681
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3384
  %145 = load i8*, i8** %144, align 8, !dbg !3384, !tbaa !681
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #29, !dbg !3384
  br label %147, !dbg !3385

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3386
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3387 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3391, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i8* %1, metadata !3392, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i8* %2, metadata !3393, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i8* %3, metadata !3394, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i8** %4, metadata !3395, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i64 0, metadata !3396, metadata !DIExpression()), !dbg !3397
  br label %6, !dbg !3398

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3400
  call void @llvm.dbg.value(metadata i64 %7, metadata !3396, metadata !DIExpression()), !dbg !3397
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3401
  %9 = load i8*, i8** %8, align 8, !dbg !3401, !tbaa !681
  %10 = icmp eq i8* %9, null, !dbg !3403
  %11 = add i64 %7, 1, !dbg !3404
  call void @llvm.dbg.value(metadata i64 %11, metadata !3396, metadata !DIExpression()), !dbg !3397
  br i1 %10, label %12, label %6, !dbg !3403, !llvm.loop !3405

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3407
  ret void, !dbg !3408
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3409 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3420, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i8* %1, metadata !3421, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i8* %2, metadata !3422, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i8* %3, metadata !3423, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3424, metadata !DIExpression()), !dbg !3428
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3429
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #29, !dbg !3429
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3426, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64 0, metadata !3425, metadata !DIExpression()), !dbg !3428
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3425, metadata !DIExpression()), !dbg !3428
  %11 = load i32, i32* %8, align 8, !dbg !3431
  %12 = icmp ult i32 %11, 41, !dbg !3431
  br i1 %12, label %13, label %18, !dbg !3431

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3431
  %15 = zext i32 %11 to i64, !dbg !3431
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3431
  %17 = add nuw nsw i32 %11, 8, !dbg !3431
  store i32 %17, i32* %8, align 8, !dbg !3431
  br label %21, !dbg !3431

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3431
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3431
  store i8* %20, i8** %9, align 8, !dbg !3431
  br label %21, !dbg !3431

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3431
  %25 = load i8*, i8** %24, align 8, !dbg !3431
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3434
  store i8* %25, i8** %26, align 16, !dbg !3435, !tbaa !681
  %27 = icmp eq i8* %25, null, !dbg !3436
  br i1 %27, label %30, label %28, !dbg !3437

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 1, metadata !3425, metadata !DIExpression()), !dbg !3428
  %29 = icmp ult i32 %22, 41, !dbg !3431
  br i1 %29, label %35, label %32, !dbg !3431

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3438
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3439
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #29, !dbg !3440
  ret void, !dbg !3440

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3431
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3431
  store i8* %34, i8** %9, align 8, !dbg !3431
  br label %40, !dbg !3431

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3431
  %37 = zext i32 %22 to i64, !dbg !3431
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3431
  %39 = add nuw nsw i32 %22, 8, !dbg !3431
  store i32 %39, i32* %8, align 8, !dbg !3431
  br label %40, !dbg !3431

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3431
  %44 = load i8*, i8** %43, align 8, !dbg !3431
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3434
  store i8* %44, i8** %45, align 8, !dbg !3435, !tbaa !681
  %46 = icmp eq i8* %44, null, !dbg !3436
  br i1 %46, label %30, label %47, !dbg !3437

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 2, metadata !3425, metadata !DIExpression()), !dbg !3428
  %48 = icmp ult i32 %41, 41, !dbg !3431
  br i1 %48, label %52, label %49, !dbg !3431

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3431
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3431
  store i8* %51, i8** %9, align 8, !dbg !3431
  br label %57, !dbg !3431

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3431
  %54 = zext i32 %41 to i64, !dbg !3431
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3431
  %56 = add nuw nsw i32 %41, 8, !dbg !3431
  store i32 %56, i32* %8, align 8, !dbg !3431
  br label %57, !dbg !3431

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3431
  %61 = load i8*, i8** %60, align 8, !dbg !3431
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3434
  store i8* %61, i8** %62, align 16, !dbg !3435, !tbaa !681
  %63 = icmp eq i8* %61, null, !dbg !3436
  br i1 %63, label %30, label %64, !dbg !3437

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 3, metadata !3425, metadata !DIExpression()), !dbg !3428
  %65 = icmp ult i32 %58, 41, !dbg !3431
  br i1 %65, label %69, label %66, !dbg !3431

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3431
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3431
  store i8* %68, i8** %9, align 8, !dbg !3431
  br label %74, !dbg !3431

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3431
  %71 = zext i32 %58 to i64, !dbg !3431
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3431
  %73 = add nuw nsw i32 %58, 8, !dbg !3431
  store i32 %73, i32* %8, align 8, !dbg !3431
  br label %74, !dbg !3431

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3431
  %78 = load i8*, i8** %77, align 8, !dbg !3431
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3434
  store i8* %78, i8** %79, align 8, !dbg !3435, !tbaa !681
  %80 = icmp eq i8* %78, null, !dbg !3436
  br i1 %80, label %30, label %81, !dbg !3437

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 4, metadata !3425, metadata !DIExpression()), !dbg !3428
  %82 = icmp ult i32 %75, 41, !dbg !3431
  br i1 %82, label %86, label %83, !dbg !3431

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3431
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3431
  store i8* %85, i8** %9, align 8, !dbg !3431
  br label %91, !dbg !3431

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3431
  %88 = zext i32 %75 to i64, !dbg !3431
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3431
  %90 = add nuw nsw i32 %75, 8, !dbg !3431
  store i32 %90, i32* %8, align 8, !dbg !3431
  br label %91, !dbg !3431

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3431
  %95 = load i8*, i8** %94, align 8, !dbg !3431
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3434
  store i8* %95, i8** %96, align 16, !dbg !3435, !tbaa !681
  %97 = icmp eq i8* %95, null, !dbg !3436
  br i1 %97, label %30, label %98, !dbg !3437

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 5, metadata !3425, metadata !DIExpression()), !dbg !3428
  %99 = icmp ult i32 %92, 41, !dbg !3431
  br i1 %99, label %103, label %100, !dbg !3431

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3431
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3431
  store i8* %102, i8** %9, align 8, !dbg !3431
  br label %108, !dbg !3431

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3431
  %105 = zext i32 %92 to i64, !dbg !3431
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3431
  %107 = add nuw nsw i32 %92, 8, !dbg !3431
  store i32 %107, i32* %8, align 8, !dbg !3431
  br label %108, !dbg !3431

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3431
  %111 = load i8*, i8** %110, align 8, !dbg !3431
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3434
  store i8* %111, i8** %112, align 8, !dbg !3435, !tbaa !681
  %113 = icmp eq i8* %111, null, !dbg !3436
  br i1 %113, label %30, label %114, !dbg !3437

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3425, metadata !DIExpression()), !dbg !3428
  %115 = load i8*, i8** %9, align 8, !dbg !3431
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3431
  store i8* %116, i8** %9, align 8, !dbg !3431
  %117 = bitcast i8* %115 to i8**, !dbg !3431
  %118 = load i8*, i8** %117, align 8, !dbg !3431
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3434
  store i8* %118, i8** %119, align 16, !dbg !3435, !tbaa !681
  %120 = icmp eq i8* %118, null, !dbg !3436
  br i1 %120, label %30, label %121, !dbg !3437

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3425, metadata !DIExpression()), !dbg !3428
  %122 = load i8*, i8** %9, align 8, !dbg !3431
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3431
  store i8* %123, i8** %9, align 8, !dbg !3431
  %124 = bitcast i8* %122 to i8**, !dbg !3431
  %125 = load i8*, i8** %124, align 8, !dbg !3431
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3434
  store i8* %125, i8** %126, align 8, !dbg !3435, !tbaa !681
  %127 = icmp eq i8* %125, null, !dbg !3436
  br i1 %127, label %30, label %128, !dbg !3437

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3425, metadata !DIExpression()), !dbg !3428
  %129 = load i8*, i8** %9, align 8, !dbg !3431
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3431
  store i8* %130, i8** %9, align 8, !dbg !3431
  %131 = bitcast i8* %129 to i8**, !dbg !3431
  %132 = load i8*, i8** %131, align 8, !dbg !3431
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3434
  store i8* %132, i8** %133, align 16, !dbg !3435, !tbaa !681
  %134 = icmp eq i8* %132, null, !dbg !3436
  br i1 %134, label %30, label %135, !dbg !3437

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3425, metadata !DIExpression()), !dbg !3428
  %136 = load i8*, i8** %9, align 8, !dbg !3431
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3431
  store i8* %137, i8** %9, align 8, !dbg !3431
  %138 = bitcast i8* %136 to i8**, !dbg !3431
  %139 = load i8*, i8** %138, align 8, !dbg !3431
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3434
  store i8* %139, i8** %140, align 8, !dbg !3435, !tbaa !681
  %141 = icmp eq i8* %139, null, !dbg !3436
  %142 = select i1 %141, i64 9, i64 10, !dbg !3437
  br label %30, !dbg !3437
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3441 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3445, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i8* %1, metadata !3446, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i8* %2, metadata !3447, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i8* %3, metadata !3448, metadata !DIExpression()), !dbg !3455
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3456
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #29, !dbg !3456
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3449, metadata !DIExpression()), !dbg !3457
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3458
  call void @llvm.va_start(i8* nonnull %6), !dbg !3458
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3459
  call void @llvm.va_end(i8* nonnull %6), !dbg !3460
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #29, !dbg !3461
  ret void, !dbg !3461
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #24

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3462 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3463, !tbaa !681
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.115, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3463
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.130, i64 0, i64 0), i32 5) #29, !dbg !3464
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.131, i64 0, i64 0)) #29, !dbg !3464
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.132, i64 0, i64 0), i32 5) #29, !dbg !3465
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.133, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.134, i64 0, i64 0)) #29, !dbg !3465
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.135, i64 0, i64 0), i32 5) #29, !dbg !3466
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.136, i64 0, i64 0)) #29, !dbg !3466
  ret void, !dbg !3467
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3468 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %1, metadata !3473, metadata !DIExpression()), !dbg !3474
  %3 = udiv i64 9223372036854775807, %1, !dbg !3475
  %4 = icmp ult i64 %3, %0, !dbg !3475
  br i1 %4, label %5, label %6, !dbg !3477

5:                                                ; preds = %2
  tail call void @xalloc_die() #31, !dbg !3478
  unreachable, !dbg !3478

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3479
  call void @llvm.dbg.value(metadata i64 %7, metadata !3480, metadata !DIExpression()) #29, !dbg !3486
  %8 = tail call noalias i8* @malloc(i64 %7) #29, !dbg !3488
  call void @llvm.dbg.value(metadata i8* %8, metadata !3485, metadata !DIExpression()) #29, !dbg !3486
  %9 = icmp eq i8* %8, null, !dbg !3489
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3491
  br i1 %11, label %12, label %13, !dbg !3491

12:                                               ; preds = %6
  tail call void @xalloc_die() #31, !dbg !3492
  unreachable, !dbg !3492

13:                                               ; preds = %6
  ret i8* %8, !dbg !3493
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3481 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3480, metadata !DIExpression()), !dbg !3494
  %2 = tail call noalias i8* @malloc(i64 %0) #29, !dbg !3495
  call void @llvm.dbg.value(metadata i8* %2, metadata !3485, metadata !DIExpression()), !dbg !3494
  %3 = icmp eq i8* %2, null, !dbg !3496
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3497
  br i1 %5, label %6, label %7, !dbg !3497

6:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !3498
  unreachable, !dbg !3498

7:                                                ; preds = %1
  ret i8* %2, !dbg !3499
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #25 !dbg !3500 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3504, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %1, metadata !3505, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %2, metadata !3506, metadata !DIExpression()), !dbg !3507
  %4 = udiv i64 9223372036854775807, %2, !dbg !3508
  %5 = icmp ult i64 %4, %1, !dbg !3508
  br i1 %5, label %6, label %7, !dbg !3510

6:                                                ; preds = %3
  tail call void @xalloc_die() #31, !dbg !3511
  unreachable, !dbg !3511

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3512
  call void @llvm.dbg.value(metadata i8* %0, metadata !3513, metadata !DIExpression()) #29, !dbg !3519
  call void @llvm.dbg.value(metadata i64 %8, metadata !3518, metadata !DIExpression()) #29, !dbg !3519
  %9 = icmp eq i64 %8, 0, !dbg !3521
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3523
  br i1 %11, label %12, label %13, !dbg !3523

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #29, !dbg !3524
  br label %19, !dbg !3526

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #29, !dbg !3527
  call void @llvm.dbg.value(metadata i8* %14, metadata !3513, metadata !DIExpression()) #29, !dbg !3519
  %15 = icmp eq i8* %14, null, !dbg !3528
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3530
  br i1 %17, label %18, label %19, !dbg !3530

18:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !3531
  unreachable, !dbg !3531

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3519
  ret i8* %20, !dbg !3532
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3514 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3513, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %1, metadata !3518, metadata !DIExpression()), !dbg !3533
  %3 = icmp eq i64 %1, 0, !dbg !3534
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3535
  br i1 %5, label %6, label %7, !dbg !3535

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #29, !dbg !3536
  br label %13, !dbg !3537

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #29, !dbg !3538
  call void @llvm.dbg.value(metadata i8* %8, metadata !3513, metadata !DIExpression()), !dbg !3533
  %9 = icmp eq i8* %8, null, !dbg !3539
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3540
  br i1 %11, label %12, label %13, !dbg !3540

12:                                               ; preds = %7
  tail call void @xalloc_die() #31, !dbg !3541
  unreachable, !dbg !3541

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3533
  ret i8* %14, !dbg !3542
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #25 !dbg !243 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !248, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i64* %1, metadata !249, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i64 %2, metadata !250, metadata !DIExpression()), !dbg !3543
  %4 = load i64, i64* %1, align 8, !dbg !3544, !tbaa !860
  call void @llvm.dbg.value(metadata i64 %4, metadata !251, metadata !DIExpression()), !dbg !3543
  %5 = icmp eq i8* %0, null, !dbg !3545
  br i1 %5, label %6, label %20, !dbg !3547

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3548
  br i1 %7, label %8, label %13, !dbg !3551

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3552
  call void @llvm.dbg.value(metadata i64 %9, metadata !251, metadata !DIExpression()), !dbg !3543
  %10 = icmp ugt i64 %2, 128, !dbg !3554
  %11 = zext i1 %10 to i64, !dbg !3554
  %12 = add nuw nsw i64 %9, %11, !dbg !3555
  call void @llvm.dbg.value(metadata i64 %12, metadata !251, metadata !DIExpression()), !dbg !3543
  br label %13, !dbg !3556

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3543
  call void @llvm.dbg.value(metadata i64 %14, metadata !251, metadata !DIExpression()), !dbg !3543
  %15 = udiv i64 9223372036854775807, %2, !dbg !3557
  %16 = icmp ult i64 %15, %14, !dbg !3557
  br i1 %16, label %19, label %17, !dbg !3559

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !251, metadata !DIExpression()), !dbg !3543
  store i64 %14, i64* %1, align 8, !dbg !3560, !tbaa !860
  %18 = mul i64 %14, %2, !dbg !3561
  call void @llvm.dbg.value(metadata i8* %0, metadata !3513, metadata !DIExpression()) #29, !dbg !3562
  call void @llvm.dbg.value(metadata i64 %28, metadata !3518, metadata !DIExpression()) #29, !dbg !3562
  br label %31, !dbg !3564

19:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !3565
  unreachable, !dbg !3565

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3566
  %22 = icmp ugt i64 %21, %4, !dbg !3569
  br i1 %22, label %24, label %23, !dbg !3570

23:                                               ; preds = %20
  tail call void @xalloc_die() #31, !dbg !3571
  unreachable, !dbg !3571

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3572
  %26 = add nuw i64 %4, 1, !dbg !3573
  %27 = add i64 %26, %25, !dbg !3574
  call void @llvm.dbg.value(metadata i64 %27, metadata !251, metadata !DIExpression()), !dbg !3543
  store i64 %27, i64* %1, align 8, !dbg !3560, !tbaa !860
  %28 = mul i64 %27, %2, !dbg !3561
  call void @llvm.dbg.value(metadata i8* %0, metadata !3513, metadata !DIExpression()) #29, !dbg !3562
  call void @llvm.dbg.value(metadata i64 %28, metadata !3518, metadata !DIExpression()) #29, !dbg !3562
  %29 = icmp eq i64 %28, 0, !dbg !3575
  br i1 %29, label %30, label %31, !dbg !3564

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #29, !dbg !3576
  br label %38, !dbg !3577

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #29, !dbg !3578
  call void @llvm.dbg.value(metadata i8* %33, metadata !3513, metadata !DIExpression()) #29, !dbg !3562
  %34 = icmp eq i8* %33, null, !dbg !3579
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3580
  br i1 %36, label %37, label %38, !dbg !3580

37:                                               ; preds = %31
  tail call void @xalloc_die() #31, !dbg !3581
  unreachable, !dbg !3581

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3562
  ret i8* %39, !dbg !3582
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #25 !dbg !3583 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3585, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %0, metadata !3480, metadata !DIExpression()) #29, !dbg !3587
  %2 = tail call noalias i8* @malloc(i64 %0) #29, !dbg !3589
  call void @llvm.dbg.value(metadata i8* %2, metadata !3485, metadata !DIExpression()) #29, !dbg !3587
  %3 = icmp eq i8* %2, null, !dbg !3590
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3591
  br i1 %5, label %6, label %7, !dbg !3591

6:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !3592
  unreachable, !dbg !3592

7:                                                ; preds = %1
  ret i8* %2, !dbg !3593
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3594 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3598, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i64* %1, metadata !3599, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i8* %0, metadata !248, metadata !DIExpression()) #29, !dbg !3601
  call void @llvm.dbg.value(metadata i64* %1, metadata !249, metadata !DIExpression()) #29, !dbg !3601
  call void @llvm.dbg.value(metadata i64 1, metadata !250, metadata !DIExpression()) #29, !dbg !3601
  %3 = load i64, i64* %1, align 8, !dbg !3603, !tbaa !860
  call void @llvm.dbg.value(metadata i64 %3, metadata !251, metadata !DIExpression()) #29, !dbg !3601
  %4 = icmp eq i8* %0, null, !dbg !3604
  br i1 %4, label %5, label %10, !dbg !3605

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3606
  br i1 %6, label %17, label %7, !dbg !3607

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !251, metadata !DIExpression()) #29, !dbg !3601
  %8 = icmp slt i64 %3, 0, !dbg !3608
  br i1 %8, label %9, label %17, !dbg !3609

9:                                                ; preds = %7
  tail call void @xalloc_die() #31, !dbg !3610
  unreachable, !dbg !3610

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3611
  br i1 %11, label %13, label %12, !dbg !3612

12:                                               ; preds = %10
  tail call void @xalloc_die() #31, !dbg !3613
  unreachable, !dbg !3613

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3614
  %15 = add nuw nsw i64 %3, 1, !dbg !3615
  %16 = add nuw nsw i64 %15, %14, !dbg !3616
  call void @llvm.dbg.value(metadata i64 %16, metadata !251, metadata !DIExpression()) #29, !dbg !3601
  call void @llvm.dbg.value(metadata i8* %0, metadata !3513, metadata !DIExpression()) #29, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %16, metadata !3518, metadata !DIExpression()) #29, !dbg !3617
  br label %17, !dbg !3619

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3620
  store i64 %18, i64* %1, align 8, !dbg !3620, !tbaa !860
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #29, !dbg !3621
  call void @llvm.dbg.value(metadata i8* %19, metadata !3513, metadata !DIExpression()) #29, !dbg !3617
  %20 = icmp eq i8* %19, null, !dbg !3622
  br i1 %20, label %21, label %22, !dbg !3623

21:                                               ; preds = %17
  tail call void @xalloc_die() #31, !dbg !3624
  unreachable, !dbg !3624

22:                                               ; preds = %17
  ret i8* %19, !dbg !3625
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3626 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3628, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i64 %0, metadata !3630, metadata !DIExpression()) #29, !dbg !3635
  call void @llvm.dbg.value(metadata i64 1, metadata !3633, metadata !DIExpression()) #29, !dbg !3635
  %2 = icmp slt i64 %0, 0, !dbg !3637
  br i1 %2, label %6, label %3, !dbg !3639

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #29, !dbg !3640
  call void @llvm.dbg.value(metadata i8* %4, metadata !3634, metadata !DIExpression()) #29, !dbg !3635
  %5 = icmp eq i8* %4, null, !dbg !3641
  br i1 %5, label %6, label %7, !dbg !3642

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #31, !dbg !3643
  unreachable, !dbg !3643

7:                                                ; preds = %3
  ret i8* %4, !dbg !3644
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3631 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3630, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64 %1, metadata !3633, metadata !DIExpression()), !dbg !3645
  %3 = udiv i64 9223372036854775807, %1, !dbg !3646
  %4 = icmp ult i64 %3, %0, !dbg !3646
  br i1 %4, label %8, label %5, !dbg !3647

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #29, !dbg !3648
  call void @llvm.dbg.value(metadata i8* %6, metadata !3634, metadata !DIExpression()), !dbg !3645
  %7 = icmp eq i8* %6, null, !dbg !3649
  br i1 %7, label %8, label %9, !dbg !3650

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #31, !dbg !3651
  unreachable, !dbg !3651

9:                                                ; preds = %5
  ret i8* %6, !dbg !3652
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3653 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3657, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i64 %1, metadata !3658, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i64 %1, metadata !3480, metadata !DIExpression()) #29, !dbg !3660
  %3 = tail call noalias i8* @malloc(i64 %1) #29, !dbg !3662
  call void @llvm.dbg.value(metadata i8* %3, metadata !3485, metadata !DIExpression()) #29, !dbg !3660
  %4 = icmp eq i8* %3, null, !dbg !3663
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3664
  br i1 %6, label %7, label %8, !dbg !3664

7:                                                ; preds = %2
  tail call void @xalloc_die() #31, !dbg !3665
  unreachable, !dbg !3665

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3666, metadata !DIExpression()) #29, !dbg !3671
  call void @llvm.dbg.value(metadata i8* %0, metadata !3669, metadata !DIExpression()) #29, !dbg !3671
  call void @llvm.dbg.value(metadata i64 %1, metadata !3670, metadata !DIExpression()) #29, !dbg !3671
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #29, !dbg !3673
  ret i8* %3, !dbg !3674
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3675 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3677, metadata !DIExpression()), !dbg !3678
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #30, !dbg !3679
  %3 = add i64 %2, 1, !dbg !3680
  call void @llvm.dbg.value(metadata i8* %0, metadata !3657, metadata !DIExpression()) #29, !dbg !3681
  call void @llvm.dbg.value(metadata i64 %3, metadata !3658, metadata !DIExpression()) #29, !dbg !3681
  call void @llvm.dbg.value(metadata i64 %3, metadata !3480, metadata !DIExpression()) #29, !dbg !3683
  %4 = tail call noalias i8* @malloc(i64 %3) #29, !dbg !3685
  call void @llvm.dbg.value(metadata i8* %4, metadata !3485, metadata !DIExpression()) #29, !dbg !3683
  %5 = icmp eq i8* %4, null, !dbg !3686
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3687
  br i1 %7, label %8, label %9, !dbg !3687

8:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !3688
  unreachable, !dbg !3688

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3666, metadata !DIExpression()) #29, !dbg !3689
  call void @llvm.dbg.value(metadata i8* %0, metadata !3669, metadata !DIExpression()) #29, !dbg !3689
  call void @llvm.dbg.value(metadata i64 %3, metadata !3670, metadata !DIExpression()) #29, !dbg !3689
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #29, !dbg !3691
  ret i8* %4, !dbg !3692
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3693 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3694, !tbaa !886
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.149, i64 0, i64 0), i32 5) #29, !dbg !3695
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0), i8* %2) #29, !dbg !3696
  tail call void @abort() #31, !dbg !3697
  unreachable, !dbg !3697
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xmemcoll(i8* %0, i64 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3698 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3702, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i64 %1, metadata !3703, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i8* %2, metadata !3704, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i64 %3, metadata !3705, metadata !DIExpression()), !dbg !3708
  %5 = tail call i32 @memcoll(i8* %0, i64 %1, i8* %2, i64 %3) #29, !dbg !3709
  call void @llvm.dbg.value(metadata i32 %5, metadata !3706, metadata !DIExpression()), !dbg !3708
  %6 = tail call i32* @__errno_location() #33, !dbg !3710
  %7 = load i32, i32* %6, align 4, !dbg !3710, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %7, metadata !3707, metadata !DIExpression()), !dbg !3708
  %8 = icmp eq i32 %7, 0, !dbg !3711
  br i1 %8, label %16, label %9, !dbg !3713

9:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 %7, metadata !3714, metadata !DIExpression()) #29, !dbg !3723
  call void @llvm.dbg.value(metadata i8* %0, metadata !3719, metadata !DIExpression()) #29, !dbg !3723
  call void @llvm.dbg.value(metadata i64 %1, metadata !3720, metadata !DIExpression()) #29, !dbg !3723
  call void @llvm.dbg.value(metadata i8* %2, metadata !3721, metadata !DIExpression()) #29, !dbg !3723
  call void @llvm.dbg.value(metadata i64 %3, metadata !3722, metadata !DIExpression()) #29, !dbg !3723
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.153, i64 0, i64 0), i32 5) #29, !dbg !3725
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %10) #29, !dbg !3726
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.154, i64 0, i64 0), i32 5) #29, !dbg !3727
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %11) #29, !dbg !3728
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !3729, !tbaa !886
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.155, i64 0, i64 0), i32 5) #29, !dbg !3730
  %14 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %1) #29, !dbg !3731
  %15 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %3) #29, !dbg !3732
  tail call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* %13, i8* %14, i8* %15) #29, !dbg !3733
  br label %16, !dbg !3734

16:                                               ; preds = %9, %4
  ret i32 %5, !dbg !3735
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xmemcoll0(i8* %0, i64 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3736 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3738, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 %1, metadata !3739, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i8* %2, metadata !3740, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 %3, metadata !3741, metadata !DIExpression()), !dbg !3744
  %5 = tail call i32 @memcoll0(i8* %0, i64 %1, i8* %2, i64 %3) #29, !dbg !3745
  call void @llvm.dbg.value(metadata i32 %5, metadata !3742, metadata !DIExpression()), !dbg !3744
  %6 = tail call i32* @__errno_location() #33, !dbg !3746
  %7 = load i32, i32* %6, align 4, !dbg !3746, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %7, metadata !3743, metadata !DIExpression()), !dbg !3744
  %8 = icmp eq i32 %7, 0, !dbg !3747
  br i1 %8, label %18, label %9, !dbg !3749

9:                                                ; preds = %4
  %10 = add i64 %1, -1, !dbg !3750
  %11 = add i64 %3, -1, !dbg !3751
  call void @llvm.dbg.value(metadata i32 %7, metadata !3714, metadata !DIExpression()) #29, !dbg !3752
  call void @llvm.dbg.value(metadata i8* %0, metadata !3719, metadata !DIExpression()) #29, !dbg !3752
  call void @llvm.dbg.value(metadata i64 %10, metadata !3720, metadata !DIExpression()) #29, !dbg !3752
  call void @llvm.dbg.value(metadata i8* %2, metadata !3721, metadata !DIExpression()) #29, !dbg !3752
  call void @llvm.dbg.value(metadata i64 %11, metadata !3722, metadata !DIExpression()) #29, !dbg !3752
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.153, i64 0, i64 0), i32 5) #29, !dbg !3754
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %12) #29, !dbg !3755
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.154, i64 0, i64 0), i32 5) #29, !dbg !3756
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %13) #29, !dbg !3757
  %14 = load volatile i32, i32* @exit_failure, align 4, !dbg !3758, !tbaa !886
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.155, i64 0, i64 0), i32 5) #29, !dbg !3759
  %16 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %10) #29, !dbg !3760
  %17 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %11) #29, !dbg !3761
  tail call void (i32, i32, i8*, ...) @error(i32 %14, i32 0, i8* %15, i8* %16, i8* %17) #29, !dbg !3762
  br label %18, !dbg !3763

18:                                               ; preds = %9, %4
  ret i32 %5, !dbg !3764
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #27 !dbg !3765 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3767, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i64 %1, metadata !3768, metadata !DIExpression()), !dbg !3773
  %3 = icmp eq i64 %0, 0, !dbg !3774
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3775
  br i1 %5, label %11, label %6, !dbg !3775

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3770, metadata !DIExpression()), !dbg !3776
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3777
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3777
  br i1 %8, label %9, label %11, !dbg !3779

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #33, !dbg !3780
  store i32 12, i32* %10, align 4, !dbg !3782, !tbaa !886
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3767, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i64 %12, metadata !3768, metadata !DIExpression()), !dbg !3773
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #29, !dbg !3783
  call void @llvm.dbg.value(metadata i8* %14, metadata !3769, metadata !DIExpression()), !dbg !3773
  br label %15, !dbg !3784

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3773
  ret i8* %16, !dbg !3785
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3786 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3824, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i32 0, metadata !3825, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i32 0, metadata !3827, metadata !DIExpression()), !dbg !3828
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !3829
  call void @llvm.dbg.value(metadata i32 %2, metadata !3826, metadata !DIExpression()), !dbg !3828
  %3 = icmp slt i32 %2, 0, !dbg !3830
  br i1 %3, label %4, label %6, !dbg !3832

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3833
  br label %24, !dbg !3834

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #29, !dbg !3835
  %8 = icmp eq i32 %7, 0, !dbg !3835
  br i1 %8, label %13, label %9, !dbg !3837

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !3838
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #29, !dbg !3839
  %12 = icmp eq i64 %11, -1, !dbg !3840
  br i1 %12, label %16, label %13, !dbg !3841

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #29, !dbg !3842
  %15 = icmp eq i32 %14, 0, !dbg !3842
  br i1 %15, label %16, label %18, !dbg !3843

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3825, metadata !DIExpression()), !dbg !3828
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3844
  call void @llvm.dbg.value(metadata i32 %21, metadata !3827, metadata !DIExpression()), !dbg !3828
  br label %24, !dbg !3845

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #33, !dbg !3846
  %20 = load i32, i32* %19, align 4, !dbg !3846, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %20, metadata !3825, metadata !DIExpression()), !dbg !3828
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3844
  call void @llvm.dbg.value(metadata i32 %21, metadata !3827, metadata !DIExpression()), !dbg !3828
  %22 = icmp eq i32 %20, 0, !dbg !3847
  br i1 %22, label %24, label %23, !dbg !3845

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3849, !tbaa !886
  call void @llvm.dbg.value(metadata i32 -1, metadata !3827, metadata !DIExpression()), !dbg !3828
  br label %24, !dbg !3851

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3828
  ret i32 %25, !dbg !3852
}

; Function Attrs: nofree nounwind
declare !dbg !3853 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3856 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !3859 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3863, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i32 %1, metadata !3864, metadata !DIExpression()), !dbg !3887
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3888
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #29, !dbg !3888
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !3865, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i32 -1, metadata !3875, metadata !DIExpression()), !dbg !3887
  call void @llvm.va_start(i8* nonnull %4), !dbg !3890
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
  ], !dbg !3891

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3892
  %7 = load i32, i32* %6, align 16, !dbg !3892
  %8 = icmp ult i32 %7, 41, !dbg !3892
  br i1 %8, label %9, label %15, !dbg !3892

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3892
  %11 = load i8*, i8** %10, align 16, !dbg !3892
  %12 = zext i32 %7 to i64, !dbg !3892
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !3892
  %14 = add nuw nsw i32 %7, 8, !dbg !3892
  store i32 %14, i32* %6, align 16, !dbg !3892
  br label %19, !dbg !3892

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3892
  %17 = load i8*, i8** %16, align 8, !dbg !3892
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !3892
  store i8* %18, i8** %16, align 8, !dbg !3892
  br label %19, !dbg !3892

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !3892
  %22 = load i32, i32* %21, align 4, !dbg !3892
  call void @llvm.dbg.value(metadata i32 %22, metadata !3876, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 %0, metadata !3894, metadata !DIExpression()) #29, !dbg !3899
  call void @llvm.dbg.value(metadata i32 %22, metadata !3897, metadata !DIExpression()) #29, !dbg !3899
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #29, !dbg !3901
  call void @llvm.dbg.value(metadata i32 %23, metadata !3898, metadata !DIExpression()) #29, !dbg !3899
  call void @llvm.dbg.value(metadata i32 %23, metadata !3875, metadata !DIExpression()), !dbg !3887
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3902
  %26 = load i32, i32* %25, align 16, !dbg !3902
  %27 = icmp ult i32 %26, 41, !dbg !3902
  br i1 %27, label %28, label %34, !dbg !3902

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3902
  %30 = load i8*, i8** %29, align 16, !dbg !3902
  %31 = zext i32 %26 to i64, !dbg !3902
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !3902
  %33 = add nuw nsw i32 %26, 8, !dbg !3902
  store i32 %33, i32* %25, align 16, !dbg !3902
  br label %38, !dbg !3902

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3902
  %36 = load i8*, i8** %35, align 8, !dbg !3902
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !3902
  store i8* %37, i8** %35, align 8, !dbg !3902
  br label %38, !dbg !3902

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !3902
  %41 = load i32, i32* %40, align 4, !dbg !3902
  call void @llvm.dbg.value(metadata i32 %41, metadata !3879, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i32 %0, metadata !198, metadata !DIExpression()) #29, !dbg !3904
  call void @llvm.dbg.value(metadata i32 %41, metadata !199, metadata !DIExpression()) #29, !dbg !3904
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3906, !tbaa !886
  %43 = icmp sgt i32 %42, -1, !dbg !3908
  br i1 %43, label %44, label %56, !dbg !3909

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #29, !dbg !3910
  call void @llvm.dbg.value(metadata i32 %45, metadata !200, metadata !DIExpression()) #29, !dbg !3904
  %46 = icmp sgt i32 %45, -1, !dbg !3912
  br i1 %46, label %51, label %47, !dbg !3914

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #33, !dbg !3915
  %49 = load i32, i32* %48, align 4, !dbg !3915, !tbaa !886
  %50 = icmp eq i32 %49, 22, !dbg !3916
  br i1 %50, label %52, label %51, !dbg !3917

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3918, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %62, metadata !200, metadata !DIExpression()) #29, !dbg !3904
  br label %116, !dbg !3920

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !3894, metadata !DIExpression()) #29, !dbg !3921
  call void @llvm.dbg.value(metadata i32 %41, metadata !3897, metadata !DIExpression()) #29, !dbg !3921
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #29, !dbg !3924
  call void @llvm.dbg.value(metadata i32 %53, metadata !3898, metadata !DIExpression()) #29, !dbg !3921
  call void @llvm.dbg.value(metadata i32 %53, metadata !200, metadata !DIExpression()) #29, !dbg !3904
  %54 = icmp sgt i32 %53, -1, !dbg !3925
  br i1 %54, label %55, label %116, !dbg !3927

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3928, !tbaa !886
  br label %60, !dbg !3929

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !3894, metadata !DIExpression()) #29, !dbg !3930
  call void @llvm.dbg.value(metadata i32 %41, metadata !3897, metadata !DIExpression()) #29, !dbg !3930
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #29, !dbg !3932
  call void @llvm.dbg.value(metadata i32 %57, metadata !3898, metadata !DIExpression()) #29, !dbg !3930
  call void @llvm.dbg.value(metadata i32 %57, metadata !200, metadata !DIExpression()) #29, !dbg !3904
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !3933
  call void @llvm.dbg.value(metadata i32 %62, metadata !200, metadata !DIExpression()) #29, !dbg !3904
  %63 = icmp sgt i32 %62, -1, !dbg !3934
  %64 = and i1 %61, %63, !dbg !3920
  br i1 %64, label %65, label %116, !dbg !3920

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #29, !dbg !3935
  call void @llvm.dbg.value(metadata i32 %66, metadata !201, metadata !DIExpression()) #29, !dbg !3936
  %67 = icmp slt i32 %66, 0, !dbg !3937
  br i1 %67, label %72, label %68, !dbg !3938

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !3939
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #29, !dbg !3940
  %71 = icmp eq i32 %70, -1, !dbg !3941
  br i1 %71, label %72, label %116, !dbg !3942

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #33, !dbg !3943
  %74 = load i32, i32* %73, align 4, !dbg !3943, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %74, metadata !204, metadata !DIExpression()) #29, !dbg !3944
  %75 = call i32 @close(i32 %62) #29, !dbg !3945
  store i32 %74, i32* %73, align 4, !dbg !3946, !tbaa !886
  call void @llvm.dbg.value(metadata i32 -1, metadata !200, metadata !DIExpression()) #29, !dbg !3904
  br label %116, !dbg !3947

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #29, !dbg !3948
  call void @llvm.dbg.value(metadata i32 %77, metadata !3875, metadata !DIExpression()), !dbg !3887
  br label %116, !dbg !3949

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3950
  %80 = load i32, i32* %79, align 16, !dbg !3950
  %81 = icmp ult i32 %80, 41, !dbg !3950
  br i1 %81, label %82, label %88, !dbg !3950

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3950
  %84 = load i8*, i8** %83, align 16, !dbg !3950
  %85 = zext i32 %80 to i64, !dbg !3950
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !3950
  %87 = add nuw nsw i32 %80, 8, !dbg !3950
  store i32 %87, i32* %79, align 16, !dbg !3950
  br label %92, !dbg !3950

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3950
  %90 = load i8*, i8** %89, align 8, !dbg !3950
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !3950
  store i8* %91, i8** %89, align 8, !dbg !3950
  br label %92, !dbg !3950

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !3950
  %95 = load i32, i32* %94, align 4, !dbg !3950
  call void @llvm.dbg.value(metadata i32 %95, metadata !3881, metadata !DIExpression()), !dbg !3951
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #29, !dbg !3952
  call void @llvm.dbg.value(metadata i32 %96, metadata !3875, metadata !DIExpression()), !dbg !3887
  br label %116, !dbg !3953

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3954
  %99 = load i32, i32* %98, align 16, !dbg !3954
  %100 = icmp ult i32 %99, 41, !dbg !3954
  br i1 %100, label %101, label %107, !dbg !3954

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3954
  %103 = load i8*, i8** %102, align 16, !dbg !3954
  %104 = zext i32 %99 to i64, !dbg !3954
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !3954
  %106 = add nuw nsw i32 %99, 8, !dbg !3954
  store i32 %106, i32* %98, align 16, !dbg !3954
  br label %111, !dbg !3954

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3954
  %109 = load i8*, i8** %108, align 8, !dbg !3954
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !3954
  store i8* %110, i8** %108, align 8, !dbg !3954
  br label %111, !dbg !3954

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !3954
  %114 = load i8*, i8** %113, align 8, !dbg !3954
  call void @llvm.dbg.value(metadata i8* %114, metadata !3885, metadata !DIExpression()), !dbg !3955
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #29, !dbg !3956
  call void @llvm.dbg.value(metadata i32 %115, metadata !3875, metadata !DIExpression()), !dbg !3887
  br label %116, !dbg !3957

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !3958
  call void @llvm.dbg.value(metadata i32 %117, metadata !3875, metadata !DIExpression()), !dbg !3887
  call void @llvm.va_end(i8* nonnull %4), !dbg !3959
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #29, !dbg !3960
  ret i32 %117, !dbg !3961
}

declare !dbg !3962 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3963 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4001, metadata !DIExpression()), !dbg !4002
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4003
  br i1 %2, label %6, label %3, !dbg !4005

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #29, !dbg !4006
  %5 = icmp eq i32 %4, 0, !dbg !4006
  br i1 %5, label %6, label %8, !dbg !4007

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4008
  br label %17, !dbg !4009

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4010, metadata !DIExpression()) #29, !dbg !4015
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4017
  %10 = load i32, i32* %9, align 8, !dbg !4017, !tbaa !1002
  %11 = and i32 %10, 256, !dbg !4019
  %12 = icmp eq i32 %11, 0, !dbg !4019
  br i1 %12, label %15, label %13, !dbg !4020

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #29, !dbg !4021
  br label %15, !dbg !4021

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4022
  br label %17, !dbg !4023

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4002
  ret i32 %18, !dbg !4024
}

; Function Attrs: nofree nounwind
declare !dbg !4025 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4028 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4066, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i64 %1, metadata !4067, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 %2, metadata !4068, metadata !DIExpression()), !dbg !4072
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4073
  %5 = load i8*, i8** %4, align 8, !dbg !4073, !tbaa !1599
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4074
  %7 = load i8*, i8** %6, align 8, !dbg !4074, !tbaa !1598
  %8 = icmp eq i8* %5, %7, !dbg !4075
  br i1 %8, label %9, label %28, !dbg !4076

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4077
  %11 = load i8*, i8** %10, align 8, !dbg !4077, !tbaa !4078
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4079
  %13 = load i8*, i8** %12, align 8, !dbg !4079, !tbaa !4080
  %14 = icmp eq i8* %11, %13, !dbg !4081
  br i1 %14, label %15, label %28, !dbg !4082

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4083
  %17 = load i8*, i8** %16, align 8, !dbg !4083, !tbaa !4084
  %18 = icmp eq i8* %17, null, !dbg !4085
  br i1 %18, label %19, label %28, !dbg !4086

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !4087
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #29, !dbg !4088
  call void @llvm.dbg.value(metadata i64 %21, metadata !4069, metadata !DIExpression()), !dbg !4089
  %22 = icmp eq i64 %21, -1, !dbg !4090
  br i1 %22, label %30, label %23, !dbg !4092

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4093
  %25 = load i32, i32* %24, align 8, !dbg !4094, !tbaa !1002
  %26 = and i32 %25, -17, !dbg !4094
  store i32 %26, i32* %24, align 8, !dbg !4094, !tbaa !1002
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4095
  store i64 %21, i64* %27, align 8, !dbg !4096, !tbaa !4097
  br label %30, !dbg !4098

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4099
  br label %30, !dbg !4100

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4072
  ret i32 %31, !dbg !4101
}

; Function Attrs: nofree nounwind
declare !dbg !4102 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4105 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4121, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i8* %1, metadata !4122, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 %2, metadata !4123, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4124, metadata !DIExpression()), !dbg !4130
  %6 = bitcast i32* %5 to i8*, !dbg !4131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #29, !dbg !4131
  %7 = icmp eq i32* %0, null, !dbg !4132
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4134
  call void @llvm.dbg.value(metadata i32* %8, metadata !4121, metadata !DIExpression()), !dbg !4130
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #29, !dbg !4135
  call void @llvm.dbg.value(metadata i64 %9, metadata !4125, metadata !DIExpression()), !dbg !4130
  %10 = icmp ugt i64 %9, -3, !dbg !4136
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4137
  br i1 %12, label %13, label %18, !dbg !4137

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #29, !dbg !4138
  br i1 %14, label %18, label %15, !dbg !4139

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4140, !tbaa !841
  call void @llvm.dbg.value(metadata i8 %16, metadata !4127, metadata !DIExpression()), !dbg !4141
  %17 = zext i8 %16 to i32, !dbg !4142
  store i32 %17, i32* %8, align 4, !dbg !4143, !tbaa !886
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #29, !dbg !4144
  ret i64 %19, !dbg !4144
}

; Function Attrs: nounwind
declare !dbg !4145 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4149 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4187, metadata !DIExpression()), !dbg !4192
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #29, !dbg !4193
  call void @llvm.dbg.value(metadata i1 undef, metadata !4188, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4192
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4194, metadata !DIExpression()), !dbg !4197
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4199
  %4 = load i32, i32* %3, align 8, !dbg !4199, !tbaa !1002
  %5 = and i32 %4, 32, !dbg !4200
  %6 = icmp eq i32 %5, 0, !dbg !4200
  call void @llvm.dbg.value(metadata i1 %6, metadata !4190, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4192
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #29, !dbg !4201
  %8 = icmp eq i32 %7, 0, !dbg !4202
  call void @llvm.dbg.value(metadata i1 %8, metadata !4191, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4192
  br i1 %6, label %9, label %19, !dbg !4203

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %10, metadata !4188, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4192
  %11 = or i1 %10, %8, !dbg !4206
  %12 = xor i1 %8, true, !dbg !4206
  %13 = sext i1 %12 to i32, !dbg !4206
  br i1 %11, label %22, label %14, !dbg !4206

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #33, !dbg !4207
  %16 = load i32, i32* %15, align 4, !dbg !4207, !tbaa !886
  %17 = icmp ne i32 %16, 9, !dbg !4208
  %18 = sext i1 %17 to i32, !dbg !4209
  br label %22, !dbg !4209

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4210

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #33, !dbg !4212
  store i32 0, i32* %21, align 4, !dbg !4214, !tbaa !886
  br label %22, !dbg !4212

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4192
  ret i32 %23, !dbg !4215
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4216 {
  %1 = tail call i8* @nl_langinfo(i32 14) #29, !dbg !4221
  call void @llvm.dbg.value(metadata i8* %1, metadata !4220, metadata !DIExpression()), !dbg !4222
  %2 = icmp eq i8* %1, null, !dbg !4223
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), i8* %1, !dbg !4225
  call void @llvm.dbg.value(metadata i8* %3, metadata !4220, metadata !DIExpression()), !dbg !4222
  %4 = load i8, i8* %3, align 1, !dbg !4226, !tbaa !841
  %5 = icmp eq i8 %4, 0, !dbg !4230
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.173, i64 0, i64 0), i8* %3, !dbg !4231
  call void @llvm.dbg.value(metadata i8* %6, metadata !4220, metadata !DIExpression()), !dbg !4222
  ret i8* %6, !dbg !4232
}

; Function Attrs: nounwind
declare !dbg !4233 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i32 @memcoll(i8* nocapture %0, i64 %1, i8* nocapture %2, i64 %3) local_unnamed_addr #14 !dbg !4236 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4238, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %1, metadata !4239, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i8* %2, metadata !4240, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %3, metadata !4241, metadata !DIExpression()), !dbg !4247
  %5 = icmp eq i64 %1, %3, !dbg !4248
  br i1 %5, label %6, label %11, !dbg !4249

6:                                                ; preds = %4
  %7 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %1), !dbg !4250
  %8 = icmp eq i32 %7, 0, !dbg !4251
  br i1 %8, label %9, label %11, !dbg !4252

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #33, !dbg !4253
  store i32 0, i32* %10, align 4, !dbg !4255, !tbaa !886
  call void @llvm.dbg.value(metadata i32 0, metadata !4242, metadata !DIExpression()), !dbg !4247
  br label %43, !dbg !4256

11:                                               ; preds = %6, %4
  %12 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !4257
  %13 = load i8, i8* %12, align 1, !dbg !4257, !tbaa !841
  call void @llvm.dbg.value(metadata i8 %13, metadata !4243, metadata !DIExpression()), !dbg !4258
  %14 = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !4259
  %15 = load i8, i8* %14, align 1, !dbg !4259, !tbaa !841
  call void @llvm.dbg.value(metadata i8 %15, metadata !4246, metadata !DIExpression()), !dbg !4258
  store i8 0, i8* %12, align 1, !dbg !4260, !tbaa !841
  store i8 0, i8* %14, align 1, !dbg !4261, !tbaa !841
  %16 = add i64 %1, 1, !dbg !4262
  %17 = add i64 %3, 1, !dbg !4263
  call void @llvm.dbg.value(metadata i8* %0, metadata !4264, metadata !DIExpression()) #29, !dbg !4274
  call void @llvm.dbg.value(metadata i64 %16, metadata !4267, metadata !DIExpression()) #29, !dbg !4274
  call void @llvm.dbg.value(metadata i8* %2, metadata !4268, metadata !DIExpression()) #29, !dbg !4274
  call void @llvm.dbg.value(metadata i64 %17, metadata !4269, metadata !DIExpression()) #29, !dbg !4274
  %18 = tail call i32* @__errno_location() #33, !dbg !4274
  br label %19, !dbg !4276

19:                                               ; preds = %37, %11
  %20 = phi i8* [ %2, %11 ], [ %38, %37 ]
  %21 = phi i64 [ %17, %11 ], [ %32, %37 ]
  %22 = phi i64 [ %16, %11 ], [ %31, %37 ]
  %23 = phi i8* [ %0, %11 ], [ %39, %37 ]
  call void @llvm.dbg.value(metadata i8* %23, metadata !4264, metadata !DIExpression()) #29, !dbg !4274
  call void @llvm.dbg.value(metadata i64 %22, metadata !4267, metadata !DIExpression()) #29, !dbg !4274
  call void @llvm.dbg.value(metadata i64 %21, metadata !4269, metadata !DIExpression()) #29, !dbg !4274
  call void @llvm.dbg.value(metadata i8* %20, metadata !4268, metadata !DIExpression()) #29, !dbg !4274
  store i32 0, i32* %18, align 4, !dbg !4277, !tbaa !886
  %24 = tail call i32 @strcoll(i8* %23, i8* %20) #30, !dbg !4278
  call void @llvm.dbg.value(metadata i32 %24, metadata !4270, metadata !DIExpression()) #29, !dbg !4274
  %25 = icmp eq i32 %24, 0, !dbg !4279
  br i1 %25, label %26, label %41, !dbg !4276

26:                                               ; preds = %19
  %27 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %23) #30, !dbg !4280
  %28 = add i64 %27, 1, !dbg !4281
  call void @llvm.dbg.value(metadata i64 %28, metadata !4271, metadata !DIExpression()) #29, !dbg !4282
  %29 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %20) #30, !dbg !4283
  %30 = add i64 %29, 1, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %30, metadata !4273, metadata !DIExpression()) #29, !dbg !4282
  call void @llvm.dbg.value(metadata i8* undef, metadata !4264, metadata !DIExpression()) #29, !dbg !4274
  call void @llvm.dbg.value(metadata i8* undef, metadata !4268, metadata !DIExpression()) #29, !dbg !4274
  %31 = sub i64 %22, %28, !dbg !4285
  call void @llvm.dbg.value(metadata i64 %31, metadata !4267, metadata !DIExpression()) #29, !dbg !4274
  %32 = sub i64 %21, %30, !dbg !4286
  call void @llvm.dbg.value(metadata i64 %32, metadata !4269, metadata !DIExpression()) #29, !dbg !4274
  %33 = icmp eq i64 %31, 0, !dbg !4287
  br i1 %33, label %34, label %37, !dbg !4289

34:                                               ; preds = %26
  %35 = icmp ne i64 %32, 0, !dbg !4290
  %36 = sext i1 %35 to i32, !dbg !4290
  br label %41

37:                                               ; preds = %26
  %38 = getelementptr inbounds i8, i8* %20, i64 %30, !dbg !4291
  call void @llvm.dbg.value(metadata i8* %38, metadata !4268, metadata !DIExpression()) #29, !dbg !4274
  %39 = getelementptr inbounds i8, i8* %23, i64 %28, !dbg !4292
  call void @llvm.dbg.value(metadata i8* %39, metadata !4264, metadata !DIExpression()) #29, !dbg !4274
  %40 = icmp eq i64 %32, 0, !dbg !4293
  br i1 %40, label %41, label %19, !llvm.loop !4295

41:                                               ; preds = %19, %37, %34
  %42 = phi i32 [ %36, %34 ], [ 1, %37 ], [ %24, %19 ], !dbg !4274
  call void @llvm.dbg.value(metadata i32 %42, metadata !4242, metadata !DIExpression()), !dbg !4247
  store i8 %13, i8* %12, align 1, !dbg !4297, !tbaa !841
  store i8 %15, i8* %14, align 1, !dbg !4298, !tbaa !841
  br label %43

43:                                               ; preds = %41, %9
  %44 = phi i32 [ 0, %9 ], [ %42, %41 ], !dbg !4299
  call void @llvm.dbg.value(metadata i32 %44, metadata !4242, metadata !DIExpression()), !dbg !4247
  ret i32 %44, !dbg !4300
}

; Function Attrs: nofree nounwind readonly willreturn
declare !dbg !4301 i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #28

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i32 @memcoll0(i8* nocapture readonly %0, i64 %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #14 !dbg !4305 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4307, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %1, metadata !4308, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i8* %2, metadata !4309, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %3, metadata !4310, metadata !DIExpression()), !dbg !4311
  %5 = icmp eq i64 %1, %3, !dbg !4312
  br i1 %5, label %6, label %11, !dbg !4314

6:                                                ; preds = %4
  %7 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %1), !dbg !4315
  %8 = icmp eq i32 %7, 0, !dbg !4316
  br i1 %8, label %9, label %11, !dbg !4317

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #33, !dbg !4318
  store i32 0, i32* %10, align 4, !dbg !4320, !tbaa !886
  br label %35, !dbg !4321

11:                                               ; preds = %6, %4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4264, metadata !DIExpression()) #29, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %1, metadata !4267, metadata !DIExpression()) #29, !dbg !4322
  call void @llvm.dbg.value(metadata i8* %2, metadata !4268, metadata !DIExpression()) #29, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %3, metadata !4269, metadata !DIExpression()) #29, !dbg !4322
  %12 = tail call i32* @__errno_location() #33, !dbg !4322
  br label %13, !dbg !4324

13:                                               ; preds = %31, %11
  %14 = phi i8* [ %2, %11 ], [ %32, %31 ]
  %15 = phi i64 [ %3, %11 ], [ %26, %31 ]
  %16 = phi i64 [ %1, %11 ], [ %25, %31 ]
  %17 = phi i8* [ %0, %11 ], [ %33, %31 ]
  call void @llvm.dbg.value(metadata i8* %17, metadata !4264, metadata !DIExpression()) #29, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %16, metadata !4267, metadata !DIExpression()) #29, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %15, metadata !4269, metadata !DIExpression()) #29, !dbg !4322
  call void @llvm.dbg.value(metadata i8* %14, metadata !4268, metadata !DIExpression()) #29, !dbg !4322
  store i32 0, i32* %12, align 4, !dbg !4325, !tbaa !886
  %18 = tail call i32 @strcoll(i8* %17, i8* %14) #30, !dbg !4326
  call void @llvm.dbg.value(metadata i32 %18, metadata !4270, metadata !DIExpression()) #29, !dbg !4322
  %19 = icmp eq i32 %18, 0, !dbg !4327
  br i1 %19, label %20, label %35, !dbg !4324

20:                                               ; preds = %13
  %21 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %17) #30, !dbg !4328
  %22 = add i64 %21, 1, !dbg !4329
  call void @llvm.dbg.value(metadata i64 %22, metadata !4271, metadata !DIExpression()) #29, !dbg !4330
  %23 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %14) #30, !dbg !4331
  %24 = add i64 %23, 1, !dbg !4332
  call void @llvm.dbg.value(metadata i64 %24, metadata !4273, metadata !DIExpression()) #29, !dbg !4330
  call void @llvm.dbg.value(metadata i8* undef, metadata !4264, metadata !DIExpression()) #29, !dbg !4322
  call void @llvm.dbg.value(metadata i8* undef, metadata !4268, metadata !DIExpression()) #29, !dbg !4322
  %25 = sub i64 %16, %22, !dbg !4333
  call void @llvm.dbg.value(metadata i64 %25, metadata !4267, metadata !DIExpression()) #29, !dbg !4322
  %26 = sub i64 %15, %24, !dbg !4334
  call void @llvm.dbg.value(metadata i64 %26, metadata !4269, metadata !DIExpression()) #29, !dbg !4322
  %27 = icmp eq i64 %25, 0, !dbg !4335
  br i1 %27, label %28, label %31, !dbg !4336

28:                                               ; preds = %20
  %29 = icmp ne i64 %26, 0, !dbg !4337
  %30 = sext i1 %29 to i32, !dbg !4337
  br label %35

31:                                               ; preds = %20
  %32 = getelementptr inbounds i8, i8* %14, i64 %24, !dbg !4338
  call void @llvm.dbg.value(metadata i8* %32, metadata !4268, metadata !DIExpression()) #29, !dbg !4322
  %33 = getelementptr inbounds i8, i8* %17, i64 %22, !dbg !4339
  call void @llvm.dbg.value(metadata i8* %33, metadata !4264, metadata !DIExpression()) #29, !dbg !4322
  %34 = icmp eq i64 %26, 0, !dbg !4340
  br i1 %34, label %35, label %13, !llvm.loop !4341

35:                                               ; preds = %31, %13, %28, %9
  %36 = phi i32 [ 0, %9 ], [ %30, %28 ], [ 1, %31 ], [ %18, %13 ], !dbg !4343
  ret i32 %36, !dbg !4344
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
attributes #10 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #16 = { nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree nounwind }
attributes #20 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { nofree nosync nounwind willreturn }
attributes #25 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #28 = { nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #29 = { nounwind }
attributes #30 = { nounwind readonly willreturn }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { nounwind readnone willreturn }
attributes #34 = { cold }

!llvm.dbg.cu = !{!2, !92, !98, !105, !207, !210, !212, !214, !221, !225, !111, !117, !227, !230, !232, !183, !238, !255, !257, !260, !262, !195, !264, !266, !268, !271, !273, !662}
!llvm.ident = !{!664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664, !664}
!llvm.module.flags = !{!665, !666, !667, !668, !669}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !2, file: !3, line: 46, type: !47, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !44, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/comm.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !11, !25}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 70, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "CHECK_ORDER_DEFAULT", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "CHECK_ORDER_ENABLED", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "CHECK_ORDER_DISABLED", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !12, line: 32, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!26 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!27 = !{!28, !29, !30, !31, !32, !33}
!28 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!31 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!32 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!34 = !{!35, !37, !38, !41, !43}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !{!0, !45, !48, !50, !52, !54, !59, !61, !63, !78, !80, !82}
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "only_file_1", scope: !2, file: !3, line: 49, type: !47, isLocal: true, isDefinition: true)
!47 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "only_file_2", scope: !2, file: !3, line: 52, type: !47, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "both", scope: !2, file: !3, line: 55, type: !47, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "seen_unpairable", scope: !2, file: !3, line: 58, type: !47, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "issued_disorder_warning", scope: !2, file: !3, line: 61, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 16, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 2)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "total_option", scope: !2, file: !3, line: 67, type: !47, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "check_input_order", scope: !2, file: !3, line: 75, type: !5, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 92, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 2048, elements: !76)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !68, line: 50, size: 256, elements: !69)
!68 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!69 = !{!70, !71, !73, !75}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !67, file: !68, line: 52, baseType: !41, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !67, file: !68, line: 55, baseType: !72, size: 32, offset: 64)
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !67, file: !68, line: 56, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !67, file: !68, line: 57, baseType: !72, size: 32, offset: 192)
!76 = !{!77}
!77 = !DISubrange(count: 8)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 64, type: !43, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "col_sep_len", scope: !2, file: !3, line: 80, type: !38, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "col_sep", scope: !2, file: !3, line: 79, type: !41, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!85 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!86 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!87 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!88 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!89 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "Version", scope: !92, file: !93, line: 2, type: !41, isLocal: false, isDefinition: true)
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !95, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!94 = !{}
!95 = !{!90}
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "file_name", scope: !98, file: !99, line: 46, type: !41, isLocal: true, isDefinition: true)
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !100, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!100 = !{!96, !101}
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !98, file: !99, line: 56, type: !47, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "exit_failure", scope: !105, file: !106, line: 24, type: !108, isLocal: false, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !107, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!107 = !{!103}
!108 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !72)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "program_name", scope: !111, file: !112, line: 33, type: !41, isLocal: false, isDefinition: true)
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !113, globals: !114, splitDebugInlining: false, nameTableKind: None)
!112 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!113 = !{!37, !35}
!114 = !{!109}
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !117, file: !118, line: 85, type: !177, isLocal: false, isDefinition: true)
!117 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !119, retainedTypes: !140, globals: !142, splitDebugInlining: false, nameTableKind: None)
!118 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!119 = !{!11, !120, !125}
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !12, line: 242, baseType: !6, size: 32, elements: !121)
!121 = !{!122, !123, !124}
!122 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!124 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 46, baseType: !6, size: 32, elements: !127)
!126 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!128 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!129 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!130 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!131 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!132 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!133 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!134 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!135 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!136 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!139 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!140 = !{!72, !141, !38, !35}
!141 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!142 = !{!115, !143, !149, !159, !161, !166, !173, !175}
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !117, file: !118, line: 101, type: !145, isLocal: false, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 320, elements: !147)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!147 = !{!148}
!148 = !DISubrange(count: 10)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !117, file: !118, line: 1052, type: !151, isLocal: false, isDefinition: true)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !118, line: 65, size: 448, elements: !152)
!152 = !{!153, !154, !155, !157, !158}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !151, file: !118, line: 68, baseType: !11, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !151, file: !118, line: 71, baseType: !72, size: 32, offset: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !151, file: !118, line: 75, baseType: !156, size: 256, offset: 64)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !76)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !151, file: !118, line: 78, baseType: !41, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !151, file: !118, line: 81, baseType: !41, size: 64, offset: 384)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !117, file: !118, line: 116, type: !151, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "slot0", scope: !117, file: !118, line: 842, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 256)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "slotvec", scope: !117, file: !118, line: 845, type: !168, isLocal: true, isDefinition: true)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !118, line: 834, size: 128, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !169, file: !118, line: 836, baseType: !38, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !169, file: !118, line: 837, baseType: !35, size: 64, offset: 64)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "nslots", scope: !117, file: !118, line: 843, type: !72, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "slotvec0", scope: !117, file: !118, line: 844, type: !169, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 704, elements: !179)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!179 = !{!180}
!180 = !DISubrange(count: 11)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !183, file: !184, line: 26, type: !186, isLocal: false, isDefinition: true)
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !185, splitDebugInlining: false, nameTableKind: None)
!184 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!185 = !{!181}
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 376, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 47)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !191, file: !192, line: 507, type: !72, isLocal: true, isDefinition: true)
!191 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !192, file: !192, line: 488, type: !193, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !197)
!192 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!193 = !DISubroutineType(types: !194)
!194 = !{!72, !72, !72}
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !196, splitDebugInlining: false, nameTableKind: None)
!196 = !{!189}
!197 = !{!198, !199, !200, !201, !204}
!198 = !DILocalVariable(name: "fd", arg: 1, scope: !191, file: !192, line: 488, type: !72)
!199 = !DILocalVariable(name: "target", arg: 2, scope: !191, file: !192, line: 488, type: !72)
!200 = !DILocalVariable(name: "result", scope: !191, file: !192, line: 490, type: !72)
!201 = !DILocalVariable(name: "flags", scope: !202, file: !192, line: 531, type: !72)
!202 = distinct !DILexicalBlock(scope: !203, file: !192, line: 530, column: 5)
!203 = distinct !DILexicalBlock(scope: !191, file: !192, line: 529, column: 7)
!204 = !DILocalVariable(name: "saved_errno", scope: !205, file: !192, line: 534, type: !72)
!205 = distinct !DILexicalBlock(scope: !206, file: !192, line: 533, column: 9)
!206 = distinct !DILexicalBlock(scope: !202, file: !192, line: 532, column: 11)
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !209, splitDebugInlining: false, nameTableKind: None)
!208 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!209 = !{!25}
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !211, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, splitDebugInlining: false, nameTableKind: None)
!211 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !216, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !218, line: 102, baseType: !219)
!218 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !220, line: 73, baseType: !40)
!220 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !223, splitDebugInlining: false, nameTableKind: None)
!222 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "lib/memcmp2.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !229, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!229 = !{!37}
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !234, retainedTypes: !229, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!234 = !{!235}
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !233, line: 40, baseType: !6, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !240, retainedTypes: !254, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!240 = !{!241}
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !243, file: !242, line: 186, baseType: !6, size: 32, elements: !252)
!242 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!243 = distinct !DISubprogram(name: "x2nrealloc", scope: !242, file: !242, line: 174, type: !244, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !247)
!244 = !DISubroutineType(types: !245)
!245 = !{!37, !37, !246, !38}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!247 = !{!248, !249, !250, !251}
!248 = !DILocalVariable(name: "p", arg: 1, scope: !243, file: !242, line: 174, type: !37)
!249 = !DILocalVariable(name: "pn", arg: 2, scope: !243, file: !242, line: 174, type: !246)
!250 = !DILocalVariable(name: "s", arg: 3, scope: !243, file: !242, line: 174, type: !38)
!251 = !DILocalVariable(name: "n", scope: !243, file: !242, line: 176, type: !38)
!252 = !{!253}
!253 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!254 = !{!38, !35, !37}
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !259, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/xmemcoll.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!259 = !{!11}
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !229, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !229, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !229, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !270, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!270 = !{!38}
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, retainedTypes: !229, splitDebugInlining: false, nameTableKind: None)
!274 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!275 = !{!276}
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 41, baseType: !6, size: 32, elements: !278)
!277 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661}
!279 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!280 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!281 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!282 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!283 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!284 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!285 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!286 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!287 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!288 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!289 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!290 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!291 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!292 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!293 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!294 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!295 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!296 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!297 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!298 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!299 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!300 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!301 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!302 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!303 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!304 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!305 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!306 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!307 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!308 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!309 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!310 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!311 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!312 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!313 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!314 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!315 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!316 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!317 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!318 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!319 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!320 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!321 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!322 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!323 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!324 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!325 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!326 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!327 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!328 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!387 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!390 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!391 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!392 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!393 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!394 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!395 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!396 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!397 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!398 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!399 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!400 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!401 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!474 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!547 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!548 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!549 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!550 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!551 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!552 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!553 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!554 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!555 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!556 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!557 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!558 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!559 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!560 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!561 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!563 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!564 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!565 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!566 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!567 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!568 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!594 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!595 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!596 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!597 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!598 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!603 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!604 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!605 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!606 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!662 = distinct !DICompileUnit(language: DW_LANG_C99, file: !663, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, splitDebugInlining: false, nameTableKind: None)
!663 = !DIFile(filename: "lib/memcoll.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!664 = !{!"clang version 12.0.1"}
!665 = !{i32 7, !"Dwarf Version", i32 4}
!666 = !{i32 2, !"Debug Info Version", i32 3}
!667 = !{i32 1, !"wchar_size", i32 4}
!668 = !{i32 7, !"PIC Level", i32 2}
!669 = !{i32 7, !"PIE Level", i32 2}
!670 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 106, type: !671, scopeLine: 107, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !673)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !72}
!673 = !{!674}
!674 = !DILocalVariable(name: "status", arg: 1, scope: !670, file: !3, line: 106, type: !72)
!675 = !DILocation(line: 0, scope: !670)
!676 = !DILocation(line: 108, column: 14, scope: !677)
!677 = distinct !DILexicalBlock(scope: !670, file: !3, line: 108, column: 7)
!678 = !DILocation(line: 108, column: 7, scope: !670)
!679 = !DILocation(line: 109, column: 5, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !3, line: 109, column: 5)
!681 = !{!682, !682, i64 0}
!682 = !{!"any pointer", !683, i64 0}
!683 = !{!"omnipotent char", !684, i64 0}
!684 = !{!"Simple C/C++ TBAA"}
!685 = !DILocation(line: 112, column: 7, scope: !686)
!686 = distinct !DILexicalBlock(scope: !677, file: !3, line: 111, column: 5)
!687 = !DILocation(line: 116, column: 7, scope: !686)
!688 = !DILocation(line: 119, column: 7, scope: !686)
!689 = !DILocation(line: 123, column: 7, scope: !686)
!690 = !DILocation(line: 129, column: 7, scope: !686)
!691 = !DILocation(line: 135, column: 7, scope: !686)
!692 = !DILocation(line: 141, column: 7, scope: !686)
!693 = !DILocation(line: 144, column: 7, scope: !686)
!694 = !DILocation(line: 147, column: 7, scope: !686)
!695 = !DILocation(line: 150, column: 7, scope: !686)
!696 = !DILocation(line: 151, column: 7, scope: !686)
!697 = !DILocation(line: 152, column: 7, scope: !686)
!698 = !DILocation(line: 156, column: 7, scope: !686)
!699 = !DILocalVariable(name: "program", arg: 1, scope: !700, file: !701, line: 634, type: !41)
!700 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !701, file: !701, line: 634, type: !702, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !704)
!701 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!702 = !DISubroutineType(types: !703)
!703 = !{null, !41}
!704 = !{!699, !705, !714, !715, !717}
!705 = !DILocalVariable(name: "infomap", scope: !700, file: !701, line: 636, type: !706)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 896, elements: !712)
!707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !700, file: !701, line: 636, size: 128, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !708, file: !701, line: 636, baseType: !41, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !708, file: !701, line: 636, baseType: !41, size: 64, offset: 64)
!712 = !{!713}
!713 = !DISubrange(count: 7)
!714 = !DILocalVariable(name: "node", scope: !700, file: !701, line: 646, type: !41)
!715 = !DILocalVariable(name: "map_prog", scope: !700, file: !701, line: 647, type: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!717 = !DILocalVariable(name: "lc_messages", scope: !700, file: !701, line: 659, type: !41)
!718 = !DILocation(line: 0, scope: !700, inlinedAt: !719)
!719 = distinct !DILocation(line: 163, column: 7, scope: !686)
!720 = !DILocation(line: 636, column: 3, scope: !700, inlinedAt: !719)
!721 = !DILocation(line: 636, column: 67, scope: !700, inlinedAt: !719)
!722 = !DILocation(line: 647, column: 36, scope: !700, inlinedAt: !719)
!723 = !DILocation(line: 649, column: 3, scope: !700, inlinedAt: !719)
!724 = !DILocation(line: 649, column: 33, scope: !700, inlinedAt: !719)
!725 = !DILocation(line: 650, column: 13, scope: !700, inlinedAt: !719)
!726 = !DILocation(line: 649, column: 20, scope: !700, inlinedAt: !719)
!727 = !{!728, !682, i64 0}
!728 = !{!"infomap", !682, i64 0, !682, i64 8}
!729 = !DILocation(line: 649, column: 10, scope: !700, inlinedAt: !719)
!730 = !DILocation(line: 649, column: 28, scope: !700, inlinedAt: !719)
!731 = distinct !{!731, !723, !725, !732}
!732 = !{!"llvm.loop.mustprogress"}
!733 = !DILocation(line: 652, column: 17, scope: !734, inlinedAt: !719)
!734 = distinct !DILexicalBlock(scope: !700, file: !701, line: 652, column: 7)
!735 = !{!728, !682, i64 8}
!736 = !DILocation(line: 652, column: 7, scope: !734, inlinedAt: !719)
!737 = !DILocation(line: 652, column: 7, scope: !700, inlinedAt: !719)
!738 = !DILocation(line: 655, column: 3, scope: !700, inlinedAt: !719)
!739 = !DILocation(line: 659, column: 29, scope: !700, inlinedAt: !719)
!740 = !DILocation(line: 660, column: 7, scope: !741, inlinedAt: !719)
!741 = distinct !DILexicalBlock(scope: !700, file: !701, line: 660, column: 7)
!742 = !DILocation(line: 660, column: 19, scope: !741, inlinedAt: !719)
!743 = !DILocation(line: 660, column: 22, scope: !741, inlinedAt: !719)
!744 = !DILocation(line: 660, column: 7, scope: !700, inlinedAt: !719)
!745 = !DILocation(line: 666, column: 7, scope: !746, inlinedAt: !719)
!746 = distinct !DILexicalBlock(scope: !741, file: !701, line: 661, column: 5)
!747 = !DILocation(line: 668, column: 5, scope: !746, inlinedAt: !719)
!748 = !DILocation(line: 669, column: 3, scope: !700, inlinedAt: !719)
!749 = !DILocation(line: 671, column: 3, scope: !700, inlinedAt: !719)
!750 = !DILocation(line: 673, column: 1, scope: !700, inlinedAt: !719)
!751 = !DILocation(line: 165, column: 3, scope: !670)
!752 = !DISubprogram(name: "dcgettext", scope: !753, file: !753, line: 51, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!753 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!754 = !DISubroutineType(types: !755)
!755 = !{!35, !41, !41, !72}
!756 = !DISubprogram(name: "fputs_unlocked", scope: !757, file: !757, line: 667, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!757 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!758 = !DISubroutineType(types: !759)
!759 = !{!72, !41, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !763)
!762 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !779, !780, !781, !782, !785, !786, !788, !792, !795, !797, !800, !803, !804, !805, !806, !807}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !761, file: !762, line: 51, baseType: !72, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !761, file: !762, line: 54, baseType: !35, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !761, file: !762, line: 55, baseType: !35, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !761, file: !762, line: 56, baseType: !35, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !761, file: !762, line: 57, baseType: !35, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !761, file: !762, line: 58, baseType: !35, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !761, file: !762, line: 59, baseType: !35, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !761, file: !762, line: 60, baseType: !35, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !761, file: !762, line: 61, baseType: !35, size: 64, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !761, file: !762, line: 64, baseType: !35, size: 64, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !761, file: !762, line: 65, baseType: !35, size: 64, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !761, file: !762, line: 66, baseType: !35, size: 64, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !761, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !762, line: 36, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !761, file: !762, line: 70, baseType: !760, size: 64, offset: 832)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !761, file: !762, line: 72, baseType: !72, size: 32, offset: 896)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !761, file: !762, line: 73, baseType: !72, size: 32, offset: 928)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !761, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !220, line: 152, baseType: !784)
!784 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !761, file: !762, line: 77, baseType: !141, size: 16, offset: 1024)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !761, file: !762, line: 78, baseType: !787, size: 8, offset: 1040)
!787 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !761, file: !762, line: 79, baseType: !789, size: 8, offset: 1048)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 1)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !761, file: !762, line: 81, baseType: !793, size: 64, offset: 1088)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !762, line: 43, baseType: null)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !761, file: !762, line: 89, baseType: !796, size: 64, offset: 1152)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !220, line: 153, baseType: !784)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !761, file: !762, line: 91, baseType: !798, size: 64, offset: 1216)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !762, line: 37, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !761, file: !762, line: 92, baseType: !801, size: 64, offset: 1280)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !762, line: 38, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !761, file: !762, line: 93, baseType: !760, size: 64, offset: 1344)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !761, file: !762, line: 94, baseType: !37, size: 64, offset: 1408)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !761, file: !762, line: 95, baseType: !38, size: 64, offset: 1472)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !761, file: !762, line: 96, baseType: !72, size: 32, offset: 1536)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !761, file: !762, line: 98, baseType: !808, size: 160, offset: 1568)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 20)
!811 = !DISubprogram(name: "setlocale", scope: !812, file: !812, line: 122, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!812 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!813 = !DISubroutineType(types: !814)
!814 = !{!35, !72, !41}
!815 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 407, type: !816, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !819)
!816 = !DISubroutineType(types: !817)
!817 = !{!72, !72, !818}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!819 = !{!820, !821, !822}
!820 = !DILocalVariable(name: "argc", arg: 1, scope: !815, file: !3, line: 407, type: !72)
!821 = !DILocalVariable(name: "argv", arg: 2, scope: !815, file: !3, line: 407, type: !818)
!822 = !DILocalVariable(name: "c", scope: !815, file: !3, line: 409, type: !72)
!823 = !DILocation(line: 0, scope: !815)
!824 = !DILocation(line: 412, column: 21, scope: !815)
!825 = !DILocation(line: 412, column: 3, scope: !815)
!826 = !DILocation(line: 413, column: 3, scope: !815)
!827 = !DILocation(line: 414, column: 3, scope: !815)
!828 = !DILocation(line: 415, column: 3, scope: !815)
!829 = !DILocation(line: 416, column: 21, scope: !815)
!830 = !DILocation(line: 416, column: 19, scope: !815)
!831 = !{!832, !832, i64 0}
!832 = !{!"_Bool", !683, i64 0}
!833 = !DILocation(line: 418, column: 3, scope: !815)
!834 = !DILocation(line: 420, column: 15, scope: !815)
!835 = !DILocation(line: 421, column: 15, scope: !815)
!836 = !DILocation(line: 422, column: 8, scope: !815)
!837 = !DILocation(line: 424, column: 19, scope: !815)
!838 = !DILocation(line: 425, column: 59, scope: !815)
!839 = !DILocation(line: 425, column: 30, scope: !815)
!840 = !DILocation(line: 426, column: 21, scope: !815)
!841 = !{!683, !683, i64 0}
!842 = !DILocation(line: 427, column: 16, scope: !815)
!843 = !DILocation(line: 429, column: 3, scope: !815)
!844 = !DILocation(line: 429, column: 15, scope: !815)
!845 = !DILocation(line: 433, column: 21, scope: !846)
!846 = distinct !DILexicalBlock(scope: !815, file: !3, line: 431, column: 7)
!847 = !DILocation(line: 434, column: 9, scope: !846)
!848 = !DILocation(line: 437, column: 21, scope: !846)
!849 = !DILocation(line: 438, column: 9, scope: !846)
!850 = !DILocation(line: 441, column: 14, scope: !846)
!851 = !DILocation(line: 442, column: 9, scope: !846)
!852 = !DILocation(line: 445, column: 15, scope: !846)
!853 = !DILocation(line: 446, column: 9, scope: !846)
!854 = !DILocation(line: 449, column: 27, scope: !846)
!855 = !DILocation(line: 450, column: 9, scope: !846)
!856 = !DILocation(line: 453, column: 27, scope: !846)
!857 = !DILocation(line: 454, column: 9, scope: !846)
!858 = !DILocation(line: 457, column: 13, scope: !859)
!859 = distinct !DILexicalBlock(scope: !846, file: !3, line: 457, column: 13)
!860 = !{!861, !861, i64 0}
!861 = !{!"long", !683, i64 0}
!862 = !DILocation(line: 457, column: 25, scope: !859)
!863 = !DILocation(line: 459, column: 19, scope: !846)
!864 = !DILocation(line: 457, column: 29, scope: !859)
!865 = !DILocation(line: 457, column: 13, scope: !846)
!866 = !DILocation(line: 458, column: 11, scope: !859)
!867 = !DILocation(line: 459, column: 17, scope: !846)
!868 = !DILocation(line: 460, column: 23, scope: !846)
!869 = !DILocation(line: 460, column: 33, scope: !846)
!870 = !DILocation(line: 460, column: 21, scope: !846)
!871 = !DILocation(line: 461, column: 9, scope: !846)
!872 = !DILocation(line: 464, column: 22, scope: !846)
!873 = !DILocation(line: 465, column: 9, scope: !846)
!874 = distinct !{!874, !843, !875, !732}
!875 = !DILocation(line: 473, column: 7, scope: !815)
!876 = !DILocation(line: 467, column: 7, scope: !846)
!877 = !DILocation(line: 469, column: 7, scope: !846)
!878 = !DILocation(line: 472, column: 9, scope: !846)
!879 = !DILocation(line: 475, column: 9, scope: !880)
!880 = distinct !DILexicalBlock(scope: !815, file: !3, line: 475, column: 7)
!881 = !DILocation(line: 475, column: 7, scope: !815)
!882 = !DILocation(line: 476, column: 17, scope: !880)
!883 = !DILocation(line: 476, column: 5, scope: !880)
!884 = !DILocation(line: 478, column: 14, scope: !885)
!885 = distinct !DILexicalBlock(scope: !815, file: !3, line: 478, column: 7)
!886 = !{!887, !887, i64 0}
!887 = !{!"int", !683, i64 0}
!888 = !DILocation(line: 478, column: 12, scope: !885)
!889 = !DILocation(line: 478, column: 21, scope: !885)
!890 = !DILocation(line: 478, column: 7, scope: !815)
!891 = !DILocation(line: 480, column: 16, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 480, column: 11)
!893 = distinct !DILexicalBlock(scope: !885, file: !3, line: 479, column: 5)
!894 = !DILocation(line: 480, column: 11, scope: !893)
!895 = !DILocation(line: 481, column: 22, scope: !892)
!896 = !DILocation(line: 481, column: 9, scope: !892)
!897 = !DILocation(line: 483, column: 22, scope: !892)
!898 = !DILocation(line: 483, column: 70, scope: !892)
!899 = !DILocation(line: 483, column: 60, scope: !892)
!900 = !DILocation(line: 483, column: 53, scope: !892)
!901 = !DILocation(line: 483, column: 9, scope: !892)
!902 = !DILocation(line: 484, column: 7, scope: !893)
!903 = !DILocation(line: 487, column: 9, scope: !904)
!904 = distinct !DILexicalBlock(scope: !815, file: !3, line: 487, column: 7)
!905 = !DILocation(line: 487, column: 7, scope: !815)
!906 = !DILocation(line: 489, column: 20, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !3, line: 488, column: 5)
!908 = !DILocation(line: 489, column: 55, scope: !907)
!909 = !DILocation(line: 489, column: 62, scope: !907)
!910 = !DILocation(line: 489, column: 50, scope: !907)
!911 = !DILocation(line: 489, column: 43, scope: !907)
!912 = !DILocation(line: 489, column: 7, scope: !907)
!913 = !DILocation(line: 490, column: 7, scope: !907)
!914 = !DILocation(line: 493, column: 23, scope: !815)
!915 = !DILocalVariable(name: "infiles", arg: 1, scope: !916, file: !3, line: 254, type: !818)
!916 = distinct !DISubprogram(name: "compare_files", scope: !3, file: !3, line: 254, type: !917, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !919)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !818}
!919 = !{!915, !920, !930, !933, !935, !939, !944, !947, !948, !949, !951, !952, !958, !964, !965}
!920 = !DILocalVariable(name: "lba", scope: !916, file: !3, line: 257, type: !921)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 1536, elements: !928)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !923, line: 26, size: 192, elements: !924)
!923 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !922, file: !923, line: 28, baseType: !38, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !922, file: !923, line: 29, baseType: !38, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !922, file: !923, line: 30, baseType: !35, size: 64, offset: 128)
!928 = !{!58, !929}
!929 = !DISubrange(count: 4)
!930 = !DILocalVariable(name: "thisline", scope: !916, file: !3, line: 261, type: !931)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 128, elements: !57)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!933 = !DILocalVariable(name: "all_line", scope: !916, file: !3, line: 266, type: !934)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 512, elements: !928)
!935 = !DILocalVariable(name: "alt", scope: !916, file: !3, line: 269, type: !936)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 192, elements: !937)
!937 = !{!58, !938}
!938 = !DISubrange(count: 3)
!939 = !DILocalVariable(name: "streams", scope: !916, file: !3, line: 272, type: !940)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, size: 128, elements: !57)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !943, line: 7, baseType: !761)
!943 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!944 = !DILocalVariable(name: "total", scope: !916, file: !3, line: 275, type: !945)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 192, elements: !946)
!946 = !{!938}
!947 = !DILocalVariable(name: "i", scope: !916, file: !3, line: 277, type: !72)
!948 = !DILocalVariable(name: "j", scope: !916, file: !3, line: 277, type: !72)
!949 = !DILocalVariable(name: "order", scope: !950, file: !3, line: 304, type: !72)
!950 = distinct !DILexicalBlock(scope: !916, file: !3, line: 303, column: 5)
!951 = !DILocalVariable(name: "fill_up", scope: !950, file: !3, line: 305, type: !56)
!952 = !DILocalVariable(name: "len", scope: !953, file: !3, line: 320, type: !38)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 319, column: 13)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 315, column: 15)
!955 = distinct !DILexicalBlock(scope: !956, file: !3, line: 314, column: 9)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 311, column: 16)
!957 = distinct !DILexicalBlock(scope: !950, file: !3, line: 309, column: 11)
!958 = !DILocalVariable(name: "buf1", scope: !959, file: !3, line: 395, type: !961)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 393, column: 5)
!960 = distinct !DILexicalBlock(scope: !916, file: !3, line: 392, column: 7)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 168, elements: !962)
!962 = !{!963}
!963 = !DISubrange(count: 21)
!964 = !DILocalVariable(name: "buf2", scope: !959, file: !3, line: 396, type: !961)
!965 = !DILocalVariable(name: "buf3", scope: !959, file: !3, line: 397, type: !961)
!966 = !DILocation(line: 0, scope: !916, inlinedAt: !967)
!967 = distinct !DILocation(line: 493, column: 3, scope: !815)
!968 = !DILocation(line: 257, column: 3, scope: !916, inlinedAt: !967)
!969 = !DILocation(line: 257, column: 21, scope: !916, inlinedAt: !967)
!970 = !DILocation(line: 266, column: 3, scope: !916, inlinedAt: !967)
!971 = !DILocation(line: 266, column: 22, scope: !916, inlinedAt: !967)
!972 = !DILocation(line: 284, column: 24, scope: !973, inlinedAt: !967)
!973 = distinct !DILexicalBlock(scope: !974, file: !3, line: 283, column: 9)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 282, column: 7)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 282, column: 7)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 281, column: 5)
!977 = distinct !DILexicalBlock(scope: !978, file: !3, line: 280, column: 3)
!978 = distinct !DILexicalBlock(scope: !916, file: !3, line: 280, column: 3)
!979 = !DILocation(line: 284, column: 11, scope: !973, inlinedAt: !967)
!980 = !DILocation(line: 285, column: 11, scope: !973, inlinedAt: !967)
!981 = !DILocation(line: 285, column: 26, scope: !973, inlinedAt: !967)
!982 = !DILocation(line: 290, column: 21, scope: !976, inlinedAt: !967)
!983 = !DILocation(line: 290, column: 47, scope: !976, inlinedAt: !967)
!984 = !DILocation(line: 290, column: 55, scope: !976, inlinedAt: !967)
!985 = !DILocation(line: 291, column: 12, scope: !986, inlinedAt: !967)
!986 = distinct !DILexicalBlock(scope: !976, file: !3, line: 291, column: 11)
!987 = !DILocation(line: 291, column: 11, scope: !976, inlinedAt: !967)
!988 = !DILocation(line: 292, column: 9, scope: !986, inlinedAt: !967)
!989 = !DILocation(line: 294, column: 7, scope: !976, inlinedAt: !967)
!990 = !DILocation(line: 297, column: 43, scope: !976, inlinedAt: !967)
!991 = !DILocation(line: 296, column: 21, scope: !976, inlinedAt: !967)
!992 = !DILocalVariable(name: "__stream", arg: 1, scope: !993, file: !994, line: 135, type: !941)
!993 = distinct !DISubprogram(name: "ferror_unlocked", scope: !994, file: !994, line: 135, type: !995, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !997)
!994 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!995 = !DISubroutineType(types: !996)
!996 = !{!72, !941}
!997 = !{!992}
!998 = !DILocation(line: 0, scope: !993, inlinedAt: !999)
!999 = distinct !DILocation(line: 298, column: 11, scope: !1000, inlinedAt: !967)
!1000 = distinct !DILexicalBlock(scope: !976, file: !3, line: 298, column: 11)
!1001 = !DILocation(line: 137, column: 10, scope: !993, inlinedAt: !999)
!1002 = !{!1003, !887, i64 0}
!1003 = !{!"_IO_FILE", !887, i64 0, !682, i64 8, !682, i64 16, !682, i64 24, !682, i64 32, !682, i64 40, !682, i64 48, !682, i64 56, !682, i64 64, !682, i64 72, !682, i64 80, !682, i64 88, !682, i64 96, !682, i64 104, !887, i64 112, !887, i64 116, !861, i64 120, !1004, i64 128, !683, i64 130, !683, i64 131, !682, i64 136, !861, i64 144, !682, i64 152, !682, i64 160, !682, i64 168, !682, i64 176, !861, i64 184, !887, i64 192, !683, i64 196}
!1004 = !{!"short", !683, i64 0}
!1005 = !DILocation(line: 298, column: 11, scope: !1000, inlinedAt: !967)
!1006 = !DILocation(line: 298, column: 11, scope: !976, inlinedAt: !967)
!1007 = !DILocation(line: 299, column: 9, scope: !1000, inlinedAt: !967)
!1008 = !DILocation(line: 275, column: 13, scope: !916, inlinedAt: !967)
!1009 = !DILocation(line: 389, column: 9, scope: !1010, inlinedAt: !967)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 389, column: 9)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 388, column: 3)
!1012 = distinct !DILexicalBlock(scope: !916, file: !3, line: 388, column: 3)
!1013 = !DILocation(line: 389, column: 29, scope: !1010, inlinedAt: !967)
!1014 = !DILocation(line: 389, column: 9, scope: !1011, inlinedAt: !967)
!1015 = !DILocation(line: 288, column: 17, scope: !976, inlinedAt: !967)
!1016 = !DILocation(line: 287, column: 17, scope: !976, inlinedAt: !967)
!1017 = !DILocation(line: 305, column: 12, scope: !950, inlinedAt: !967)
!1018 = !DILocation(line: 309, column: 12, scope: !957, inlinedAt: !967)
!1019 = !DILocation(line: 309, column: 11, scope: !950, inlinedAt: !967)
!1020 = !DILocation(line: 338, column: 27, scope: !1021, inlinedAt: !967)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 337, column: 9)
!1022 = distinct !DILexicalBlock(scope: !950, file: !3, line: 330, column: 11)
!1023 = !DILocation(line: 339, column: 15, scope: !1021, inlinedAt: !967)
!1024 = !DILocation(line: 311, column: 17, scope: !956, inlinedAt: !967)
!1025 = !DILocation(line: 311, column: 16, scope: !957, inlinedAt: !967)
!1026 = !DILocation(line: 315, column: 15, scope: !954, inlinedAt: !967)
!1027 = !{i8 0, i8 2}
!1028 = !DILocation(line: 315, column: 15, scope: !955, inlinedAt: !967)
!1029 = !DILocation(line: 316, column: 44, scope: !954, inlinedAt: !967)
!1030 = !{!1031, !682, i64 16}
!1031 = !{!"linebuffer", !861, i64 0, !861, i64 8, !682, i64 16}
!1032 = !DILocation(line: 316, column: 65, scope: !954, inlinedAt: !967)
!1033 = !{!1031, !861, i64 8}
!1034 = !DILocation(line: 316, column: 72, scope: !954, inlinedAt: !967)
!1035 = !DILocation(line: 317, column: 44, scope: !954, inlinedAt: !967)
!1036 = !DILocation(line: 317, column: 65, scope: !954, inlinedAt: !967)
!1037 = !DILocation(line: 317, column: 72, scope: !954, inlinedAt: !967)
!1038 = !DILocation(line: 316, column: 21, scope: !954, inlinedAt: !967)
!1039 = !DILocation(line: 0, scope: !950, inlinedAt: !967)
!1040 = !DILocation(line: 316, column: 13, scope: !954, inlinedAt: !967)
!1041 = !DILocation(line: 320, column: 28, scope: !953, inlinedAt: !967)
!1042 = !DILocation(line: 320, column: 75, scope: !953, inlinedAt: !967)
!1043 = !DILocation(line: 0, scope: !953, inlinedAt: !967)
!1044 = !DILocation(line: 321, column: 44, scope: !953, inlinedAt: !967)
!1045 = !DILocation(line: 321, column: 65, scope: !953, inlinedAt: !967)
!1046 = !DILocation(line: 321, column: 23, scope: !953, inlinedAt: !967)
!1047 = !DILocation(line: 322, column: 25, scope: !1048, inlinedAt: !967)
!1048 = distinct !DILexicalBlock(scope: !953, file: !3, line: 322, column: 19)
!1049 = !DILocation(line: 322, column: 19, scope: !953, inlinedAt: !967)
!1050 = !DILocation(line: 323, column: 26, scope: !1048, inlinedAt: !967)
!1051 = !DILocation(line: 0, scope: !957, inlinedAt: !967)
!1052 = !DILocation(line: 330, column: 17, scope: !1022, inlinedAt: !967)
!1053 = !DILocation(line: 330, column: 11, scope: !950, inlinedAt: !967)
!1054 = !DILocation(line: 333, column: 19, scope: !1055, inlinedAt: !967)
!1055 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 331, column: 9)
!1056 = !DILocation(line: 334, column: 35, scope: !1055, inlinedAt: !967)
!1057 = !DILocation(line: 334, column: 11, scope: !1055, inlinedAt: !967)
!1058 = !DILocation(line: 357, column: 11, scope: !950, inlinedAt: !967)
!1059 = !DILocation(line: 339, column: 21, scope: !1060, inlinedAt: !967)
!1060 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 339, column: 15)
!1061 = !DILocation(line: 342, column: 23, scope: !1062, inlinedAt: !967)
!1062 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 340, column: 13)
!1063 = !DILocalVariable(name: "line", arg: 1, scope: !1064, file: !3, line: 174, type: !1067)
!1064 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 174, type: !1065, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1069)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !1067, !941, !72}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !922)
!1069 = !{!1063, !1070, !1071, !1072, !1076, !1077, !1078, !1081, !1082, !1083, !1086, !1087, !1088, !1090, !1091}
!1070 = !DILocalVariable(name: "stream", arg: 2, scope: !1064, file: !3, line: 174, type: !941)
!1071 = !DILocalVariable(name: "class", arg: 3, scope: !1064, file: !3, line: 174, type: !72)
!1072 = !DILocalVariable(name: "__ptr", scope: !1073, file: !3, line: 187, type: !41)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 187, column: 9)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 186, column: 11)
!1075 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 177, column: 5)
!1076 = !DILocalVariable(name: "__stream", scope: !1073, file: !3, line: 187, type: !941)
!1077 = !DILocalVariable(name: "__cnt", scope: !1073, file: !3, line: 187, type: !38)
!1078 = !DILocalVariable(name: "__ptr", scope: !1079, file: !3, line: 194, type: !41)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 194, column: 9)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 193, column: 11)
!1081 = !DILocalVariable(name: "__stream", scope: !1079, file: !3, line: 194, type: !941)
!1082 = !DILocalVariable(name: "__cnt", scope: !1079, file: !3, line: 194, type: !38)
!1083 = !DILocalVariable(name: "__ptr", scope: !1084, file: !3, line: 196, type: !41)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 196, column: 9)
!1085 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 195, column: 11)
!1086 = !DILocalVariable(name: "__stream", scope: !1084, file: !3, line: 196, type: !941)
!1087 = !DILocalVariable(name: "__cnt", scope: !1084, file: !3, line: 196, type: !38)
!1088 = !DILocalVariable(name: "__ptr", scope: !1089, file: !3, line: 200, type: !41)
!1089 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 200, column: 3)
!1090 = !DILocalVariable(name: "__stream", scope: !1089, file: !3, line: 200, type: !941)
!1091 = !DILocalVariable(name: "__cnt", scope: !1089, file: !3, line: 200, type: !38)
!1092 = !DILocation(line: 0, scope: !1064, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 343, column: 15, scope: !1062, inlinedAt: !967)
!1094 = !DILocation(line: 179, column: 12, scope: !1095, inlinedAt: !1093)
!1095 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 179, column: 11)
!1096 = !DILocation(line: 179, column: 11, scope: !1075, inlinedAt: !1093)
!1097 = !DILocation(line: 343, column: 39, scope: !1062, inlinedAt: !967)
!1098 = !DILocation(line: 200, column: 3, scope: !1064, inlinedAt: !1093)
!1099 = !DILocation(line: 348, column: 23, scope: !1100, inlinedAt: !967)
!1100 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 346, column: 13)
!1101 = !DILocation(line: 349, column: 39, scope: !1100, inlinedAt: !967)
!1102 = !DILocation(line: 349, column: 15, scope: !1100, inlinedAt: !967)
!1103 = !DILocation(line: 366, column: 36, scope: !1104, inlinedAt: !967)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 362, column: 11)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 361, column: 13)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 360, column: 7)
!1107 = distinct !DILexicalBlock(scope: !950, file: !3, line: 360, column: 7)
!1108 = !DILocation(line: 366, column: 41, scope: !1104, inlinedAt: !967)
!1109 = !DILocation(line: 368, column: 49, scope: !1104, inlinedAt: !967)
!1110 = !DILocation(line: 369, column: 61, scope: !1104, inlinedAt: !967)
!1111 = !DILocation(line: 368, column: 27, scope: !1104, inlinedAt: !967)
!1112 = !DILocation(line: 371, column: 17, scope: !1113, inlinedAt: !967)
!1113 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 371, column: 17)
!1114 = !DILocation(line: 371, column: 17, scope: !1104, inlinedAt: !967)
!1115 = !DILocation(line: 372, column: 28, scope: !1113, inlinedAt: !967)
!1116 = !DILocation(line: 372, column: 15, scope: !1113, inlinedAt: !967)
!1117 = !DILocation(line: 377, column: 22, scope: !1118, inlinedAt: !967)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 377, column: 22)
!1119 = !DILocation(line: 377, column: 46, scope: !1118, inlinedAt: !967)
!1120 = !DILocation(line: 377, column: 22, scope: !1113, inlinedAt: !967)
!1121 = !DILocation(line: 379, column: 28, scope: !1118, inlinedAt: !967)
!1122 = !DILocation(line: 378, column: 15, scope: !1118, inlinedAt: !967)
!1123 = !DILocation(line: 0, scope: !993, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 381, column: 17, scope: !1125, inlinedAt: !967)
!1125 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 381, column: 17)
!1126 = !DILocation(line: 137, column: 10, scope: !993, inlinedAt: !1124)
!1127 = !DILocation(line: 381, column: 17, scope: !1125, inlinedAt: !967)
!1128 = !DILocation(line: 381, column: 17, scope: !1104, inlinedAt: !967)
!1129 = !DILocation(line: 382, column: 15, scope: !1125, inlinedAt: !967)
!1130 = !DILocation(line: 361, column: 13, scope: !1106, inlinedAt: !967)
!1131 = !DILocation(line: 390, column: 7, scope: !1010, inlinedAt: !967)
!1132 = !DILocation(line: 395, column: 7, scope: !959, inlinedAt: !967)
!1133 = !DILocation(line: 395, column: 12, scope: !959, inlinedAt: !967)
!1134 = !DILocation(line: 396, column: 7, scope: !959, inlinedAt: !967)
!1135 = !DILocation(line: 396, column: 12, scope: !959, inlinedAt: !967)
!1136 = !DILocation(line: 397, column: 7, scope: !959, inlinedAt: !967)
!1137 = !DILocation(line: 397, column: 12, scope: !959, inlinedAt: !967)
!1138 = !DILocation(line: 398, column: 7, scope: !959, inlinedAt: !967)
!1139 = !DILocation(line: 403, column: 5, scope: !960, inlinedAt: !967)
!1140 = !DILocation(line: 403, column: 5, scope: !959, inlinedAt: !967)
!1141 = !DILocation(line: 392, column: 7, scope: !960, inlinedAt: !967)
!1142 = !DILocation(line: 392, column: 7, scope: !916, inlinedAt: !967)
!1143 = !DILocation(line: 302, column: 10, scope: !916, inlinedAt: !967)
!1144 = !DILocation(line: 302, column: 22, scope: !916, inlinedAt: !967)
!1145 = !DILocation(line: 302, column: 3, scope: !916, inlinedAt: !967)
!1146 = distinct !{!1146, !1145, !1147, !732}
!1147 = !DILocation(line: 386, column: 5, scope: !916, inlinedAt: !967)
!1148 = !DILocation(line: 404, column: 1, scope: !916, inlinedAt: !967)
!1149 = !DILocation(line: 495, column: 7, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !815, file: !3, line: 495, column: 7)
!1151 = !DILocation(line: 495, column: 34, scope: !1150)
!1152 = !DILocation(line: 496, column: 5, scope: !1150)
!1153 = !DILocation(line: 498, column: 5, scope: !1150)
!1154 = !DISubprogram(name: "bindtextdomain", scope: !753, file: !753, line: 86, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!35, !41, !41}
!1157 = !DISubprogram(name: "textdomain", scope: !753, file: !753, line: 82, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!35, !41}
!1160 = !DISubprogram(name: "atexit", scope: !1161, file: !1161, line: 595, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1161 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!72, !1164}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null}
!1167 = !DISubprogram(name: "getopt_long", scope: !68, file: !68, line: 66, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!72, !72, !1170, !41, !1172, !74}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!1173 = !DISubprogram(name: "error", scope: !1174, file: !1174, line: 52, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1174 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !72, !72, !41, null}
!1177 = !DILocation(line: 0, scope: !1064)
!1178 = !DILocation(line: 176, column: 3, scope: !1064)
!1179 = !DILocation(line: 179, column: 12, scope: !1095)
!1180 = !DILocation(line: 179, column: 11, scope: !1075)
!1181 = !DILocation(line: 184, column: 12, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 184, column: 11)
!1183 = !DILocation(line: 184, column: 11, scope: !1075)
!1184 = !DILocation(line: 186, column: 11, scope: !1074)
!1185 = !DILocation(line: 186, column: 11, scope: !1075)
!1186 = !DILocation(line: 187, column: 9, scope: !1074)
!1187 = !DILocation(line: 191, column: 12, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 191, column: 11)
!1189 = !DILocation(line: 191, column: 11, scope: !1075)
!1190 = !DILocation(line: 193, column: 11, scope: !1080)
!1191 = !DILocation(line: 193, column: 11, scope: !1075)
!1192 = !DILocation(line: 194, column: 9, scope: !1080)
!1193 = !DILocation(line: 195, column: 11, scope: !1085)
!1194 = !DILocation(line: 195, column: 11, scope: !1075)
!1195 = !DILocation(line: 196, column: 9, scope: !1085)
!1196 = !DILocation(line: 200, column: 3, scope: !1064)
!1197 = !DILocation(line: 201, column: 1, scope: !1064)
!1198 = !DISubprogram(name: "fwrite_unlocked", scope: !757, file: !757, line: 680, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!40, !1201, !40, !40, !760}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1203 = distinct !DISubprogram(name: "check_order", scope: !3, file: !3, line: 215, type: !1204, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !1067, !1067, !72}
!1206 = !{!1207, !1208, !1209, !1210}
!1207 = !DILocalVariable(name: "prev", arg: 1, scope: !1203, file: !3, line: 215, type: !1067)
!1208 = !DILocalVariable(name: "current", arg: 2, scope: !1203, file: !3, line: 216, type: !1067)
!1209 = !DILocalVariable(name: "whatfile", arg: 3, scope: !1203, file: !3, line: 217, type: !72)
!1210 = !DILocalVariable(name: "order", scope: !1211, file: !3, line: 225, type: !72)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 224, column: 9)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 223, column: 11)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 222, column: 5)
!1214 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 220, column: 7)
!1215 = !DILocation(line: 0, scope: !1203)
!1216 = !DILocation(line: 220, column: 7, scope: !1214)
!1217 = !DILocation(line: 221, column: 7, scope: !1214)
!1218 = !DILocation(line: 221, column: 57, scope: !1214)
!1219 = !DILocation(line: 220, column: 7, scope: !1203)
!1220 = !DILocation(line: 223, column: 45, scope: !1212)
!1221 = !DILocation(line: 223, column: 12, scope: !1212)
!1222 = !DILocation(line: 223, column: 11, scope: !1213)
!1223 = !DILocation(line: 227, column: 15, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 227, column: 15)
!1225 = !DILocation(line: 0, scope: !1224)
!1226 = !DILocation(line: 227, column: 15, scope: !1211)
!1227 = !DILocation(line: 228, column: 21, scope: !1224)
!1228 = !DILocation(line: 0, scope: !1211)
!1229 = !DILocation(line: 228, column: 13, scope: !1224)
!1230 = !DILocation(line: 231, column: 21, scope: !1224)
!1231 = !DILocation(line: 234, column: 17, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 234, column: 15)
!1233 = !DILocation(line: 234, column: 15, scope: !1211)
!1234 = !DILocation(line: 236, column: 23, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 235, column: 13)
!1236 = !DILocation(line: 236, column: 41, scope: !1235)
!1237 = !DILocation(line: 238, column: 25, scope: !1235)
!1238 = !DILocation(line: 236, column: 15, scope: !1235)
!1239 = !DILocation(line: 242, column: 53, scope: !1235)
!1240 = !DILocation(line: 243, column: 13, scope: !1235)
!1241 = !DILocation(line: 246, column: 1, scope: !1203)
!1242 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !99, file: !99, line: 51, type: !702, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !1243)
!1243 = !{!1244}
!1244 = !DILocalVariable(name: "file", arg: 1, scope: !1242, file: !99, line: 51, type: !41)
!1245 = !DILocation(line: 0, scope: !1242)
!1246 = !DILocation(line: 53, column: 13, scope: !1242)
!1247 = !DILocation(line: 54, column: 1, scope: !1242)
!1248 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !99, file: !99, line: 88, type: !1249, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !47}
!1251 = !{!1252}
!1252 = !DILocalVariable(name: "ignore", arg: 1, scope: !1248, file: !99, line: 88, type: !47)
!1253 = !DILocation(line: 0, scope: !1248)
!1254 = !DILocation(line: 90, column: 16, scope: !1248)
!1255 = !DILocation(line: 91, column: 1, scope: !1248)
!1256 = distinct !DISubprogram(name: "close_stdout", scope: !99, file: !99, line: 117, type: !1165, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !1257)
!1257 = !{!1258}
!1258 = !DILocalVariable(name: "write_error", scope: !1259, file: !99, line: 122, type: !41)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !99, line: 121, column: 5)
!1260 = distinct !DILexicalBlock(scope: !1256, file: !99, line: 119, column: 7)
!1261 = !DILocation(line: 119, column: 21, scope: !1260)
!1262 = !DILocation(line: 119, column: 7, scope: !1260)
!1263 = !DILocation(line: 119, column: 29, scope: !1260)
!1264 = !DILocation(line: 120, column: 7, scope: !1260)
!1265 = !DILocation(line: 120, column: 12, scope: !1260)
!1266 = !DILocation(line: 120, column: 25, scope: !1260)
!1267 = !DILocation(line: 120, column: 28, scope: !1260)
!1268 = !DILocation(line: 120, column: 34, scope: !1260)
!1269 = !DILocation(line: 119, column: 7, scope: !1256)
!1270 = !DILocation(line: 122, column: 33, scope: !1259)
!1271 = !DILocation(line: 0, scope: !1259)
!1272 = !DILocation(line: 123, column: 11, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1259, file: !99, line: 123, column: 11)
!1274 = !DILocation(line: 0, scope: !1273)
!1275 = !DILocation(line: 123, column: 11, scope: !1259)
!1276 = !DILocation(line: 124, column: 36, scope: !1273)
!1277 = !DILocation(line: 124, column: 9, scope: !1273)
!1278 = !DILocation(line: 127, column: 9, scope: !1273)
!1279 = !DILocation(line: 129, column: 14, scope: !1259)
!1280 = !DILocation(line: 129, column: 7, scope: !1259)
!1281 = !DILocation(line: 134, column: 42, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1256, file: !99, line: 134, column: 7)
!1283 = !DILocation(line: 134, column: 28, scope: !1282)
!1284 = !DILocation(line: 134, column: 50, scope: !1282)
!1285 = !DILocation(line: 134, column: 7, scope: !1256)
!1286 = !DILocation(line: 135, column: 12, scope: !1282)
!1287 = !DILocation(line: 135, column: 5, scope: !1282)
!1288 = !DILocation(line: 136, column: 1, scope: !1256)
!1289 = distinct !DISubprogram(name: "fdadvise", scope: !208, file: !208, line: 31, type: !1290, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1294)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !72, !1292, !1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !757, line: 63, baseType: !783)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !26, line: 52, baseType: !25)
!1294 = !{!1295, !1296, !1297, !1298, !1299}
!1295 = !DILocalVariable(name: "fd", arg: 1, scope: !1289, file: !208, line: 31, type: !72)
!1296 = !DILocalVariable(name: "offset", arg: 2, scope: !1289, file: !208, line: 31, type: !1292)
!1297 = !DILocalVariable(name: "len", arg: 3, scope: !1289, file: !208, line: 31, type: !1292)
!1298 = !DILocalVariable(name: "advice", arg: 4, scope: !1289, file: !208, line: 31, type: !1293)
!1299 = !DILocalVariable(name: "__x", scope: !1300, file: !208, line: 34, type: !72)
!1300 = distinct !DILexicalBlock(scope: !1289, file: !208, line: 34, column: 3)
!1301 = !DILocation(line: 0, scope: !1289)
!1302 = !DILocation(line: 34, column: 3, scope: !1300)
!1303 = !DILocation(line: 0, scope: !1300)
!1304 = !DILocation(line: 36, column: 1, scope: !1289)
!1305 = !DISubprogram(name: "posix_fadvise", scope: !1306, file: !1306, line: 288, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1306 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!72, !72, !784, !784, !72}
!1309 = distinct !DISubprogram(name: "fadvise", scope: !208, file: !208, line: 39, type: !1310, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1346)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !1312, !1293}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !943, line: 7, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1314, file: !762, line: 51, baseType: !72, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1314, file: !762, line: 54, baseType: !35, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1314, file: !762, line: 55, baseType: !35, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1314, file: !762, line: 56, baseType: !35, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1314, file: !762, line: 57, baseType: !35, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1314, file: !762, line: 58, baseType: !35, size: 64, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1314, file: !762, line: 59, baseType: !35, size: 64, offset: 384)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1314, file: !762, line: 60, baseType: !35, size: 64, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1314, file: !762, line: 61, baseType: !35, size: 64, offset: 512)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1314, file: !762, line: 64, baseType: !35, size: 64, offset: 576)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1314, file: !762, line: 65, baseType: !35, size: 64, offset: 640)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1314, file: !762, line: 66, baseType: !35, size: 64, offset: 704)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1314, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1314, file: !762, line: 70, baseType: !1330, size: 64, offset: 832)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1314, file: !762, line: 72, baseType: !72, size: 32, offset: 896)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1314, file: !762, line: 73, baseType: !72, size: 32, offset: 928)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1314, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1314, file: !762, line: 77, baseType: !141, size: 16, offset: 1024)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1314, file: !762, line: 78, baseType: !787, size: 8, offset: 1040)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1314, file: !762, line: 79, baseType: !789, size: 8, offset: 1048)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1314, file: !762, line: 81, baseType: !793, size: 64, offset: 1088)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1314, file: !762, line: 89, baseType: !796, size: 64, offset: 1152)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1314, file: !762, line: 91, baseType: !798, size: 64, offset: 1216)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1314, file: !762, line: 92, baseType: !801, size: 64, offset: 1280)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1314, file: !762, line: 93, baseType: !1330, size: 64, offset: 1344)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1314, file: !762, line: 94, baseType: !37, size: 64, offset: 1408)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1314, file: !762, line: 95, baseType: !38, size: 64, offset: 1472)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1314, file: !762, line: 96, baseType: !72, size: 32, offset: 1536)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1314, file: !762, line: 98, baseType: !808, size: 160, offset: 1568)
!1346 = !{!1347, !1348}
!1347 = !DILocalVariable(name: "fp", arg: 1, scope: !1309, file: !208, line: 39, type: !1312)
!1348 = !DILocalVariable(name: "advice", arg: 2, scope: !1309, file: !208, line: 39, type: !1293)
!1349 = !DILocation(line: 0, scope: !1309)
!1350 = !DILocation(line: 41, column: 7, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1309, file: !208, line: 41, column: 7)
!1352 = !DILocation(line: 41, column: 7, scope: !1309)
!1353 = !DILocation(line: 42, column: 15, scope: !1351)
!1354 = !DILocation(line: 0, scope: !1289, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 42, column: 5, scope: !1351)
!1356 = !DILocation(line: 34, column: 3, scope: !1300, inlinedAt: !1355)
!1357 = !DILocation(line: 0, scope: !1300, inlinedAt: !1355)
!1358 = !DILocation(line: 42, column: 5, scope: !1351)
!1359 = !DILocation(line: 43, column: 1, scope: !1309)
!1360 = !DISubprogram(name: "fileno", scope: !757, file: !757, line: 785, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!72, !1330}
!1363 = distinct !DISubprogram(name: "fopen_safer", scope: !211, file: !211, line: 31, type: !1364, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !210, retainedNodes: !1400)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!1366, !41, !41}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !943, line: 7, baseType: !1368)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1368, file: !762, line: 51, baseType: !72, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1368, file: !762, line: 54, baseType: !35, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1368, file: !762, line: 55, baseType: !35, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1368, file: !762, line: 56, baseType: !35, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1368, file: !762, line: 57, baseType: !35, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1368, file: !762, line: 58, baseType: !35, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1368, file: !762, line: 59, baseType: !35, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1368, file: !762, line: 60, baseType: !35, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1368, file: !762, line: 61, baseType: !35, size: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1368, file: !762, line: 64, baseType: !35, size: 64, offset: 576)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1368, file: !762, line: 65, baseType: !35, size: 64, offset: 640)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1368, file: !762, line: 66, baseType: !35, size: 64, offset: 704)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1368, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1368, file: !762, line: 70, baseType: !1384, size: 64, offset: 832)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1368, file: !762, line: 72, baseType: !72, size: 32, offset: 896)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1368, file: !762, line: 73, baseType: !72, size: 32, offset: 928)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1368, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1368, file: !762, line: 77, baseType: !141, size: 16, offset: 1024)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1368, file: !762, line: 78, baseType: !787, size: 8, offset: 1040)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1368, file: !762, line: 79, baseType: !789, size: 8, offset: 1048)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1368, file: !762, line: 81, baseType: !793, size: 64, offset: 1088)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1368, file: !762, line: 89, baseType: !796, size: 64, offset: 1152)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1368, file: !762, line: 91, baseType: !798, size: 64, offset: 1216)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1368, file: !762, line: 92, baseType: !801, size: 64, offset: 1280)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1368, file: !762, line: 93, baseType: !1384, size: 64, offset: 1344)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1368, file: !762, line: 94, baseType: !37, size: 64, offset: 1408)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1368, file: !762, line: 95, baseType: !38, size: 64, offset: 1472)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1368, file: !762, line: 96, baseType: !72, size: 32, offset: 1536)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1368, file: !762, line: 98, baseType: !808, size: 160, offset: 1568)
!1400 = !{!1401, !1402, !1403, !1404, !1407, !1410, !1413}
!1401 = !DILocalVariable(name: "file", arg: 1, scope: !1363, file: !211, line: 31, type: !41)
!1402 = !DILocalVariable(name: "mode", arg: 2, scope: !1363, file: !211, line: 31, type: !41)
!1403 = !DILocalVariable(name: "fp", scope: !1363, file: !211, line: 33, type: !1366)
!1404 = !DILocalVariable(name: "fd", scope: !1405, file: !211, line: 37, type: !72)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !211, line: 36, column: 5)
!1406 = distinct !DILexicalBlock(scope: !1363, file: !211, line: 35, column: 7)
!1407 = !DILocalVariable(name: "f", scope: !1408, file: !211, line: 41, type: !72)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !211, line: 40, column: 9)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !211, line: 39, column: 11)
!1410 = !DILocalVariable(name: "e", scope: !1411, file: !211, line: 45, type: !72)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !211, line: 44, column: 13)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !211, line: 43, column: 15)
!1413 = !DILocalVariable(name: "e", scope: !1414, file: !211, line: 54, type: !72)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !211, line: 53, column: 13)
!1415 = distinct !DILexicalBlock(scope: !1408, file: !211, line: 51, column: 15)
!1416 = !DILocation(line: 0, scope: !1363)
!1417 = !DILocation(line: 33, column: 14, scope: !1363)
!1418 = !DILocation(line: 35, column: 7, scope: !1406)
!1419 = !DILocation(line: 35, column: 7, scope: !1363)
!1420 = !DILocation(line: 37, column: 16, scope: !1405)
!1421 = !DILocation(line: 0, scope: !1405)
!1422 = !DILocation(line: 39, column: 19, scope: !1409)
!1423 = !DILocation(line: 41, column: 19, scope: !1408)
!1424 = !DILocation(line: 0, scope: !1408)
!1425 = !DILocation(line: 43, column: 17, scope: !1412)
!1426 = !DILocation(line: 43, column: 15, scope: !1408)
!1427 = !DILocation(line: 45, column: 23, scope: !1411)
!1428 = !DILocation(line: 0, scope: !1411)
!1429 = !DILocation(line: 46, column: 15, scope: !1411)
!1430 = !DILocation(line: 47, column: 21, scope: !1411)
!1431 = !DILocation(line: 51, column: 15, scope: !1415)
!1432 = !DILocation(line: 51, column: 27, scope: !1415)
!1433 = !DILocation(line: 52, column: 15, scope: !1415)
!1434 = !DILocation(line: 52, column: 26, scope: !1415)
!1435 = !DILocation(line: 52, column: 24, scope: !1415)
!1436 = !DILocation(line: 51, column: 15, scope: !1408)
!1437 = !DILocation(line: 54, column: 23, scope: !1414)
!1438 = !DILocation(line: 0, scope: !1414)
!1439 = !DILocation(line: 55, column: 15, scope: !1414)
!1440 = !DILocation(line: 56, column: 21, scope: !1414)
!1441 = !DILocation(line: 63, column: 1, scope: !1363)
!1442 = !DISubprogram(name: "fdopen", scope: !757, file: !757, line: 279, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1384, !72, !41}
!1445 = !DISubprogram(name: "close", scope: !1446, file: !1446, line: 353, type: !1447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1446 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!72, !72}
!1449 = distinct !DISubprogram(name: "hard_locale", scope: !213, file: !213, line: 27, type: !1450, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1452)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!47, !72}
!1452 = !{!1453, !1454}
!1453 = !DILocalVariable(name: "category", arg: 1, scope: !1449, file: !213, line: 27, type: !72)
!1454 = !DILocalVariable(name: "locale", scope: !1449, file: !213, line: 29, type: !1455)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2056, elements: !1456)
!1456 = !{!1457}
!1457 = !DISubrange(count: 257)
!1458 = !DILocation(line: 0, scope: !1449)
!1459 = !DILocation(line: 29, column: 3, scope: !1449)
!1460 = !DILocation(line: 29, column: 8, scope: !1449)
!1461 = !DILocation(line: 31, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1449, file: !213, line: 31, column: 7)
!1463 = !DILocation(line: 31, column: 7, scope: !1449)
!1464 = !DILocation(line: 34, column: 12, scope: !1449)
!1465 = !DILocation(line: 34, column: 38, scope: !1449)
!1466 = !DILocation(line: 34, column: 41, scope: !1449)
!1467 = !DILocation(line: 34, column: 66, scope: !1449)
!1468 = !DILocation(line: 35, column: 1, scope: !1449)
!1469 = distinct !DISubprogram(name: "umaxtostr", scope: !1470, file: !1470, line: 36, type: !1471, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1473)
!1470 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!35, !217, !35}
!1473 = !{!1474, !1475, !1476}
!1474 = !DILocalVariable(name: "i", arg: 1, scope: !1469, file: !1470, line: 36, type: !217)
!1475 = !DILocalVariable(name: "buf", arg: 2, scope: !1469, file: !1470, line: 36, type: !35)
!1476 = !DILocalVariable(name: "p", scope: !1469, file: !1470, line: 38, type: !35)
!1477 = !DILocation(line: 0, scope: !1469)
!1478 = !DILocation(line: 38, column: 17, scope: !1469)
!1479 = !DILocation(line: 39, column: 6, scope: !1469)
!1480 = !DILocation(line: 52, column: 24, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !1470, line: 50, column: 5)
!1482 = distinct !DILexicalBlock(scope: !1469, file: !1470, line: 41, column: 7)
!1483 = !DILocation(line: 52, column: 16, scope: !1481)
!1484 = !DILocation(line: 52, column: 10, scope: !1481)
!1485 = !DILocation(line: 52, column: 14, scope: !1481)
!1486 = !DILocation(line: 53, column: 17, scope: !1481)
!1487 = !DILocation(line: 53, column: 24, scope: !1481)
!1488 = !DILocation(line: 52, column: 9, scope: !1481)
!1489 = distinct !{!1489, !1490, !1491, !732}
!1490 = !DILocation(line: 51, column: 7, scope: !1481)
!1491 = !DILocation(line: 53, column: 28, scope: !1481)
!1492 = !DILocation(line: 56, column: 3, scope: !1469)
!1493 = distinct !DISubprogram(name: "initbuffer", scope: !222, file: !222, line: 37, type: !1494, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1502)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !1496}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !923, line: 26, size: 192, elements: !1498)
!1498 = !{!1499, !1500, !1501}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1497, file: !923, line: 28, baseType: !38, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1497, file: !923, line: 29, baseType: !38, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1497, file: !923, line: 30, baseType: !35, size: 64, offset: 128)
!1502 = !{!1503}
!1503 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1493, file: !222, line: 37, type: !1496)
!1504 = !DILocation(line: 0, scope: !1493)
!1505 = !DILocation(line: 39, column: 11, scope: !1493)
!1506 = !DILocalVariable(name: "__dest", arg: 1, scope: !1507, file: !1508, line: 57, type: !37)
!1507 = distinct !DISubprogram(name: "memset", scope: !1508, file: !1508, line: 57, type: !1509, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1511)
!1508 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!37, !37, !72, !38}
!1511 = !{!1506, !1512, !1513}
!1512 = !DILocalVariable(name: "__ch", arg: 2, scope: !1507, file: !1508, line: 57, type: !72)
!1513 = !DILocalVariable(name: "__len", arg: 3, scope: !1507, file: !1508, line: 57, type: !38)
!1514 = !DILocation(line: 0, scope: !1507, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 39, column: 3, scope: !1493)
!1516 = !DILocation(line: 59, column: 10, scope: !1507, inlinedAt: !1515)
!1517 = !DILocation(line: 40, column: 1, scope: !1493)
!1518 = distinct !DISubprogram(name: "readlinebuffer", scope: !222, file: !222, line: 43, type: !1519, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1555)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1496, !1496, !1521}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !943, line: 7, baseType: !1523)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1523, file: !762, line: 51, baseType: !72, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1523, file: !762, line: 54, baseType: !35, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1523, file: !762, line: 55, baseType: !35, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1523, file: !762, line: 56, baseType: !35, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1523, file: !762, line: 57, baseType: !35, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1523, file: !762, line: 58, baseType: !35, size: 64, offset: 320)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1523, file: !762, line: 59, baseType: !35, size: 64, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1523, file: !762, line: 60, baseType: !35, size: 64, offset: 448)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1523, file: !762, line: 61, baseType: !35, size: 64, offset: 512)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1523, file: !762, line: 64, baseType: !35, size: 64, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1523, file: !762, line: 65, baseType: !35, size: 64, offset: 640)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1523, file: !762, line: 66, baseType: !35, size: 64, offset: 704)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1523, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1523, file: !762, line: 70, baseType: !1539, size: 64, offset: 832)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1523, file: !762, line: 72, baseType: !72, size: 32, offset: 896)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1523, file: !762, line: 73, baseType: !72, size: 32, offset: 928)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1523, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1523, file: !762, line: 77, baseType: !141, size: 16, offset: 1024)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1523, file: !762, line: 78, baseType: !787, size: 8, offset: 1040)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1523, file: !762, line: 79, baseType: !789, size: 8, offset: 1048)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1523, file: !762, line: 81, baseType: !793, size: 64, offset: 1088)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1523, file: !762, line: 89, baseType: !796, size: 64, offset: 1152)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1523, file: !762, line: 91, baseType: !798, size: 64, offset: 1216)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1523, file: !762, line: 92, baseType: !801, size: 64, offset: 1280)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1523, file: !762, line: 93, baseType: !1539, size: 64, offset: 1344)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1523, file: !762, line: 94, baseType: !37, size: 64, offset: 1408)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1523, file: !762, line: 95, baseType: !38, size: 64, offset: 1472)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1523, file: !762, line: 96, baseType: !72, size: 32, offset: 1536)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1523, file: !762, line: 98, baseType: !808, size: 160, offset: 1568)
!1555 = !{!1556, !1557}
!1556 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1518, file: !222, line: 43, type: !1496)
!1557 = !DILocalVariable(name: "stream", arg: 2, scope: !1518, file: !222, line: 43, type: !1521)
!1558 = !DILocation(line: 0, scope: !1518)
!1559 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1560, file: !222, line: 59, type: !1496)
!1560 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !222, file: !222, line: 59, type: !1561, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!1496, !1496, !1521, !36}
!1563 = !{!1559, !1564, !1565, !1566, !1567, !1568, !1569, !1570}
!1564 = !DILocalVariable(name: "stream", arg: 2, scope: !1560, file: !222, line: 59, type: !1521)
!1565 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1560, file: !222, line: 60, type: !36)
!1566 = !DILocalVariable(name: "c", scope: !1560, file: !222, line: 62, type: !72)
!1567 = !DILocalVariable(name: "buffer", scope: !1560, file: !222, line: 63, type: !35)
!1568 = !DILocalVariable(name: "p", scope: !1560, file: !222, line: 64, type: !35)
!1569 = !DILocalVariable(name: "end", scope: !1560, file: !222, line: 65, type: !35)
!1570 = !DILocalVariable(name: "oldsize", scope: !1571, file: !222, line: 83, type: !38)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !222, line: 82, column: 9)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !222, line: 81, column: 11)
!1573 = distinct !DILexicalBlock(scope: !1560, file: !222, line: 71, column: 5)
!1574 = !DILocation(line: 0, scope: !1560, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 45, column: 10, scope: !1518)
!1576 = !DILocation(line: 63, column: 30, scope: !1560, inlinedAt: !1575)
!1577 = !DILocation(line: 65, column: 36, scope: !1560, inlinedAt: !1575)
!1578 = !DILocalVariable(name: "__stream", arg: 1, scope: !1579, file: !994, line: 128, type: !1521)
!1579 = distinct !DISubprogram(name: "feof_unlocked", scope: !994, file: !994, line: 128, type: !1580, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!72, !1521}
!1582 = !{!1578}
!1583 = !DILocation(line: 0, scope: !1579, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 67, column: 7, scope: !1585, inlinedAt: !1575)
!1585 = distinct !DILexicalBlock(scope: !1560, file: !222, line: 67, column: 7)
!1586 = !DILocation(line: 130, column: 10, scope: !1579, inlinedAt: !1584)
!1587 = !DILocation(line: 67, column: 7, scope: !1585, inlinedAt: !1575)
!1588 = !DILocation(line: 67, column: 7, scope: !1560, inlinedAt: !1575)
!1589 = !{!1031, !861, i64 0}
!1590 = !DILocation(line: 65, column: 22, scope: !1560, inlinedAt: !1575)
!1591 = !DILocation(line: 70, column: 3, scope: !1560, inlinedAt: !1575)
!1592 = !DILocalVariable(name: "__fp", arg: 1, scope: !1593, file: !994, line: 66, type: !1521)
!1593 = distinct !DISubprogram(name: "getc_unlocked", scope: !994, file: !994, line: 66, type: !1580, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1594)
!1594 = !{!1592}
!1595 = !DILocation(line: 0, scope: !1593, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 72, column: 11, scope: !1573, inlinedAt: !1575)
!1597 = !DILocation(line: 68, column: 10, scope: !1593, inlinedAt: !1596)
!1598 = !{!1003, !682, i64 8}
!1599 = !{!1003, !682, i64 16}
!1600 = !{!"branch_weights", i32 2000, i32 1}
!1601 = !DILocation(line: 73, column: 11, scope: !1573, inlinedAt: !1575)
!1602 = !DILocation(line: 73, column: 13, scope: !1603, inlinedAt: !1575)
!1603 = distinct !DILexicalBlock(scope: !1573, file: !222, line: 73, column: 11)
!1604 = !DILocation(line: 75, column: 17, scope: !1605, inlinedAt: !1575)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !222, line: 75, column: 15)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !222, line: 74, column: 9)
!1607 = !DILocation(line: 75, column: 27, scope: !1605, inlinedAt: !1575)
!1608 = !DILocalVariable(name: "__stream", arg: 1, scope: !1609, file: !994, line: 135, type: !1521)
!1609 = distinct !DISubprogram(name: "ferror_unlocked", scope: !994, file: !994, line: 135, type: !1580, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1610)
!1610 = !{!1608}
!1611 = !DILocation(line: 0, scope: !1609, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 75, column: 30, scope: !1605, inlinedAt: !1575)
!1613 = !DILocation(line: 137, column: 10, scope: !1609, inlinedAt: !1612)
!1614 = !DILocation(line: 75, column: 30, scope: !1605, inlinedAt: !1575)
!1615 = !DILocation(line: 75, column: 15, scope: !1606, inlinedAt: !1575)
!1616 = !DILocation(line: 77, column: 15, scope: !1617, inlinedAt: !1575)
!1617 = distinct !DILexicalBlock(scope: !1606, file: !222, line: 77, column: 15)
!1618 = !DILocation(line: 77, column: 21, scope: !1617, inlinedAt: !1575)
!1619 = !DILocation(line: 77, column: 15, scope: !1606, inlinedAt: !1575)
!1620 = !DILocation(line: 0, scope: !1573, inlinedAt: !1575)
!1621 = !DILocation(line: 81, column: 13, scope: !1572, inlinedAt: !1575)
!1622 = !DILocation(line: 81, column: 11, scope: !1573, inlinedAt: !1575)
!1623 = !DILocation(line: 83, column: 40, scope: !1571, inlinedAt: !1575)
!1624 = !DILocation(line: 0, scope: !1571, inlinedAt: !1575)
!1625 = !DILocation(line: 84, column: 20, scope: !1571, inlinedAt: !1575)
!1626 = !DILocation(line: 85, column: 22, scope: !1571, inlinedAt: !1575)
!1627 = !DILocation(line: 86, column: 30, scope: !1571, inlinedAt: !1575)
!1628 = !DILocation(line: 87, column: 38, scope: !1571, inlinedAt: !1575)
!1629 = !DILocation(line: 87, column: 24, scope: !1571, inlinedAt: !1575)
!1630 = !DILocation(line: 88, column: 9, scope: !1571, inlinedAt: !1575)
!1631 = !DILocation(line: 89, column: 14, scope: !1573, inlinedAt: !1575)
!1632 = !DILocation(line: 89, column: 9, scope: !1573, inlinedAt: !1575)
!1633 = !DILocation(line: 89, column: 12, scope: !1573, inlinedAt: !1575)
!1634 = !DILocation(line: 91, column: 12, scope: !1560, inlinedAt: !1575)
!1635 = !DILocation(line: 90, column: 5, scope: !1573, inlinedAt: !1575)
!1636 = distinct !{!1636, !1591, !1637, !732}
!1637 = !DILocation(line: 91, column: 24, scope: !1560, inlinedAt: !1575)
!1638 = !DILocation(line: 93, column: 26, scope: !1560, inlinedAt: !1575)
!1639 = !DILocation(line: 93, column: 15, scope: !1560, inlinedAt: !1575)
!1640 = !DILocation(line: 93, column: 22, scope: !1560, inlinedAt: !1575)
!1641 = !DILocation(line: 94, column: 3, scope: !1560, inlinedAt: !1575)
!1642 = !DILocation(line: 45, column: 3, scope: !1518)
!1643 = !DILocation(line: 0, scope: !1560)
!1644 = !DILocation(line: 63, column: 30, scope: !1560)
!1645 = !DILocation(line: 65, column: 36, scope: !1560)
!1646 = !DILocation(line: 0, scope: !1579, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 67, column: 7, scope: !1585)
!1648 = !DILocation(line: 130, column: 10, scope: !1579, inlinedAt: !1647)
!1649 = !DILocation(line: 67, column: 7, scope: !1585)
!1650 = !DILocation(line: 67, column: 7, scope: !1560)
!1651 = !DILocation(line: 65, column: 22, scope: !1560)
!1652 = !DILocation(line: 70, column: 3, scope: !1560)
!1653 = !DILocation(line: 0, scope: !1593, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 72, column: 11, scope: !1573)
!1655 = !DILocation(line: 68, column: 10, scope: !1593, inlinedAt: !1654)
!1656 = !DILocation(line: 73, column: 11, scope: !1573)
!1657 = !DILocation(line: 73, column: 13, scope: !1603)
!1658 = !DILocation(line: 75, column: 17, scope: !1605)
!1659 = !DILocation(line: 75, column: 27, scope: !1605)
!1660 = !DILocation(line: 0, scope: !1609, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 75, column: 30, scope: !1605)
!1662 = !DILocation(line: 137, column: 10, scope: !1609, inlinedAt: !1661)
!1663 = !DILocation(line: 75, column: 30, scope: !1605)
!1664 = !DILocation(line: 75, column: 15, scope: !1606)
!1665 = !DILocation(line: 77, column: 15, scope: !1617)
!1666 = !DILocation(line: 77, column: 21, scope: !1617)
!1667 = !DILocation(line: 77, column: 15, scope: !1606)
!1668 = !DILocation(line: 0, scope: !1573)
!1669 = !DILocation(line: 81, column: 13, scope: !1572)
!1670 = !DILocation(line: 81, column: 11, scope: !1573)
!1671 = !DILocation(line: 83, column: 40, scope: !1571)
!1672 = !DILocation(line: 0, scope: !1571)
!1673 = !DILocation(line: 84, column: 20, scope: !1571)
!1674 = !DILocation(line: 85, column: 22, scope: !1571)
!1675 = !DILocation(line: 86, column: 30, scope: !1571)
!1676 = !DILocation(line: 87, column: 38, scope: !1571)
!1677 = !DILocation(line: 87, column: 24, scope: !1571)
!1678 = !DILocation(line: 88, column: 9, scope: !1571)
!1679 = !DILocation(line: 89, column: 14, scope: !1573)
!1680 = !DILocation(line: 89, column: 9, scope: !1573)
!1681 = !DILocation(line: 89, column: 12, scope: !1573)
!1682 = !DILocation(line: 91, column: 12, scope: !1560)
!1683 = !DILocation(line: 90, column: 5, scope: !1573)
!1684 = distinct !{!1684, !1652, !1685, !732}
!1685 = !DILocation(line: 91, column: 24, scope: !1560)
!1686 = !DILocation(line: 93, column: 26, scope: !1560)
!1687 = !DILocation(line: 93, column: 15, scope: !1560)
!1688 = !DILocation(line: 93, column: 22, scope: !1560)
!1689 = !DILocation(line: 94, column: 3, scope: !1560)
!1690 = !DILocation(line: 95, column: 1, scope: !1560)
!1691 = distinct !DISubprogram(name: "freebuffer", scope: !222, file: !222, line: 100, type: !1494, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1692)
!1692 = !{!1693}
!1693 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1691, file: !222, line: 100, type: !1496)
!1694 = !DILocation(line: 0, scope: !1691)
!1695 = !DILocation(line: 102, column: 21, scope: !1691)
!1696 = !DILocation(line: 102, column: 3, scope: !1691)
!1697 = !DILocation(line: 103, column: 1, scope: !1691)
!1698 = distinct !DISubprogram(name: "memcmp2", scope: !226, file: !226, line: 25, type: !1699, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!72, !41, !38, !41, !38}
!1701 = !{!1702, !1703, !1704, !1705, !1706}
!1702 = !DILocalVariable(name: "s1", arg: 1, scope: !1698, file: !226, line: 25, type: !41)
!1703 = !DILocalVariable(name: "n1", arg: 2, scope: !1698, file: !226, line: 25, type: !38)
!1704 = !DILocalVariable(name: "s2", arg: 3, scope: !1698, file: !226, line: 25, type: !41)
!1705 = !DILocalVariable(name: "n2", arg: 4, scope: !1698, file: !226, line: 25, type: !38)
!1706 = !DILocalVariable(name: "cmp", scope: !1698, file: !226, line: 27, type: !72)
!1707 = !DILocation(line: 0, scope: !1698)
!1708 = !DILocation(line: 27, column: 32, scope: !1698)
!1709 = !DILocation(line: 27, column: 29, scope: !1698)
!1710 = !DILocation(line: 27, column: 13, scope: !1698)
!1711 = !DILocation(line: 28, column: 11, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1698, file: !226, line: 28, column: 7)
!1713 = !DILocation(line: 28, column: 7, scope: !1698)
!1714 = !DILocation(line: 30, column: 14, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !226, line: 30, column: 11)
!1716 = distinct !DILexicalBlock(scope: !1712, file: !226, line: 29, column: 5)
!1717 = !DILocation(line: 30, column: 11, scope: !1716)
!1718 = !DILocation(line: 32, column: 16, scope: !1715)
!1719 = !DILocation(line: 35, column: 3, scope: !1698)
!1720 = distinct !DISubprogram(name: "set_program_name", scope: !112, file: !112, line: 39, type: !702, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !1721)
!1721 = !{!1722, !1723, !1724}
!1722 = !DILocalVariable(name: "argv0", arg: 1, scope: !1720, file: !112, line: 39, type: !41)
!1723 = !DILocalVariable(name: "slash", scope: !1720, file: !112, line: 46, type: !41)
!1724 = !DILocalVariable(name: "base", scope: !1720, file: !112, line: 47, type: !41)
!1725 = !DILocation(line: 0, scope: !1720)
!1726 = !DILocation(line: 51, column: 13, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1720, file: !112, line: 51, column: 7)
!1728 = !DILocation(line: 51, column: 7, scope: !1720)
!1729 = !DILocation(line: 55, column: 14, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1727, file: !112, line: 52, column: 5)
!1731 = !DILocation(line: 54, column: 7, scope: !1730)
!1732 = !DILocation(line: 56, column: 7, scope: !1730)
!1733 = !DILocation(line: 59, column: 11, scope: !1720)
!1734 = !DILocation(line: 60, column: 17, scope: !1720)
!1735 = !DILocation(line: 60, column: 11, scope: !1720)
!1736 = !DILocation(line: 61, column: 12, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1720, file: !112, line: 61, column: 7)
!1738 = !DILocation(line: 61, column: 20, scope: !1737)
!1739 = !DILocation(line: 61, column: 25, scope: !1737)
!1740 = !DILocation(line: 61, column: 42, scope: !1737)
!1741 = !DILocation(line: 61, column: 28, scope: !1737)
!1742 = !DILocation(line: 61, column: 61, scope: !1737)
!1743 = !DILocation(line: 61, column: 7, scope: !1720)
!1744 = !DILocation(line: 64, column: 11, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !112, line: 64, column: 11)
!1746 = distinct !DILexicalBlock(scope: !1737, file: !112, line: 62, column: 5)
!1747 = !DILocation(line: 64, column: 36, scope: !1745)
!1748 = !DILocation(line: 64, column: 11, scope: !1746)
!1749 = !DILocation(line: 66, column: 24, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !112, line: 65, column: 9)
!1751 = !DILocation(line: 70, column: 41, scope: !1750)
!1752 = !DILocation(line: 72, column: 9, scope: !1750)
!1753 = !DILocation(line: 84, column: 16, scope: !1720)
!1754 = !DILocation(line: 90, column: 27, scope: !1720)
!1755 = !DILocation(line: 92, column: 1, scope: !1720)
!1756 = distinct !DISubprogram(name: "clone_quoting_options", scope: !118, file: !118, line: 122, type: !1757, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !1760)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!1759, !1759}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!1760 = !{!1761, !1762, !1763}
!1761 = !DILocalVariable(name: "o", arg: 1, scope: !1756, file: !118, line: 122, type: !1759)
!1762 = !DILocalVariable(name: "e", scope: !1756, file: !118, line: 124, type: !72)
!1763 = !DILocalVariable(name: "p", scope: !1756, file: !118, line: 125, type: !1759)
!1764 = !DILocation(line: 0, scope: !1756)
!1765 = !DILocation(line: 124, column: 11, scope: !1756)
!1766 = !DILocation(line: 125, column: 40, scope: !1756)
!1767 = !DILocation(line: 125, column: 31, scope: !1756)
!1768 = !DILocation(line: 127, column: 9, scope: !1756)
!1769 = !DILocation(line: 128, column: 3, scope: !1756)
!1770 = distinct !DISubprogram(name: "get_quoting_style", scope: !118, file: !118, line: 133, type: !1771, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !1775)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!11, !1773}
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!1775 = !{!1776}
!1776 = !DILocalVariable(name: "o", arg: 1, scope: !1770, file: !118, line: 133, type: !1773)
!1777 = !DILocation(line: 0, scope: !1770)
!1778 = !DILocation(line: 135, column: 11, scope: !1770)
!1779 = !DILocation(line: 135, column: 46, scope: !1770)
!1780 = !{!1781, !683, i64 0}
!1781 = !{!"quoting_options", !683, i64 0, !887, i64 4, !683, i64 8, !682, i64 40, !682, i64 48}
!1782 = !DILocation(line: 135, column: 3, scope: !1770)
!1783 = distinct !DISubprogram(name: "set_quoting_style", scope: !118, file: !118, line: 141, type: !1784, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !1786)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !1759, !11}
!1786 = !{!1787, !1788}
!1787 = !DILocalVariable(name: "o", arg: 1, scope: !1783, file: !118, line: 141, type: !1759)
!1788 = !DILocalVariable(name: "s", arg: 2, scope: !1783, file: !118, line: 141, type: !11)
!1789 = !DILocation(line: 0, scope: !1783)
!1790 = !DILocation(line: 143, column: 4, scope: !1783)
!1791 = !DILocation(line: 143, column: 39, scope: !1783)
!1792 = !DILocation(line: 143, column: 45, scope: !1783)
!1793 = !DILocation(line: 144, column: 1, scope: !1783)
!1794 = distinct !DISubprogram(name: "set_char_quoting", scope: !118, file: !118, line: 152, type: !1795, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !1797)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!72, !1759, !36, !72}
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1804, !1805}
!1798 = !DILocalVariable(name: "o", arg: 1, scope: !1794, file: !118, line: 152, type: !1759)
!1799 = !DILocalVariable(name: "c", arg: 2, scope: !1794, file: !118, line: 152, type: !36)
!1800 = !DILocalVariable(name: "i", arg: 3, scope: !1794, file: !118, line: 152, type: !72)
!1801 = !DILocalVariable(name: "uc", scope: !1794, file: !118, line: 154, type: !43)
!1802 = !DILocalVariable(name: "p", scope: !1794, file: !118, line: 155, type: !1803)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1804 = !DILocalVariable(name: "shift", scope: !1794, file: !118, line: 157, type: !72)
!1805 = !DILocalVariable(name: "r", scope: !1794, file: !118, line: 158, type: !72)
!1806 = !DILocation(line: 0, scope: !1794)
!1807 = !DILocation(line: 156, column: 6, scope: !1794)
!1808 = !DILocation(line: 156, column: 62, scope: !1794)
!1809 = !DILocation(line: 156, column: 57, scope: !1794)
!1810 = !DILocation(line: 157, column: 15, scope: !1794)
!1811 = !DILocation(line: 158, column: 12, scope: !1794)
!1812 = !DILocation(line: 158, column: 15, scope: !1794)
!1813 = !DILocation(line: 158, column: 25, scope: !1794)
!1814 = !DILocation(line: 159, column: 13, scope: !1794)
!1815 = !DILocation(line: 159, column: 18, scope: !1794)
!1816 = !DILocation(line: 159, column: 23, scope: !1794)
!1817 = !DILocation(line: 159, column: 6, scope: !1794)
!1818 = !DILocation(line: 160, column: 3, scope: !1794)
!1819 = distinct !DISubprogram(name: "set_quoting_flags", scope: !118, file: !118, line: 168, type: !1820, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!72, !1759, !72}
!1822 = !{!1823, !1824, !1825}
!1823 = !DILocalVariable(name: "o", arg: 1, scope: !1819, file: !118, line: 168, type: !1759)
!1824 = !DILocalVariable(name: "i", arg: 2, scope: !1819, file: !118, line: 168, type: !72)
!1825 = !DILocalVariable(name: "r", scope: !1819, file: !118, line: 170, type: !72)
!1826 = !DILocation(line: 0, scope: !1819)
!1827 = !DILocation(line: 171, column: 8, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1819, file: !118, line: 171, column: 7)
!1829 = !DILocation(line: 171, column: 7, scope: !1819)
!1830 = !DILocation(line: 173, column: 10, scope: !1819)
!1831 = !{!1781, !887, i64 4}
!1832 = !DILocation(line: 174, column: 12, scope: !1819)
!1833 = !DILocation(line: 175, column: 3, scope: !1819)
!1834 = distinct !DISubprogram(name: "set_custom_quoting", scope: !118, file: !118, line: 179, type: !1835, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !1837)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !1759, !41, !41}
!1837 = !{!1838, !1839, !1840}
!1838 = !DILocalVariable(name: "o", arg: 1, scope: !1834, file: !118, line: 179, type: !1759)
!1839 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1834, file: !118, line: 180, type: !41)
!1840 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1834, file: !118, line: 180, type: !41)
!1841 = !DILocation(line: 0, scope: !1834)
!1842 = !DILocation(line: 182, column: 8, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1834, file: !118, line: 182, column: 7)
!1844 = !DILocation(line: 182, column: 7, scope: !1834)
!1845 = !DILocation(line: 184, column: 6, scope: !1834)
!1846 = !DILocation(line: 184, column: 12, scope: !1834)
!1847 = !DILocation(line: 185, column: 8, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1834, file: !118, line: 185, column: 7)
!1849 = !DILocation(line: 185, column: 19, scope: !1848)
!1850 = !DILocation(line: 186, column: 5, scope: !1848)
!1851 = !DILocation(line: 187, column: 6, scope: !1834)
!1852 = !DILocation(line: 187, column: 17, scope: !1834)
!1853 = !{!1781, !682, i64 40}
!1854 = !DILocation(line: 188, column: 6, scope: !1834)
!1855 = !DILocation(line: 188, column: 18, scope: !1834)
!1856 = !{!1781, !682, i64 48}
!1857 = !DILocation(line: 189, column: 1, scope: !1834)
!1858 = distinct !DISubprogram(name: "quotearg_buffer", scope: !118, file: !118, line: 784, type: !1859, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !1861)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!38, !35, !38, !41, !38, !1773}
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1862 = !DILocalVariable(name: "buffer", arg: 1, scope: !1858, file: !118, line: 784, type: !35)
!1863 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1858, file: !118, line: 784, type: !38)
!1864 = !DILocalVariable(name: "arg", arg: 3, scope: !1858, file: !118, line: 785, type: !41)
!1865 = !DILocalVariable(name: "argsize", arg: 4, scope: !1858, file: !118, line: 785, type: !38)
!1866 = !DILocalVariable(name: "o", arg: 5, scope: !1858, file: !118, line: 786, type: !1773)
!1867 = !DILocalVariable(name: "p", scope: !1858, file: !118, line: 788, type: !1773)
!1868 = !DILocalVariable(name: "e", scope: !1858, file: !118, line: 789, type: !72)
!1869 = !DILocalVariable(name: "r", scope: !1858, file: !118, line: 790, type: !38)
!1870 = !DILocation(line: 0, scope: !1858)
!1871 = !DILocation(line: 788, column: 37, scope: !1858)
!1872 = !DILocation(line: 789, column: 11, scope: !1858)
!1873 = !DILocation(line: 791, column: 43, scope: !1858)
!1874 = !DILocation(line: 791, column: 53, scope: !1858)
!1875 = !DILocation(line: 791, column: 60, scope: !1858)
!1876 = !DILocation(line: 792, column: 43, scope: !1858)
!1877 = !DILocation(line: 792, column: 58, scope: !1858)
!1878 = !DILocation(line: 790, column: 14, scope: !1858)
!1879 = !DILocation(line: 793, column: 9, scope: !1858)
!1880 = !DILocation(line: 794, column: 3, scope: !1858)
!1881 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !118, file: !118, line: 256, type: !1882, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !1886)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!38, !35, !38, !41, !38, !11, !72, !1884, !41, !41}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1886 = !{!1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1911, !1912, !1913, !1914, !1915, !1918, !1919, !1936, !1939, !1940, !1947, !1950, !1951, !1952, !1953, !1954, !1955}
!1887 = !DILocalVariable(name: "buffer", arg: 1, scope: !1881, file: !118, line: 256, type: !35)
!1888 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1881, file: !118, line: 256, type: !38)
!1889 = !DILocalVariable(name: "arg", arg: 3, scope: !1881, file: !118, line: 257, type: !41)
!1890 = !DILocalVariable(name: "argsize", arg: 4, scope: !1881, file: !118, line: 257, type: !38)
!1891 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1881, file: !118, line: 258, type: !11)
!1892 = !DILocalVariable(name: "flags", arg: 6, scope: !1881, file: !118, line: 258, type: !72)
!1893 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1881, file: !118, line: 259, type: !1884)
!1894 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1881, file: !118, line: 260, type: !41)
!1895 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1881, file: !118, line: 261, type: !41)
!1896 = !DILocalVariable(name: "i", scope: !1881, file: !118, line: 263, type: !38)
!1897 = !DILocalVariable(name: "len", scope: !1881, file: !118, line: 264, type: !38)
!1898 = !DILocalVariable(name: "orig_buffersize", scope: !1881, file: !118, line: 265, type: !38)
!1899 = !DILocalVariable(name: "quote_string", scope: !1881, file: !118, line: 266, type: !41)
!1900 = !DILocalVariable(name: "quote_string_len", scope: !1881, file: !118, line: 267, type: !38)
!1901 = !DILocalVariable(name: "backslash_escapes", scope: !1881, file: !118, line: 268, type: !47)
!1902 = !DILocalVariable(name: "unibyte_locale", scope: !1881, file: !118, line: 269, type: !47)
!1903 = !DILocalVariable(name: "elide_outer_quotes", scope: !1881, file: !118, line: 270, type: !47)
!1904 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1881, file: !118, line: 271, type: !47)
!1905 = !DILocalVariable(name: "encountered_single_quote", scope: !1881, file: !118, line: 272, type: !47)
!1906 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1881, file: !118, line: 273, type: !47)
!1907 = !DILocalVariable(name: "c", scope: !1908, file: !118, line: 402, type: !43)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !118, line: 401, column: 5)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !118, line: 400, column: 3)
!1910 = distinct !DILexicalBlock(scope: !1881, file: !118, line: 400, column: 3)
!1911 = !DILocalVariable(name: "esc", scope: !1908, file: !118, line: 403, type: !43)
!1912 = !DILocalVariable(name: "is_right_quote", scope: !1908, file: !118, line: 404, type: !47)
!1913 = !DILocalVariable(name: "escaping", scope: !1908, file: !118, line: 405, type: !47)
!1914 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1908, file: !118, line: 406, type: !47)
!1915 = !DILocalVariable(name: "m", scope: !1916, file: !118, line: 610, type: !38)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !118, line: 608, column: 11)
!1917 = distinct !DILexicalBlock(scope: !1908, file: !118, line: 426, column: 9)
!1918 = !DILocalVariable(name: "printable", scope: !1916, file: !118, line: 612, type: !47)
!1919 = !DILocalVariable(name: "mbstate", scope: !1920, file: !118, line: 621, type: !1922)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !118, line: 620, column: 15)
!1921 = distinct !DILexicalBlock(scope: !1916, file: !118, line: 614, column: 17)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1923, line: 6, baseType: !1924)
!1923 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1925, line: 21, baseType: !1926)
!1925 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1925, line: 13, size: 64, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1926, file: !1925, line: 15, baseType: !72, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1926, file: !1925, line: 20, baseType: !1930, size: 32, offset: 32)
!1930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !1925, line: 16, size: 32, elements: !1931)
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1930, file: !1925, line: 18, baseType: !6, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1930, file: !1925, line: 19, baseType: !1934, size: 32)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !1935)
!1935 = !{!929}
!1936 = !DILocalVariable(name: "w", scope: !1937, file: !118, line: 631, type: !1938)
!1937 = distinct !DILexicalBlock(scope: !1920, file: !118, line: 630, column: 19)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !39, line: 74, baseType: !72)
!1939 = !DILocalVariable(name: "bytes", scope: !1937, file: !118, line: 632, type: !38)
!1940 = !DILocalVariable(name: "j", scope: !1941, file: !118, line: 657, type: !38)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !118, line: 656, column: 27)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !118, line: 654, column: 29)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !118, line: 649, column: 23)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !118, line: 641, column: 30)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !118, line: 636, column: 30)
!1946 = distinct !DILexicalBlock(scope: !1937, file: !118, line: 634, column: 25)
!1947 = !DILocalVariable(name: "ilim", scope: !1948, file: !118, line: 684, type: !38)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !118, line: 681, column: 15)
!1949 = distinct !DILexicalBlock(scope: !1916, file: !118, line: 680, column: 17)
!1950 = !DILabel(scope: !1881, name: "process_input", file: !118, line: 314)
!1951 = !DILabel(scope: !1917, name: "c_and_shell_escape", file: !118, line: 512)
!1952 = !DILabel(scope: !1917, name: "c_escape", file: !118, line: 517)
!1953 = !DILabel(scope: !1908, name: "store_escape", file: !118, line: 719)
!1954 = !DILabel(scope: !1908, name: "store_c", file: !118, line: 722)
!1955 = !DILabel(scope: !1881, name: "force_outer_quoting_style", file: !118, line: 763)
!1956 = !DILocation(line: 0, scope: !1881)
!1957 = !DILocation(line: 269, column: 25, scope: !1881)
!1958 = !DILocation(line: 269, column: 36, scope: !1881)
!1959 = !DILocation(line: 270, column: 8, scope: !1881)
!1960 = !DILocation(line: 273, column: 3, scope: !1881)
!1961 = !DILocation(line: 265, column: 10, scope: !1881)
!1962 = !DILocation(line: 266, column: 15, scope: !1881)
!1963 = !DILocation(line: 267, column: 10, scope: !1881)
!1964 = !DILocation(line: 268, column: 8, scope: !1881)
!1965 = !DILocation(line: 271, column: 8, scope: !1881)
!1966 = !DILocation(line: 272, column: 8, scope: !1881)
!1967 = !DILocation(line: 273, column: 8, scope: !1881)
!1968 = !DILocation(line: 314, column: 2, scope: !1881)
!1969 = !DILocation(line: 316, column: 3, scope: !1881)
!1970 = !DILocation(line: 323, column: 11, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1881, file: !118, line: 317, column: 5)
!1972 = !DILocation(line: 323, column: 12, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1971, file: !118, line: 323, column: 11)
!1974 = !DILocation(line: 324, column: 9, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !118, line: 324, column: 9)
!1976 = distinct !DILexicalBlock(scope: !1973, file: !118, line: 324, column: 9)
!1977 = !DILocation(line: 324, column: 9, scope: !1976)
!1978 = !DILocation(line: 362, column: 26, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !118, line: 340, column: 11)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !118, line: 339, column: 13)
!1981 = distinct !DILexicalBlock(scope: !1971, file: !118, line: 338, column: 7)
!1982 = !DILocation(line: 363, column: 27, scope: !1979)
!1983 = !DILocation(line: 364, column: 11, scope: !1979)
!1984 = !DILocation(line: 365, column: 14, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !118, line: 365, column: 13)
!1986 = !DILocation(line: 365, column: 13, scope: !1981)
!1987 = !DILocation(line: 366, column: 43, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !118, line: 366, column: 11)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !118, line: 366, column: 11)
!1990 = !DILocation(line: 366, column: 11, scope: !1989)
!1991 = !DILocation(line: 367, column: 13, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !118, line: 367, column: 13)
!1993 = distinct !DILexicalBlock(scope: !1988, file: !118, line: 367, column: 13)
!1994 = !DILocation(line: 367, column: 13, scope: !1993)
!1995 = !DILocation(line: 366, column: 70, scope: !1988)
!1996 = distinct !{!1996, !1990, !1997, !732}
!1997 = !DILocation(line: 367, column: 13, scope: !1989)
!1998 = !DILocation(line: 264, column: 10, scope: !1881)
!1999 = !DILocation(line: 370, column: 28, scope: !1981)
!2000 = !DILocation(line: 372, column: 7, scope: !1971)
!2001 = !DILocation(line: 376, column: 7, scope: !1971)
!2002 = !DILocation(line: 379, column: 7, scope: !1971)
!2003 = !DILocation(line: 381, column: 12, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1971, file: !118, line: 381, column: 11)
!2005 = !DILocation(line: 381, column: 11, scope: !1971)
!2006 = !DILocation(line: 386, column: 12, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1971, file: !118, line: 386, column: 11)
!2008 = !DILocation(line: 386, column: 11, scope: !1971)
!2009 = !DILocation(line: 387, column: 9, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !118, line: 387, column: 9)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !118, line: 387, column: 9)
!2012 = !DILocation(line: 387, column: 9, scope: !2011)
!2013 = !DILocation(line: 394, column: 7, scope: !1971)
!2014 = !DILocation(line: 397, column: 7, scope: !1971)
!2015 = !DILocation(line: 400, column: 8, scope: !1910)
!2016 = !DILocation(line: 0, scope: !1910)
!2017 = !DILocation(line: 400, column: 27, scope: !1909)
!2018 = !DILocation(line: 400, column: 19, scope: !1909)
!2019 = !DILocation(line: 400, column: 41, scope: !1909)
!2020 = !DILocation(line: 400, column: 48, scope: !1909)
!2021 = !DILocation(line: 400, column: 3, scope: !1910)
!2022 = !DILocation(line: 400, column: 60, scope: !1909)
!2023 = !DILocation(line: 0, scope: !1908)
!2024 = !DILocation(line: 409, column: 11, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1908, file: !118, line: 408, column: 11)
!2026 = !DILocation(line: 411, column: 17, scope: !2025)
!2027 = !DILocation(line: 412, column: 39, scope: !2025)
!2028 = !DILocation(line: 416, column: 32, scope: !2025)
!2029 = !DILocation(line: 412, column: 19, scope: !2025)
!2030 = !DILocation(line: 412, column: 15, scope: !2025)
!2031 = !DILocation(line: 417, column: 11, scope: !2025)
!2032 = !DILocation(line: 417, column: 26, scope: !2025)
!2033 = !DILocation(line: 417, column: 14, scope: !2025)
!2034 = !DILocation(line: 417, column: 63, scope: !2025)
!2035 = !DILocation(line: 408, column: 11, scope: !1908)
!2036 = !DILocation(line: 424, column: 11, scope: !1908)
!2037 = !DILocation(line: 425, column: 7, scope: !1908)
!2038 = !DILocation(line: 428, column: 15, scope: !1917)
!2039 = !DILocation(line: 430, column: 15, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !118, line: 430, column: 15)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !118, line: 429, column: 13)
!2042 = distinct !DILexicalBlock(scope: !1917, file: !118, line: 428, column: 15)
!2043 = !DILocation(line: 430, column: 15, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !118, line: 430, column: 15)
!2045 = !DILocation(line: 430, column: 15, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !118, line: 430, column: 15)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !118, line: 430, column: 15)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !118, line: 430, column: 15)
!2049 = !DILocation(line: 430, column: 15, scope: !2047)
!2050 = !DILocation(line: 430, column: 15, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !118, line: 430, column: 15)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !118, line: 430, column: 15)
!2053 = !DILocation(line: 430, column: 15, scope: !2052)
!2054 = !DILocation(line: 430, column: 15, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !118, line: 430, column: 15)
!2056 = distinct !DILexicalBlock(scope: !2048, file: !118, line: 430, column: 15)
!2057 = !DILocation(line: 430, column: 15, scope: !2056)
!2058 = !DILocation(line: 430, column: 15, scope: !2048)
!2059 = !DILocation(line: 430, column: 15, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !118, line: 430, column: 15)
!2061 = distinct !DILexicalBlock(scope: !2040, file: !118, line: 430, column: 15)
!2062 = !DILocation(line: 430, column: 15, scope: !2061)
!2063 = !DILocation(line: 438, column: 19, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2041, file: !118, line: 437, column: 19)
!2065 = !DILocation(line: 438, column: 48, scope: !2064)
!2066 = !DILocation(line: 438, column: 59, scope: !2064)
!2067 = !DILocation(line: 440, column: 19, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !118, line: 440, column: 19)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !118, line: 440, column: 19)
!2070 = distinct !DILexicalBlock(scope: !2064, file: !118, line: 439, column: 17)
!2071 = !DILocation(line: 440, column: 19, scope: !2069)
!2072 = !DILocation(line: 441, column: 19, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !118, line: 441, column: 19)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !118, line: 441, column: 19)
!2075 = !DILocation(line: 441, column: 19, scope: !2074)
!2076 = !DILocation(line: 442, column: 17, scope: !2070)
!2077 = !DILocation(line: 449, column: 20, scope: !2042)
!2078 = !DILocation(line: 454, column: 11, scope: !1917)
!2079 = !DILocation(line: 457, column: 19, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1917, file: !118, line: 455, column: 13)
!2081 = !DILocation(line: 463, column: 19, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2080, file: !118, line: 462, column: 19)
!2083 = !DILocation(line: 463, column: 47, scope: !2082)
!2084 = !DILocation(line: 463, column: 41, scope: !2082)
!2085 = !DILocation(line: 463, column: 52, scope: !2082)
!2086 = !DILocation(line: 462, column: 19, scope: !2080)
!2087 = !DILocation(line: 464, column: 25, scope: !2082)
!2088 = !DILocation(line: 464, column: 17, scope: !2082)
!2089 = !DILocation(line: 471, column: 25, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2082, file: !118, line: 465, column: 19)
!2091 = !DILocation(line: 475, column: 21, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !118, line: 475, column: 21)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !118, line: 475, column: 21)
!2094 = !DILocation(line: 475, column: 21, scope: !2093)
!2095 = !DILocation(line: 476, column: 21, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !118, line: 476, column: 21)
!2097 = distinct !DILexicalBlock(scope: !2090, file: !118, line: 476, column: 21)
!2098 = !DILocation(line: 476, column: 21, scope: !2097)
!2099 = !DILocation(line: 477, column: 21, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !118, line: 477, column: 21)
!2101 = distinct !DILexicalBlock(scope: !2090, file: !118, line: 477, column: 21)
!2102 = !DILocation(line: 477, column: 21, scope: !2101)
!2103 = !DILocation(line: 478, column: 21, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !118, line: 478, column: 21)
!2105 = distinct !DILexicalBlock(scope: !2090, file: !118, line: 478, column: 21)
!2106 = !DILocation(line: 478, column: 21, scope: !2105)
!2107 = !DILocation(line: 479, column: 21, scope: !2090)
!2108 = !DILocation(line: 492, column: 31, scope: !1917)
!2109 = !DILocation(line: 493, column: 31, scope: !1917)
!2110 = !DILocation(line: 495, column: 31, scope: !1917)
!2111 = !DILocation(line: 496, column: 31, scope: !1917)
!2112 = !DILocation(line: 497, column: 31, scope: !1917)
!2113 = !DILocation(line: 500, column: 15, scope: !1917)
!2114 = !DILocation(line: 502, column: 19, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !118, line: 501, column: 13)
!2116 = distinct !DILexicalBlock(scope: !1917, file: !118, line: 500, column: 15)
!2117 = !DILocation(line: 509, column: 33, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1917, file: !118, line: 509, column: 15)
!2119 = !DILocation(line: 0, scope: !1917)
!2120 = !DILocation(line: 512, column: 9, scope: !1917)
!2121 = !DILocation(line: 514, column: 15, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1917, file: !118, line: 513, column: 15)
!2123 = !DILocation(line: 517, column: 9, scope: !1917)
!2124 = !DILocation(line: 518, column: 15, scope: !1917)
!2125 = !DILocation(line: 526, column: 15, scope: !1917)
!2126 = !DILocation(line: 526, column: 40, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1917, file: !118, line: 526, column: 15)
!2128 = !DILocation(line: 526, column: 47, scope: !2127)
!2129 = !DILocation(line: 526, column: 18, scope: !2127)
!2130 = !DILocation(line: 530, column: 17, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1917, file: !118, line: 530, column: 15)
!2132 = !DILocation(line: 530, column: 15, scope: !1917)
!2133 = !DILocation(line: 535, column: 11, scope: !1917)
!2134 = !DILocation(line: 549, column: 15, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1917, file: !118, line: 548, column: 15)
!2136 = !DILocation(line: 556, column: 15, scope: !1917)
!2137 = !DILocation(line: 558, column: 19, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !118, line: 557, column: 13)
!2139 = distinct !DILexicalBlock(scope: !1917, file: !118, line: 556, column: 15)
!2140 = !DILocation(line: 561, column: 19, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !118, line: 561, column: 19)
!2142 = !DILocation(line: 561, column: 30, scope: !2141)
!2143 = !DILocation(line: 570, column: 15, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !118, line: 570, column: 15)
!2145 = distinct !DILexicalBlock(scope: !2138, file: !118, line: 570, column: 15)
!2146 = !DILocation(line: 570, column: 15, scope: !2145)
!2147 = !DILocation(line: 571, column: 15, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !118, line: 571, column: 15)
!2149 = distinct !DILexicalBlock(scope: !2138, file: !118, line: 571, column: 15)
!2150 = !DILocation(line: 571, column: 15, scope: !2149)
!2151 = !DILocation(line: 572, column: 15, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !118, line: 572, column: 15)
!2153 = distinct !DILexicalBlock(scope: !2138, file: !118, line: 572, column: 15)
!2154 = !DILocation(line: 572, column: 15, scope: !2153)
!2155 = !DILocation(line: 574, column: 13, scope: !2138)
!2156 = !DILocation(line: 614, column: 17, scope: !1916)
!2157 = !DILocation(line: 0, scope: !1916)
!2158 = !DILocation(line: 617, column: 29, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !1921, file: !118, line: 615, column: 15)
!2160 = !{!1004, !1004, i64 0}
!2161 = !DILocation(line: 617, column: 27, scope: !2159)
!2162 = !DILocation(line: 678, column: 40, scope: !1916)
!2163 = !DILocation(line: 680, column: 23, scope: !1949)
!2164 = !DILocation(line: 621, column: 17, scope: !1920)
!2165 = !DILocation(line: 621, column: 27, scope: !1920)
!2166 = !DILocalVariable(name: "__dest", arg: 1, scope: !2167, file: !1508, line: 57, type: !37)
!2167 = distinct !DISubprogram(name: "memset", scope: !1508, file: !1508, line: 57, type: !1509, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2168)
!2168 = !{!2166, !2169, !2170}
!2169 = !DILocalVariable(name: "__ch", arg: 2, scope: !2167, file: !1508, line: 57, type: !72)
!2170 = !DILocalVariable(name: "__len", arg: 3, scope: !2167, file: !1508, line: 57, type: !38)
!2171 = !DILocation(line: 0, scope: !2167, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 622, column: 17, scope: !1920)
!2173 = !DILocation(line: 59, column: 10, scope: !2167, inlinedAt: !2172)
!2174 = !DILocation(line: 626, column: 29, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !1920, file: !118, line: 626, column: 21)
!2176 = !DILocation(line: 626, column: 21, scope: !1920)
!2177 = !DILocation(line: 627, column: 29, scope: !2175)
!2178 = !DILocation(line: 627, column: 19, scope: !2175)
!2179 = !DILocation(line: 629, column: 17, scope: !1920)
!2180 = !DILocation(line: 624, column: 19, scope: !1920)
!2181 = !DILocation(line: 625, column: 27, scope: !1920)
!2182 = !DILocation(line: 631, column: 21, scope: !1937)
!2183 = !DILocation(line: 632, column: 56, scope: !1937)
!2184 = !DILocation(line: 632, column: 50, scope: !1937)
!2185 = !DILocation(line: 633, column: 53, scope: !1937)
!2186 = !DILocation(line: 0, scope: !1937)
!2187 = !DILocation(line: 632, column: 36, scope: !1937)
!2188 = !DILocation(line: 634, column: 25, scope: !1937)
!2189 = !DILocation(line: 644, column: 38, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1944, file: !118, line: 642, column: 23)
!2191 = !DILocation(line: 644, column: 48, scope: !2190)
!2192 = !DILocation(line: 644, column: 25, scope: !2190)
!2193 = !DILocation(line: 644, column: 51, scope: !2190)
!2194 = !DILocation(line: 645, column: 28, scope: !2190)
!2195 = !DILocation(line: 644, column: 34, scope: !2190)
!2196 = distinct !{!2196, !2192, !2194, !732}
!2197 = !DILocation(line: 655, column: 29, scope: !1942)
!2198 = !DILocation(line: 0, scope: !1941)
!2199 = !DILocation(line: 659, column: 49, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !118, line: 658, column: 29)
!2201 = distinct !DILexicalBlock(scope: !1941, file: !118, line: 658, column: 29)
!2202 = !DILocation(line: 659, column: 39, scope: !2200)
!2203 = !DILocation(line: 659, column: 31, scope: !2200)
!2204 = !DILocation(line: 658, column: 53, scope: !2200)
!2205 = !DILocation(line: 658, column: 43, scope: !2200)
!2206 = !DILocation(line: 658, column: 29, scope: !2201)
!2207 = distinct !{!2207, !2206, !2208, !732}
!2208 = !DILocation(line: 667, column: 33, scope: !2201)
!2209 = !DILocation(line: 674, column: 19, scope: !1920)
!2210 = !DILocation(line: 670, column: 41, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !1943, file: !118, line: 670, column: 29)
!2212 = !DILocation(line: 670, column: 31, scope: !2211)
!2213 = !DILocation(line: 670, column: 29, scope: !1943)
!2214 = !DILocation(line: 672, column: 27, scope: !1943)
!2215 = !DILocation(line: 675, column: 26, scope: !1920)
!2216 = !DILocation(line: 675, column: 24, scope: !1920)
!2217 = !DILocation(line: 674, column: 19, scope: !1937)
!2218 = distinct !{!2218, !2179, !2219, !732}
!2219 = !DILocation(line: 675, column: 44, scope: !1920)
!2220 = !DILocation(line: 676, column: 15, scope: !1921)
!2221 = !DILocation(line: 680, column: 19, scope: !1949)
!2222 = !DILocation(line: 680, column: 45, scope: !1949)
!2223 = !DILocation(line: 684, column: 33, scope: !1948)
!2224 = !DILocation(line: 0, scope: !1948)
!2225 = !DILocation(line: 686, column: 17, scope: !1948)
!2226 = !DILocation(line: 405, column: 12, scope: !1908)
!2227 = !DILocation(line: 688, column: 43, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !118, line: 688, column: 25)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !118, line: 687, column: 19)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !118, line: 686, column: 17)
!2231 = distinct !DILexicalBlock(scope: !1948, file: !118, line: 686, column: 17)
!2232 = !DILocation(line: 690, column: 25, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !118, line: 690, column: 25)
!2234 = distinct !DILexicalBlock(scope: !2228, file: !118, line: 689, column: 23)
!2235 = !DILocation(line: 690, column: 25, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2233, file: !118, line: 690, column: 25)
!2237 = !DILocation(line: 690, column: 25, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !118, line: 690, column: 25)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !118, line: 690, column: 25)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !118, line: 690, column: 25)
!2241 = !DILocation(line: 690, column: 25, scope: !2239)
!2242 = !DILocation(line: 690, column: 25, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !118, line: 690, column: 25)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !118, line: 690, column: 25)
!2245 = !DILocation(line: 690, column: 25, scope: !2244)
!2246 = !DILocation(line: 690, column: 25, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !118, line: 690, column: 25)
!2248 = distinct !DILexicalBlock(scope: !2240, file: !118, line: 690, column: 25)
!2249 = !DILocation(line: 690, column: 25, scope: !2248)
!2250 = !DILocation(line: 690, column: 25, scope: !2240)
!2251 = !DILocation(line: 690, column: 25, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !118, line: 690, column: 25)
!2253 = distinct !DILexicalBlock(scope: !2233, file: !118, line: 690, column: 25)
!2254 = !DILocation(line: 690, column: 25, scope: !2253)
!2255 = !DILocation(line: 691, column: 25, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !118, line: 691, column: 25)
!2257 = distinct !DILexicalBlock(scope: !2234, file: !118, line: 691, column: 25)
!2258 = !DILocation(line: 691, column: 25, scope: !2257)
!2259 = !DILocation(line: 692, column: 25, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !118, line: 692, column: 25)
!2261 = distinct !DILexicalBlock(scope: !2234, file: !118, line: 692, column: 25)
!2262 = !DILocation(line: 692, column: 25, scope: !2261)
!2263 = !DILocation(line: 693, column: 38, scope: !2234)
!2264 = !DILocation(line: 693, column: 33, scope: !2234)
!2265 = !DILocation(line: 694, column: 23, scope: !2234)
!2266 = !DILocation(line: 695, column: 30, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2228, file: !118, line: 695, column: 30)
!2268 = !DILocation(line: 695, column: 30, scope: !2228)
!2269 = !DILocation(line: 697, column: 25, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !118, line: 697, column: 25)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !118, line: 697, column: 25)
!2272 = distinct !DILexicalBlock(scope: !2267, file: !118, line: 696, column: 23)
!2273 = !DILocation(line: 697, column: 25, scope: !2271)
!2274 = !DILocation(line: 699, column: 23, scope: !2272)
!2275 = !DILocation(line: 700, column: 35, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2229, file: !118, line: 700, column: 25)
!2277 = !DILocation(line: 700, column: 30, scope: !2276)
!2278 = !DILocation(line: 700, column: 25, scope: !2229)
!2279 = !DILocation(line: 702, column: 21, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !118, line: 702, column: 21)
!2281 = distinct !DILexicalBlock(scope: !2229, file: !118, line: 702, column: 21)
!2282 = !DILocation(line: 702, column: 21, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !118, line: 702, column: 21)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !118, line: 702, column: 21)
!2285 = distinct !DILexicalBlock(scope: !2280, file: !118, line: 702, column: 21)
!2286 = !DILocation(line: 702, column: 21, scope: !2284)
!2287 = !DILocation(line: 702, column: 21, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !118, line: 702, column: 21)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !118, line: 702, column: 21)
!2290 = !DILocation(line: 702, column: 21, scope: !2289)
!2291 = !DILocation(line: 702, column: 21, scope: !2285)
!2292 = !DILocation(line: 0, scope: !2229)
!2293 = !DILocation(line: 703, column: 21, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !118, line: 703, column: 21)
!2295 = distinct !DILexicalBlock(scope: !2229, file: !118, line: 703, column: 21)
!2296 = !DILocation(line: 703, column: 21, scope: !2295)
!2297 = !DILocation(line: 704, column: 25, scope: !2229)
!2298 = !DILocation(line: 686, column: 17, scope: !2230)
!2299 = distinct !{!2299, !2300, !2301}
!2300 = !DILocation(line: 686, column: 17, scope: !2231)
!2301 = !DILocation(line: 705, column: 19, scope: !2231)
!2302 = !DILocation(line: 416, column: 30, scope: !2025)
!2303 = !DILocation(line: 712, column: 34, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !1908, file: !118, line: 712, column: 11)
!2305 = !DILocation(line: 715, column: 35, scope: !2304)
!2306 = !DILocation(line: 715, column: 17, scope: !2304)
!2307 = !DILocation(line: 715, column: 47, scope: !2304)
!2308 = !DILocation(line: 715, column: 65, scope: !2304)
!2309 = !DILocation(line: 716, column: 11, scope: !2304)
!2310 = !DILocation(line: 712, column: 11, scope: !1908)
!2311 = !DILocation(line: 400, column: 10, scope: !1910)
!2312 = !DILocation(line: 719, column: 5, scope: !1908)
!2313 = !DILocation(line: 720, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !1908, file: !118, line: 720, column: 7)
!2315 = !DILocation(line: 720, column: 7, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2314, file: !118, line: 720, column: 7)
!2317 = !DILocation(line: 720, column: 7, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !118, line: 720, column: 7)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !118, line: 720, column: 7)
!2320 = distinct !DILexicalBlock(scope: !2316, file: !118, line: 720, column: 7)
!2321 = !DILocation(line: 720, column: 7, scope: !2319)
!2322 = !DILocation(line: 720, column: 7, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !118, line: 720, column: 7)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !118, line: 720, column: 7)
!2325 = !DILocation(line: 720, column: 7, scope: !2324)
!2326 = !DILocation(line: 720, column: 7, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !118, line: 720, column: 7)
!2328 = distinct !DILexicalBlock(scope: !2320, file: !118, line: 720, column: 7)
!2329 = !DILocation(line: 720, column: 7, scope: !2328)
!2330 = !DILocation(line: 720, column: 7, scope: !2320)
!2331 = !DILocation(line: 720, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !118, line: 720, column: 7)
!2333 = distinct !DILexicalBlock(scope: !2314, file: !118, line: 720, column: 7)
!2334 = !DILocation(line: 720, column: 7, scope: !2333)
!2335 = !DILocation(line: 722, column: 5, scope: !1908)
!2336 = !DILocation(line: 723, column: 7, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !118, line: 723, column: 7)
!2338 = distinct !DILexicalBlock(scope: !1908, file: !118, line: 723, column: 7)
!2339 = !DILocation(line: 424, column: 9, scope: !1908)
!2340 = !DILocation(line: 723, column: 7, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !118, line: 723, column: 7)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !118, line: 723, column: 7)
!2343 = distinct !DILexicalBlock(scope: !2337, file: !118, line: 723, column: 7)
!2344 = !DILocation(line: 723, column: 7, scope: !2342)
!2345 = !DILocation(line: 723, column: 7, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !118, line: 723, column: 7)
!2347 = distinct !DILexicalBlock(scope: !2343, file: !118, line: 723, column: 7)
!2348 = !DILocation(line: 723, column: 7, scope: !2347)
!2349 = !DILocation(line: 723, column: 7, scope: !2343)
!2350 = !DILocation(line: 724, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !118, line: 724, column: 7)
!2352 = distinct !DILexicalBlock(scope: !1908, file: !118, line: 724, column: 7)
!2353 = !DILocation(line: 724, column: 7, scope: !2352)
!2354 = !DILocation(line: 726, column: 13, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !1908, file: !118, line: 726, column: 11)
!2356 = !DILocation(line: 726, column: 11, scope: !1908)
!2357 = !DILocation(line: 728, column: 5, scope: !1909)
!2358 = !DILocation(line: 400, column: 75, scope: !1909)
!2359 = !DILocation(line: 400, column: 3, scope: !1909)
!2360 = distinct !{!2360, !2021, !2361, !732}
!2361 = !DILocation(line: 728, column: 5, scope: !1910)
!2362 = !DILocation(line: 730, column: 11, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !1881, file: !118, line: 730, column: 7)
!2364 = !DILocation(line: 730, column: 16, scope: !2363)
!2365 = !DILocation(line: 738, column: 51, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !1881, file: !118, line: 738, column: 7)
!2367 = !DILocation(line: 741, column: 11, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !118, line: 741, column: 11)
!2369 = distinct !DILexicalBlock(scope: !2366, file: !118, line: 740, column: 5)
!2370 = !DILocation(line: 741, column: 11, scope: !2369)
!2371 = !DILocation(line: 742, column: 16, scope: !2368)
!2372 = !DILocation(line: 742, column: 9, scope: !2368)
!2373 = !DILocation(line: 746, column: 18, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2368, file: !118, line: 746, column: 16)
!2375 = !DILocation(line: 746, column: 29, scope: !2374)
!2376 = !DILocation(line: 755, column: 7, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !1881, file: !118, line: 755, column: 7)
!2378 = !DILocation(line: 755, column: 20, scope: !2377)
!2379 = !DILocation(line: 756, column: 12, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !118, line: 756, column: 5)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !118, line: 756, column: 5)
!2382 = !DILocation(line: 756, column: 5, scope: !2381)
!2383 = !DILocation(line: 757, column: 7, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !118, line: 757, column: 7)
!2385 = distinct !DILexicalBlock(scope: !2380, file: !118, line: 757, column: 7)
!2386 = !DILocation(line: 757, column: 7, scope: !2385)
!2387 = !DILocation(line: 756, column: 39, scope: !2380)
!2388 = distinct !{!2388, !2382, !2389, !732}
!2389 = !DILocation(line: 757, column: 7, scope: !2381)
!2390 = !DILocation(line: 759, column: 11, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !1881, file: !118, line: 759, column: 7)
!2392 = !DILocation(line: 759, column: 7, scope: !1881)
!2393 = !DILocation(line: 760, column: 5, scope: !2391)
!2394 = !DILocation(line: 760, column: 17, scope: !2391)
!2395 = !DILocation(line: 763, column: 2, scope: !1881)
!2396 = !DILocation(line: 766, column: 51, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !1881, file: !118, line: 766, column: 7)
!2398 = !DILocation(line: 766, column: 21, scope: !2397)
!2399 = !DILocation(line: 770, column: 42, scope: !1881)
!2400 = !DILocation(line: 768, column: 10, scope: !1881)
!2401 = !DILocation(line: 768, column: 3, scope: !1881)
!2402 = !DILocation(line: 772, column: 1, scope: !1881)
!2403 = distinct !DISubprogram(name: "gettext_quote", scope: !118, file: !118, line: 207, type: !2404, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!41, !41, !11}
!2406 = !{!2407, !2408, !2409, !2410}
!2407 = !DILocalVariable(name: "msgid", arg: 1, scope: !2403, file: !118, line: 207, type: !41)
!2408 = !DILocalVariable(name: "s", arg: 2, scope: !2403, file: !118, line: 207, type: !11)
!2409 = !DILocalVariable(name: "translation", scope: !2403, file: !118, line: 209, type: !41)
!2410 = !DILocalVariable(name: "locale_code", scope: !2403, file: !118, line: 210, type: !41)
!2411 = !DILocation(line: 0, scope: !2403)
!2412 = !DILocation(line: 209, column: 29, scope: !2403)
!2413 = !DILocation(line: 212, column: 19, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2403, file: !118, line: 212, column: 7)
!2415 = !DILocation(line: 212, column: 7, scope: !2403)
!2416 = !DILocation(line: 233, column: 17, scope: !2403)
!2417 = !DILocalVariable(name: "s1", arg: 1, scope: !2418, file: !2419, line: 160, type: !41)
!2418 = distinct !DISubprogram(name: "strcaseeq0", scope: !2419, file: !2419, line: 160, type: !2420, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2422)
!2419 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!72, !41, !41, !36, !36, !36, !36, !36, !36, !36, !36, !36}
!2422 = !{!2417, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432}
!2423 = !DILocalVariable(name: "s2", arg: 2, scope: !2418, file: !2419, line: 160, type: !41)
!2424 = !DILocalVariable(name: "s20", arg: 3, scope: !2418, file: !2419, line: 160, type: !36)
!2425 = !DILocalVariable(name: "s21", arg: 4, scope: !2418, file: !2419, line: 160, type: !36)
!2426 = !DILocalVariable(name: "s22", arg: 5, scope: !2418, file: !2419, line: 160, type: !36)
!2427 = !DILocalVariable(name: "s23", arg: 6, scope: !2418, file: !2419, line: 160, type: !36)
!2428 = !DILocalVariable(name: "s24", arg: 7, scope: !2418, file: !2419, line: 160, type: !36)
!2429 = !DILocalVariable(name: "s25", arg: 8, scope: !2418, file: !2419, line: 160, type: !36)
!2430 = !DILocalVariable(name: "s26", arg: 9, scope: !2418, file: !2419, line: 160, type: !36)
!2431 = !DILocalVariable(name: "s27", arg: 10, scope: !2418, file: !2419, line: 160, type: !36)
!2432 = !DILocalVariable(name: "s28", arg: 11, scope: !2418, file: !2419, line: 160, type: !36)
!2433 = !DILocation(line: 0, scope: !2418, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 234, column: 7, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2403, file: !118, line: 234, column: 7)
!2436 = !DILocation(line: 162, column: 7, scope: !2437, inlinedAt: !2434)
!2437 = distinct !DILexicalBlock(scope: !2418, file: !2419, line: 162, column: 7)
!2438 = !DILocalVariable(name: "s1", arg: 1, scope: !2439, file: !2419, line: 146, type: !41)
!2439 = distinct !DISubprogram(name: "strcaseeq1", scope: !2419, file: !2419, line: 146, type: !2440, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!72, !41, !41, !36, !36, !36, !36, !36, !36, !36, !36}
!2442 = !{!2438, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451}
!2443 = !DILocalVariable(name: "s2", arg: 2, scope: !2439, file: !2419, line: 146, type: !41)
!2444 = !DILocalVariable(name: "s21", arg: 3, scope: !2439, file: !2419, line: 146, type: !36)
!2445 = !DILocalVariable(name: "s22", arg: 4, scope: !2439, file: !2419, line: 146, type: !36)
!2446 = !DILocalVariable(name: "s23", arg: 5, scope: !2439, file: !2419, line: 146, type: !36)
!2447 = !DILocalVariable(name: "s24", arg: 6, scope: !2439, file: !2419, line: 146, type: !36)
!2448 = !DILocalVariable(name: "s25", arg: 7, scope: !2439, file: !2419, line: 146, type: !36)
!2449 = !DILocalVariable(name: "s26", arg: 8, scope: !2439, file: !2419, line: 146, type: !36)
!2450 = !DILocalVariable(name: "s27", arg: 9, scope: !2439, file: !2419, line: 146, type: !36)
!2451 = !DILocalVariable(name: "s28", arg: 10, scope: !2439, file: !2419, line: 146, type: !36)
!2452 = !DILocation(line: 0, scope: !2439, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 167, column: 16, scope: !2454, inlinedAt: !2434)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !2419, line: 164, column: 11)
!2455 = distinct !DILexicalBlock(scope: !2437, file: !2419, line: 163, column: 5)
!2456 = !DILocation(line: 148, column: 7, scope: !2457, inlinedAt: !2453)
!2457 = distinct !DILexicalBlock(scope: !2439, file: !2419, line: 148, column: 7)
!2458 = !DILocalVariable(name: "s1", arg: 1, scope: !2459, file: !2419, line: 132, type: !41)
!2459 = distinct !DISubprogram(name: "strcaseeq2", scope: !2419, file: !2419, line: 132, type: !2460, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!72, !41, !41, !36, !36, !36, !36, !36, !36, !36}
!2462 = !{!2458, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470}
!2463 = !DILocalVariable(name: "s2", arg: 2, scope: !2459, file: !2419, line: 132, type: !41)
!2464 = !DILocalVariable(name: "s22", arg: 3, scope: !2459, file: !2419, line: 132, type: !36)
!2465 = !DILocalVariable(name: "s23", arg: 4, scope: !2459, file: !2419, line: 132, type: !36)
!2466 = !DILocalVariable(name: "s24", arg: 5, scope: !2459, file: !2419, line: 132, type: !36)
!2467 = !DILocalVariable(name: "s25", arg: 6, scope: !2459, file: !2419, line: 132, type: !36)
!2468 = !DILocalVariable(name: "s26", arg: 7, scope: !2459, file: !2419, line: 132, type: !36)
!2469 = !DILocalVariable(name: "s27", arg: 8, scope: !2459, file: !2419, line: 132, type: !36)
!2470 = !DILocalVariable(name: "s28", arg: 9, scope: !2459, file: !2419, line: 132, type: !36)
!2471 = !DILocation(line: 0, scope: !2459, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 153, column: 16, scope: !2473, inlinedAt: !2453)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !2419, line: 150, column: 11)
!2474 = distinct !DILexicalBlock(scope: !2457, file: !2419, line: 149, column: 5)
!2475 = !DILocation(line: 134, column: 7, scope: !2476, inlinedAt: !2472)
!2476 = distinct !DILexicalBlock(scope: !2459, file: !2419, line: 134, column: 7)
!2477 = !DILocalVariable(name: "s1", arg: 1, scope: !2478, file: !2419, line: 118, type: !41)
!2478 = distinct !DISubprogram(name: "strcaseeq3", scope: !2419, file: !2419, line: 118, type: !2479, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!72, !41, !41, !36, !36, !36, !36, !36, !36}
!2481 = !{!2477, !2482, !2483, !2484, !2485, !2486, !2487, !2488}
!2482 = !DILocalVariable(name: "s2", arg: 2, scope: !2478, file: !2419, line: 118, type: !41)
!2483 = !DILocalVariable(name: "s23", arg: 3, scope: !2478, file: !2419, line: 118, type: !36)
!2484 = !DILocalVariable(name: "s24", arg: 4, scope: !2478, file: !2419, line: 118, type: !36)
!2485 = !DILocalVariable(name: "s25", arg: 5, scope: !2478, file: !2419, line: 118, type: !36)
!2486 = !DILocalVariable(name: "s26", arg: 6, scope: !2478, file: !2419, line: 118, type: !36)
!2487 = !DILocalVariable(name: "s27", arg: 7, scope: !2478, file: !2419, line: 118, type: !36)
!2488 = !DILocalVariable(name: "s28", arg: 8, scope: !2478, file: !2419, line: 118, type: !36)
!2489 = !DILocation(line: 0, scope: !2478, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 139, column: 16, scope: !2491, inlinedAt: !2472)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !2419, line: 136, column: 11)
!2492 = distinct !DILexicalBlock(scope: !2476, file: !2419, line: 135, column: 5)
!2493 = !DILocation(line: 120, column: 7, scope: !2494, inlinedAt: !2490)
!2494 = distinct !DILexicalBlock(scope: !2478, file: !2419, line: 120, column: 7)
!2495 = !DILocation(line: 120, column: 7, scope: !2478, inlinedAt: !2490)
!2496 = !DILocalVariable(name: "s1", arg: 1, scope: !2497, file: !2419, line: 104, type: !41)
!2497 = distinct !DISubprogram(name: "strcaseeq4", scope: !2419, file: !2419, line: 104, type: !2498, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!72, !41, !41, !36, !36, !36, !36, !36}
!2500 = !{!2496, !2501, !2502, !2503, !2504, !2505, !2506}
!2501 = !DILocalVariable(name: "s2", arg: 2, scope: !2497, file: !2419, line: 104, type: !41)
!2502 = !DILocalVariable(name: "s24", arg: 3, scope: !2497, file: !2419, line: 104, type: !36)
!2503 = !DILocalVariable(name: "s25", arg: 4, scope: !2497, file: !2419, line: 104, type: !36)
!2504 = !DILocalVariable(name: "s26", arg: 5, scope: !2497, file: !2419, line: 104, type: !36)
!2505 = !DILocalVariable(name: "s27", arg: 6, scope: !2497, file: !2419, line: 104, type: !36)
!2506 = !DILocalVariable(name: "s28", arg: 7, scope: !2497, file: !2419, line: 104, type: !36)
!2507 = !DILocation(line: 0, scope: !2497, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 125, column: 16, scope: !2509, inlinedAt: !2490)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !2419, line: 122, column: 11)
!2510 = distinct !DILexicalBlock(scope: !2494, file: !2419, line: 121, column: 5)
!2511 = !DILocation(line: 106, column: 7, scope: !2512, inlinedAt: !2508)
!2512 = distinct !DILexicalBlock(scope: !2497, file: !2419, line: 106, column: 7)
!2513 = !DILocation(line: 106, column: 7, scope: !2497, inlinedAt: !2508)
!2514 = !DILocalVariable(name: "s1", arg: 1, scope: !2515, file: !2419, line: 90, type: !41)
!2515 = distinct !DISubprogram(name: "strcaseeq5", scope: !2419, file: !2419, line: 90, type: !2516, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!72, !41, !41, !36, !36, !36, !36}
!2518 = !{!2514, !2519, !2520, !2521, !2522, !2523}
!2519 = !DILocalVariable(name: "s2", arg: 2, scope: !2515, file: !2419, line: 90, type: !41)
!2520 = !DILocalVariable(name: "s25", arg: 3, scope: !2515, file: !2419, line: 90, type: !36)
!2521 = !DILocalVariable(name: "s26", arg: 4, scope: !2515, file: !2419, line: 90, type: !36)
!2522 = !DILocalVariable(name: "s27", arg: 5, scope: !2515, file: !2419, line: 90, type: !36)
!2523 = !DILocalVariable(name: "s28", arg: 6, scope: !2515, file: !2419, line: 90, type: !36)
!2524 = !DILocation(line: 0, scope: !2515, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 111, column: 16, scope: !2526, inlinedAt: !2508)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !2419, line: 108, column: 11)
!2527 = distinct !DILexicalBlock(scope: !2512, file: !2419, line: 107, column: 5)
!2528 = !DILocation(line: 92, column: 7, scope: !2529, inlinedAt: !2525)
!2529 = distinct !DILexicalBlock(scope: !2515, file: !2419, line: 92, column: 7)
!2530 = !DILocation(line: 92, column: 7, scope: !2515, inlinedAt: !2525)
!2531 = !DILocation(line: 235, column: 12, scope: !2435)
!2532 = !DILocation(line: 235, column: 21, scope: !2435)
!2533 = !DILocation(line: 235, column: 5, scope: !2435)
!2534 = !DILocation(line: 0, scope: !2439, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 167, column: 16, scope: !2454, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 236, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2403, file: !118, line: 236, column: 7)
!2538 = !DILocation(line: 148, column: 7, scope: !2457, inlinedAt: !2535)
!2539 = !DILocation(line: 0, scope: !2459, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 153, column: 16, scope: !2473, inlinedAt: !2535)
!2541 = !DILocation(line: 134, column: 7, scope: !2476, inlinedAt: !2540)
!2542 = !DILocation(line: 134, column: 7, scope: !2459, inlinedAt: !2540)
!2543 = !DILocation(line: 0, scope: !2478, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 139, column: 16, scope: !2491, inlinedAt: !2540)
!2545 = !DILocation(line: 120, column: 7, scope: !2494, inlinedAt: !2544)
!2546 = !DILocation(line: 120, column: 7, scope: !2478, inlinedAt: !2544)
!2547 = !DILocation(line: 0, scope: !2497, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 125, column: 16, scope: !2509, inlinedAt: !2544)
!2549 = !DILocation(line: 106, column: 7, scope: !2512, inlinedAt: !2548)
!2550 = !DILocation(line: 106, column: 7, scope: !2497, inlinedAt: !2548)
!2551 = !DILocation(line: 0, scope: !2515, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 111, column: 16, scope: !2526, inlinedAt: !2548)
!2553 = !DILocation(line: 92, column: 7, scope: !2529, inlinedAt: !2552)
!2554 = !DILocation(line: 92, column: 7, scope: !2515, inlinedAt: !2552)
!2555 = !DILocalVariable(name: "s1", arg: 1, scope: !2556, file: !2419, line: 76, type: !41)
!2556 = distinct !DISubprogram(name: "strcaseeq6", scope: !2419, file: !2419, line: 76, type: !2557, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!72, !41, !41, !36, !36, !36}
!2559 = !{!2555, !2560, !2561, !2562, !2563}
!2560 = !DILocalVariable(name: "s2", arg: 2, scope: !2556, file: !2419, line: 76, type: !41)
!2561 = !DILocalVariable(name: "s26", arg: 3, scope: !2556, file: !2419, line: 76, type: !36)
!2562 = !DILocalVariable(name: "s27", arg: 4, scope: !2556, file: !2419, line: 76, type: !36)
!2563 = !DILocalVariable(name: "s28", arg: 5, scope: !2556, file: !2419, line: 76, type: !36)
!2564 = !DILocation(line: 0, scope: !2556, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 97, column: 16, scope: !2566, inlinedAt: !2552)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !2419, line: 94, column: 11)
!2567 = distinct !DILexicalBlock(scope: !2529, file: !2419, line: 93, column: 5)
!2568 = !DILocation(line: 78, column: 7, scope: !2569, inlinedAt: !2565)
!2569 = distinct !DILexicalBlock(scope: !2556, file: !2419, line: 78, column: 7)
!2570 = !DILocation(line: 78, column: 7, scope: !2556, inlinedAt: !2565)
!2571 = !DILocalVariable(name: "s1", arg: 1, scope: !2572, file: !2419, line: 62, type: !41)
!2572 = distinct !DISubprogram(name: "strcaseeq7", scope: !2419, file: !2419, line: 62, type: !2573, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!72, !41, !41, !36, !36}
!2575 = !{!2571, !2576, !2577, !2578}
!2576 = !DILocalVariable(name: "s2", arg: 2, scope: !2572, file: !2419, line: 62, type: !41)
!2577 = !DILocalVariable(name: "s27", arg: 3, scope: !2572, file: !2419, line: 62, type: !36)
!2578 = !DILocalVariable(name: "s28", arg: 4, scope: !2572, file: !2419, line: 62, type: !36)
!2579 = !DILocation(line: 0, scope: !2572, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 83, column: 16, scope: !2581, inlinedAt: !2565)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !2419, line: 80, column: 11)
!2582 = distinct !DILexicalBlock(scope: !2569, file: !2419, line: 79, column: 5)
!2583 = !DILocation(line: 64, column: 7, scope: !2584, inlinedAt: !2580)
!2584 = distinct !DILexicalBlock(scope: !2572, file: !2419, line: 64, column: 7)
!2585 = !DILocation(line: 236, column: 7, scope: !2403)
!2586 = !DILocation(line: 237, column: 12, scope: !2537)
!2587 = !DILocation(line: 237, column: 21, scope: !2537)
!2588 = !DILocation(line: 237, column: 5, scope: !2537)
!2589 = !DILocation(line: 239, column: 13, scope: !2403)
!2590 = !DILocation(line: 239, column: 11, scope: !2403)
!2591 = !DILocation(line: 239, column: 3, scope: !2403)
!2592 = !DILocation(line: 240, column: 1, scope: !2403)
!2593 = !DISubprogram(name: "iswprint", scope: !2594, file: !2594, line: 120, type: !2595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!2594 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!72, !6}
!2597 = !DISubprogram(name: "mbsinit", scope: !2598, file: !2598, line: 292, type: !2599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!2598 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!72, !2601}
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1926)
!2603 = distinct !DISubprogram(name: "quotearg_alloc", scope: !118, file: !118, line: 799, type: !2604, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!35, !41, !38, !1773}
!2606 = !{!2607, !2608, !2609}
!2607 = !DILocalVariable(name: "arg", arg: 1, scope: !2603, file: !118, line: 799, type: !41)
!2608 = !DILocalVariable(name: "argsize", arg: 2, scope: !2603, file: !118, line: 799, type: !38)
!2609 = !DILocalVariable(name: "o", arg: 3, scope: !2603, file: !118, line: 800, type: !1773)
!2610 = !DILocation(line: 0, scope: !2603)
!2611 = !DILocalVariable(name: "arg", arg: 1, scope: !2612, file: !118, line: 812, type: !41)
!2612 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !118, file: !118, line: 812, type: !2613, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!35, !41, !38, !246, !1773}
!2615 = !{!2611, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623}
!2616 = !DILocalVariable(name: "argsize", arg: 2, scope: !2612, file: !118, line: 812, type: !38)
!2617 = !DILocalVariable(name: "size", arg: 3, scope: !2612, file: !118, line: 812, type: !246)
!2618 = !DILocalVariable(name: "o", arg: 4, scope: !2612, file: !118, line: 813, type: !1773)
!2619 = !DILocalVariable(name: "p", scope: !2612, file: !118, line: 815, type: !1773)
!2620 = !DILocalVariable(name: "e", scope: !2612, file: !118, line: 816, type: !72)
!2621 = !DILocalVariable(name: "flags", scope: !2612, file: !118, line: 818, type: !72)
!2622 = !DILocalVariable(name: "bufsize", scope: !2612, file: !118, line: 819, type: !38)
!2623 = !DILocalVariable(name: "buf", scope: !2612, file: !118, line: 823, type: !35)
!2624 = !DILocation(line: 0, scope: !2612, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 802, column: 10, scope: !2603)
!2626 = !DILocation(line: 815, column: 37, scope: !2612, inlinedAt: !2625)
!2627 = !DILocation(line: 816, column: 11, scope: !2612, inlinedAt: !2625)
!2628 = !DILocation(line: 818, column: 18, scope: !2612, inlinedAt: !2625)
!2629 = !DILocation(line: 818, column: 24, scope: !2612, inlinedAt: !2625)
!2630 = !DILocation(line: 819, column: 69, scope: !2612, inlinedAt: !2625)
!2631 = !DILocation(line: 820, column: 53, scope: !2612, inlinedAt: !2625)
!2632 = !DILocation(line: 821, column: 49, scope: !2612, inlinedAt: !2625)
!2633 = !DILocation(line: 822, column: 49, scope: !2612, inlinedAt: !2625)
!2634 = !DILocation(line: 819, column: 20, scope: !2612, inlinedAt: !2625)
!2635 = !DILocation(line: 822, column: 62, scope: !2612, inlinedAt: !2625)
!2636 = !DILocalVariable(name: "n", arg: 1, scope: !2637, file: !242, line: 216, type: !38)
!2637 = distinct !DISubprogram(name: "xcharalloc", scope: !242, file: !242, line: 216, type: !2638, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!35, !38}
!2640 = !{!2636}
!2641 = !DILocation(line: 0, scope: !2637, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 823, column: 15, scope: !2612, inlinedAt: !2625)
!2643 = !DILocation(line: 218, column: 10, scope: !2637, inlinedAt: !2642)
!2644 = !DILocation(line: 824, column: 60, scope: !2612, inlinedAt: !2625)
!2645 = !DILocation(line: 826, column: 32, scope: !2612, inlinedAt: !2625)
!2646 = !DILocation(line: 826, column: 47, scope: !2612, inlinedAt: !2625)
!2647 = !DILocation(line: 824, column: 3, scope: !2612, inlinedAt: !2625)
!2648 = !DILocation(line: 827, column: 9, scope: !2612, inlinedAt: !2625)
!2649 = !DILocation(line: 802, column: 3, scope: !2603)
!2650 = !DILocation(line: 0, scope: !2612)
!2651 = !DILocation(line: 815, column: 37, scope: !2612)
!2652 = !DILocation(line: 816, column: 11, scope: !2612)
!2653 = !DILocation(line: 818, column: 18, scope: !2612)
!2654 = !DILocation(line: 818, column: 27, scope: !2612)
!2655 = !DILocation(line: 818, column: 24, scope: !2612)
!2656 = !DILocation(line: 819, column: 69, scope: !2612)
!2657 = !DILocation(line: 820, column: 53, scope: !2612)
!2658 = !DILocation(line: 821, column: 49, scope: !2612)
!2659 = !DILocation(line: 822, column: 49, scope: !2612)
!2660 = !DILocation(line: 819, column: 20, scope: !2612)
!2661 = !DILocation(line: 822, column: 62, scope: !2612)
!2662 = !DILocation(line: 0, scope: !2637, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 823, column: 15, scope: !2612)
!2664 = !DILocation(line: 218, column: 10, scope: !2637, inlinedAt: !2663)
!2665 = !DILocation(line: 824, column: 60, scope: !2612)
!2666 = !DILocation(line: 826, column: 32, scope: !2612)
!2667 = !DILocation(line: 826, column: 47, scope: !2612)
!2668 = !DILocation(line: 824, column: 3, scope: !2612)
!2669 = !DILocation(line: 827, column: 9, scope: !2612)
!2670 = !DILocation(line: 828, column: 7, scope: !2612)
!2671 = !DILocation(line: 829, column: 11, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2612, file: !118, line: 828, column: 7)
!2673 = !DILocation(line: 829, column: 5, scope: !2672)
!2674 = !DILocation(line: 830, column: 3, scope: !2612)
!2675 = distinct !DISubprogram(name: "quotearg_free", scope: !118, file: !118, line: 848, type: !1165, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2676)
!2676 = !{!2677, !2678}
!2677 = !DILocalVariable(name: "sv", scope: !2675, file: !118, line: 850, type: !168)
!2678 = !DILocalVariable(name: "i", scope: !2675, file: !118, line: 851, type: !72)
!2679 = !DILocation(line: 850, column: 24, scope: !2675)
!2680 = !DILocation(line: 0, scope: !2675)
!2681 = !DILocation(line: 852, column: 19, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !118, line: 852, column: 3)
!2683 = distinct !DILexicalBlock(scope: !2675, file: !118, line: 852, column: 3)
!2684 = !DILocation(line: 852, column: 17, scope: !2682)
!2685 = !DILocation(line: 852, column: 3, scope: !2683)
!2686 = !DILocation(line: 853, column: 17, scope: !2682)
!2687 = !{!2688, !682, i64 8}
!2688 = !{!"slotvec", !861, i64 0, !682, i64 8}
!2689 = !DILocation(line: 853, column: 5, scope: !2682)
!2690 = !DILocation(line: 852, column: 28, scope: !2682)
!2691 = distinct !{!2691, !2685, !2692, !732}
!2692 = !DILocation(line: 853, column: 20, scope: !2683)
!2693 = !DILocation(line: 854, column: 13, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2675, file: !118, line: 854, column: 7)
!2695 = !DILocation(line: 854, column: 17, scope: !2694)
!2696 = !DILocation(line: 854, column: 7, scope: !2675)
!2697 = !DILocation(line: 856, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2694, file: !118, line: 855, column: 5)
!2699 = !DILocation(line: 857, column: 21, scope: !2698)
!2700 = !{!2688, !861, i64 0}
!2701 = !DILocation(line: 858, column: 20, scope: !2698)
!2702 = !DILocation(line: 859, column: 5, scope: !2698)
!2703 = !DILocation(line: 860, column: 10, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2675, file: !118, line: 860, column: 7)
!2705 = !DILocation(line: 860, column: 7, scope: !2675)
!2706 = !DILocation(line: 862, column: 13, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2704, file: !118, line: 861, column: 5)
!2708 = !DILocation(line: 862, column: 7, scope: !2707)
!2709 = !DILocation(line: 863, column: 15, scope: !2707)
!2710 = !DILocation(line: 864, column: 5, scope: !2707)
!2711 = !DILocation(line: 865, column: 10, scope: !2675)
!2712 = !DILocation(line: 866, column: 1, scope: !2675)
!2713 = distinct !DISubprogram(name: "quotearg_n", scope: !118, file: !118, line: 931, type: !813, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2714)
!2714 = !{!2715, !2716}
!2715 = !DILocalVariable(name: "n", arg: 1, scope: !2713, file: !118, line: 931, type: !72)
!2716 = !DILocalVariable(name: "arg", arg: 2, scope: !2713, file: !118, line: 931, type: !41)
!2717 = !DILocation(line: 0, scope: !2713)
!2718 = !DILocation(line: 933, column: 10, scope: !2713)
!2719 = !DILocation(line: 933, column: 3, scope: !2713)
!2720 = distinct !DISubprogram(name: "quotearg_n_options", scope: !118, file: !118, line: 877, type: !2721, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!35, !72, !41, !38, !1773}
!2723 = !{!2724, !2725, !2726, !2727, !2728, !2729, !2730, !2733, !2734, !2736, !2737, !2738}
!2724 = !DILocalVariable(name: "n", arg: 1, scope: !2720, file: !118, line: 877, type: !72)
!2725 = !DILocalVariable(name: "arg", arg: 2, scope: !2720, file: !118, line: 877, type: !41)
!2726 = !DILocalVariable(name: "argsize", arg: 3, scope: !2720, file: !118, line: 877, type: !38)
!2727 = !DILocalVariable(name: "options", arg: 4, scope: !2720, file: !118, line: 878, type: !1773)
!2728 = !DILocalVariable(name: "e", scope: !2720, file: !118, line: 880, type: !72)
!2729 = !DILocalVariable(name: "sv", scope: !2720, file: !118, line: 882, type: !168)
!2730 = !DILocalVariable(name: "preallocated", scope: !2731, file: !118, line: 889, type: !47)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 888, column: 5)
!2732 = distinct !DILexicalBlock(scope: !2720, file: !118, line: 887, column: 7)
!2733 = !DILocalVariable(name: "nmax", scope: !2731, file: !118, line: 890, type: !72)
!2734 = !DILocalVariable(name: "size", scope: !2735, file: !118, line: 903, type: !38)
!2735 = distinct !DILexicalBlock(scope: !2720, file: !118, line: 902, column: 3)
!2736 = !DILocalVariable(name: "val", scope: !2735, file: !118, line: 904, type: !35)
!2737 = !DILocalVariable(name: "flags", scope: !2735, file: !118, line: 906, type: !72)
!2738 = !DILocalVariable(name: "qsize", scope: !2735, file: !118, line: 907, type: !38)
!2739 = !DILocation(line: 0, scope: !2720)
!2740 = !DILocation(line: 880, column: 11, scope: !2720)
!2741 = !DILocation(line: 882, column: 24, scope: !2720)
!2742 = !DILocation(line: 884, column: 9, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2720, file: !118, line: 884, column: 7)
!2744 = !DILocation(line: 884, column: 7, scope: !2720)
!2745 = !DILocation(line: 885, column: 5, scope: !2743)
!2746 = !DILocation(line: 887, column: 7, scope: !2732)
!2747 = !DILocation(line: 887, column: 14, scope: !2732)
!2748 = !DILocation(line: 887, column: 7, scope: !2720)
!2749 = !DILocation(line: 889, column: 31, scope: !2731)
!2750 = !DILocation(line: 0, scope: !2731)
!2751 = !DILocation(line: 892, column: 16, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2731, file: !118, line: 892, column: 11)
!2753 = !DILocation(line: 892, column: 11, scope: !2731)
!2754 = !DILocation(line: 893, column: 9, scope: !2752)
!2755 = !DILocation(line: 895, column: 32, scope: !2731)
!2756 = !DILocation(line: 895, column: 61, scope: !2731)
!2757 = !DILocation(line: 895, column: 66, scope: !2731)
!2758 = !DILocation(line: 895, column: 22, scope: !2731)
!2759 = !DILocation(line: 895, column: 15, scope: !2731)
!2760 = !DILocation(line: 896, column: 11, scope: !2731)
!2761 = !DILocation(line: 897, column: 15, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2731, file: !118, line: 896, column: 11)
!2763 = !{i64 0, i64 8, !860, i64 8, i64 8, !681}
!2764 = !DILocation(line: 897, column: 9, scope: !2762)
!2765 = !DILocation(line: 898, column: 20, scope: !2731)
!2766 = !DILocation(line: 898, column: 18, scope: !2731)
!2767 = !DILocation(line: 898, column: 15, scope: !2731)
!2768 = !DILocation(line: 898, column: 38, scope: !2731)
!2769 = !DILocation(line: 898, column: 31, scope: !2731)
!2770 = !DILocation(line: 898, column: 48, scope: !2731)
!2771 = !DILocation(line: 0, scope: !2167, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 898, column: 7, scope: !2731)
!2773 = !DILocation(line: 59, column: 10, scope: !2167, inlinedAt: !2772)
!2774 = !DILocation(line: 899, column: 14, scope: !2731)
!2775 = !DILocation(line: 900, column: 5, scope: !2731)
!2776 = !DILocation(line: 903, column: 19, scope: !2735)
!2777 = !DILocation(line: 903, column: 25, scope: !2735)
!2778 = !DILocation(line: 0, scope: !2735)
!2779 = !DILocation(line: 904, column: 23, scope: !2735)
!2780 = !DILocation(line: 906, column: 26, scope: !2735)
!2781 = !DILocation(line: 906, column: 32, scope: !2735)
!2782 = !DILocation(line: 908, column: 55, scope: !2735)
!2783 = !DILocation(line: 909, column: 46, scope: !2735)
!2784 = !DILocation(line: 910, column: 55, scope: !2735)
!2785 = !DILocation(line: 911, column: 55, scope: !2735)
!2786 = !DILocation(line: 907, column: 20, scope: !2735)
!2787 = !DILocation(line: 913, column: 14, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2735, file: !118, line: 913, column: 9)
!2789 = !DILocation(line: 913, column: 9, scope: !2735)
!2790 = !DILocation(line: 915, column: 35, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !118, line: 914, column: 7)
!2792 = !DILocation(line: 915, column: 20, scope: !2791)
!2793 = !DILocation(line: 916, column: 17, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2791, file: !118, line: 916, column: 13)
!2795 = !DILocation(line: 916, column: 13, scope: !2791)
!2796 = !DILocation(line: 917, column: 11, scope: !2794)
!2797 = !DILocation(line: 0, scope: !2637, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 918, column: 27, scope: !2791)
!2799 = !DILocation(line: 218, column: 10, scope: !2637, inlinedAt: !2798)
!2800 = !DILocation(line: 918, column: 19, scope: !2791)
!2801 = !DILocation(line: 919, column: 69, scope: !2791)
!2802 = !DILocation(line: 921, column: 44, scope: !2791)
!2803 = !DILocation(line: 922, column: 44, scope: !2791)
!2804 = !DILocation(line: 919, column: 9, scope: !2791)
!2805 = !DILocation(line: 923, column: 7, scope: !2791)
!2806 = !DILocation(line: 925, column: 11, scope: !2735)
!2807 = !DILocation(line: 926, column: 5, scope: !2735)
!2808 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !118, file: !118, line: 937, type: !2809, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!35, !72, !41, !38}
!2811 = !{!2812, !2813, !2814}
!2812 = !DILocalVariable(name: "n", arg: 1, scope: !2808, file: !118, line: 937, type: !72)
!2813 = !DILocalVariable(name: "arg", arg: 2, scope: !2808, file: !118, line: 937, type: !41)
!2814 = !DILocalVariable(name: "argsize", arg: 3, scope: !2808, file: !118, line: 937, type: !38)
!2815 = !DILocation(line: 0, scope: !2808)
!2816 = !DILocation(line: 939, column: 10, scope: !2808)
!2817 = !DILocation(line: 939, column: 3, scope: !2808)
!2818 = distinct !DISubprogram(name: "quotearg", scope: !118, file: !118, line: 943, type: !1158, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2819)
!2819 = !{!2820}
!2820 = !DILocalVariable(name: "arg", arg: 1, scope: !2818, file: !118, line: 943, type: !41)
!2821 = !DILocation(line: 0, scope: !2818)
!2822 = !DILocation(line: 0, scope: !2713, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 945, column: 10, scope: !2818)
!2824 = !DILocation(line: 933, column: 10, scope: !2713, inlinedAt: !2823)
!2825 = !DILocation(line: 945, column: 3, scope: !2818)
!2826 = distinct !DISubprogram(name: "quotearg_mem", scope: !118, file: !118, line: 949, type: !2827, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!35, !41, !38}
!2829 = !{!2830, !2831}
!2830 = !DILocalVariable(name: "arg", arg: 1, scope: !2826, file: !118, line: 949, type: !41)
!2831 = !DILocalVariable(name: "argsize", arg: 2, scope: !2826, file: !118, line: 949, type: !38)
!2832 = !DILocation(line: 0, scope: !2826)
!2833 = !DILocation(line: 0, scope: !2808, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 951, column: 10, scope: !2826)
!2835 = !DILocation(line: 939, column: 10, scope: !2808, inlinedAt: !2834)
!2836 = !DILocation(line: 951, column: 3, scope: !2826)
!2837 = distinct !DISubprogram(name: "quotearg_n_style", scope: !118, file: !118, line: 955, type: !2838, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!35, !72, !11, !41}
!2840 = !{!2841, !2842, !2843, !2844}
!2841 = !DILocalVariable(name: "n", arg: 1, scope: !2837, file: !118, line: 955, type: !72)
!2842 = !DILocalVariable(name: "s", arg: 2, scope: !2837, file: !118, line: 955, type: !11)
!2843 = !DILocalVariable(name: "arg", arg: 3, scope: !2837, file: !118, line: 955, type: !41)
!2844 = !DILocalVariable(name: "o", scope: !2837, file: !118, line: 957, type: !1774)
!2845 = !DILocation(line: 0, scope: !2837)
!2846 = !DILocation(line: 957, column: 3, scope: !2837)
!2847 = !DILocation(line: 957, column: 32, scope: !2837)
!2848 = !{!2849}
!2849 = distinct !{!2849, !2850, !"quoting_options_from_style: argument 0"}
!2850 = distinct !{!2850, !"quoting_options_from_style"}
!2851 = !DILocation(line: 957, column: 36, scope: !2837)
!2852 = !DILocalVariable(name: "style", arg: 1, scope: !2853, file: !118, line: 193, type: !11)
!2853 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !118, file: !118, line: 193, type: !2854, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!151, !11}
!2856 = !{!2852, !2857}
!2857 = !DILocalVariable(name: "o", scope: !2853, file: !118, line: 195, type: !151)
!2858 = !DILocation(line: 0, scope: !2853, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 957, column: 36, scope: !2837)
!2860 = !DILocation(line: 195, column: 26, scope: !2853, inlinedAt: !2859)
!2861 = !DILocation(line: 196, column: 13, scope: !2862, inlinedAt: !2859)
!2862 = distinct !DILexicalBlock(scope: !2853, file: !118, line: 196, column: 7)
!2863 = !DILocation(line: 196, column: 7, scope: !2853, inlinedAt: !2859)
!2864 = !DILocation(line: 197, column: 5, scope: !2862, inlinedAt: !2859)
!2865 = !DILocation(line: 198, column: 5, scope: !2853, inlinedAt: !2859)
!2866 = !DILocation(line: 198, column: 11, scope: !2853, inlinedAt: !2859)
!2867 = !DILocation(line: 958, column: 10, scope: !2837)
!2868 = !DILocation(line: 959, column: 1, scope: !2837)
!2869 = !DILocation(line: 958, column: 3, scope: !2837)
!2870 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !118, file: !118, line: 962, type: !2871, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!35, !72, !11, !41, !38}
!2873 = !{!2874, !2875, !2876, !2877, !2878}
!2874 = !DILocalVariable(name: "n", arg: 1, scope: !2870, file: !118, line: 962, type: !72)
!2875 = !DILocalVariable(name: "s", arg: 2, scope: !2870, file: !118, line: 962, type: !11)
!2876 = !DILocalVariable(name: "arg", arg: 3, scope: !2870, file: !118, line: 963, type: !41)
!2877 = !DILocalVariable(name: "argsize", arg: 4, scope: !2870, file: !118, line: 963, type: !38)
!2878 = !DILocalVariable(name: "o", scope: !2870, file: !118, line: 965, type: !1774)
!2879 = !DILocation(line: 0, scope: !2870)
!2880 = !DILocation(line: 965, column: 3, scope: !2870)
!2881 = !DILocation(line: 965, column: 32, scope: !2870)
!2882 = !{!2883}
!2883 = distinct !{!2883, !2884, !"quoting_options_from_style: argument 0"}
!2884 = distinct !{!2884, !"quoting_options_from_style"}
!2885 = !DILocation(line: 965, column: 36, scope: !2870)
!2886 = !DILocation(line: 0, scope: !2853, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 965, column: 36, scope: !2870)
!2888 = !DILocation(line: 195, column: 26, scope: !2853, inlinedAt: !2887)
!2889 = !DILocation(line: 196, column: 13, scope: !2862, inlinedAt: !2887)
!2890 = !DILocation(line: 196, column: 7, scope: !2853, inlinedAt: !2887)
!2891 = !DILocation(line: 197, column: 5, scope: !2862, inlinedAt: !2887)
!2892 = !DILocation(line: 198, column: 5, scope: !2853, inlinedAt: !2887)
!2893 = !DILocation(line: 198, column: 11, scope: !2853, inlinedAt: !2887)
!2894 = !DILocation(line: 966, column: 10, scope: !2870)
!2895 = !DILocation(line: 967, column: 1, scope: !2870)
!2896 = !DILocation(line: 966, column: 3, scope: !2870)
!2897 = distinct !DISubprogram(name: "quotearg_style", scope: !118, file: !118, line: 970, type: !2898, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!35, !11, !41}
!2900 = !{!2901, !2902}
!2901 = !DILocalVariable(name: "s", arg: 1, scope: !2897, file: !118, line: 970, type: !11)
!2902 = !DILocalVariable(name: "arg", arg: 2, scope: !2897, file: !118, line: 970, type: !41)
!2903 = !DILocation(line: 0, scope: !2897)
!2904 = !DILocation(line: 0, scope: !2837, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 972, column: 10, scope: !2897)
!2906 = !DILocation(line: 957, column: 3, scope: !2837, inlinedAt: !2905)
!2907 = !DILocation(line: 957, column: 32, scope: !2837, inlinedAt: !2905)
!2908 = !{!2909}
!2909 = distinct !{!2909, !2910, !"quoting_options_from_style: argument 0"}
!2910 = distinct !{!2910, !"quoting_options_from_style"}
!2911 = !DILocation(line: 957, column: 36, scope: !2837, inlinedAt: !2905)
!2912 = !DILocation(line: 0, scope: !2853, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 957, column: 36, scope: !2837, inlinedAt: !2905)
!2914 = !DILocation(line: 195, column: 26, scope: !2853, inlinedAt: !2913)
!2915 = !DILocation(line: 196, column: 13, scope: !2862, inlinedAt: !2913)
!2916 = !DILocation(line: 196, column: 7, scope: !2853, inlinedAt: !2913)
!2917 = !DILocation(line: 197, column: 5, scope: !2862, inlinedAt: !2913)
!2918 = !DILocation(line: 198, column: 5, scope: !2853, inlinedAt: !2913)
!2919 = !DILocation(line: 198, column: 11, scope: !2853, inlinedAt: !2913)
!2920 = !DILocation(line: 958, column: 10, scope: !2837, inlinedAt: !2905)
!2921 = !DILocation(line: 959, column: 1, scope: !2837, inlinedAt: !2905)
!2922 = !DILocation(line: 972, column: 3, scope: !2897)
!2923 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !118, file: !118, line: 976, type: !2924, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!35, !11, !41, !38}
!2926 = !{!2927, !2928, !2929}
!2927 = !DILocalVariable(name: "s", arg: 1, scope: !2923, file: !118, line: 976, type: !11)
!2928 = !DILocalVariable(name: "arg", arg: 2, scope: !2923, file: !118, line: 976, type: !41)
!2929 = !DILocalVariable(name: "argsize", arg: 3, scope: !2923, file: !118, line: 976, type: !38)
!2930 = !DILocation(line: 0, scope: !2923)
!2931 = !DILocation(line: 0, scope: !2870, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 978, column: 10, scope: !2923)
!2933 = !DILocation(line: 965, column: 3, scope: !2870, inlinedAt: !2932)
!2934 = !DILocation(line: 965, column: 32, scope: !2870, inlinedAt: !2932)
!2935 = !{!2936}
!2936 = distinct !{!2936, !2937, !"quoting_options_from_style: argument 0"}
!2937 = distinct !{!2937, !"quoting_options_from_style"}
!2938 = !DILocation(line: 965, column: 36, scope: !2870, inlinedAt: !2932)
!2939 = !DILocation(line: 0, scope: !2853, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 965, column: 36, scope: !2870, inlinedAt: !2932)
!2941 = !DILocation(line: 195, column: 26, scope: !2853, inlinedAt: !2940)
!2942 = !DILocation(line: 196, column: 13, scope: !2862, inlinedAt: !2940)
!2943 = !DILocation(line: 196, column: 7, scope: !2853, inlinedAt: !2940)
!2944 = !DILocation(line: 197, column: 5, scope: !2862, inlinedAt: !2940)
!2945 = !DILocation(line: 198, column: 5, scope: !2853, inlinedAt: !2940)
!2946 = !DILocation(line: 198, column: 11, scope: !2853, inlinedAt: !2940)
!2947 = !DILocation(line: 966, column: 10, scope: !2870, inlinedAt: !2932)
!2948 = !DILocation(line: 967, column: 1, scope: !2870, inlinedAt: !2932)
!2949 = !DILocation(line: 978, column: 3, scope: !2923)
!2950 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !118, file: !118, line: 982, type: !2951, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!35, !41, !38, !36}
!2953 = !{!2954, !2955, !2956, !2957}
!2954 = !DILocalVariable(name: "arg", arg: 1, scope: !2950, file: !118, line: 982, type: !41)
!2955 = !DILocalVariable(name: "argsize", arg: 2, scope: !2950, file: !118, line: 982, type: !38)
!2956 = !DILocalVariable(name: "ch", arg: 3, scope: !2950, file: !118, line: 982, type: !36)
!2957 = !DILocalVariable(name: "options", scope: !2950, file: !118, line: 984, type: !151)
!2958 = !DILocation(line: 0, scope: !2950)
!2959 = !DILocation(line: 984, column: 3, scope: !2950)
!2960 = !DILocation(line: 984, column: 26, scope: !2950)
!2961 = !DILocation(line: 985, column: 13, scope: !2950)
!2962 = !{i64 0, i64 4, !841, i64 4, i64 4, !886, i64 8, i64 32, !841, i64 40, i64 8, !681, i64 48, i64 8, !681}
!2963 = !DILocation(line: 0, scope: !1794, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 986, column: 3, scope: !2950)
!2965 = !DILocation(line: 156, column: 62, scope: !1794, inlinedAt: !2964)
!2966 = !DILocation(line: 156, column: 57, scope: !1794, inlinedAt: !2964)
!2967 = !DILocation(line: 157, column: 15, scope: !1794, inlinedAt: !2964)
!2968 = !DILocation(line: 158, column: 12, scope: !1794, inlinedAt: !2964)
!2969 = !DILocation(line: 158, column: 15, scope: !1794, inlinedAt: !2964)
!2970 = !DILocation(line: 158, column: 25, scope: !1794, inlinedAt: !2964)
!2971 = !DILocation(line: 159, column: 18, scope: !1794, inlinedAt: !2964)
!2972 = !DILocation(line: 159, column: 23, scope: !1794, inlinedAt: !2964)
!2973 = !DILocation(line: 159, column: 6, scope: !1794, inlinedAt: !2964)
!2974 = !DILocation(line: 987, column: 10, scope: !2950)
!2975 = !DILocation(line: 988, column: 1, scope: !2950)
!2976 = !DILocation(line: 987, column: 3, scope: !2950)
!2977 = distinct !DISubprogram(name: "quotearg_char", scope: !118, file: !118, line: 991, type: !2978, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!35, !41, !36}
!2980 = !{!2981, !2982}
!2981 = !DILocalVariable(name: "arg", arg: 1, scope: !2977, file: !118, line: 991, type: !41)
!2982 = !DILocalVariable(name: "ch", arg: 2, scope: !2977, file: !118, line: 991, type: !36)
!2983 = !DILocation(line: 0, scope: !2977)
!2984 = !DILocation(line: 0, scope: !2950, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 993, column: 10, scope: !2977)
!2986 = !DILocation(line: 984, column: 3, scope: !2950, inlinedAt: !2985)
!2987 = !DILocation(line: 984, column: 26, scope: !2950, inlinedAt: !2985)
!2988 = !DILocation(line: 985, column: 13, scope: !2950, inlinedAt: !2985)
!2989 = !DILocation(line: 0, scope: !1794, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 986, column: 3, scope: !2950, inlinedAt: !2985)
!2991 = !DILocation(line: 156, column: 62, scope: !1794, inlinedAt: !2990)
!2992 = !DILocation(line: 156, column: 57, scope: !1794, inlinedAt: !2990)
!2993 = !DILocation(line: 157, column: 15, scope: !1794, inlinedAt: !2990)
!2994 = !DILocation(line: 158, column: 12, scope: !1794, inlinedAt: !2990)
!2995 = !DILocation(line: 158, column: 15, scope: !1794, inlinedAt: !2990)
!2996 = !DILocation(line: 158, column: 25, scope: !1794, inlinedAt: !2990)
!2997 = !DILocation(line: 159, column: 18, scope: !1794, inlinedAt: !2990)
!2998 = !DILocation(line: 159, column: 23, scope: !1794, inlinedAt: !2990)
!2999 = !DILocation(line: 159, column: 6, scope: !1794, inlinedAt: !2990)
!3000 = !DILocation(line: 987, column: 10, scope: !2950, inlinedAt: !2985)
!3001 = !DILocation(line: 988, column: 1, scope: !2950, inlinedAt: !2985)
!3002 = !DILocation(line: 993, column: 3, scope: !2977)
!3003 = distinct !DISubprogram(name: "quotearg_colon", scope: !118, file: !118, line: 997, type: !1158, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !3004)
!3004 = !{!3005}
!3005 = !DILocalVariable(name: "arg", arg: 1, scope: !3003, file: !118, line: 997, type: !41)
!3006 = !DILocation(line: 0, scope: !3003)
!3007 = !DILocation(line: 0, scope: !2977, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 999, column: 10, scope: !3003)
!3009 = !DILocation(line: 0, scope: !2950, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 993, column: 10, scope: !2977, inlinedAt: !3008)
!3011 = !DILocation(line: 984, column: 3, scope: !2950, inlinedAt: !3010)
!3012 = !DILocation(line: 984, column: 26, scope: !2950, inlinedAt: !3010)
!3013 = !DILocation(line: 985, column: 13, scope: !2950, inlinedAt: !3010)
!3014 = !DILocation(line: 0, scope: !1794, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 986, column: 3, scope: !2950, inlinedAt: !3010)
!3016 = !DILocation(line: 156, column: 57, scope: !1794, inlinedAt: !3015)
!3017 = !DILocation(line: 158, column: 12, scope: !1794, inlinedAt: !3015)
!3018 = !DILocation(line: 159, column: 6, scope: !1794, inlinedAt: !3015)
!3019 = !DILocation(line: 987, column: 10, scope: !2950, inlinedAt: !3010)
!3020 = !DILocation(line: 988, column: 1, scope: !2950, inlinedAt: !3010)
!3021 = !DILocation(line: 999, column: 3, scope: !3003)
!3022 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !118, file: !118, line: 1003, type: !2827, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !3023)
!3023 = !{!3024, !3025}
!3024 = !DILocalVariable(name: "arg", arg: 1, scope: !3022, file: !118, line: 1003, type: !41)
!3025 = !DILocalVariable(name: "argsize", arg: 2, scope: !3022, file: !118, line: 1003, type: !38)
!3026 = !DILocation(line: 0, scope: !3022)
!3027 = !DILocation(line: 0, scope: !2950, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 1005, column: 10, scope: !3022)
!3029 = !DILocation(line: 984, column: 3, scope: !2950, inlinedAt: !3028)
!3030 = !DILocation(line: 984, column: 26, scope: !2950, inlinedAt: !3028)
!3031 = !DILocation(line: 985, column: 13, scope: !2950, inlinedAt: !3028)
!3032 = !DILocation(line: 0, scope: !1794, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 986, column: 3, scope: !2950, inlinedAt: !3028)
!3034 = !DILocation(line: 156, column: 57, scope: !1794, inlinedAt: !3033)
!3035 = !DILocation(line: 158, column: 12, scope: !1794, inlinedAt: !3033)
!3036 = !DILocation(line: 159, column: 6, scope: !1794, inlinedAt: !3033)
!3037 = !DILocation(line: 987, column: 10, scope: !2950, inlinedAt: !3028)
!3038 = !DILocation(line: 988, column: 1, scope: !2950, inlinedAt: !3028)
!3039 = !DILocation(line: 1005, column: 3, scope: !3022)
!3040 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !118, file: !118, line: 1009, type: !2838, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !3041)
!3041 = !{!3042, !3043, !3044, !3045}
!3042 = !DILocalVariable(name: "n", arg: 1, scope: !3040, file: !118, line: 1009, type: !72)
!3043 = !DILocalVariable(name: "s", arg: 2, scope: !3040, file: !118, line: 1009, type: !11)
!3044 = !DILocalVariable(name: "arg", arg: 3, scope: !3040, file: !118, line: 1009, type: !41)
!3045 = !DILocalVariable(name: "options", scope: !3040, file: !118, line: 1011, type: !151)
!3046 = !DILocation(line: 195, column: 26, scope: !2853, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 1012, column: 13, scope: !3040)
!3048 = !DILocation(line: 0, scope: !3040)
!3049 = !DILocation(line: 1011, column: 3, scope: !3040)
!3050 = !DILocation(line: 1011, column: 26, scope: !3040)
!3051 = !DILocation(line: 1012, column: 13, scope: !3040)
!3052 = !{!3053}
!3053 = distinct !{!3053, !3054, !"quoting_options_from_style: argument 0"}
!3054 = distinct !{!3054, !"quoting_options_from_style"}
!3055 = !DILocation(line: 0, scope: !2853, inlinedAt: !3047)
!3056 = !DILocation(line: 196, column: 13, scope: !2862, inlinedAt: !3047)
!3057 = !DILocation(line: 196, column: 7, scope: !2853, inlinedAt: !3047)
!3058 = !DILocation(line: 197, column: 5, scope: !2862, inlinedAt: !3047)
!3059 = !{i64 0, i64 4, !886, i64 4, i64 32, !841, i64 36, i64 8, !681, i64 44, i64 8, !681}
!3060 = !DILocation(line: 0, scope: !1794, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 1013, column: 3, scope: !3040)
!3062 = !DILocation(line: 156, column: 57, scope: !1794, inlinedAt: !3061)
!3063 = !DILocation(line: 158, column: 12, scope: !1794, inlinedAt: !3061)
!3064 = !DILocation(line: 159, column: 6, scope: !1794, inlinedAt: !3061)
!3065 = !DILocation(line: 1014, column: 10, scope: !3040)
!3066 = !DILocation(line: 1015, column: 1, scope: !3040)
!3067 = !DILocation(line: 1014, column: 3, scope: !3040)
!3068 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !118, file: !118, line: 1018, type: !3069, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!35, !72, !41, !41, !41}
!3071 = !{!3072, !3073, !3074, !3075}
!3072 = !DILocalVariable(name: "n", arg: 1, scope: !3068, file: !118, line: 1018, type: !72)
!3073 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3068, file: !118, line: 1018, type: !41)
!3074 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3068, file: !118, line: 1019, type: !41)
!3075 = !DILocalVariable(name: "arg", arg: 4, scope: !3068, file: !118, line: 1019, type: !41)
!3076 = !DILocation(line: 0, scope: !3068)
!3077 = !DILocalVariable(name: "n", arg: 1, scope: !3078, file: !118, line: 1026, type: !72)
!3078 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !118, file: !118, line: 1026, type: !3079, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !3081)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!35, !72, !41, !41, !41, !38}
!3081 = !{!3077, !3082, !3083, !3084, !3085, !3086}
!3082 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3078, file: !118, line: 1026, type: !41)
!3083 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3078, file: !118, line: 1027, type: !41)
!3084 = !DILocalVariable(name: "arg", arg: 4, scope: !3078, file: !118, line: 1028, type: !41)
!3085 = !DILocalVariable(name: "argsize", arg: 5, scope: !3078, file: !118, line: 1028, type: !38)
!3086 = !DILocalVariable(name: "o", scope: !3078, file: !118, line: 1030, type: !151)
!3087 = !DILocation(line: 0, scope: !3078, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 1021, column: 10, scope: !3068)
!3089 = !DILocation(line: 1030, column: 3, scope: !3078, inlinedAt: !3088)
!3090 = !DILocation(line: 1030, column: 26, scope: !3078, inlinedAt: !3088)
!3091 = !DILocation(line: 1030, column: 30, scope: !3078, inlinedAt: !3088)
!3092 = !DILocation(line: 0, scope: !1834, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 1031, column: 3, scope: !3078, inlinedAt: !3088)
!3094 = !DILocation(line: 184, column: 6, scope: !1834, inlinedAt: !3093)
!3095 = !DILocation(line: 184, column: 12, scope: !1834, inlinedAt: !3093)
!3096 = !DILocation(line: 185, column: 8, scope: !1848, inlinedAt: !3093)
!3097 = !DILocation(line: 185, column: 19, scope: !1848, inlinedAt: !3093)
!3098 = !DILocation(line: 186, column: 5, scope: !1848, inlinedAt: !3093)
!3099 = !DILocation(line: 187, column: 6, scope: !1834, inlinedAt: !3093)
!3100 = !DILocation(line: 187, column: 17, scope: !1834, inlinedAt: !3093)
!3101 = !DILocation(line: 188, column: 6, scope: !1834, inlinedAt: !3093)
!3102 = !DILocation(line: 188, column: 18, scope: !1834, inlinedAt: !3093)
!3103 = !DILocation(line: 1032, column: 10, scope: !3078, inlinedAt: !3088)
!3104 = !DILocation(line: 1033, column: 1, scope: !3078, inlinedAt: !3088)
!3105 = !DILocation(line: 1021, column: 3, scope: !3068)
!3106 = !DILocation(line: 0, scope: !3078)
!3107 = !DILocation(line: 1030, column: 3, scope: !3078)
!3108 = !DILocation(line: 1030, column: 26, scope: !3078)
!3109 = !DILocation(line: 1030, column: 30, scope: !3078)
!3110 = !DILocation(line: 0, scope: !1834, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 1031, column: 3, scope: !3078)
!3112 = !DILocation(line: 184, column: 6, scope: !1834, inlinedAt: !3111)
!3113 = !DILocation(line: 184, column: 12, scope: !1834, inlinedAt: !3111)
!3114 = !DILocation(line: 185, column: 8, scope: !1848, inlinedAt: !3111)
!3115 = !DILocation(line: 185, column: 19, scope: !1848, inlinedAt: !3111)
!3116 = !DILocation(line: 186, column: 5, scope: !1848, inlinedAt: !3111)
!3117 = !DILocation(line: 187, column: 6, scope: !1834, inlinedAt: !3111)
!3118 = !DILocation(line: 187, column: 17, scope: !1834, inlinedAt: !3111)
!3119 = !DILocation(line: 188, column: 6, scope: !1834, inlinedAt: !3111)
!3120 = !DILocation(line: 188, column: 18, scope: !1834, inlinedAt: !3111)
!3121 = !DILocation(line: 1032, column: 10, scope: !3078)
!3122 = !DILocation(line: 1033, column: 1, scope: !3078)
!3123 = !DILocation(line: 1032, column: 3, scope: !3078)
!3124 = distinct !DISubprogram(name: "quotearg_custom", scope: !118, file: !118, line: 1036, type: !3125, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!35, !41, !41, !41}
!3127 = !{!3128, !3129, !3130}
!3128 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3124, file: !118, line: 1036, type: !41)
!3129 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3124, file: !118, line: 1036, type: !41)
!3130 = !DILocalVariable(name: "arg", arg: 3, scope: !3124, file: !118, line: 1037, type: !41)
!3131 = !DILocation(line: 0, scope: !3124)
!3132 = !DILocation(line: 0, scope: !3068, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 1039, column: 10, scope: !3124)
!3134 = !DILocation(line: 0, scope: !3078, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 1021, column: 10, scope: !3068, inlinedAt: !3133)
!3136 = !DILocation(line: 1030, column: 3, scope: !3078, inlinedAt: !3135)
!3137 = !DILocation(line: 1030, column: 26, scope: !3078, inlinedAt: !3135)
!3138 = !DILocation(line: 1030, column: 30, scope: !3078, inlinedAt: !3135)
!3139 = !DILocation(line: 0, scope: !1834, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 1031, column: 3, scope: !3078, inlinedAt: !3135)
!3141 = !DILocation(line: 184, column: 6, scope: !1834, inlinedAt: !3140)
!3142 = !DILocation(line: 184, column: 12, scope: !1834, inlinedAt: !3140)
!3143 = !DILocation(line: 185, column: 8, scope: !1848, inlinedAt: !3140)
!3144 = !DILocation(line: 185, column: 19, scope: !1848, inlinedAt: !3140)
!3145 = !DILocation(line: 186, column: 5, scope: !1848, inlinedAt: !3140)
!3146 = !DILocation(line: 187, column: 6, scope: !1834, inlinedAt: !3140)
!3147 = !DILocation(line: 187, column: 17, scope: !1834, inlinedAt: !3140)
!3148 = !DILocation(line: 188, column: 6, scope: !1834, inlinedAt: !3140)
!3149 = !DILocation(line: 188, column: 18, scope: !1834, inlinedAt: !3140)
!3150 = !DILocation(line: 1032, column: 10, scope: !3078, inlinedAt: !3135)
!3151 = !DILocation(line: 1033, column: 1, scope: !3078, inlinedAt: !3135)
!3152 = !DILocation(line: 1039, column: 3, scope: !3124)
!3153 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !118, file: !118, line: 1043, type: !3154, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!35, !41, !41, !41, !38}
!3156 = !{!3157, !3158, !3159, !3160}
!3157 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3153, file: !118, line: 1043, type: !41)
!3158 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3153, file: !118, line: 1043, type: !41)
!3159 = !DILocalVariable(name: "arg", arg: 3, scope: !3153, file: !118, line: 1044, type: !41)
!3160 = !DILocalVariable(name: "argsize", arg: 4, scope: !3153, file: !118, line: 1044, type: !38)
!3161 = !DILocation(line: 0, scope: !3153)
!3162 = !DILocation(line: 0, scope: !3078, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 1046, column: 10, scope: !3153)
!3164 = !DILocation(line: 1030, column: 3, scope: !3078, inlinedAt: !3163)
!3165 = !DILocation(line: 1030, column: 26, scope: !3078, inlinedAt: !3163)
!3166 = !DILocation(line: 1030, column: 30, scope: !3078, inlinedAt: !3163)
!3167 = !DILocation(line: 0, scope: !1834, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 1031, column: 3, scope: !3078, inlinedAt: !3163)
!3169 = !DILocation(line: 184, column: 6, scope: !1834, inlinedAt: !3168)
!3170 = !DILocation(line: 184, column: 12, scope: !1834, inlinedAt: !3168)
!3171 = !DILocation(line: 185, column: 8, scope: !1848, inlinedAt: !3168)
!3172 = !DILocation(line: 185, column: 19, scope: !1848, inlinedAt: !3168)
!3173 = !DILocation(line: 186, column: 5, scope: !1848, inlinedAt: !3168)
!3174 = !DILocation(line: 187, column: 6, scope: !1834, inlinedAt: !3168)
!3175 = !DILocation(line: 187, column: 17, scope: !1834, inlinedAt: !3168)
!3176 = !DILocation(line: 188, column: 6, scope: !1834, inlinedAt: !3168)
!3177 = !DILocation(line: 188, column: 18, scope: !1834, inlinedAt: !3168)
!3178 = !DILocation(line: 1032, column: 10, scope: !3078, inlinedAt: !3163)
!3179 = !DILocation(line: 1033, column: 1, scope: !3078, inlinedAt: !3163)
!3180 = !DILocation(line: 1046, column: 3, scope: !3153)
!3181 = distinct !DISubprogram(name: "quote_n_mem", scope: !118, file: !118, line: 1061, type: !3182, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!41, !72, !41, !38}
!3184 = !{!3185, !3186, !3187}
!3185 = !DILocalVariable(name: "n", arg: 1, scope: !3181, file: !118, line: 1061, type: !72)
!3186 = !DILocalVariable(name: "arg", arg: 2, scope: !3181, file: !118, line: 1061, type: !41)
!3187 = !DILocalVariable(name: "argsize", arg: 3, scope: !3181, file: !118, line: 1061, type: !38)
!3188 = !DILocation(line: 0, scope: !3181)
!3189 = !DILocation(line: 1063, column: 10, scope: !3181)
!3190 = !DILocation(line: 1063, column: 3, scope: !3181)
!3191 = distinct !DISubprogram(name: "quote_mem", scope: !118, file: !118, line: 1067, type: !3192, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!41, !41, !38}
!3194 = !{!3195, !3196}
!3195 = !DILocalVariable(name: "arg", arg: 1, scope: !3191, file: !118, line: 1067, type: !41)
!3196 = !DILocalVariable(name: "argsize", arg: 2, scope: !3191, file: !118, line: 1067, type: !38)
!3197 = !DILocation(line: 0, scope: !3191)
!3198 = !DILocation(line: 0, scope: !3181, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 1069, column: 10, scope: !3191)
!3200 = !DILocation(line: 1063, column: 10, scope: !3181, inlinedAt: !3199)
!3201 = !DILocation(line: 1069, column: 3, scope: !3191)
!3202 = distinct !DISubprogram(name: "quote_n", scope: !118, file: !118, line: 1073, type: !3203, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !3205)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!41, !72, !41}
!3205 = !{!3206, !3207}
!3206 = !DILocalVariable(name: "n", arg: 1, scope: !3202, file: !118, line: 1073, type: !72)
!3207 = !DILocalVariable(name: "arg", arg: 2, scope: !3202, file: !118, line: 1073, type: !41)
!3208 = !DILocation(line: 0, scope: !3202)
!3209 = !DILocation(line: 0, scope: !3181, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 1075, column: 10, scope: !3202)
!3211 = !DILocation(line: 1063, column: 10, scope: !3181, inlinedAt: !3210)
!3212 = !DILocation(line: 1075, column: 3, scope: !3202)
!3213 = distinct !DISubprogram(name: "quote", scope: !118, file: !118, line: 1079, type: !3214, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!41, !41}
!3216 = !{!3217}
!3217 = !DILocalVariable(name: "arg", arg: 1, scope: !3213, file: !118, line: 1079, type: !41)
!3218 = !DILocation(line: 0, scope: !3213)
!3219 = !DILocation(line: 0, scope: !3202, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 1081, column: 10, scope: !3213)
!3221 = !DILocation(line: 0, scope: !3181, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 1075, column: 10, scope: !3202, inlinedAt: !3220)
!3223 = !DILocation(line: 1063, column: 10, scope: !3181, inlinedAt: !3222)
!3224 = !DILocation(line: 1081, column: 3, scope: !3213)
!3225 = distinct !DISubprogram(name: "setlocale_null_r", scope: !228, file: !228, line: 269, type: !3226, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3228)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!72, !72, !35, !38}
!3228 = !{!3229, !3230, !3231}
!3229 = !DILocalVariable(name: "category", arg: 1, scope: !3225, file: !228, line: 269, type: !72)
!3230 = !DILocalVariable(name: "buf", arg: 2, scope: !3225, file: !228, line: 269, type: !35)
!3231 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3225, file: !228, line: 269, type: !38)
!3232 = !DILocation(line: 0, scope: !3225)
!3233 = !DILocalVariable(name: "category", arg: 1, scope: !3234, file: !228, line: 91, type: !72)
!3234 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !228, file: !228, line: 91, type: !3226, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3235)
!3235 = !{!3233, !3236, !3237, !3238, !3239}
!3236 = !DILocalVariable(name: "buf", arg: 2, scope: !3234, file: !228, line: 91, type: !35)
!3237 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3234, file: !228, line: 91, type: !38)
!3238 = !DILocalVariable(name: "result", scope: !3234, file: !228, line: 140, type: !41)
!3239 = !DILocalVariable(name: "length", scope: !3240, file: !228, line: 154, type: !38)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !228, line: 153, column: 5)
!3241 = distinct !DILexicalBlock(scope: !3234, file: !228, line: 142, column: 7)
!3242 = !DILocation(line: 0, scope: !3234, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 274, column: 10, scope: !3225)
!3244 = !DILocalVariable(name: "category", arg: 1, scope: !3245, file: !228, line: 60, type: !72)
!3245 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !228, file: !228, line: 60, type: !3246, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!41, !72}
!3248 = !{!3244, !3249}
!3249 = !DILocalVariable(name: "result", scope: !3245, file: !228, line: 62, type: !41)
!3250 = !DILocation(line: 0, scope: !3245, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 140, column: 24, scope: !3234, inlinedAt: !3243)
!3252 = !DILocation(line: 62, column: 24, scope: !3245, inlinedAt: !3251)
!3253 = !DILocation(line: 142, column: 14, scope: !3241, inlinedAt: !3243)
!3254 = !DILocation(line: 142, column: 7, scope: !3234, inlinedAt: !3243)
!3255 = !DILocation(line: 145, column: 19, scope: !3256, inlinedAt: !3243)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !228, line: 145, column: 11)
!3257 = distinct !DILexicalBlock(scope: !3241, file: !228, line: 143, column: 5)
!3258 = !DILocation(line: 145, column: 11, scope: !3257, inlinedAt: !3243)
!3259 = !DILocation(line: 149, column: 16, scope: !3256, inlinedAt: !3243)
!3260 = !DILocation(line: 149, column: 9, scope: !3256, inlinedAt: !3243)
!3261 = !DILocation(line: 154, column: 23, scope: !3240, inlinedAt: !3243)
!3262 = !DILocation(line: 0, scope: !3240, inlinedAt: !3243)
!3263 = !DILocation(line: 155, column: 18, scope: !3264, inlinedAt: !3243)
!3264 = distinct !DILexicalBlock(scope: !3240, file: !228, line: 155, column: 11)
!3265 = !DILocation(line: 155, column: 11, scope: !3240, inlinedAt: !3243)
!3266 = !DILocation(line: 157, column: 39, scope: !3267, inlinedAt: !3243)
!3267 = distinct !DILexicalBlock(scope: !3264, file: !228, line: 156, column: 9)
!3268 = !DILocalVariable(name: "__dest", arg: 1, scope: !3269, file: !1508, line: 26, type: !3272)
!3269 = distinct !DISubprogram(name: "memcpy", scope: !1508, file: !1508, line: 26, type: !3270, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3274)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!37, !3272, !3273, !38}
!3272 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!3273 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1201)
!3274 = !{!3268, !3275, !3276}
!3275 = !DILocalVariable(name: "__src", arg: 2, scope: !3269, file: !1508, line: 26, type: !3273)
!3276 = !DILocalVariable(name: "__len", arg: 3, scope: !3269, file: !1508, line: 26, type: !38)
!3277 = !DILocation(line: 0, scope: !3269, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 157, column: 11, scope: !3267, inlinedAt: !3243)
!3279 = !DILocation(line: 29, column: 10, scope: !3269, inlinedAt: !3278)
!3280 = !DILocation(line: 158, column: 11, scope: !3267, inlinedAt: !3243)
!3281 = !DILocation(line: 162, column: 23, scope: !3282, inlinedAt: !3243)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !228, line: 162, column: 15)
!3283 = distinct !DILexicalBlock(scope: !3264, file: !228, line: 161, column: 9)
!3284 = !DILocation(line: 162, column: 15, scope: !3283, inlinedAt: !3243)
!3285 = !DILocation(line: 167, column: 44, scope: !3286, inlinedAt: !3243)
!3286 = distinct !DILexicalBlock(scope: !3282, file: !228, line: 163, column: 13)
!3287 = !DILocation(line: 0, scope: !3269, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 167, column: 15, scope: !3286, inlinedAt: !3243)
!3289 = !DILocation(line: 29, column: 10, scope: !3269, inlinedAt: !3288)
!3290 = !DILocation(line: 168, column: 15, scope: !3286, inlinedAt: !3243)
!3291 = !DILocation(line: 168, column: 32, scope: !3286, inlinedAt: !3243)
!3292 = !DILocation(line: 169, column: 13, scope: !3286, inlinedAt: !3243)
!3293 = !DILocation(line: 0, scope: !3241, inlinedAt: !3243)
!3294 = !DILocation(line: 274, column: 3, scope: !3225)
!3295 = distinct !DISubprogram(name: "setlocale_null", scope: !228, file: !228, line: 301, type: !3246, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3296)
!3296 = !{!3297}
!3297 = !DILocalVariable(name: "category", arg: 1, scope: !3295, file: !228, line: 301, type: !72)
!3298 = !DILocation(line: 0, scope: !3295)
!3299 = !DILocation(line: 0, scope: !3245, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 304, column: 10, scope: !3295)
!3301 = !DILocation(line: 62, column: 24, scope: !3245, inlinedAt: !3300)
!3302 = !DILocation(line: 304, column: 3, scope: !3295)
!3303 = distinct !DISubprogram(name: "dup_safer", scope: !231, file: !231, line: 31, type: !1447, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3304)
!3304 = !{!3305}
!3305 = !DILocalVariable(name: "fd", arg: 1, scope: !3303, file: !231, line: 31, type: !72)
!3306 = !DILocation(line: 0, scope: !3303)
!3307 = !DILocation(line: 33, column: 10, scope: !3303)
!3308 = !DILocation(line: 33, column: 3, scope: !3303)
!3309 = distinct !DISubprogram(name: "version_etc_arn", scope: !233, file: !233, line: 61, type: !3310, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3347)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !3312, !41, !41, !41, !3346, !38}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !943, line: 7, baseType: !3314)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !3315)
!3315 = !{!3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3314, file: !762, line: 51, baseType: !72, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3314, file: !762, line: 54, baseType: !35, size: 64, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3314, file: !762, line: 55, baseType: !35, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3314, file: !762, line: 56, baseType: !35, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3314, file: !762, line: 57, baseType: !35, size: 64, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3314, file: !762, line: 58, baseType: !35, size: 64, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3314, file: !762, line: 59, baseType: !35, size: 64, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3314, file: !762, line: 60, baseType: !35, size: 64, offset: 448)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3314, file: !762, line: 61, baseType: !35, size: 64, offset: 512)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3314, file: !762, line: 64, baseType: !35, size: 64, offset: 576)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3314, file: !762, line: 65, baseType: !35, size: 64, offset: 640)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3314, file: !762, line: 66, baseType: !35, size: 64, offset: 704)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3314, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3314, file: !762, line: 70, baseType: !3330, size: 64, offset: 832)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3314, file: !762, line: 72, baseType: !72, size: 32, offset: 896)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3314, file: !762, line: 73, baseType: !72, size: 32, offset: 928)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3314, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3314, file: !762, line: 77, baseType: !141, size: 16, offset: 1024)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3314, file: !762, line: 78, baseType: !787, size: 8, offset: 1040)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3314, file: !762, line: 79, baseType: !789, size: 8, offset: 1048)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3314, file: !762, line: 81, baseType: !793, size: 64, offset: 1088)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3314, file: !762, line: 89, baseType: !796, size: 64, offset: 1152)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3314, file: !762, line: 91, baseType: !798, size: 64, offset: 1216)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3314, file: !762, line: 92, baseType: !801, size: 64, offset: 1280)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3314, file: !762, line: 93, baseType: !3330, size: 64, offset: 1344)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3314, file: !762, line: 94, baseType: !37, size: 64, offset: 1408)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3314, file: !762, line: 95, baseType: !38, size: 64, offset: 1472)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3314, file: !762, line: 96, baseType: !72, size: 32, offset: 1536)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3314, file: !762, line: 98, baseType: !808, size: 160, offset: 1568)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3353}
!3348 = !DILocalVariable(name: "stream", arg: 1, scope: !3309, file: !233, line: 61, type: !3312)
!3349 = !DILocalVariable(name: "command_name", arg: 2, scope: !3309, file: !233, line: 62, type: !41)
!3350 = !DILocalVariable(name: "package", arg: 3, scope: !3309, file: !233, line: 62, type: !41)
!3351 = !DILocalVariable(name: "version", arg: 4, scope: !3309, file: !233, line: 63, type: !41)
!3352 = !DILocalVariable(name: "authors", arg: 5, scope: !3309, file: !233, line: 64, type: !3346)
!3353 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3309, file: !233, line: 64, type: !38)
!3354 = !DILocation(line: 0, scope: !3309)
!3355 = !DILocation(line: 66, column: 7, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3309, file: !233, line: 66, column: 7)
!3357 = !DILocation(line: 66, column: 7, scope: !3309)
!3358 = !DILocation(line: 67, column: 5, scope: !3356)
!3359 = !DILocation(line: 69, column: 5, scope: !3356)
!3360 = !DILocation(line: 83, column: 3, scope: !3309)
!3361 = !DILocation(line: 85, column: 3, scope: !3309)
!3362 = !DILocation(line: 88, column: 3, scope: !3309)
!3363 = !DILocation(line: 95, column: 3, scope: !3309)
!3364 = !DILocation(line: 97, column: 3, scope: !3309)
!3365 = !DILocation(line: 105, column: 7, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3309, file: !233, line: 98, column: 5)
!3367 = !DILocation(line: 106, column: 7, scope: !3366)
!3368 = !DILocation(line: 109, column: 7, scope: !3366)
!3369 = !DILocation(line: 110, column: 7, scope: !3366)
!3370 = !DILocation(line: 113, column: 7, scope: !3366)
!3371 = !DILocation(line: 115, column: 7, scope: !3366)
!3372 = !DILocation(line: 120, column: 7, scope: !3366)
!3373 = !DILocation(line: 122, column: 7, scope: !3366)
!3374 = !DILocation(line: 127, column: 7, scope: !3366)
!3375 = !DILocation(line: 129, column: 7, scope: !3366)
!3376 = !DILocation(line: 134, column: 7, scope: !3366)
!3377 = !DILocation(line: 137, column: 7, scope: !3366)
!3378 = !DILocation(line: 142, column: 7, scope: !3366)
!3379 = !DILocation(line: 145, column: 7, scope: !3366)
!3380 = !DILocation(line: 150, column: 7, scope: !3366)
!3381 = !DILocation(line: 154, column: 7, scope: !3366)
!3382 = !DILocation(line: 159, column: 7, scope: !3366)
!3383 = !DILocation(line: 163, column: 7, scope: !3366)
!3384 = !DILocation(line: 170, column: 7, scope: !3366)
!3385 = !DILocation(line: 174, column: 7, scope: !3366)
!3386 = !DILocation(line: 176, column: 1, scope: !3309)
!3387 = distinct !DISubprogram(name: "version_etc_ar", scope: !233, file: !233, line: 183, type: !3388, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{null, !3312, !41, !41, !41, !3346}
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3396}
!3391 = !DILocalVariable(name: "stream", arg: 1, scope: !3387, file: !233, line: 183, type: !3312)
!3392 = !DILocalVariable(name: "command_name", arg: 2, scope: !3387, file: !233, line: 184, type: !41)
!3393 = !DILocalVariable(name: "package", arg: 3, scope: !3387, file: !233, line: 184, type: !41)
!3394 = !DILocalVariable(name: "version", arg: 4, scope: !3387, file: !233, line: 185, type: !41)
!3395 = !DILocalVariable(name: "authors", arg: 5, scope: !3387, file: !233, line: 185, type: !3346)
!3396 = !DILocalVariable(name: "n_authors", scope: !3387, file: !233, line: 187, type: !38)
!3397 = !DILocation(line: 0, scope: !3387)
!3398 = !DILocation(line: 189, column: 8, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3387, file: !233, line: 189, column: 3)
!3400 = !DILocation(line: 0, scope: !3399)
!3401 = !DILocation(line: 189, column: 23, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3399, file: !233, line: 189, column: 3)
!3403 = !DILocation(line: 189, column: 3, scope: !3399)
!3404 = !DILocation(line: 189, column: 52, scope: !3402)
!3405 = distinct !{!3405, !3403, !3406, !732}
!3406 = !DILocation(line: 190, column: 5, scope: !3399)
!3407 = !DILocation(line: 191, column: 3, scope: !3387)
!3408 = !DILocation(line: 192, column: 1, scope: !3387)
!3409 = distinct !DISubprogram(name: "version_etc_va", scope: !233, file: !233, line: 199, type: !3410, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3419)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{null, !3312, !41, !41, !41, !3412}
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3413, file: !233, line: 192, baseType: !6, size: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3413, file: !233, line: 192, baseType: !6, size: 32, offset: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3413, file: !233, line: 192, baseType: !37, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3413, file: !233, line: 192, baseType: !37, size: 64, offset: 128)
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426}
!3420 = !DILocalVariable(name: "stream", arg: 1, scope: !3409, file: !233, line: 199, type: !3312)
!3421 = !DILocalVariable(name: "command_name", arg: 2, scope: !3409, file: !233, line: 200, type: !41)
!3422 = !DILocalVariable(name: "package", arg: 3, scope: !3409, file: !233, line: 200, type: !41)
!3423 = !DILocalVariable(name: "version", arg: 4, scope: !3409, file: !233, line: 201, type: !41)
!3424 = !DILocalVariable(name: "authors", arg: 5, scope: !3409, file: !233, line: 201, type: !3412)
!3425 = !DILocalVariable(name: "n_authors", scope: !3409, file: !233, line: 203, type: !38)
!3426 = !DILocalVariable(name: "authtab", scope: !3409, file: !233, line: 204, type: !3427)
!3427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, elements: !147)
!3428 = !DILocation(line: 0, scope: !3409)
!3429 = !DILocation(line: 204, column: 3, scope: !3409)
!3430 = !DILocation(line: 204, column: 15, scope: !3409)
!3431 = !DILocation(line: 208, column: 35, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !233, line: 206, column: 3)
!3433 = distinct !DILexicalBlock(scope: !3409, file: !233, line: 206, column: 3)
!3434 = !DILocation(line: 208, column: 14, scope: !3432)
!3435 = !DILocation(line: 208, column: 33, scope: !3432)
!3436 = !DILocation(line: 208, column: 67, scope: !3432)
!3437 = !DILocation(line: 206, column: 3, scope: !3433)
!3438 = !DILocation(line: 0, scope: !3433)
!3439 = !DILocation(line: 211, column: 3, scope: !3409)
!3440 = !DILocation(line: 213, column: 1, scope: !3409)
!3441 = distinct !DISubprogram(name: "version_etc", scope: !233, file: !233, line: 230, type: !3442, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !3312, !41, !41, !41, null}
!3444 = !{!3445, !3446, !3447, !3448, !3449}
!3445 = !DILocalVariable(name: "stream", arg: 1, scope: !3441, file: !233, line: 230, type: !3312)
!3446 = !DILocalVariable(name: "command_name", arg: 2, scope: !3441, file: !233, line: 231, type: !41)
!3447 = !DILocalVariable(name: "package", arg: 3, scope: !3441, file: !233, line: 231, type: !41)
!3448 = !DILocalVariable(name: "version", arg: 4, scope: !3441, file: !233, line: 232, type: !41)
!3449 = !DILocalVariable(name: "authors", scope: !3441, file: !233, line: 234, type: !3450)
!3450 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !757, line: 52, baseType: !3451)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3452, line: 32, baseType: !3453)
!3452 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !233, baseType: !3454)
!3454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3413, size: 192, elements: !790)
!3455 = !DILocation(line: 0, scope: !3441)
!3456 = !DILocation(line: 234, column: 3, scope: !3441)
!3457 = !DILocation(line: 234, column: 11, scope: !3441)
!3458 = !DILocation(line: 236, column: 3, scope: !3441)
!3459 = !DILocation(line: 237, column: 3, scope: !3441)
!3460 = !DILocation(line: 238, column: 3, scope: !3441)
!3461 = !DILocation(line: 239, column: 1, scope: !3441)
!3462 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !233, file: !233, line: 242, type: !1165, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !94)
!3463 = !DILocation(line: 244, column: 3, scope: !3462)
!3464 = !DILocation(line: 249, column: 3, scope: !3462)
!3465 = !DILocation(line: 255, column: 3, scope: !3462)
!3466 = !DILocation(line: 260, column: 3, scope: !3462)
!3467 = !DILocation(line: 262, column: 1, scope: !3462)
!3468 = distinct !DISubprogram(name: "xnmalloc", scope: !242, file: !242, line: 99, type: !3469, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!37, !38, !38}
!3471 = !{!3472, !3473}
!3472 = !DILocalVariable(name: "n", arg: 1, scope: !3468, file: !242, line: 99, type: !38)
!3473 = !DILocalVariable(name: "s", arg: 2, scope: !3468, file: !242, line: 99, type: !38)
!3474 = !DILocation(line: 0, scope: !3468)
!3475 = !DILocation(line: 101, column: 7, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3468, file: !242, line: 101, column: 7)
!3477 = !DILocation(line: 101, column: 7, scope: !3468)
!3478 = !DILocation(line: 102, column: 5, scope: !3476)
!3479 = !DILocation(line: 103, column: 21, scope: !3468)
!3480 = !DILocalVariable(name: "n", arg: 1, scope: !3481, file: !239, line: 39, type: !38)
!3481 = distinct !DISubprogram(name: "xmalloc", scope: !239, file: !239, line: 39, type: !3482, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !3484)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!37, !38}
!3484 = !{!3480, !3485}
!3485 = !DILocalVariable(name: "p", scope: !3481, file: !239, line: 41, type: !37)
!3486 = !DILocation(line: 0, scope: !3481, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 103, column: 10, scope: !3468)
!3488 = !DILocation(line: 41, column: 13, scope: !3481, inlinedAt: !3487)
!3489 = !DILocation(line: 42, column: 8, scope: !3490, inlinedAt: !3487)
!3490 = distinct !DILexicalBlock(scope: !3481, file: !239, line: 42, column: 7)
!3491 = !DILocation(line: 42, column: 10, scope: !3490, inlinedAt: !3487)
!3492 = !DILocation(line: 43, column: 5, scope: !3490, inlinedAt: !3487)
!3493 = !DILocation(line: 103, column: 3, scope: !3468)
!3494 = !DILocation(line: 0, scope: !3481)
!3495 = !DILocation(line: 41, column: 13, scope: !3481)
!3496 = !DILocation(line: 42, column: 8, scope: !3490)
!3497 = !DILocation(line: 42, column: 10, scope: !3490)
!3498 = !DILocation(line: 43, column: 5, scope: !3490)
!3499 = !DILocation(line: 44, column: 3, scope: !3481)
!3500 = distinct !DISubprogram(name: "xnrealloc", scope: !242, file: !242, line: 112, type: !3501, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !3503)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!37, !37, !38, !38}
!3503 = !{!3504, !3505, !3506}
!3504 = !DILocalVariable(name: "p", arg: 1, scope: !3500, file: !242, line: 112, type: !37)
!3505 = !DILocalVariable(name: "n", arg: 2, scope: !3500, file: !242, line: 112, type: !38)
!3506 = !DILocalVariable(name: "s", arg: 3, scope: !3500, file: !242, line: 112, type: !38)
!3507 = !DILocation(line: 0, scope: !3500)
!3508 = !DILocation(line: 114, column: 7, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3500, file: !242, line: 114, column: 7)
!3510 = !DILocation(line: 114, column: 7, scope: !3500)
!3511 = !DILocation(line: 115, column: 5, scope: !3509)
!3512 = !DILocation(line: 116, column: 25, scope: !3500)
!3513 = !DILocalVariable(name: "p", arg: 1, scope: !3514, file: !239, line: 51, type: !37)
!3514 = distinct !DISubprogram(name: "xrealloc", scope: !239, file: !239, line: 51, type: !3515, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !3517)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!37, !37, !38}
!3517 = !{!3513, !3518}
!3518 = !DILocalVariable(name: "n", arg: 2, scope: !3514, file: !239, line: 51, type: !38)
!3519 = !DILocation(line: 0, scope: !3514, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 116, column: 10, scope: !3500)
!3521 = !DILocation(line: 53, column: 8, scope: !3522, inlinedAt: !3520)
!3522 = distinct !DILexicalBlock(scope: !3514, file: !239, line: 53, column: 7)
!3523 = !DILocation(line: 53, column: 10, scope: !3522, inlinedAt: !3520)
!3524 = !DILocation(line: 57, column: 7, scope: !3525, inlinedAt: !3520)
!3525 = distinct !DILexicalBlock(scope: !3522, file: !239, line: 54, column: 5)
!3526 = !DILocation(line: 58, column: 7, scope: !3525, inlinedAt: !3520)
!3527 = !DILocation(line: 61, column: 7, scope: !3514, inlinedAt: !3520)
!3528 = !DILocation(line: 62, column: 8, scope: !3529, inlinedAt: !3520)
!3529 = distinct !DILexicalBlock(scope: !3514, file: !239, line: 62, column: 7)
!3530 = !DILocation(line: 62, column: 10, scope: !3529, inlinedAt: !3520)
!3531 = !DILocation(line: 63, column: 5, scope: !3529, inlinedAt: !3520)
!3532 = !DILocation(line: 116, column: 3, scope: !3500)
!3533 = !DILocation(line: 0, scope: !3514)
!3534 = !DILocation(line: 53, column: 8, scope: !3522)
!3535 = !DILocation(line: 53, column: 10, scope: !3522)
!3536 = !DILocation(line: 57, column: 7, scope: !3525)
!3537 = !DILocation(line: 58, column: 7, scope: !3525)
!3538 = !DILocation(line: 61, column: 7, scope: !3514)
!3539 = !DILocation(line: 62, column: 8, scope: !3529)
!3540 = !DILocation(line: 62, column: 10, scope: !3529)
!3541 = !DILocation(line: 63, column: 5, scope: !3529)
!3542 = !DILocation(line: 65, column: 1, scope: !3514)
!3543 = !DILocation(line: 0, scope: !243)
!3544 = !DILocation(line: 176, column: 14, scope: !243)
!3545 = !DILocation(line: 178, column: 9, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !243, file: !242, line: 178, column: 7)
!3547 = !DILocation(line: 178, column: 7, scope: !243)
!3548 = !DILocation(line: 180, column: 13, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !242, line: 180, column: 11)
!3550 = distinct !DILexicalBlock(scope: !3546, file: !242, line: 179, column: 5)
!3551 = !DILocation(line: 180, column: 11, scope: !3550)
!3552 = !DILocation(line: 188, column: 30, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3549, file: !242, line: 181, column: 9)
!3554 = !DILocation(line: 189, column: 16, scope: !3553)
!3555 = !DILocation(line: 189, column: 13, scope: !3553)
!3556 = !DILocation(line: 190, column: 9, scope: !3553)
!3557 = !DILocation(line: 191, column: 11, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3550, file: !242, line: 191, column: 11)
!3559 = !DILocation(line: 191, column: 11, scope: !3550)
!3560 = !DILocation(line: 206, column: 7, scope: !243)
!3561 = !DILocation(line: 207, column: 25, scope: !243)
!3562 = !DILocation(line: 0, scope: !3514, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 207, column: 10, scope: !243)
!3564 = !DILocation(line: 53, column: 10, scope: !3522, inlinedAt: !3563)
!3565 = !DILocation(line: 192, column: 9, scope: !3558)
!3566 = !DILocation(line: 200, column: 69, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !242, line: 200, column: 11)
!3568 = distinct !DILexicalBlock(scope: !3546, file: !242, line: 195, column: 5)
!3569 = !DILocation(line: 201, column: 11, scope: !3567)
!3570 = !DILocation(line: 200, column: 11, scope: !3568)
!3571 = !DILocation(line: 202, column: 9, scope: !3567)
!3572 = !DILocation(line: 203, column: 14, scope: !3568)
!3573 = !DILocation(line: 203, column: 18, scope: !3568)
!3574 = !DILocation(line: 203, column: 9, scope: !3568)
!3575 = !DILocation(line: 53, column: 8, scope: !3522, inlinedAt: !3563)
!3576 = !DILocation(line: 57, column: 7, scope: !3525, inlinedAt: !3563)
!3577 = !DILocation(line: 58, column: 7, scope: !3525, inlinedAt: !3563)
!3578 = !DILocation(line: 61, column: 7, scope: !3514, inlinedAt: !3563)
!3579 = !DILocation(line: 62, column: 8, scope: !3529, inlinedAt: !3563)
!3580 = !DILocation(line: 62, column: 10, scope: !3529, inlinedAt: !3563)
!3581 = !DILocation(line: 63, column: 5, scope: !3529, inlinedAt: !3563)
!3582 = !DILocation(line: 207, column: 3, scope: !243)
!3583 = distinct !DISubprogram(name: "xcharalloc", scope: !242, file: !242, line: 216, type: !2638, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !3584)
!3584 = !{!3585}
!3585 = !DILocalVariable(name: "n", arg: 1, scope: !3583, file: !242, line: 216, type: !38)
!3586 = !DILocation(line: 0, scope: !3583)
!3587 = !DILocation(line: 0, scope: !3481, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 218, column: 10, scope: !3583)
!3589 = !DILocation(line: 41, column: 13, scope: !3481, inlinedAt: !3588)
!3590 = !DILocation(line: 42, column: 8, scope: !3490, inlinedAt: !3588)
!3591 = !DILocation(line: 42, column: 10, scope: !3490, inlinedAt: !3588)
!3592 = !DILocation(line: 43, column: 5, scope: !3490, inlinedAt: !3588)
!3593 = !DILocation(line: 218, column: 3, scope: !3583)
!3594 = distinct !DISubprogram(name: "x2realloc", scope: !239, file: !239, line: 74, type: !3595, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!37, !37, !246}
!3597 = !{!3598, !3599}
!3598 = !DILocalVariable(name: "p", arg: 1, scope: !3594, file: !239, line: 74, type: !37)
!3599 = !DILocalVariable(name: "pn", arg: 2, scope: !3594, file: !239, line: 74, type: !246)
!3600 = !DILocation(line: 0, scope: !3594)
!3601 = !DILocation(line: 0, scope: !243, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 76, column: 10, scope: !3594)
!3603 = !DILocation(line: 176, column: 14, scope: !243, inlinedAt: !3602)
!3604 = !DILocation(line: 178, column: 9, scope: !3546, inlinedAt: !3602)
!3605 = !DILocation(line: 178, column: 7, scope: !243, inlinedAt: !3602)
!3606 = !DILocation(line: 180, column: 13, scope: !3549, inlinedAt: !3602)
!3607 = !DILocation(line: 180, column: 11, scope: !3550, inlinedAt: !3602)
!3608 = !DILocation(line: 191, column: 11, scope: !3558, inlinedAt: !3602)
!3609 = !DILocation(line: 191, column: 11, scope: !3550, inlinedAt: !3602)
!3610 = !DILocation(line: 192, column: 9, scope: !3558, inlinedAt: !3602)
!3611 = !DILocation(line: 201, column: 11, scope: !3567, inlinedAt: !3602)
!3612 = !DILocation(line: 200, column: 11, scope: !3568, inlinedAt: !3602)
!3613 = !DILocation(line: 202, column: 9, scope: !3567, inlinedAt: !3602)
!3614 = !DILocation(line: 203, column: 14, scope: !3568, inlinedAt: !3602)
!3615 = !DILocation(line: 203, column: 18, scope: !3568, inlinedAt: !3602)
!3616 = !DILocation(line: 203, column: 9, scope: !3568, inlinedAt: !3602)
!3617 = !DILocation(line: 0, scope: !3514, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 207, column: 10, scope: !243, inlinedAt: !3602)
!3619 = !DILocation(line: 53, column: 10, scope: !3522, inlinedAt: !3618)
!3620 = !DILocation(line: 206, column: 7, scope: !243, inlinedAt: !3602)
!3621 = !DILocation(line: 61, column: 7, scope: !3514, inlinedAt: !3618)
!3622 = !DILocation(line: 62, column: 8, scope: !3529, inlinedAt: !3618)
!3623 = !DILocation(line: 62, column: 10, scope: !3529, inlinedAt: !3618)
!3624 = !DILocation(line: 63, column: 5, scope: !3529, inlinedAt: !3618)
!3625 = !DILocation(line: 76, column: 3, scope: !3594)
!3626 = distinct !DISubprogram(name: "xzalloc", scope: !239, file: !239, line: 84, type: !3482, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !3627)
!3627 = !{!3628}
!3628 = !DILocalVariable(name: "n", arg: 1, scope: !3626, file: !239, line: 84, type: !38)
!3629 = !DILocation(line: 0, scope: !3626)
!3630 = !DILocalVariable(name: "n", arg: 1, scope: !3631, file: !239, line: 93, type: !38)
!3631 = distinct !DISubprogram(name: "xcalloc", scope: !239, file: !239, line: 93, type: !3469, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !3632)
!3632 = !{!3630, !3633, !3634}
!3633 = !DILocalVariable(name: "s", arg: 2, scope: !3631, file: !239, line: 93, type: !38)
!3634 = !DILocalVariable(name: "p", scope: !3631, file: !239, line: 95, type: !37)
!3635 = !DILocation(line: 0, scope: !3631, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 86, column: 10, scope: !3626)
!3637 = !DILocation(line: 100, column: 7, scope: !3638, inlinedAt: !3636)
!3638 = distinct !DILexicalBlock(scope: !3631, file: !239, line: 100, column: 7)
!3639 = !DILocation(line: 101, column: 7, scope: !3638, inlinedAt: !3636)
!3640 = !DILocation(line: 101, column: 18, scope: !3638, inlinedAt: !3636)
!3641 = !DILocation(line: 101, column: 16, scope: !3638, inlinedAt: !3636)
!3642 = !DILocation(line: 100, column: 7, scope: !3631, inlinedAt: !3636)
!3643 = !DILocation(line: 102, column: 5, scope: !3638, inlinedAt: !3636)
!3644 = !DILocation(line: 86, column: 3, scope: !3626)
!3645 = !DILocation(line: 0, scope: !3631)
!3646 = !DILocation(line: 100, column: 7, scope: !3638)
!3647 = !DILocation(line: 101, column: 7, scope: !3638)
!3648 = !DILocation(line: 101, column: 18, scope: !3638)
!3649 = !DILocation(line: 101, column: 16, scope: !3638)
!3650 = !DILocation(line: 100, column: 7, scope: !3631)
!3651 = !DILocation(line: 102, column: 5, scope: !3638)
!3652 = !DILocation(line: 103, column: 3, scope: !3631)
!3653 = distinct !DISubprogram(name: "xmemdup", scope: !239, file: !239, line: 111, type: !3654, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!37, !1201, !38}
!3656 = !{!3657, !3658}
!3657 = !DILocalVariable(name: "p", arg: 1, scope: !3653, file: !239, line: 111, type: !1201)
!3658 = !DILocalVariable(name: "s", arg: 2, scope: !3653, file: !239, line: 111, type: !38)
!3659 = !DILocation(line: 0, scope: !3653)
!3660 = !DILocation(line: 0, scope: !3481, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 113, column: 18, scope: !3653)
!3662 = !DILocation(line: 41, column: 13, scope: !3481, inlinedAt: !3661)
!3663 = !DILocation(line: 42, column: 8, scope: !3490, inlinedAt: !3661)
!3664 = !DILocation(line: 42, column: 10, scope: !3490, inlinedAt: !3661)
!3665 = !DILocation(line: 43, column: 5, scope: !3490, inlinedAt: !3661)
!3666 = !DILocalVariable(name: "__dest", arg: 1, scope: !3667, file: !1508, line: 26, type: !3272)
!3667 = distinct !DISubprogram(name: "memcpy", scope: !1508, file: !1508, line: 26, type: !3270, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !3668)
!3668 = !{!3666, !3669, !3670}
!3669 = !DILocalVariable(name: "__src", arg: 2, scope: !3667, file: !1508, line: 26, type: !3273)
!3670 = !DILocalVariable(name: "__len", arg: 3, scope: !3667, file: !1508, line: 26, type: !38)
!3671 = !DILocation(line: 0, scope: !3667, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 113, column: 10, scope: !3653)
!3673 = !DILocation(line: 29, column: 10, scope: !3667, inlinedAt: !3672)
!3674 = !DILocation(line: 113, column: 3, scope: !3653)
!3675 = distinct !DISubprogram(name: "xstrdup", scope: !239, file: !239, line: 119, type: !1158, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !3676)
!3676 = !{!3677}
!3677 = !DILocalVariable(name: "string", arg: 1, scope: !3675, file: !239, line: 119, type: !41)
!3678 = !DILocation(line: 0, scope: !3675)
!3679 = !DILocation(line: 121, column: 27, scope: !3675)
!3680 = !DILocation(line: 121, column: 43, scope: !3675)
!3681 = !DILocation(line: 0, scope: !3653, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 121, column: 10, scope: !3675)
!3683 = !DILocation(line: 0, scope: !3481, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 113, column: 18, scope: !3653, inlinedAt: !3682)
!3685 = !DILocation(line: 41, column: 13, scope: !3481, inlinedAt: !3684)
!3686 = !DILocation(line: 42, column: 8, scope: !3490, inlinedAt: !3684)
!3687 = !DILocation(line: 42, column: 10, scope: !3490, inlinedAt: !3684)
!3688 = !DILocation(line: 43, column: 5, scope: !3490, inlinedAt: !3684)
!3689 = !DILocation(line: 0, scope: !3667, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 113, column: 10, scope: !3653, inlinedAt: !3682)
!3691 = !DILocation(line: 29, column: 10, scope: !3667, inlinedAt: !3690)
!3692 = !DILocation(line: 121, column: 3, scope: !3675)
!3693 = distinct !DISubprogram(name: "xalloc_die", scope: !256, file: !256, line: 32, type: !1165, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !94)
!3694 = !DILocation(line: 34, column: 10, scope: !3693)
!3695 = !DILocation(line: 34, column: 33, scope: !3693)
!3696 = !DILocation(line: 34, column: 3, scope: !3693)
!3697 = !DILocation(line: 40, column: 3, scope: !3693)
!3698 = distinct !DISubprogram(name: "xmemcoll", scope: !258, file: !258, line: 54, type: !3699, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !3701)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!72, !35, !38, !35, !38}
!3701 = !{!3702, !3703, !3704, !3705, !3706, !3707}
!3702 = !DILocalVariable(name: "s1", arg: 1, scope: !3698, file: !258, line: 54, type: !35)
!3703 = !DILocalVariable(name: "s1len", arg: 2, scope: !3698, file: !258, line: 54, type: !38)
!3704 = !DILocalVariable(name: "s2", arg: 3, scope: !3698, file: !258, line: 54, type: !35)
!3705 = !DILocalVariable(name: "s2len", arg: 4, scope: !3698, file: !258, line: 54, type: !38)
!3706 = !DILocalVariable(name: "diff", scope: !3698, file: !258, line: 56, type: !72)
!3707 = !DILocalVariable(name: "collation_errno", scope: !3698, file: !258, line: 57, type: !72)
!3708 = !DILocation(line: 0, scope: !3698)
!3709 = !DILocation(line: 56, column: 14, scope: !3698)
!3710 = !DILocation(line: 57, column: 25, scope: !3698)
!3711 = !DILocation(line: 58, column: 7, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3698, file: !258, line: 58, column: 7)
!3713 = !DILocation(line: 58, column: 7, scope: !3698)
!3714 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !3715, file: !258, line: 35, type: !72)
!3715 = distinct !DISubprogram(name: "collate_error", scope: !258, file: !258, line: 35, type: !3716, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !3718)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{null, !72, !41, !38, !41, !38}
!3718 = !{!3714, !3719, !3720, !3721, !3722}
!3719 = !DILocalVariable(name: "s1", arg: 2, scope: !3715, file: !258, line: 36, type: !41)
!3720 = !DILocalVariable(name: "s1len", arg: 3, scope: !3715, file: !258, line: 36, type: !38)
!3721 = !DILocalVariable(name: "s2", arg: 4, scope: !3715, file: !258, line: 37, type: !41)
!3722 = !DILocalVariable(name: "s2len", arg: 5, scope: !3715, file: !258, line: 37, type: !38)
!3723 = !DILocation(line: 0, scope: !3715, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 59, column: 5, scope: !3712)
!3725 = !DILocation(line: 39, column: 30, scope: !3715, inlinedAt: !3724)
!3726 = !DILocation(line: 39, column: 3, scope: !3715, inlinedAt: !3724)
!3727 = !DILocation(line: 40, column: 16, scope: !3715, inlinedAt: !3724)
!3728 = !DILocation(line: 40, column: 3, scope: !3715, inlinedAt: !3724)
!3729 = !DILocation(line: 41, column: 10, scope: !3715, inlinedAt: !3724)
!3730 = !DILocation(line: 42, column: 10, scope: !3715, inlinedAt: !3724)
!3731 = !DILocation(line: 43, column: 10, scope: !3715, inlinedAt: !3724)
!3732 = !DILocation(line: 44, column: 10, scope: !3715, inlinedAt: !3724)
!3733 = !DILocation(line: 41, column: 3, scope: !3715, inlinedAt: !3724)
!3734 = !DILocation(line: 59, column: 5, scope: !3712)
!3735 = !DILocation(line: 60, column: 3, scope: !3698)
!3736 = distinct !DISubprogram(name: "xmemcoll0", scope: !258, file: !258, line: 69, type: !1699, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !3737)
!3737 = !{!3738, !3739, !3740, !3741, !3742, !3743}
!3738 = !DILocalVariable(name: "s1", arg: 1, scope: !3736, file: !258, line: 69, type: !41)
!3739 = !DILocalVariable(name: "s1size", arg: 2, scope: !3736, file: !258, line: 69, type: !38)
!3740 = !DILocalVariable(name: "s2", arg: 3, scope: !3736, file: !258, line: 69, type: !41)
!3741 = !DILocalVariable(name: "s2size", arg: 4, scope: !3736, file: !258, line: 69, type: !38)
!3742 = !DILocalVariable(name: "diff", scope: !3736, file: !258, line: 71, type: !72)
!3743 = !DILocalVariable(name: "collation_errno", scope: !3736, file: !258, line: 72, type: !72)
!3744 = !DILocation(line: 0, scope: !3736)
!3745 = !DILocation(line: 71, column: 14, scope: !3736)
!3746 = !DILocation(line: 72, column: 25, scope: !3736)
!3747 = !DILocation(line: 73, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3736, file: !258, line: 73, column: 7)
!3749 = !DILocation(line: 73, column: 7, scope: !3736)
!3750 = !DILocation(line: 74, column: 48, scope: !3748)
!3751 = !DILocation(line: 74, column: 64, scope: !3748)
!3752 = !DILocation(line: 0, scope: !3715, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 74, column: 5, scope: !3748)
!3754 = !DILocation(line: 39, column: 30, scope: !3715, inlinedAt: !3753)
!3755 = !DILocation(line: 39, column: 3, scope: !3715, inlinedAt: !3753)
!3756 = !DILocation(line: 40, column: 16, scope: !3715, inlinedAt: !3753)
!3757 = !DILocation(line: 40, column: 3, scope: !3715, inlinedAt: !3753)
!3758 = !DILocation(line: 41, column: 10, scope: !3715, inlinedAt: !3753)
!3759 = !DILocation(line: 42, column: 10, scope: !3715, inlinedAt: !3753)
!3760 = !DILocation(line: 43, column: 10, scope: !3715, inlinedAt: !3753)
!3761 = !DILocation(line: 44, column: 10, scope: !3715, inlinedAt: !3753)
!3762 = !DILocation(line: 41, column: 3, scope: !3715, inlinedAt: !3753)
!3763 = !DILocation(line: 74, column: 5, scope: !3748)
!3764 = !DILocation(line: 75, column: 3, scope: !3736)
!3765 = distinct !DISubprogram(name: "rpl_calloc", scope: !261, file: !261, line: 42, type: !3469, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3766)
!3766 = !{!3767, !3768, !3769, !3770}
!3767 = !DILocalVariable(name: "n", arg: 1, scope: !3765, file: !261, line: 42, type: !38)
!3768 = !DILocalVariable(name: "s", arg: 2, scope: !3765, file: !261, line: 42, type: !38)
!3769 = !DILocalVariable(name: "result", scope: !3765, file: !261, line: 44, type: !37)
!3770 = !DILocalVariable(name: "bytes", scope: !3771, file: !261, line: 56, type: !38)
!3771 = distinct !DILexicalBlock(scope: !3772, file: !261, line: 53, column: 5)
!3772 = distinct !DILexicalBlock(scope: !3765, file: !261, line: 47, column: 7)
!3773 = !DILocation(line: 0, scope: !3765)
!3774 = !DILocation(line: 47, column: 9, scope: !3772)
!3775 = !DILocation(line: 47, column: 14, scope: !3772)
!3776 = !DILocation(line: 0, scope: !3771)
!3777 = !DILocation(line: 57, column: 21, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3771, file: !261, line: 57, column: 11)
!3779 = !DILocation(line: 57, column: 11, scope: !3771)
!3780 = !DILocation(line: 59, column: 11, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3778, file: !261, line: 58, column: 9)
!3782 = !DILocation(line: 59, column: 17, scope: !3781)
!3783 = !DILocation(line: 65, column: 12, scope: !3765)
!3784 = !DILocation(line: 72, column: 3, scope: !3765)
!3785 = !DILocation(line: 73, column: 1, scope: !3765)
!3786 = distinct !DISubprogram(name: "rpl_fclose", scope: !263, file: !263, line: 58, type: !3787, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !262, retainedNodes: !3823)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!72, !3789}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !943, line: 7, baseType: !3791)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !3792)
!3792 = !{!3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3791, file: !762, line: 51, baseType: !72, size: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3791, file: !762, line: 54, baseType: !35, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3791, file: !762, line: 55, baseType: !35, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3791, file: !762, line: 56, baseType: !35, size: 64, offset: 192)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3791, file: !762, line: 57, baseType: !35, size: 64, offset: 256)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3791, file: !762, line: 58, baseType: !35, size: 64, offset: 320)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3791, file: !762, line: 59, baseType: !35, size: 64, offset: 384)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3791, file: !762, line: 60, baseType: !35, size: 64, offset: 448)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3791, file: !762, line: 61, baseType: !35, size: 64, offset: 512)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3791, file: !762, line: 64, baseType: !35, size: 64, offset: 576)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3791, file: !762, line: 65, baseType: !35, size: 64, offset: 640)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3791, file: !762, line: 66, baseType: !35, size: 64, offset: 704)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3791, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3791, file: !762, line: 70, baseType: !3807, size: 64, offset: 832)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3791, file: !762, line: 72, baseType: !72, size: 32, offset: 896)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3791, file: !762, line: 73, baseType: !72, size: 32, offset: 928)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3791, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3791, file: !762, line: 77, baseType: !141, size: 16, offset: 1024)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3791, file: !762, line: 78, baseType: !787, size: 8, offset: 1040)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3791, file: !762, line: 79, baseType: !789, size: 8, offset: 1048)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3791, file: !762, line: 81, baseType: !793, size: 64, offset: 1088)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3791, file: !762, line: 89, baseType: !796, size: 64, offset: 1152)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3791, file: !762, line: 91, baseType: !798, size: 64, offset: 1216)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3791, file: !762, line: 92, baseType: !801, size: 64, offset: 1280)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3791, file: !762, line: 93, baseType: !3807, size: 64, offset: 1344)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3791, file: !762, line: 94, baseType: !37, size: 64, offset: 1408)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3791, file: !762, line: 95, baseType: !38, size: 64, offset: 1472)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3791, file: !762, line: 96, baseType: !72, size: 32, offset: 1536)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3791, file: !762, line: 98, baseType: !808, size: 160, offset: 1568)
!3823 = !{!3824, !3825, !3826, !3827}
!3824 = !DILocalVariable(name: "fp", arg: 1, scope: !3786, file: !263, line: 58, type: !3789)
!3825 = !DILocalVariable(name: "saved_errno", scope: !3786, file: !263, line: 60, type: !72)
!3826 = !DILocalVariable(name: "fd", scope: !3786, file: !263, line: 61, type: !72)
!3827 = !DILocalVariable(name: "result", scope: !3786, file: !263, line: 62, type: !72)
!3828 = !DILocation(line: 0, scope: !3786)
!3829 = !DILocation(line: 65, column: 8, scope: !3786)
!3830 = !DILocation(line: 66, column: 10, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3786, file: !263, line: 66, column: 7)
!3832 = !DILocation(line: 66, column: 7, scope: !3786)
!3833 = !DILocation(line: 67, column: 12, scope: !3831)
!3834 = !DILocation(line: 67, column: 5, scope: !3831)
!3835 = !DILocation(line: 72, column: 9, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3786, file: !263, line: 72, column: 7)
!3837 = !DILocation(line: 72, column: 23, scope: !3836)
!3838 = !DILocation(line: 72, column: 33, scope: !3836)
!3839 = !DILocation(line: 72, column: 26, scope: !3836)
!3840 = !DILocation(line: 72, column: 59, scope: !3836)
!3841 = !DILocation(line: 73, column: 7, scope: !3836)
!3842 = !DILocation(line: 73, column: 10, scope: !3836)
!3843 = !DILocation(line: 72, column: 7, scope: !3786)
!3844 = !DILocation(line: 100, column: 12, scope: !3786)
!3845 = !DILocation(line: 105, column: 7, scope: !3786)
!3846 = !DILocation(line: 74, column: 19, scope: !3836)
!3847 = !DILocation(line: 105, column: 19, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3786, file: !263, line: 105, column: 7)
!3849 = !DILocation(line: 107, column: 13, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3848, file: !263, line: 106, column: 5)
!3851 = !DILocation(line: 109, column: 5, scope: !3850)
!3852 = !DILocation(line: 112, column: 1, scope: !3786)
!3853 = !DISubprogram(name: "fclose", scope: !757, file: !757, line: 213, type: !3854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!72, !3807}
!3856 = !DISubprogram(name: "lseek", scope: !1446, file: !1446, line: 334, type: !3857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!784, !72, !784, !72}
!3859 = distinct !DISubprogram(name: "rpl_fcntl", scope: !192, file: !192, line: 202, type: !3860, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !3862)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!72, !72, !72, null}
!3862 = !{!3863, !3864, !3865, !3875, !3876, !3879, !3881, !3885}
!3863 = !DILocalVariable(name: "fd", arg: 1, scope: !3859, file: !192, line: 202, type: !72)
!3864 = !DILocalVariable(name: "action", arg: 2, scope: !3859, file: !192, line: 202, type: !72)
!3865 = !DILocalVariable(name: "arg", scope: !3859, file: !192, line: 208, type: !3866)
!3866 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3452, line: 14, baseType: !3867)
!3867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !192, baseType: !3868)
!3868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3869, size: 192, elements: !790)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3870)
!3870 = !{!3871, !3872, !3873, !3874}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3869, file: !192, line: 208, baseType: !6, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3869, file: !192, line: 208, baseType: !6, size: 32, offset: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3869, file: !192, line: 208, baseType: !37, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3869, file: !192, line: 208, baseType: !37, size: 64, offset: 128)
!3875 = !DILocalVariable(name: "result", scope: !3859, file: !192, line: 209, type: !72)
!3876 = !DILocalVariable(name: "target", scope: !3877, file: !192, line: 215, type: !72)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !192, line: 214, column: 7)
!3878 = distinct !DILexicalBlock(scope: !3859, file: !192, line: 212, column: 5)
!3879 = !DILocalVariable(name: "target", scope: !3880, file: !192, line: 222, type: !72)
!3880 = distinct !DILexicalBlock(scope: !3878, file: !192, line: 221, column: 7)
!3881 = !DILocalVariable(name: "x", scope: !3882, file: !192, line: 423, type: !72)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !192, line: 422, column: 13)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !192, line: 260, column: 11)
!3884 = distinct !DILexicalBlock(scope: !3878, file: !192, line: 257, column: 7)
!3885 = !DILocalVariable(name: "p", scope: !3886, file: !192, line: 431, type: !37)
!3886 = distinct !DILexicalBlock(scope: !3883, file: !192, line: 430, column: 13)
!3887 = !DILocation(line: 0, scope: !3859)
!3888 = !DILocation(line: 208, column: 3, scope: !3859)
!3889 = !DILocation(line: 208, column: 11, scope: !3859)
!3890 = !DILocation(line: 210, column: 3, scope: !3859)
!3891 = !DILocation(line: 211, column: 3, scope: !3859)
!3892 = !DILocation(line: 215, column: 22, scope: !3877)
!3893 = !DILocation(line: 0, scope: !3877)
!3894 = !DILocalVariable(name: "fd", arg: 1, scope: !3895, file: !192, line: 447, type: !72)
!3895 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !192, file: !192, line: 447, type: !193, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !3896)
!3896 = !{!3894, !3897, !3898}
!3897 = !DILocalVariable(name: "target", arg: 2, scope: !3895, file: !192, line: 447, type: !72)
!3898 = !DILocalVariable(name: "result", scope: !3895, file: !192, line: 449, type: !72)
!3899 = !DILocation(line: 0, scope: !3895, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 216, column: 18, scope: !3877)
!3901 = !DILocation(line: 482, column: 12, scope: !3895, inlinedAt: !3900)
!3902 = !DILocation(line: 222, column: 22, scope: !3880)
!3903 = !DILocation(line: 0, scope: !3880)
!3904 = !DILocation(line: 0, scope: !191, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 223, column: 18, scope: !3880)
!3906 = !DILocation(line: 508, column: 12, scope: !3907, inlinedAt: !3905)
!3907 = distinct !DILexicalBlock(scope: !191, file: !192, line: 508, column: 7)
!3908 = !DILocation(line: 508, column: 9, scope: !3907, inlinedAt: !3905)
!3909 = !DILocation(line: 508, column: 7, scope: !191, inlinedAt: !3905)
!3910 = !DILocation(line: 510, column: 16, scope: !3911, inlinedAt: !3905)
!3911 = distinct !DILexicalBlock(scope: !3907, file: !192, line: 509, column: 5)
!3912 = !DILocation(line: 511, column: 13, scope: !3913, inlinedAt: !3905)
!3913 = distinct !DILexicalBlock(scope: !3911, file: !192, line: 511, column: 11)
!3914 = !DILocation(line: 511, column: 23, scope: !3913, inlinedAt: !3905)
!3915 = !DILocation(line: 511, column: 26, scope: !3913, inlinedAt: !3905)
!3916 = !DILocation(line: 511, column: 32, scope: !3913, inlinedAt: !3905)
!3917 = !DILocation(line: 511, column: 11, scope: !3911, inlinedAt: !3905)
!3918 = !DILocation(line: 513, column: 30, scope: !3919, inlinedAt: !3905)
!3919 = distinct !DILexicalBlock(scope: !3913, file: !192, line: 512, column: 9)
!3920 = !DILocation(line: 529, column: 19, scope: !203, inlinedAt: !3905)
!3921 = !DILocation(line: 0, scope: !3895, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 521, column: 20, scope: !3923, inlinedAt: !3905)
!3923 = distinct !DILexicalBlock(scope: !3913, file: !192, line: 520, column: 9)
!3924 = !DILocation(line: 482, column: 12, scope: !3895, inlinedAt: !3922)
!3925 = !DILocation(line: 522, column: 22, scope: !3926, inlinedAt: !3905)
!3926 = distinct !DILexicalBlock(scope: !3923, file: !192, line: 522, column: 15)
!3927 = !DILocation(line: 522, column: 15, scope: !3923, inlinedAt: !3905)
!3928 = !DILocation(line: 523, column: 32, scope: !3926, inlinedAt: !3905)
!3929 = !DILocation(line: 523, column: 13, scope: !3926, inlinedAt: !3905)
!3930 = !DILocation(line: 0, scope: !3895, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 528, column: 14, scope: !3907, inlinedAt: !3905)
!3932 = !DILocation(line: 482, column: 12, scope: !3895, inlinedAt: !3931)
!3933 = !DILocation(line: 0, scope: !3907, inlinedAt: !3905)
!3934 = !DILocation(line: 529, column: 9, scope: !203, inlinedAt: !3905)
!3935 = !DILocation(line: 531, column: 19, scope: !202, inlinedAt: !3905)
!3936 = !DILocation(line: 0, scope: !202, inlinedAt: !3905)
!3937 = !DILocation(line: 532, column: 17, scope: !206, inlinedAt: !3905)
!3938 = !DILocation(line: 532, column: 21, scope: !206, inlinedAt: !3905)
!3939 = !DILocation(line: 532, column: 54, scope: !206, inlinedAt: !3905)
!3940 = !DILocation(line: 532, column: 24, scope: !206, inlinedAt: !3905)
!3941 = !DILocation(line: 532, column: 68, scope: !206, inlinedAt: !3905)
!3942 = !DILocation(line: 532, column: 11, scope: !202, inlinedAt: !3905)
!3943 = !DILocation(line: 534, column: 29, scope: !205, inlinedAt: !3905)
!3944 = !DILocation(line: 0, scope: !205, inlinedAt: !3905)
!3945 = !DILocation(line: 535, column: 11, scope: !205, inlinedAt: !3905)
!3946 = !DILocation(line: 536, column: 17, scope: !205, inlinedAt: !3905)
!3947 = !DILocation(line: 538, column: 9, scope: !205, inlinedAt: !3905)
!3948 = !DILocation(line: 328, column: 22, scope: !3883)
!3949 = !DILocation(line: 329, column: 13, scope: !3883)
!3950 = !DILocation(line: 423, column: 23, scope: !3882)
!3951 = !DILocation(line: 0, scope: !3882)
!3952 = !DILocation(line: 424, column: 24, scope: !3882)
!3953 = !DILocation(line: 426, column: 13, scope: !3883)
!3954 = !DILocation(line: 431, column: 25, scope: !3886)
!3955 = !DILocation(line: 0, scope: !3886)
!3956 = !DILocation(line: 432, column: 24, scope: !3886)
!3957 = !DILocation(line: 434, column: 13, scope: !3883)
!3958 = !DILocation(line: 0, scope: !3878)
!3959 = !DILocation(line: 442, column: 3, scope: !3859)
!3960 = !DILocation(line: 444, column: 1, scope: !3859)
!3961 = !DILocation(line: 443, column: 3, scope: !3859)
!3962 = !DISubprogram(name: "fcntl", scope: !1306, file: !1306, line: 176, type: !3860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!3963 = distinct !DISubprogram(name: "rpl_fflush", scope: !265, file: !265, line: 129, type: !3964, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !4000)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!72, !3966}
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !943, line: 7, baseType: !3968)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !3969)
!3969 = !{!3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3968, file: !762, line: 51, baseType: !72, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3968, file: !762, line: 54, baseType: !35, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3968, file: !762, line: 55, baseType: !35, size: 64, offset: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3968, file: !762, line: 56, baseType: !35, size: 64, offset: 192)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3968, file: !762, line: 57, baseType: !35, size: 64, offset: 256)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3968, file: !762, line: 58, baseType: !35, size: 64, offset: 320)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3968, file: !762, line: 59, baseType: !35, size: 64, offset: 384)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3968, file: !762, line: 60, baseType: !35, size: 64, offset: 448)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3968, file: !762, line: 61, baseType: !35, size: 64, offset: 512)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3968, file: !762, line: 64, baseType: !35, size: 64, offset: 576)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3968, file: !762, line: 65, baseType: !35, size: 64, offset: 640)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3968, file: !762, line: 66, baseType: !35, size: 64, offset: 704)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3968, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3968, file: !762, line: 70, baseType: !3984, size: 64, offset: 832)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3968, file: !762, line: 72, baseType: !72, size: 32, offset: 896)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3968, file: !762, line: 73, baseType: !72, size: 32, offset: 928)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3968, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3968, file: !762, line: 77, baseType: !141, size: 16, offset: 1024)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3968, file: !762, line: 78, baseType: !787, size: 8, offset: 1040)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3968, file: !762, line: 79, baseType: !789, size: 8, offset: 1048)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3968, file: !762, line: 81, baseType: !793, size: 64, offset: 1088)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3968, file: !762, line: 89, baseType: !796, size: 64, offset: 1152)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3968, file: !762, line: 91, baseType: !798, size: 64, offset: 1216)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3968, file: !762, line: 92, baseType: !801, size: 64, offset: 1280)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3968, file: !762, line: 93, baseType: !3984, size: 64, offset: 1344)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3968, file: !762, line: 94, baseType: !37, size: 64, offset: 1408)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3968, file: !762, line: 95, baseType: !38, size: 64, offset: 1472)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3968, file: !762, line: 96, baseType: !72, size: 32, offset: 1536)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3968, file: !762, line: 98, baseType: !808, size: 160, offset: 1568)
!4000 = !{!4001}
!4001 = !DILocalVariable(name: "stream", arg: 1, scope: !3963, file: !265, line: 129, type: !3966)
!4002 = !DILocation(line: 0, scope: !3963)
!4003 = !DILocation(line: 150, column: 14, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3963, file: !265, line: 150, column: 7)
!4005 = !DILocation(line: 150, column: 22, scope: !4004)
!4006 = !DILocation(line: 150, column: 27, scope: !4004)
!4007 = !DILocation(line: 150, column: 7, scope: !3963)
!4008 = !DILocation(line: 151, column: 12, scope: !4004)
!4009 = !DILocation(line: 151, column: 5, scope: !4004)
!4010 = !DILocalVariable(name: "fp", arg: 1, scope: !4011, file: !265, line: 41, type: !3966)
!4011 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !265, file: !265, line: 41, type: !4012, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !4014)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !3966}
!4014 = !{!4010}
!4015 = !DILocation(line: 0, scope: !4011, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 156, column: 3, scope: !3963)
!4017 = !DILocation(line: 43, column: 11, scope: !4018, inlinedAt: !4016)
!4018 = distinct !DILexicalBlock(scope: !4011, file: !265, line: 43, column: 7)
!4019 = !DILocation(line: 43, column: 18, scope: !4018, inlinedAt: !4016)
!4020 = !DILocation(line: 43, column: 7, scope: !4011, inlinedAt: !4016)
!4021 = !DILocation(line: 45, column: 5, scope: !4018, inlinedAt: !4016)
!4022 = !DILocation(line: 158, column: 10, scope: !3963)
!4023 = !DILocation(line: 158, column: 3, scope: !3963)
!4024 = !DILocation(line: 235, column: 1, scope: !3963)
!4025 = !DISubprogram(name: "fflush", scope: !757, file: !757, line: 218, type: !4026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!72, !3984}
!4028 = distinct !DISubprogram(name: "rpl_fseeko", scope: !267, file: !267, line: 28, type: !4029, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !4065)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!72, !4031, !1292, !72}
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !943, line: 7, baseType: !4033)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !4034)
!4034 = !{!4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4033, file: !762, line: 51, baseType: !72, size: 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4033, file: !762, line: 54, baseType: !35, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4033, file: !762, line: 55, baseType: !35, size: 64, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4033, file: !762, line: 56, baseType: !35, size: 64, offset: 192)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4033, file: !762, line: 57, baseType: !35, size: 64, offset: 256)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4033, file: !762, line: 58, baseType: !35, size: 64, offset: 320)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4033, file: !762, line: 59, baseType: !35, size: 64, offset: 384)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4033, file: !762, line: 60, baseType: !35, size: 64, offset: 448)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4033, file: !762, line: 61, baseType: !35, size: 64, offset: 512)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4033, file: !762, line: 64, baseType: !35, size: 64, offset: 576)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4033, file: !762, line: 65, baseType: !35, size: 64, offset: 640)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4033, file: !762, line: 66, baseType: !35, size: 64, offset: 704)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4033, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4033, file: !762, line: 70, baseType: !4049, size: 64, offset: 832)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4033, file: !762, line: 72, baseType: !72, size: 32, offset: 896)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4033, file: !762, line: 73, baseType: !72, size: 32, offset: 928)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4033, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4033, file: !762, line: 77, baseType: !141, size: 16, offset: 1024)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4033, file: !762, line: 78, baseType: !787, size: 8, offset: 1040)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4033, file: !762, line: 79, baseType: !789, size: 8, offset: 1048)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4033, file: !762, line: 81, baseType: !793, size: 64, offset: 1088)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4033, file: !762, line: 89, baseType: !796, size: 64, offset: 1152)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4033, file: !762, line: 91, baseType: !798, size: 64, offset: 1216)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4033, file: !762, line: 92, baseType: !801, size: 64, offset: 1280)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4033, file: !762, line: 93, baseType: !4049, size: 64, offset: 1344)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4033, file: !762, line: 94, baseType: !37, size: 64, offset: 1408)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4033, file: !762, line: 95, baseType: !38, size: 64, offset: 1472)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4033, file: !762, line: 96, baseType: !72, size: 32, offset: 1536)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4033, file: !762, line: 98, baseType: !808, size: 160, offset: 1568)
!4065 = !{!4066, !4067, !4068, !4069}
!4066 = !DILocalVariable(name: "fp", arg: 1, scope: !4028, file: !267, line: 28, type: !4031)
!4067 = !DILocalVariable(name: "offset", arg: 2, scope: !4028, file: !267, line: 28, type: !1292)
!4068 = !DILocalVariable(name: "whence", arg: 3, scope: !4028, file: !267, line: 28, type: !72)
!4069 = !DILocalVariable(name: "pos", scope: !4070, file: !267, line: 117, type: !1292)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !267, line: 113, column: 5)
!4071 = distinct !DILexicalBlock(scope: !4028, file: !267, line: 52, column: 7)
!4072 = !DILocation(line: 0, scope: !4028)
!4073 = !DILocation(line: 52, column: 11, scope: !4071)
!4074 = !DILocation(line: 52, column: 31, scope: !4071)
!4075 = !DILocation(line: 52, column: 24, scope: !4071)
!4076 = !DILocation(line: 53, column: 7, scope: !4071)
!4077 = !DILocation(line: 53, column: 14, scope: !4071)
!4078 = !{!1003, !682, i64 40}
!4079 = !DILocation(line: 53, column: 35, scope: !4071)
!4080 = !{!1003, !682, i64 32}
!4081 = !DILocation(line: 53, column: 28, scope: !4071)
!4082 = !DILocation(line: 54, column: 7, scope: !4071)
!4083 = !DILocation(line: 54, column: 14, scope: !4071)
!4084 = !{!1003, !682, i64 72}
!4085 = !DILocation(line: 54, column: 28, scope: !4071)
!4086 = !DILocation(line: 52, column: 7, scope: !4028)
!4087 = !DILocation(line: 117, column: 26, scope: !4070)
!4088 = !DILocation(line: 117, column: 19, scope: !4070)
!4089 = !DILocation(line: 0, scope: !4070)
!4090 = !DILocation(line: 118, column: 15, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4070, file: !267, line: 118, column: 11)
!4092 = !DILocation(line: 118, column: 11, scope: !4070)
!4093 = !DILocation(line: 129, column: 11, scope: !4070)
!4094 = !DILocation(line: 129, column: 18, scope: !4070)
!4095 = !DILocation(line: 130, column: 11, scope: !4070)
!4096 = !DILocation(line: 130, column: 19, scope: !4070)
!4097 = !{!1003, !861, i64 144}
!4098 = !DILocation(line: 161, column: 7, scope: !4070)
!4099 = !DILocation(line: 163, column: 10, scope: !4028)
!4100 = !DILocation(line: 163, column: 3, scope: !4028)
!4101 = !DILocation(line: 164, column: 1, scope: !4028)
!4102 = !DISubprogram(name: "fseeko", scope: !757, file: !757, line: 712, type: !4103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!72, !4049, !784, !72}
!4105 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !269, file: !269, line: 86, type: !4106, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !4120)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!38, !4108, !41, !38, !4109}
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1923, line: 6, baseType: !4111)
!4111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1925, line: 21, baseType: !4112)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1925, line: 13, size: 64, elements: !4113)
!4113 = !{!4114, !4115}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4112, file: !1925, line: 15, baseType: !72, size: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4112, file: !1925, line: 20, baseType: !4116, size: 32, offset: 32)
!4116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4112, file: !1925, line: 16, size: 32, elements: !4117)
!4117 = !{!4118, !4119}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4116, file: !1925, line: 18, baseType: !6, size: 32)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4116, file: !1925, line: 19, baseType: !1934, size: 32)
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4127}
!4121 = !DILocalVariable(name: "pwc", arg: 1, scope: !4105, file: !269, line: 86, type: !4108)
!4122 = !DILocalVariable(name: "s", arg: 2, scope: !4105, file: !269, line: 86, type: !41)
!4123 = !DILocalVariable(name: "n", arg: 3, scope: !4105, file: !269, line: 86, type: !38)
!4124 = !DILocalVariable(name: "ps", arg: 4, scope: !4105, file: !269, line: 86, type: !4109)
!4125 = !DILocalVariable(name: "ret", scope: !4105, file: !269, line: 88, type: !38)
!4126 = !DILocalVariable(name: "wc", scope: !4105, file: !269, line: 89, type: !1938)
!4127 = !DILocalVariable(name: "uc", scope: !4128, file: !269, line: 156, type: !43)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !269, line: 155, column: 5)
!4129 = distinct !DILexicalBlock(scope: !4105, file: !269, line: 154, column: 7)
!4130 = !DILocation(line: 0, scope: !4105)
!4131 = !DILocation(line: 89, column: 3, scope: !4105)
!4132 = !DILocation(line: 105, column: 9, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4105, file: !269, line: 105, column: 7)
!4134 = !DILocation(line: 105, column: 7, scope: !4105)
!4135 = !DILocation(line: 145, column: 9, scope: !4105)
!4136 = !DILocation(line: 154, column: 19, scope: !4129)
!4137 = !DILocation(line: 154, column: 26, scope: !4129)
!4138 = !DILocation(line: 154, column: 41, scope: !4129)
!4139 = !DILocation(line: 154, column: 7, scope: !4105)
!4140 = !DILocation(line: 156, column: 26, scope: !4128)
!4141 = !DILocation(line: 0, scope: !4128)
!4142 = !DILocation(line: 157, column: 14, scope: !4128)
!4143 = !DILocation(line: 157, column: 12, scope: !4128)
!4144 = !DILocation(line: 163, column: 1, scope: !4105)
!4145 = !DISubprogram(name: "mbrtowc", scope: !2598, file: !2598, line: 296, type: !4146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!40, !74, !41, !40, !4148}
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4149 = distinct !DISubprogram(name: "close_stream", scope: !272, file: !272, line: 56, type: !4150, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !4186)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!72, !4152}
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !943, line: 7, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !4155)
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4154, file: !762, line: 51, baseType: !72, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4154, file: !762, line: 54, baseType: !35, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4154, file: !762, line: 55, baseType: !35, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4154, file: !762, line: 56, baseType: !35, size: 64, offset: 192)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4154, file: !762, line: 57, baseType: !35, size: 64, offset: 256)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4154, file: !762, line: 58, baseType: !35, size: 64, offset: 320)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4154, file: !762, line: 59, baseType: !35, size: 64, offset: 384)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4154, file: !762, line: 60, baseType: !35, size: 64, offset: 448)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4154, file: !762, line: 61, baseType: !35, size: 64, offset: 512)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4154, file: !762, line: 64, baseType: !35, size: 64, offset: 576)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4154, file: !762, line: 65, baseType: !35, size: 64, offset: 640)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4154, file: !762, line: 66, baseType: !35, size: 64, offset: 704)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4154, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4154, file: !762, line: 70, baseType: !4170, size: 64, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4154, file: !762, line: 72, baseType: !72, size: 32, offset: 896)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4154, file: !762, line: 73, baseType: !72, size: 32, offset: 928)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4154, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4154, file: !762, line: 77, baseType: !141, size: 16, offset: 1024)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4154, file: !762, line: 78, baseType: !787, size: 8, offset: 1040)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4154, file: !762, line: 79, baseType: !789, size: 8, offset: 1048)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4154, file: !762, line: 81, baseType: !793, size: 64, offset: 1088)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4154, file: !762, line: 89, baseType: !796, size: 64, offset: 1152)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4154, file: !762, line: 91, baseType: !798, size: 64, offset: 1216)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4154, file: !762, line: 92, baseType: !801, size: 64, offset: 1280)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4154, file: !762, line: 93, baseType: !4170, size: 64, offset: 1344)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4154, file: !762, line: 94, baseType: !37, size: 64, offset: 1408)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4154, file: !762, line: 95, baseType: !38, size: 64, offset: 1472)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4154, file: !762, line: 96, baseType: !72, size: 32, offset: 1536)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4154, file: !762, line: 98, baseType: !808, size: 160, offset: 1568)
!4186 = !{!4187, !4188, !4190, !4191}
!4187 = !DILocalVariable(name: "stream", arg: 1, scope: !4149, file: !272, line: 56, type: !4152)
!4188 = !DILocalVariable(name: "some_pending", scope: !4149, file: !272, line: 58, type: !4189)
!4189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!4190 = !DILocalVariable(name: "prev_fail", scope: !4149, file: !272, line: 59, type: !4189)
!4191 = !DILocalVariable(name: "fclose_fail", scope: !4149, file: !272, line: 60, type: !4189)
!4192 = !DILocation(line: 0, scope: !4149)
!4193 = !DILocation(line: 58, column: 30, scope: !4149)
!4194 = !DILocalVariable(name: "__stream", arg: 1, scope: !4195, file: !994, line: 135, type: !4152)
!4195 = distinct !DISubprogram(name: "ferror_unlocked", scope: !994, file: !994, line: 135, type: !4150, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !4196)
!4196 = !{!4194}
!4197 = !DILocation(line: 0, scope: !4195, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 59, column: 27, scope: !4149)
!4199 = !DILocation(line: 137, column: 10, scope: !4195, inlinedAt: !4198)
!4200 = !DILocation(line: 59, column: 43, scope: !4149)
!4201 = !DILocation(line: 60, column: 29, scope: !4149)
!4202 = !DILocation(line: 60, column: 45, scope: !4149)
!4203 = !DILocation(line: 70, column: 17, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4149, file: !272, line: 70, column: 7)
!4205 = !DILocation(line: 58, column: 50, scope: !4149)
!4206 = !DILocation(line: 70, column: 33, scope: !4204)
!4207 = !DILocation(line: 70, column: 53, scope: !4204)
!4208 = !DILocation(line: 70, column: 59, scope: !4204)
!4209 = !DILocation(line: 70, column: 7, scope: !4149)
!4210 = !DILocation(line: 72, column: 11, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4204, file: !272, line: 71, column: 5)
!4212 = !DILocation(line: 73, column: 9, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4211, file: !272, line: 72, column: 11)
!4214 = !DILocation(line: 73, column: 15, scope: !4213)
!4215 = !DILocation(line: 78, column: 1, scope: !4149)
!4216 = distinct !DISubprogram(name: "locale_charset", scope: !274, file: !274, line: 831, type: !4217, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !4219)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!41}
!4219 = !{!4220}
!4220 = !DILocalVariable(name: "codeset", scope: !4216, file: !274, line: 833, type: !41)
!4221 = !DILocation(line: 847, column: 13, scope: !4216)
!4222 = !DILocation(line: 0, scope: !4216)
!4223 = !DILocation(line: 911, column: 15, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4216, file: !274, line: 911, column: 7)
!4225 = !DILocation(line: 911, column: 7, scope: !4216)
!4226 = !DILocation(line: 1070, column: 13, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !274, line: 1070, column: 13)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !274, line: 1060, column: 7)
!4229 = distinct !DILexicalBlock(scope: !4216, file: !274, line: 1019, column: 3)
!4230 = !DILocation(line: 1070, column: 24, scope: !4227)
!4231 = !DILocation(line: 1070, column: 13, scope: !4228)
!4232 = !DILocation(line: 1158, column: 3, scope: !4216)
!4233 = !DISubprogram(name: "nl_langinfo", scope: !277, file: !277, line: 661, type: !4234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!35, !72}
!4236 = distinct !DISubprogram(name: "memcoll", scope: !663, file: !663, line: 66, type: !3699, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !4237)
!4237 = !{!4238, !4239, !4240, !4241, !4242, !4243, !4246}
!4238 = !DILocalVariable(name: "s1", arg: 1, scope: !4236, file: !663, line: 66, type: !35)
!4239 = !DILocalVariable(name: "s1len", arg: 2, scope: !4236, file: !663, line: 66, type: !38)
!4240 = !DILocalVariable(name: "s2", arg: 3, scope: !4236, file: !663, line: 66, type: !35)
!4241 = !DILocalVariable(name: "s2len", arg: 4, scope: !4236, file: !663, line: 66, type: !38)
!4242 = !DILocalVariable(name: "diff", scope: !4236, file: !663, line: 68, type: !72)
!4243 = !DILocalVariable(name: "n1", scope: !4244, file: !663, line: 81, type: !36)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !663, line: 80, column: 5)
!4245 = distinct !DILexicalBlock(scope: !4236, file: !663, line: 74, column: 7)
!4246 = !DILocalVariable(name: "n2", scope: !4244, file: !663, line: 82, type: !36)
!4247 = !DILocation(line: 0, scope: !4236)
!4248 = !DILocation(line: 74, column: 13, scope: !4245)
!4249 = !DILocation(line: 74, column: 22, scope: !4245)
!4250 = !DILocation(line: 74, column: 25, scope: !4245)
!4251 = !DILocation(line: 74, column: 48, scope: !4245)
!4252 = !DILocation(line: 74, column: 7, scope: !4236)
!4253 = !DILocation(line: 76, column: 7, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4245, file: !663, line: 75, column: 5)
!4255 = !DILocation(line: 76, column: 13, scope: !4254)
!4256 = !DILocation(line: 78, column: 5, scope: !4254)
!4257 = !DILocation(line: 81, column: 17, scope: !4244)
!4258 = !DILocation(line: 0, scope: !4244)
!4259 = !DILocation(line: 82, column: 17, scope: !4244)
!4260 = !DILocation(line: 84, column: 17, scope: !4244)
!4261 = !DILocation(line: 85, column: 17, scope: !4244)
!4262 = !DILocation(line: 87, column: 38, scope: !4244)
!4263 = !DILocation(line: 87, column: 53, scope: !4244)
!4264 = !DILocalVariable(name: "s1", arg: 1, scope: !4265, file: !663, line: 35, type: !41)
!4265 = distinct !DISubprogram(name: "strcoll_loop", scope: !663, file: !663, line: 35, type: !1699, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !4266)
!4266 = !{!4264, !4267, !4268, !4269, !4270, !4271, !4273}
!4267 = !DILocalVariable(name: "s1size", arg: 2, scope: !4265, file: !663, line: 35, type: !38)
!4268 = !DILocalVariable(name: "s2", arg: 3, scope: !4265, file: !663, line: 35, type: !41)
!4269 = !DILocalVariable(name: "s2size", arg: 4, scope: !4265, file: !663, line: 35, type: !38)
!4270 = !DILocalVariable(name: "diff", scope: !4265, file: !663, line: 37, type: !72)
!4271 = !DILocalVariable(name: "size1", scope: !4272, file: !663, line: 44, type: !38)
!4272 = distinct !DILexicalBlock(scope: !4265, file: !663, line: 40, column: 5)
!4273 = !DILocalVariable(name: "size2", scope: !4272, file: !663, line: 45, type: !38)
!4274 = !DILocation(line: 0, scope: !4265, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 87, column: 14, scope: !4244)
!4276 = !DILocation(line: 39, column: 3, scope: !4265, inlinedAt: !4275)
!4277 = !DILocation(line: 39, column: 19, scope: !4265, inlinedAt: !4275)
!4278 = !DILocation(line: 39, column: 32, scope: !4265, inlinedAt: !4275)
!4279 = !DILocation(line: 39, column: 30, scope: !4265, inlinedAt: !4275)
!4280 = !DILocation(line: 44, column: 22, scope: !4272, inlinedAt: !4275)
!4281 = !DILocation(line: 44, column: 34, scope: !4272, inlinedAt: !4275)
!4282 = !DILocation(line: 0, scope: !4272, inlinedAt: !4275)
!4283 = !DILocation(line: 45, column: 22, scope: !4272, inlinedAt: !4275)
!4284 = !DILocation(line: 45, column: 34, scope: !4272, inlinedAt: !4275)
!4285 = !DILocation(line: 48, column: 14, scope: !4272, inlinedAt: !4275)
!4286 = !DILocation(line: 49, column: 14, scope: !4272, inlinedAt: !4275)
!4287 = !DILocation(line: 51, column: 18, scope: !4288, inlinedAt: !4275)
!4288 = distinct !DILexicalBlock(scope: !4272, file: !663, line: 51, column: 11)
!4289 = !DILocation(line: 51, column: 11, scope: !4272, inlinedAt: !4275)
!4290 = !DILocation(line: 52, column: 26, scope: !4288, inlinedAt: !4275)
!4291 = !DILocation(line: 47, column: 10, scope: !4272, inlinedAt: !4275)
!4292 = !DILocation(line: 46, column: 10, scope: !4272, inlinedAt: !4275)
!4293 = !DILocation(line: 53, column: 18, scope: !4294, inlinedAt: !4275)
!4294 = distinct !DILexicalBlock(scope: !4272, file: !663, line: 53, column: 11)
!4295 = distinct !{!4295, !4276, !4296, !732}
!4296 = !DILocation(line: 55, column: 5, scope: !4265, inlinedAt: !4275)
!4297 = !DILocation(line: 89, column: 17, scope: !4244)
!4298 = !DILocation(line: 90, column: 17, scope: !4244)
!4299 = !DILocation(line: 0, scope: !4245)
!4300 = !DILocation(line: 93, column: 3, scope: !4236)
!4301 = !DISubprogram(name: "strcoll", scope: !4302, file: !4302, line: 147, type: !4303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!4302 = !DIFile(filename: "/usr/include/string.h", directory: "")
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!72, !41, !41}
!4305 = distinct !DISubprogram(name: "memcoll0", scope: !663, file: !663, line: 102, type: !1699, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !4306)
!4306 = !{!4307, !4308, !4309, !4310}
!4307 = !DILocalVariable(name: "s1", arg: 1, scope: !4305, file: !663, line: 102, type: !41)
!4308 = !DILocalVariable(name: "s1size", arg: 2, scope: !4305, file: !663, line: 102, type: !38)
!4309 = !DILocalVariable(name: "s2", arg: 3, scope: !4305, file: !663, line: 102, type: !41)
!4310 = !DILocalVariable(name: "s2size", arg: 4, scope: !4305, file: !663, line: 102, type: !38)
!4311 = !DILocation(line: 0, scope: !4305)
!4312 = !DILocation(line: 104, column: 14, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4305, file: !663, line: 104, column: 7)
!4314 = !DILocation(line: 104, column: 24, scope: !4313)
!4315 = !DILocation(line: 104, column: 27, scope: !4313)
!4316 = !DILocation(line: 104, column: 51, scope: !4313)
!4317 = !DILocation(line: 104, column: 7, scope: !4305)
!4318 = !DILocation(line: 106, column: 7, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4313, file: !663, line: 105, column: 5)
!4320 = !DILocation(line: 106, column: 13, scope: !4319)
!4321 = !DILocation(line: 107, column: 7, scope: !4319)
!4322 = !DILocation(line: 0, scope: !4265, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 110, column: 12, scope: !4313)
!4324 = !DILocation(line: 39, column: 3, scope: !4265, inlinedAt: !4323)
!4325 = !DILocation(line: 39, column: 19, scope: !4265, inlinedAt: !4323)
!4326 = !DILocation(line: 39, column: 32, scope: !4265, inlinedAt: !4323)
!4327 = !DILocation(line: 39, column: 30, scope: !4265, inlinedAt: !4323)
!4328 = !DILocation(line: 44, column: 22, scope: !4272, inlinedAt: !4323)
!4329 = !DILocation(line: 44, column: 34, scope: !4272, inlinedAt: !4323)
!4330 = !DILocation(line: 0, scope: !4272, inlinedAt: !4323)
!4331 = !DILocation(line: 45, column: 22, scope: !4272, inlinedAt: !4323)
!4332 = !DILocation(line: 45, column: 34, scope: !4272, inlinedAt: !4323)
!4333 = !DILocation(line: 48, column: 14, scope: !4272, inlinedAt: !4323)
!4334 = !DILocation(line: 49, column: 14, scope: !4272, inlinedAt: !4323)
!4335 = !DILocation(line: 51, column: 18, scope: !4288, inlinedAt: !4323)
!4336 = !DILocation(line: 51, column: 11, scope: !4272, inlinedAt: !4323)
!4337 = !DILocation(line: 52, column: 26, scope: !4288, inlinedAt: !4323)
!4338 = !DILocation(line: 47, column: 10, scope: !4272, inlinedAt: !4323)
!4339 = !DILocation(line: 46, column: 10, scope: !4272, inlinedAt: !4323)
!4340 = !DILocation(line: 53, column: 18, scope: !4294, inlinedAt: !4323)
!4341 = distinct !{!4341, !4324, !4342, !732}
!4342 = !DILocation(line: 55, column: 5, scope: !4265, inlinedAt: !4323)
!4343 = !DILocation(line: 0, scope: !4313)
!4344 = !DILocation(line: 111, column: 1, scope: !4305)
