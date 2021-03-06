; ModuleID = 'coreutils-8.32/src/uniq.bc'
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
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [OPTION]... [INPUT [OUTPUT]]\0A\00", align 1
@.str.2 = private unnamed_addr constant [173 x i8] c"Filter adjacent matching lines from INPUT (or standard input),\0Awriting to OUTPUT (or standard output).\0A\0AWith no options, matching lines are merged to the first occurrence.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [138 x i8] c"  -c, --count           prefix lines by the number of occurrences\0A  -d, --repeated        only print duplicate lines, one for each group\0A\00", align 1
@.str.4 = private unnamed_addr constant [245 x i8] c"  -D                    print all duplicate lines\0A      --all-repeated[=METHOD]  like -D, but allow separating groups\0A                                 with an empty line;\0A                                 METHOD={none(default),prepend,separate}\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"  -f, --skip-fields=N   avoid comparing the first N fields\0A\00", align 1
@.str.6 = private unnamed_addr constant [152 x i8] c"      --group[=METHOD]  show all items, separating groups with an empty line;\0A                          METHOD={separate(default),prepend,append,both}\0A\00", align 1
@.str.7 = private unnamed_addr constant [178 x i8] c"  -i, --ignore-case     ignore differences in case when comparing\0A  -s, --skip-chars=N    avoid comparing the first N characters\0A  -u, --unique          only print unique lines\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"  -z, --zero-terminated     line delimiter is NUL, not newline\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"  -w, --check-chars=N   compare no more than N characters in lines\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [120 x i8] c"\0AA field is a run of blanks (usually spaces and/or TABs), then non-blank\0Acharacters.  Fields are skipped before chars.\0A\00", align 1
@.str.13 = private unnamed_addr constant [143 x i8] c"\0ANote: 'uniq' does not detect repeated lines unless they are adjacent.\0AYou may want to sort the input first, or use 'sort -u' without 'uniq'.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"uniq\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.45 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@skip_chars = internal unnamed_addr global i64 0, align 8, !dbg !0
@skip_fields = internal unnamed_addr global i64 0, align 8, !dbg !248
@check_chars = internal unnamed_addr global i64 0, align 8, !dbg !250
@output_first_repeated = internal unnamed_addr global i1 false, align 1, !dbg !293
@output_unique = internal unnamed_addr global i1 false, align 1, !dbg !294
@output_later_repeated = internal unnamed_addr global i1 false, align 1, !dbg !295
@countmode = internal unnamed_addr global i1 false, align 4, !dbg !296
@delimit_groups = internal unnamed_addr global i32 0, align 4, !dbg !263
@.str.20 = private unnamed_addr constant [24 x i8] c"-0123456789Dcdf:is:uw:z\00", align 1
@longopts = internal constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i32 2, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 2, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !265
@optind = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.22 = private unnamed_addr constant [15 x i8] c"--all-repeated\00", align 1
@delimit_method_string = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* null], align 16, !dbg !276
@delimit_method_map = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4, !dbg !270
@grouping = internal unnamed_addr global i32 0, align 4, !dbg !282
@.str.23 = private unnamed_addr constant [8 x i8] c"--group\00", align 1
@grouping_method_string = internal constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* null], align 16, !dbg !288
@grouping_method_map = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !284
@.str.24 = private unnamed_addr constant [33 x i8] c"invalid number of fields to skip\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@ignore_case = internal unnamed_addr global i1 false, align 1, !dbg !297
@.str.25 = private unnamed_addr constant [32 x i8] c"invalid number of bytes to skip\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"invalid number of bytes to compare\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"--group is mutually exclusive with -c/-d/-D/-u\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"grouping and printing repeat counts is meaningless\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"printing all duplicated lines and repeat counts is meaningless\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.67 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"%7lu \00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"prepend\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"repeated\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"all-repeated\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"skip-fields\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"skip-chars\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"check-chars\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), align 8, !dbg !298
@.str.72 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@argmatch_die = dso_local local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !303
@.str.75 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.76 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.77 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.78 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.79 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !354
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !397
@.str.84 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.85 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.86 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !399
@.str.93 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !405
@.str.107 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.108 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.109 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.111, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.112, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.113, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.114, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.115, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.116, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.117, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.118, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.119, i32 0, i32 0), i8* null], align 16, !dbg !446
@.str.110 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.111 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.112 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.113 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.114 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.115 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.116 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.117 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.118 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.119 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !520
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !526
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !528
@.str.11.120 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.121 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.122 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.123 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.124 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.125 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.126 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !535
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !542
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !530
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !544
@.str.139 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.140 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.141 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.142 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.143 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.144 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.145 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.146 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.147 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.148 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.149 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.150 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.151 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.152 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.153 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.154 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.157 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.158 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.159 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.160 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.161 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.162 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.163 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !549
@.str.1.176 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.180 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.181 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.196 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.199 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.200 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1367 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1370, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 %0, metadata !1369, metadata !DIExpression()), !dbg !1391
  %3 = icmp eq i32 %0, 0, !dbg !1392
  br i1 %3, label %9, label %4, !dbg !1393

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1394, !tbaa !1396
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #21, !dbg !1394
  %7 = load i8*, i8** @program_name, align 8, !dbg !1394, !tbaa !1396
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #21, !dbg !1394
  br label %88, !dbg !1394

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #21, !dbg !1400
  %11 = load i8*, i8** @program_name, align 8, !dbg !1400, !tbaa !1396
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #21, !dbg !1400
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.2, i64 0, i64 0), i32 5) #21, !dbg !1401
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1401, !tbaa !1396
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1401
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i64 0, i64 0), i32 5) #21, !dbg !1402
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1402, !tbaa !1396
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #21, !dbg !1402
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.3, i64 0, i64 0), i32 5) #21, !dbg !1405
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1405, !tbaa !1396
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1405
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.4, i64 0, i64 0), i32 5) #21, !dbg !1406
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1406, !tbaa !1396
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1406
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 5) #21, !dbg !1407
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1407, !tbaa !1396
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1407
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.6, i64 0, i64 0), i32 5) #21, !dbg !1408
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1408, !tbaa !1396
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1408
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.7, i64 0, i64 0), i32 5) #21, !dbg !1409
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1409, !tbaa !1396
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1409
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 5) #21, !dbg !1410
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1410, !tbaa !1396
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !1410
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i32 5) #21, !dbg !1411
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1411, !tbaa !1396
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !1411
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 5) #21, !dbg !1412
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1412, !tbaa !1396
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !1412
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 5) #21, !dbg !1413
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1413, !tbaa !1396
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !1413
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.12, i64 0, i64 0), i32 5) #21, !dbg !1414
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1414, !tbaa !1396
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !1414
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.13, i64 0, i64 0), i32 5) #21, !dbg !1415
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1415, !tbaa !1396
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !1415
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !1374, metadata !DIExpression()) #21, !dbg !1416
  %52 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1417
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %52) #21, !dbg !1417
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %52, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #21, !dbg !1387
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !1375, metadata !DIExpression()) #21, !dbg !1416
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1376, metadata !DIExpression()) #21, !dbg !1416
  %53 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1418
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !1376, metadata !DIExpression()) #21, !dbg !1416
  br label %54, !dbg !1419

54:                                               ; preds = %59, %9
  %55 = phi i8* [ %62, %59 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %9 ]
  %56 = phi %struct.infomap* [ %60, %59 ], [ %53, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %56, metadata !1376, metadata !DIExpression()) #21, !dbg !1416
  %57 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %55) #23, !dbg !1420
  %58 = icmp eq i32 %57, 0, !dbg !1420
  br i1 %58, label %64, label %59, !dbg !1419

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.infomap, %struct.infomap* %56, i64 1, !dbg !1421
  call void @llvm.dbg.value(metadata %struct.infomap* %60, metadata !1376, metadata !DIExpression()) #21, !dbg !1416
  %61 = getelementptr inbounds %struct.infomap, %struct.infomap* %60, i64 0, i32 0, !dbg !1422
  %62 = load i8*, i8** %61, align 8, !dbg !1422, !tbaa !1423
  %63 = icmp eq i8* %62, null, !dbg !1425
  br i1 %63, label %64, label %54, !dbg !1426, !llvm.loop !1427

64:                                               ; preds = %59, %54
  %65 = phi %struct.infomap* [ %60, %59 ], [ %56, %54 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %65, metadata !1376, metadata !DIExpression()) #21, !dbg !1416
  call void @llvm.dbg.value(metadata %struct.infomap* %65, metadata !1376, metadata !DIExpression()) #21, !dbg !1416
  %66 = getelementptr inbounds %struct.infomap, %struct.infomap* %65, i64 0, i32 1, !dbg !1428
  %67 = load i8*, i8** %66, align 8, !dbg !1428, !tbaa !1430
  %68 = icmp eq i8* %67, null, !dbg !1431
  %69 = select i1 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %67, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %69, metadata !1375, metadata !DIExpression()) #21, !dbg !1416
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i32 5) #21, !dbg !1433
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0)) #21, !dbg !1433
  %72 = tail call i8* @setlocale(i32 5, i8* null) #21, !dbg !1434
  call void @llvm.dbg.value(metadata i8* %72, metadata !1383, metadata !DIExpression()) #21, !dbg !1416
  %73 = icmp eq i8* %72, null, !dbg !1435
  br i1 %73, label %81, label %74, !dbg !1437

74:                                               ; preds = %64
  %75 = tail call i32 @strncmp(i8* nonnull %72, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 3) #23, !dbg !1438
  %76 = icmp eq i32 %75, 0, !dbg !1438
  br i1 %76, label %81, label %77, !dbg !1439

77:                                               ; preds = %74
  %78 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.45, i64 0, i64 0), i32 5) #21, !dbg !1440
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1440, !tbaa !1396
  %80 = tail call i32 @fputs_unlocked(i8* %78, %struct._IO_FILE* %79) #21, !dbg !1440
  br label %81, !dbg !1442

81:                                               ; preds = %64, %74, %77
  %82 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0), i32 5) #21, !dbg !1443
  %83 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #21, !dbg !1443
  %84 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i32 5) #21, !dbg !1444
  %85 = icmp eq i8* %69, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !1444
  %86 = select i1 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), !dbg !1444
  %87 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %84, i8* %69, i8* %86) #21, !dbg !1444
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %52) #21, !dbg !1445
  br label %88

88:                                               ; preds = %81, %4
  tail call void @exit(i32 %0) #24, !dbg !1446
  unreachable, !dbg !1446
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !74 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !84 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !153 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1447 {
  %3 = alloca %struct.linebuffer, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer* %3, metadata !1471, metadata !DIExpression()), !dbg !1516
  %4 = alloca %struct.linebuffer, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer* %4, metadata !1479, metadata !DIExpression()), !dbg !1518
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x i8*], align 16
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1451, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8** %1, metadata !1452, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 0, metadata !1453, metadata !DIExpression()), !dbg !1519
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #21, !dbg !1520
  %11 = icmp ne i8* %10, null, !dbg !1521
  call void @llvm.dbg.value(metadata i1 %11, metadata !1454, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 0, metadata !1455, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 0, metadata !1456, metadata !DIExpression()), !dbg !1519
  %12 = bitcast [2 x i8*]* %8 to i8*, !dbg !1522
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #21, !dbg !1522
  call void @llvm.dbg.declare(metadata [2 x i8*]* %8, metadata !1457, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 10, metadata !1461, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 0, metadata !1462, metadata !DIExpression()), !dbg !1519
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1, !dbg !1524
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8** %13, align 8, !dbg !1525, !tbaa !1396
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0, !dbg !1526
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8** %14, align 16, !dbg !1527, !tbaa !1396
  %15 = load i8*, i8** %1, align 8, !dbg !1528, !tbaa !1396
  tail call void @set_program_name(i8* %15) #21, !dbg !1529
  %16 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #21, !dbg !1530
  %17 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #21, !dbg !1531
  %18 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #21, !dbg !1532
  %19 = tail call i32 @atexit(void ()* nonnull @close_stdout) #21, !dbg !1533
  store i64 0, i64* @skip_chars, align 8, !dbg !1534, !tbaa !1535
  store i64 0, i64* @skip_fields, align 8, !dbg !1537, !tbaa !1535
  store i64 -1, i64* @check_chars, align 8, !dbg !1538, !tbaa !1535
  store i1 true, i1* @output_first_repeated, align 1, !dbg !1539
  store i1 true, i1* @output_unique, align 1, !dbg !1540
  store i1 false, i1* @output_later_repeated, align 1, !dbg !1541
  store i1 true, i1* @countmode, align 4, !dbg !1542
  store i32 0, i32* @delimit_groups, align 4, !dbg !1543, !tbaa !1544
  %20 = bitcast i64* %5 to i8*, !dbg !1545
  %21 = bitcast i64* %6 to i8*, !dbg !1554
  %22 = bitcast i64* %7 to i8*, !dbg !1556
  %23 = bitcast i64* %9 to i8*, !dbg !1558
  br label %24, !dbg !1559

24:                                               ; preds = %36, %2
  %25 = phi i32 [ 0, %2 ], [ %37, %36 ], !dbg !1560
  %26 = phi i32 [ 0, %2 ], [ %38, %36 ], !dbg !1561
  %27 = phi i32 [ 0, %2 ], [ %39, %36 ], !dbg !1519
  %28 = phi i8 [ 10, %2 ], [ %40, %36 ], !dbg !1562
  %29 = phi i8 [ 0, %2 ], [ %41, %36 ], !dbg !1563
  call void @llvm.dbg.value(metadata i8 %29, metadata !1462, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %28, metadata !1461, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %27, metadata !1456, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %26, metadata !1455, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %25, metadata !1453, metadata !DIExpression()), !dbg !1519
  %30 = icmp eq i32 %25, -1, !dbg !1564
  %31 = icmp ne i32 %27, 0, !dbg !1565
  %32 = and i1 %11, %31, !dbg !1566
  %33 = or i1 %30, %32, !dbg !1567
  br i1 %33, label %42, label %34, !dbg !1567

34:                                               ; preds = %24
  %35 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #21, !dbg !1568
  call void @llvm.dbg.value(metadata i32 %35, metadata !1453, metadata !DIExpression()), !dbg !1519
  switch i32 %35, label %161 [
    i32 -1, label %42
    i32 1, label %65
    i32 48, label %93
    i32 49, label %93
    i32 50, label %93
    i32 51, label %93
    i32 52, label %93
    i32 53, label %93
    i32 54, label %93
    i32 55, label %93
    i32 56, label %93
    i32 57, label %93
    i32 99, label %110
    i32 100, label %111
    i32 68, label %112
    i32 128, label %122
    i32 102, label %131
    i32 105, label %139
    i32 115, label %140
    i32 117, label %148
    i32 119, label %149
    i32 122, label %36
    i32 -130, label %157
    i32 -131, label %158
  ], !dbg !1569

36:                                               ; preds = %34, %109, %107, %91, %110, %111, %120, %137, %139, %146, %148, %155, %126, %125, %55
  %37 = phi i32 [ %43, %55 ], [ 119, %155 ], [ 117, %148 ], [ 115, %146 ], [ 105, %139 ], [ 102, %137 ], [ 128, %125 ], [ 128, %126 ], [ 68, %120 ], [ 100, %111 ], [ 99, %110 ], [ 1, %91 ], [ %35, %107 ], [ %35, %109 ], [ %35, %34 ]
  %38 = phi i32 [ %26, %55 ], [ %26, %155 ], [ %26, %148 ], [ %26, %146 ], [ %26, %139 ], [ 2, %137 ], [ %26, %125 ], [ %26, %126 ], [ %26, %120 ], [ %26, %111 ], [ %26, %110 ], [ %26, %91 ], [ 1, %107 ], [ 1, %109 ], [ %26, %34 ]
  %39 = phi i32 [ %61, %55 ], [ %27, %155 ], [ %27, %148 ], [ %27, %146 ], [ %27, %139 ], [ %27, %137 ], [ %27, %125 ], [ %27, %126 ], [ %27, %120 ], [ %27, %111 ], [ %27, %110 ], [ %92, %91 ], [ %27, %107 ], [ %27, %109 ], [ %27, %34 ]
  %40 = phi i8 [ %28, %55 ], [ %28, %155 ], [ %28, %148 ], [ %28, %146 ], [ %28, %139 ], [ %28, %137 ], [ %28, %125 ], [ %28, %126 ], [ %28, %120 ], [ %28, %111 ], [ %28, %110 ], [ %28, %91 ], [ %28, %107 ], [ %28, %109 ], [ 0, %34 ]
  %41 = phi i8 [ %29, %55 ], [ %29, %155 ], [ 1, %148 ], [ %29, %146 ], [ %29, %139 ], [ %29, %137 ], [ %29, %125 ], [ %29, %126 ], [ 1, %120 ], [ 1, %111 ], [ 1, %110 ], [ %29, %91 ], [ %29, %107 ], [ %29, %109 ], [ %29, %34 ]
  br label %24, !dbg !1519, !llvm.loop !1570

42:                                               ; preds = %34, %24
  %43 = phi i32 [ %25, %24 ], [ %35, %34 ], !dbg !1519
  call void @llvm.dbg.value(metadata i32 %43, metadata !1453, metadata !DIExpression()), !dbg !1519
  %44 = load i32, i32* @optind, align 4, !dbg !1572, !tbaa !1575
  %45 = icmp slt i32 %44, %0, !dbg !1577
  br i1 %45, label %46, label %162, !dbg !1578

46:                                               ; preds = %42
  %47 = icmp eq i32 %27, 2, !dbg !1579
  br i1 %47, label %48, label %55, !dbg !1581

48:                                               ; preds = %46
  %49 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 5) #21, !dbg !1582
  %50 = load i32, i32* @optind, align 4, !dbg !1584, !tbaa !1575
  %51 = sext i32 %50 to i64, !dbg !1585
  %52 = getelementptr inbounds i8*, i8** %1, i64 %51, !dbg !1585
  %53 = load i8*, i8** %52, align 8, !dbg !1585, !tbaa !1396
  %54 = call i8* @quote(i8* %53) #21, !dbg !1586
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %49, i8* %54) #21, !dbg !1587
  call void @usage(i32 1) #25, !dbg !1588
  unreachable, !dbg !1588

55:                                               ; preds = %46
  %56 = add nsw i32 %44, 1, !dbg !1589
  store i32 %56, i32* @optind, align 4, !dbg !1589, !tbaa !1575
  %57 = sext i32 %44 to i64, !dbg !1590
  %58 = getelementptr inbounds i8*, i8** %1, i64 %57, !dbg !1590
  %59 = bitcast i8** %58 to i64*, !dbg !1590
  %60 = load i64, i64* %59, align 8, !dbg !1590, !tbaa !1396
  %61 = add i32 %27, 1, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %61, metadata !1456, metadata !DIExpression()), !dbg !1519
  %62 = zext i32 %27 to i64, !dbg !1592
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 %62, !dbg !1592
  %64 = bitcast i8** %63 to i64*, !dbg !1593
  store i64 %60, i64* %64, align 8, !dbg !1593, !tbaa !1396
  br label %36, !dbg !1594

65:                                               ; preds = %34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #21, !dbg !1595
  %66 = load i8*, i8** @optarg, align 8, !dbg !1596, !tbaa !1396
  %67 = load i8, i8* %66, align 1, !dbg !1596, !tbaa !1544
  %68 = icmp eq i8 %67, 43, !dbg !1598
  br i1 %68, label %69, label %79, !dbg !1599

69:                                               ; preds = %65
  %70 = call i32 @posix2_version() #21, !dbg !1600
  call void @llvm.dbg.value(metadata i32 %70, metadata !1605, metadata !DIExpression()) #21, !dbg !1607
  %71 = add i32 %70, -200112, !dbg !1608
  %72 = icmp ult i32 %71, 697, !dbg !1608
  br i1 %72, label %79, label %73, !dbg !1609

73:                                               ; preds = %69
  %74 = load i8*, i8** @optarg, align 8, !dbg !1610, !tbaa !1396
  call void @llvm.dbg.value(metadata i64* %9, metadata !1463, metadata !DIExpression(DW_OP_deref)), !dbg !1558
  %75 = call i32 @xstrtoumax(i8* %74, i8** null, i32 10, i64* nonnull %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #21, !dbg !1611
  %76 = icmp eq i32 %75, 0, !dbg !1612
  call void @llvm.dbg.value(metadata i64 undef, metadata !1463, metadata !DIExpression()), !dbg !1558
  br i1 %76, label %77, label %79, !dbg !1613

77:                                               ; preds = %73
  %78 = load i64, i64* %9, align 8, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %78, metadata !1463, metadata !DIExpression()), !dbg !1558
  store i64 %78, i64* @skip_chars, align 8, !dbg !1615, !tbaa !1535
  br label %91, !dbg !1616

79:                                               ; preds = %73, %69, %65
  %80 = icmp eq i32 %27, 2, !dbg !1617
  br i1 %80, label %81, label %85, !dbg !1619

81:                                               ; preds = %79
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 5) #21, !dbg !1620
  %83 = load i8*, i8** @optarg, align 8, !dbg !1622, !tbaa !1396
  %84 = call i8* @quote(i8* %83) #21, !dbg !1623
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82, i8* %84) #21, !dbg !1624
  call void @usage(i32 1) #25, !dbg !1625
  unreachable, !dbg !1625

85:                                               ; preds = %79
  %86 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !1626, !tbaa !1396
  %87 = add i32 %27, 1, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %87, metadata !1456, metadata !DIExpression()), !dbg !1519
  %88 = zext i32 %27 to i64, !dbg !1628
  %89 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 %88, !dbg !1628
  %90 = bitcast i8** %89 to i64*, !dbg !1629
  store i64 %86, i64* %90, align 8, !dbg !1629, !tbaa !1396
  br label %91

91:                                               ; preds = %85, %77
  %92 = phi i32 [ %87, %85 ], [ %27, %77 ], !dbg !1519
  call void @llvm.dbg.value(metadata i32 %92, metadata !1456, metadata !DIExpression()), !dbg !1519
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #21, !dbg !1630
  br label %36, !dbg !1631

93:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34, %34, %34
  %94 = icmp eq i32 %26, 2, !dbg !1632
  br i1 %94, label %95, label %98, !dbg !1635

95:                                               ; preds = %93
  store i64 0, i64* @skip_fields, align 8, !dbg !1636, !tbaa !1535
  %96 = add nsw i32 %35, -48, !dbg !1637
  %97 = sext i32 %96 to i64, !dbg !1637
  br label %107, !dbg !1637

98:                                               ; preds = %93
  %99 = load i64, i64* @skip_fields, align 8, !dbg !1637, !tbaa !1535
  %100 = icmp ugt i64 %99, 1844674407370955161, !dbg !1637
  br i1 %100, label %109, label %101, !dbg !1637

101:                                              ; preds = %98
  %102 = mul nuw i64 %99, 10, !dbg !1637
  %103 = add nsw i32 %35, -48, !dbg !1637
  %104 = sext i32 %103 to i64, !dbg !1637
  %105 = add i64 %102, %104, !dbg !1637
  %106 = icmp ult i64 %105, %99, !dbg !1637
  br i1 %106, label %109, label %107, !dbg !1637

107:                                              ; preds = %95, %101
  %108 = phi i64 [ %97, %95 ], [ %105, %101 ]
  store i64 %108, i64* @skip_fields, align 8, !dbg !1637, !tbaa !1535
  br label %36, !dbg !1639

109:                                              ; preds = %101, %98
  store i64 -1, i64* @skip_fields, align 8, !dbg !1640, !tbaa !1535
  br label %36, !dbg !1641

110:                                              ; preds = %34
  store i1 false, i1* @countmode, align 4, !dbg !1642
  call void @llvm.dbg.value(metadata i8 1, metadata !1462, metadata !DIExpression()), !dbg !1519
  br label %36, !dbg !1643

111:                                              ; preds = %34
  store i1 false, i1* @output_unique, align 1, !dbg !1644
  call void @llvm.dbg.value(metadata i8 1, metadata !1462, metadata !DIExpression()), !dbg !1519
  br label %36, !dbg !1645

112:                                              ; preds = %34
  store i1 false, i1* @output_unique, align 1, !dbg !1646
  store i1 true, i1* @output_later_repeated, align 1, !dbg !1647
  %113 = load i8*, i8** @optarg, align 8, !dbg !1648, !tbaa !1396
  %114 = icmp eq i8* %113, null, !dbg !1650
  br i1 %114, label %120, label %115, !dbg !1651

115:                                              ; preds = %112
  %116 = load void ()*, void ()** @argmatch_die, align 8, !dbg !1652, !tbaa !1396
  %117 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %113, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @delimit_method_string, i64 0, i64 0), i8* bitcast ([3 x i32]* @delimit_method_map to i8*), i64 4, void ()* %116) #21, !dbg !1652
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* @delimit_method_map, i64 0, i64 %117, !dbg !1652
  %119 = load i32, i32* %118, align 4, !dbg !1652, !tbaa !1544
  br label %120

120:                                              ; preds = %112, %115
  %121 = phi i32 [ %119, %115 ], [ 0, %112 ], !dbg !1653
  store i32 %121, i32* @delimit_groups, align 4, !dbg !1653, !tbaa !1544
  call void @llvm.dbg.value(metadata i8 1, metadata !1462, metadata !DIExpression()), !dbg !1519
  br label %36, !dbg !1654

122:                                              ; preds = %34
  %123 = load i8*, i8** @optarg, align 8, !dbg !1655, !tbaa !1396
  %124 = icmp eq i8* %123, null, !dbg !1657
  br i1 %124, label %125, label %126, !dbg !1658

125:                                              ; preds = %122
  store i32 3, i32* @grouping, align 4, !dbg !1659, !tbaa !1544
  br label %36, !dbg !1660

126:                                              ; preds = %122
  %127 = load void ()*, void ()** @argmatch_die, align 8, !dbg !1661, !tbaa !1396
  %128 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* nonnull %123, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @grouping_method_string, i64 0, i64 0), i8* bitcast ([4 x i32]* @grouping_method_map to i8*), i64 4, void ()* %127) #21, !dbg !1661
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* @grouping_method_map, i64 0, i64 %128, !dbg !1661
  %130 = load i32, i32* %129, align 4, !dbg !1661, !tbaa !1544
  store i32 %130, i32* @grouping, align 4, !dbg !1662, !tbaa !1544
  br label %36

131:                                              ; preds = %34
  call void @llvm.dbg.value(metadata i32 2, metadata !1455, metadata !DIExpression()), !dbg !1519
  %132 = load i8*, i8** @optarg, align 8, !dbg !1663, !tbaa !1396
  call void @llvm.dbg.value(metadata i8* %132, metadata !1550, metadata !DIExpression()) #21, !dbg !1556
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), metadata !1551, metadata !DIExpression()) #21, !dbg !1556
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #21, !dbg !1664
  call void @llvm.dbg.value(metadata i64* %7, metadata !1552, metadata !DIExpression(DW_OP_deref)) #21, !dbg !1556
  %133 = call i32 @xstrtoumax(i8* %132, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #21, !dbg !1665
  %134 = icmp ult i32 %133, 2, !dbg !1666
  br i1 %134, label %137, label %135, !dbg !1666

135:                                              ; preds = %131
  %136 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i32 5) #21, !dbg !1667
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %132, i8* %136) #21, !dbg !1667
  unreachable, !dbg !1667

137:                                              ; preds = %131
  %138 = load i64, i64* %7, align 8, !dbg !1669, !tbaa !1535
  call void @llvm.dbg.value(metadata i64 %138, metadata !1552, metadata !DIExpression()) #21, !dbg !1556
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #21, !dbg !1670
  store i64 %138, i64* @skip_fields, align 8, !dbg !1671, !tbaa !1535
  br label %36, !dbg !1672

139:                                              ; preds = %34
  store i1 true, i1* @ignore_case, align 1, !dbg !1673
  br label %36, !dbg !1674

140:                                              ; preds = %34
  %141 = load i8*, i8** @optarg, align 8, !dbg !1675, !tbaa !1396
  call void @llvm.dbg.value(metadata i8* %141, metadata !1550, metadata !DIExpression()) #21, !dbg !1554
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), metadata !1551, metadata !DIExpression()) #21, !dbg !1554
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #21, !dbg !1676
  call void @llvm.dbg.value(metadata i64* %6, metadata !1552, metadata !DIExpression(DW_OP_deref)) #21, !dbg !1554
  %142 = call i32 @xstrtoumax(i8* %141, i8** null, i32 10, i64* nonnull %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #21, !dbg !1677
  %143 = icmp ult i32 %142, 2, !dbg !1678
  br i1 %143, label %146, label %144, !dbg !1678

144:                                              ; preds = %140
  %145 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i32 5) #21, !dbg !1679
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %141, i8* %145) #21, !dbg !1679
  unreachable, !dbg !1679

146:                                              ; preds = %140
  %147 = load i64, i64* %6, align 8, !dbg !1680, !tbaa !1535
  call void @llvm.dbg.value(metadata i64 %147, metadata !1552, metadata !DIExpression()) #21, !dbg !1554
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #21, !dbg !1681
  store i64 %147, i64* @skip_chars, align 8, !dbg !1682, !tbaa !1535
  br label %36, !dbg !1683

148:                                              ; preds = %34
  store i1 false, i1* @output_first_repeated, align 1, !dbg !1684
  call void @llvm.dbg.value(metadata i8 1, metadata !1462, metadata !DIExpression()), !dbg !1519
  br label %36, !dbg !1685

149:                                              ; preds = %34
  %150 = load i8*, i8** @optarg, align 8, !dbg !1686, !tbaa !1396
  call void @llvm.dbg.value(metadata i8* %150, metadata !1550, metadata !DIExpression()) #21, !dbg !1545
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), metadata !1551, metadata !DIExpression()) #21, !dbg !1545
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #21, !dbg !1687
  call void @llvm.dbg.value(metadata i64* %5, metadata !1552, metadata !DIExpression(DW_OP_deref)) #21, !dbg !1545
  %151 = call i32 @xstrtoumax(i8* %150, i8** null, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #21, !dbg !1688
  %152 = icmp ult i32 %151, 2, !dbg !1689
  br i1 %152, label %155, label %153, !dbg !1689

153:                                              ; preds = %149
  %154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i32 5) #21, !dbg !1690
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %150, i8* %154) #21, !dbg !1690
  unreachable, !dbg !1690

155:                                              ; preds = %149
  %156 = load i64, i64* %5, align 8, !dbg !1691, !tbaa !1535
  call void @llvm.dbg.value(metadata i64 %156, metadata !1552, metadata !DIExpression()) #21, !dbg !1545
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #21, !dbg !1692
  store i64 %156, i64* @check_chars, align 8, !dbg !1693, !tbaa !1535
  br label %36, !dbg !1694

157:                                              ; preds = %34
  call void @usage(i32 0) #25, !dbg !1695
  unreachable, !dbg !1695

158:                                              ; preds = %34
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1696, !tbaa !1396
  %160 = load i8*, i8** @Version, align 8, !dbg !1696, !tbaa !1396
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %160, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8* null) #21, !dbg !1696
  call void @exit(i32 0) #24, !dbg !1696
  unreachable, !dbg !1696

161:                                              ; preds = %34
  call void @usage(i32 1) #25, !dbg !1697
  unreachable, !dbg !1697

162:                                              ; preds = %42
  call void @llvm.dbg.value(metadata i8 %28, metadata !1461, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %29, metadata !1462, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %28, metadata !1461, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %29, metadata !1462, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %28, metadata !1461, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %29, metadata !1462, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %28, metadata !1461, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %29, metadata !1462, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %28, metadata !1461, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %29, metadata !1462, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %28, metadata !1461, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %29, metadata !1462, metadata !DIExpression()), !dbg !1519
  %163 = load i32, i32* @grouping, align 4, !dbg !1698, !tbaa !1544
  %164 = icmp eq i32 %163, 0, !dbg !1700
  %165 = icmp eq i8 %29, 0, !dbg !1701
  %166 = or i1 %165, %164, !dbg !1702
  br i1 %166, label %169, label %167, !dbg !1702

167:                                              ; preds = %162
  %168 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0), i32 5) #21, !dbg !1703
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %168) #21, !dbg !1705
  call void @usage(i32 1) #25, !dbg !1706
  unreachable, !dbg !1706

169:                                              ; preds = %162
  %170 = icmp ne i32 %163, 0, !dbg !1707
  %171 = load i1, i1* @countmode, align 4, !dbg !1709
  %172 = xor i1 %171, true, !dbg !1710
  %173 = and i1 %170, %172, !dbg !1711
  br i1 %173, label %174, label %176, !dbg !1711

174:                                              ; preds = %169
  %175 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #21, !dbg !1712
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %175) #21, !dbg !1714
  call void @usage(i32 1) #25, !dbg !1715
  unreachable, !dbg !1715

176:                                              ; preds = %169
  br i1 %171, label %181, label %177, !dbg !1716

177:                                              ; preds = %176
  %178 = load i1, i1* @output_later_repeated, align 1, !dbg !1718
  br i1 %178, label %179, label %181, !dbg !1719

179:                                              ; preds = %177
  %180 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.32, i64 0, i64 0), i32 5) #21, !dbg !1720
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %180) #21, !dbg !1722
  call void @usage(i32 1) #25, !dbg !1723
  unreachable, !dbg !1723

181:                                              ; preds = %176, %177
  %182 = load i8*, i8** %14, align 16, !dbg !1724, !tbaa !1396
  %183 = load i8*, i8** %13, align 8, !dbg !1725, !tbaa !1396
  call void @llvm.dbg.value(metadata i8* %182, metadata !1476, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %183, metadata !1477, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i8 %28, metadata !1478, metadata !DIExpression()) #21, !dbg !1726
  %184 = bitcast %struct.linebuffer* %3 to i8*, !dbg !1727
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %184) #21, !dbg !1727
  %185 = bitcast %struct.linebuffer* %4 to i8*, !dbg !1727
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %185) #21, !dbg !1727
  %186 = call i32 @strcmp(i8* nonnull dereferenceable(1) %182, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #23, !dbg !1728
  %187 = icmp eq i32 %186, 0, !dbg !1728
  br i1 %187, label %196, label %188, !dbg !1730

188:                                              ; preds = %181
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1731, !tbaa !1396
  %190 = call %struct._IO_FILE* @freopen_safer(i8* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), %struct._IO_FILE* %189) #21, !dbg !1732
  %191 = icmp eq %struct._IO_FILE* %190, null, !dbg !1732
  br i1 %191, label %192, label %196, !dbg !1733

192:                                              ; preds = %188
  %193 = tail call i32* @__errno_location() #26, !dbg !1734
  %194 = load i32, i32* %193, align 4, !dbg !1734, !tbaa !1575
  %195 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %182) #21, !dbg !1734
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i8* %195) #21, !dbg !1734
  unreachable, !dbg !1734

196:                                              ; preds = %188, %181
  %197 = call i32 @strcmp(i8* nonnull dereferenceable(1) %183, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #23, !dbg !1735
  %198 = icmp eq i32 %197, 0, !dbg !1735
  br i1 %198, label %207, label %199, !dbg !1737

199:                                              ; preds = %196
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1738, !tbaa !1396
  %201 = call %struct._IO_FILE* @freopen_safer(i8* %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), %struct._IO_FILE* %200) #21, !dbg !1739
  %202 = icmp eq %struct._IO_FILE* %201, null, !dbg !1739
  br i1 %202, label %203, label %207, !dbg !1740

203:                                              ; preds = %199
  %204 = tail call i32* @__errno_location() #26, !dbg !1741
  %205 = load i32, i32* %204, align 4, !dbg !1741, !tbaa !1575
  %206 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %183) #21, !dbg !1741
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i8* %206) #21, !dbg !1741
  unreachable, !dbg !1741

207:                                              ; preds = %199, %196
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1742, !tbaa !1396
  call void @fadvise(%struct._IO_FILE* %208, i32 2) #21, !dbg !1743
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, metadata !1480, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @initbuffer(%struct.linebuffer* nonnull %3) #21, !dbg !1744
  call void @initbuffer(%struct.linebuffer* nonnull %4) #21, !dbg !1745
  %209 = load i1, i1* @output_unique, align 1, !dbg !1746
  br i1 %209, label %210, label %323, !dbg !1747

210:                                              ; preds = %207
  %211 = load i1, i1* @output_first_repeated, align 1, !dbg !1748
  %212 = load i1, i1* @countmode, align 4, !dbg !1749
  %213 = and i1 %211, %212, !dbg !1750
  br i1 %213, label %214, label %323, !dbg !1750

214:                                              ; preds = %210
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, metadata !1480, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i8* undef, metadata !1482, metadata !DIExpression()) #21, !dbg !1751
  call void @llvm.dbg.value(metadata i64 undef, metadata !1485, metadata !DIExpression()) #21, !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1486, metadata !DIExpression()) #21, !dbg !1751
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1752, !tbaa !1396
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %215, metadata !1753, metadata !DIExpression()) #21, !dbg !1759
  %216 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %215, i64 0, i32 0, !dbg !1761
  %217 = load i32, i32* %216, align 8, !dbg !1761, !tbaa !1762
  %218 = and i32 %217, 16, !dbg !1761
  %219 = icmp eq i32 %218, 0, !dbg !1765
  br i1 %219, label %220, label %305, !dbg !1766

220:                                              ; preds = %214
  %221 = zext i8 %28 to i32, !dbg !1767
  br label %222, !dbg !1766

222:                                              ; preds = %294, %220
  %223 = phi %struct._IO_FILE* [ %215, %220 ], [ %300, %294 ]
  %224 = phi %struct.linebuffer* [ %3, %220 ], [ %299, %294 ]
  %225 = phi %struct.linebuffer* [ %4, %220 ], [ %298, %294 ]
  %226 = phi i8* [ undef, %220 ], [ %297, %294 ]
  %227 = phi i64 [ undef, %220 ], [ %296, %294 ]
  %228 = phi i8 [ 0, %220 ], [ %295, %294 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %224, metadata !1480, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata %struct.linebuffer* %225, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %226, metadata !1482, metadata !DIExpression()) #21, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %227, metadata !1485, metadata !DIExpression()) #21, !dbg !1751
  call void @llvm.dbg.value(metadata i8 %228, metadata !1486, metadata !DIExpression()) #21, !dbg !1751
  %229 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %224, %struct._IO_FILE* %223, i8 signext %28) #21, !dbg !1769
  %230 = icmp eq %struct.linebuffer* %229, null, !dbg !1771
  br i1 %230, label %305, label %231, !dbg !1772

231:                                              ; preds = %222
  %232 = call fastcc i8* @find_field(%struct.linebuffer* %224) #23, !dbg !1773
  call void @llvm.dbg.value(metadata i8* %232, metadata !1487, metadata !DIExpression()) #21, !dbg !1774
  %233 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %224, i64 0, i32 1, !dbg !1775
  %234 = load i64, i64* %233, align 8, !dbg !1775, !tbaa !1776
  %235 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %224, i64 0, i32 2, !dbg !1778
  %236 = bitcast i8** %235 to i64*, !dbg !1778
  %237 = load i64, i64* %236, align 8, !dbg !1778, !tbaa !1779
  %238 = ptrtoint i8* %232 to i64, !dbg !1780
  %239 = xor i64 %238, -1, !dbg !1781
  %240 = add i64 %234, %239, !dbg !1781
  %241 = add i64 %240, %237, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %241, metadata !1489, metadata !DIExpression()) #21, !dbg !1774
  %242 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %225, i64 0, i32 1, !dbg !1782
  %243 = load i64, i64* %242, align 8, !dbg !1782, !tbaa !1776
  %244 = icmp eq i64 %243, 0, !dbg !1783
  br i1 %244, label %261, label %245, !dbg !1784

245:                                              ; preds = %231
  call void @llvm.dbg.value(metadata i8* %232, metadata !1785, metadata !DIExpression()) #21, !dbg !1793
  call void @llvm.dbg.value(metadata i8* %226, metadata !1790, metadata !DIExpression()) #21, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %241, metadata !1791, metadata !DIExpression()) #21, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %227, metadata !1792, metadata !DIExpression()) #21, !dbg !1793
  %246 = load i64, i64* @check_chars, align 8, !dbg !1795, !tbaa !1535
  %247 = icmp ult i64 %246, %241, !dbg !1797
  %248 = select i1 %247, i64 %246, i64 %241, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %248, metadata !1791, metadata !DIExpression()) #21, !dbg !1793
  %249 = icmp ult i64 %246, %227, !dbg !1799
  %250 = select i1 %249, i64 %246, i64 %227, !dbg !1801
  call void @llvm.dbg.value(metadata i64 %250, metadata !1792, metadata !DIExpression()) #21, !dbg !1793
  %251 = load i1, i1* @ignore_case, align 1, !dbg !1802
  %252 = icmp ne i64 %248, %250, !dbg !1804
  br i1 %251, label %253, label %257, !dbg !1805

253:                                              ; preds = %245
  br i1 %252, label %261, label %254, !dbg !1806

254:                                              ; preds = %253
  %255 = call i32 @memcasecmp(i8* %232, i8* %226, i64 %248) #23, !dbg !1807
  %256 = icmp ne i32 %255, 0, !dbg !1806
  br label %261, !dbg !1806

257:                                              ; preds = %245
  br i1 %252, label %261, label %258, !dbg !1808

258:                                              ; preds = %257
  %259 = call i32 @bcmp(i8* %232, i8* %226, i64 %248) #21, !dbg !1809
  %260 = icmp ne i32 %259, 0, !dbg !1808
  br label %261, !dbg !1808

261:                                              ; preds = %258, %257, %254, %253, %231
  %262 = phi i1 [ true, %231 ], [ true, %253 ], [ %256, %254 ], [ true, %257 ], [ %260, %258 ]
  call void @llvm.dbg.value(metadata i1 %262, metadata !1490, metadata !DIExpression()) #21, !dbg !1774
  %263 = load i32, i32* @grouping, align 4, !dbg !1810
  %264 = icmp ne i32 %263, 0, !dbg !1811
  %265 = and i1 %262, %264, !dbg !1812
  br i1 %265, label %266, label %285, !dbg !1812

266:                                              ; preds = %261
  switch i32 %263, label %267 [
    i32 4, label %273
    i32 1, label %273
  ], !dbg !1813

267:                                              ; preds = %266
  %268 = and i8 %228, 1, !dbg !1814
  %269 = icmp ne i8 %268, 0, !dbg !1814
  %270 = or i32 %263, 1, !dbg !1815
  %271 = icmp eq i32 %270, 3, !dbg !1815
  %272 = and i1 %269, %271, !dbg !1816
  br i1 %272, label %273, label %289, !dbg !1816

273:                                              ; preds = %267, %266, %266
  call void @llvm.dbg.value(metadata i8 %28, metadata !1817, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #21, !dbg !1820
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1822, !tbaa !1396
  %275 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %274, i64 0, i32 5, !dbg !1822
  %276 = load i8*, i8** %275, align 8, !dbg !1822, !tbaa !1823
  %277 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %274, i64 0, i32 6, !dbg !1822
  %278 = load i8*, i8** %277, align 8, !dbg !1822, !tbaa !1824
  %279 = icmp ult i8* %276, %278, !dbg !1822
  br i1 %279, label %283, label %280, !dbg !1822, !prof !1825, !misexpect !1826

280:                                              ; preds = %273
  call void @llvm.dbg.value(metadata i8 %28, metadata !1817, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #21, !dbg !1820
  %281 = call i32 @__overflow(%struct._IO_FILE* %274, i32 %221) #21, !dbg !1822
  %282 = load i32, i32* @grouping, align 4, !dbg !1827
  br label %285, !dbg !1822

283:                                              ; preds = %273
  %284 = getelementptr inbounds i8, i8* %276, i64 1, !dbg !1822
  store i8* %284, i8** %275, align 8, !dbg !1822, !tbaa !1823
  store i8 %28, i8* %276, align 1, !dbg !1822, !tbaa !1544
  br label %289, !dbg !1822

285:                                              ; preds = %280, %261
  %286 = phi i32 [ %282, %280 ], [ %263, %261 ], !dbg !1827
  %287 = icmp ne i32 %286, 0, !dbg !1828
  %288 = or i1 %262, %287, !dbg !1829
  br i1 %288, label %289, label %294, !dbg !1829

289:                                              ; preds = %285, %283, %267
  %290 = load i64, i64* %233, align 8, !dbg !1830, !tbaa !1776
  %291 = load i8*, i8** %235, align 8, !dbg !1830, !tbaa !1779
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1830, !tbaa !1396
  %293 = call i64 @fwrite_unlocked(i8* %291, i64 1, i64 %290, %struct._IO_FILE* %292) #21, !dbg !1830
  br label %294, !dbg !1830

294:                                              ; preds = %289, %285
  %295 = phi i8 [ %228, %285 ], [ 1, %289 ], !dbg !1751
  %296 = phi i64 [ %227, %285 ], [ %241, %289 ]
  %297 = phi i8* [ %226, %285 ], [ %232, %289 ]
  %298 = phi %struct.linebuffer* [ %225, %285 ], [ %224, %289 ], !dbg !1726
  %299 = phi %struct.linebuffer* [ %224, %285 ], [ %225, %289 ], !dbg !1726
  call void @llvm.dbg.value(metadata %struct.linebuffer* %299, metadata !1480, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata %struct.linebuffer* %298, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %297, metadata !1482, metadata !DIExpression()) #21, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %296, metadata !1485, metadata !DIExpression()) #21, !dbg !1751
  call void @llvm.dbg.value(metadata i8 %295, metadata !1486, metadata !DIExpression()) #21, !dbg !1751
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1752, !tbaa !1396
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %300, metadata !1753, metadata !DIExpression()) #21, !dbg !1759
  %301 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %300, i64 0, i32 0, !dbg !1761
  %302 = load i32, i32* %301, align 8, !dbg !1761, !tbaa !1762
  %303 = and i32 %302, 16, !dbg !1761
  %304 = icmp eq i32 %303, 0, !dbg !1765
  br i1 %304, label %222, label %305, !dbg !1766

305:                                              ; preds = %294, %222, %214
  %306 = phi i8 [ 0, %214 ], [ %295, %294 ], [ %228, %222 ], !dbg !1831
  call void @llvm.dbg.value(metadata i8 %306, metadata !1486, metadata !DIExpression()) #21, !dbg !1751
  call void @llvm.dbg.value(metadata i8 %306, metadata !1486, metadata !DIExpression()) #21, !dbg !1751
  call void @llvm.dbg.value(metadata i8 %306, metadata !1486, metadata !DIExpression()) #21, !dbg !1751
  %307 = load i32, i32* @grouping, align 4, !dbg !1832, !tbaa !1544
  switch i32 %307, label %438 [
    i32 4, label %308
    i32 2, label %308
  ], !dbg !1834

308:                                              ; preds = %305, %305
  %309 = and i8 %306, 1, !dbg !1835
  %310 = icmp eq i8 %309, 0, !dbg !1835
  br i1 %310, label %438, label %311, !dbg !1836

311:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i8 %28, metadata !1817, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #21, !dbg !1837
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1839, !tbaa !1396
  %313 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %312, i64 0, i32 5, !dbg !1839
  %314 = load i8*, i8** %313, align 8, !dbg !1839, !tbaa !1823
  %315 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %312, i64 0, i32 6, !dbg !1839
  %316 = load i8*, i8** %315, align 8, !dbg !1839, !tbaa !1824
  %317 = icmp ult i8* %314, %316, !dbg !1839
  br i1 %317, label %321, label %318, !dbg !1839, !prof !1825, !misexpect !1826

318:                                              ; preds = %311
  %319 = zext i8 %28 to i32, !dbg !1840
  call void @llvm.dbg.value(metadata i8 %28, metadata !1817, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #21, !dbg !1837
  %320 = call i32 @__overflow(%struct._IO_FILE* %312, i32 %319) #21, !dbg !1839
  br label %438, !dbg !1839

321:                                              ; preds = %311
  %322 = getelementptr inbounds i8, i8* %314, i64 1, !dbg !1839
  store i8* %322, i8** %313, align 8, !dbg !1839, !tbaa !1823
  store i8 %28, i8* %314, align 1, !dbg !1839, !tbaa !1544
  br label %438, !dbg !1839

323:                                              ; preds = %210, %207
  call void @llvm.dbg.value(metadata i64 0, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata i8 1, metadata !1506, metadata !DIExpression()) #21, !dbg !1841
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1842, !tbaa !1396
  %325 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* nonnull %4, %struct._IO_FILE* %324, i8 signext %28) #21, !dbg !1844
  %326 = icmp eq %struct.linebuffer* %325, null, !dbg !1845
  br i1 %326, label %438, label %327, !dbg !1846

327:                                              ; preds = %323
  %328 = call fastcc i8* @find_field(%struct.linebuffer* nonnull %4) #23, !dbg !1847
  call void @llvm.dbg.value(metadata i8* %328, metadata !1502, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata i64 undef, metadata !1504, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, metadata !1480, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i8 1, metadata !1506, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata i64 0, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata i8* %328, metadata !1502, metadata !DIExpression()) #21, !dbg !1841
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1848, !tbaa !1396
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %329, metadata !1753, metadata !DIExpression()) #21, !dbg !1849
  %330 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %329, i64 0, i32 0, !dbg !1851
  %331 = load i32, i32* %330, align 8, !dbg !1851, !tbaa !1762
  %332 = and i32 %331, 16, !dbg !1851
  %333 = icmp eq i32 %332, 0, !dbg !1852
  br i1 %333, label %334, label %435, !dbg !1853

334:                                              ; preds = %327
  %335 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 1, !dbg !1854
  %336 = load i64, i64* %335, align 8, !dbg !1854, !tbaa !1776
  %337 = ptrtoint i8* %328 to i64, !dbg !1855
  %338 = xor i64 %337, -1, !dbg !1856
  %339 = add i64 %336, %338, !dbg !1856
  %340 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 2, !dbg !1857
  %341 = bitcast i8** %340 to i64*, !dbg !1857
  %342 = load i64, i64* %341, align 8, !dbg !1857, !tbaa !1779
  %343 = add i64 %339, %342, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %343, metadata !1504, metadata !DIExpression()) #21, !dbg !1841
  %344 = zext i8 %28 to i32, !dbg !1858
  br label %345, !dbg !1853

345:                                              ; preds = %423, %334
  %346 = phi %struct._IO_FILE* [ %329, %334 ], [ %430, %423 ]
  %347 = phi %struct.linebuffer* [ %3, %334 ], [ %429, %423 ]
  %348 = phi %struct.linebuffer* [ %4, %334 ], [ %428, %423 ]
  %349 = phi i8 [ 1, %334 ], [ %427, %423 ]
  %350 = phi i64 [ 0, %334 ], [ %426, %423 ]
  %351 = phi i64 [ %343, %334 ], [ %425, %423 ]
  %352 = phi i8* [ %328, %334 ], [ %424, %423 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %347, metadata !1480, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i8 %349, metadata !1506, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %350, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %351, metadata !1504, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata i8* %352, metadata !1502, metadata !DIExpression()) #21, !dbg !1841
  %353 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %347, %struct._IO_FILE* %346, i8 signext %28) #21, !dbg !1865
  %354 = icmp eq %struct.linebuffer* %353, null, !dbg !1867
  br i1 %354, label %355, label %361, !dbg !1868

355:                                              ; preds = %345
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %350, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %350, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %350, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %350, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %350, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %350, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %350, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %350, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %350, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1869, !tbaa !1396
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %356, metadata !1872, metadata !DIExpression()) #21, !dbg !1875
  %357 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %356, i64 0, i32 0, !dbg !1877
  %358 = load i32, i32* %357, align 8, !dbg !1877, !tbaa !1762
  %359 = and i32 %358, 32, !dbg !1877
  %360 = icmp eq i32 %359, 0, !dbg !1869
  br i1 %360, label %435, label %438

361:                                              ; preds = %345
  %362 = call fastcc i8* @find_field(%struct.linebuffer* %347) #23, !dbg !1878
  call void @llvm.dbg.value(metadata i8* %362, metadata !1509, metadata !DIExpression()) #21, !dbg !1879
  %363 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %347, i64 0, i32 1, !dbg !1880
  %364 = load i64, i64* %363, align 8, !dbg !1880, !tbaa !1776
  %365 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %347, i64 0, i32 2, !dbg !1881
  %366 = bitcast i8** %365 to i64*, !dbg !1881
  %367 = load i64, i64* %366, align 8, !dbg !1881, !tbaa !1779
  %368 = ptrtoint i8* %362 to i64, !dbg !1882
  %369 = xor i64 %368, -1, !dbg !1883
  %370 = add i64 %364, %369, !dbg !1883
  %371 = add i64 %370, %367, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %371, metadata !1510, metadata !DIExpression()) #21, !dbg !1879
  call void @llvm.dbg.value(metadata i8* %362, metadata !1785, metadata !DIExpression()) #21, !dbg !1884
  call void @llvm.dbg.value(metadata i8* %352, metadata !1790, metadata !DIExpression()) #21, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %371, metadata !1791, metadata !DIExpression()) #21, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %351, metadata !1792, metadata !DIExpression()) #21, !dbg !1884
  %372 = load i64, i64* @check_chars, align 8, !dbg !1886, !tbaa !1535
  %373 = icmp ult i64 %372, %371, !dbg !1887
  %374 = select i1 %373, i64 %372, i64 %371, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %374, metadata !1791, metadata !DIExpression()) #21, !dbg !1884
  %375 = icmp ult i64 %372, %351, !dbg !1889
  %376 = select i1 %375, i64 %372, i64 %351, !dbg !1890
  call void @llvm.dbg.value(metadata i64 %376, metadata !1792, metadata !DIExpression()) #21, !dbg !1884
  %377 = load i1, i1* @ignore_case, align 1, !dbg !1891
  %378 = icmp ne i64 %374, %376, !dbg !1892
  br i1 %377, label %379, label %383, !dbg !1893

379:                                              ; preds = %361
  br i1 %378, label %387, label %380, !dbg !1894

380:                                              ; preds = %379
  %381 = call i32 @memcasecmp(i8* %362, i8* %352, i64 %374) #23, !dbg !1895
  %382 = icmp ne i32 %381, 0, !dbg !1894
  br label %387, !dbg !1894

383:                                              ; preds = %361
  br i1 %378, label %387, label %384, !dbg !1896

384:                                              ; preds = %383
  %385 = call i32 @bcmp(i8* %362, i8* %352, i64 %374) #21, !dbg !1897
  %386 = icmp ne i32 %385, 0, !dbg !1896
  br label %387, !dbg !1896

387:                                              ; preds = %384, %383, %380, %379
  %388 = phi i1 [ true, %379 ], [ %382, %380 ], [ true, %383 ], [ %386, %384 ], !dbg !1892
  %389 = xor i1 %388, true, !dbg !1898
  call void @llvm.dbg.value(metadata i1 %389, metadata !1507, metadata !DIExpression()) #21, !dbg !1879
  %390 = zext i1 %389 to i64, !dbg !1899
  %391 = add i64 %350, %390, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %391, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  %392 = icmp eq i64 %391, -1, !dbg !1901
  %393 = select i1 %392, i64 -2, i64 %391, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %393, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  %394 = load i32, i32* @delimit_groups, align 4, !dbg !1904, !tbaa !1544
  %395 = icmp eq i32 %394, 0, !dbg !1905
  br i1 %395, label %417, label %396, !dbg !1906

396:                                              ; preds = %387
  br i1 %388, label %397, label %400, !dbg !1907

397:                                              ; preds = %396
  %398 = icmp eq i64 %393, 0, !dbg !1908
  %399 = select i1 %398, i8 %349, i8 0, !dbg !1911
  call void @llvm.dbg.value(metadata i8 %349, metadata !1506, metadata !DIExpression()) #21, !dbg !1841
  br label %420, !dbg !1912

400:                                              ; preds = %396
  %401 = icmp eq i64 %393, 1, !dbg !1913
  br i1 %401, label %402, label %418, !dbg !1914

402:                                              ; preds = %400
  switch i32 %394, label %418 [
    i32 1, label %406
    i32 2, label %403
  ], !dbg !1915

403:                                              ; preds = %402
  %404 = and i8 %349, 1, !dbg !1916
  %405 = icmp eq i8 %404, 0, !dbg !1916
  br i1 %405, label %406, label %418, !dbg !1917

406:                                              ; preds = %403, %402
  call void @llvm.dbg.value(metadata i8 %28, metadata !1817, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #21, !dbg !1918
  %407 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1920, !tbaa !1396
  %408 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %407, i64 0, i32 5, !dbg !1920
  %409 = load i8*, i8** %408, align 8, !dbg !1920, !tbaa !1823
  %410 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %407, i64 0, i32 6, !dbg !1920
  %411 = load i8*, i8** %410, align 8, !dbg !1920, !tbaa !1824
  %412 = icmp ult i8* %409, %411, !dbg !1920
  br i1 %412, label %415, label %413, !dbg !1920, !prof !1825, !misexpect !1826

413:                                              ; preds = %406
  call void @llvm.dbg.value(metadata i8 %28, metadata !1817, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #21, !dbg !1918
  %414 = call i32 @__overflow(%struct._IO_FILE* %407, i32 %344) #21, !dbg !1920
  br label %418, !dbg !1920

415:                                              ; preds = %406
  %416 = getelementptr inbounds i8, i8* %409, i64 1, !dbg !1920
  store i8* %416, i8** %408, align 8, !dbg !1920, !tbaa !1823
  store i8 %28, i8* %409, align 1, !dbg !1920, !tbaa !1544
  br label %418, !dbg !1920

417:                                              ; preds = %387
  call void @llvm.dbg.value(metadata i8 %349, metadata !1506, metadata !DIExpression()) #21, !dbg !1841
  br i1 %388, label %420, label %418, !dbg !1912

418:                                              ; preds = %417, %415, %413, %403, %402, %400
  %419 = load i1, i1* @output_later_repeated, align 1, !dbg !1921
  br i1 %419, label %420, label %423, !dbg !1922

420:                                              ; preds = %418, %417, %397
  %421 = phi i8 [ %349, %417 ], [ %349, %418 ], [ %399, %397 ]
  call fastcc void @writeline(%struct.linebuffer* %348, i1 zeroext %389, i64 %393) #21, !dbg !1923
  call void @llvm.dbg.value(metadata %struct.linebuffer* %347, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, metadata !1480, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %362, metadata !1502, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %371, metadata !1504, metadata !DIExpression()) #21, !dbg !1841
  %422 = select i1 %388, i64 0, i64 %393, !dbg !1924
  br label %423, !dbg !1924

423:                                              ; preds = %420, %418
  %424 = phi i8* [ %352, %418 ], [ %362, %420 ], !dbg !1841
  %425 = phi i64 [ %351, %418 ], [ %371, %420 ], !dbg !1841
  %426 = phi i64 [ %393, %418 ], [ %422, %420 ], !dbg !1841
  %427 = phi i8 [ %349, %418 ], [ %421, %420 ], !dbg !1925
  %428 = phi %struct.linebuffer* [ %348, %418 ], [ %347, %420 ], !dbg !1726
  %429 = phi %struct.linebuffer* [ %347, %418 ], [ %348, %420 ], !dbg !1726
  call void @llvm.dbg.value(metadata %struct.linebuffer* %429, metadata !1480, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata %struct.linebuffer* %428, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i8 %427, metadata !1506, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %426, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %425, metadata !1504, metadata !DIExpression()) #21, !dbg !1841
  call void @llvm.dbg.value(metadata i8* %424, metadata !1502, metadata !DIExpression()) #21, !dbg !1841
  %430 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1848, !tbaa !1396
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %430, metadata !1753, metadata !DIExpression()) #21, !dbg !1849
  %431 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %430, i64 0, i32 0, !dbg !1851
  %432 = load i32, i32* %431, align 8, !dbg !1851, !tbaa !1762
  %433 = and i32 %432, 16, !dbg !1851
  %434 = icmp eq i32 %433, 0, !dbg !1852
  br i1 %434, label %345, label %435, !dbg !1853

435:                                              ; preds = %423, %355, %327
  %436 = phi i64 [ %350, %355 ], [ 0, %327 ], [ %426, %423 ]
  %437 = phi %struct.linebuffer* [ %348, %355 ], [ %4, %327 ], [ %428, %423 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %437, metadata !1481, metadata !DIExpression()) #21, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %436, metadata !1505, metadata !DIExpression()) #21, !dbg !1841
  call fastcc void @writeline(%struct.linebuffer* %437, i1 zeroext false, i64 %436) #21, !dbg !1926
  br label %438, !dbg !1927

438:                                              ; preds = %435, %355, %323, %321, %318, %308, %305
  call void @llvm.dbg.label(metadata !1515) #21, !dbg !1928
  %439 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1929, !tbaa !1396
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %439, metadata !1872, metadata !DIExpression()) #21, !dbg !1931
  %440 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %439, i64 0, i32 0, !dbg !1933
  %441 = load i32, i32* %440, align 8, !dbg !1933, !tbaa !1762
  %442 = and i32 %441, 32, !dbg !1933
  %443 = icmp eq i32 %442, 0, !dbg !1929
  br i1 %443, label %444, label %447, !dbg !1934

444:                                              ; preds = %438
  %445 = call i32 @rpl_fclose(%struct._IO_FILE* %439) #21, !dbg !1935
  %446 = icmp eq i32 %445, 0, !dbg !1936
  br i1 %446, label %450, label %447, !dbg !1937

447:                                              ; preds = %444, %438
  %448 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0), i32 5) #21, !dbg !1938
  %449 = call i8* @quotearg_style(i32 4, i8* %182) #21, !dbg !1938
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %448, i8* %449) #21, !dbg !1938
  unreachable, !dbg !1938

450:                                              ; preds = %444
  %451 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %3, i64 0, i32 2, !dbg !1939
  %452 = load i8*, i8** %451, align 8, !dbg !1939, !tbaa !1779
  call void @free(i8* %452) #21, !dbg !1940
  %453 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 2, !dbg !1941
  %454 = load i8*, i8** %453, align 8, !dbg !1941, !tbaa !1779
  call void @free(i8* %454) #21, !dbg !1942
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %185) #21, !dbg !1943
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %184) #21, !dbg !1943
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #21, !dbg !1944
  ret i32 0, !dbg !1944
}

; Function Attrs: nofree nounwind readonly
declare !dbg !145 i8* @getenv(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !157 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !160 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !161 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !167 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !186 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc i8* @find_field(%struct.linebuffer* nocapture readonly %0) unnamed_addr #10 !dbg !1945 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1951, metadata !DIExpression()), !dbg !1956
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1957
  %3 = load i8*, i8** %2, align 8, !dbg !1957, !tbaa !1779
  call void @llvm.dbg.value(metadata i8* %3, metadata !1953, metadata !DIExpression()), !dbg !1956
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1958
  %5 = load i64, i64* %4, align 8, !dbg !1958, !tbaa !1776
  %6 = add i64 %5, -1, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %6, metadata !1954, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 0, metadata !1955, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 0, metadata !1952, metadata !DIExpression()), !dbg !1956
  %7 = load i64, i64* @skip_fields, align 8, !dbg !1960, !tbaa !1535
  %8 = icmp ne i64 %7, 0, !dbg !1963
  %9 = icmp ne i64 %6, 0, !dbg !1964
  %10 = and i1 %9, %8, !dbg !1964
  br i1 %10, label %11, label %58, !dbg !1965

11:                                               ; preds = %1, %52
  %12 = phi i64 [ %53, %52 ], [ 0, %1 ]
  %13 = phi i64 [ %54, %52 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !1955, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %13, metadata !1952, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %12, metadata !1955, metadata !DIExpression()), !dbg !1956
  %14 = icmp ult i64 %12, %6, !dbg !1966
  br i1 %14, label %15, label %32, !dbg !1968

15:                                               ; preds = %11
  %16 = tail call i16** @__ctype_b_loc() #26, !dbg !1969
  %17 = load i16*, i16** %16, align 8, !dbg !1969, !tbaa !1396
  br label %18, !dbg !1968

18:                                               ; preds = %29, %15
  %19 = phi i64 [ %12, %15 ], [ %30, %29 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !1955, metadata !DIExpression()), !dbg !1956
  %20 = getelementptr inbounds i8, i8* %3, i64 %19, !dbg !1976
  %21 = load i8, i8* %20, align 1, !dbg !1976, !tbaa !1544
  call void @llvm.dbg.value(metadata i8 %21, metadata !1974, metadata !DIExpression()) #21, !dbg !1969
  %22 = zext i8 %21 to i64, !dbg !1977
  %23 = getelementptr inbounds i16, i16* %17, i64 %22, !dbg !1977
  %24 = load i16, i16* %23, align 2, !dbg !1977, !tbaa !1978
  %25 = and i16 %24, 1, !dbg !1977
  %26 = icmp ne i16 %25, 0, !dbg !1977
  %27 = icmp eq i8 %21, 10, !dbg !1979
  %28 = or i1 %27, %26, !dbg !1979
  br i1 %28, label %29, label %32, !dbg !1980

29:                                               ; preds = %18
  %30 = add i64 %19, 1, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %30, metadata !1955, metadata !DIExpression()), !dbg !1956
  %31 = icmp eq i64 %30, %6, !dbg !1966
  br i1 %31, label %58, label %18, !dbg !1968, !llvm.loop !1982

32:                                               ; preds = %18, %11
  %33 = phi i64 [ %12, %11 ], [ %19, %18 ], !dbg !1956
  call void @llvm.dbg.value(metadata i64 %33, metadata !1955, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %33, metadata !1955, metadata !DIExpression()), !dbg !1956
  %34 = icmp ult i64 %33, %6, !dbg !1983
  br i1 %34, label %35, label %52, !dbg !1984

35:                                               ; preds = %32
  %36 = tail call i16** @__ctype_b_loc() #26, !dbg !1985
  %37 = load i16*, i16** %36, align 8, !dbg !1985, !tbaa !1396
  br label %38, !dbg !1984

38:                                               ; preds = %49, %35
  %39 = phi i64 [ %33, %35 ], [ %50, %49 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1955, metadata !DIExpression()), !dbg !1956
  %40 = getelementptr inbounds i8, i8* %3, i64 %39, !dbg !1987
  %41 = load i8, i8* %40, align 1, !dbg !1987, !tbaa !1544
  call void @llvm.dbg.value(metadata i8 %41, metadata !1974, metadata !DIExpression()) #21, !dbg !1985
  %42 = zext i8 %41 to i64, !dbg !1988
  %43 = getelementptr inbounds i16, i16* %37, i64 %42, !dbg !1988
  %44 = load i16, i16* %43, align 2, !dbg !1988, !tbaa !1978
  %45 = and i16 %44, 1, !dbg !1988
  %46 = icmp ne i16 %45, 0, !dbg !1988
  %47 = icmp eq i8 %41, 10, !dbg !1989
  %48 = or i1 %47, %46, !dbg !1989
  br i1 %48, label %52, label %49, !dbg !1990

49:                                               ; preds = %38
  %50 = add i64 %39, 1, !dbg !1991
  call void @llvm.dbg.value(metadata i64 %50, metadata !1955, metadata !DIExpression()), !dbg !1956
  %51 = icmp eq i64 %50, %6, !dbg !1983
  br i1 %51, label %58, label %38, !dbg !1984, !llvm.loop !1992

52:                                               ; preds = %38, %32
  %53 = phi i64 [ %33, %32 ], [ %39, %38 ], !dbg !1956
  call void @llvm.dbg.value(metadata i64 %53, metadata !1955, metadata !DIExpression()), !dbg !1956
  %54 = add nuw i64 %13, 1, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %54, metadata !1952, metadata !DIExpression()), !dbg !1956
  %55 = icmp ult i64 %54, %7, !dbg !1963
  %56 = icmp ugt i64 %6, %53, !dbg !1964
  %57 = and i1 %56, %55, !dbg !1964
  br i1 %57, label %11, label %58, !dbg !1965, !llvm.loop !1994

58:                                               ; preds = %52, %29, %49, %1
  %59 = phi i64 [ 0, %1 ], [ %6, %49 ], [ %6, %29 ], [ %53, %52 ], !dbg !1996
  call void @llvm.dbg.value(metadata i64 %59, metadata !1955, metadata !DIExpression()), !dbg !1956
  %60 = load i64, i64* @skip_chars, align 8, !dbg !1997, !tbaa !1535
  %61 = sub i64 %6, %59, !dbg !1997
  %62 = icmp ult i64 %60, %61, !dbg !1997
  %63 = select i1 %62, i64 %60, i64 %61, !dbg !1997
  %64 = add i64 %63, %59, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %64, metadata !1955, metadata !DIExpression()), !dbg !1956
  %65 = getelementptr inbounds i8, i8* %3, i64 %64, !dbg !1999
  ret i8* %65, !dbg !2000
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #11

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !229 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @writeline(%struct.linebuffer* nocapture readonly %0, i1 zeroext %1, i64 %2) unnamed_addr #8 !dbg !2001 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2005, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i1 %1, metadata !2006, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %2, metadata !2007, metadata !DIExpression()), !dbg !2012
  %4 = icmp eq i64 %2, 0, !dbg !2013
  br i1 %4, label %5, label %7, !dbg !2015

5:                                                ; preds = %3
  %6 = load i1, i1* @output_unique, align 1, !dbg !2016
  br i1 %6, label %12, label %24, !dbg !2017

7:                                                ; preds = %3
  br i1 %1, label %10, label %8, !dbg !2015

8:                                                ; preds = %7
  %9 = load i1, i1* @output_first_repeated, align 1, !dbg !2018
  br i1 %9, label %12, label %24, !dbg !2019

10:                                               ; preds = %7
  %11 = load i1, i1* @output_later_repeated, align 1, !dbg !2020
  br i1 %11, label %12, label %24, !dbg !2015

12:                                               ; preds = %10, %8, %5
  %13 = load i1, i1* @countmode, align 4, !dbg !2021
  br i1 %13, label %17, label %14, !dbg !2023

14:                                               ; preds = %12
  %15 = add i64 %2, 1, !dbg !2024
  %16 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), i64 %15) #21, !dbg !2024
  br label %17, !dbg !2024

17:                                               ; preds = %12, %14
  %18 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2025
  %19 = load i64, i64* %18, align 8, !dbg !2025, !tbaa !1776
  %20 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2025
  %21 = load i8*, i8** %20, align 8, !dbg !2025, !tbaa !1779
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2025, !tbaa !1396
  %23 = tail call i64 @fwrite_unlocked(i8* %21, i64 1, i64 %19, %struct._IO_FILE* %22), !dbg !2025
  br label %24, !dbg !2025

24:                                               ; preds = %17, %5, %8, %10
  ret void, !dbg !2026
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !239 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #8 !dbg !2027 {
  tail call void @usage(i32 1) #21, !dbg !2028
  ret void, !dbg !2029
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @argmatch(i8* nocapture readonly %0, i8** nocapture readonly %1, i8* readonly %2, i64 %3) local_unnamed_addr #10 !dbg !2030 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2036, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8** %1, metadata !2037, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8* %2, metadata !2038, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %3, metadata !2039, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i64 -1, metadata !2042, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2043, metadata !DIExpression()), !dbg !2044
  %5 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !2045
  call void @llvm.dbg.value(metadata i64 %5, metadata !2041, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i64 0, metadata !2040, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2043, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i64 -1, metadata !2042, metadata !DIExpression()), !dbg !2044
  %6 = load i8*, i8** %1, align 8, !dbg !2046, !tbaa !1396
  %7 = icmp eq i8* %6, null, !dbg !2049
  br i1 %7, label %38, label %8, !dbg !2049

8:                                                ; preds = %4
  %9 = icmp eq i8* %2, null, !dbg !2050
  br label %10, !dbg !2049

10:                                               ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  call void @llvm.dbg.value(metadata i8 %12, metadata !2043, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %13, metadata !2042, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %14, metadata !2040, metadata !DIExpression()), !dbg !2044
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #23, !dbg !2058
  %16 = icmp eq i32 %15, 0, !dbg !2058
  br i1 %16, label %17, label %31, !dbg !2059

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #23, !dbg !2060
  %19 = icmp eq i64 %18, %5, !dbg !2061
  br i1 %19, label %44, label %20, !dbg !2062

20:                                               ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !2063
  br i1 %21, label %31, label %22, !dbg !2064

22:                                               ; preds = %20
  br i1 %9, label %30, label %23, !dbg !2065

23:                                               ; preds = %22
  %24 = mul i64 %13, %3, !dbg !2066
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !2067
  %26 = mul i64 %14, %3, !dbg !2068
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !2069
  %28 = tail call i32 @bcmp(i8* nonnull %25, i8* nonnull %27, i64 %3), !dbg !2070
  %29 = icmp eq i32 %28, 0, !dbg !2070
  br i1 %29, label %31, label %30, !dbg !2071

30:                                               ; preds = %23, %22
  call void @llvm.dbg.value(metadata i8 1, metadata !2043, metadata !DIExpression()), !dbg !2044
  br label %31, !dbg !2072

31:                                               ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ], !dbg !2044
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ], !dbg !2044
  call void @llvm.dbg.value(metadata i8 %33, metadata !2043, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %32, metadata !2042, metadata !DIExpression()), !dbg !2044
  %34 = add i64 %14, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %34, metadata !2040, metadata !DIExpression()), !dbg !2044
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !2046
  %36 = load i8*, i8** %35, align 8, !dbg !2046, !tbaa !1396
  %37 = icmp eq i8* %36, null, !dbg !2049
  br i1 %37, label %38, label %10, !dbg !2049, !llvm.loop !2075

38:                                               ; preds = %31, %4
  %39 = phi i64 [ -1, %4 ], [ %32, %31 ], !dbg !2077
  %40 = phi i8 [ 0, %4 ], [ %33, %31 ], !dbg !2078
  call void @llvm.dbg.value(metadata i64 %39, metadata !2042, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 %40, metadata !2043, metadata !DIExpression()), !dbg !2044
  %41 = and i8 %40, 1, !dbg !2079
  %42 = icmp eq i8 %41, 0, !dbg !2079
  %43 = select i1 %42, i64 %39, i64 -2, !dbg !2081
  br label %44, !dbg !2081

44:                                               ; preds = %17, %38
  %45 = phi i64 [ %43, %38 ], [ %14, %17 ], !dbg !2044
  ret i64 %45, !dbg !2082
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_invalid(i8* %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2083 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2087, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %1, metadata !2088, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %2, metadata !2089, metadata !DIExpression()), !dbg !2091
  %4 = icmp eq i64 %2, -1, !dbg !2092
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.76, i64 0, i64 0), !dbg !2093
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #21, !dbg !2091
  call void @llvm.dbg.value(metadata i8* %6, metadata !2090, metadata !DIExpression()), !dbg !2091
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #21, !dbg !2094
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #21, !dbg !2095
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #21, !dbg !2096
  ret void, !dbg !2097
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_valid(i8** nocapture readonly %0, i8* nocapture readonly %1, i64 %2) local_unnamed_addr #8 !dbg !2098 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !2102, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8* %1, metadata !2103, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %2, metadata !2104, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8* null, metadata !2106, metadata !DIExpression()), !dbg !2107
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.77, i64 0, i64 0), i32 5) #21, !dbg !2108
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2108, !tbaa !1396
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !2108
  call void @llvm.dbg.value(metadata i64 0, metadata !2105, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8* null, metadata !2106, metadata !DIExpression()), !dbg !2107
  %7 = load i8*, i8** %0, align 8, !dbg !2109, !tbaa !1396
  %8 = icmp eq i8* %7, null, !dbg !2112
  br i1 %8, label %35, label %9, !dbg !2112

9:                                                ; preds = %3, %29
  %10 = phi i8* [ %33, %29 ], [ %7, %3 ]
  %11 = phi i8* [ %30, %29 ], [ null, %3 ]
  %12 = phi i64 [ %31, %29 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !2106, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %12, metadata !2105, metadata !DIExpression()), !dbg !2107
  %13 = icmp eq i64 %12, 0, !dbg !2113
  br i1 %13, label %19, label %14, !dbg !2115

14:                                               ; preds = %9
  %15 = mul i64 %12, %2, !dbg !2116
  %16 = getelementptr inbounds i8, i8* %1, i64 %15, !dbg !2117
  %17 = tail call i32 @bcmp(i8* %11, i8* %16, i64 %2), !dbg !2118
  %18 = icmp eq i32 %17, 0, !dbg !2118
  br i1 %18, label %25, label %19, !dbg !2119

19:                                               ; preds = %9, %14
  %20 = phi i64 [ %15, %14 ], [ 0, %9 ], !dbg !2120
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2122, !tbaa !1396
  %22 = tail call i8* @quote(i8* nonnull %10) #21, !dbg !2122
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.78, i64 0, i64 0), i8* %22) #21, !dbg !2122
  %24 = getelementptr inbounds i8, i8* %1, i64 %20, !dbg !2123
  call void @llvm.dbg.value(metadata i8* %24, metadata !2106, metadata !DIExpression()), !dbg !2107
  br label %29, !dbg !2124

25:                                               ; preds = %14
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2125, !tbaa !1396
  %27 = tail call i8* @quote(i8* nonnull %10) #21, !dbg !2125
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %26, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.79, i64 0, i64 0), i8* %27) #21, !dbg !2125
  br label %29

29:                                               ; preds = %19, %25
  %30 = phi i8* [ %24, %19 ], [ %11, %25 ], !dbg !2107
  call void @llvm.dbg.value(metadata i8* %30, metadata !2106, metadata !DIExpression()), !dbg !2107
  %31 = add i64 %12, 1, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %31, metadata !2105, metadata !DIExpression()), !dbg !2107
  %32 = getelementptr inbounds i8*, i8** %0, i64 %31, !dbg !2109
  %33 = load i8*, i8** %32, align 8, !dbg !2109, !tbaa !1396
  %34 = icmp eq i8* %33, null, !dbg !2112
  br i1 %34, label %35, label %9, !dbg !2112, !llvm.loop !2128

35:                                               ; preds = %29, %3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2130, !tbaa !1396
  call void @llvm.dbg.value(metadata i32 10, metadata !2131, metadata !DIExpression()) #21, !dbg !2139
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, metadata !2138, metadata !DIExpression()) #21, !dbg !2139
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !2141
  %38 = load i8*, i8** %37, align 8, !dbg !2141, !tbaa !1823
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !2141
  %40 = load i8*, i8** %39, align 8, !dbg !2141, !tbaa !1824
  %41 = icmp ult i8* %38, %40, !dbg !2141
  br i1 %41, label %44, label %42, !dbg !2141, !prof !1825, !misexpect !1826

42:                                               ; preds = %35
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #21, !dbg !2141
  br label %46, !dbg !2141

44:                                               ; preds = %35
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !2141
  store i8* %45, i8** %37, align 8, !dbg !2141, !tbaa !1823
  store i8 10, i8* %38, align 1, !dbg !2141, !tbaa !1544
  br label %46, !dbg !2141

46:                                               ; preds = %42, %44
  ret void, !dbg !2142
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @__xargmatch_internal(i8* %0, i8* %1, i8** nocapture readonly %2, i8* readonly %3, i64 %4, void ()* nocapture %5) local_unnamed_addr #8 !dbg !2143 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2147, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8* %1, metadata !2148, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8** %2, metadata !2149, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8* %3, metadata !2150, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %4, metadata !2151, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata void ()* %5, metadata !2152, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8* %1, metadata !2036, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i8** %2, metadata !2037, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i8* %3, metadata !2038, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %4, metadata !2039, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 -1, metadata !2042, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i8 0, metadata !2043, metadata !DIExpression()) #21, !dbg !2155
  %7 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #23, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %7, metadata !2041, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 0, metadata !2040, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i8 0, metadata !2043, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 -1, metadata !2042, metadata !DIExpression()) #21, !dbg !2155
  %8 = load i8*, i8** %2, align 8, !dbg !2158, !tbaa !1396
  %9 = icmp eq i8* %8, null, !dbg !2159
  br i1 %9, label %49, label %10, !dbg !2159

10:                                               ; preds = %6
  %11 = icmp eq i8* %3, null, !dbg !2160
  br label %12, !dbg !2159

12:                                               ; preds = %33, %10
  %13 = phi i8* [ %8, %10 ], [ %38, %33 ]
  %14 = phi i8 [ 0, %10 ], [ %35, %33 ]
  %15 = phi i64 [ -1, %10 ], [ %34, %33 ]
  %16 = phi i64 [ 0, %10 ], [ %36, %33 ]
  call void @llvm.dbg.value(metadata i8 %14, metadata !2043, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %15, metadata !2042, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %16, metadata !2040, metadata !DIExpression()) #21, !dbg !2155
  %17 = tail call i32 @strncmp(i8* nonnull %13, i8* %1, i64 %7) #23, !dbg !2161
  %18 = icmp eq i32 %17, 0, !dbg !2161
  br i1 %18, label %19, label %33, !dbg !2162

19:                                               ; preds = %12
  %20 = tail call i64 @strlen(i8* nonnull %13) #23, !dbg !2163
  %21 = icmp eq i64 %20, %7, !dbg !2164
  br i1 %21, label %43, label %22, !dbg !2165

22:                                               ; preds = %19
  %23 = icmp eq i64 %15, -1, !dbg !2166
  br i1 %23, label %33, label %24, !dbg !2167

24:                                               ; preds = %22
  br i1 %11, label %32, label %25, !dbg !2168

25:                                               ; preds = %24
  %26 = mul i64 %15, %4, !dbg !2169
  %27 = getelementptr inbounds i8, i8* %3, i64 %26, !dbg !2170
  %28 = mul i64 %16, %4, !dbg !2171
  %29 = getelementptr inbounds i8, i8* %3, i64 %28, !dbg !2172
  %30 = tail call i32 @bcmp(i8* nonnull %27, i8* nonnull %29, i64 %4) #21, !dbg !2173
  %31 = icmp eq i32 %30, 0, !dbg !2173
  br i1 %31, label %33, label %32, !dbg !2174

32:                                               ; preds = %25, %24
  call void @llvm.dbg.value(metadata i8 1, metadata !2043, metadata !DIExpression()) #21, !dbg !2155
  br label %33, !dbg !2175

33:                                               ; preds = %32, %25, %22, %12
  %34 = phi i64 [ %15, %12 ], [ %15, %32 ], [ %15, %25 ], [ %16, %22 ], !dbg !2155
  %35 = phi i8 [ %14, %12 ], [ 1, %32 ], [ %14, %25 ], [ %14, %22 ], !dbg !2155
  call void @llvm.dbg.value(metadata i8 %35, metadata !2043, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %34, metadata !2042, metadata !DIExpression()) #21, !dbg !2155
  %36 = add i64 %16, 1, !dbg !2176
  call void @llvm.dbg.value(metadata i64 %36, metadata !2040, metadata !DIExpression()) #21, !dbg !2155
  %37 = getelementptr inbounds i8*, i8** %2, i64 %36, !dbg !2158
  %38 = load i8*, i8** %37, align 8, !dbg !2158, !tbaa !1396
  %39 = icmp eq i8* %38, null, !dbg !2159
  br i1 %39, label %40, label %12, !dbg !2159, !llvm.loop !2177

40:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i64 %34, metadata !2042, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i8 %35, metadata !2043, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %34, metadata !2042, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i8 %35, metadata !2043, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %34, metadata !2042, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i8 %35, metadata !2043, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %34, metadata !2042, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i8 %35, metadata !2043, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %34, metadata !2042, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i8 %35, metadata !2043, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %34, metadata !2042, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i8 %35, metadata !2043, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %34, metadata !2042, metadata !DIExpression()) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i8 %35, metadata !2043, metadata !DIExpression()) #21, !dbg !2155
  %41 = and i8 %35, 1, !dbg !2179
  %42 = icmp eq i8 %41, 0, !dbg !2179
  br i1 %42, label %43, label %48

43:                                               ; preds = %19, %40
  %44 = phi i64 [ %34, %40 ], [ %16, %19 ], !dbg !2155
  call void @llvm.dbg.value(metadata i64 %44, metadata !2153, metadata !DIExpression()), !dbg !2154
  %45 = icmp sgt i64 %44, -1, !dbg !2180
  br i1 %45, label %54, label %46, !dbg !2182

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* %0, metadata !2087, metadata !DIExpression()) #21, !dbg !2183
  call void @llvm.dbg.value(metadata i8* %1, metadata !2088, metadata !DIExpression()) #21, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %44, metadata !2089, metadata !DIExpression()) #21, !dbg !2183
  %47 = icmp eq i64 %44, -1, !dbg !2185
  br i1 %47, label %49, label %48, !dbg !2186

48:                                               ; preds = %40, %46
  br label %49, !dbg !2186

49:                                               ; preds = %46, %6, %48
  %50 = phi i8* [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.76, i64 0, i64 0), %48 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0), %6 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0), %46 ]
  %51 = tail call i8* @dcgettext(i8* null, i8* %50, i32 5) #21, !dbg !2183
  call void @llvm.dbg.value(metadata i8* %51, metadata !2090, metadata !DIExpression()) #21, !dbg !2183
  %52 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #21, !dbg !2187
  %53 = tail call i8* @quote_n(i32 1, i8* %0) #21, !dbg !2188
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51, i8* %52, i8* %53) #21, !dbg !2189
  tail call void @argmatch_valid(i8** nonnull %2, i8* %3, i64 %4), !dbg !2190
  tail call void %5() #21, !dbg !2191
  br label %54, !dbg !2192

54:                                               ; preds = %43, %49
  %55 = phi i64 [ -1, %49 ], [ %44, %43 ], !dbg !2154
  ret i64 %55, !dbg !2193
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @argmatch_to_argument(i8* nocapture readonly %0, i8** nocapture readonly %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #10 !dbg !2194 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2198, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8** %1, metadata !2199, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8* %2, metadata !2200, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %3, metadata !2201, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 0, metadata !2202, metadata !DIExpression()), !dbg !2203
  %5 = load i8*, i8** %1, align 8, !dbg !2204, !tbaa !1396
  %6 = icmp eq i8* %5, null, !dbg !2207
  br i1 %6, label %21, label %7, !dbg !2207

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 0, metadata !2202, metadata !DIExpression()), !dbg !2203
  %8 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %3), !dbg !2208
  %9 = icmp eq i32 %8, 0, !dbg !2208
  call void @llvm.dbg.value(metadata i64 1, metadata !2202, metadata !DIExpression()), !dbg !2203
  br i1 %9, label %21, label %10, !dbg !2210

10:                                               ; preds = %7, %15
  %11 = phi i64 [ %20, %15 ], [ 1, %7 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2202, metadata !DIExpression()), !dbg !2203
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !2204
  %13 = load i8*, i8** %12, align 8, !dbg !2204, !tbaa !1396
  %14 = icmp eq i8* %13, null, !dbg !2207
  br i1 %14, label %21, label %15, !dbg !2207, !llvm.loop !2211

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !2202, metadata !DIExpression()), !dbg !2203
  %16 = mul i64 %11, %3, !dbg !2213
  %17 = getelementptr inbounds i8, i8* %2, i64 %16, !dbg !2214
  %18 = tail call i32 @bcmp(i8* %0, i8* %17, i64 %3), !dbg !2208
  %19 = icmp eq i32 %18, 0, !dbg !2208
  %20 = add i64 %11, 1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %20, metadata !2202, metadata !DIExpression()), !dbg !2203
  br i1 %19, label %21, label %10, !dbg !2210, !llvm.loop !2211

21:                                               ; preds = %10, %15, %7, %4
  %22 = phi i8* [ null, %4 ], [ %5, %7 ], [ %13, %15 ], [ null, %10 ], !dbg !2204
  ret i8* %22, !dbg !2216
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !2217 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2219, metadata !DIExpression()), !dbg !2220
  store i8* %0, i8** @file_name, align 8, !dbg !2221, !tbaa !1396
  ret void, !dbg !2222
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !2223 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2227, metadata !DIExpression()), !dbg !2228
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2229, !tbaa !2230
  ret void, !dbg !2232
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2233 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2238, !tbaa !1396
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #21, !dbg !2239
  %3 = icmp eq i32 %2, 0, !dbg !2240
  br i1 %3, label %22, label %4, !dbg !2241

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2242, !tbaa !2230, !range !2243
  %6 = icmp eq i8 %5, 0, !dbg !2242
  br i1 %6, label %11, label %7, !dbg !2244

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #26, !dbg !2245
  %9 = load i32, i32* %8, align 4, !dbg !2245, !tbaa !1575
  %10 = icmp eq i32 %9, 32, !dbg !2246
  br i1 %10, label %22, label %11, !dbg !2247

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i64 0, i64 0), i32 5) #21, !dbg !2248
  call void @llvm.dbg.value(metadata i8* %12, metadata !2235, metadata !DIExpression()), !dbg !2249
  %13 = load i8*, i8** @file_name, align 8, !dbg !2250, !tbaa !1396
  %14 = icmp eq i8* %13, null, !dbg !2250
  %15 = tail call i32* @__errno_location() #26, !dbg !2252
  %16 = load i32, i32* %15, align 4, !dbg !2252, !tbaa !1575
  br i1 %14, label %19, label %17, !dbg !2253

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #21, !dbg !2254
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.85, i64 0, i64 0), i8* %18, i8* %12) #21, !dbg !2255
  br label %20, !dbg !2255

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.86, i64 0, i64 0), i8* %12) #21, !dbg !2256
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2257, !tbaa !1575
  tail call void @_exit(i32 %21) #24, !dbg !2258
  unreachable, !dbg !2258

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2259, !tbaa !1396
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #21, !dbg !2261
  %25 = icmp eq i32 %24, 0, !dbg !2262
  br i1 %25, label %28, label %26, !dbg !2263

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2264, !tbaa !1575
  tail call void @_exit(i32 %27) #24, !dbg !2265
  unreachable, !dbg !2265

28:                                               ; preds = %22
  ret void, !dbg !2266
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !2267 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2273, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i64 %1, metadata !2274, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i64 %2, metadata !2275, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i32 %3, metadata !2276, metadata !DIExpression()), !dbg !2279
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #21, !dbg !2280
  call void @llvm.dbg.value(metadata i32 %5, metadata !2277, metadata !DIExpression()), !dbg !2281
  ret void, !dbg !2282
}

; Function Attrs: nounwind
declare !dbg !561 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !2283 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 %1, metadata !2290, metadata !DIExpression()), !dbg !2291
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2292
  br i1 %3, label %7, label %4, !dbg !2294

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #21, !dbg !2295
  call void @llvm.dbg.value(metadata i32 %5, metadata !2273, metadata !DIExpression()) #21, !dbg !2296
  call void @llvm.dbg.value(metadata i64 0, metadata !2274, metadata !DIExpression()) #21, !dbg !2296
  call void @llvm.dbg.value(metadata i64 0, metadata !2275, metadata !DIExpression()) #21, !dbg !2296
  call void @llvm.dbg.value(metadata i32 %1, metadata !2276, metadata !DIExpression()) #21, !dbg !2296
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #21, !dbg !2298
  call void @llvm.dbg.value(metadata i32 %6, metadata !2277, metadata !DIExpression()) #21, !dbg !2299
  br label %7, !dbg !2300

7:                                                ; preds = %2, %4
  ret void, !dbg !2301
}

; Function Attrs: nofree nounwind
declare !dbg !565 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @freopen_safer(i8* %0, i8* %1, %struct._IO_FILE* %2) local_unnamed_addr #8 !dbg !2302 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2308, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8* %1, metadata !2309, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !2310, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 0, metadata !2311, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 0, metadata !2312, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 0, metadata !2313, metadata !DIExpression()), !dbg !2315
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #21, !dbg !2316
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ], !dbg !2317

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #21, !dbg !2318
  %7 = icmp ne i32 %6, 2, !dbg !2321
  %8 = zext i1 %7 to i8, !dbg !2322
  br label %9, !dbg !2322

9:                                                ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ], !dbg !2315
  call void @llvm.dbg.value(metadata i8 %10, metadata !2313, metadata !DIExpression()), !dbg !2315
  %11 = tail call i32 @dup2(i32 1, i32 1) #21, !dbg !2323
  %12 = icmp ne i32 %11, 1, !dbg !2325
  %13 = zext i1 %12 to i8, !dbg !2326
  br label %14, !dbg !2326

14:                                               ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ], !dbg !2315
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ], !dbg !2315
  call void @llvm.dbg.value(metadata i8 %16, metadata !2313, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 %15, metadata !2312, metadata !DIExpression()), !dbg !2315
  %17 = tail call i32 @dup2(i32 0, i32 0) #21, !dbg !2327
  %18 = icmp eq i32 %17, 0, !dbg !2329
  call void @llvm.dbg.value(metadata i8 %16, metadata !2313, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 %15, metadata !2312, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 undef, metadata !2311, metadata !DIExpression()), !dbg !2315
  br i1 %18, label %27, label %19, !dbg !2330

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !2332, metadata !DIExpression()) #21, !dbg !2336
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i64 0, i64 0), i32 0) #21, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %20, metadata !2335, metadata !DIExpression()) #21, !dbg !2336
  %21 = icmp eq i32 %20, 0, !dbg !2339
  br i1 %21, label %27, label %22, !dbg !2341

22:                                               ; preds = %19
  %23 = icmp sgt i32 %20, -1, !dbg !2342
  br i1 %23, label %24, label %57, !dbg !2345

24:                                               ; preds = %22
  %25 = tail call i32 @close(i32 %20) #21, !dbg !2346
  %26 = tail call i32* @__errno_location() #26, !dbg !2348
  store i32 9, i32* %26, align 4, !dbg !2349, !tbaa !1575
  br label %57, !dbg !2350

27:                                               ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0, !dbg !2351
  br i1 %29, label %38, label %30, !dbg !2353

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, metadata !2332, metadata !DIExpression()) #21, !dbg !2354
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i64 0, i64 0), i32 0) #21, !dbg !2356
  call void @llvm.dbg.value(metadata i32 %31, metadata !2335, metadata !DIExpression()) #21, !dbg !2354
  %32 = icmp eq i32 %31, 1, !dbg !2357
  br i1 %32, label %38, label %33, !dbg !2358

33:                                               ; preds = %30
  %34 = icmp sgt i32 %31, -1, !dbg !2359
  br i1 %34, label %35, label %57, !dbg !2360

35:                                               ; preds = %33
  %36 = tail call i32 @close(i32 %31) #21, !dbg !2361
  %37 = tail call i32* @__errno_location() #26, !dbg !2362
  store i32 9, i32* %37, align 4, !dbg !2363, !tbaa !1575
  br label %57, !dbg !2364

38:                                               ; preds = %30, %27
  %39 = phi i8 [ 0, %27 ], [ 1, %30 ]
  %40 = icmp eq i8 %16, 0, !dbg !2365
  br i1 %40, label %49, label %41, !dbg !2367

41:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 2, metadata !2332, metadata !DIExpression()) #21, !dbg !2368
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i64 0, i64 0), i32 0) #21, !dbg !2370
  call void @llvm.dbg.value(metadata i32 %42, metadata !2335, metadata !DIExpression()) #21, !dbg !2368
  %43 = icmp eq i32 %42, 2, !dbg !2371
  br i1 %43, label %49, label %44, !dbg !2372

44:                                               ; preds = %41
  %45 = icmp sgt i32 %42, -1, !dbg !2373
  br i1 %45, label %46, label %54, !dbg !2374

46:                                               ; preds = %44
  %47 = tail call i32 @close(i32 %42) #21, !dbg !2375
  %48 = tail call i32* @__errno_location() #26, !dbg !2376
  store i32 9, i32* %48, align 4, !dbg !2377, !tbaa !1575
  br label %54, !dbg !2378

49:                                               ; preds = %3, %41, %38
  %50 = phi i8 [ 0, %38 ], [ 1, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %39, %38 ], [ %39, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #21, !dbg !2379
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %53, metadata !2310, metadata !DIExpression()), !dbg !2315
  br label %57

54:                                               ; preds = %46, %44
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !2310, metadata !DIExpression()), !dbg !2315
  %55 = tail call i32* @__errno_location() #26, !dbg !2380
  %56 = load i32, i32* %55, align 4, !dbg !2380, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %63, metadata !2314, metadata !DIExpression()), !dbg !2315
  br label %65, !dbg !2381

57:                                               ; preds = %33, %35, %22, %24, %49
  %58 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ]
  %59 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ]
  %60 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ]
  %61 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], !dbg !2382
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !2310, metadata !DIExpression()), !dbg !2315
  %62 = tail call i32* @__errno_location() #26, !dbg !2380
  %63 = load i32, i32* %62, align 4, !dbg !2380, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %63, metadata !2314, metadata !DIExpression()), !dbg !2315
  %64 = icmp eq i8 %58, 0, !dbg !2383
  br i1 %64, label %72, label %65, !dbg !2381

65:                                               ; preds = %54, %57
  %66 = phi i32 [ %56, %54 ], [ %63, %57 ]
  %67 = phi i32* [ %55, %54 ], [ %62, %57 ]
  %68 = phi %struct._IO_FILE* [ null, %54 ], [ %61, %57 ]
  %69 = phi i1 [ %28, %54 ], [ %60, %57 ]
  %70 = phi i8 [ %39, %54 ], [ %59, %57 ]
  %71 = tail call i32 @close(i32 2) #21, !dbg !2385
  br label %72, !dbg !2385

72:                                               ; preds = %57, %65
  %73 = phi i32 [ %63, %57 ], [ %66, %65 ]
  %74 = phi i32* [ %62, %57 ], [ %67, %65 ]
  %75 = phi %struct._IO_FILE* [ %61, %57 ], [ %68, %65 ]
  %76 = phi i1 [ %60, %57 ], [ %69, %65 ]
  %77 = phi i8 [ %59, %57 ], [ %70, %65 ]
  %78 = icmp eq i8 %77, 0, !dbg !2386
  br i1 %78, label %81, label %79, !dbg !2388

79:                                               ; preds = %72
  %80 = tail call i32 @close(i32 1) #21, !dbg !2389
  br label %81, !dbg !2389

81:                                               ; preds = %72, %79
  br i1 %76, label %82, label %84, !dbg !2390

82:                                               ; preds = %81
  %83 = tail call i32 @close(i32 0) #21, !dbg !2391
  br label %84, !dbg !2391

84:                                               ; preds = %82, %81
  %85 = icmp eq %struct._IO_FILE* %75, null, !dbg !2393
  br i1 %85, label %86, label %87, !dbg !2395

86:                                               ; preds = %84
  store i32 %73, i32* %74, align 4, !dbg !2396, !tbaa !1575
  br label %87, !dbg !2397

87:                                               ; preds = %84, %86
  ret %struct._IO_FILE* %75, !dbg !2398
}

; Function Attrs: nounwind
declare !dbg !638 i32 @dup2(i32, i32) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !648 i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #15

declare !dbg !645 i32 @close(i32) local_unnamed_addr #3

declare !dbg !642 %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @initbuffer(%struct.linebuffer* %0) local_unnamed_addr #16 !dbg !2399 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2403, metadata !DIExpression()), !dbg !2404
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !2405
  call void @llvm.dbg.value(metadata i8* %2, metadata !2406, metadata !DIExpression()) #21, !dbg !2414
  call void @llvm.dbg.value(metadata i32 0, metadata !2412, metadata !DIExpression()) #21, !dbg !2414
  call void @llvm.dbg.value(metadata i64 24, metadata !2413, metadata !DIExpression()) #21, !dbg !2414
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(24) %2, i8 0, i64 24, i1 false) #21, !dbg !2416
  ret void, !dbg !2417
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer(%struct.linebuffer* %0, %struct._IO_FILE* %1) local_unnamed_addr #8 !dbg !2418 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2424, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2425, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2427, metadata !DIExpression()) #21, !dbg !2442
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2432, metadata !DIExpression()) #21, !dbg !2442
  call void @llvm.dbg.value(metadata i8 10, metadata !2433, metadata !DIExpression()) #21, !dbg !2442
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2444
  %4 = load i8*, i8** %3, align 8, !dbg !2444, !tbaa !1779
  call void @llvm.dbg.value(metadata i8* %4, metadata !2435, metadata !DIExpression()) #21, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %4, metadata !2436, metadata !DIExpression()) #21, !dbg !2442
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2445
  call void @llvm.dbg.value(metadata i8* undef, metadata !2437, metadata !DIExpression()) #21, !dbg !2442
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2446, metadata !DIExpression()) #21, !dbg !2451
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2454
  %7 = load i32, i32* %6, align 8, !dbg !2454, !tbaa !1762
  %8 = and i32 %7, 16, !dbg !2454
  %9 = icmp eq i32 %8, 0, !dbg !2455
  br i1 %9, label %10, label %62, !dbg !2456

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !2445, !tbaa !2457
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !2458
  call void @llvm.dbg.value(metadata i8* %12, metadata !2437, metadata !DIExpression()) #21, !dbg !2442
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1, !dbg !2459
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2, !dbg !2459
  br label %15, !dbg !2464

15:                                               ; preds = %48, %10
  %16 = phi i8* [ %49, %48 ], [ %4, %10 ], !dbg !2442
  %17 = phi i8* [ %53, %48 ], [ %4, %10 ], !dbg !2442
  %18 = phi i8* [ %51, %48 ], [ %12, %10 ], !dbg !2442
  call void @llvm.dbg.value(metadata i8* %18, metadata !2437, metadata !DIExpression()) #21, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %17, metadata !2436, metadata !DIExpression()) #21, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %16, metadata !2435, metadata !DIExpression()) #21, !dbg !2442
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2462, metadata !DIExpression()) #21, !dbg !2459
  %19 = load i8*, i8** %13, align 8, !dbg !2465, !tbaa !2466
  %20 = load i8*, i8** %14, align 8, !dbg !2465, !tbaa !2467
  %21 = icmp ult i8* %19, %20, !dbg !2465
  br i1 %21, label %22, label %26, !dbg !2465, !prof !1825, !misexpect !1826

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !2465
  store i8* %23, i8** %13, align 8, !dbg !2465, !tbaa !2466
  %24 = load i8, i8* %19, align 1, !dbg !2465, !tbaa !1544
  %25 = zext i8 %24 to i32, !dbg !2465
  call void @llvm.dbg.value(metadata i32 %27, metadata !2434, metadata !DIExpression()) #21, !dbg !2442
  br label %39, !dbg !2468

26:                                               ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #21, !dbg !2465
  call void @llvm.dbg.value(metadata i32 %27, metadata !2434, metadata !DIExpression()) #21, !dbg !2442
  %28 = icmp eq i32 %27, -1, !dbg !2469
  br i1 %28, label %29, label %39, !dbg !2468

29:                                               ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !2471
  br i1 %30, label %62, label %31, !dbg !2474

31:                                               ; preds = %29
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2475, metadata !DIExpression()) #21, !dbg !2478
  %32 = load i32, i32* %6, align 8, !dbg !2480, !tbaa !1762
  %33 = and i32 %32, 32, !dbg !2480
  %34 = icmp eq i32 %33, 0, !dbg !2481
  br i1 %34, label %35, label %62, !dbg !2482

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !2483
  %37 = load i8, i8* %36, align 1, !dbg !2483, !tbaa !1544
  %38 = icmp eq i8 %37, 10, !dbg !2485
  br i1 %38, label %55, label %39, !dbg !2486

39:                                               ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ], !dbg !2487
  call void @llvm.dbg.value(metadata i32 %40, metadata !2434, metadata !DIExpression()) #21, !dbg !2442
  %41 = icmp eq i8* %17, %18, !dbg !2488
  br i1 %41, label %42, label %48, !dbg !2489

42:                                               ; preds = %39
  %43 = load i64, i64* %5, align 8, !dbg !2490, !tbaa !2457
  call void @llvm.dbg.value(metadata i64 %43, metadata !2438, metadata !DIExpression()) #21, !dbg !2491
  %44 = tail call i8* @x2realloc(i8* %16, i64* nonnull %5) #21, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %44, metadata !2435, metadata !DIExpression()) #21, !dbg !2442
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !2493
  call void @llvm.dbg.value(metadata i8* %45, metadata !2436, metadata !DIExpression()) #21, !dbg !2442
  store i8* %44, i8** %3, align 8, !dbg !2494, !tbaa !1779
  %46 = load i64, i64* %5, align 8, !dbg !2495, !tbaa !2457
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !2496
  call void @llvm.dbg.value(metadata i8* %47, metadata !2437, metadata !DIExpression()) #21, !dbg !2442
  br label %48, !dbg !2497

48:                                               ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ], !dbg !2442
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ], !dbg !2442
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ], !dbg !2442
  call void @llvm.dbg.value(metadata i8* %51, metadata !2437, metadata !DIExpression()) #21, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %50, metadata !2436, metadata !DIExpression()) #21, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %49, metadata !2435, metadata !DIExpression()) #21, !dbg !2442
  %52 = trunc i32 %40 to i8, !dbg !2498
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !2499
  call void @llvm.dbg.value(metadata i8* %53, metadata !2436, metadata !DIExpression()) #21, !dbg !2442
  store i8 %52, i8* %50, align 1, !dbg !2500, !tbaa !1544
  %54 = icmp eq i32 %40, 10, !dbg !2501
  br i1 %54, label %55, label %15, !dbg !2502, !llvm.loop !2503

55:                                               ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ], !dbg !2442
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ], !dbg !2442
  call void @llvm.dbg.value(metadata i8* %57, metadata !2436, metadata !DIExpression()) #21, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %56, metadata !2435, metadata !DIExpression()) #21, !dbg !2442
  %58 = ptrtoint i8* %57 to i64, !dbg !2505
  %59 = ptrtoint i8* %56 to i64, !dbg !2505
  %60 = sub i64 %58, %59, !dbg !2505
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2506
  store i64 %60, i64* %61, align 8, !dbg !2507, !tbaa !1776
  br label %62, !dbg !2508

62:                                               ; preds = %29, %31, %2, %55
  %63 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %31 ], [ null, %29 ], !dbg !2442
  ret %struct.linebuffer* %63, !dbg !2509
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %0, %struct._IO_FILE* %1, i8 signext %2) local_unnamed_addr #8 !dbg !2428 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2427, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2432, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8 %2, metadata !2433, metadata !DIExpression()), !dbg !2510
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2511
  %5 = load i8*, i8** %4, align 8, !dbg !2511, !tbaa !1779
  call void @llvm.dbg.value(metadata i8* %5, metadata !2435, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8* %5, metadata !2436, metadata !DIExpression()), !dbg !2510
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2512
  call void @llvm.dbg.value(metadata i8* undef, metadata !2437, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2446, metadata !DIExpression()), !dbg !2513
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2515
  %8 = load i32, i32* %7, align 8, !dbg !2515, !tbaa !1762
  %9 = and i32 %8, 16, !dbg !2515
  %10 = icmp eq i32 %9, 0, !dbg !2516
  br i1 %10, label %11, label %64, !dbg !2517

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !2512, !tbaa !2457
  %13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !2518
  call void @llvm.dbg.value(metadata i8* %13, metadata !2437, metadata !DIExpression()), !dbg !2510
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1, !dbg !2519
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2, !dbg !2519
  %16 = sext i8 %2 to i32, !dbg !2521
  br label %17, !dbg !2522

17:                                               ; preds = %11, %50
  %18 = phi i8* [ %51, %50 ], [ %5, %11 ], !dbg !2510
  %19 = phi i8* [ %55, %50 ], [ %5, %11 ], !dbg !2510
  %20 = phi i8* [ %53, %50 ], [ %13, %11 ], !dbg !2510
  call void @llvm.dbg.value(metadata i8* %20, metadata !2437, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8* %19, metadata !2436, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8* %18, metadata !2435, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2462, metadata !DIExpression()) #21, !dbg !2519
  %21 = load i8*, i8** %14, align 8, !dbg !2523, !tbaa !2466
  %22 = load i8*, i8** %15, align 8, !dbg !2523, !tbaa !2467
  %23 = icmp ult i8* %21, %22, !dbg !2523
  br i1 %23, label %24, label %28, !dbg !2523, !prof !1825, !misexpect !1826

24:                                               ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !2523
  store i8* %25, i8** %14, align 8, !dbg !2523, !tbaa !2466
  %26 = load i8, i8* %21, align 1, !dbg !2523, !tbaa !1544
  %27 = zext i8 %26 to i32, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %29, metadata !2434, metadata !DIExpression()), !dbg !2510
  br label %41, !dbg !2524

28:                                               ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #21, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %29, metadata !2434, metadata !DIExpression()), !dbg !2510
  %30 = icmp eq i32 %29, -1, !dbg !2525
  br i1 %30, label %31, label %41, !dbg !2524

31:                                               ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !2526
  br i1 %32, label %64, label %33, !dbg !2527

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2475, metadata !DIExpression()), !dbg !2528
  %34 = load i32, i32* %7, align 8, !dbg !2530, !tbaa !1762
  %35 = and i32 %34, 32, !dbg !2530
  %36 = icmp eq i32 %35, 0, !dbg !2531
  br i1 %36, label %37, label %64, !dbg !2532

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2533
  %39 = load i8, i8* %38, align 1, !dbg !2533, !tbaa !1544
  %40 = icmp eq i8 %39, %2, !dbg !2534
  br i1 %40, label %57, label %41, !dbg !2535

41:                                               ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ], !dbg !2536
  call void @llvm.dbg.value(metadata i32 %42, metadata !2434, metadata !DIExpression()), !dbg !2510
  %43 = icmp eq i8* %19, %20, !dbg !2537
  br i1 %43, label %44, label %50, !dbg !2538

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !2539, !tbaa !2457
  call void @llvm.dbg.value(metadata i64 %45, metadata !2438, metadata !DIExpression()), !dbg !2540
  %46 = tail call i8* @x2realloc(i8* %18, i64* nonnull %6) #21, !dbg !2541
  call void @llvm.dbg.value(metadata i8* %46, metadata !2435, metadata !DIExpression()), !dbg !2510
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !2542
  call void @llvm.dbg.value(metadata i8* %47, metadata !2436, metadata !DIExpression()), !dbg !2510
  store i8* %46, i8** %4, align 8, !dbg !2543, !tbaa !1779
  %48 = load i64, i64* %6, align 8, !dbg !2544, !tbaa !2457
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !2545
  call void @llvm.dbg.value(metadata i8* %49, metadata !2437, metadata !DIExpression()), !dbg !2510
  br label %50, !dbg !2546

50:                                               ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ], !dbg !2510
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ], !dbg !2510
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ], !dbg !2510
  call void @llvm.dbg.value(metadata i8* %53, metadata !2437, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8* %52, metadata !2436, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8* %51, metadata !2435, metadata !DIExpression()), !dbg !2510
  %54 = trunc i32 %42 to i8, !dbg !2547
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !2548
  call void @llvm.dbg.value(metadata i8* %55, metadata !2436, metadata !DIExpression()), !dbg !2510
  store i8 %54, i8* %52, align 1, !dbg !2549, !tbaa !1544
  %56 = icmp eq i32 %42, %16, !dbg !2550
  br i1 %56, label %57, label %17, !dbg !2551, !llvm.loop !2552

57:                                               ; preds = %50, %37
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ], !dbg !2510
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ], !dbg !2510
  call void @llvm.dbg.value(metadata i8* %59, metadata !2436, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8* %58, metadata !2435, metadata !DIExpression()), !dbg !2510
  %60 = ptrtoint i8* %59 to i64, !dbg !2554
  %61 = ptrtoint i8* %58 to i64, !dbg !2554
  %62 = sub i64 %60, %61, !dbg !2554
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2555
  store i64 %62, i64* %63, align 8, !dbg !2556, !tbaa !1776
  br label %64, !dbg !2557

64:                                               ; preds = %31, %33, %3, %57
  %65 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %33 ], [ null, %31 ], !dbg !2510
  ret %struct.linebuffer* %65, !dbg !2558
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @freebuffer(%struct.linebuffer* nocapture readonly %0) local_unnamed_addr #8 !dbg !2559 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2561, metadata !DIExpression()), !dbg !2562
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2563
  %3 = load i8*, i8** %2, align 8, !dbg !2563, !tbaa !1779
  tail call void @free(i8* %3) #21, !dbg !2564
  ret void, !dbg !2565
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @memcasecmp(i8* nocapture readonly %0, i8* nocapture readonly %1, i64 %2) local_unnamed_addr #10 !dbg !2566 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2570, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %1, metadata !2571, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %2, metadata !2572, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %0, metadata !2574, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %1, metadata !2575, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 0, metadata !2573, metadata !DIExpression()), !dbg !2588
  %4 = icmp eq i64 %2, 0, !dbg !2589
  br i1 %4, label %25, label %5, !dbg !2590

5:                                                ; preds = %3
  %6 = tail call i32** @__ctype_toupper_loc() #26, !dbg !2591
  %7 = load i32*, i32** %6, align 8, !dbg !2591, !tbaa !1396
  br label %10, !dbg !2590

8:                                                ; preds = %10
  call void @llvm.dbg.value(metadata i64 %24, metadata !2573, metadata !DIExpression()), !dbg !2588
  %9 = icmp eq i64 %24, %2, !dbg !2589
  br i1 %9, label %25, label %10, !dbg !2590, !llvm.loop !2593

10:                                               ; preds = %8, %5
  %11 = phi i64 [ 0, %5 ], [ %24, %8 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2573, metadata !DIExpression()), !dbg !2588
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2595
  %13 = load i8, i8* %12, align 1, !dbg !2595, !tbaa !1544
  call void @llvm.dbg.value(metadata i8 %13, metadata !2576, metadata !DIExpression()), !dbg !2596
  %14 = getelementptr inbounds i8, i8* %1, i64 %11, !dbg !2597
  %15 = load i8, i8* %14, align 1, !dbg !2597, !tbaa !1544
  call void @llvm.dbg.value(metadata i8 %15, metadata !2580, metadata !DIExpression()), !dbg !2596
  %16 = zext i8 %13 to i64, !dbg !2598
  %17 = getelementptr inbounds i32, i32* %7, i64 %16, !dbg !2598
  %18 = load i32, i32* %17, align 4, !dbg !2598, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %18, metadata !2582, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i32 %18, metadata !2581, metadata !DIExpression()), !dbg !2596
  %19 = zext i8 %15 to i64, !dbg !2600
  %20 = getelementptr inbounds i32, i32* %7, i64 %19, !dbg !2600
  %21 = load i32, i32* %20, align 4, !dbg !2600, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %21, metadata !2585, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 %21, metadata !2584, metadata !DIExpression()), !dbg !2596
  %22 = sub nsw i32 %18, %21, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %22, metadata !2587, metadata !DIExpression()), !dbg !2596
  %23 = icmp eq i32 %22, 0, !dbg !2604
  %24 = add nuw i64 %11, 1, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %24, metadata !2573, metadata !DIExpression()), !dbg !2588
  br i1 %23, label %8, label %25

25:                                               ; preds = %10, %8, %3
  %26 = phi i32 [ 0, %3 ], [ 0, %8 ], [ %22, %10 ], !dbg !2588
  ret i32 %26, !dbg !2607
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @posix2_version() local_unnamed_addr #8 !dbg !2608 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i64 200809, metadata !2610, metadata !DIExpression()), !dbg !2616
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i64 0, i64 0)) #21, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %2, metadata !2611, metadata !DIExpression()), !dbg !2616
  %3 = icmp eq i8* %2, null, !dbg !2618
  br i1 %3, label %17, label %4, !dbg !2619

4:                                                ; preds = %0
  %5 = load i8, i8* %2, align 1, !dbg !2620, !tbaa !1544
  %6 = icmp eq i8 %5, 0, !dbg !2620
  br i1 %6, label %17, label %7, !dbg !2621

7:                                                ; preds = %4
  %8 = bitcast i8** %1 to i8*, !dbg !2622
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #21, !dbg !2622
  call void @llvm.dbg.value(metadata i8** %1, metadata !2612, metadata !DIExpression(DW_OP_deref)), !dbg !2623
  %9 = call i64 @strtol(i8* nonnull %2, i8** nonnull %1, i32 10) #21, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %9, metadata !2615, metadata !DIExpression()), !dbg !2623
  %10 = load i8*, i8** %1, align 8, !dbg !2625, !tbaa !1396
  call void @llvm.dbg.value(metadata i8* %10, metadata !2612, metadata !DIExpression()), !dbg !2623
  %11 = load i8, i8* %10, align 1, !dbg !2627, !tbaa !1544
  %12 = icmp eq i8 %11, 0, !dbg !2627
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #21, !dbg !2628
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i64 %9, metadata !2610, metadata !DIExpression()), !dbg !2616
  %14 = icmp slt i64 %9, 2147483647, !dbg !2629
  br i1 %14, label %15, label %17, !dbg !2629

15:                                               ; preds = %13
  %16 = icmp sgt i64 %9, -2147483648, !dbg !2629
  br i1 %16, label %17, label %19, !dbg !2629

17:                                               ; preds = %13, %7, %4, %0, %15
  %18 = phi i64 [ %9, %15 ], [ 200809, %0 ], [ 200809, %4 ], [ 200809, %7 ], [ 2147483647, %13 ]
  br label %19, !dbg !2629

19:                                               ; preds = %15, %17
  %20 = phi i64 [ %18, %17 ], [ -2147483648, %15 ]
  %21 = trunc i64 %20 to i32, !dbg !2629
  ret i32 %21, !dbg !2630
}

; Function Attrs: nofree nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2631 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2633, metadata !DIExpression()), !dbg !2636
  %2 = icmp eq i8* %0, null, !dbg !2637
  br i1 %2, label %3, label %6, !dbg !2639

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2640, !tbaa !1396
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.107, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #27, !dbg !2642
  tail call void @abort() #24, !dbg !2643
  unreachable, !dbg !2643

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #23, !dbg !2644
  call void @llvm.dbg.value(metadata i8* %7, metadata !2634, metadata !DIExpression()), !dbg !2636
  %8 = icmp eq i8* %7, null, !dbg !2645
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2646
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2646
  call void @llvm.dbg.value(metadata i8* %10, metadata !2635, metadata !DIExpression()), !dbg !2636
  %11 = ptrtoint i8* %10 to i64, !dbg !2647
  %12 = ptrtoint i8* %0 to i64, !dbg !2647
  %13 = sub i64 %11, %12, !dbg !2647
  %14 = icmp sgt i64 %13, 6, !dbg !2649
  br i1 %14, label %15, label %24, !dbg !2650

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2651
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.108, i64 0, i64 0), i64 7) #23, !dbg !2652
  %18 = icmp eq i32 %17, 0, !dbg !2653
  br i1 %18, label %19, label %24, !dbg !2654

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2633, metadata !DIExpression()), !dbg !2636
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.109, i64 0, i64 0), i64 3) #23, !dbg !2655
  %21 = icmp eq i32 %20, 0, !dbg !2658
  br i1 %21, label %22, label %24, !dbg !2659

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2660
  call void @llvm.dbg.value(metadata i8* %23, metadata !2633, metadata !DIExpression()), !dbg !2636
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2662, !tbaa !1396
  br label %24, !dbg !2663

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2633, metadata !DIExpression()), !dbg !2636
  store i8* %25, i8** @program_name, align 8, !dbg !2664, !tbaa !1396
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2665, !tbaa !1396
  ret void, !dbg !2666
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #17

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2667 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2672, metadata !DIExpression()), !dbg !2675
  %2 = tail call i32* @__errno_location() #26, !dbg !2676
  %3 = load i32, i32* %2, align 4, !dbg !2676, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %3, metadata !2673, metadata !DIExpression()), !dbg !2675
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2677
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2677
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2677
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #21, !dbg !2678
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2678
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2674, metadata !DIExpression()), !dbg !2675
  store i32 %3, i32* %2, align 4, !dbg !2679, !tbaa !1575
  ret %struct.quoting_options* %8, !dbg !2680
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #18 !dbg !2681 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2685, metadata !DIExpression()), !dbg !2686
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2687
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2687
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2688
  %5 = load i32, i32* %4, align 8, !dbg !2688, !tbaa !2689
  ret i32 %5, !dbg !2691
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !2692 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2696, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 %1, metadata !2697, metadata !DIExpression()), !dbg !2698
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2699
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2699
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2700
  store i32 %1, i32* %5, align 8, !dbg !2701, !tbaa !2689
  ret void, !dbg !2702
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #19 !dbg !2703 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2707, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 %1, metadata !2708, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i32 %2, metadata !2709, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 %1, metadata !2710, metadata !DIExpression()), !dbg !2715
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2716
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2716
  %6 = lshr i8 %1, 5, !dbg !2717
  %7 = zext i8 %6 to i64, !dbg !2717
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2718
  call void @llvm.dbg.value(metadata i32* %8, metadata !2711, metadata !DIExpression()), !dbg !2715
  %9 = and i8 %1, 31, !dbg !2719
  %10 = zext i8 %9 to i32, !dbg !2719
  call void @llvm.dbg.value(metadata i32 %10, metadata !2713, metadata !DIExpression()), !dbg !2715
  %11 = load i32, i32* %8, align 4, !dbg !2720, !tbaa !1575
  %12 = lshr i32 %11, %10, !dbg !2721
  %13 = and i32 %12, 1, !dbg !2722
  call void @llvm.dbg.value(metadata i32 %13, metadata !2714, metadata !DIExpression()), !dbg !2715
  %14 = and i32 %2, 1, !dbg !2723
  %15 = xor i32 %13, %14, !dbg !2724
  %16 = shl i32 %15, %10, !dbg !2725
  %17 = xor i32 %16, %11, !dbg !2726
  store i32 %17, i32* %8, align 4, !dbg !2726, !tbaa !1575
  ret i32 %13, !dbg !2727
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #19 !dbg !2728 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2732, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 %1, metadata !2733, metadata !DIExpression()), !dbg !2735
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2736
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2732, metadata !DIExpression()), !dbg !2735
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2739
  %6 = load i32, i32* %5, align 4, !dbg !2739, !tbaa !2740
  call void @llvm.dbg.value(metadata i32 %6, metadata !2734, metadata !DIExpression()), !dbg !2735
  store i32 %1, i32* %5, align 4, !dbg !2741, !tbaa !2740
  ret i32 %6, !dbg !2742
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2743 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8* %1, metadata !2748, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8* %2, metadata !2749, metadata !DIExpression()), !dbg !2750
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2751
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2753
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2747, metadata !DIExpression()), !dbg !2750
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2754
  store i32 10, i32* %6, align 8, !dbg !2755, !tbaa !2689
  %7 = icmp ne i8* %1, null, !dbg !2756
  %8 = icmp ne i8* %2, null, !dbg !2758
  %9 = and i1 %7, %8, !dbg !2759
  br i1 %9, label %11, label %10, !dbg !2759

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !2760
  unreachable, !dbg !2760

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2761
  store i8* %1, i8** %12, align 8, !dbg !2762, !tbaa !2763
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2764
  store i8* %2, i8** %13, align 8, !dbg !2765, !tbaa !2766
  ret void, !dbg !2767
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2768 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2772, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %1, metadata !2773, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %2, metadata !2774, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %3, metadata !2775, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2776, metadata !DIExpression()), !dbg !2780
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2781
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2781
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2777, metadata !DIExpression()), !dbg !2780
  %8 = tail call i32* @__errno_location() #26, !dbg !2782
  %9 = load i32, i32* %8, align 4, !dbg !2782, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %9, metadata !2778, metadata !DIExpression()), !dbg !2780
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2783
  %11 = load i32, i32* %10, align 8, !dbg !2783, !tbaa !2689
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2784
  %13 = load i32, i32* %12, align 4, !dbg !2784, !tbaa !2740
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2785
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2786
  %16 = load i8*, i8** %15, align 8, !dbg !2786, !tbaa !2763
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2787
  %18 = load i8*, i8** %17, align 8, !dbg !2787, !tbaa !2766
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %19, metadata !2779, metadata !DIExpression()), !dbg !2780
  store i32 %9, i32* %8, align 4, !dbg !2789, !tbaa !1575
  ret i64 %19, !dbg !2790
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2791 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2797, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %1, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %2, metadata !2799, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %3, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 %4, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 %5, metadata !2802, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32* %6, metadata !2803, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %7, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %8, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 0, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 0, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* null, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 0, metadata !2810, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2811, metadata !DIExpression()), !dbg !2855
  %13 = tail call i64 @__ctype_get_mb_cur_max() #21, !dbg !2856
  %14 = icmp eq i64 %13, 1, !dbg !2857
  call void @llvm.dbg.value(metadata i1 %14, metadata !2812, metadata !DIExpression()), !dbg !2855
  %15 = lshr i32 %5, 1, !dbg !2858
  %16 = trunc i32 %15 to i8, !dbg !2858
  %17 = and i8 %16, 1, !dbg !2858
  call void @llvm.dbg.value(metadata i8 %17, metadata !2813, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 1, metadata !2816, metadata !DIExpression()), !dbg !2855
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2859
  %19 = and i32 %5, 4, !dbg !2861
  %20 = icmp eq i32 %19, 0, !dbg !2861
  %21 = and i32 %5, 1, !dbg !2864
  %22 = icmp eq i32 %21, 0, !dbg !2864
  %23 = bitcast i64* %10 to i8*, !dbg !2867
  %24 = bitcast i32* %12 to i8*, !dbg !2868
  %25 = icmp eq i32* %6, null, !dbg !2869
  br label %26, !dbg !2871

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2872
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2873
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2874
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2875
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2855
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2876
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2877
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2878
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %38, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %37, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %36, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %35, metadata !2813, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %34, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %33, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %32, metadata !2810, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %31, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %30, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 0, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %29, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %28, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 %27, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.label(metadata !2849), !dbg !2879
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
  ], !dbg !2880

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 1, metadata !2813, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %35, metadata !2813, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 5, metadata !2801, metadata !DIExpression()), !dbg !2855
  br label %92, !dbg !2881

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2813, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 5, metadata !2801, metadata !DIExpression()), !dbg !2855
  %42 = and i8 %35, 1, !dbg !2883
  %43 = icmp eq i8 %42, 0, !dbg !2883
  br i1 %43, label %44, label %92, !dbg !2881

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2885
  br i1 %45, label %92, label %46, !dbg !2888

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2885, !tbaa !1544
  br label %92, !dbg !2885

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.120, i64 0, i64 0), i32 %27), !dbg !2889
  call void @llvm.dbg.value(metadata i8* %48, metadata !2804, metadata !DIExpression()), !dbg !2855
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), i32 %27), !dbg !2893
  call void @llvm.dbg.value(metadata i8* %49, metadata !2805, metadata !DIExpression()), !dbg !2855
  br label %50, !dbg !2894

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %51, metadata !2804, metadata !DIExpression()), !dbg !2855
  %53 = and i8 %35, 1, !dbg !2895
  %54 = icmp eq i8 %53, 0, !dbg !2895
  br i1 %54, label %55, label %70, !dbg !2897

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 0, metadata !2807, metadata !DIExpression()), !dbg !2855
  %56 = load i8, i8* %51, align 1, !dbg !2898, !tbaa !1544
  %57 = icmp eq i8 %56, 0, !dbg !2901
  br i1 %57, label %70, label %58, !dbg !2901

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %61, metadata !2807, metadata !DIExpression()), !dbg !2855
  %62 = icmp ult i64 %61, %39, !dbg !2902
  br i1 %62, label %63, label %65, !dbg !2905

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2902
  store i8 %59, i8* %64, align 1, !dbg !2902, !tbaa !1544
  br label %65, !dbg !2902

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2905
  call void @llvm.dbg.value(metadata i64 %66, metadata !2807, metadata !DIExpression()), !dbg !2855
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2906
  call void @llvm.dbg.value(metadata i8* %67, metadata !2809, metadata !DIExpression()), !dbg !2855
  %68 = load i8, i8* %67, align 1, !dbg !2898, !tbaa !1544
  %69 = icmp eq i8 %68, 0, !dbg !2901
  br i1 %69, label %70, label %58, !dbg !2901, !llvm.loop !2907

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2909
  call void @llvm.dbg.value(metadata i64 %71, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 1, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %52, metadata !2809, metadata !DIExpression()), !dbg !2855
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #23, !dbg !2910
  call void @llvm.dbg.value(metadata i64 %72, metadata !2810, metadata !DIExpression()), !dbg !2855
  br label %92, !dbg !2911

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2811, metadata !DIExpression()), !dbg !2855
  br label %74, !dbg !2912

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2855
  call void @llvm.dbg.value(metadata i8 %75, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 1, metadata !2813, metadata !DIExpression()), !dbg !2855
  br label %76, !dbg !2913

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2875
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2855
  call void @llvm.dbg.value(metadata i8 %78, metadata !2813, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %77, metadata !2811, metadata !DIExpression()), !dbg !2855
  %79 = and i8 %78, 1, !dbg !2914
  %80 = icmp eq i8 %79, 0, !dbg !2914
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2916
  br label %82, !dbg !2916

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2855
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2858
  call void @llvm.dbg.value(metadata i8 %84, metadata !2813, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %83, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 2, metadata !2801, metadata !DIExpression()), !dbg !2855
  %85 = and i8 %84, 1, !dbg !2917
  %86 = icmp eq i8 %85, 0, !dbg !2917
  br i1 %86, label %87, label %92, !dbg !2919

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2920
  br i1 %88, label %92, label %89, !dbg !2923

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2920, !tbaa !1544
  br label %92, !dbg !2920

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2813, metadata !DIExpression()), !dbg !2855
  br label %92, !dbg !2924

91:                                               ; preds = %26
  call void @abort() #24, !dbg !2925
  unreachable, !dbg !2925

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2909
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), %40 ], !dbg !2855
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2855
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2855
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2855
  call void @llvm.dbg.value(metadata i8 %100, metadata !2813, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %99, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %98, metadata !2810, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %96, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 %93, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 0, metadata !2806, metadata !DIExpression()), !dbg !2855
  %101 = and i8 %99, 1, !dbg !2926
  %102 = icmp ne i8 %101, 0, !dbg !2926
  %103 = icmp ne i32 %93, 2, !dbg !2926
  %104 = and i1 %103, %102, !dbg !2926
  %105 = icmp ne i64 %98, 0, !dbg !2926
  %106 = and i1 %105, %104, !dbg !2926
  %107 = icmp ugt i64 %98, 1, !dbg !2926
  %108 = and i8 %100, 1, !dbg !2928
  %109 = icmp eq i8 %108, 0, !dbg !2928
  %110 = icmp eq i32 %93, 2, !dbg !2931
  %111 = or i1 %103, %109, !dbg !2933
  %112 = icmp ne i8 %108, 0, !dbg !2935
  %113 = and i1 %110, %112, !dbg !2935
  %114 = xor i1 %102, true, !dbg !2936
  %115 = xor i1 %104, true, !dbg !2869
  %116 = and i1 %109, %115, !dbg !2869
  %117 = or i1 %25, %116, !dbg !2869
  %118 = and i8 %99, %100, !dbg !2937
  %119 = and i8 %118, 1, !dbg !2937
  %120 = icmp ne i8 %119, 0, !dbg !2937
  %121 = and i1 %120, %105, !dbg !2937
  br label %122, !dbg !2939

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2940
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2909
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2872
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2876
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2877
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2878
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %129, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %128, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %127, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %126, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %123, metadata !2806, metadata !DIExpression()), !dbg !2855
  %131 = icmp eq i64 %126, -1, !dbg !2941
  br i1 %131, label %132, label %136, !dbg !2942

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2943
  %134 = load i8, i8* %133, align 1, !dbg !2943, !tbaa !1544
  %135 = icmp eq i8 %134, 0, !dbg !2944
  br i1 %135, label %581, label %138, !dbg !2945

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2946
  br i1 %137, label %581, label %138, !dbg !2945

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2822, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 0, metadata !2823, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 0, metadata !2824, metadata !DIExpression()), !dbg !2947
  br i1 %106, label %139, label %154, !dbg !2948

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2949
  %141 = and i1 %107, %131, !dbg !2950
  br i1 %141, label %142, label %144, !dbg !2950

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2951
  call void @llvm.dbg.value(metadata i64 %143, metadata !2800, metadata !DIExpression()), !dbg !2855
  br label %144, !dbg !2952

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2800, metadata !DIExpression()), !dbg !2855
  %146 = icmp ugt i64 %140, %145, !dbg !2953
  br i1 %146, label %154, label %147, !dbg !2954

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2955
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2956
  %150 = icmp ne i32 %149, 0, !dbg !2957
  %151 = or i1 %150, %109, !dbg !2958
  %152 = xor i1 %150, true, !dbg !2958
  %153 = zext i1 %152 to i8, !dbg !2958
  br i1 %151, label %154, label %639, !dbg !2958

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2947
  call void @llvm.dbg.value(metadata i8 %156, metadata !2822, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 %155, metadata !2800, metadata !DIExpression()), !dbg !2855
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2959
  %158 = load i8, i8* %157, align 1, !dbg !2959, !tbaa !1544
  call void @llvm.dbg.value(metadata i8 %158, metadata !2817, metadata !DIExpression()), !dbg !2947
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
  ], !dbg !2960

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2961

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2962

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2823, metadata !DIExpression()), !dbg !2947
  %162 = and i8 %127, 1, !dbg !2965
  %163 = icmp eq i8 %162, 0, !dbg !2965
  %164 = and i1 %110, %163, !dbg !2965
  br i1 %164, label %165, label %181, !dbg !2965

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2967
  br i1 %166, label %167, label %169, !dbg !2971

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2967
  store i8 39, i8* %168, align 1, !dbg !2967, !tbaa !1544
  br label %169, !dbg !2967

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %170, metadata !2807, metadata !DIExpression()), !dbg !2855
  %171 = icmp ult i64 %170, %130, !dbg !2972
  br i1 %171, label %172, label %174, !dbg !2975

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2972
  store i8 36, i8* %173, align 1, !dbg !2972, !tbaa !1544
  br label %174, !dbg !2972

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %175, metadata !2807, metadata !DIExpression()), !dbg !2855
  %176 = icmp ult i64 %175, %130, !dbg !2976
  br i1 %176, label %177, label %179, !dbg !2979

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2976
  store i8 39, i8* %178, align 1, !dbg !2976, !tbaa !1544
  br label %179, !dbg !2976

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2979
  call void @llvm.dbg.value(metadata i64 %180, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 1, metadata !2814, metadata !DIExpression()), !dbg !2855
  br label %181, !dbg !2980

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2855
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2855
  call void @llvm.dbg.value(metadata i8 %183, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %182, metadata !2807, metadata !DIExpression()), !dbg !2855
  %184 = icmp ult i64 %182, %130, !dbg !2981
  br i1 %184, label %185, label %187, !dbg !2984

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2981
  store i8 92, i8* %186, align 1, !dbg !2981, !tbaa !1544
  br label %187, !dbg !2981

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %188, metadata !2807, metadata !DIExpression()), !dbg !2855
  br i1 %103, label %189, label %463, !dbg !2985

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2987
  %191 = icmp ult i64 %190, %155, !dbg !2988
  br i1 %191, label %192, label %463, !dbg !2989

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2990
  %194 = load i8, i8* %193, align 1, !dbg !2990, !tbaa !1544
  %195 = add i8 %194, -48, !dbg !2991
  %196 = icmp ult i8 %195, 10, !dbg !2991
  br i1 %196, label %197, label %463, !dbg !2991

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2992
  br i1 %198, label %199, label %201, !dbg !2996

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2992
  store i8 48, i8* %200, align 1, !dbg !2992, !tbaa !1544
  br label %201, !dbg !2992

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2996
  call void @llvm.dbg.value(metadata i64 %202, metadata !2807, metadata !DIExpression()), !dbg !2855
  %203 = icmp ult i64 %202, %130, !dbg !2997
  br i1 %203, label %204, label %206, !dbg !3000

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2997
  store i8 48, i8* %205, align 1, !dbg !2997, !tbaa !1544
  br label %206, !dbg !2997

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %207, metadata !2807, metadata !DIExpression()), !dbg !2855
  br label %463, !dbg !3001

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !3002

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !3003

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !3004

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !3005

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !3006
  %214 = icmp ult i64 %213, %155, !dbg !3007
  br i1 %214, label %215, label %463, !dbg !3008

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !3009
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !3010
  %218 = load i8, i8* %217, align 1, !dbg !3010, !tbaa !1544
  %219 = icmp eq i8 %218, 63, !dbg !3011
  br i1 %219, label %220, label %463, !dbg !3012

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !3013
  %222 = load i8, i8* %221, align 1, !dbg !3013, !tbaa !1544
  %223 = sext i8 %222 to i32, !dbg !3013
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
  ], !dbg !3014

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !3015

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2817, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 %213, metadata !2806, metadata !DIExpression()), !dbg !2855
  %226 = icmp ult i64 %124, %130, !dbg !3017
  br i1 %226, label %227, label %229, !dbg !3020

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3017
  store i8 63, i8* %228, align 1, !dbg !3017, !tbaa !1544
  br label %229, !dbg !3017

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %230, metadata !2807, metadata !DIExpression()), !dbg !2855
  %231 = icmp ult i64 %230, %130, !dbg !3021
  br i1 %231, label %232, label %234, !dbg !3024

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !3021
  store i8 34, i8* %233, align 1, !dbg !3021, !tbaa !1544
  br label %234, !dbg !3021

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !3024
  call void @llvm.dbg.value(metadata i64 %235, metadata !2807, metadata !DIExpression()), !dbg !2855
  %236 = icmp ult i64 %235, %130, !dbg !3025
  br i1 %236, label %237, label %239, !dbg !3028

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !3025
  store i8 34, i8* %238, align 1, !dbg !3025, !tbaa !1544
  br label %239, !dbg !3025

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !3028
  call void @llvm.dbg.value(metadata i64 %240, metadata !2807, metadata !DIExpression()), !dbg !2855
  %241 = icmp ult i64 %240, %130, !dbg !3029
  br i1 %241, label %242, label %244, !dbg !3032

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !3029
  store i8 63, i8* %243, align 1, !dbg !3029, !tbaa !1544
  br label %244, !dbg !3029

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %245, metadata !2807, metadata !DIExpression()), !dbg !2855
  br label %463, !dbg !3033

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2821, metadata !DIExpression()), !dbg !2947
  br label %256, !dbg !3034

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2821, metadata !DIExpression()), !dbg !2947
  br label %256, !dbg !3035

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2821, metadata !DIExpression()), !dbg !2947
  br label %254, !dbg !3036

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2821, metadata !DIExpression()), !dbg !2947
  br label %254, !dbg !3037

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2821, metadata !DIExpression()), !dbg !2947
  br label %256, !dbg !3038

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2821, metadata !DIExpression()), !dbg !2947
  br i1 %110, label %252, label %253, !dbg !3039

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !3040

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !3043

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !3044
  call void @llvm.dbg.value(metadata i8 %255, metadata !2821, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.label(metadata !2850), !dbg !3045
  br i1 %111, label %256, label %625, !dbg !3046

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !3044
  call void @llvm.dbg.value(metadata i8 %257, metadata !2821, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.label(metadata !2851), !dbg !3048
  br i1 %102, label %488, label %463, !dbg !3049

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !3050

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !3051, !tbaa !1544
  %261 = icmp eq i8 %260, 0, !dbg !3052
  br i1 %261, label %262, label %463, !dbg !3053

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !3054
  br i1 %263, label %264, label %463, !dbg !3056

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2824, metadata !DIExpression()), !dbg !2947
  br label %265, !dbg !3057

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2947
  call void @llvm.dbg.value(metadata i8 %266, metadata !2824, metadata !DIExpression()), !dbg !2947
  br i1 %111, label %463, label %625, !dbg !3058

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 1, metadata !2824, metadata !DIExpression()), !dbg !2947
  br i1 %110, label %268, label %463, !dbg !3059

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !3060

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !3062
  %271 = icmp ne i64 %125, 0, !dbg !3064
  %272 = or i1 %271, %270, !dbg !3065
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !3065
  %274 = select i1 %272, i64 %130, i64 0, !dbg !3065
  call void @llvm.dbg.value(metadata i64 %274, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %273, metadata !2808, metadata !DIExpression()), !dbg !2855
  %275 = icmp ult i64 %124, %274, !dbg !3066
  br i1 %275, label %276, label %278, !dbg !3069

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3066
  store i8 39, i8* %277, align 1, !dbg !3066, !tbaa !1544
  br label %278, !dbg !3066

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %279, metadata !2807, metadata !DIExpression()), !dbg !2855
  %280 = icmp ult i64 %279, %274, !dbg !3070
  br i1 %280, label %281, label %283, !dbg !3073

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !3070
  store i8 92, i8* %282, align 1, !dbg !3070, !tbaa !1544
  br label %283, !dbg !3070

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %284, metadata !2807, metadata !DIExpression()), !dbg !2855
  %285 = icmp ult i64 %284, %274, !dbg !3074
  br i1 %285, label %286, label %288, !dbg !3077

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !3074
  store i8 39, i8* %287, align 1, !dbg !3074, !tbaa !1544
  br label %288, !dbg !3074

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %289, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2814, metadata !DIExpression()), !dbg !2855
  br label %463, !dbg !3078

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !3079

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2825, metadata !DIExpression()), !dbg !3080
  %292 = tail call i16** @__ctype_b_loc() #26, !dbg !3081
  %293 = load i16*, i16** %292, align 8, !dbg !3081, !tbaa !1396
  %294 = zext i8 %158 to i64, !dbg !3081
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !3081
  %296 = load i16, i16* %295, align 2, !dbg !3081, !tbaa !1978
  %297 = lshr i16 %296, 14, !dbg !3083
  %298 = trunc i16 %297 to i8, !dbg !3083
  %299 = and i8 %298, 1, !dbg !3083
  call void @llvm.dbg.value(metadata i8 %299, metadata !2828, metadata !DIExpression()), !dbg !3080
  br label %355, !dbg !3084

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #21, !dbg !3085
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2829, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i8* %23, metadata !3087, metadata !DIExpression()) #21, !dbg !3092
  call void @llvm.dbg.value(metadata i32 0, metadata !3090, metadata !DIExpression()) #21, !dbg !3092
  call void @llvm.dbg.value(metadata i64 8, metadata !3091, metadata !DIExpression()) #21, !dbg !3092
  store i64 0, i64* %10, align 8, !dbg !3094
  call void @llvm.dbg.value(metadata i64 0, metadata !2825, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i8 1, metadata !2828, metadata !DIExpression()), !dbg !3080
  %301 = icmp eq i64 %155, -1, !dbg !3095
  br i1 %301, label %302, label %304, !dbg !3097

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %303, metadata !2800, metadata !DIExpression()), !dbg !2855
  br label %304, !dbg !3099

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2947
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  br label %306, !dbg !3100

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !3101
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !3102
  call void @llvm.dbg.value(metadata i8 %308, metadata !2828, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %307, metadata !2825, metadata !DIExpression()), !dbg !3080
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #21, !dbg !3103
  %309 = add i64 %307, %123, !dbg !3104
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !3105
  %311 = sub i64 %305, %309, !dbg !3106
  call void @llvm.dbg.value(metadata i32* %12, metadata !2835, metadata !DIExpression(DW_OP_deref)), !dbg !2868
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #21, !dbg !3107
  call void @llvm.dbg.value(metadata i64 %312, metadata !2838, metadata !DIExpression()), !dbg !2868
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !3108

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2825, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %307, metadata !2825, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %307, metadata !2825, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %307, metadata !2825, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %307, metadata !2825, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %307, metadata !2825, metadata !DIExpression()), !dbg !3080
  %314 = icmp ugt i64 %305, %309, !dbg !3109
  br i1 %314, label %315, label %340, !dbg !3111

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !3112
  br label %317, !dbg !3112

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2825, metadata !DIExpression()), !dbg !3080
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !3113
  %321 = load i8, i8* %320, align 1, !dbg !3113, !tbaa !1544
  %322 = icmp eq i8 %321, 0, !dbg !3111
  br i1 %322, label %340, label %323, !dbg !3112

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %324, metadata !2825, metadata !DIExpression()), !dbg !3080
  %325 = add i64 %324, %123, !dbg !3115
  %326 = icmp ult i64 %325, %305, !dbg !3109
  br i1 %326, label %317, label %340, !dbg !3111, !llvm.loop !3116

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !3117
  %329 = and i1 %113, %328, !dbg !3120
  call void @llvm.dbg.value(metadata i64 1, metadata !2839, metadata !DIExpression()), !dbg !3121
  br i1 %329, label %330, label %343, !dbg !3120

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2839, metadata !DIExpression()), !dbg !3121
  %332 = add i64 %331, %309, !dbg !3122
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !3123
  %334 = load i8, i8* %333, align 1, !dbg !3123, !tbaa !1544
  %335 = sext i8 %334 to i32, !dbg !3123
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !3124

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %337, metadata !2839, metadata !DIExpression()), !dbg !3121
  %338 = icmp eq i64 %337, %312, !dbg !3117
  br i1 %338, label %343, label %330, !dbg !3126, !llvm.loop !3127

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2825, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i8 %308, metadata !2828, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %307, metadata !2825, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i8 %308, metadata !2828, metadata !DIExpression()), !dbg !3080
  br label %340, !dbg !3129

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #21, !dbg !3129
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !3130, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %344, metadata !2835, metadata !DIExpression()), !dbg !2868
  %345 = call i32 @iswprint(i32 %344) #21, !dbg !3132
  %346 = icmp eq i32 %345, 0, !dbg !3132
  %347 = select i1 %346, i8 0, i8 %308, !dbg !3133
  call void @llvm.dbg.value(metadata i8 %347, metadata !2828, metadata !DIExpression()), !dbg !3080
  %348 = add i64 %312, %307, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %348, metadata !2825, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i8 %347, metadata !2828, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %348, metadata !2825, metadata !DIExpression()), !dbg !3080
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #21, !dbg !3129
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #23, !dbg !3135
  %350 = icmp eq i32 %349, 0, !dbg !3136
  br i1 %350, label %306, label %351, !dbg !3137, !llvm.loop !3138

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #21, !dbg !3140
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 2, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 2, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 2, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 2, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 2, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %99, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %99, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %99, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %99, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %99, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 2, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 2, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 2, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 2, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 2, metadata !2801, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %99, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %99, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %99, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %99, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %99, metadata !2811, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %305, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #21, !dbg !3129
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #21, !dbg !3140
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2947
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !3141
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !3141
  call void @llvm.dbg.value(metadata i8 %358, metadata !2828, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %357, metadata !2825, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %356, metadata !2800, metadata !DIExpression()), !dbg !2855
  %359 = and i8 %358, 1, !dbg !3142
  %360 = icmp ne i8 %359, 0, !dbg !3142
  call void @llvm.dbg.value(metadata i8 %359, metadata !2824, metadata !DIExpression()), !dbg !2947
  %361 = icmp ult i64 %357, 2, !dbg !3143
  %362 = or i1 %360, %114, !dbg !3144
  %363 = and i1 %361, %362, !dbg !3145
  br i1 %363, label %463, label %364, !dbg !3145

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %365, metadata !2846, metadata !DIExpression()), !dbg !3147
  br label %366, !dbg !3148

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2940
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2855
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2876
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2947
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2947
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !3149
  call void @llvm.dbg.value(metadata i8 %372, metadata !2823, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %371, metadata !2822, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %370, metadata !2817, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %369, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %368, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %367, metadata !2806, metadata !DIExpression()), !dbg !2855
  br i1 %362, label %419, label %373, !dbg !3150

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !3155

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2823, metadata !DIExpression()), !dbg !2947
  %375 = and i8 %369, 1, !dbg !3158
  %376 = icmp eq i8 %375, 0, !dbg !3158
  %377 = and i1 %110, %376, !dbg !3158
  br i1 %377, label %378, label %394, !dbg !3158

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !3160
  br i1 %379, label %380, label %382, !dbg !3164

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3160
  store i8 39, i8* %381, align 1, !dbg !3160, !tbaa !1544
  br label %382, !dbg !3160

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %383, metadata !2807, metadata !DIExpression()), !dbg !2855
  %384 = icmp ult i64 %383, %130, !dbg !3165
  br i1 %384, label %385, label %387, !dbg !3168

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !3165
  store i8 36, i8* %386, align 1, !dbg !3165, !tbaa !1544
  br label %387, !dbg !3165

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %388, metadata !2807, metadata !DIExpression()), !dbg !2855
  %389 = icmp ult i64 %388, %130, !dbg !3169
  br i1 %389, label %390, label %392, !dbg !3172

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !3169
  store i8 39, i8* %391, align 1, !dbg !3169, !tbaa !1544
  br label %392, !dbg !3169

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %393, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 1, metadata !2814, metadata !DIExpression()), !dbg !2855
  br label %394, !dbg !3173

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2855
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2855
  call void @llvm.dbg.value(metadata i8 %396, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %395, metadata !2807, metadata !DIExpression()), !dbg !2855
  %397 = icmp ult i64 %395, %130, !dbg !3174
  br i1 %397, label %398, label %400, !dbg !3177

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !3174
  store i8 92, i8* %399, align 1, !dbg !3174, !tbaa !1544
  br label %400, !dbg !3174

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %401, metadata !2807, metadata !DIExpression()), !dbg !2855
  %402 = icmp ult i64 %401, %130, !dbg !3178
  br i1 %402, label %403, label %407, !dbg !3181

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !3178
  %405 = or i8 %404, 48, !dbg !3178
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3178
  store i8 %405, i8* %406, align 1, !dbg !3178, !tbaa !1544
  br label %407, !dbg !3178

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !3181
  call void @llvm.dbg.value(metadata i64 %408, metadata !2807, metadata !DIExpression()), !dbg !2855
  %409 = icmp ult i64 %408, %130, !dbg !3182
  br i1 %409, label %410, label %415, !dbg !3185

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !3182
  %412 = and i8 %411, 7, !dbg !3182
  %413 = or i8 %412, 48, !dbg !3182
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3182
  store i8 %413, i8* %414, align 1, !dbg !3182, !tbaa !1544
  br label %415, !dbg !3182

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !3185
  call void @llvm.dbg.value(metadata i64 %416, metadata !2807, metadata !DIExpression()), !dbg !2855
  %417 = and i8 %370, 7, !dbg !3186
  %418 = or i8 %417, 48, !dbg !3187
  call void @llvm.dbg.value(metadata i8 %418, metadata !2817, metadata !DIExpression()), !dbg !2947
  br label %428, !dbg !3188

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !3189
  %421 = icmp eq i8 %420, 0, !dbg !3189
  br i1 %421, label %428, label %422, !dbg !3191

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !3192
  br i1 %423, label %424, label %426, !dbg !3196

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3192
  store i8 92, i8* %425, align 1, !dbg !3192, !tbaa !1544
  br label %426, !dbg !3192

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !3196
  call void @llvm.dbg.value(metadata i64 %427, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2822, metadata !DIExpression()), !dbg !2947
  br label %428, !dbg !3197

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2855
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2876
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2947
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2947
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2947
  call void @llvm.dbg.value(metadata i8 %433, metadata !2823, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %432, metadata !2822, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %431, metadata !2817, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %430, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %429, metadata !2807, metadata !DIExpression()), !dbg !2855
  %434 = add i64 %367, 1, !dbg !3198
  %435 = icmp ugt i64 %365, %434, !dbg !3200
  br i1 %435, label %436, label %526, !dbg !3201

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !3202
  %438 = icmp ne i8 %437, 0, !dbg !3202
  %439 = and i8 %433, 1, !dbg !3202
  %440 = icmp eq i8 %439, 0, !dbg !3202
  %441 = and i1 %438, %440, !dbg !3202
  br i1 %441, label %442, label %453, !dbg !3202

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !3205
  br i1 %443, label %444, label %446, !dbg !3209

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !3205
  store i8 39, i8* %445, align 1, !dbg !3205, !tbaa !1544
  br label %446, !dbg !3205

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !3209
  call void @llvm.dbg.value(metadata i64 %447, metadata !2807, metadata !DIExpression()), !dbg !2855
  %448 = icmp ult i64 %447, %130, !dbg !3210
  br i1 %448, label %449, label %451, !dbg !3213

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !3210
  store i8 39, i8* %450, align 1, !dbg !3210, !tbaa !1544
  br label %451, !dbg !3210

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !3213
  call void @llvm.dbg.value(metadata i64 %452, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2814, metadata !DIExpression()), !dbg !2855
  br label %453, !dbg !3214

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !3215
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2855
  call void @llvm.dbg.value(metadata i8 %455, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %454, metadata !2807, metadata !DIExpression()), !dbg !2855
  %456 = icmp ult i64 %454, %130, !dbg !3216
  br i1 %456, label %457, label %459, !dbg !3219

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3216
  store i8 %431, i8* %458, align 1, !dbg !3216, !tbaa !1544
  br label %459, !dbg !3216

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %460, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %434, metadata !2806, metadata !DIExpression()), !dbg !2855
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !3220
  %462 = load i8, i8* %461, align 1, !dbg !3220, !tbaa !1544
  call void @llvm.dbg.value(metadata i8 %462, metadata !2817, metadata !DIExpression()), !dbg !2947
  br label %366, !dbg !3221, !llvm.loop !3222

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2940
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2855
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2872
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !3225
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2855
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2855
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2947
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2947
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2947
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %472, metadata !2824, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %471, metadata !2823, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %156, metadata !2822, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %470, metadata !2817, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %469, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %468, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %467, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %466, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %465, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %464, metadata !2806, metadata !DIExpression()), !dbg !2855
  br i1 %117, label %486, label %474, !dbg !3226

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !3227
  %476 = zext i8 %475 to i64, !dbg !3227
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !3228
  %478 = load i32, i32* %477, align 4, !dbg !3228, !tbaa !1575
  %479 = and i8 %470, 31, !dbg !3229
  %480 = zext i8 %479 to i32, !dbg !3229
  %481 = shl nuw i32 1, %480, !dbg !3230
  %482 = and i32 %478, %481, !dbg !3230
  %483 = icmp eq i32 %482, 0, !dbg !3230
  %484 = icmp eq i8 %156, 0, !dbg !3231
  %485 = and i1 %484, %483, !dbg !3232
  br i1 %485, label %526, label %488, !dbg !3232

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !3231
  br i1 %487, label %526, label %488, !dbg !3233

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !3234
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2855
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2872
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !3225
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2876
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2877
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2947
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2947
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %496, metadata !2824, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %495, metadata !2817, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %494, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %493, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %492, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %491, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %490, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %489, metadata !2806, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.label(metadata !2852), !dbg !3235
  br i1 %109, label %498, label %629, !dbg !3236

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2823, metadata !DIExpression()), !dbg !2947
  %499 = and i8 %493, 1, !dbg !3238
  %500 = icmp eq i8 %499, 0, !dbg !3238
  %501 = and i1 %110, %500, !dbg !3238
  br i1 %501, label %502, label %518, !dbg !3238

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !3240
  br i1 %503, label %504, label %506, !dbg !3244

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !3240
  store i8 39, i8* %505, align 1, !dbg !3240, !tbaa !1544
  br label %506, !dbg !3240

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !3244
  call void @llvm.dbg.value(metadata i64 %507, metadata !2807, metadata !DIExpression()), !dbg !2855
  %508 = icmp ult i64 %507, %497, !dbg !3245
  br i1 %508, label %509, label %511, !dbg !3248

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !3245
  store i8 36, i8* %510, align 1, !dbg !3245, !tbaa !1544
  br label %511, !dbg !3245

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %512, metadata !2807, metadata !DIExpression()), !dbg !2855
  %513 = icmp ult i64 %512, %497, !dbg !3249
  br i1 %513, label %514, label %516, !dbg !3252

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3249
  store i8 39, i8* %515, align 1, !dbg !3249, !tbaa !1544
  br label %516, !dbg !3249

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !3252
  call void @llvm.dbg.value(metadata i64 %517, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 1, metadata !2814, metadata !DIExpression()), !dbg !2855
  br label %518, !dbg !3253

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2947
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2855
  call void @llvm.dbg.value(metadata i8 %520, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %519, metadata !2807, metadata !DIExpression()), !dbg !2855
  %521 = icmp ult i64 %519, %497, !dbg !3254
  br i1 %521, label %522, label %524, !dbg !3257

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3254
  store i8 92, i8* %523, align 1, !dbg !3254, !tbaa !1544
  br label %524, !dbg !3254

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !3257
  call void @llvm.dbg.value(metadata i64 %525, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %536, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %535, metadata !2824, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %534, metadata !2823, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %533, metadata !2817, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %532, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %531, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %530, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %529, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %528, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %527, metadata !2806, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.label(metadata !2853), !dbg !3258
  br label %553, !dbg !3259

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !3234
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2855
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2872
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !3225
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2876
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2877
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !3262
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2947
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2947
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %535, metadata !2824, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %534, metadata !2823, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %533, metadata !2817, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %532, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %531, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %530, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %529, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %528, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %527, metadata !2806, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.label(metadata !2853), !dbg !3258
  %537 = and i8 %531, 1, !dbg !3259
  %538 = icmp ne i8 %537, 0, !dbg !3259
  %539 = and i8 %534, 1, !dbg !3259
  %540 = icmp eq i8 %539, 0, !dbg !3259
  %541 = and i1 %538, %540, !dbg !3259
  br i1 %541, label %542, label %553, !dbg !3259

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !3263
  br i1 %543, label %544, label %546, !dbg !3267

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3263
  store i8 39, i8* %545, align 1, !dbg !3263, !tbaa !1544
  br label %546, !dbg !3263

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %547, metadata !2807, metadata !DIExpression()), !dbg !2855
  %548 = icmp ult i64 %547, %536, !dbg !3268
  br i1 %548, label %549, label %551, !dbg !3271

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !3268
  store i8 39, i8* %550, align 1, !dbg !3268, !tbaa !1544
  br label %551, !dbg !3268

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %552, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2814, metadata !DIExpression()), !dbg !2855
  br label %553, !dbg !3272

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2947
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2855
  call void @llvm.dbg.value(metadata i8 %562, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %561, metadata !2807, metadata !DIExpression()), !dbg !2855
  %563 = icmp ult i64 %561, %554, !dbg !3273
  br i1 %563, label %564, label %566, !dbg !3276

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !3273
  store i8 %556, i8* %565, align 1, !dbg !3273, !tbaa !1544
  br label %566, !dbg !3273

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %567, metadata !2807, metadata !DIExpression()), !dbg !2855
  %568 = and i8 %555, 1, !dbg !3277
  %569 = icmp eq i8 %568, 0, !dbg !3277
  %570 = select i1 %569, i8 0, i8 %129, !dbg !3279
  call void @llvm.dbg.value(metadata i8 %570, metadata !2816, metadata !DIExpression()), !dbg !2855
  br label %571, !dbg !3280

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !3234
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2855
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2872
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !3225
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2876
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2855
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2878
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %578, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %577, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %576, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %575, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %574, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %573, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %572, metadata !2806, metadata !DIExpression()), !dbg !2855
  %580 = add i64 %572, 1, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %580, metadata !2806, metadata !DIExpression()), !dbg !2855
  br label %122, !dbg !3282, !llvm.loop !3283

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %127, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %127, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %128, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %128, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %129, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %129, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %127, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %127, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %128, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %128, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %129, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %129, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %127, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %127, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %128, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %128, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %129, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %129, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %127, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %127, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %128, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %128, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %129, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %129, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %582, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %582, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %127, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %127, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %128, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %128, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %129, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %129, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %582, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %582, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %127, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %127, metadata !2814, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %128, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %128, metadata !2815, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %129, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %129, metadata !2816, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  %583 = icmp eq i64 %124, 0, !dbg !3285
  %584 = and i1 %110, %583, !dbg !3287
  %585 = xor i1 %584, true, !dbg !3287
  %586 = or i1 %109, %585, !dbg !3287
  br i1 %586, label %587, label %629, !dbg !3287

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !3288
  %589 = xor i1 %588, true, !dbg !3288
  %590 = and i8 %128, 1, !dbg !3290
  %591 = icmp eq i8 %590, 0, !dbg !3290
  %592 = or i1 %591, %589, !dbg !3288
  br i1 %592, label %602, label %593, !dbg !3288

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !3291
  %595 = icmp eq i8 %594, 0, !dbg !3291
  br i1 %595, label %598, label %596, !dbg !3294

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %582, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %582, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %582, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %582, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %94, metadata !2804, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %95, metadata !2805, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %125, metadata !2808, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %582, metadata !2800, metadata !DIExpression()), !dbg !2855
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3295
  br label %645, !dbg !3296

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !3297
  %600 = icmp ne i64 %125, 0, !dbg !3299
  %601 = and i1 %600, %599, !dbg !3300
  br i1 %601, label %26, label %602, !dbg !3300

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %130, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  %603 = icmp ne i8* %97, null, !dbg !3301
  %604 = and i1 %603, %109, !dbg !3303
  br i1 %604, label %605, label %620, !dbg !3303

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %124, metadata !2807, metadata !DIExpression()), !dbg !2855
  %606 = load i8, i8* %97, align 1, !dbg !3304, !tbaa !1544
  %607 = icmp eq i8 %606, 0, !dbg !3307
  br i1 %607, label %620, label %608, !dbg !3307

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2809, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %611, metadata !2807, metadata !DIExpression()), !dbg !2855
  %612 = icmp ult i64 %611, %130, !dbg !3308
  br i1 %612, label %613, label %615, !dbg !3311

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !3308
  store i8 %609, i8* %614, align 1, !dbg !3308, !tbaa !1544
  br label %615, !dbg !3308

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %616, metadata !2807, metadata !DIExpression()), !dbg !2855
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %617, metadata !2809, metadata !DIExpression()), !dbg !2855
  %618 = load i8, i8* %617, align 1, !dbg !3304, !tbaa !1544
  %619 = icmp eq i8 %618, 0, !dbg !3307
  br i1 %619, label %620, label %608, !dbg !3307, !llvm.loop !3313

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2909
  call void @llvm.dbg.value(metadata i64 %621, metadata !2807, metadata !DIExpression()), !dbg !2855
  %622 = icmp ult i64 %621, %130, !dbg !3315
  br i1 %622, label %623, label %645, !dbg !3317

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3318
  store i8 0, i8* %624, align 1, !dbg !3319, !tbaa !1544
  br label %645, !dbg !3318

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %630, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.label(metadata !2854), !dbg !3320
  %627 = icmp eq i8 %101, 0, !dbg !3321
  %628 = select i1 %627, i32 2, i32 4, !dbg !3321
  br label %635, !dbg !3321

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2798, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %630, metadata !2800, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.label(metadata !2854), !dbg !3320
  %632 = icmp eq i32 %93, 2, !dbg !3323
  %633 = icmp eq i8 %101, 0, !dbg !3321
  %634 = select i1 %633, i32 2, i32 4, !dbg !3321
  br i1 %632, label %635, label %639, !dbg !3321

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !3321

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2801, metadata !DIExpression()), !dbg !2855
  %643 = and i32 %5, -3, !dbg !3324
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !3325
  br label %645, !dbg !3326

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !3327
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3328 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3332, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 %1, metadata !3333, metadata !DIExpression()), !dbg !3336
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #21, !dbg !3337
  call void @llvm.dbg.value(metadata i8* %3, metadata !3334, metadata !DIExpression()), !dbg !3336
  %4 = icmp eq i8* %3, %0, !dbg !3338
  br i1 %4, label %5, label %71, !dbg !3340

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #21, !dbg !3341
  call void @llvm.dbg.value(metadata i8* %6, metadata !3335, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i8* %6, metadata !3342, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* undef, metadata !3348, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 85, metadata !3349, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 84, metadata !3350, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 70, metadata !3351, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 45, metadata !3352, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 56, metadata !3353, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 0, metadata !3354, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 0, metadata !3355, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 0, metadata !3356, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 0, metadata !3357, metadata !DIExpression()), !dbg !3358
  %7 = load i8, i8* %6, align 1, !dbg !3361, !tbaa !1544
  %8 = and i8 %7, -33, !dbg !3361
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3361

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3363, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* undef, metadata !3368, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 84, metadata !3369, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 70, metadata !3370, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 45, metadata !3371, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 56, metadata !3372, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 0, metadata !3373, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 0, metadata !3374, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 0, metadata !3375, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 0, metadata !3376, metadata !DIExpression()), !dbg !3377
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3381
  %11 = load i8, i8* %10, align 1, !dbg !3381, !tbaa !1544
  %12 = and i8 %11, -33, !dbg !3381
  %13 = icmp eq i8 %12, 84, !dbg !3381
  br i1 %13, label %14, label %68, !dbg !3381

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3383, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i8* undef, metadata !3388, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i8 70, metadata !3389, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i8 45, metadata !3390, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i8 56, metadata !3391, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i8 0, metadata !3392, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i8 0, metadata !3393, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i8 0, metadata !3394, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i8 0, metadata !3395, metadata !DIExpression()), !dbg !3396
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3400
  %16 = load i8, i8* %15, align 1, !dbg !3400, !tbaa !1544
  %17 = and i8 %16, -33, !dbg !3400
  %18 = icmp eq i8 %17, 70, !dbg !3400
  br i1 %18, label %19, label %68, !dbg !3400

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3402, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* undef, metadata !3407, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8 45, metadata !3408, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8 56, metadata !3409, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8 0, metadata !3410, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8 0, metadata !3411, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8 0, metadata !3412, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8 0, metadata !3413, metadata !DIExpression()), !dbg !3414
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3418
  %21 = load i8, i8* %20, align 1, !dbg !3418, !tbaa !1544
  %22 = icmp eq i8 %21, 45, !dbg !3418
  br i1 %22, label %23, label %68, !dbg !3420

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3421, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8* undef, metadata !3426, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8 56, metadata !3427, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8 0, metadata !3428, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8 0, metadata !3429, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8 0, metadata !3430, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8 0, metadata !3431, metadata !DIExpression()), !dbg !3432
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3436
  %25 = load i8, i8* %24, align 1, !dbg !3436, !tbaa !1544
  %26 = icmp eq i8 %25, 56, !dbg !3436
  br i1 %26, label %27, label %68, !dbg !3438

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3439, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8* undef, metadata !3444, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8 0, metadata !3445, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8 0, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8 0, metadata !3447, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8 0, metadata !3448, metadata !DIExpression()), !dbg !3449
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3453
  %29 = load i8, i8* %28, align 1, !dbg !3453, !tbaa !1544
  %30 = icmp eq i8 %29, 0, !dbg !3453
  br i1 %30, label %31, label %68, !dbg !3455

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3456, !tbaa !1544
  %33 = icmp eq i8 %32, 96, !dbg !3457
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.123, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.124, i64 0, i64 0), !dbg !3456
  br label %71, !dbg !3458

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3363, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8* undef, metadata !3368, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8 66, metadata !3369, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8 49, metadata !3370, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8 56, metadata !3371, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8 48, metadata !3372, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8 51, metadata !3373, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8 48, metadata !3374, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8 0, metadata !3375, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8 0, metadata !3376, metadata !DIExpression()), !dbg !3459
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3463
  %37 = load i8, i8* %36, align 1, !dbg !3463, !tbaa !1544
  %38 = and i8 %37, -33, !dbg !3463
  %39 = icmp eq i8 %38, 66, !dbg !3463
  br i1 %39, label %40, label %68, !dbg !3463

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3383, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8* undef, metadata !3388, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8 49, metadata !3389, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8 56, metadata !3390, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8 48, metadata !3391, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8 51, metadata !3392, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8 48, metadata !3393, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8 0, metadata !3394, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8 0, metadata !3395, metadata !DIExpression()), !dbg !3464
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3466
  %42 = load i8, i8* %41, align 1, !dbg !3466, !tbaa !1544
  %43 = icmp eq i8 %42, 49, !dbg !3466
  br i1 %43, label %44, label %68, !dbg !3467

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3402, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8* undef, metadata !3407, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8 56, metadata !3408, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8 48, metadata !3409, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8 51, metadata !3410, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8 48, metadata !3411, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8 0, metadata !3412, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8 0, metadata !3413, metadata !DIExpression()), !dbg !3468
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3470
  %46 = load i8, i8* %45, align 1, !dbg !3470, !tbaa !1544
  %47 = icmp eq i8 %46, 56, !dbg !3470
  br i1 %47, label %48, label %68, !dbg !3471

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3421, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8* undef, metadata !3426, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8 48, metadata !3427, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8 51, metadata !3428, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8 48, metadata !3429, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8 0, metadata !3430, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8 0, metadata !3431, metadata !DIExpression()), !dbg !3472
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3474
  %50 = load i8, i8* %49, align 1, !dbg !3474, !tbaa !1544
  %51 = icmp eq i8 %50, 48, !dbg !3474
  br i1 %51, label %52, label %68, !dbg !3475

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3439, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8* undef, metadata !3444, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 51, metadata !3445, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 48, metadata !3446, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 0, metadata !3447, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 0, metadata !3448, metadata !DIExpression()), !dbg !3476
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3478
  %54 = load i8, i8* %53, align 1, !dbg !3478, !tbaa !1544
  %55 = icmp eq i8 %54, 51, !dbg !3478
  br i1 %55, label %56, label %68, !dbg !3479

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3480, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8* undef, metadata !3485, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8 48, metadata !3486, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8 0, metadata !3487, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8 0, metadata !3488, metadata !DIExpression()), !dbg !3489
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3493
  %58 = load i8, i8* %57, align 1, !dbg !3493, !tbaa !1544
  %59 = icmp eq i8 %58, 48, !dbg !3493
  br i1 %59, label %60, label %68, !dbg !3495

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3496, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* undef, metadata !3501, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 0, metadata !3502, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 0, metadata !3503, metadata !DIExpression()), !dbg !3504
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3508
  %62 = load i8, i8* %61, align 1, !dbg !3508, !tbaa !1544
  %63 = icmp eq i8 %62, 0, !dbg !3508
  br i1 %63, label %64, label %68, !dbg !3510

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3511, !tbaa !1544
  %66 = icmp eq i8 %65, 96, !dbg !3512
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.125, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.126, i64 0, i64 0), !dbg !3511
  br label %71, !dbg !3513

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3514
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), !dbg !3515
  br label %71, !dbg !3516

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3336
  ret i8* %72, !dbg !3517
}

; Function Attrs: nounwind
declare !dbg !494 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !498 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3518 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3522, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 %1, metadata !3523, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3524, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8* %0, metadata !3526, metadata !DIExpression()) #21, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %1, metadata !3531, metadata !DIExpression()) #21, !dbg !3539
  call void @llvm.dbg.value(metadata i64* null, metadata !3532, metadata !DIExpression()) #21, !dbg !3539
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3533, metadata !DIExpression()) #21, !dbg !3539
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3541
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3541
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3534, metadata !DIExpression()) #21, !dbg !3539
  %6 = tail call i32* @__errno_location() #26, !dbg !3542
  %7 = load i32, i32* %6, align 4, !dbg !3542, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %7, metadata !3535, metadata !DIExpression()) #21, !dbg !3539
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3543
  %9 = load i32, i32* %8, align 4, !dbg !3543, !tbaa !2740
  %10 = or i32 %9, 1, !dbg !3544
  call void @llvm.dbg.value(metadata i32 %10, metadata !3536, metadata !DIExpression()) #21, !dbg !3539
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3545
  %12 = load i32, i32* %11, align 8, !dbg !3545, !tbaa !2689
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3546
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3547
  %15 = load i8*, i8** %14, align 8, !dbg !3547, !tbaa !2763
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3548
  %17 = load i8*, i8** %16, align 8, !dbg !3548, !tbaa !2766
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #21, !dbg !3549
  %19 = add i64 %18, 1, !dbg !3550
  call void @llvm.dbg.value(metadata i64 %19, metadata !3537, metadata !DIExpression()) #21, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %19, metadata !3551, metadata !DIExpression()) #21, !dbg !3556
  %20 = tail call noalias i8* @xmalloc(i64 %19) #21, !dbg !3558
  call void @llvm.dbg.value(metadata i8* %20, metadata !3538, metadata !DIExpression()) #21, !dbg !3539
  %21 = load i32, i32* %11, align 8, !dbg !3559, !tbaa !2689
  %22 = load i8*, i8** %14, align 8, !dbg !3560, !tbaa !2763
  %23 = load i8*, i8** %16, align 8, !dbg !3561, !tbaa !2766
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #21, !dbg !3562
  store i32 %7, i32* %6, align 4, !dbg !3563, !tbaa !1575
  ret i8* %20, !dbg !3564
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3527 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3526, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %1, metadata !3531, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64* %2, metadata !3532, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3533, metadata !DIExpression()), !dbg !3565
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3566
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3534, metadata !DIExpression()), !dbg !3565
  %7 = tail call i32* @__errno_location() #26, !dbg !3567
  %8 = load i32, i32* %7, align 4, !dbg !3567, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %8, metadata !3535, metadata !DIExpression()), !dbg !3565
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3568
  %10 = load i32, i32* %9, align 4, !dbg !3568, !tbaa !2740
  %11 = icmp ne i64* %2, null, !dbg !3569
  %12 = xor i1 %11, true, !dbg !3569
  %13 = zext i1 %12 to i32, !dbg !3569
  %14 = or i32 %10, %13, !dbg !3570
  call void @llvm.dbg.value(metadata i32 %14, metadata !3536, metadata !DIExpression()), !dbg !3565
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3571
  %16 = load i32, i32* %15, align 8, !dbg !3571, !tbaa !2689
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3572
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3573
  %19 = load i8*, i8** %18, align 8, !dbg !3573, !tbaa !2763
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3574
  %21 = load i8*, i8** %20, align 8, !dbg !3574, !tbaa !2766
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3575
  %23 = add i64 %22, 1, !dbg !3576
  call void @llvm.dbg.value(metadata i64 %23, metadata !3537, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %23, metadata !3551, metadata !DIExpression()) #21, !dbg !3577
  %24 = tail call noalias i8* @xmalloc(i64 %23) #21, !dbg !3579
  call void @llvm.dbg.value(metadata i8* %24, metadata !3538, metadata !DIExpression()), !dbg !3565
  %25 = load i32, i32* %15, align 8, !dbg !3580, !tbaa !2689
  %26 = load i8*, i8** %18, align 8, !dbg !3581, !tbaa !2763
  %27 = load i8*, i8** %20, align 8, !dbg !3582, !tbaa !2766
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3583
  store i32 %8, i32* %7, align 4, !dbg !3584, !tbaa !1575
  br i1 %11, label %29, label %30, !dbg !3585

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3586, !tbaa !1535
  br label %30, !dbg !3588

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3589
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3590 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3594, !tbaa !1396
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3592, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i32 1, metadata !3593, metadata !DIExpression()), !dbg !3595
  %2 = load i32, i32* @nslots, align 4, !dbg !3596, !tbaa !1575
  %3 = icmp sgt i32 %2, 1, !dbg !3599
  br i1 %3, label %4, label %12, !dbg !3600

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3593, metadata !DIExpression()), !dbg !3595
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3601
  %7 = load i8*, i8** %6, align 8, !dbg !3601, !tbaa !3602
  tail call void @free(i8* %7) #21, !dbg !3604
  %8 = add nuw nsw i64 %5, 1, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %8, metadata !3593, metadata !DIExpression()), !dbg !3595
  %9 = load i32, i32* @nslots, align 4, !dbg !3596, !tbaa !1575
  %10 = sext i32 %9 to i64, !dbg !3599
  %11 = icmp slt i64 %8, %10, !dbg !3599
  br i1 %11, label %4, label %12, !dbg !3600, !llvm.loop !3606

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3608
  %14 = load i8*, i8** %13, align 8, !dbg !3608, !tbaa !3602
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3610
  br i1 %15, label %17, label %16, !dbg !3611

16:                                               ; preds = %12
  tail call void @free(i8* %14) #21, !dbg !3612
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3614, !tbaa !3615
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3616, !tbaa !3602
  br label %17, !dbg !3617

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3618
  br i1 %18, label %21, label %19, !dbg !3620

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3621
  tail call void @free(i8* %20) #21, !dbg !3623
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3624, !tbaa !1396
  br label %21, !dbg !3625

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3626, !tbaa !1575
  ret void, !dbg !3627
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3628 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3630, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i8* %1, metadata !3631, metadata !DIExpression()), !dbg !3632
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3633
  ret i8* %3, !dbg !3634
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3635 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3639, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i8* %1, metadata !3640, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %2, metadata !3641, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3642, metadata !DIExpression()), !dbg !3654
  %5 = tail call i32* @__errno_location() #26, !dbg !3655
  %6 = load i32, i32* %5, align 4, !dbg !3655, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %6, metadata !3643, metadata !DIExpression()), !dbg !3654
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3656, !tbaa !1396
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3644, metadata !DIExpression()), !dbg !3654
  %8 = icmp slt i32 %0, 0, !dbg !3657
  br i1 %8, label %9, label %10, !dbg !3659

9:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3660
  unreachable, !dbg !3660

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3661, !tbaa !1575
  %12 = icmp sgt i32 %11, %0, !dbg !3662
  br i1 %12, label %34, label %13, !dbg !3663

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3664
  call void @llvm.dbg.value(metadata i1 %14, metadata !3645, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3648, metadata !DIExpression()), !dbg !3665
  %15 = icmp eq i32 %0, 2147483647, !dbg !3666
  br i1 %15, label %16, label %17, !dbg !3668

16:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3669
  unreachable, !dbg !3669

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3670
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3670
  %20 = add nuw nsw i32 %0, 1, !dbg !3671
  %21 = sext i32 %20 to i64, !dbg !3672
  %22 = shl nuw nsw i64 %21, 4, !dbg !3673
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #21, !dbg !3674
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3674
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3644, metadata !DIExpression()), !dbg !3654
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3675, !tbaa !1396
  br i1 %14, label %25, label %26, !dbg !3676

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3677, !tbaa.struct !3679
  br label %26, !dbg !3680

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3681, !tbaa !1575
  %28 = sext i32 %27 to i64, !dbg !3682
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3682
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3683
  %31 = sub nsw i32 %20, %27, !dbg !3684
  %32 = sext i32 %31 to i64, !dbg !3685
  %33 = shl nsw i64 %32, 4, !dbg !3686
  call void @llvm.dbg.value(metadata i8* %30, metadata !3087, metadata !DIExpression()) #21, !dbg !3687
  call void @llvm.dbg.value(metadata i32 0, metadata !3090, metadata !DIExpression()) #21, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %33, metadata !3091, metadata !DIExpression()) #21, !dbg !3687
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #21, !dbg !3689
  store i32 %20, i32* @nslots, align 4, !dbg !3690, !tbaa !1575
  br label %34, !dbg !3691

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3654
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3644, metadata !DIExpression()), !dbg !3654
  %36 = zext i32 %0 to i64, !dbg !3692
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3693
  %38 = load i64, i64* %37, align 8, !dbg !3693, !tbaa !3615
  call void @llvm.dbg.value(metadata i64 %38, metadata !3649, metadata !DIExpression()), !dbg !3694
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3695
  %40 = load i8*, i8** %39, align 8, !dbg !3695, !tbaa !3602
  call void @llvm.dbg.value(metadata i8* %40, metadata !3651, metadata !DIExpression()), !dbg !3694
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3696
  %42 = load i32, i32* %41, align 4, !dbg !3696, !tbaa !2740
  %43 = or i32 %42, 1, !dbg !3697
  call void @llvm.dbg.value(metadata i32 %43, metadata !3652, metadata !DIExpression()), !dbg !3694
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3698
  %45 = load i32, i32* %44, align 8, !dbg !3698, !tbaa !2689
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3699
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3700
  %48 = load i8*, i8** %47, align 8, !dbg !3700, !tbaa !2763
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3701
  %50 = load i8*, i8** %49, align 8, !dbg !3701, !tbaa !2766
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %51, metadata !3653, metadata !DIExpression()), !dbg !3694
  %52 = icmp ugt i64 %38, %51, !dbg !3703
  br i1 %52, label %63, label %53, !dbg !3705

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3706
  call void @llvm.dbg.value(metadata i64 %54, metadata !3649, metadata !DIExpression()), !dbg !3694
  store i64 %54, i64* %37, align 8, !dbg !3708, !tbaa !3615
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3709
  br i1 %55, label %57, label %56, !dbg !3711

56:                                               ; preds = %53
  tail call void @free(i8* %40) #21, !dbg !3712
  br label %57, !dbg !3712

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3551, metadata !DIExpression()) #21, !dbg !3713
  %58 = tail call noalias i8* @xmalloc(i64 %54) #21, !dbg !3715
  call void @llvm.dbg.value(metadata i8* %58, metadata !3651, metadata !DIExpression()), !dbg !3694
  store i8* %58, i8** %39, align 8, !dbg !3716, !tbaa !3602
  %59 = load i32, i32* %44, align 8, !dbg !3717, !tbaa !2689
  %60 = load i8*, i8** %47, align 8, !dbg !3718, !tbaa !2763
  %61 = load i8*, i8** %49, align 8, !dbg !3719, !tbaa !2766
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3720
  br label %63, !dbg !3721

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3694
  call void @llvm.dbg.value(metadata i8* %64, metadata !3651, metadata !DIExpression()), !dbg !3694
  store i32 %6, i32* %5, align 4, !dbg !3722, !tbaa !1575
  ret i8* %64, !dbg !3723
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3724 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3728, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i8* %1, metadata !3729, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i64 %2, metadata !3730, metadata !DIExpression()), !dbg !3731
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3732
  ret i8* %4, !dbg !3733
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3734 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3736, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i32 0, metadata !3630, metadata !DIExpression()) #21, !dbg !3738
  call void @llvm.dbg.value(metadata i8* %0, metadata !3631, metadata !DIExpression()) #21, !dbg !3738
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #21, !dbg !3740
  ret i8* %2, !dbg !3741
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3742 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3746, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %1, metadata !3747, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i32 0, metadata !3728, metadata !DIExpression()) #21, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %0, metadata !3729, metadata !DIExpression()) #21, !dbg !3749
  call void @llvm.dbg.value(metadata i64 %1, metadata !3730, metadata !DIExpression()) #21, !dbg !3749
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #21, !dbg !3751
  ret i8* %3, !dbg !3752
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3753 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3755, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i32 %1, metadata !3756, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i8* %2, metadata !3757, metadata !DIExpression()), !dbg !3759
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3760
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3760
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3758, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i32 %1, metadata !3762, metadata !DIExpression()) #21, !dbg !3768
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3767, metadata !DIExpression()) #21, !dbg !3770
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #21, !dbg !3770, !alias.scope !3771
  %6 = icmp eq i32 %1, 10, !dbg !3774
  br i1 %6, label %7, label %8, !dbg !3776

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3777, !noalias !3771
  unreachable, !dbg !3777

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3778
  store i32 %1, i32* %9, align 8, !dbg !3779, !tbaa !2689, !alias.scope !3771
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3780
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3781
  ret i8* %10, !dbg !3782
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3783 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3787, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i32 %1, metadata !3788, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i8* %2, metadata !3789, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i64 %3, metadata !3790, metadata !DIExpression()), !dbg !3792
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3793
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #21, !dbg !3793
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3791, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i32 %1, metadata !3762, metadata !DIExpression()) #21, !dbg !3795
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3767, metadata !DIExpression()) #21, !dbg !3797
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #21, !dbg !3797, !alias.scope !3798
  %7 = icmp eq i32 %1, 10, !dbg !3801
  br i1 %7, label %8, label %9, !dbg !3802

8:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3803, !noalias !3798
  unreachable, !dbg !3803

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3804
  store i32 %1, i32* %10, align 8, !dbg !3805, !tbaa !2689, !alias.scope !3798
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3806
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #21, !dbg !3807
  ret i8* %11, !dbg !3808
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3809 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3767, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3758, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %0, metadata !3811, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i8* %1, metadata !3812, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i32 0, metadata !3755, metadata !DIExpression()) #21, !dbg !3818
  call void @llvm.dbg.value(metadata i32 %0, metadata !3756, metadata !DIExpression()) #21, !dbg !3818
  call void @llvm.dbg.value(metadata i8* %1, metadata !3757, metadata !DIExpression()) #21, !dbg !3818
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3819
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #21, !dbg !3819
  call void @llvm.dbg.value(metadata i32 %0, metadata !3762, metadata !DIExpression()) #21, !dbg !3820
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #21, !dbg !3813, !alias.scope !3821
  %5 = icmp eq i32 %0, 10, !dbg !3824
  br i1 %5, label %6, label %7, !dbg !3825

6:                                                ; preds = %2
  tail call void @abort() #24, !dbg !3826, !noalias !3821
  unreachable, !dbg !3826

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3827
  store i32 %0, i32* %8, align 8, !dbg !3828, !tbaa !2689, !alias.scope !3821
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #21, !dbg !3829
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #21, !dbg !3830
  ret i8* %9, !dbg !3831
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3832 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3767, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3791, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i32 %0, metadata !3836, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i8* %1, metadata !3837, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i64 %2, metadata !3838, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i32 0, metadata !3787, metadata !DIExpression()) #21, !dbg !3844
  call void @llvm.dbg.value(metadata i32 %0, metadata !3788, metadata !DIExpression()) #21, !dbg !3844
  call void @llvm.dbg.value(metadata i8* %1, metadata !3789, metadata !DIExpression()) #21, !dbg !3844
  call void @llvm.dbg.value(metadata i64 %2, metadata !3790, metadata !DIExpression()) #21, !dbg !3844
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3845
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3845
  call void @llvm.dbg.value(metadata i32 %0, metadata !3762, metadata !DIExpression()) #21, !dbg !3846
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #21, !dbg !3839, !alias.scope !3847
  %6 = icmp eq i32 %0, 10, !dbg !3850
  br i1 %6, label %7, label %8, !dbg !3851

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3852, !noalias !3847
  unreachable, !dbg !3852

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3853
  store i32 %0, i32* %9, align 8, !dbg !3854, !tbaa !2689, !alias.scope !3847
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #21, !dbg !3855
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3856
  ret i8* %10, !dbg !3857
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3858 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3862, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i64 %1, metadata !3863, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i8 %2, metadata !3864, metadata !DIExpression()), !dbg !3866
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3867
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3867
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3865, metadata !DIExpression()), !dbg !3868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3869, !tbaa.struct !3870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2707, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i8 %2, metadata !2708, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i32 1, metadata !2709, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i8 %2, metadata !2710, metadata !DIExpression()), !dbg !3871
  %6 = lshr i8 %2, 5, !dbg !3873
  %7 = zext i8 %6 to i64, !dbg !3873
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3874
  call void @llvm.dbg.value(metadata i32* %8, metadata !2711, metadata !DIExpression()), !dbg !3871
  %9 = and i8 %2, 31, !dbg !3875
  %10 = zext i8 %9 to i32, !dbg !3875
  call void @llvm.dbg.value(metadata i32 %10, metadata !2713, metadata !DIExpression()), !dbg !3871
  %11 = load i32, i32* %8, align 4, !dbg !3876, !tbaa !1575
  %12 = lshr i32 %11, %10, !dbg !3877
  %13 = and i32 %12, 1, !dbg !3878
  call void @llvm.dbg.value(metadata i32 %13, metadata !2714, metadata !DIExpression()), !dbg !3871
  %14 = xor i32 %13, 1, !dbg !3879
  %15 = shl i32 %14, %10, !dbg !3880
  %16 = xor i32 %15, %11, !dbg !3881
  store i32 %16, i32* %8, align 4, !dbg !3881, !tbaa !1575
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3882
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3883
  ret i8* %17, !dbg !3884
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3885 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3865, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i8* %0, metadata !3889, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8 %1, metadata !3890, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8* %0, metadata !3862, metadata !DIExpression()) #21, !dbg !3894
  call void @llvm.dbg.value(metadata i64 -1, metadata !3863, metadata !DIExpression()) #21, !dbg !3894
  call void @llvm.dbg.value(metadata i8 %1, metadata !3864, metadata !DIExpression()) #21, !dbg !3894
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3895
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #21, !dbg !3895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #21, !dbg !3896, !tbaa.struct !3870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2707, metadata !DIExpression()) #21, !dbg !3897
  call void @llvm.dbg.value(metadata i8 %1, metadata !2708, metadata !DIExpression()) #21, !dbg !3897
  call void @llvm.dbg.value(metadata i32 1, metadata !2709, metadata !DIExpression()) #21, !dbg !3897
  call void @llvm.dbg.value(metadata i8 %1, metadata !2710, metadata !DIExpression()) #21, !dbg !3897
  %5 = lshr i8 %1, 5, !dbg !3899
  %6 = zext i8 %5 to i64, !dbg !3899
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3900
  call void @llvm.dbg.value(metadata i32* %7, metadata !2711, metadata !DIExpression()) #21, !dbg !3897
  %8 = and i8 %1, 31, !dbg !3901
  %9 = zext i8 %8 to i32, !dbg !3901
  call void @llvm.dbg.value(metadata i32 %9, metadata !2713, metadata !DIExpression()) #21, !dbg !3897
  %10 = load i32, i32* %7, align 4, !dbg !3902, !tbaa !1575
  %11 = lshr i32 %10, %9, !dbg !3903
  %12 = and i32 %11, 1, !dbg !3904
  call void @llvm.dbg.value(metadata i32 %12, metadata !2714, metadata !DIExpression()) #21, !dbg !3897
  %13 = xor i32 %12, 1, !dbg !3905
  %14 = shl i32 %13, %9, !dbg !3906
  %15 = xor i32 %14, %10, !dbg !3907
  store i32 %15, i32* %7, align 4, !dbg !3907, !tbaa !1575
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #21, !dbg !3908
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #21, !dbg !3909
  ret i8* %16, !dbg !3910
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3911 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3865, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8* %0, metadata !3913, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i8* %0, metadata !3889, metadata !DIExpression()) #21, !dbg !3918
  call void @llvm.dbg.value(metadata i8 58, metadata !3890, metadata !DIExpression()) #21, !dbg !3918
  call void @llvm.dbg.value(metadata i8* %0, metadata !3862, metadata !DIExpression()) #21, !dbg !3919
  call void @llvm.dbg.value(metadata i64 -1, metadata !3863, metadata !DIExpression()) #21, !dbg !3919
  call void @llvm.dbg.value(metadata i8 58, metadata !3864, metadata !DIExpression()) #21, !dbg !3919
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3920
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #21, !dbg !3920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #21, !dbg !3921, !tbaa.struct !3870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2707, metadata !DIExpression()) #21, !dbg !3922
  call void @llvm.dbg.value(metadata i8 58, metadata !2708, metadata !DIExpression()) #21, !dbg !3922
  call void @llvm.dbg.value(metadata i32 1, metadata !2709, metadata !DIExpression()) #21, !dbg !3922
  call void @llvm.dbg.value(metadata i8 58, metadata !2710, metadata !DIExpression()) #21, !dbg !3922
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3924
  call void @llvm.dbg.value(metadata i32* %4, metadata !2711, metadata !DIExpression()) #21, !dbg !3922
  call void @llvm.dbg.value(metadata i32 26, metadata !2713, metadata !DIExpression()) #21, !dbg !3922
  %5 = load i32, i32* %4, align 4, !dbg !3925, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %5, metadata !2714, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #21, !dbg !3922
  %6 = or i32 %5, 67108864, !dbg !3926
  store i32 %6, i32* %4, align 4, !dbg !3926, !tbaa !1575
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #21, !dbg !3927
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #21, !dbg !3928
  ret i8* %7, !dbg !3929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3930 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3865, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i8* %0, metadata !3932, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i64 %1, metadata !3933, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i8* %0, metadata !3862, metadata !DIExpression()) #21, !dbg !3937
  call void @llvm.dbg.value(metadata i64 %1, metadata !3863, metadata !DIExpression()) #21, !dbg !3937
  call void @llvm.dbg.value(metadata i8 58, metadata !3864, metadata !DIExpression()) #21, !dbg !3937
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3938
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #21, !dbg !3938
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #21, !dbg !3939, !tbaa.struct !3870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2707, metadata !DIExpression()) #21, !dbg !3940
  call void @llvm.dbg.value(metadata i8 58, metadata !2708, metadata !DIExpression()) #21, !dbg !3940
  call void @llvm.dbg.value(metadata i32 1, metadata !2709, metadata !DIExpression()) #21, !dbg !3940
  call void @llvm.dbg.value(metadata i8 58, metadata !2710, metadata !DIExpression()) #21, !dbg !3940
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3942
  call void @llvm.dbg.value(metadata i32* %5, metadata !2711, metadata !DIExpression()) #21, !dbg !3940
  call void @llvm.dbg.value(metadata i32 26, metadata !2713, metadata !DIExpression()) #21, !dbg !3940
  %6 = load i32, i32* %5, align 4, !dbg !3943, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %6, metadata !2714, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #21, !dbg !3940
  %7 = or i32 %6, 67108864, !dbg !3944
  store i32 %7, i32* %5, align 4, !dbg !3944, !tbaa !1575
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #21, !dbg !3945
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #21, !dbg !3946
  ret i8* %8, !dbg !3947
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3948 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3767, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3954
  call void @llvm.dbg.value(metadata i32 %0, metadata !3950, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 %1, metadata !3951, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i8* %2, metadata !3952, metadata !DIExpression()), !dbg !3956
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3957
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #21, !dbg !3957
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3953, metadata !DIExpression()), !dbg !3958
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3959
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3959
  call void @llvm.dbg.value(metadata i32 %1, metadata !3762, metadata !DIExpression()) #21, !dbg !3960
  call void @llvm.dbg.value(metadata i32 0, metadata !3767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3960
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3954, !alias.scope !3961
  %8 = icmp eq i32 %1, 10, !dbg !3964
  br i1 %8, label %9, label %10, !dbg !3965

9:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3966, !noalias !3961
  unreachable, !dbg !3966

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3960
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3959
  store i32 %1, i32* %11, align 8, !dbg !3959, !tbaa.struct !3870
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3959
  %13 = bitcast i32* %12 to i8*, !dbg !3959
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3959, !tbaa.struct !3870
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3959
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2707, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i8 58, metadata !2708, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i32 1, metadata !2709, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i8 58, metadata !2710, metadata !DIExpression()), !dbg !3967
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3969
  call void @llvm.dbg.value(metadata i32* %14, metadata !2711, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i32 26, metadata !2713, metadata !DIExpression()), !dbg !3967
  %15 = load i32, i32* %14, align 4, !dbg !3970, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %15, metadata !2714, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3967
  %16 = or i32 %15, 67108864, !dbg !3971
  store i32 %16, i32* %14, align 4, !dbg !3971, !tbaa !1575
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3972
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #21, !dbg !3973
  ret i8* %17, !dbg !3974
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3975 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3983, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i32 %0, metadata !3979, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i8* %1, metadata !3980, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i8* %2, metadata !3981, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i8* %3, metadata !3982, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i32 %0, metadata !3988, metadata !DIExpression()) #21, !dbg !3996
  call void @llvm.dbg.value(metadata i8* %1, metadata !3989, metadata !DIExpression()) #21, !dbg !3996
  call void @llvm.dbg.value(metadata i8* %2, metadata !3990, metadata !DIExpression()) #21, !dbg !3996
  call void @llvm.dbg.value(metadata i8* %3, metadata !3991, metadata !DIExpression()) #21, !dbg !3996
  call void @llvm.dbg.value(metadata i64 -1, metadata !3992, metadata !DIExpression()) #21, !dbg !3996
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3997
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #21, !dbg !3997
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #21, !dbg !3998, !tbaa.struct !3870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2747, metadata !DIExpression()) #21, !dbg !3999
  call void @llvm.dbg.value(metadata i8* %1, metadata !2748, metadata !DIExpression()) #21, !dbg !3999
  call void @llvm.dbg.value(metadata i8* %2, metadata !2749, metadata !DIExpression()) #21, !dbg !3999
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2747, metadata !DIExpression()) #21, !dbg !3999
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4001
  store i32 10, i32* %7, align 8, !dbg !4002, !tbaa !2689
  %8 = icmp ne i8* %1, null, !dbg !4003
  %9 = icmp ne i8* %2, null, !dbg !4004
  %10 = and i1 %8, %9, !dbg !4005
  br i1 %10, label %12, label %11, !dbg !4005

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !4006
  unreachable, !dbg !4006

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4007
  store i8* %1, i8** %13, align 8, !dbg !4008, !tbaa !2763
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4009
  store i8* %2, i8** %14, align 8, !dbg !4010, !tbaa !2766
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #21, !dbg !4011
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #21, !dbg !4012
  ret i8* %15, !dbg !4013
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3984 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3988, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i8* %1, metadata !3989, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i8* %2, metadata !3990, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i8* %3, metadata !3991, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i64 %4, metadata !3992, metadata !DIExpression()), !dbg !4014
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4015
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #21, !dbg !4015
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3983, metadata !DIExpression()), !dbg !4016
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4017, !tbaa.struct !3870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2747, metadata !DIExpression()) #21, !dbg !4018
  call void @llvm.dbg.value(metadata i8* %1, metadata !2748, metadata !DIExpression()) #21, !dbg !4018
  call void @llvm.dbg.value(metadata i8* %2, metadata !2749, metadata !DIExpression()) #21, !dbg !4018
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2747, metadata !DIExpression()) #21, !dbg !4018
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4020
  store i32 10, i32* %8, align 8, !dbg !4021, !tbaa !2689
  %9 = icmp ne i8* %1, null, !dbg !4022
  %10 = icmp ne i8* %2, null, !dbg !4023
  %11 = and i1 %9, %10, !dbg !4024
  br i1 %11, label %13, label %12, !dbg !4024

12:                                               ; preds = %5
  tail call void @abort() #24, !dbg !4025
  unreachable, !dbg !4025

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4026
  store i8* %1, i8** %14, align 8, !dbg !4027, !tbaa !2763
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4028
  store i8* %2, i8** %15, align 8, !dbg !4029, !tbaa !2766
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4030
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #21, !dbg !4031
  ret i8* %16, !dbg !4032
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !4033 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3983, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i8* %0, metadata !4037, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i8* %1, metadata !4038, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i8* %2, metadata !4039, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i32 0, metadata !3979, metadata !DIExpression()) #21, !dbg !4044
  call void @llvm.dbg.value(metadata i8* %0, metadata !3980, metadata !DIExpression()) #21, !dbg !4044
  call void @llvm.dbg.value(metadata i8* %1, metadata !3981, metadata !DIExpression()) #21, !dbg !4044
  call void @llvm.dbg.value(metadata i8* %2, metadata !3982, metadata !DIExpression()) #21, !dbg !4044
  call void @llvm.dbg.value(metadata i32 0, metadata !3988, metadata !DIExpression()) #21, !dbg !4045
  call void @llvm.dbg.value(metadata i8* %0, metadata !3989, metadata !DIExpression()) #21, !dbg !4045
  call void @llvm.dbg.value(metadata i8* %1, metadata !3990, metadata !DIExpression()) #21, !dbg !4045
  call void @llvm.dbg.value(metadata i8* %2, metadata !3991, metadata !DIExpression()) #21, !dbg !4045
  call void @llvm.dbg.value(metadata i64 -1, metadata !3992, metadata !DIExpression()) #21, !dbg !4045
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4046
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #21, !dbg !4046
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #21, !dbg !4047, !tbaa.struct !3870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2747, metadata !DIExpression()) #21, !dbg !4048
  call void @llvm.dbg.value(metadata i8* %0, metadata !2748, metadata !DIExpression()) #21, !dbg !4048
  call void @llvm.dbg.value(metadata i8* %1, metadata !2749, metadata !DIExpression()) #21, !dbg !4048
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2747, metadata !DIExpression()) #21, !dbg !4048
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4050
  store i32 10, i32* %6, align 8, !dbg !4051, !tbaa !2689
  %7 = icmp ne i8* %0, null, !dbg !4052
  %8 = icmp ne i8* %1, null, !dbg !4053
  %9 = and i1 %7, %8, !dbg !4054
  br i1 %9, label %11, label %10, !dbg !4054

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !4055
  unreachable, !dbg !4055

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4056
  store i8* %0, i8** %12, align 8, !dbg !4057, !tbaa !2763
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4058
  store i8* %1, i8** %13, align 8, !dbg !4059, !tbaa !2766
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #21, !dbg !4060
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #21, !dbg !4061
  ret i8* %14, !dbg !4062
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !4063 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3983, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i8* %0, metadata !4067, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i8* %1, metadata !4068, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i8* %2, metadata !4069, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i64 %3, metadata !4070, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i32 0, metadata !3988, metadata !DIExpression()) #21, !dbg !4074
  call void @llvm.dbg.value(metadata i8* %0, metadata !3989, metadata !DIExpression()) #21, !dbg !4074
  call void @llvm.dbg.value(metadata i8* %1, metadata !3990, metadata !DIExpression()) #21, !dbg !4074
  call void @llvm.dbg.value(metadata i8* %2, metadata !3991, metadata !DIExpression()) #21, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %3, metadata !3992, metadata !DIExpression()) #21, !dbg !4074
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4075
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #21, !dbg !4075
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #21, !dbg !4076, !tbaa.struct !3870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2747, metadata !DIExpression()) #21, !dbg !4077
  call void @llvm.dbg.value(metadata i8* %0, metadata !2748, metadata !DIExpression()) #21, !dbg !4077
  call void @llvm.dbg.value(metadata i8* %1, metadata !2749, metadata !DIExpression()) #21, !dbg !4077
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2747, metadata !DIExpression()) #21, !dbg !4077
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4079
  store i32 10, i32* %7, align 8, !dbg !4080, !tbaa !2689
  %8 = icmp ne i8* %0, null, !dbg !4081
  %9 = icmp ne i8* %1, null, !dbg !4082
  %10 = and i1 %8, %9, !dbg !4083
  br i1 %10, label %12, label %11, !dbg !4083

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !4084
  unreachable, !dbg !4084

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4085
  store i8* %0, i8** %13, align 8, !dbg !4086, !tbaa !2763
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4087
  store i8* %1, i8** %14, align 8, !dbg !4088, !tbaa !2766
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #21, !dbg !4089
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #21, !dbg !4090
  ret i8* %15, !dbg !4091
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4092 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4096, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i8* %1, metadata !4097, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i64 %2, metadata !4098, metadata !DIExpression()), !dbg !4099
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4100
  ret i8* %4, !dbg !4101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4102 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4106, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i64 %1, metadata !4107, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 0, metadata !4096, metadata !DIExpression()) #21, !dbg !4109
  call void @llvm.dbg.value(metadata i8* %0, metadata !4097, metadata !DIExpression()) #21, !dbg !4109
  call void @llvm.dbg.value(metadata i64 %1, metadata !4098, metadata !DIExpression()) #21, !dbg !4109
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #21, !dbg !4111
  ret i8* %3, !dbg !4112
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4113 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4115, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i8* %1, metadata !4116, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i32 %0, metadata !4096, metadata !DIExpression()) #21, !dbg !4118
  call void @llvm.dbg.value(metadata i8* %1, metadata !4097, metadata !DIExpression()) #21, !dbg !4118
  call void @llvm.dbg.value(metadata i64 -1, metadata !4098, metadata !DIExpression()) #21, !dbg !4118
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #21, !dbg !4120
  ret i8* %3, !dbg !4121
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !4122 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4124, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i32 0, metadata !4115, metadata !DIExpression()) #21, !dbg !4126
  call void @llvm.dbg.value(metadata i8* %0, metadata !4116, metadata !DIExpression()) #21, !dbg !4126
  call void @llvm.dbg.value(metadata i32 0, metadata !4096, metadata !DIExpression()) #21, !dbg !4128
  call void @llvm.dbg.value(metadata i8* %0, metadata !4097, metadata !DIExpression()) #21, !dbg !4128
  call void @llvm.dbg.value(metadata i64 -1, metadata !4098, metadata !DIExpression()) #21, !dbg !4128
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #21, !dbg !4130
  ret i8* %2, !dbg !4131
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4132 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4138, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i8* %1, metadata !4139, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i8* %2, metadata !4140, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i8* %3, metadata !4141, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i8** %4, metadata !4142, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i64 %5, metadata !4143, metadata !DIExpression()), !dbg !4144
  %7 = icmp eq i8* %1, null, !dbg !4145
  br i1 %7, label %10, label %8, !dbg !4147

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.139, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #21, !dbg !4148
  br label %12, !dbg !4148

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.140, i64 0, i64 0), i8* %2, i8* %3) #21, !dbg !4149
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.141, i64 0, i64 0), i32 5) #21, !dbg !4150
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #21, !dbg !4150
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.142, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4151
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.143, i64 0, i64 0), i32 5) #21, !dbg !4152
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.144, i64 0, i64 0)) #21, !dbg !4152
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.142, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4153
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
  ], !dbg !4154

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.145, i64 0, i64 0), i32 5) #21, !dbg !4155
  %21 = load i8*, i8** %4, align 8, !dbg !4155, !tbaa !1396
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #21, !dbg !4155
  br label %147, !dbg !4157

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.146, i64 0, i64 0), i32 5) #21, !dbg !4158
  %25 = load i8*, i8** %4, align 8, !dbg !4158, !tbaa !1396
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4158
  %27 = load i8*, i8** %26, align 8, !dbg !4158, !tbaa !1396
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #21, !dbg !4158
  br label %147, !dbg !4159

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.147, i64 0, i64 0), i32 5) #21, !dbg !4160
  %31 = load i8*, i8** %4, align 8, !dbg !4160, !tbaa !1396
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4160
  %33 = load i8*, i8** %32, align 8, !dbg !4160, !tbaa !1396
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4160
  %35 = load i8*, i8** %34, align 8, !dbg !4160, !tbaa !1396
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #21, !dbg !4160
  br label %147, !dbg !4161

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.148, i64 0, i64 0), i32 5) #21, !dbg !4162
  %39 = load i8*, i8** %4, align 8, !dbg !4162, !tbaa !1396
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4162
  %41 = load i8*, i8** %40, align 8, !dbg !4162, !tbaa !1396
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4162
  %43 = load i8*, i8** %42, align 8, !dbg !4162, !tbaa !1396
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4162
  %45 = load i8*, i8** %44, align 8, !dbg !4162, !tbaa !1396
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #21, !dbg !4162
  br label %147, !dbg !4163

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.149, i64 0, i64 0), i32 5) #21, !dbg !4164
  %49 = load i8*, i8** %4, align 8, !dbg !4164, !tbaa !1396
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4164
  %51 = load i8*, i8** %50, align 8, !dbg !4164, !tbaa !1396
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4164
  %53 = load i8*, i8** %52, align 8, !dbg !4164, !tbaa !1396
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4164
  %55 = load i8*, i8** %54, align 8, !dbg !4164, !tbaa !1396
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4164
  %57 = load i8*, i8** %56, align 8, !dbg !4164, !tbaa !1396
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #21, !dbg !4164
  br label %147, !dbg !4165

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.150, i64 0, i64 0), i32 5) #21, !dbg !4166
  %61 = load i8*, i8** %4, align 8, !dbg !4166, !tbaa !1396
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4166
  %63 = load i8*, i8** %62, align 8, !dbg !4166, !tbaa !1396
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4166
  %65 = load i8*, i8** %64, align 8, !dbg !4166, !tbaa !1396
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4166
  %67 = load i8*, i8** %66, align 8, !dbg !4166, !tbaa !1396
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4166
  %69 = load i8*, i8** %68, align 8, !dbg !4166, !tbaa !1396
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4166
  %71 = load i8*, i8** %70, align 8, !dbg !4166, !tbaa !1396
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #21, !dbg !4166
  br label %147, !dbg !4167

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.151, i64 0, i64 0), i32 5) #21, !dbg !4168
  %75 = load i8*, i8** %4, align 8, !dbg !4168, !tbaa !1396
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4168
  %77 = load i8*, i8** %76, align 8, !dbg !4168, !tbaa !1396
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4168
  %79 = load i8*, i8** %78, align 8, !dbg !4168, !tbaa !1396
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4168
  %81 = load i8*, i8** %80, align 8, !dbg !4168, !tbaa !1396
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4168
  %83 = load i8*, i8** %82, align 8, !dbg !4168, !tbaa !1396
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4168
  %85 = load i8*, i8** %84, align 8, !dbg !4168, !tbaa !1396
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4168
  %87 = load i8*, i8** %86, align 8, !dbg !4168, !tbaa !1396
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #21, !dbg !4168
  br label %147, !dbg !4169

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.152, i64 0, i64 0), i32 5) #21, !dbg !4170
  %91 = load i8*, i8** %4, align 8, !dbg !4170, !tbaa !1396
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4170
  %93 = load i8*, i8** %92, align 8, !dbg !4170, !tbaa !1396
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4170
  %95 = load i8*, i8** %94, align 8, !dbg !4170, !tbaa !1396
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4170
  %97 = load i8*, i8** %96, align 8, !dbg !4170, !tbaa !1396
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4170
  %99 = load i8*, i8** %98, align 8, !dbg !4170, !tbaa !1396
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4170
  %101 = load i8*, i8** %100, align 8, !dbg !4170, !tbaa !1396
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4170
  %103 = load i8*, i8** %102, align 8, !dbg !4170, !tbaa !1396
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4170
  %105 = load i8*, i8** %104, align 8, !dbg !4170, !tbaa !1396
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #21, !dbg !4170
  br label %147, !dbg !4171

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.153, i64 0, i64 0), i32 5) #21, !dbg !4172
  %109 = load i8*, i8** %4, align 8, !dbg !4172, !tbaa !1396
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4172
  %111 = load i8*, i8** %110, align 8, !dbg !4172, !tbaa !1396
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4172
  %113 = load i8*, i8** %112, align 8, !dbg !4172, !tbaa !1396
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4172
  %115 = load i8*, i8** %114, align 8, !dbg !4172, !tbaa !1396
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4172
  %117 = load i8*, i8** %116, align 8, !dbg !4172, !tbaa !1396
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4172
  %119 = load i8*, i8** %118, align 8, !dbg !4172, !tbaa !1396
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4172
  %121 = load i8*, i8** %120, align 8, !dbg !4172, !tbaa !1396
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4172
  %123 = load i8*, i8** %122, align 8, !dbg !4172, !tbaa !1396
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4172
  %125 = load i8*, i8** %124, align 8, !dbg !4172, !tbaa !1396
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #21, !dbg !4172
  br label %147, !dbg !4173

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.154, i64 0, i64 0), i32 5) #21, !dbg !4174
  %129 = load i8*, i8** %4, align 8, !dbg !4174, !tbaa !1396
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4174
  %131 = load i8*, i8** %130, align 8, !dbg !4174, !tbaa !1396
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4174
  %133 = load i8*, i8** %132, align 8, !dbg !4174, !tbaa !1396
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4174
  %135 = load i8*, i8** %134, align 8, !dbg !4174, !tbaa !1396
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4174
  %137 = load i8*, i8** %136, align 8, !dbg !4174, !tbaa !1396
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4174
  %139 = load i8*, i8** %138, align 8, !dbg !4174, !tbaa !1396
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4174
  %141 = load i8*, i8** %140, align 8, !dbg !4174, !tbaa !1396
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4174
  %143 = load i8*, i8** %142, align 8, !dbg !4174, !tbaa !1396
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4174
  %145 = load i8*, i8** %144, align 8, !dbg !4174, !tbaa !1396
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #21, !dbg !4174
  br label %147, !dbg !4175

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4176
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4177 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4181, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i8* %1, metadata !4182, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i8* %2, metadata !4183, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i8* %3, metadata !4184, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i8** %4, metadata !4185, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 0, metadata !4186, metadata !DIExpression()), !dbg !4187
  br label %6, !dbg !4188

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4190
  call void @llvm.dbg.value(metadata i64 %7, metadata !4186, metadata !DIExpression()), !dbg !4187
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4191
  %9 = load i8*, i8** %8, align 8, !dbg !4191, !tbaa !1396
  %10 = icmp eq i8* %9, null, !dbg !4193
  %11 = add i64 %7, 1, !dbg !4194
  call void @llvm.dbg.value(metadata i64 %11, metadata !4186, metadata !DIExpression()), !dbg !4187
  br i1 %10, label %12, label %6, !dbg !4193, !llvm.loop !4195

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4186, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %7, metadata !4186, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %7, metadata !4186, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %7, metadata !4186, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %7, metadata !4186, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %7, metadata !4186, metadata !DIExpression()), !dbg !4187
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4197
  ret void, !dbg !4198
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4199 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4210, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i8* %1, metadata !4211, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i8* %2, metadata !4212, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i8* %3, metadata !4213, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4214, metadata !DIExpression()), !dbg !4218
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4219
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #21, !dbg !4219
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4216, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 0, metadata !4215, metadata !DIExpression()), !dbg !4218
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !4221
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !4221
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !4221
  %11 = load i32, i32* %8, align 8, !dbg !4224
  %12 = icmp ult i32 %11, 41, !dbg !4224
  br i1 %12, label %13, label %18, !dbg !4224

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4224
  %15 = zext i32 %11 to i64, !dbg !4224
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4224
  %17 = add nuw nsw i32 %11, 8, !dbg !4224
  store i32 %17, i32* %8, align 8, !dbg !4224
  br label %21, !dbg !4224

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4224
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4224
  store i8* %20, i8** %9, align 8, !dbg !4224
  br label %21, !dbg !4224

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4224
  %25 = load i8*, i8** %24, align 8, !dbg !4224
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4225
  store i8* %25, i8** %26, align 16, !dbg !4226, !tbaa !1396
  %27 = icmp eq i8* %25, null, !dbg !4227
  br i1 %27, label %30, label %28, !dbg !4228

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4215, metadata !DIExpression()), !dbg !4218
  %29 = icmp ult i32 %22, 41, !dbg !4224
  br i1 %29, label %35, label %32, !dbg !4224

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4229
  call void @llvm.dbg.value(metadata i64 %31, metadata !4215, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i64 %31, metadata !4215, metadata !DIExpression()), !dbg !4218
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4230
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #21, !dbg !4231
  ret void, !dbg !4231

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4224
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4224
  store i8* %34, i8** %9, align 8, !dbg !4224
  br label %40, !dbg !4224

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4224
  %37 = zext i32 %22 to i64, !dbg !4224
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4224
  %39 = add nuw nsw i32 %22, 8, !dbg !4224
  store i32 %39, i32* %8, align 8, !dbg !4224
  br label %40, !dbg !4224

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4224
  %44 = load i8*, i8** %43, align 8, !dbg !4224
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4225
  store i8* %44, i8** %45, align 8, !dbg !4226, !tbaa !1396
  %46 = icmp eq i8* %44, null, !dbg !4227
  br i1 %46, label %30, label %47, !dbg !4228

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4215, metadata !DIExpression()), !dbg !4218
  %48 = icmp ult i32 %41, 41, !dbg !4224
  br i1 %48, label %52, label %49, !dbg !4224

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4224
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4224
  store i8* %51, i8** %9, align 8, !dbg !4224
  br label %57, !dbg !4224

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4224
  %54 = zext i32 %41 to i64, !dbg !4224
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4224
  %56 = add nuw nsw i32 %41, 8, !dbg !4224
  store i32 %56, i32* %8, align 8, !dbg !4224
  br label %57, !dbg !4224

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4224
  %61 = load i8*, i8** %60, align 8, !dbg !4224
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4225
  store i8* %61, i8** %62, align 16, !dbg !4226, !tbaa !1396
  %63 = icmp eq i8* %61, null, !dbg !4227
  br i1 %63, label %30, label %64, !dbg !4228

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4215, metadata !DIExpression()), !dbg !4218
  %65 = icmp ult i32 %58, 41, !dbg !4224
  br i1 %65, label %69, label %66, !dbg !4224

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4224
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4224
  store i8* %68, i8** %9, align 8, !dbg !4224
  br label %74, !dbg !4224

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4224
  %71 = zext i32 %58 to i64, !dbg !4224
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4224
  %73 = add nuw nsw i32 %58, 8, !dbg !4224
  store i32 %73, i32* %8, align 8, !dbg !4224
  br label %74, !dbg !4224

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4224
  %78 = load i8*, i8** %77, align 8, !dbg !4224
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4225
  store i8* %78, i8** %79, align 8, !dbg !4226, !tbaa !1396
  %80 = icmp eq i8* %78, null, !dbg !4227
  br i1 %80, label %30, label %81, !dbg !4228

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4215, metadata !DIExpression()), !dbg !4218
  %82 = icmp ult i32 %75, 41, !dbg !4224
  br i1 %82, label %86, label %83, !dbg !4224

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4224
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4224
  store i8* %85, i8** %9, align 8, !dbg !4224
  br label %91, !dbg !4224

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4224
  %88 = zext i32 %75 to i64, !dbg !4224
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4224
  %90 = add nuw nsw i32 %75, 8, !dbg !4224
  store i32 %90, i32* %8, align 8, !dbg !4224
  br label %91, !dbg !4224

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4224
  %95 = load i8*, i8** %94, align 8, !dbg !4224
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4225
  store i8* %95, i8** %96, align 16, !dbg !4226, !tbaa !1396
  %97 = icmp eq i8* %95, null, !dbg !4227
  br i1 %97, label %30, label %98, !dbg !4228

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4215, metadata !DIExpression()), !dbg !4218
  %99 = icmp ult i32 %92, 41, !dbg !4224
  br i1 %99, label %103, label %100, !dbg !4224

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4224
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4224
  store i8* %102, i8** %9, align 8, !dbg !4224
  br label %108, !dbg !4224

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4224
  %105 = zext i32 %92 to i64, !dbg !4224
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4224
  %107 = add nuw nsw i32 %92, 8, !dbg !4224
  store i32 %107, i32* %8, align 8, !dbg !4224
  br label %108, !dbg !4224

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4224
  %111 = load i8*, i8** %110, align 8, !dbg !4224
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4225
  store i8* %111, i8** %112, align 8, !dbg !4226, !tbaa !1396
  %113 = icmp eq i8* %111, null, !dbg !4227
  br i1 %113, label %30, label %114, !dbg !4228

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4215, metadata !DIExpression()), !dbg !4218
  %115 = load i8*, i8** %9, align 8, !dbg !4224
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4224
  store i8* %116, i8** %9, align 8, !dbg !4224
  %117 = bitcast i8* %115 to i8**, !dbg !4224
  %118 = load i8*, i8** %117, align 8, !dbg !4224
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4225
  store i8* %118, i8** %119, align 16, !dbg !4226, !tbaa !1396
  %120 = icmp eq i8* %118, null, !dbg !4227
  br i1 %120, label %30, label %121, !dbg !4228

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4215, metadata !DIExpression()), !dbg !4218
  %122 = load i8*, i8** %9, align 8, !dbg !4224
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4224
  store i8* %123, i8** %9, align 8, !dbg !4224
  %124 = bitcast i8* %122 to i8**, !dbg !4224
  %125 = load i8*, i8** %124, align 8, !dbg !4224
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4225
  store i8* %125, i8** %126, align 8, !dbg !4226, !tbaa !1396
  %127 = icmp eq i8* %125, null, !dbg !4227
  br i1 %127, label %30, label %128, !dbg !4228

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4215, metadata !DIExpression()), !dbg !4218
  %129 = load i8*, i8** %9, align 8, !dbg !4224
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4224
  store i8* %130, i8** %9, align 8, !dbg !4224
  %131 = bitcast i8* %129 to i8**, !dbg !4224
  %132 = load i8*, i8** %131, align 8, !dbg !4224
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4225
  store i8* %132, i8** %133, align 16, !dbg !4226, !tbaa !1396
  %134 = icmp eq i8* %132, null, !dbg !4227
  br i1 %134, label %30, label %135, !dbg !4228

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4215, metadata !DIExpression()), !dbg !4218
  %136 = load i8*, i8** %9, align 8, !dbg !4224
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4224
  store i8* %137, i8** %9, align 8, !dbg !4224
  %138 = bitcast i8* %136 to i8**, !dbg !4224
  %139 = load i8*, i8** %138, align 8, !dbg !4224
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4225
  store i8* %139, i8** %140, align 8, !dbg !4226, !tbaa !1396
  %141 = icmp eq i8* %139, null, !dbg !4227
  %142 = select i1 %141, i64 9, i64 10, !dbg !4228
  br label %30, !dbg !4228
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4232 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4236, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i8* %1, metadata !4237, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i8* %2, metadata !4238, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i8* %3, metadata !4239, metadata !DIExpression()), !dbg !4246
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4247
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #21, !dbg !4247
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4240, metadata !DIExpression()), !dbg !4248
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4249
  call void @llvm.va_start(i8* nonnull %6), !dbg !4249
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4250
  call void @llvm.va_end(i8* nonnull %6), !dbg !4251
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #21, !dbg !4252
  ret void, !dbg !4252
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #21

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4253 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4254, !tbaa !1396
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.142, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4254
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.157, i64 0, i64 0), i32 5) #21, !dbg !4255
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.158, i64 0, i64 0)) #21, !dbg !4255
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.159, i64 0, i64 0), i32 5) #21, !dbg !4256
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.160, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.161, i64 0, i64 0)) #21, !dbg !4256
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.162, i64 0, i64 0), i32 5) #21, !dbg !4257
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.163, i64 0, i64 0)) #21, !dbg !4257
  ret void, !dbg !4258
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !4259 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4263, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %1, metadata !4264, metadata !DIExpression()), !dbg !4265
  %3 = udiv i64 9223372036854775807, %1, !dbg !4266
  %4 = icmp ult i64 %3, %0, !dbg !4266
  br i1 %4, label %5, label %6, !dbg !4268

5:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !4269
  unreachable, !dbg !4269

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4270
  call void @llvm.dbg.value(metadata i64 %7, metadata !4271, metadata !DIExpression()) #21, !dbg !4277
  %8 = tail call noalias i8* @malloc(i64 %7) #21, !dbg !4279
  call void @llvm.dbg.value(metadata i8* %8, metadata !4276, metadata !DIExpression()) #21, !dbg !4277
  %9 = icmp eq i8* %8, null, !dbg !4280
  %10 = icmp ne i64 %7, 0, !dbg !4282
  %11 = and i1 %10, %9, !dbg !4283
  br i1 %11, label %12, label %13, !dbg !4283

12:                                               ; preds = %6
  tail call void @xalloc_die() #24, !dbg !4284
  unreachable, !dbg !4284

13:                                               ; preds = %6
  ret i8* %8, !dbg !4285
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4272 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4271, metadata !DIExpression()), !dbg !4286
  %2 = tail call noalias i8* @malloc(i64 %0) #21, !dbg !4287
  call void @llvm.dbg.value(metadata i8* %2, metadata !4276, metadata !DIExpression()), !dbg !4286
  %3 = icmp eq i8* %2, null, !dbg !4288
  %4 = icmp ne i64 %0, 0, !dbg !4289
  %5 = and i1 %4, %3, !dbg !4290
  br i1 %5, label %6, label %7, !dbg !4290

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4291
  unreachable, !dbg !4291

7:                                                ; preds = %1
  ret i8* %2, !dbg !4292
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !4293 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4297, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4298, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %2, metadata !4299, metadata !DIExpression()), !dbg !4300
  %4 = udiv i64 9223372036854775807, %2, !dbg !4301
  %5 = icmp ult i64 %4, %1, !dbg !4301
  br i1 %5, label %6, label %7, !dbg !4303

6:                                                ; preds = %3
  tail call void @xalloc_die() #24, !dbg !4304
  unreachable, !dbg !4304

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4305
  call void @llvm.dbg.value(metadata i8* %0, metadata !4306, metadata !DIExpression()) #21, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %8, metadata !4311, metadata !DIExpression()) #21, !dbg !4312
  %9 = icmp eq i64 %8, 0, !dbg !4314
  %10 = icmp ne i8* %0, null, !dbg !4316
  %11 = and i1 %10, %9, !dbg !4317
  br i1 %11, label %12, label %13, !dbg !4317

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #21, !dbg !4318
  br label %19, !dbg !4320

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #21, !dbg !4321
  call void @llvm.dbg.value(metadata i8* %14, metadata !4306, metadata !DIExpression()) #21, !dbg !4312
  %15 = icmp eq i8* %14, null, !dbg !4322
  %16 = icmp ne i64 %8, 0, !dbg !4324
  %17 = and i1 %16, %15, !dbg !4325
  br i1 %17, label %18, label %19, !dbg !4325

18:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !4326
  unreachable, !dbg !4326

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4312
  ret i8* %20, !dbg !4327
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4307 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64 %1, metadata !4311, metadata !DIExpression()), !dbg !4328
  %3 = icmp eq i64 %1, 0, !dbg !4329
  %4 = icmp ne i8* %0, null, !dbg !4330
  %5 = and i1 %4, %3, !dbg !4331
  br i1 %5, label %6, label %7, !dbg !4331

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #21, !dbg !4332
  br label %13, !dbg !4333

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #21, !dbg !4334
  call void @llvm.dbg.value(metadata i8* %8, metadata !4306, metadata !DIExpression()), !dbg !4328
  %9 = icmp eq i8* %8, null, !dbg !4335
  %10 = icmp ne i64 %1, 0, !dbg !4336
  %11 = and i1 %10, %9, !dbg !4337
  br i1 %11, label %12, label %13, !dbg !4337

12:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !4338
  unreachable, !dbg !4338

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4328
  ret i8* %14, !dbg !4339
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !750 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !754, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64* %1, metadata !755, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %2, metadata !756, metadata !DIExpression()), !dbg !4340
  %4 = load i64, i64* %1, align 8, !dbg !4341, !tbaa !1535
  call void @llvm.dbg.value(metadata i64 %4, metadata !757, metadata !DIExpression()), !dbg !4340
  %5 = icmp eq i8* %0, null, !dbg !4342
  br i1 %5, label %6, label %20, !dbg !4344

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4345
  br i1 %7, label %8, label %13, !dbg !4348

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4349
  call void @llvm.dbg.value(metadata i64 %9, metadata !757, metadata !DIExpression()), !dbg !4340
  %10 = icmp ugt i64 %2, 128, !dbg !4351
  %11 = zext i1 %10 to i64, !dbg !4351
  %12 = add nuw nsw i64 %9, %11, !dbg !4352
  call void @llvm.dbg.value(metadata i64 %12, metadata !757, metadata !DIExpression()), !dbg !4340
  br label %13, !dbg !4353

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4340
  call void @llvm.dbg.value(metadata i64 %14, metadata !757, metadata !DIExpression()), !dbg !4340
  %15 = udiv i64 9223372036854775807, %2, !dbg !4354
  %16 = icmp ult i64 %15, %14, !dbg !4354
  br i1 %16, label %19, label %17, !dbg !4356

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !757, metadata !DIExpression()), !dbg !4340
  store i64 %14, i64* %1, align 8, !dbg !4357, !tbaa !1535
  %18 = mul i64 %14, %2, !dbg !4358
  call void @llvm.dbg.value(metadata i8* %0, metadata !4306, metadata !DIExpression()) #21, !dbg !4359
  call void @llvm.dbg.value(metadata i64 %28, metadata !4311, metadata !DIExpression()) #21, !dbg !4359
  br label %31, !dbg !4361

19:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !4362
  unreachable, !dbg !4362

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4363
  %22 = icmp ugt i64 %21, %4, !dbg !4366
  br i1 %22, label %24, label %23, !dbg !4367

23:                                               ; preds = %20
  tail call void @xalloc_die() #24, !dbg !4368
  unreachable, !dbg !4368

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4369
  %26 = add nuw i64 %4, 1, !dbg !4370
  %27 = add i64 %26, %25, !dbg !4371
  call void @llvm.dbg.value(metadata i64 %27, metadata !757, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %27, metadata !757, metadata !DIExpression()), !dbg !4340
  store i64 %27, i64* %1, align 8, !dbg !4357, !tbaa !1535
  %28 = mul i64 %27, %2, !dbg !4358
  call void @llvm.dbg.value(metadata i8* %0, metadata !4306, metadata !DIExpression()) #21, !dbg !4359
  call void @llvm.dbg.value(metadata i64 %28, metadata !4311, metadata !DIExpression()) #21, !dbg !4359
  %29 = icmp eq i64 %28, 0, !dbg !4372
  br i1 %29, label %30, label %31, !dbg !4361

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #21, !dbg !4373
  br label %38, !dbg !4374

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #21, !dbg !4375
  call void @llvm.dbg.value(metadata i8* %33, metadata !4306, metadata !DIExpression()) #21, !dbg !4359
  %34 = icmp eq i8* %33, null, !dbg !4376
  %35 = icmp ne i64 %32, 0, !dbg !4377
  %36 = and i1 %35, %34, !dbg !4378
  br i1 %36, label %37, label %38, !dbg !4378

37:                                               ; preds = %31
  tail call void @xalloc_die() #24, !dbg !4379
  unreachable, !dbg !4379

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4359
  ret i8* %39, !dbg !4380
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !4381 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4383, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %0, metadata !4271, metadata !DIExpression()) #21, !dbg !4385
  %2 = tail call noalias i8* @malloc(i64 %0) #21, !dbg !4387
  call void @llvm.dbg.value(metadata i8* %2, metadata !4276, metadata !DIExpression()) #21, !dbg !4385
  %3 = icmp eq i8* %2, null, !dbg !4388
  %4 = icmp ne i64 %0, 0, !dbg !4389
  %5 = and i1 %4, %3, !dbg !4390
  br i1 %5, label %6, label %7, !dbg !4390

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4391
  unreachable, !dbg !4391

7:                                                ; preds = %1
  ret i8* %2, !dbg !4392
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4393 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4397, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64* %1, metadata !4398, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i8* %0, metadata !754, metadata !DIExpression()) #21, !dbg !4400
  call void @llvm.dbg.value(metadata i64* %1, metadata !755, metadata !DIExpression()) #21, !dbg !4400
  call void @llvm.dbg.value(metadata i64 1, metadata !756, metadata !DIExpression()) #21, !dbg !4400
  %3 = load i64, i64* %1, align 8, !dbg !4402, !tbaa !1535
  call void @llvm.dbg.value(metadata i64 %3, metadata !757, metadata !DIExpression()) #21, !dbg !4400
  %4 = icmp eq i8* %0, null, !dbg !4403
  br i1 %4, label %5, label %12, !dbg !4404

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4405
  br i1 %6, label %9, label %7, !dbg !4406

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !757, metadata !DIExpression()) #21, !dbg !4400
  %8 = icmp slt i64 %3, 0, !dbg !4407
  br i1 %8, label %11, label %9, !dbg !4408

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !757, metadata !DIExpression()) #21, !dbg !4400
  store i64 %10, i64* %1, align 8, !dbg !4409, !tbaa !1535
  call void @llvm.dbg.value(metadata i8* %0, metadata !4306, metadata !DIExpression()) #21, !dbg !4410
  call void @llvm.dbg.value(metadata i64 %18, metadata !4311, metadata !DIExpression()) #21, !dbg !4410
  br label %21, !dbg !4412

11:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !4413
  unreachable, !dbg !4413

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4414
  br i1 %13, label %15, label %14, !dbg !4415

14:                                               ; preds = %12
  tail call void @xalloc_die() #24, !dbg !4416
  unreachable, !dbg !4416

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4417
  %17 = add nuw nsw i64 %3, 1, !dbg !4418
  %18 = add nuw nsw i64 %17, %16, !dbg !4419
  call void @llvm.dbg.value(metadata i64 %18, metadata !757, metadata !DIExpression()) #21, !dbg !4400
  call void @llvm.dbg.value(metadata i64 %18, metadata !757, metadata !DIExpression()) #21, !dbg !4400
  store i64 %18, i64* %1, align 8, !dbg !4409, !tbaa !1535
  call void @llvm.dbg.value(metadata i8* %0, metadata !4306, metadata !DIExpression()) #21, !dbg !4410
  call void @llvm.dbg.value(metadata i64 %18, metadata !4311, metadata !DIExpression()) #21, !dbg !4410
  %19 = icmp eq i64 %18, 0, !dbg !4420
  br i1 %19, label %20, label %21, !dbg !4412

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #21, !dbg !4421
  br label %28, !dbg !4422

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #21, !dbg !4423
  call void @llvm.dbg.value(metadata i8* %23, metadata !4306, metadata !DIExpression()) #21, !dbg !4410
  %24 = icmp eq i8* %23, null, !dbg !4424
  %25 = icmp ne i64 %22, 0, !dbg !4425
  %26 = and i1 %25, %24, !dbg !4426
  br i1 %26, label %27, label %28, !dbg !4426

27:                                               ; preds = %21
  tail call void @xalloc_die() #24, !dbg !4427
  unreachable, !dbg !4427

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4410
  ret i8* %29, !dbg !4428
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4429 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4431, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64 %0, metadata !4433, metadata !DIExpression()) #21, !dbg !4438
  call void @llvm.dbg.value(metadata i64 1, metadata !4436, metadata !DIExpression()) #21, !dbg !4438
  %2 = icmp slt i64 %0, 0, !dbg !4440
  br i1 %2, label %6, label %3, !dbg !4442

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #21, !dbg !4443
  call void @llvm.dbg.value(metadata i8* %4, metadata !4437, metadata !DIExpression()) #21, !dbg !4438
  %5 = icmp eq i8* %4, null, !dbg !4444
  br i1 %5, label %6, label %7, !dbg !4445

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #24, !dbg !4446
  unreachable, !dbg !4446

7:                                                ; preds = %3
  ret i8* %4, !dbg !4447
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4434 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4433, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 %1, metadata !4436, metadata !DIExpression()), !dbg !4448
  %3 = udiv i64 9223372036854775807, %1, !dbg !4449
  %4 = icmp ult i64 %3, %0, !dbg !4449
  br i1 %4, label %8, label %5, !dbg !4450

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #21, !dbg !4451
  call void @llvm.dbg.value(metadata i8* %6, metadata !4437, metadata !DIExpression()), !dbg !4448
  %7 = icmp eq i8* %6, null, !dbg !4452
  br i1 %7, label %8, label %9, !dbg !4453

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #24, !dbg !4454
  unreachable, !dbg !4454

9:                                                ; preds = %5
  ret i8* %6, !dbg !4455
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4456 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4460, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 %1, metadata !4461, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 %1, metadata !4271, metadata !DIExpression()) #21, !dbg !4463
  %3 = tail call noalias i8* @malloc(i64 %1) #21, !dbg !4465
  call void @llvm.dbg.value(metadata i8* %3, metadata !4276, metadata !DIExpression()) #21, !dbg !4463
  %4 = icmp eq i8* %3, null, !dbg !4466
  %5 = icmp ne i64 %1, 0, !dbg !4467
  %6 = and i1 %5, %4, !dbg !4468
  br i1 %6, label %7, label %8, !dbg !4468

7:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !4469
  unreachable, !dbg !4469

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4470, metadata !DIExpression()) #21, !dbg !4479
  call void @llvm.dbg.value(metadata i8* %0, metadata !4477, metadata !DIExpression()) #21, !dbg !4479
  call void @llvm.dbg.value(metadata i64 %1, metadata !4478, metadata !DIExpression()) #21, !dbg !4479
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #21, !dbg !4481
  ret i8* %3, !dbg !4482
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4483 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4485, metadata !DIExpression()), !dbg !4486
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !4487
  %3 = add i64 %2, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i8* %0, metadata !4460, metadata !DIExpression()) #21, !dbg !4489
  call void @llvm.dbg.value(metadata i64 %3, metadata !4461, metadata !DIExpression()) #21, !dbg !4489
  call void @llvm.dbg.value(metadata i64 %3, metadata !4271, metadata !DIExpression()) #21, !dbg !4491
  %4 = tail call noalias i8* @malloc(i64 %3) #21, !dbg !4493
  call void @llvm.dbg.value(metadata i8* %4, metadata !4276, metadata !DIExpression()) #21, !dbg !4491
  %5 = icmp eq i8* %4, null, !dbg !4494
  %6 = icmp ne i64 %3, 0, !dbg !4495
  %7 = and i1 %6, %5, !dbg !4496
  br i1 %7, label %8, label %9, !dbg !4496

8:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4497
  unreachable, !dbg !4497

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4470, metadata !DIExpression()) #21, !dbg !4498
  call void @llvm.dbg.value(metadata i8* %0, metadata !4477, metadata !DIExpression()) #21, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %3, metadata !4478, metadata !DIExpression()) #21, !dbg !4498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #21, !dbg !4500
  ret i8* %4, !dbg !4501
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4502 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4503, !tbaa !1575
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.176, i64 0, i64 0), i32 5) #21, !dbg !4504
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.177, i64 0, i64 0), i8* %2) #21, !dbg !4505
  tail call void @abort() #24, !dbg !4506
  unreachable, !dbg !4506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !4507 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4514, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i8** %1, metadata !4515, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 %2, metadata !4516, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64* %3, metadata !4517, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i8* %4, metadata !4518, metadata !DIExpression()), !dbg !4532
  %7 = bitcast i8** %6 to i8*, !dbg !4533
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #21, !dbg !4533
  call void @llvm.dbg.value(metadata i32 0, metadata !4522, metadata !DIExpression()), !dbg !4532
  %8 = icmp ult i32 %2, 37, !dbg !4534
  br i1 %8, label %10, label %9, !dbg !4534

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.180, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.181, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #24, !dbg !4534
  unreachable, !dbg !4534

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4537
  call void @llvm.dbg.value(metadata i8** %25, metadata !4520, metadata !DIExpression()), !dbg !4532
  %12 = tail call i32* @__errno_location() #26, !dbg !4538
  store i32 0, i32* %12, align 4, !dbg !4539, !tbaa !1575
  call void @llvm.dbg.value(metadata i8* %0, metadata !4523, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i8 undef, metadata !4526, metadata !DIExpression()), !dbg !4540
  %13 = tail call i16** @__ctype_b_loc() #26, !dbg !4540
  %14 = load i16*, i16** %13, align 8, !dbg !4540, !tbaa !1396
  br label %15, !dbg !4541

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4540
  %17 = load i8, i8* %16, align 1, !dbg !4540, !tbaa !1544
  call void @llvm.dbg.value(metadata i8 %17, metadata !4526, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i8* %16, metadata !4523, metadata !DIExpression()), !dbg !4540
  %18 = zext i8 %17 to i64, !dbg !4542
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4542
  %20 = load i16, i16* %19, align 2, !dbg !4542, !tbaa !1978
  %21 = and i16 %20, 8192, !dbg !4542
  %22 = icmp eq i16 %21, 0, !dbg !4541
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4543
  call void @llvm.dbg.value(metadata i8* %23, metadata !4523, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i8 undef, metadata !4526, metadata !DIExpression()), !dbg !4540
  br i1 %22, label %24, label %15, !dbg !4541, !llvm.loop !4544

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4537
  %26 = icmp eq i8 %17, 45, !dbg !4546
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !4548, metadata !DIExpression()) #21, !dbg !4558
  call void @llvm.dbg.value(metadata i8** %25, metadata !4556, metadata !DIExpression()) #21, !dbg !4558
  call void @llvm.dbg.value(metadata i32 %2, metadata !4557, metadata !DIExpression()) #21, !dbg !4558
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #21, !dbg !4560
  call void @llvm.dbg.value(metadata i64 %28, metadata !4521, metadata !DIExpression()), !dbg !4532
  %29 = load i8*, i8** %25, align 8, !dbg !4561, !tbaa !1396
  %30 = icmp eq i8* %29, %0, !dbg !4563
  br i1 %30, label %31, label %40, !dbg !4564

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4565
  br i1 %32, label %285, label %33, !dbg !4568

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4569, !tbaa !1544
  %35 = icmp eq i8 %34, 0, !dbg !4569
  br i1 %35, label %285, label %36, !dbg !4570

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4569
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #23, !dbg !4571
  %39 = icmp eq i8* %38, null, !dbg !4571
  br i1 %39, label %285, label %47, !dbg !4572

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4573, !tbaa !1575
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4575

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4532
  br label %43, !dbg !4576

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4532
  call void @llvm.dbg.value(metadata i32 %44, metadata !4522, metadata !DIExpression()), !dbg !4532
  %45 = icmp eq i8* %4, null, !dbg !4578
  br i1 %45, label %46, label %47, !dbg !4580

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4521, metadata !DIExpression()), !dbg !4532
  store i64 %28, i64* %3, align 8, !dbg !4581, !tbaa !1535
  br label %285, !dbg !4583

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4584, !tbaa !1544
  %51 = sext i8 %50 to i32, !dbg !4584
  %52 = icmp eq i8 %50, 0, !dbg !4585
  br i1 %52, label %282, label %53, !dbg !4586

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4527, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i32 1, metadata !4530, metadata !DIExpression()), !dbg !4587
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #23, !dbg !4588
  %55 = icmp eq i8* %54, null, !dbg !4588
  br i1 %55, label %56, label %58, !dbg !4590

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4521, metadata !DIExpression()), !dbg !4532
  store i64 %49, i64* %3, align 8, !dbg !4591, !tbaa !1535
  %57 = or i32 %48, 2, !dbg !4593
  br label %285, !dbg !4594

58:                                               ; preds = %53
  switch i32 %51, label %72 [
    i32 69, label %59
    i32 71, label %59
    i32 103, label %59
    i32 107, label %59
    i32 75, label %59
    i32 77, label %59
    i32 109, label %59
    i32 80, label %59
    i32 84, label %59
    i32 116, label %59
    i32 89, label %59
    i32 90, label %59
  ], !dbg !4595

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #23, !dbg !4596
  %61 = icmp eq i8* %60, null, !dbg !4596
  br i1 %61, label %72, label %62, !dbg !4599

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4600
  %64 = load i8, i8* %63, align 1, !dbg !4600, !tbaa !1544
  %65 = sext i8 %64 to i32, !dbg !4600
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4601

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4602
  %68 = load i8, i8* %67, align 1, !dbg !4602, !tbaa !1544
  %69 = icmp eq i8 %68, 66, !dbg !4605
  %70 = select i1 %69, i64 3, i64 1, !dbg !4606
  br label %72, !dbg !4606

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4527, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i32 2, metadata !4530, metadata !DIExpression()), !dbg !4587
  br label %72, !dbg !4607

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4530, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i32 undef, metadata !4527, metadata !DIExpression()), !dbg !4587
  switch i32 %51, label %270 [
    i32 98, label %205
    i32 66, label %210
    i32 99, label %272
    i32 69, label %175
    i32 71, label %215
    i32 103, label %215
    i32 107, label %230
    i32 75, label %230
    i32 77, label %235
    i32 109, label %235
    i32 80, label %150
    i32 84, label %245
    i32 116, label %245
    i32 119, label %265
    i32 89, label %110
    i32 90, label %75
  ], !dbg !4608

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()) #21, !dbg !4617
  call void @llvm.dbg.value(metadata i32 6, metadata !4616, metadata !DIExpression()) #21, !dbg !4617
  call void @llvm.dbg.value(metadata i32 undef, metadata !4620, metadata !DIExpression()) #21, !dbg !4626
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #21, !dbg !4628
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4628
  %78 = mul i64 %49, %73, !dbg !4630
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4630
  call void @llvm.dbg.value(metadata i1 %77, metadata !4609, metadata !DIExpression()) #21, !dbg !4617
  call void @llvm.dbg.value(metadata i32 5, metadata !4616, metadata !DIExpression()) #21, !dbg !4617
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #21, !dbg !4628
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !4628
  %82 = mul i64 %79, %73, !dbg !4630
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4630
  %84 = or i1 %77, %81, !dbg !4631
  call void @llvm.dbg.value(metadata i1 %84, metadata !4609, metadata !DIExpression()) #21, !dbg !4617
  call void @llvm.dbg.value(metadata i32 4, metadata !4616, metadata !DIExpression()) #21, !dbg !4617
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #21, !dbg !4628
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !4628
  %87 = mul i64 %83, %73, !dbg !4630
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !4630
  %89 = or i1 %84, %86, !dbg !4631
  call void @llvm.dbg.value(metadata i1 %89, metadata !4609, metadata !DIExpression()) #21, !dbg !4617
  call void @llvm.dbg.value(metadata i32 3, metadata !4616, metadata !DIExpression()) #21, !dbg !4617
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #21, !dbg !4628
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !4628
  %92 = mul i64 %88, %73, !dbg !4630
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !4630
  %94 = or i1 %89, %91, !dbg !4631
  call void @llvm.dbg.value(metadata i1 %94, metadata !4609, metadata !DIExpression()) #21, !dbg !4617
  call void @llvm.dbg.value(metadata i32 2, metadata !4616, metadata !DIExpression()) #21, !dbg !4617
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #21, !dbg !4628
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !4628
  %97 = mul i64 %93, %73, !dbg !4630
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !4630
  %99 = or i1 %94, %96, !dbg !4631
  call void @llvm.dbg.value(metadata i1 %99, metadata !4609, metadata !DIExpression()) #21, !dbg !4617
  call void @llvm.dbg.value(metadata i32 1, metadata !4616, metadata !DIExpression()) #21, !dbg !4617
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #21, !dbg !4628
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !4628
  %102 = mul i64 %98, %73, !dbg !4630
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !4630
  %104 = or i1 %99, %101, !dbg !4631
  call void @llvm.dbg.value(metadata i1 %104, metadata !4609, metadata !DIExpression()) #21, !dbg !4617
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression()) #21, !dbg !4617
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #21, !dbg !4628
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !4628
  %107 = mul i64 %103, %73, !dbg !4630
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4630
  %109 = or i1 %104, %106, !dbg !4631
  call void @llvm.dbg.value(metadata i1 %109, metadata !4609, metadata !DIExpression()) #21, !dbg !4617
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #21, !dbg !4617
  br label %272, !dbg !4632

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()) #21, !dbg !4633
  call void @llvm.dbg.value(metadata i32 7, metadata !4616, metadata !DIExpression()) #21, !dbg !4633
  call void @llvm.dbg.value(metadata i32 undef, metadata !4620, metadata !DIExpression()) #21, !dbg !4635
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #21, !dbg !4637
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !4637
  %113 = mul i64 %49, %73, !dbg !4638
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !4638
  call void @llvm.dbg.value(metadata i1 %112, metadata !4609, metadata !DIExpression()) #21, !dbg !4633
  call void @llvm.dbg.value(metadata i32 6, metadata !4616, metadata !DIExpression()) #21, !dbg !4633
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #21, !dbg !4637
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !4637
  %117 = mul i64 %114, %73, !dbg !4638
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4638
  %119 = or i1 %112, %116, !dbg !4639
  call void @llvm.dbg.value(metadata i1 %119, metadata !4609, metadata !DIExpression()) #21, !dbg !4633
  call void @llvm.dbg.value(metadata i32 5, metadata !4616, metadata !DIExpression()) #21, !dbg !4633
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #21, !dbg !4637
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4637
  %122 = mul i64 %118, %73, !dbg !4638
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !4638
  %124 = or i1 %119, %121, !dbg !4639
  call void @llvm.dbg.value(metadata i1 %124, metadata !4609, metadata !DIExpression()) #21, !dbg !4633
  call void @llvm.dbg.value(metadata i32 4, metadata !4616, metadata !DIExpression()) #21, !dbg !4633
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #21, !dbg !4637
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !4637
  %127 = mul i64 %123, %73, !dbg !4638
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !4638
  %129 = or i1 %124, %126, !dbg !4639
  call void @llvm.dbg.value(metadata i1 %129, metadata !4609, metadata !DIExpression()) #21, !dbg !4633
  call void @llvm.dbg.value(metadata i32 3, metadata !4616, metadata !DIExpression()) #21, !dbg !4633
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #21, !dbg !4637
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !4637
  %132 = mul i64 %128, %73, !dbg !4638
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !4638
  %134 = or i1 %129, %131, !dbg !4639
  call void @llvm.dbg.value(metadata i1 %134, metadata !4609, metadata !DIExpression()) #21, !dbg !4633
  call void @llvm.dbg.value(metadata i32 2, metadata !4616, metadata !DIExpression()) #21, !dbg !4633
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #21, !dbg !4637
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !4637
  %137 = mul i64 %133, %73, !dbg !4638
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4638
  %139 = or i1 %134, %136, !dbg !4639
  call void @llvm.dbg.value(metadata i1 %139, metadata !4609, metadata !DIExpression()) #21, !dbg !4633
  call void @llvm.dbg.value(metadata i32 1, metadata !4616, metadata !DIExpression()) #21, !dbg !4633
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #21, !dbg !4637
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !4637
  %142 = mul i64 %138, %73, !dbg !4638
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !4638
  %144 = or i1 %139, %141, !dbg !4639
  call void @llvm.dbg.value(metadata i1 %144, metadata !4609, metadata !DIExpression()) #21, !dbg !4633
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression()) #21, !dbg !4633
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #21, !dbg !4637
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !4637
  %147 = mul i64 %143, %73, !dbg !4638
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4638
  %149 = or i1 %144, %146, !dbg !4639
  call void @llvm.dbg.value(metadata i1 %149, metadata !4609, metadata !DIExpression()) #21, !dbg !4633
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #21, !dbg !4633
  br label %272, !dbg !4632

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()) #21, !dbg !4640
  call void @llvm.dbg.value(metadata i32 4, metadata !4616, metadata !DIExpression()) #21, !dbg !4640
  call void @llvm.dbg.value(metadata i32 undef, metadata !4620, metadata !DIExpression()) #21, !dbg !4642
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #21, !dbg !4644
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !4644
  %153 = mul i64 %49, %73, !dbg !4645
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !4645
  call void @llvm.dbg.value(metadata i1 %152, metadata !4609, metadata !DIExpression()) #21, !dbg !4640
  call void @llvm.dbg.value(metadata i32 3, metadata !4616, metadata !DIExpression()) #21, !dbg !4640
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #21, !dbg !4644
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4644
  %157 = mul i64 %154, %73, !dbg !4645
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !4645
  %159 = or i1 %152, %156, !dbg !4646
  call void @llvm.dbg.value(metadata i1 %159, metadata !4609, metadata !DIExpression()) #21, !dbg !4640
  call void @llvm.dbg.value(metadata i32 2, metadata !4616, metadata !DIExpression()) #21, !dbg !4640
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #21, !dbg !4644
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !4644
  %162 = mul i64 %158, %73, !dbg !4645
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !4645
  %164 = or i1 %159, %161, !dbg !4646
  call void @llvm.dbg.value(metadata i1 %164, metadata !4609, metadata !DIExpression()) #21, !dbg !4640
  call void @llvm.dbg.value(metadata i32 1, metadata !4616, metadata !DIExpression()) #21, !dbg !4640
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #21, !dbg !4644
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !4644
  %167 = mul i64 %163, %73, !dbg !4645
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !4645
  %169 = or i1 %164, %166, !dbg !4646
  call void @llvm.dbg.value(metadata i1 %169, metadata !4609, metadata !DIExpression()) #21, !dbg !4640
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression()) #21, !dbg !4640
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #21, !dbg !4644
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4644
  %172 = mul i64 %168, %73, !dbg !4645
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !4645
  %174 = or i1 %169, %171, !dbg !4646
  call void @llvm.dbg.value(metadata i1 %174, metadata !4609, metadata !DIExpression()) #21, !dbg !4640
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #21, !dbg !4640
  br label %272, !dbg !4632

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()) #21, !dbg !4647
  call void @llvm.dbg.value(metadata i32 5, metadata !4616, metadata !DIExpression()) #21, !dbg !4647
  call void @llvm.dbg.value(metadata i32 undef, metadata !4620, metadata !DIExpression()) #21, !dbg !4649
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #21, !dbg !4651
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !4651
  %178 = mul i64 %49, %73, !dbg !4652
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !4652
  call void @llvm.dbg.value(metadata i1 %177, metadata !4609, metadata !DIExpression()) #21, !dbg !4647
  call void @llvm.dbg.value(metadata i32 4, metadata !4616, metadata !DIExpression()) #21, !dbg !4647
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #21, !dbg !4651
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !4651
  %182 = mul i64 %179, %73, !dbg !4652
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !4652
  %184 = or i1 %177, %181, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %184, metadata !4609, metadata !DIExpression()) #21, !dbg !4647
  call void @llvm.dbg.value(metadata i32 3, metadata !4616, metadata !DIExpression()) #21, !dbg !4647
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #21, !dbg !4651
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !4651
  %187 = mul i64 %183, %73, !dbg !4652
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !4652
  %189 = or i1 %184, %186, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %189, metadata !4609, metadata !DIExpression()) #21, !dbg !4647
  call void @llvm.dbg.value(metadata i32 2, metadata !4616, metadata !DIExpression()) #21, !dbg !4647
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #21, !dbg !4651
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !4651
  %192 = mul i64 %188, %73, !dbg !4652
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !4652
  %194 = or i1 %189, %191, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %194, metadata !4609, metadata !DIExpression()) #21, !dbg !4647
  call void @llvm.dbg.value(metadata i32 1, metadata !4616, metadata !DIExpression()) #21, !dbg !4647
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #21, !dbg !4651
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4651
  %197 = mul i64 %193, %73, !dbg !4652
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4652
  %199 = or i1 %194, %196, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %199, metadata !4609, metadata !DIExpression()) #21, !dbg !4647
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression()) #21, !dbg !4647
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #21, !dbg !4651
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4651
  %202 = mul i64 %198, %73, !dbg !4652
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4652
  %204 = or i1 %199, %201, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %204, metadata !4609, metadata !DIExpression()) #21, !dbg !4647
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #21, !dbg !4647
  br label %272, !dbg !4632

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4620, metadata !DIExpression()) #21, !dbg !4654
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #21, !dbg !4656
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !4656
  %208 = shl i64 %49, 9, !dbg !4657
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !4657
  call void @llvm.dbg.value(metadata i1 %207, metadata !4531, metadata !DIExpression()), !dbg !4587
  br label %272, !dbg !4658

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4620, metadata !DIExpression()) #21, !dbg !4659
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #21, !dbg !4661
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !4661
  %213 = shl i64 %49, 10, !dbg !4662
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4662
  call void @llvm.dbg.value(metadata i1 %212, metadata !4531, metadata !DIExpression()), !dbg !4587
  br label %272, !dbg !4663

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4615, metadata !DIExpression()) #21, !dbg !4664
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()) #21, !dbg !4664
  call void @llvm.dbg.value(metadata i32 2, metadata !4616, metadata !DIExpression()) #21, !dbg !4664
  call void @llvm.dbg.value(metadata i32 undef, metadata !4620, metadata !DIExpression()) #21, !dbg !4666
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #21, !dbg !4668
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !4668
  %218 = mul i64 %49, %73, !dbg !4669
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !4669
  call void @llvm.dbg.value(metadata i1 %217, metadata !4609, metadata !DIExpression()) #21, !dbg !4664
  call void @llvm.dbg.value(metadata i32 1, metadata !4616, metadata !DIExpression()) #21, !dbg !4664
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #21, !dbg !4668
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4668
  %222 = mul i64 %219, %73, !dbg !4669
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4669
  %224 = or i1 %217, %221, !dbg !4670
  call void @llvm.dbg.value(metadata i1 %224, metadata !4609, metadata !DIExpression()) #21, !dbg !4664
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression()) #21, !dbg !4664
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #21, !dbg !4668
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4668
  %227 = mul i64 %223, %73, !dbg !4669
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4669
  %229 = or i1 %224, %226, !dbg !4670
  call void @llvm.dbg.value(metadata i1 %229, metadata !4609, metadata !DIExpression()) #21, !dbg !4664
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #21, !dbg !4664
  br label %272, !dbg !4632

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4615, metadata !DIExpression()) #21, !dbg !4671
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()) #21, !dbg !4671
  call void @llvm.dbg.value(metadata i32 undef, metadata !4616, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #21, !dbg !4671
  call void @llvm.dbg.value(metadata i32 undef, metadata !4620, metadata !DIExpression()) #21, !dbg !4673
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #21, !dbg !4675
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !4675
  %233 = mul i64 %49, %73, !dbg !4676
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !4676
  call void @llvm.dbg.value(metadata i1 %232, metadata !4609, metadata !DIExpression()) #21, !dbg !4671
  call void @llvm.dbg.value(metadata i32 undef, metadata !4616, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #21, !dbg !4671
  br label %272, !dbg !4632

235:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4615, metadata !DIExpression()) #21, !dbg !4677
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()) #21, !dbg !4677
  call void @llvm.dbg.value(metadata i32 1, metadata !4616, metadata !DIExpression()) #21, !dbg !4677
  call void @llvm.dbg.value(metadata i32 undef, metadata !4620, metadata !DIExpression()) #21, !dbg !4679
  %236 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #21, !dbg !4681
  %237 = extractvalue { i64, i1 } %236, 1, !dbg !4681
  %238 = mul i64 %49, %73, !dbg !4682
  %239 = select i1 %237, i64 -1, i64 %238, !dbg !4682
  call void @llvm.dbg.value(metadata i1 %237, metadata !4609, metadata !DIExpression()) #21, !dbg !4677
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression()) #21, !dbg !4677
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %239) #21, !dbg !4681
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4681
  %242 = mul i64 %239, %73, !dbg !4682
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4682
  %244 = or i1 %237, %241, !dbg !4683
  call void @llvm.dbg.value(metadata i1 %244, metadata !4609, metadata !DIExpression()) #21, !dbg !4677
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #21, !dbg !4677
  br label %272, !dbg !4632

245:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4615, metadata !DIExpression()) #21, !dbg !4684
  call void @llvm.dbg.value(metadata i32 0, metadata !4609, metadata !DIExpression()) #21, !dbg !4684
  call void @llvm.dbg.value(metadata i32 3, metadata !4616, metadata !DIExpression()) #21, !dbg !4684
  call void @llvm.dbg.value(metadata i32 undef, metadata !4620, metadata !DIExpression()) #21, !dbg !4686
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #21, !dbg !4688
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4688
  %248 = mul i64 %49, %73, !dbg !4689
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4689
  call void @llvm.dbg.value(metadata i1 %247, metadata !4609, metadata !DIExpression()) #21, !dbg !4684
  call void @llvm.dbg.value(metadata i32 2, metadata !4616, metadata !DIExpression()) #21, !dbg !4684
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %249) #21, !dbg !4688
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4688
  %252 = mul i64 %249, %73, !dbg !4689
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4689
  %254 = or i1 %247, %251, !dbg !4690
  call void @llvm.dbg.value(metadata i1 %254, metadata !4609, metadata !DIExpression()) #21, !dbg !4684
  call void @llvm.dbg.value(metadata i32 1, metadata !4616, metadata !DIExpression()) #21, !dbg !4684
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #21, !dbg !4688
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4688
  %257 = mul i64 %253, %73, !dbg !4689
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4689
  %259 = or i1 %254, %256, !dbg !4690
  call void @llvm.dbg.value(metadata i1 %259, metadata !4609, metadata !DIExpression()) #21, !dbg !4684
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression()) #21, !dbg !4684
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %258) #21, !dbg !4688
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4688
  %262 = mul i64 %258, %73, !dbg !4689
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4689
  %264 = or i1 %259, %261, !dbg !4690
  call void @llvm.dbg.value(metadata i1 %264, metadata !4609, metadata !DIExpression()) #21, !dbg !4684
  call void @llvm.dbg.value(metadata i32 0, metadata !4616, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #21, !dbg !4684
  br label %272, !dbg !4632

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4620, metadata !DIExpression()) #21, !dbg !4691
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #21, !dbg !4693
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4693
  %268 = shl i64 %49, 1, !dbg !4694
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4694
  call void @llvm.dbg.value(metadata i1 %267, metadata !4531, metadata !DIExpression()), !dbg !4587
  br label %272, !dbg !4695

270:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4521, metadata !DIExpression()), !dbg !4532
  store i64 %49, i64* %3, align 8, !dbg !4696, !tbaa !1535
  %271 = or i32 %48, 2, !dbg !4697
  br label %285, !dbg !4698

272:                                              ; preds = %75, %110, %245, %150, %235, %230, %215, %175, %205, %210, %265, %72
  %273 = phi i64 [ %269, %265 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %234, %230 ], [ %243, %235 ], [ %173, %150 ], [ %263, %245 ], [ %148, %110 ], [ %108, %75 ], !dbg !4532
  %274 = phi i1 [ %267, %265 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %232, %230 ], [ %244, %235 ], [ %174, %150 ], [ %264, %245 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !4699
  call void @llvm.dbg.value(metadata i32 %275, metadata !4531, metadata !DIExpression()), !dbg !4587
  %276 = or i32 %48, %275, !dbg !4632
  call void @llvm.dbg.value(metadata i32 %276, metadata !4522, metadata !DIExpression()), !dbg !4532
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4700
  store i8* %277, i8** %25, align 8, !dbg !4700, !tbaa !1396
  %278 = load i8, i8* %277, align 1, !dbg !4701, !tbaa !1544
  %279 = icmp eq i8 %278, 0, !dbg !4701
  %280 = or i32 %276, 2, !dbg !4703
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !4704
  call void @llvm.dbg.value(metadata i32 %281, metadata !4522, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 %281, metadata !4522, metadata !DIExpression()), !dbg !4532
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !4705
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !4706
  call void @llvm.dbg.value(metadata i32 %284, metadata !4522, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %283, metadata !4521, metadata !DIExpression()), !dbg !4532
  store i64 %283, i64* %3, align 8, !dbg !4707, !tbaa !1535
  br label %285, !dbg !4708

285:                                              ; preds = %24, %56, %270, %40, %31, %33, %36, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %271, %270 ], !dbg !4532
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #21, !dbg !4709
  ret i32 %286, !dbg !4709
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #16 !dbg !4710 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4712, metadata !DIExpression()), !dbg !4718
  call void @llvm.dbg.value(metadata i64 %1, metadata !4713, metadata !DIExpression()), !dbg !4718
  %3 = icmp eq i64 %0, 0, !dbg !4719
  %4 = icmp eq i64 %1, 0, !dbg !4720
  %5 = or i1 %3, %4, !dbg !4721
  br i1 %5, label %11, label %6, !dbg !4721

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4715, metadata !DIExpression()), !dbg !4722
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4723
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4723
  br i1 %8, label %9, label %11, !dbg !4725

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #26, !dbg !4726
  store i32 12, i32* %10, align 4, !dbg !4728, !tbaa !1575
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4712, metadata !DIExpression()), !dbg !4718
  call void @llvm.dbg.value(metadata i64 %12, metadata !4713, metadata !DIExpression()), !dbg !4718
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #21, !dbg !4729
  call void @llvm.dbg.value(metadata i8* %14, metadata !4714, metadata !DIExpression()), !dbg !4718
  br label %15, !dbg !4730

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4718
  ret i8* %16, !dbg !4731
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4732 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4738, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i32 0, metadata !4739, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i32 0, metadata !4741, metadata !DIExpression()), !dbg !4742
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #21, !dbg !4743
  call void @llvm.dbg.value(metadata i32 %2, metadata !4740, metadata !DIExpression()), !dbg !4742
  %3 = icmp slt i32 %2, 0, !dbg !4744
  br i1 %3, label %4, label %6, !dbg !4746

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4747
  br label %24, !dbg !4748

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #21, !dbg !4749
  %8 = icmp eq i32 %7, 0, !dbg !4749
  br i1 %8, label %13, label %9, !dbg !4751

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #21, !dbg !4752
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #21, !dbg !4753
  %12 = icmp eq i64 %11, -1, !dbg !4754
  br i1 %12, label %16, label %13, !dbg !4755

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #21, !dbg !4756
  %15 = icmp eq i32 %14, 0, !dbg !4756
  br i1 %15, label %16, label %18, !dbg !4757

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4739, metadata !DIExpression()), !dbg !4742
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4758
  call void @llvm.dbg.value(metadata i32 %21, metadata !4741, metadata !DIExpression()), !dbg !4742
  br label %24, !dbg !4759

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #26, !dbg !4760
  %20 = load i32, i32* %19, align 4, !dbg !4760, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 %20, metadata !4739, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i32 %20, metadata !4739, metadata !DIExpression()), !dbg !4742
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4758
  call void @llvm.dbg.value(metadata i32 %21, metadata !4741, metadata !DIExpression()), !dbg !4742
  %22 = icmp eq i32 %20, 0, !dbg !4761
  br i1 %22, label %24, label %23, !dbg !4759

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4763, !tbaa !1575
  call void @llvm.dbg.value(metadata i32 -1, metadata !4741, metadata !DIExpression()), !dbg !4742
  br label %24, !dbg !4765

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4742
  ret i32 %25, !dbg !4766
}

; Function Attrs: nofree nounwind
declare !dbg !814 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !815 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4767 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4773, metadata !DIExpression()), !dbg !4774
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4775
  br i1 %2, label %6, label %3, !dbg !4777

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #21, !dbg !4778
  %5 = icmp eq i32 %4, 0, !dbg !4778
  br i1 %5, label %6, label %8, !dbg !4779

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4780
  br label %17, !dbg !4781

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4782, metadata !DIExpression()) #21, !dbg !4787
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4789
  %10 = load i32, i32* %9, align 8, !dbg !4789, !tbaa !1762
  %11 = and i32 %10, 256, !dbg !4791
  %12 = icmp eq i32 %11, 0, !dbg !4791
  br i1 %12, label %15, label %13, !dbg !4792

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #21, !dbg !4793
  br label %15, !dbg !4793

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4794
  br label %17, !dbg !4795

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4774
  ret i32 %18, !dbg !4796
}

; Function Attrs: nofree nounwind
declare !dbg !822 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4797 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4803, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i64 %1, metadata !4804, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 %2, metadata !4805, metadata !DIExpression()), !dbg !4809
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4810
  %5 = load i8*, i8** %4, align 8, !dbg !4810, !tbaa !2467
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4811
  %7 = load i8*, i8** %6, align 8, !dbg !4811, !tbaa !2466
  %8 = icmp eq i8* %5, %7, !dbg !4812
  br i1 %8, label %9, label %28, !dbg !4813

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4814
  %11 = load i8*, i8** %10, align 8, !dbg !4814, !tbaa !1823
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4815
  %13 = load i8*, i8** %12, align 8, !dbg !4815, !tbaa !4816
  %14 = icmp eq i8* %11, %13, !dbg !4817
  br i1 %14, label %15, label %28, !dbg !4818

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4819
  %17 = load i8*, i8** %16, align 8, !dbg !4819, !tbaa !4820
  %18 = icmp eq i8* %17, null, !dbg !4821
  br i1 %18, label %19, label %28, !dbg !4822

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #21, !dbg !4823
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #21, !dbg !4824
  call void @llvm.dbg.value(metadata i64 %21, metadata !4806, metadata !DIExpression()), !dbg !4825
  %22 = icmp eq i64 %21, -1, !dbg !4826
  br i1 %22, label %30, label %23, !dbg !4828

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4829
  %25 = load i32, i32* %24, align 8, !dbg !4830, !tbaa !1762
  %26 = and i32 %25, -17, !dbg !4830
  store i32 %26, i32* %24, align 8, !dbg !4830, !tbaa !1762
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4831
  store i64 %21, i64* %27, align 8, !dbg !4832, !tbaa !4833
  br label %30, !dbg !4834

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4835
  br label %30, !dbg !4836

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4809
  ret i32 %31, !dbg !4837
}

; Function Attrs: nofree nounwind
declare !dbg !898 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4838 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4846, metadata !DIExpression()), !dbg !4855
  call void @llvm.dbg.value(metadata i8* %1, metadata !4847, metadata !DIExpression()), !dbg !4855
  call void @llvm.dbg.value(metadata i64 %2, metadata !4848, metadata !DIExpression()), !dbg !4855
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4849, metadata !DIExpression()), !dbg !4855
  %6 = bitcast i32* %5 to i8*, !dbg !4856
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #21, !dbg !4856
  %7 = icmp eq i32* %0, null, !dbg !4857
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4859
  call void @llvm.dbg.value(metadata i32* %8, metadata !4846, metadata !DIExpression()), !dbg !4855
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #21, !dbg !4860
  call void @llvm.dbg.value(metadata i64 %9, metadata !4850, metadata !DIExpression()), !dbg !4855
  %10 = icmp ugt i64 %9, -3, !dbg !4861
  %11 = icmp ne i64 %2, 0, !dbg !4862
  %12 = and i1 %11, %10, !dbg !4863
  br i1 %12, label %13, label %18, !dbg !4863

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #21, !dbg !4864
  br i1 %14, label %18, label %15, !dbg !4865

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4866, !tbaa !1544
  call void @llvm.dbg.value(metadata i8 %16, metadata !4852, metadata !DIExpression()), !dbg !4867
  %17 = zext i8 %16 to i32, !dbg !4868
  store i32 %17, i32* %8, align 4, !dbg !4869, !tbaa !1575
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4855
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #21, !dbg !4870
  ret i64 %19, !dbg !4870
}

; Function Attrs: nounwind
declare !dbg !904 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4871 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4877, metadata !DIExpression()), !dbg !4882
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #21, !dbg !4883
  call void @llvm.dbg.value(metadata i1 undef, metadata !4878, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4884, metadata !DIExpression()), !dbg !4887
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4889
  %4 = load i32, i32* %3, align 8, !dbg !4889, !tbaa !1762
  %5 = and i32 %4, 32, !dbg !4889
  %6 = icmp eq i32 %5, 0, !dbg !4890
  call void @llvm.dbg.value(metadata i1 %6, metadata !4880, metadata !DIExpression()), !dbg !4882
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #21, !dbg !4891
  %8 = icmp ne i32 %7, 0, !dbg !4892
  call void @llvm.dbg.value(metadata i1 %8, metadata !4881, metadata !DIExpression()), !dbg !4882
  br i1 %6, label %9, label %19, !dbg !4893

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4895
  call void @llvm.dbg.value(metadata i1 %10, metadata !4878, metadata !DIExpression()), !dbg !4882
  %11 = xor i1 %8, true, !dbg !4896
  %12 = or i1 %10, %11, !dbg !4896
  %13 = sext i1 %8 to i32, !dbg !4896
  br i1 %12, label %22, label %14, !dbg !4896

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #26, !dbg !4897
  %16 = load i32, i32* %15, align 4, !dbg !4897, !tbaa !1575
  %17 = icmp ne i32 %16, 9, !dbg !4898
  %18 = sext i1 %17 to i32, !dbg !4899
  br label %22, !dbg !4899

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4900

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #26, !dbg !4902
  store i32 0, i32* %21, align 4, !dbg !4904, !tbaa !1575
  br label %22, !dbg !4902

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4882
  ret i32 %23, !dbg !4905
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4906 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4908, metadata !DIExpression()), !dbg !4913
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4914
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #21, !dbg !4914
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4909, metadata !DIExpression()), !dbg !4915
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #21, !dbg !4916
  %5 = icmp eq i32 %4, 0, !dbg !4916
  br i1 %5, label %6, label %13, !dbg !4918

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4919
  %8 = load i16, i16* %7, align 16, !dbg !4919
  %9 = icmp eq i16 %8, 67, !dbg !4919
  br i1 %9, label %13, label %10, !dbg !4920

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.196, i64 0, i64 0), i64 6), !dbg !4921
  %12 = icmp ne i32 %11, 0, !dbg !4922
  br label %13, !dbg !4920

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4913
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #21, !dbg !4923
  ret i1 %14, !dbg !4923
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4924 {
  %1 = tail call i8* @nl_langinfo(i32 14) #21, !dbg !4927
  call void @llvm.dbg.value(metadata i8* %1, metadata !4926, metadata !DIExpression()), !dbg !4928
  %2 = icmp eq i8* %1, null, !dbg !4929
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.199, i64 0, i64 0), i8* %1, !dbg !4931
  call void @llvm.dbg.value(metadata i8* %3, metadata !4926, metadata !DIExpression()), !dbg !4928
  %4 = load i8, i8* %3, align 1, !dbg !4932, !tbaa !1544
  %5 = icmp eq i8 %4, 0, !dbg !4936
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.200, i64 0, i64 0), i8* %3, !dbg !4937
  call void @llvm.dbg.value(metadata i8* %6, metadata !4926, metadata !DIExpression()), !dbg !4928
  ret i8* %6, !dbg !4938
}

; Function Attrs: nounwind
declare !dbg !1355 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4939 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4943, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i8* %1, metadata !4944, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i64 %2, metadata !4945, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i32 %0, metadata !4947, metadata !DIExpression()) #21, !dbg !4956
  call void @llvm.dbg.value(metadata i8* %1, metadata !4950, metadata !DIExpression()) #21, !dbg !4956
  call void @llvm.dbg.value(metadata i64 %2, metadata !4951, metadata !DIExpression()) #21, !dbg !4956
  call void @llvm.dbg.value(metadata i32 %0, metadata !4958, metadata !DIExpression()) #21, !dbg !4964
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #21, !dbg !4966
  call void @llvm.dbg.value(metadata i8* %4, metadata !4963, metadata !DIExpression()) #21, !dbg !4964
  call void @llvm.dbg.value(metadata i8* %4, metadata !4952, metadata !DIExpression()) #21, !dbg !4956
  %5 = icmp eq i8* %4, null, !dbg !4967
  br i1 %5, label %6, label %9, !dbg !4968

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4969
  br i1 %7, label %19, label %8, !dbg !4972

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4973, !tbaa !1544
  br label %19, !dbg !4974

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #23, !dbg !4975
  call void @llvm.dbg.value(metadata i64 %10, metadata !4953, metadata !DIExpression()) #21, !dbg !4976
  %11 = icmp ult i64 %10, %2, !dbg !4977
  br i1 %11, label %12, label %14, !dbg !4979

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4980
  call void @llvm.dbg.value(metadata i8* %1, metadata !4982, metadata !DIExpression()) #21, !dbg !4987
  call void @llvm.dbg.value(metadata i8* %4, metadata !4985, metadata !DIExpression()) #21, !dbg !4987
  call void @llvm.dbg.value(metadata i64 %13, metadata !4986, metadata !DIExpression()) #21, !dbg !4987
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #21, !dbg !4989
  br label %19, !dbg !4990

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4991
  br i1 %15, label %19, label %16, !dbg !4994

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4995
  call void @llvm.dbg.value(metadata i8* %1, metadata !4982, metadata !DIExpression()) #21, !dbg !4997
  call void @llvm.dbg.value(metadata i8* %4, metadata !4985, metadata !DIExpression()) #21, !dbg !4997
  call void @llvm.dbg.value(metadata i64 %17, metadata !4986, metadata !DIExpression()) #21, !dbg !4997
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #21, !dbg !4999
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !5000
  store i8 0, i8* %18, align 1, !dbg !5001, !tbaa !1544
  br label %19, !dbg !5002

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !5003
  ret i32 %20, !dbg !5004
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !5005 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5007, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.value(metadata i32 %0, metadata !4958, metadata !DIExpression()) #21, !dbg !5009
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #21, !dbg !5011
  call void @llvm.dbg.value(metadata i8* %2, metadata !4963, metadata !DIExpression()) #21, !dbg !5009
  ret i8* %2, !dbg !5012
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
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind readonly }
attributes #12 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind }
attributes #18 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind }
attributes #22 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nounwind readonly }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind readnone }
attributes #27 = { cold }

!llvm.dbg.cu = !{!2, !300, !305, !356, !401, !557, !600, !651, !699, !701, !407, !448, !704, !551, !746, !766, !769, !773, !776, !819, !860, !901, !920, !958, !965, !1358}
!llvm.ident = !{!1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361, !1361}
!llvm.module.flags = !{!1362, !1363, !1364, !1365, !1366}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "skip_chars", scope: !2, file: !3, line: 57, type: !137, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !73, globals: !247, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/uniq.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !11, !15, !20, !28, !35, !49, !58}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Skip_field_option_type", file: !3, line: 469, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "SFO_NONE", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "SFO_OBSOLETE", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "SFO_NEW", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "countmode", file: !3, line: 62, baseType: !6, size: 32, elements: !12)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "count_occurrences", value: 0, isUnsigned: true)
!14 = !DIEnumerator(name: "count_none", value: 1, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "delimit_method", file: !3, line: 82, baseType: !6, size: 32, elements: !16)
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "DM_NONE", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "DM_PREPEND", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "DM_SEPARATE", value: 2, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !21, line: 25, baseType: !6, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23, !24, !25, !26, !27}
!23 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "grouping_method", file: !3, line: 107, baseType: !6, size: 32, elements: !29)
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "GM_NONE", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "GM_PREPEND", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "GM_APPEND", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "GM_SEPARATE", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "GM_BOTH", value: 4, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !36, line: 32, baseType: !6, size: 32, elements: !37)
!36 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!38 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!41 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!42 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!43 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!44 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!45 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!46 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!47 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!48 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 45, baseType: !6, size: 32, elements: !51)
!50 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!51 = !{!52, !53, !54, !55, !56, !57}
!52 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!55 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!56 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !59, line: 46, baseType: !6, size: 32, elements: !60)
!59 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!61 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!62 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!63 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!64 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!65 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!66 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!67 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!68 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!69 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!70 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!71 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!72 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!73 = !{!74, !84, !145, !135, !149, !153, !157, !160, !161, !167, !182, !186, !190, !195, !137, !196, !78, !198, !202, !206, !210, !213, !216, !226, !80, !229, !232, !236, !239, !82, !115, !242, !246}
!74 = !DISubprogram(name: "dcgettext", scope: !75, file: !75, line: 51, type: !76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!75 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!76 = !DISubroutineType(types: !77)
!77 = !{!78, !80, !80, !82}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !{}
!84 = !DISubprogram(name: "fputs_unlocked", scope: !85, file: !85, line: 662, type: !86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!85 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!86 = !DISubroutineType(types: !87)
!87 = !{!82, !80, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !91)
!90 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !107, !108, !109, !110, !114, !116, !118, !122, !125, !127, !130, !133, !134, !136, !140, !141}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !89, file: !90, line: 51, baseType: !82, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !89, file: !90, line: 54, baseType: !78, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !89, file: !90, line: 55, baseType: !78, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !89, file: !90, line: 56, baseType: !78, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !89, file: !90, line: 57, baseType: !78, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !89, file: !90, line: 58, baseType: !78, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !89, file: !90, line: 59, baseType: !78, size: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !89, file: !90, line: 60, baseType: !78, size: 64, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !89, file: !90, line: 61, baseType: !78, size: 64, offset: 512)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !89, file: !90, line: 64, baseType: !78, size: 64, offset: 576)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !89, file: !90, line: 65, baseType: !78, size: 64, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !89, file: !90, line: 66, baseType: !78, size: 64, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !89, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !90, line: 36, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !89, file: !90, line: 70, baseType: !88, size: 64, offset: 832)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !89, file: !90, line: 72, baseType: !82, size: 32, offset: 896)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !89, file: !90, line: 73, baseType: !82, size: 32, offset: 928)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !89, file: !90, line: 74, baseType: !111, size: 64, offset: 960)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !112, line: 152, baseType: !113)
!112 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!113 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !89, file: !90, line: 77, baseType: !115, size: 16, offset: 1024)
!115 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !89, file: !90, line: 78, baseType: !117, size: 8, offset: 1040)
!117 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !89, file: !90, line: 79, baseType: !119, size: 8, offset: 1048)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 8, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 1)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !89, file: !90, line: 81, baseType: !123, size: 64, offset: 1088)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !90, line: 43, baseType: null)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !89, file: !90, line: 89, baseType: !126, size: 64, offset: 1152)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !112, line: 153, baseType: !113)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !89, file: !90, line: 91, baseType: !128, size: 64, offset: 1216)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !90, line: 37, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !89, file: !90, line: 92, baseType: !131, size: 64, offset: 1280)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !90, line: 38, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !89, file: !90, line: 93, baseType: !88, size: 64, offset: 1344)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !89, file: !90, line: 94, baseType: !135, size: 64, offset: 1408)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !89, file: !90, line: 95, baseType: !137, size: 64, offset: 1472)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 46, baseType: !139)
!138 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!139 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !89, file: !90, line: 96, baseType: !82, size: 32, offset: 1536)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !89, file: !90, line: 98, baseType: !142, size: 160, offset: 1568)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 160, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 20)
!145 = !DISubprogram(name: "getenv", scope: !146, file: !146, line: 634, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!146 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!147 = !DISubroutineType(types: !148)
!148 = !{!78, !80}
!149 = !DISubprogram(name: "set_program_name", scope: !150, file: !150, line: 37, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!150 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!151 = !DISubroutineType(types: !152)
!152 = !{null, !80}
!153 = !DISubprogram(name: "setlocale", scope: !154, file: !154, line: 122, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!154 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!155 = !DISubroutineType(types: !156)
!156 = !{!78, !82, !80}
!157 = !DISubprogram(name: "bindtextdomain", scope: !75, file: !75, line: 86, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!158 = !DISubroutineType(types: !159)
!159 = !{!78, !80, !80}
!160 = !DISubprogram(name: "textdomain", scope: !75, file: !75, line: 82, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!161 = !DISubprogram(name: "atexit", scope: !146, file: !146, line: 595, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!162 = !DISubroutineType(types: !163)
!163 = !{!82, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null}
!167 = !DISubprogram(name: "getopt_long", scope: !168, file: !168, line: 66, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!168 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!169 = !DISubroutineType(types: !170)
!170 = !{!82, !82, !171, !80, !173, !180}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !168, line: 50, size: 256, elements: !176)
!176 = !{!177, !178, !179, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !168, line: 52, baseType: !80, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !175, file: !168, line: 55, baseType: !82, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !175, file: !168, line: 56, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !175, file: !168, line: 57, baseType: !82, size: 32, offset: 192)
!182 = !DISubprogram(name: "quote", scope: !183, file: !183, line: 44, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!183 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !DISubroutineType(types: !185)
!185 = !{!80, !80}
!186 = !DISubprogram(name: "error", scope: !187, file: !187, line: 52, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!187 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!188 = !DISubroutineType(types: !189)
!189 = !{null, !82, !82, !80, null}
!190 = !DISubprogram(name: "xstrtoumax", scope: !21, file: !21, line: 48, type: !191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!191 = !DISubroutineType(types: !192)
!192 = !{!20, !80, !193, !82, !194, !80}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!198 = !DISubprogram(name: "version_etc", scope: !199, file: !199, line: 69, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!199 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!200 = !DISubroutineType(types: !201)
!201 = !{null, !88, !80, !80, !80, null}
!202 = !DISubprogram(name: "posix2_version", scope: !203, file: !203, line: 1, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!203 = !DIFile(filename: "./lib/posixver.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!204 = !DISubroutineType(types: !205)
!205 = !{!82}
!206 = !DISubprogram(name: "freopen_safer", scope: !207, file: !207, line: 27, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!207 = !DIFile(filename: "./lib/stdio-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!208 = !DISubroutineType(types: !209)
!209 = !{!88, !80, !80, !88}
!210 = !DISubprogram(name: "quotearg_n_style_colon", scope: !36, file: !36, line: 397, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!211 = !DISubroutineType(types: !212)
!212 = !{!78, !82, !35, !80}
!213 = !DISubprogram(name: "fadvise", scope: !50, file: !50, line: 72, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !88, !49}
!216 = !DISubprogram(name: "initbuffer", scope: !217, file: !217, line: 34, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!217 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!218 = !DISubroutineType(types: !219)
!219 = !{null, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !217, line: 26, size: 192, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !221, file: !217, line: 28, baseType: !137, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !221, file: !217, line: 29, baseType: !137, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !221, file: !217, line: 30, baseType: !78, size: 64, offset: 128)
!226 = !DISubprogram(name: "readlinebuffer_delim", scope: !217, file: !217, line: 41, type: !227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!227 = !DISubroutineType(types: !228)
!228 = !{!220, !220, !88, !79}
!229 = !DISubprogram(name: "fwrite_unlocked", scope: !85, file: !85, line: 675, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!230 = !DISubroutineType(types: !231)
!231 = !{!139, !196, !139, !139, !88}
!232 = !DISubprogram(name: "rpl_fclose", scope: !233, file: !233, line: 672, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!233 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!234 = !DISubroutineType(types: !235)
!235 = !{!82, !88}
!236 = !DISubprogram(name: "quotearg_style", scope: !36, file: !36, line: 377, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!237 = !DISubroutineType(types: !238)
!238 = !{!78, !35, !80}
!239 = !DISubprogram(name: "free", scope: !146, file: !146, line: 565, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !135}
!242 = !DISubprogram(name: "memcasecmp", scope: !243, file: !243, line: 22, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!243 = !DIFile(filename: "./lib/memcasecmp.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!244 = !DISubroutineType(types: !245)
!245 = !{!82, !196, !196, !139}
!246 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!247 = !{!248, !0, !250, !252, !254, !257, !259, !261, !263, !265, !270, !276, !282, !284, !288}
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "skip_fields", scope: !2, file: !3, line: 54, type: !137, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "check_chars", scope: !2, file: !3, line: 60, type: !137, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "countmode", scope: !2, file: !3, line: 70, type: !11, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "output_unique", scope: !2, file: !3, line: 75, type: !256, isLocal: true, isDefinition: true)
!256 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "output_first_repeated", scope: !2, file: !3, line: 76, type: !256, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "output_later_repeated", scope: !2, file: !3, line: 77, type: !256, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "ignore_case", scope: !2, file: !3, line: 80, type: !256, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "delimit_groups", scope: !2, file: !3, line: 105, type: !15, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 142, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 3328, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 13)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "delimit_method_map", scope: !2, file: !3, line: 99, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 96, elements: !274)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!274 = !{!275}
!275 = !DISubrange(count: 3)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "delimit_method_string", scope: !2, file: !3, line: 94, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 256, elements: !280)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!280 = !{!281}
!281 = !DISubrange(count: 4)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "grouping", scope: !2, file: !3, line: 135, type: !28, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "grouping_method_map", scope: !2, file: !3, line: 130, type: !286, isLocal: true, isDefinition: true)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 128, elements: !280)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "grouping_method_string", scope: !2, file: !3, line: 125, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 320, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 5)
!293 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!294 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!295 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!296 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!297 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "Version", scope: !300, file: !301, line: 2, type: !80, isLocal: false, isDefinition: true)
!300 = distinct !DICompileUnit(language: DW_LANG_C99, file: !301, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, globals: !302, splitDebugInlining: false, nameTableKind: None)
!301 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!302 = !{!298}
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !305, file: !306, line: 67, type: !352, isLocal: false, isDefinition: true)
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !307, retainedTypes: !308, globals: !351, splitDebugInlining: false, nameTableKind: None)
!306 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!307 = !{!35}
!308 = !{!135, !80, !74, !309, !310, !186, !313, !182, !348, !246}
!309 = !DISubprogram(name: "quotearg_n_style", scope: !36, file: !36, line: 368, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!310 = !DISubprogram(name: "quote_n", scope: !183, file: !183, line: 40, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!311 = !DISubroutineType(types: !312)
!312 = !{!80, !82, !80}
!313 = !DISubprogram(name: "fputs_unlocked", scope: !85, file: !85, line: 662, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!314 = !DISubroutineType(types: !315)
!315 = !{!82, !80, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !317, file: !90, line: 51, baseType: !82, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !317, file: !90, line: 54, baseType: !78, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !317, file: !90, line: 55, baseType: !78, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !317, file: !90, line: 56, baseType: !78, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !317, file: !90, line: 57, baseType: !78, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !317, file: !90, line: 58, baseType: !78, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !317, file: !90, line: 59, baseType: !78, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !317, file: !90, line: 60, baseType: !78, size: 64, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !317, file: !90, line: 61, baseType: !78, size: 64, offset: 512)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !317, file: !90, line: 64, baseType: !78, size: 64, offset: 576)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !317, file: !90, line: 65, baseType: !78, size: 64, offset: 640)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !317, file: !90, line: 66, baseType: !78, size: 64, offset: 704)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !317, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !317, file: !90, line: 70, baseType: !316, size: 64, offset: 832)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !317, file: !90, line: 72, baseType: !82, size: 32, offset: 896)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !317, file: !90, line: 73, baseType: !82, size: 32, offset: 928)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !317, file: !90, line: 74, baseType: !111, size: 64, offset: 960)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !317, file: !90, line: 77, baseType: !115, size: 16, offset: 1024)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !317, file: !90, line: 78, baseType: !117, size: 8, offset: 1040)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !317, file: !90, line: 79, baseType: !119, size: 8, offset: 1048)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !317, file: !90, line: 81, baseType: !123, size: 64, offset: 1088)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !317, file: !90, line: 89, baseType: !126, size: 64, offset: 1152)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !317, file: !90, line: 91, baseType: !128, size: 64, offset: 1216)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !317, file: !90, line: 92, baseType: !131, size: 64, offset: 1280)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !317, file: !90, line: 93, baseType: !316, size: 64, offset: 1344)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !317, file: !90, line: 94, baseType: !135, size: 64, offset: 1408)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !317, file: !90, line: 95, baseType: !137, size: 64, offset: 1472)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !317, file: !90, line: 96, baseType: !82, size: 32, offset: 1536)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !317, file: !90, line: 98, baseType: !142, size: 160, offset: 1568)
!348 = !DISubprogram(name: "usage", scope: !306, file: !306, line: 56, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !82}
!351 = !{!303}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !353, line: 61, baseType: !164)
!353 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "file_name", scope: !356, file: !357, line: 46, type: !80, isLocal: true, isDefinition: true)
!356 = distinct !DICompileUnit(language: DW_LANG_C99, file: !357, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !358, globals: !396, splitDebugInlining: false, nameTableKind: None)
!357 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!358 = !{!359, !74, !395, !186}
!359 = !DISubprogram(name: "close_stream", scope: !360, file: !360, line: 2, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!360 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!361 = !DISubroutineType(types: !362)
!362 = !{!82, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !365)
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !364, file: !90, line: 51, baseType: !82, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !364, file: !90, line: 54, baseType: !78, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !364, file: !90, line: 55, baseType: !78, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !364, file: !90, line: 56, baseType: !78, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !364, file: !90, line: 57, baseType: !78, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !364, file: !90, line: 58, baseType: !78, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !364, file: !90, line: 59, baseType: !78, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !364, file: !90, line: 60, baseType: !78, size: 64, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !364, file: !90, line: 61, baseType: !78, size: 64, offset: 512)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !364, file: !90, line: 64, baseType: !78, size: 64, offset: 576)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !364, file: !90, line: 65, baseType: !78, size: 64, offset: 640)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !364, file: !90, line: 66, baseType: !78, size: 64, offset: 704)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !364, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !364, file: !90, line: 70, baseType: !363, size: 64, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !364, file: !90, line: 72, baseType: !82, size: 32, offset: 896)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !364, file: !90, line: 73, baseType: !82, size: 32, offset: 928)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !364, file: !90, line: 74, baseType: !111, size: 64, offset: 960)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !364, file: !90, line: 77, baseType: !115, size: 16, offset: 1024)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !364, file: !90, line: 78, baseType: !117, size: 8, offset: 1040)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !364, file: !90, line: 79, baseType: !119, size: 8, offset: 1048)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !364, file: !90, line: 81, baseType: !123, size: 64, offset: 1088)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !364, file: !90, line: 89, baseType: !126, size: 64, offset: 1152)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !364, file: !90, line: 91, baseType: !128, size: 64, offset: 1216)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !364, file: !90, line: 92, baseType: !131, size: 64, offset: 1280)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !364, file: !90, line: 93, baseType: !363, size: 64, offset: 1344)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !364, file: !90, line: 94, baseType: !135, size: 64, offset: 1408)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !364, file: !90, line: 95, baseType: !137, size: 64, offset: 1472)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !364, file: !90, line: 96, baseType: !82, size: 32, offset: 1536)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !364, file: !90, line: 98, baseType: !142, size: 160, offset: 1568)
!395 = !DISubprogram(name: "quotearg_colon", scope: !36, file: !36, line: 391, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!396 = !{!354, !397}
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !356, file: !357, line: 56, type: !256, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "exit_failure", scope: !401, file: !402, line: 24, type: !404, isLocal: false, isDefinition: true)
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, globals: !403, splitDebugInlining: false, nameTableKind: None)
!402 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!403 = !{!399}
!404 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !82)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "program_name", scope: !407, file: !408, line: 33, type: !80, isLocal: false, isDefinition: true)
!407 = distinct !DICompileUnit(language: DW_LANG_C99, file: !408, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !409, globals: !445, splitDebugInlining: false, nameTableKind: None)
!408 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!409 = !{!135, !410, !78}
!410 = !DISubprogram(name: "fputs", scope: !85, file: !85, line: 626, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!411 = !DISubroutineType(types: !412)
!412 = !{!82, !80, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !414, file: !90, line: 51, baseType: !82, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !414, file: !90, line: 54, baseType: !78, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !414, file: !90, line: 55, baseType: !78, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !414, file: !90, line: 56, baseType: !78, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !414, file: !90, line: 57, baseType: !78, size: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !414, file: !90, line: 58, baseType: !78, size: 64, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !414, file: !90, line: 59, baseType: !78, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !414, file: !90, line: 60, baseType: !78, size: 64, offset: 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !414, file: !90, line: 61, baseType: !78, size: 64, offset: 512)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !414, file: !90, line: 64, baseType: !78, size: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !414, file: !90, line: 65, baseType: !78, size: 64, offset: 640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !414, file: !90, line: 66, baseType: !78, size: 64, offset: 704)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !414, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !414, file: !90, line: 70, baseType: !413, size: 64, offset: 832)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !414, file: !90, line: 72, baseType: !82, size: 32, offset: 896)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !414, file: !90, line: 73, baseType: !82, size: 32, offset: 928)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !414, file: !90, line: 74, baseType: !111, size: 64, offset: 960)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !414, file: !90, line: 77, baseType: !115, size: 16, offset: 1024)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !414, file: !90, line: 78, baseType: !117, size: 8, offset: 1040)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !414, file: !90, line: 79, baseType: !119, size: 8, offset: 1048)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !414, file: !90, line: 81, baseType: !123, size: 64, offset: 1088)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !414, file: !90, line: 89, baseType: !126, size: 64, offset: 1152)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !414, file: !90, line: 91, baseType: !128, size: 64, offset: 1216)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !414, file: !90, line: 92, baseType: !131, size: 64, offset: 1280)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !414, file: !90, line: 93, baseType: !413, size: 64, offset: 1344)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !414, file: !90, line: 94, baseType: !135, size: 64, offset: 1408)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !414, file: !90, line: 95, baseType: !137, size: 64, offset: 1472)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !414, file: !90, line: 96, baseType: !82, size: 32, offset: 1536)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !414, file: !90, line: 98, baseType: !142, size: 160, offset: 1568)
!445 = !{!405}
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !448, file: !449, line: 85, type: !546, isLocal: false, isDefinition: true)
!448 = distinct !DICompileUnit(language: DW_LANG_C99, file: !449, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !450, retainedTypes: !456, globals: !519, splitDebugInlining: false, nameTableKind: None)
!449 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!450 = !{!35, !451, !58}
!451 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !36, line: 242, baseType: !6, size: 32, elements: !452)
!452 = !{!453, !454, !455}
!453 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!454 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!455 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!456 = !{!457, !461, !239, !476, !82, !115, !479, !137, !494, !498, !74, !504, !508, !78, !512, !515, !516}
!457 = !DISubprogram(name: "xmemdup", scope: !458, file: !458, line: 62, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!458 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!459 = !DISubroutineType(types: !460)
!460 = !{!135, !196, !139}
!461 = !DISubprogram(name: "quotearg_alloc_mem", scope: !36, file: !36, line: 342, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!462 = !DISubroutineType(types: !463)
!463 = !{!78, !80, !139, !194, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !449, line: 65, size: 448, elements: !467)
!467 = !{!468, !469, !470, !474, !475}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !466, file: !449, line: 68, baseType: !35, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !449, line: 71, baseType: !82, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !466, file: !449, line: 75, baseType: !471, size: 256, offset: 64)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 8)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !466, file: !449, line: 78, baseType: !80, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !466, file: !449, line: 81, baseType: !80, size: 64, offset: 384)
!476 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !36, file: !36, line: 408, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!477 = !DISubroutineType(types: !478)
!478 = !{!78, !82, !80, !80, !80, !139}
!479 = !DISubprogram(name: "rpl_mbrtowc", scope: !480, file: !480, line: 717, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!480 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!481 = !DISubroutineType(types: !482)
!482 = !{!139, !180, !80, !139, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !485, line: 13, size: 64, elements: !486)
!485 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !484, file: !485, line: 15, baseType: !82, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !484, file: !485, line: 20, baseType: !489, size: 32, offset: 32)
!489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !485, line: 16, size: 32, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !489, file: !485, line: 18, baseType: !6, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !489, file: !485, line: 19, baseType: !493, size: 32)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 32, elements: !280)
!494 = !DISubprogram(name: "iswprint", scope: !495, file: !495, line: 120, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!495 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!496 = !DISubroutineType(types: !497)
!497 = !{!82, !6}
!498 = !DISubprogram(name: "mbsinit", scope: !499, file: !499, line: 292, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!499 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!500 = !DISubroutineType(types: !501)
!501 = !{!82, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!504 = !DISubprogram(name: "locale_charset", scope: !505, file: !505, line: 35, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!505 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!506 = !DISubroutineType(types: !507)
!507 = !{!80}
!508 = !DISubprogram(name: "c_strcasecmp", scope: !509, file: !509, line: 42, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!509 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!510 = !DISubroutineType(types: !511)
!511 = !{!82, !80, !80}
!512 = !DISubprogram(name: "xmalloc", scope: !458, file: !458, line: 53, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!513 = !DISubroutineType(types: !514)
!514 = !{!135, !139}
!515 = !DISubprogram(name: "xalloc_die", scope: !458, file: !458, line: 51, type: !165, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !83)
!516 = !DISubprogram(name: "xrealloc", scope: !458, file: !458, line: 59, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!517 = !DISubroutineType(types: !518)
!518 = !{!135, !135, !139}
!519 = !{!446, !520, !526, !528, !530, !535, !542, !544}
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !448, file: !449, line: 101, type: !522, isLocal: false, isDefinition: true)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 320, elements: !524)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!524 = !{!525}
!525 = !DISubrange(count: 10)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !448, file: !449, line: 1052, type: !466, isLocal: false, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !448, file: !449, line: 116, type: !466, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "slot0", scope: !448, file: !449, line: 842, type: !532, isLocal: true, isDefinition: true)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 2048, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 256)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "slotvec", scope: !448, file: !449, line: 845, type: !537, isLocal: true, isDefinition: true)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !449, line: 834, size: 128, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !538, file: !449, line: 836, baseType: !137, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !538, file: !449, line: 837, baseType: !78, size: 64, offset: 64)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "nslots", scope: !448, file: !449, line: 843, type: !82, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "slotvec0", scope: !448, file: !449, line: 844, type: !538, isLocal: true, isDefinition: true)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 704, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 11)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !551, file: !552, line: 26, type: !554, isLocal: false, isDefinition: true)
!551 = distinct !DICompileUnit(language: DW_LANG_C99, file: !552, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, globals: !553, splitDebugInlining: false, nameTableKind: None)
!552 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!553 = !{!549}
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 376, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 47)
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !559, retainedTypes: !560, splitDebugInlining: false, nameTableKind: None)
!558 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!559 = !{!49}
!560 = !{!561, !565}
!561 = !DISubprogram(name: "posix_fadvise", scope: !562, file: !562, line: 288, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!562 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!563 = !DISubroutineType(types: !564)
!564 = !{!82, !82, !113, !113, !82}
!565 = !DISubprogram(name: "fileno", scope: !85, file: !85, line: 786, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!566 = !DISubroutineType(types: !567)
!567 = !{!82, !568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !569, file: !90, line: 51, baseType: !82, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !569, file: !90, line: 54, baseType: !78, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !569, file: !90, line: 55, baseType: !78, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !569, file: !90, line: 56, baseType: !78, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !569, file: !90, line: 57, baseType: !78, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !569, file: !90, line: 58, baseType: !78, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !569, file: !90, line: 59, baseType: !78, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !569, file: !90, line: 60, baseType: !78, size: 64, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !569, file: !90, line: 61, baseType: !78, size: 64, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !569, file: !90, line: 64, baseType: !78, size: 64, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !569, file: !90, line: 65, baseType: !78, size: 64, offset: 640)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !569, file: !90, line: 66, baseType: !78, size: 64, offset: 704)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !569, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !569, file: !90, line: 70, baseType: !568, size: 64, offset: 832)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !569, file: !90, line: 72, baseType: !82, size: 32, offset: 896)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !569, file: !90, line: 73, baseType: !82, size: 32, offset: 928)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !569, file: !90, line: 74, baseType: !111, size: 64, offset: 960)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !569, file: !90, line: 77, baseType: !115, size: 16, offset: 1024)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !569, file: !90, line: 78, baseType: !117, size: 8, offset: 1040)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !569, file: !90, line: 79, baseType: !119, size: 8, offset: 1048)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !569, file: !90, line: 81, baseType: !123, size: 64, offset: 1088)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !569, file: !90, line: 89, baseType: !126, size: 64, offset: 1152)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !569, file: !90, line: 91, baseType: !128, size: 64, offset: 1216)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !569, file: !90, line: 92, baseType: !131, size: 64, offset: 1280)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !569, file: !90, line: 93, baseType: !568, size: 64, offset: 1344)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !569, file: !90, line: 94, baseType: !135, size: 64, offset: 1408)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !569, file: !90, line: 95, baseType: !137, size: 64, offset: 1472)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !569, file: !90, line: 96, baseType: !82, size: 32, offset: 1536)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !569, file: !90, line: 98, baseType: !142, size: 160, offset: 1568)
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !602, splitDebugInlining: false, nameTableKind: None)
!601 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!602 = !{!603, !638, !642, !645, !648}
!603 = !DISubprogram(name: "fileno", scope: !85, file: !85, line: 786, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!604 = !DISubroutineType(types: !605)
!605 = !{!82, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !607, file: !90, line: 51, baseType: !82, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !607, file: !90, line: 54, baseType: !78, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !607, file: !90, line: 55, baseType: !78, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !607, file: !90, line: 56, baseType: !78, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !607, file: !90, line: 57, baseType: !78, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !607, file: !90, line: 58, baseType: !78, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !607, file: !90, line: 59, baseType: !78, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !607, file: !90, line: 60, baseType: !78, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !607, file: !90, line: 61, baseType: !78, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !607, file: !90, line: 64, baseType: !78, size: 64, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !607, file: !90, line: 65, baseType: !78, size: 64, offset: 640)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !607, file: !90, line: 66, baseType: !78, size: 64, offset: 704)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !607, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !607, file: !90, line: 70, baseType: !606, size: 64, offset: 832)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !607, file: !90, line: 72, baseType: !82, size: 32, offset: 896)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !607, file: !90, line: 73, baseType: !82, size: 32, offset: 928)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !607, file: !90, line: 74, baseType: !111, size: 64, offset: 960)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !607, file: !90, line: 77, baseType: !115, size: 16, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !607, file: !90, line: 78, baseType: !117, size: 8, offset: 1040)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !607, file: !90, line: 79, baseType: !119, size: 8, offset: 1048)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !607, file: !90, line: 81, baseType: !123, size: 64, offset: 1088)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !607, file: !90, line: 89, baseType: !126, size: 64, offset: 1152)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !607, file: !90, line: 91, baseType: !128, size: 64, offset: 1216)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !607, file: !90, line: 92, baseType: !131, size: 64, offset: 1280)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !607, file: !90, line: 93, baseType: !606, size: 64, offset: 1344)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !607, file: !90, line: 94, baseType: !135, size: 64, offset: 1408)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !607, file: !90, line: 95, baseType: !137, size: 64, offset: 1472)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !607, file: !90, line: 96, baseType: !82, size: 32, offset: 1536)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !607, file: !90, line: 98, baseType: !142, size: 160, offset: 1568)
!638 = !DISubprogram(name: "dup2", scope: !639, file: !639, line: 534, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!639 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!640 = !DISubroutineType(types: !641)
!641 = !{!82, !82, !82}
!642 = !DISubprogram(name: "freopen", scope: !85, file: !85, line: 252, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!643 = !DISubroutineType(types: !644)
!644 = !{!606, !80, !80, !606}
!645 = !DISubprogram(name: "close", scope: !639, file: !639, line: 353, type: !646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!646 = !DISubroutineType(types: !647)
!647 = !{!82, !82}
!648 = !DISubprogram(name: "open", scope: !562, file: !562, line: 196, type: !649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!649 = !DISubroutineType(types: !650)
!650 = !{!82, !80, !82, null}
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !653, splitDebugInlining: false, nameTableKind: None)
!652 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!653 = !{!654, !695, !239, !698}
!654 = !DISubprogram(name: "readlinebuffer_delim", scope: !217, file: !217, line: 41, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!655 = !DISubroutineType(types: !656)
!656 = !{!657, !657, !663, !79}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !217, line: 26, size: 192, elements: !659)
!659 = !{!660, !661, !662}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !658, file: !217, line: 28, baseType: !137, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !658, file: !217, line: 29, baseType: !137, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !658, file: !217, line: 30, baseType: !78, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !664, file: !90, line: 51, baseType: !82, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !664, file: !90, line: 54, baseType: !78, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !664, file: !90, line: 55, baseType: !78, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !664, file: !90, line: 56, baseType: !78, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !664, file: !90, line: 57, baseType: !78, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !664, file: !90, line: 58, baseType: !78, size: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !664, file: !90, line: 59, baseType: !78, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !664, file: !90, line: 60, baseType: !78, size: 64, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !664, file: !90, line: 61, baseType: !78, size: 64, offset: 512)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !664, file: !90, line: 64, baseType: !78, size: 64, offset: 576)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !664, file: !90, line: 65, baseType: !78, size: 64, offset: 640)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !664, file: !90, line: 66, baseType: !78, size: 64, offset: 704)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !664, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !664, file: !90, line: 70, baseType: !663, size: 64, offset: 832)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !664, file: !90, line: 72, baseType: !82, size: 32, offset: 896)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !664, file: !90, line: 73, baseType: !82, size: 32, offset: 928)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !664, file: !90, line: 74, baseType: !111, size: 64, offset: 960)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !664, file: !90, line: 77, baseType: !115, size: 16, offset: 1024)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !664, file: !90, line: 78, baseType: !117, size: 8, offset: 1040)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !664, file: !90, line: 79, baseType: !119, size: 8, offset: 1048)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !664, file: !90, line: 81, baseType: !123, size: 64, offset: 1088)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !664, file: !90, line: 89, baseType: !126, size: 64, offset: 1152)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !664, file: !90, line: 91, baseType: !128, size: 64, offset: 1216)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !664, file: !90, line: 92, baseType: !131, size: 64, offset: 1280)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !664, file: !90, line: 93, baseType: !663, size: 64, offset: 1344)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !664, file: !90, line: 94, baseType: !135, size: 64, offset: 1408)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !664, file: !90, line: 95, baseType: !137, size: 64, offset: 1472)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !664, file: !90, line: 96, baseType: !82, size: 32, offset: 1536)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !664, file: !90, line: 98, baseType: !142, size: 160, offset: 1568)
!695 = !DISubprogram(name: "x2realloc", scope: !458, file: !458, line: 61, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!696 = !DISubroutineType(types: !697)
!697 = !{!135, !135, !194}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!699 = distinct !DICompileUnit(language: DW_LANG_C99, file: !700, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !205, splitDebugInlining: false, nameTableKind: None)
!700 = !DIFile(filename: "lib/memcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!701 = distinct !DICompileUnit(language: DW_LANG_C99, file: !702, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !703, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "lib/posixver.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!703 = !{!145}
!704 = distinct !DICompileUnit(language: DW_LANG_C99, file: !705, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !706, retainedTypes: !710, splitDebugInlining: false, nameTableKind: None)
!705 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!706 = !{!707}
!707 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !705, line: 40, baseType: !6, size: 32, elements: !708)
!708 = !{!709}
!709 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!710 = !{!74, !711, !135}
!711 = !DISubprogram(name: "fputs_unlocked", scope: !85, file: !85, line: 662, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!712 = !DISubroutineType(types: !713)
!713 = !{!82, !80, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !715, file: !90, line: 51, baseType: !82, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !715, file: !90, line: 54, baseType: !78, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !715, file: !90, line: 55, baseType: !78, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !715, file: !90, line: 56, baseType: !78, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !715, file: !90, line: 57, baseType: !78, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !715, file: !90, line: 58, baseType: !78, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !715, file: !90, line: 59, baseType: !78, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !715, file: !90, line: 60, baseType: !78, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !715, file: !90, line: 61, baseType: !78, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !715, file: !90, line: 64, baseType: !78, size: 64, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !715, file: !90, line: 65, baseType: !78, size: 64, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !715, file: !90, line: 66, baseType: !78, size: 64, offset: 704)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !715, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !715, file: !90, line: 70, baseType: !714, size: 64, offset: 832)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !715, file: !90, line: 72, baseType: !82, size: 32, offset: 896)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !715, file: !90, line: 73, baseType: !82, size: 32, offset: 928)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !715, file: !90, line: 74, baseType: !111, size: 64, offset: 960)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !715, file: !90, line: 77, baseType: !115, size: 16, offset: 1024)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !715, file: !90, line: 78, baseType: !117, size: 8, offset: 1040)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !715, file: !90, line: 79, baseType: !119, size: 8, offset: 1048)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !715, file: !90, line: 81, baseType: !123, size: 64, offset: 1088)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !715, file: !90, line: 89, baseType: !126, size: 64, offset: 1152)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !715, file: !90, line: 91, baseType: !128, size: 64, offset: 1216)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !715, file: !90, line: 92, baseType: !131, size: 64, offset: 1280)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !715, file: !90, line: 93, baseType: !714, size: 64, offset: 1344)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !715, file: !90, line: 94, baseType: !135, size: 64, offset: 1408)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !715, file: !90, line: 95, baseType: !137, size: 64, offset: 1472)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !715, file: !90, line: 96, baseType: !82, size: 32, offset: 1536)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !715, file: !90, line: 98, baseType: !142, size: 160, offset: 1568)
!746 = distinct !DICompileUnit(language: DW_LANG_C99, file: !747, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !748, retainedTypes: !760, splitDebugInlining: false, nameTableKind: None)
!747 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!748 = !{!749}
!749 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !750, file: !458, line: 186, baseType: !6, size: 32, elements: !758)
!750 = distinct !DISubprogram(name: "x2nrealloc", scope: !458, file: !458, line: 174, type: !751, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{!135, !135, !195, !137}
!753 = !{!754, !755, !756, !757}
!754 = !DILocalVariable(name: "p", arg: 1, scope: !750, file: !458, line: 174, type: !135)
!755 = !DILocalVariable(name: "pn", arg: 2, scope: !750, file: !458, line: 174, type: !195)
!756 = !DILocalVariable(name: "s", arg: 3, scope: !750, file: !458, line: 174, type: !137)
!757 = !DILocalVariable(name: "n", scope: !750, file: !458, line: 176, type: !137)
!758 = !{!759}
!759 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!760 = !{!137, !515, !512, !516, !78, !239, !135, !761, !764}
!761 = !DISubprogram(name: "xcalloc", scope: !458, file: !458, line: 57, type: !762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!762 = !DISubroutineType(types: !763)
!763 = !{!135, !139, !139}
!764 = !DISubprogram(name: "rpl_calloc", scope: !765, file: !765, line: 688, type: !762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!765 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!766 = distinct !DICompileUnit(language: DW_LANG_C99, file: !767, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !768, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!768 = !{!74, !186}
!769 = distinct !DICompileUnit(language: DW_LANG_C99, file: !770, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !771, retainedTypes: !772, splitDebugInlining: false, nameTableKind: None)
!770 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!771 = !{!20, !58}
!772 = !{!82, !115}
!773 = distinct !DICompileUnit(language: DW_LANG_C99, file: !774, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !775, splitDebugInlining: false, nameTableKind: None)
!774 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!775 = !{!135}
!776 = distinct !DICompileUnit(language: DW_LANG_C99, file: !777, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !778, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!778 = !{!779, !814, !815, !818}
!779 = !DISubprogram(name: "fileno", scope: !85, file: !85, line: 786, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!780 = !DISubroutineType(types: !781)
!781 = !{!82, !782}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !783, file: !90, line: 51, baseType: !82, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !783, file: !90, line: 54, baseType: !78, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !783, file: !90, line: 55, baseType: !78, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !783, file: !90, line: 56, baseType: !78, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !783, file: !90, line: 57, baseType: !78, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !783, file: !90, line: 58, baseType: !78, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !783, file: !90, line: 59, baseType: !78, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !783, file: !90, line: 60, baseType: !78, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !783, file: !90, line: 61, baseType: !78, size: 64, offset: 512)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !783, file: !90, line: 64, baseType: !78, size: 64, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !783, file: !90, line: 65, baseType: !78, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !783, file: !90, line: 66, baseType: !78, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !783, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !783, file: !90, line: 70, baseType: !782, size: 64, offset: 832)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !783, file: !90, line: 72, baseType: !82, size: 32, offset: 896)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !783, file: !90, line: 73, baseType: !82, size: 32, offset: 928)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !783, file: !90, line: 74, baseType: !111, size: 64, offset: 960)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !783, file: !90, line: 77, baseType: !115, size: 16, offset: 1024)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !783, file: !90, line: 78, baseType: !117, size: 8, offset: 1040)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !783, file: !90, line: 79, baseType: !119, size: 8, offset: 1048)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !783, file: !90, line: 81, baseType: !123, size: 64, offset: 1088)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !783, file: !90, line: 89, baseType: !126, size: 64, offset: 1152)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !783, file: !90, line: 91, baseType: !128, size: 64, offset: 1216)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !783, file: !90, line: 92, baseType: !131, size: 64, offset: 1280)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !783, file: !90, line: 93, baseType: !782, size: 64, offset: 1344)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !783, file: !90, line: 94, baseType: !135, size: 64, offset: 1408)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !783, file: !90, line: 95, baseType: !137, size: 64, offset: 1472)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !783, file: !90, line: 96, baseType: !82, size: 32, offset: 1536)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !783, file: !90, line: 98, baseType: !142, size: 160, offset: 1568)
!814 = !DISubprogram(name: "fclose", scope: !85, file: !85, line: 213, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!815 = !DISubprogram(name: "lseek", scope: !639, file: !639, line: 334, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!816 = !DISubroutineType(types: !817)
!817 = !{!113, !82, !113, !82}
!818 = !DISubprogram(name: "rpl_fflush", scope: !233, file: !233, line: 718, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!819 = distinct !DICompileUnit(language: DW_LANG_C99, file: !820, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !821, splitDebugInlining: false, nameTableKind: None)
!820 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!821 = !{!135, !822, !857}
!822 = !DISubprogram(name: "fflush", scope: !85, file: !85, line: 218, type: !823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!823 = !DISubroutineType(types: !824)
!824 = !{!82, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !827)
!827 = !{!828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !826, file: !90, line: 51, baseType: !82, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !826, file: !90, line: 54, baseType: !78, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !826, file: !90, line: 55, baseType: !78, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !826, file: !90, line: 56, baseType: !78, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !826, file: !90, line: 57, baseType: !78, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !826, file: !90, line: 58, baseType: !78, size: 64, offset: 320)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !826, file: !90, line: 59, baseType: !78, size: 64, offset: 384)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !826, file: !90, line: 60, baseType: !78, size: 64, offset: 448)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !826, file: !90, line: 61, baseType: !78, size: 64, offset: 512)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !826, file: !90, line: 64, baseType: !78, size: 64, offset: 576)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !826, file: !90, line: 65, baseType: !78, size: 64, offset: 640)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !826, file: !90, line: 66, baseType: !78, size: 64, offset: 704)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !826, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !826, file: !90, line: 70, baseType: !825, size: 64, offset: 832)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !826, file: !90, line: 72, baseType: !82, size: 32, offset: 896)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !826, file: !90, line: 73, baseType: !82, size: 32, offset: 928)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !826, file: !90, line: 74, baseType: !111, size: 64, offset: 960)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !826, file: !90, line: 77, baseType: !115, size: 16, offset: 1024)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !826, file: !90, line: 78, baseType: !117, size: 8, offset: 1040)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !826, file: !90, line: 79, baseType: !119, size: 8, offset: 1048)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !826, file: !90, line: 81, baseType: !123, size: 64, offset: 1088)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !826, file: !90, line: 89, baseType: !126, size: 64, offset: 1152)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !826, file: !90, line: 91, baseType: !128, size: 64, offset: 1216)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !826, file: !90, line: 92, baseType: !131, size: 64, offset: 1280)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !826, file: !90, line: 93, baseType: !825, size: 64, offset: 1344)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !826, file: !90, line: 94, baseType: !135, size: 64, offset: 1408)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !826, file: !90, line: 95, baseType: !137, size: 64, offset: 1472)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !826, file: !90, line: 96, baseType: !82, size: 32, offset: 1536)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !826, file: !90, line: 98, baseType: !142, size: 160, offset: 1568)
!857 = !DISubprogram(name: "rpl_fseeko", scope: !233, file: !233, line: 1034, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!858 = !DISubroutineType(types: !859)
!859 = !{!82, !825, !113, !82}
!860 = distinct !DICompileUnit(language: DW_LANG_C99, file: !861, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !862, splitDebugInlining: false, nameTableKind: None)
!861 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!862 = !{!135, !863, !815, !898}
!863 = !DISubprogram(name: "fileno", scope: !85, file: !85, line: 786, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!864 = !DISubroutineType(types: !865)
!865 = !{!82, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !868)
!868 = !{!869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !867, file: !90, line: 51, baseType: !82, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !867, file: !90, line: 54, baseType: !78, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !867, file: !90, line: 55, baseType: !78, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !867, file: !90, line: 56, baseType: !78, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !867, file: !90, line: 57, baseType: !78, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !867, file: !90, line: 58, baseType: !78, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !867, file: !90, line: 59, baseType: !78, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !867, file: !90, line: 60, baseType: !78, size: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !867, file: !90, line: 61, baseType: !78, size: 64, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !867, file: !90, line: 64, baseType: !78, size: 64, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !867, file: !90, line: 65, baseType: !78, size: 64, offset: 640)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !867, file: !90, line: 66, baseType: !78, size: 64, offset: 704)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !867, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !867, file: !90, line: 70, baseType: !866, size: 64, offset: 832)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !867, file: !90, line: 72, baseType: !82, size: 32, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !867, file: !90, line: 73, baseType: !82, size: 32, offset: 928)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !867, file: !90, line: 74, baseType: !111, size: 64, offset: 960)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !867, file: !90, line: 77, baseType: !115, size: 16, offset: 1024)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !867, file: !90, line: 78, baseType: !117, size: 8, offset: 1040)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !867, file: !90, line: 79, baseType: !119, size: 8, offset: 1048)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !867, file: !90, line: 81, baseType: !123, size: 64, offset: 1088)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !867, file: !90, line: 89, baseType: !126, size: 64, offset: 1152)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !867, file: !90, line: 91, baseType: !128, size: 64, offset: 1216)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !867, file: !90, line: 92, baseType: !131, size: 64, offset: 1280)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !867, file: !90, line: 93, baseType: !866, size: 64, offset: 1344)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !867, file: !90, line: 94, baseType: !135, size: 64, offset: 1408)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !867, file: !90, line: 95, baseType: !137, size: 64, offset: 1472)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !867, file: !90, line: 96, baseType: !82, size: 32, offset: 1536)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !867, file: !90, line: 98, baseType: !142, size: 160, offset: 1568)
!898 = !DISubprogram(name: "fseeko", scope: !85, file: !85, line: 707, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!899 = !DISubroutineType(types: !900)
!900 = !{!82, !866, !113, !82}
!901 = distinct !DICompileUnit(language: DW_LANG_C99, file: !902, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !903, splitDebugInlining: false, nameTableKind: None)
!902 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!903 = !{!904, !137, !916}
!904 = !DISubprogram(name: "mbrtowc", scope: !499, file: !499, line: 296, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!905 = !DISubroutineType(types: !906)
!906 = !{!139, !180, !80, !139, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !485, line: 13, size: 64, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !908, file: !485, line: 15, baseType: !82, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !908, file: !485, line: 20, baseType: !912, size: 32, offset: 32)
!912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !908, file: !485, line: 16, size: 32, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !912, file: !485, line: 18, baseType: !6, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !912, file: !485, line: 19, baseType: !493, size: 32)
!916 = !DISubprogram(name: "hard_locale", scope: !917, file: !917, line: 26, type: !918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!917 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!918 = !DISubroutineType(types: !919)
!919 = !{!256, !82}
!920 = distinct !DICompileUnit(language: DW_LANG_C99, file: !921, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !922, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!922 = !{!923}
!923 = !DISubprogram(name: "rpl_fclose", scope: !233, file: !233, line: 672, type: !924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!924 = !DISubroutineType(types: !925)
!925 = !{!82, !926}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !928)
!928 = !{!929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !927, file: !90, line: 51, baseType: !82, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !927, file: !90, line: 54, baseType: !78, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !927, file: !90, line: 55, baseType: !78, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !927, file: !90, line: 56, baseType: !78, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !927, file: !90, line: 57, baseType: !78, size: 64, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !927, file: !90, line: 58, baseType: !78, size: 64, offset: 320)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !927, file: !90, line: 59, baseType: !78, size: 64, offset: 384)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !927, file: !90, line: 60, baseType: !78, size: 64, offset: 448)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !927, file: !90, line: 61, baseType: !78, size: 64, offset: 512)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !927, file: !90, line: 64, baseType: !78, size: 64, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !927, file: !90, line: 65, baseType: !78, size: 64, offset: 640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !927, file: !90, line: 66, baseType: !78, size: 64, offset: 704)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !927, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !927, file: !90, line: 70, baseType: !926, size: 64, offset: 832)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !927, file: !90, line: 72, baseType: !82, size: 32, offset: 896)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !927, file: !90, line: 73, baseType: !82, size: 32, offset: 928)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !927, file: !90, line: 74, baseType: !111, size: 64, offset: 960)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !927, file: !90, line: 77, baseType: !115, size: 16, offset: 1024)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !927, file: !90, line: 78, baseType: !117, size: 8, offset: 1040)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !927, file: !90, line: 79, baseType: !119, size: 8, offset: 1048)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !927, file: !90, line: 81, baseType: !123, size: 64, offset: 1088)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !927, file: !90, line: 89, baseType: !126, size: 64, offset: 1152)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !927, file: !90, line: 91, baseType: !128, size: 64, offset: 1216)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !927, file: !90, line: 92, baseType: !131, size: 64, offset: 1280)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !927, file: !90, line: 93, baseType: !926, size: 64, offset: 1344)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !927, file: !90, line: 94, baseType: !135, size: 64, offset: 1408)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !927, file: !90, line: 95, baseType: !137, size: 64, offset: 1472)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !927, file: !90, line: 96, baseType: !82, size: 32, offset: 1536)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !927, file: !90, line: 98, baseType: !142, size: 160, offset: 1568)
!958 = distinct !DICompileUnit(language: DW_LANG_C99, file: !959, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !960, splitDebugInlining: false, nameTableKind: None)
!959 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!960 = !{!961}
!961 = !DISubprogram(name: "setlocale_null_r", scope: !962, file: !962, line: 64, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!962 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!963 = !DISubroutineType(types: !964)
!964 = !{!82, !82, !78, !139}
!965 = distinct !DICompileUnit(language: DW_LANG_C99, file: !966, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !967, retainedTypes: !1354, splitDebugInlining: false, nameTableKind: None)
!966 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!967 = !{!968}
!968 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !969, line: 41, baseType: !6, size: 32, elements: !970)
!969 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!970 = !{!971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353}
!971 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!972 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!973 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!974 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!975 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!976 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!977 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!978 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!979 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!980 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!981 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!982 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!983 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!984 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!985 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!986 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!987 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!988 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!989 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!990 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!991 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!992 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!993 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!994 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!995 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!996 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!997 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!998 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!999 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!1000 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!1001 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!1002 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!1003 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!1004 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!1005 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!1006 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!1007 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!1008 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!1009 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!1010 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!1011 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!1012 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!1013 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!1014 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!1015 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!1016 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!1017 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!1018 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!1019 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!1020 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!1079 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!1082 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!1083 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!1084 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!1085 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!1086 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!1087 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!1088 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!1089 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!1090 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!1091 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!1092 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!1093 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1166 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1181 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1182 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1183 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1184 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1185 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1186 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1187 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1188 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1189 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1190 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1191 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1192 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1193 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1194 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1195 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1196 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1197 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1198 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1199 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1200 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1201 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1202 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1203 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1204 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1205 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1206 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1207 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1208 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1209 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1210 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1211 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1212 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1213 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1214 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1215 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1216 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1217 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1218 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1219 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1220 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1221 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1222 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1223 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1224 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1225 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1226 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1227 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1228 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1229 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1230 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1231 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1232 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1233 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1234 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1235 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1236 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1237 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1238 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1239 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1240 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1241 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1242 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1243 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1244 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1245 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1246 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1247 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1248 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1249 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1250 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1251 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1252 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1253 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1254 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1255 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1256 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1257 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1258 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1259 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1260 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1261 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1262 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1263 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1264 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1265 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1266 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1267 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1268 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1269 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1270 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1271 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1272 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1273 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1274 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1275 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1276 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1277 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1278 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1279 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1280 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1281 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1282 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1283 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1284 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1285 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1286 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1287 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1288 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1289 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1290 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1291 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1292 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1293 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1294 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1295 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1296 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1297 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1298 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1299 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1300 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1301 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1302 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1303 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1304 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1305 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1306 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1307 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1308 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1309 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1310 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1311 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1312 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1313 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1314 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1315 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1316 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1317 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1318 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1319 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1320 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1321 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1322 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1323 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1324 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1325 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1326 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1327 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1328 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1329 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1330 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1331 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1332 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1333 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1334 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1335 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1336 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1337 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1338 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1339 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1340 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1341 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1342 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1343 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1344 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1345 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1346 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1347 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1348 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1349 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1350 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1351 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1352 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1353 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1354 = !{!1355, !135}
!1355 = !DISubprogram(name: "nl_langinfo", scope: !969, file: !969, line: 661, type: !1356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!78, !82}
!1358 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1359, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !1360, splitDebugInlining: false, nameTableKind: None)
!1359 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1360 = !{!135, !153}
!1361 = !{!"clang version 10.0.0 "}
!1362 = !{i32 7, !"Dwarf Version", i32 4}
!1363 = !{i32 2, !"Debug Info Version", i32 3}
!1364 = !{i32 1, !"wchar_size", i32 4}
!1365 = !{i32 7, !"PIC Level", i32 2}
!1366 = !{i32 7, !"PIE Level", i32 2}
!1367 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 160, type: !349, scopeLine: 161, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1368)
!1368 = !{!1369}
!1369 = !DILocalVariable(name: "status", arg: 1, scope: !1367, file: !3, line: 160, type: !82)
!1370 = !DILocalVariable(name: "infomap", scope: !1371, file: !1372, line: 636, type: !1384)
!1371 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1372, file: !1372, line: 634, type: !151, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1373)
!1372 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1373 = !{!1374, !1370, !1375, !1376, !1383}
!1374 = !DILocalVariable(name: "program", arg: 1, scope: !1371, file: !1372, line: 634, type: !80)
!1375 = !DILocalVariable(name: "node", scope: !1371, file: !1372, line: 646, type: !80)
!1376 = !DILocalVariable(name: "map_prog", scope: !1371, file: !1372, line: 647, type: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1371, file: !1372, line: 636, size: 128, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1379, file: !1372, line: 636, baseType: !80, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1379, file: !1372, line: 636, baseType: !80, size: 64, offset: 64)
!1383 = !DILocalVariable(name: "lc_messages", scope: !1371, file: !1372, line: 659, type: !80)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 896, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 7)
!1387 = !DILocation(line: 636, column: 67, scope: !1371, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 219, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 165, column: 5)
!1390 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 162, column: 7)
!1391 = !DILocation(line: 0, scope: !1367)
!1392 = !DILocation(line: 162, column: 14, scope: !1390)
!1393 = !DILocation(line: 162, column: 7, scope: !1367)
!1394 = !DILocation(line: 163, column: 5, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 163, column: 5)
!1396 = !{!1397, !1397, i64 0}
!1397 = !{!"any pointer", !1398, i64 0}
!1398 = !{!"omnipotent char", !1399, i64 0}
!1399 = !{!"Simple C/C++ TBAA"}
!1400 = !DILocation(line: 166, column: 7, scope: !1389)
!1401 = !DILocation(line: 170, column: 7, scope: !1389)
!1402 = !DILocation(line: 590, column: 3, scope: !1403, inlinedAt: !1404)
!1403 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1372, file: !1372, line: 588, type: !165, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!1404 = distinct !DILocation(line: 177, column: 7, scope: !1389)
!1405 = !DILocation(line: 179, column: 6, scope: !1389)
!1406 = !DILocation(line: 183, column: 6, scope: !1389)
!1407 = !DILocation(line: 189, column: 6, scope: !1389)
!1408 = !DILocation(line: 192, column: 6, scope: !1389)
!1409 = !DILocation(line: 196, column: 6, scope: !1389)
!1410 = !DILocation(line: 201, column: 7, scope: !1389)
!1411 = !DILocation(line: 204, column: 6, scope: !1389)
!1412 = !DILocation(line: 207, column: 6, scope: !1389)
!1413 = !DILocation(line: 208, column: 6, scope: !1389)
!1414 = !DILocation(line: 209, column: 6, scope: !1389)
!1415 = !DILocation(line: 214, column: 6, scope: !1389)
!1416 = !DILocation(line: 0, scope: !1371, inlinedAt: !1388)
!1417 = !DILocation(line: 636, column: 3, scope: !1371, inlinedAt: !1388)
!1418 = !DILocation(line: 647, column: 36, scope: !1371, inlinedAt: !1388)
!1419 = !DILocation(line: 649, column: 3, scope: !1371, inlinedAt: !1388)
!1420 = !DILocation(line: 649, column: 33, scope: !1371, inlinedAt: !1388)
!1421 = !DILocation(line: 650, column: 13, scope: !1371, inlinedAt: !1388)
!1422 = !DILocation(line: 649, column: 20, scope: !1371, inlinedAt: !1388)
!1423 = !{!1424, !1397, i64 0}
!1424 = !{!"infomap", !1397, i64 0, !1397, i64 8}
!1425 = !DILocation(line: 649, column: 10, scope: !1371, inlinedAt: !1388)
!1426 = !DILocation(line: 649, column: 28, scope: !1371, inlinedAt: !1388)
!1427 = distinct !{!1427, !1419, !1421}
!1428 = !DILocation(line: 652, column: 17, scope: !1429, inlinedAt: !1388)
!1429 = distinct !DILexicalBlock(scope: !1371, file: !1372, line: 652, column: 7)
!1430 = !{!1424, !1397, i64 8}
!1431 = !DILocation(line: 652, column: 7, scope: !1429, inlinedAt: !1388)
!1432 = !DILocation(line: 652, column: 7, scope: !1371, inlinedAt: !1388)
!1433 = !DILocation(line: 655, column: 3, scope: !1371, inlinedAt: !1388)
!1434 = !DILocation(line: 659, column: 29, scope: !1371, inlinedAt: !1388)
!1435 = !DILocation(line: 660, column: 7, scope: !1436, inlinedAt: !1388)
!1436 = distinct !DILexicalBlock(scope: !1371, file: !1372, line: 660, column: 7)
!1437 = !DILocation(line: 660, column: 19, scope: !1436, inlinedAt: !1388)
!1438 = !DILocation(line: 660, column: 22, scope: !1436, inlinedAt: !1388)
!1439 = !DILocation(line: 660, column: 7, scope: !1371, inlinedAt: !1388)
!1440 = !DILocation(line: 666, column: 7, scope: !1441, inlinedAt: !1388)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !1372, line: 661, column: 5)
!1442 = !DILocation(line: 668, column: 5, scope: !1441, inlinedAt: !1388)
!1443 = !DILocation(line: 669, column: 3, scope: !1371, inlinedAt: !1388)
!1444 = !DILocation(line: 671, column: 3, scope: !1371, inlinedAt: !1388)
!1445 = !DILocation(line: 673, column: 1, scope: !1371, inlinedAt: !1388)
!1446 = !DILocation(line: 221, column: 3, scope: !1367)
!1447 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 477, type: !1448, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1450)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!82, !82, !193}
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1461, !1462, !1463}
!1451 = !DILocalVariable(name: "argc", arg: 1, scope: !1447, file: !3, line: 477, type: !82)
!1452 = !DILocalVariable(name: "argv", arg: 2, scope: !1447, file: !3, line: 477, type: !193)
!1453 = !DILocalVariable(name: "optc", scope: !1447, file: !3, line: 479, type: !82)
!1454 = !DILocalVariable(name: "posixly_correct", scope: !1447, file: !3, line: 480, type: !256)
!1455 = !DILocalVariable(name: "skip_field_option_type", scope: !1447, file: !3, line: 481, type: !5)
!1456 = !DILocalVariable(name: "nfiles", scope: !1447, file: !3, line: 482, type: !6)
!1457 = !DILocalVariable(name: "file", scope: !1447, file: !3, line: 483, type: !1458)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 128, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 2)
!1461 = !DILocalVariable(name: "delimiter", scope: !1447, file: !3, line: 484, type: !79)
!1462 = !DILocalVariable(name: "output_option_used", scope: !1447, file: !3, line: 485, type: !256)
!1463 = !DILocalVariable(name: "size", scope: !1464, file: !3, line: 529, type: !1468)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 528, column: 11)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 526, column: 9)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 510, column: 11)
!1467 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 505, column: 5)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1469, line: 102, baseType: !1470)
!1469 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !112, line: 73, baseType: !139)
!1471 = !DILocalVariable(name: "lb1", scope: !1472, file: !3, line: 322, type: !221)
!1472 = distinct !DISubprogram(name: "check_file", scope: !3, file: !3, line: 320, type: !1473, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1475)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !80, !80, !79}
!1475 = !{!1476, !1477, !1478, !1471, !1479, !1480, !1481, !1482, !1485, !1486, !1487, !1489, !1490, !1491, !1495, !1499, !1500, !1502, !1504, !1505, !1506, !1507, !1509, !1510, !1511, !1515}
!1476 = !DILocalVariable(name: "infile", arg: 1, scope: !1472, file: !3, line: 320, type: !80)
!1477 = !DILocalVariable(name: "outfile", arg: 2, scope: !1472, file: !3, line: 320, type: !80)
!1478 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1472, file: !3, line: 320, type: !79)
!1479 = !DILocalVariable(name: "lb2", scope: !1472, file: !3, line: 322, type: !221)
!1480 = !DILocalVariable(name: "thisline", scope: !1472, file: !3, line: 323, type: !220)
!1481 = !DILocalVariable(name: "prevline", scope: !1472, file: !3, line: 323, type: !220)
!1482 = !DILocalVariable(name: "prevfield", scope: !1483, file: !3, line: 355, type: !78)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 354, column: 5)
!1484 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 353, column: 7)
!1485 = !DILocalVariable(name: "prevlen", scope: !1483, file: !3, line: 356, type: !137)
!1486 = !DILocalVariable(name: "first_group_printed", scope: !1483, file: !3, line: 357, type: !256)
!1487 = !DILocalVariable(name: "thisfield", scope: !1488, file: !3, line: 361, type: !78)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 360, column: 9)
!1489 = !DILocalVariable(name: "thislen", scope: !1488, file: !3, line: 362, type: !137)
!1490 = !DILocalVariable(name: "new_group", scope: !1488, file: !3, line: 363, type: !256)
!1491 = !DILocalVariable(name: "__ptr", scope: !1492, file: !3, line: 382, type: !80)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 382, column: 15)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 381, column: 13)
!1494 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 380, column: 15)
!1495 = !DILocalVariable(name: "__stream", scope: !1492, file: !3, line: 382, type: !1496)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1498, line: 7, baseType: !89)
!1498 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1499 = !DILocalVariable(name: "__cnt", scope: !1492, file: !3, line: 382, type: !137)
!1500 = !DILocalVariable(name: "_tmp", scope: !1501, file: !3, line: 385, type: !220)
!1501 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 385, column: 15)
!1502 = !DILocalVariable(name: "prevfield", scope: !1503, file: !3, line: 396, type: !78)
!1503 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 395, column: 5)
!1504 = !DILocalVariable(name: "prevlen", scope: !1503, file: !3, line: 397, type: !137)
!1505 = !DILocalVariable(name: "match_count", scope: !1503, file: !3, line: 398, type: !1468)
!1506 = !DILocalVariable(name: "first_delimiter", scope: !1503, file: !3, line: 399, type: !256)
!1507 = !DILocalVariable(name: "match", scope: !1508, file: !3, line: 408, type: !256)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 407, column: 9)
!1509 = !DILocalVariable(name: "thisfield", scope: !1508, file: !3, line: 409, type: !78)
!1510 = !DILocalVariable(name: "thislen", scope: !1508, file: !3, line: 410, type: !137)
!1511 = !DILocalVariable(name: "_tmp", scope: !1512, file: !3, line: 448, type: !220)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 448, column: 15)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 446, column: 13)
!1514 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 445, column: 15)
!1515 = !DILabel(scope: !1472, name: "closefiles", file: !3, line: 459)
!1516 = !DILocation(line: 322, column: 21, scope: !1472, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 659, column: 3, scope: !1447)
!1518 = !DILocation(line: 322, column: 26, scope: !1472, inlinedAt: !1517)
!1519 = !DILocation(line: 0, scope: !1447)
!1520 = !DILocation(line: 480, column: 27, scope: !1447)
!1521 = !DILocation(line: 480, column: 54, scope: !1447)
!1522 = !DILocation(line: 483, column: 3, scope: !1447)
!1523 = !DILocation(line: 483, column: 15, scope: !1447)
!1524 = !DILocation(line: 487, column: 13, scope: !1447)
!1525 = !DILocation(line: 487, column: 21, scope: !1447)
!1526 = !DILocation(line: 487, column: 3, scope: !1447)
!1527 = !DILocation(line: 487, column: 11, scope: !1447)
!1528 = !DILocation(line: 489, column: 21, scope: !1447)
!1529 = !DILocation(line: 489, column: 3, scope: !1447)
!1530 = !DILocation(line: 490, column: 3, scope: !1447)
!1531 = !DILocation(line: 491, column: 3, scope: !1447)
!1532 = !DILocation(line: 492, column: 3, scope: !1447)
!1533 = !DILocation(line: 494, column: 3, scope: !1447)
!1534 = !DILocation(line: 496, column: 14, scope: !1447)
!1535 = !{!1536, !1536, i64 0}
!1536 = !{!"long", !1398, i64 0}
!1537 = !DILocation(line: 497, column: 15, scope: !1447)
!1538 = !DILocation(line: 498, column: 15, scope: !1447)
!1539 = !DILocation(line: 499, column: 41, scope: !1447)
!1540 = !DILocation(line: 499, column: 17, scope: !1447)
!1541 = !DILocation(line: 500, column: 25, scope: !1447)
!1542 = !DILocation(line: 501, column: 13, scope: !1447)
!1543 = !DILocation(line: 502, column: 18, scope: !1447)
!1544 = !{!1398, !1398, i64 0}
!1545 = !DILocation(line: 0, scope: !1546, inlinedAt: !1553)
!1546 = distinct !DISubprogram(name: "size_opt", scope: !3, file: !3, line: 235, type: !1547, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1549)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!137, !80, !80}
!1549 = !{!1550, !1551, !1552}
!1550 = !DILocalVariable(name: "opt", arg: 1, scope: !1546, file: !3, line: 235, type: !80)
!1551 = !DILocalVariable(name: "msgid", arg: 2, scope: !1546, file: !3, line: 235, type: !80)
!1552 = !DILocalVariable(name: "size", scope: !1546, file: !3, line: 237, type: !1468)
!1553 = distinct !DILocation(line: 618, column: 25, scope: !1465)
!1554 = !DILocation(line: 0, scope: !1546, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 608, column: 24, scope: !1465)
!1556 = !DILocation(line: 0, scope: !1546, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 599, column: 25, scope: !1465)
!1558 = !DILocation(line: 0, scope: !1464)
!1559 = !DILocation(line: 504, column: 3, scope: !1447)
!1560 = !DILocation(line: 479, column: 7, scope: !1447)
!1561 = !DILocation(line: 481, column: 31, scope: !1447)
!1562 = !DILocation(line: 484, column: 8, scope: !1447)
!1563 = !DILocation(line: 485, column: 8, scope: !1447)
!1564 = !DILocation(line: 510, column: 16, scope: !1466)
!1565 = !DILocation(line: 511, column: 41, scope: !1466)
!1566 = !DILocation(line: 511, column: 31, scope: !1466)
!1567 = !DILocation(line: 511, column: 11, scope: !1466)
!1568 = !DILocation(line: 512, column: 23, scope: !1466)
!1569 = !DILocation(line: 510, column: 11, scope: !1467)
!1570 = distinct !{!1570, !1559, !1571}
!1571 = !DILocation(line: 633, column: 5, scope: !1447)
!1572 = !DILocation(line: 516, column: 23, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 516, column: 15)
!1574 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 515, column: 9)
!1575 = !{!1576, !1576, i64 0}
!1576 = !{!"int", !1398, i64 0}
!1577 = !DILocation(line: 516, column: 20, scope: !1573)
!1578 = !DILocation(line: 516, column: 15, scope: !1574)
!1579 = !DILocation(line: 518, column: 22, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 518, column: 15)
!1581 = !DILocation(line: 518, column: 15, scope: !1574)
!1582 = !DILocation(line: 520, column: 28, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 519, column: 13)
!1584 = !DILocation(line: 520, column: 63, scope: !1583)
!1585 = !DILocation(line: 520, column: 58, scope: !1583)
!1586 = !DILocation(line: 520, column: 51, scope: !1583)
!1587 = !DILocation(line: 520, column: 15, scope: !1583)
!1588 = !DILocation(line: 521, column: 15, scope: !1583)
!1589 = !DILocation(line: 523, column: 39, scope: !1574)
!1590 = !DILocation(line: 523, column: 28, scope: !1574)
!1591 = !DILocation(line: 523, column: 22, scope: !1574)
!1592 = !DILocation(line: 523, column: 11, scope: !1574)
!1593 = !DILocation(line: 523, column: 26, scope: !1574)
!1594 = !DILocation(line: 524, column: 9, scope: !1574)
!1595 = !DILocation(line: 529, column: 13, scope: !1464)
!1596 = !DILocation(line: 530, column: 17, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 530, column: 17)
!1598 = !DILocation(line: 530, column: 27, scope: !1597)
!1599 = !DILocation(line: 531, column: 17, scope: !1597)
!1600 = !DILocation(line: 227, column: 19, scope: !1601, inlinedAt: !1606)
!1601 = distinct !DISubprogram(name: "strict_posix2", scope: !3, file: !3, line: 225, type: !1602, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1604)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!256}
!1604 = !{!1605}
!1605 = !DILocalVariable(name: "posix_ver", scope: !1601, file: !3, line: 227, type: !82)
!1606 = distinct !DILocation(line: 531, column: 22, scope: !1597)
!1607 = !DILocation(line: 0, scope: !1601, inlinedAt: !1606)
!1608 = !DILocation(line: 228, column: 30, scope: !1601, inlinedAt: !1606)
!1609 = !DILocation(line: 532, column: 17, scope: !1597)
!1610 = !DILocation(line: 532, column: 32, scope: !1597)
!1611 = !DILocation(line: 532, column: 20, scope: !1597)
!1612 = !DILocation(line: 532, column: 61, scope: !1597)
!1613 = !DILocation(line: 533, column: 17, scope: !1597)
!1614 = !DILocation(line: 533, column: 20, scope: !1597)
!1615 = !DILocation(line: 534, column: 26, scope: !1597)
!1616 = !DILocation(line: 534, column: 15, scope: !1597)
!1617 = !DILocation(line: 535, column: 29, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 535, column: 22)
!1619 = !DILocation(line: 535, column: 22, scope: !1597)
!1620 = !DILocation(line: 537, column: 30, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 536, column: 15)
!1622 = !DILocation(line: 537, column: 60, scope: !1621)
!1623 = !DILocation(line: 537, column: 53, scope: !1621)
!1624 = !DILocation(line: 537, column: 17, scope: !1621)
!1625 = !DILocation(line: 538, column: 17, scope: !1621)
!1626 = !DILocation(line: 541, column: 32, scope: !1618)
!1627 = !DILocation(line: 541, column: 26, scope: !1618)
!1628 = !DILocation(line: 541, column: 15, scope: !1618)
!1629 = !DILocation(line: 541, column: 30, scope: !1618)
!1630 = !DILocation(line: 542, column: 11, scope: !1465)
!1631 = !DILocation(line: 543, column: 11, scope: !1465)
!1632 = !DILocation(line: 556, column: 40, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 556, column: 17)
!1634 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 555, column: 11)
!1635 = !DILocation(line: 556, column: 17, scope: !1634)
!1636 = !DILocation(line: 557, column: 27, scope: !1633)
!1637 = !DILocation(line: 559, column: 18, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 559, column: 17)
!1639 = !DILocation(line: 559, column: 17, scope: !1634)
!1640 = !DILocation(line: 560, column: 27, scope: !1638)
!1641 = !DILocation(line: 560, column: 15, scope: !1638)
!1642 = !DILocation(line: 567, column: 21, scope: !1465)
!1643 = !DILocation(line: 569, column: 11, scope: !1465)
!1644 = !DILocation(line: 572, column: 25, scope: !1465)
!1645 = !DILocation(line: 574, column: 11, scope: !1465)
!1646 = !DILocation(line: 577, column: 25, scope: !1465)
!1647 = !DILocation(line: 578, column: 33, scope: !1465)
!1648 = !DILocation(line: 579, column: 15, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 579, column: 15)
!1650 = !DILocation(line: 579, column: 22, scope: !1649)
!1651 = !DILocation(line: 579, column: 15, scope: !1465)
!1652 = !DILocation(line: 582, column: 30, scope: !1649)
!1653 = !DILocation(line: 0, scope: !1649)
!1654 = !DILocation(line: 586, column: 11, scope: !1465)
!1655 = !DILocation(line: 589, column: 15, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 589, column: 15)
!1657 = !DILocation(line: 589, column: 22, scope: !1656)
!1658 = !DILocation(line: 589, column: 15, scope: !1465)
!1659 = !DILocation(line: 590, column: 22, scope: !1656)
!1660 = !DILocation(line: 590, column: 13, scope: !1656)
!1661 = !DILocation(line: 592, column: 24, scope: !1656)
!1662 = !DILocation(line: 592, column: 22, scope: !1656)
!1663 = !DILocation(line: 599, column: 35, scope: !1465)
!1664 = !DILocation(line: 237, column: 3, scope: !1546, inlinedAt: !1557)
!1665 = !DILocation(line: 239, column: 11, scope: !1546, inlinedAt: !1557)
!1666 = !DILocation(line: 239, column: 3, scope: !1546, inlinedAt: !1557)
!1667 = !DILocation(line: 246, column: 7, scope: !1668, inlinedAt: !1557)
!1668 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 240, column: 5)
!1669 = !DILocation(line: 249, column: 10, scope: !1546, inlinedAt: !1557)
!1670 = !DILocation(line: 250, column: 1, scope: !1546, inlinedAt: !1557)
!1671 = !DILocation(line: 599, column: 23, scope: !1465)
!1672 = !DILocation(line: 601, column: 11, scope: !1465)
!1673 = !DILocation(line: 604, column: 23, scope: !1465)
!1674 = !DILocation(line: 605, column: 11, scope: !1465)
!1675 = !DILocation(line: 608, column: 34, scope: !1465)
!1676 = !DILocation(line: 237, column: 3, scope: !1546, inlinedAt: !1555)
!1677 = !DILocation(line: 239, column: 11, scope: !1546, inlinedAt: !1555)
!1678 = !DILocation(line: 239, column: 3, scope: !1546, inlinedAt: !1555)
!1679 = !DILocation(line: 246, column: 7, scope: !1668, inlinedAt: !1555)
!1680 = !DILocation(line: 249, column: 10, scope: !1546, inlinedAt: !1555)
!1681 = !DILocation(line: 250, column: 1, scope: !1546, inlinedAt: !1555)
!1682 = !DILocation(line: 608, column: 22, scope: !1465)
!1683 = !DILocation(line: 610, column: 11, scope: !1465)
!1684 = !DILocation(line: 613, column: 33, scope: !1465)
!1685 = !DILocation(line: 615, column: 11, scope: !1465)
!1686 = !DILocation(line: 618, column: 35, scope: !1465)
!1687 = !DILocation(line: 237, column: 3, scope: !1546, inlinedAt: !1553)
!1688 = !DILocation(line: 239, column: 11, scope: !1546, inlinedAt: !1553)
!1689 = !DILocation(line: 239, column: 3, scope: !1546, inlinedAt: !1553)
!1690 = !DILocation(line: 246, column: 7, scope: !1668, inlinedAt: !1553)
!1691 = !DILocation(line: 249, column: 10, scope: !1546, inlinedAt: !1553)
!1692 = !DILocation(line: 250, column: 1, scope: !1546, inlinedAt: !1553)
!1693 = !DILocation(line: 618, column: 23, scope: !1465)
!1694 = !DILocation(line: 620, column: 11, scope: !1465)
!1695 = !DILocation(line: 626, column: 9, scope: !1465)
!1696 = !DILocation(line: 628, column: 9, scope: !1465)
!1697 = !DILocation(line: 631, column: 11, scope: !1465)
!1698 = !DILocation(line: 639, column: 7, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 639, column: 7)
!1700 = !DILocation(line: 639, column: 16, scope: !1699)
!1701 = !DILocation(line: 639, column: 30, scope: !1699)
!1702 = !DILocation(line: 639, column: 27, scope: !1699)
!1703 = !DILocation(line: 641, column: 20, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 640, column: 5)
!1705 = !DILocation(line: 641, column: 7, scope: !1704)
!1706 = !DILocation(line: 642, column: 7, scope: !1704)
!1707 = !DILocation(line: 645, column: 16, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 645, column: 7)
!1709 = !DILocation(line: 645, column: 30, scope: !1708)
!1710 = !DILocation(line: 645, column: 40, scope: !1708)
!1711 = !DILocation(line: 645, column: 27, scope: !1708)
!1712 = !DILocation(line: 648, column: 12, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 646, column: 5)
!1714 = !DILocation(line: 647, column: 7, scope: !1713)
!1715 = !DILocation(line: 649, column: 7, scope: !1713)
!1716 = !DILocation(line: 652, column: 38, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 652, column: 7)
!1718 = !DILocation(line: 652, column: 41, scope: !1717)
!1719 = !DILocation(line: 652, column: 7, scope: !1447)
!1720 = !DILocation(line: 655, column: 12, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 653, column: 5)
!1722 = !DILocation(line: 654, column: 7, scope: !1721)
!1723 = !DILocation(line: 656, column: 7, scope: !1721)
!1724 = !DILocation(line: 659, column: 15, scope: !1447)
!1725 = !DILocation(line: 659, column: 24, scope: !1447)
!1726 = !DILocation(line: 0, scope: !1472, inlinedAt: !1517)
!1727 = !DILocation(line: 322, column: 3, scope: !1472, inlinedAt: !1517)
!1728 = !DILocation(line: 325, column: 10, scope: !1729, inlinedAt: !1517)
!1729 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 325, column: 7)
!1730 = !DILocation(line: 325, column: 30, scope: !1729, inlinedAt: !1517)
!1731 = !DILocation(line: 325, column: 55, scope: !1729, inlinedAt: !1517)
!1732 = !DILocation(line: 325, column: 33, scope: !1729, inlinedAt: !1517)
!1733 = !DILocation(line: 325, column: 7, scope: !1472, inlinedAt: !1517)
!1734 = !DILocation(line: 326, column: 5, scope: !1729, inlinedAt: !1517)
!1735 = !DILocation(line: 327, column: 10, scope: !1736, inlinedAt: !1517)
!1736 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 327, column: 7)
!1737 = !DILocation(line: 327, column: 31, scope: !1736, inlinedAt: !1517)
!1738 = !DILocation(line: 327, column: 57, scope: !1736, inlinedAt: !1517)
!1739 = !DILocation(line: 327, column: 34, scope: !1736, inlinedAt: !1517)
!1740 = !DILocation(line: 327, column: 7, scope: !1472, inlinedAt: !1517)
!1741 = !DILocation(line: 328, column: 5, scope: !1736, inlinedAt: !1517)
!1742 = !DILocation(line: 330, column: 12, scope: !1472, inlinedAt: !1517)
!1743 = !DILocation(line: 330, column: 3, scope: !1472, inlinedAt: !1517)
!1744 = !DILocation(line: 335, column: 3, scope: !1472, inlinedAt: !1517)
!1745 = !DILocation(line: 336, column: 3, scope: !1472, inlinedAt: !1517)
!1746 = !DILocation(line: 353, column: 7, scope: !1484, inlinedAt: !1517)
!1747 = !DILocation(line: 353, column: 21, scope: !1484, inlinedAt: !1517)
!1748 = !DILocation(line: 353, column: 24, scope: !1484, inlinedAt: !1517)
!1749 = !DILocation(line: 353, column: 49, scope: !1484, inlinedAt: !1517)
!1750 = !DILocation(line: 353, column: 46, scope: !1484, inlinedAt: !1517)
!1751 = !DILocation(line: 0, scope: !1483, inlinedAt: !1517)
!1752 = !DILocation(line: 359, column: 15, scope: !1483, inlinedAt: !1517)
!1753 = !DILocalVariable(name: "__stream", arg: 1, scope: !1754, file: !1755, line: 128, type: !1496)
!1754 = distinct !DISubprogram(name: "feof_unlocked", scope: !1755, file: !1755, line: 128, type: !1756, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!1755 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!82, !1496}
!1758 = !{!1753}
!1759 = !DILocation(line: 0, scope: !1754, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 359, column: 15, scope: !1483, inlinedAt: !1517)
!1761 = !DILocation(line: 130, column: 10, scope: !1754, inlinedAt: !1760)
!1762 = !{!1763, !1576, i64 0}
!1763 = !{!"_IO_FILE", !1576, i64 0, !1397, i64 8, !1397, i64 16, !1397, i64 24, !1397, i64 32, !1397, i64 40, !1397, i64 48, !1397, i64 56, !1397, i64 64, !1397, i64 72, !1397, i64 80, !1397, i64 88, !1397, i64 96, !1397, i64 104, !1576, i64 112, !1576, i64 116, !1536, i64 120, !1764, i64 128, !1398, i64 130, !1398, i64 131, !1397, i64 136, !1536, i64 144, !1397, i64 152, !1397, i64 160, !1397, i64 168, !1397, i64 176, !1536, i64 184, !1576, i64 192, !1398, i64 196}
!1764 = !{!"short", !1398, i64 0}
!1765 = !DILocation(line: 359, column: 14, scope: !1483, inlinedAt: !1517)
!1766 = !DILocation(line: 359, column: 7, scope: !1483, inlinedAt: !1517)
!1767 = !DILocation(line: 0, scope: !1768, inlinedAt: !1517)
!1768 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 374, column: 15)
!1769 = !DILocation(line: 365, column: 15, scope: !1770, inlinedAt: !1517)
!1770 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 365, column: 15)
!1771 = !DILocation(line: 365, column: 65, scope: !1770, inlinedAt: !1517)
!1772 = !DILocation(line: 365, column: 15, scope: !1488, inlinedAt: !1517)
!1773 = !DILocation(line: 368, column: 23, scope: !1488, inlinedAt: !1517)
!1774 = !DILocation(line: 0, scope: !1488, inlinedAt: !1517)
!1775 = !DILocation(line: 369, column: 31, scope: !1488, inlinedAt: !1517)
!1776 = !{!1777, !1536, i64 8}
!1777 = !{!"linebuffer", !1536, i64 0, !1536, i64 8, !1397, i64 16}
!1778 = !DILocation(line: 369, column: 67, scope: !1488, inlinedAt: !1517)
!1779 = !{!1777, !1397, i64 16}
!1780 = !DILocation(line: 369, column: 55, scope: !1488, inlinedAt: !1517)
!1781 = !DILocation(line: 369, column: 42, scope: !1488, inlinedAt: !1517)
!1782 = !DILocation(line: 371, column: 34, scope: !1488, inlinedAt: !1517)
!1783 = !DILocation(line: 371, column: 41, scope: !1488, inlinedAt: !1517)
!1784 = !DILocation(line: 372, column: 24, scope: !1488, inlinedAt: !1517)
!1785 = !DILocalVariable(name: "old", arg: 1, scope: !1786, file: !3, line: 282, type: !78)
!1786 = distinct !DISubprogram(name: "different", scope: !3, file: !3, line: 282, type: !1787, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!256, !78, !78, !137, !137}
!1789 = !{!1785, !1790, !1791, !1792}
!1790 = !DILocalVariable(name: "new", arg: 2, scope: !1786, file: !3, line: 282, type: !78)
!1791 = !DILocalVariable(name: "oldlen", arg: 3, scope: !1786, file: !3, line: 282, type: !137)
!1792 = !DILocalVariable(name: "newlen", arg: 4, scope: !1786, file: !3, line: 282, type: !137)
!1793 = !DILocation(line: 0, scope: !1786, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 372, column: 27, scope: !1488, inlinedAt: !1517)
!1795 = !DILocation(line: 284, column: 7, scope: !1796, inlinedAt: !1794)
!1796 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 284, column: 7)
!1797 = !DILocation(line: 284, column: 19, scope: !1796, inlinedAt: !1794)
!1798 = !DILocation(line: 284, column: 7, scope: !1786, inlinedAt: !1794)
!1799 = !DILocation(line: 286, column: 19, scope: !1800, inlinedAt: !1794)
!1800 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 286, column: 7)
!1801 = !DILocation(line: 286, column: 7, scope: !1786, inlinedAt: !1794)
!1802 = !DILocation(line: 289, column: 7, scope: !1803, inlinedAt: !1794)
!1803 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 289, column: 7)
!1804 = !DILocation(line: 0, scope: !1803, inlinedAt: !1794)
!1805 = !DILocation(line: 289, column: 7, scope: !1786, inlinedAt: !1794)
!1806 = !DILocation(line: 290, column: 29, scope: !1803, inlinedAt: !1794)
!1807 = !DILocation(line: 290, column: 32, scope: !1803, inlinedAt: !1794)
!1808 = !DILocation(line: 292, column: 29, scope: !1803, inlinedAt: !1794)
!1809 = !DILocation(line: 292, column: 32, scope: !1803, inlinedAt: !1794)
!1810 = !DILocation(line: 374, column: 28, scope: !1768, inlinedAt: !1517)
!1811 = !DILocation(line: 374, column: 37, scope: !1768, inlinedAt: !1517)
!1812 = !DILocation(line: 374, column: 25, scope: !1768, inlinedAt: !1517)
!1813 = !DILocation(line: 375, column: 42, scope: !1768, inlinedAt: !1517)
!1814 = !DILocation(line: 376, column: 23, scope: !1768, inlinedAt: !1517)
!1815 = !DILocation(line: 377, column: 47, scope: !1768, inlinedAt: !1517)
!1816 = !DILocation(line: 376, column: 43, scope: !1768, inlinedAt: !1517)
!1817 = !DILocalVariable(name: "__c", arg: 1, scope: !1818, file: !1755, line: 108, type: !82)
!1818 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1755, file: !1755, line: 108, type: !646, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1819)
!1819 = !{!1817}
!1820 = !DILocation(line: 0, scope: !1818, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 378, column: 13, scope: !1768, inlinedAt: !1517)
!1822 = !DILocation(line: 110, column: 10, scope: !1818, inlinedAt: !1821)
!1823 = !{!1763, !1397, i64 40}
!1824 = !{!1763, !1397, i64 48}
!1825 = !{!"branch_weights", i32 2000, i32 1}
!1826 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1827 = !DILocation(line: 380, column: 28, scope: !1494, inlinedAt: !1517)
!1828 = !DILocation(line: 380, column: 37, scope: !1494, inlinedAt: !1517)
!1829 = !DILocation(line: 380, column: 25, scope: !1494, inlinedAt: !1517)
!1830 = !DILocation(line: 382, column: 15, scope: !1493, inlinedAt: !1517)
!1831 = !DILocation(line: 357, column: 12, scope: !1483, inlinedAt: !1517)
!1832 = !DILocation(line: 391, column: 12, scope: !1833, inlinedAt: !1517)
!1833 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 391, column: 11)
!1834 = !DILocation(line: 391, column: 32, scope: !1833, inlinedAt: !1517)
!1835 = !DILocation(line: 391, column: 61, scope: !1833, inlinedAt: !1517)
!1836 = !DILocation(line: 391, column: 11, scope: !1483, inlinedAt: !1517)
!1837 = !DILocation(line: 0, scope: !1818, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 392, column: 9, scope: !1833, inlinedAt: !1517)
!1839 = !DILocation(line: 110, column: 10, scope: !1818, inlinedAt: !1838)
!1840 = !DILocation(line: 392, column: 9, scope: !1833, inlinedAt: !1517)
!1841 = !DILocation(line: 0, scope: !1503, inlinedAt: !1517)
!1842 = !DILocation(line: 401, column: 43, scope: !1843, inlinedAt: !1517)
!1843 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 401, column: 11)
!1844 = !DILocation(line: 401, column: 11, scope: !1843, inlinedAt: !1517)
!1845 = !DILocation(line: 401, column: 61, scope: !1843, inlinedAt: !1517)
!1846 = !DILocation(line: 401, column: 11, scope: !1503, inlinedAt: !1517)
!1847 = !DILocation(line: 403, column: 19, scope: !1503, inlinedAt: !1517)
!1848 = !DILocation(line: 406, column: 15, scope: !1503, inlinedAt: !1517)
!1849 = !DILocation(line: 0, scope: !1754, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 406, column: 15, scope: !1503, inlinedAt: !1517)
!1851 = !DILocation(line: 130, column: 10, scope: !1754, inlinedAt: !1850)
!1852 = !DILocation(line: 406, column: 14, scope: !1503, inlinedAt: !1517)
!1853 = !DILocation(line: 406, column: 7, scope: !1503, inlinedAt: !1517)
!1854 = !DILocation(line: 404, column: 27, scope: !1503, inlinedAt: !1517)
!1855 = !DILocation(line: 404, column: 51, scope: !1503, inlinedAt: !1517)
!1856 = !DILocation(line: 404, column: 38, scope: !1503, inlinedAt: !1517)
!1857 = !DILocation(line: 404, column: 63, scope: !1503, inlinedAt: !1517)
!1858 = !DILocation(line: 0, scope: !1859, inlinedAt: !1517)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 438, column: 23)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 437, column: 17)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 436, column: 24)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 431, column: 19)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 430, column: 13)
!1864 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 429, column: 15)
!1865 = !DILocation(line: 411, column: 15, scope: !1866, inlinedAt: !1517)
!1866 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 411, column: 15)
!1867 = !DILocation(line: 411, column: 65, scope: !1866, inlinedAt: !1517)
!1868 = !DILocation(line: 411, column: 15, scope: !1508, inlinedAt: !1517)
!1869 = !DILocation(line: 413, column: 19, scope: !1870, inlinedAt: !1517)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 413, column: 19)
!1871 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 412, column: 13)
!1872 = !DILocalVariable(name: "__stream", arg: 1, scope: !1873, file: !1755, line: 135, type: !1496)
!1873 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1755, file: !1755, line: 135, type: !1756, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1874)
!1874 = !{!1872}
!1875 = !DILocation(line: 0, scope: !1873, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 413, column: 19, scope: !1870, inlinedAt: !1517)
!1877 = !DILocation(line: 137, column: 10, scope: !1873, inlinedAt: !1876)
!1878 = !DILocation(line: 417, column: 23, scope: !1508, inlinedAt: !1517)
!1879 = !DILocation(line: 0, scope: !1508, inlinedAt: !1517)
!1880 = !DILocation(line: 418, column: 31, scope: !1508, inlinedAt: !1517)
!1881 = !DILocation(line: 418, column: 67, scope: !1508, inlinedAt: !1517)
!1882 = !DILocation(line: 418, column: 55, scope: !1508, inlinedAt: !1517)
!1883 = !DILocation(line: 418, column: 42, scope: !1508, inlinedAt: !1517)
!1884 = !DILocation(line: 0, scope: !1786, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 419, column: 20, scope: !1508, inlinedAt: !1517)
!1886 = !DILocation(line: 284, column: 7, scope: !1796, inlinedAt: !1885)
!1887 = !DILocation(line: 284, column: 19, scope: !1796, inlinedAt: !1885)
!1888 = !DILocation(line: 284, column: 7, scope: !1786, inlinedAt: !1885)
!1889 = !DILocation(line: 286, column: 19, scope: !1800, inlinedAt: !1885)
!1890 = !DILocation(line: 286, column: 7, scope: !1786, inlinedAt: !1885)
!1891 = !DILocation(line: 289, column: 7, scope: !1803, inlinedAt: !1885)
!1892 = !DILocation(line: 0, scope: !1803, inlinedAt: !1885)
!1893 = !DILocation(line: 289, column: 7, scope: !1786, inlinedAt: !1885)
!1894 = !DILocation(line: 290, column: 29, scope: !1803, inlinedAt: !1885)
!1895 = !DILocation(line: 290, column: 32, scope: !1803, inlinedAt: !1885)
!1896 = !DILocation(line: 292, column: 29, scope: !1803, inlinedAt: !1885)
!1897 = !DILocation(line: 292, column: 32, scope: !1803, inlinedAt: !1885)
!1898 = !DILocation(line: 419, column: 19, scope: !1508, inlinedAt: !1517)
!1899 = !DILocation(line: 420, column: 26, scope: !1508, inlinedAt: !1517)
!1900 = !DILocation(line: 420, column: 23, scope: !1508, inlinedAt: !1517)
!1901 = !DILocation(line: 422, column: 27, scope: !1902, inlinedAt: !1517)
!1902 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 422, column: 15)
!1903 = !DILocation(line: 422, column: 15, scope: !1508, inlinedAt: !1517)
!1904 = !DILocation(line: 429, column: 15, scope: !1864, inlinedAt: !1517)
!1905 = !DILocation(line: 429, column: 30, scope: !1864, inlinedAt: !1517)
!1906 = !DILocation(line: 429, column: 15, scope: !1508, inlinedAt: !1517)
!1907 = !DILocation(line: 431, column: 19, scope: !1863, inlinedAt: !1517)
!1908 = !DILocation(line: 433, column: 23, scope: !1909, inlinedAt: !1517)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 433, column: 23)
!1910 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 432, column: 17)
!1911 = !DILocation(line: 433, column: 23, scope: !1910, inlinedAt: !1517)
!1912 = !DILocation(line: 445, column: 22, scope: !1514, inlinedAt: !1517)
!1913 = !DILocation(line: 436, column: 36, scope: !1861, inlinedAt: !1517)
!1914 = !DILocation(line: 436, column: 24, scope: !1862, inlinedAt: !1517)
!1915 = !DILocation(line: 439, column: 23, scope: !1859, inlinedAt: !1517)
!1916 = !DILocation(line: 440, column: 31, scope: !1859, inlinedAt: !1517)
!1917 = !DILocation(line: 438, column: 23, scope: !1860, inlinedAt: !1517)
!1918 = !DILocation(line: 0, scope: !1818, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 441, column: 21, scope: !1859, inlinedAt: !1517)
!1920 = !DILocation(line: 110, column: 10, scope: !1818, inlinedAt: !1919)
!1921 = !DILocation(line: 445, column: 25, scope: !1514, inlinedAt: !1517)
!1922 = !DILocation(line: 445, column: 15, scope: !1508, inlinedAt: !1517)
!1923 = !DILocation(line: 447, column: 15, scope: !1513, inlinedAt: !1517)
!1924 = !DILocation(line: 451, column: 19, scope: !1513, inlinedAt: !1517)
!1925 = !DILocation(line: 399, column: 12, scope: !1503, inlinedAt: !1517)
!1926 = !DILocation(line: 456, column: 7, scope: !1503, inlinedAt: !1517)
!1927 = !DILocation(line: 457, column: 5, scope: !1484, inlinedAt: !1517)
!1928 = !DILocation(line: 459, column: 2, scope: !1472, inlinedAt: !1517)
!1929 = !DILocation(line: 460, column: 7, scope: !1930, inlinedAt: !1517)
!1930 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 460, column: 7)
!1931 = !DILocation(line: 0, scope: !1873, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 460, column: 7, scope: !1930, inlinedAt: !1517)
!1933 = !DILocation(line: 137, column: 10, scope: !1873, inlinedAt: !1932)
!1934 = !DILocation(line: 460, column: 22, scope: !1930, inlinedAt: !1517)
!1935 = !DILocation(line: 460, column: 25, scope: !1930, inlinedAt: !1517)
!1936 = !DILocation(line: 460, column: 40, scope: !1930, inlinedAt: !1517)
!1937 = !DILocation(line: 460, column: 7, scope: !1472, inlinedAt: !1517)
!1938 = !DILocation(line: 461, column: 5, scope: !1930, inlinedAt: !1517)
!1939 = !DILocation(line: 465, column: 13, scope: !1472, inlinedAt: !1517)
!1940 = !DILocation(line: 465, column: 3, scope: !1472, inlinedAt: !1517)
!1941 = !DILocation(line: 466, column: 13, scope: !1472, inlinedAt: !1517)
!1942 = !DILocation(line: 466, column: 3, scope: !1472, inlinedAt: !1517)
!1943 = !DILocation(line: 467, column: 1, scope: !1472, inlinedAt: !1517)
!1944 = !DILocation(line: 662, column: 1, scope: !1447)
!1945 = distinct !DISubprogram(name: "find_field", scope: !3, file: !3, line: 256, type: !1946, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1950)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!78, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!1950 = !{!1951, !1952, !1953, !1954, !1955}
!1951 = !DILocalVariable(name: "line", arg: 1, scope: !1945, file: !3, line: 256, type: !1948)
!1952 = !DILocalVariable(name: "count", scope: !1945, file: !3, line: 258, type: !137)
!1953 = !DILocalVariable(name: "lp", scope: !1945, file: !3, line: 259, type: !80)
!1954 = !DILocalVariable(name: "size", scope: !1945, file: !3, line: 260, type: !137)
!1955 = !DILocalVariable(name: "i", scope: !1945, file: !3, line: 261, type: !137)
!1956 = !DILocation(line: 0, scope: !1945)
!1957 = !DILocation(line: 259, column: 26, scope: !1945)
!1958 = !DILocation(line: 260, column: 23, scope: !1945)
!1959 = !DILocation(line: 260, column: 30, scope: !1945)
!1960 = !DILocation(line: 263, column: 27, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 263, column: 3)
!1962 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 263, column: 3)
!1963 = !DILocation(line: 263, column: 25, scope: !1961)
!1964 = !DILocation(line: 263, column: 39, scope: !1961)
!1965 = !DILocation(line: 263, column: 3, scope: !1962)
!1966 = !DILocation(line: 265, column: 16, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 264, column: 5)
!1968 = !DILocation(line: 265, column: 23, scope: !1967)
!1969 = !DILocation(line: 0, scope: !1970, inlinedAt: !1975)
!1970 = distinct !DISubprogram(name: "field_sep", scope: !1372, file: !1372, line: 160, type: !1971, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1973)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!256, !246}
!1973 = !{!1974}
!1974 = !DILocalVariable(name: "ch", arg: 1, scope: !1970, file: !1372, line: 160, type: !246)
!1975 = distinct !DILocation(line: 265, column: 26, scope: !1967)
!1976 = !DILocation(line: 265, column: 37, scope: !1967)
!1977 = !DILocation(line: 162, column: 10, scope: !1970, inlinedAt: !1975)
!1978 = !{!1764, !1764, i64 0}
!1979 = !DILocation(line: 162, column: 23, scope: !1970, inlinedAt: !1975)
!1980 = !DILocation(line: 265, column: 7, scope: !1967)
!1981 = !DILocation(line: 266, column: 10, scope: !1967)
!1982 = distinct !{!1982, !1980, !1981}
!1983 = !DILocation(line: 267, column: 16, scope: !1967)
!1984 = !DILocation(line: 267, column: 23, scope: !1967)
!1985 = !DILocation(line: 0, scope: !1970, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 267, column: 27, scope: !1967)
!1987 = !DILocation(line: 267, column: 38, scope: !1967)
!1988 = !DILocation(line: 162, column: 10, scope: !1970, inlinedAt: !1986)
!1989 = !DILocation(line: 162, column: 23, scope: !1970, inlinedAt: !1986)
!1990 = !DILocation(line: 267, column: 7, scope: !1967)
!1991 = !DILocation(line: 268, column: 10, scope: !1967)
!1992 = distinct !{!1992, !1990, !1991}
!1993 = !DILocation(line: 263, column: 57, scope: !1961)
!1994 = distinct !{!1994, !1965, !1995}
!1995 = !DILocation(line: 269, column: 5, scope: !1962)
!1996 = !DILocation(line: 261, column: 10, scope: !1945)
!1997 = !DILocation(line: 271, column: 8, scope: !1945)
!1998 = !DILocation(line: 271, column: 5, scope: !1945)
!1999 = !DILocation(line: 273, column: 23, scope: !1945)
!2000 = !DILocation(line: 273, column: 3, scope: !1945)
!2001 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 302, type: !2002, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !1948, !256, !1468}
!2004 = !{!2005, !2006, !2007, !2008, !2010, !2011}
!2005 = !DILocalVariable(name: "line", arg: 1, scope: !2001, file: !3, line: 302, type: !1948)
!2006 = !DILocalVariable(name: "match", arg: 2, scope: !2001, file: !3, line: 303, type: !256)
!2007 = !DILocalVariable(name: "linecount", arg: 3, scope: !2001, file: !3, line: 303, type: !1468)
!2008 = !DILocalVariable(name: "__ptr", scope: !2009, file: !3, line: 313, type: !80)
!2009 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 313, column: 3)
!2010 = !DILocalVariable(name: "__stream", scope: !2009, file: !3, line: 313, type: !1496)
!2011 = !DILocalVariable(name: "__cnt", scope: !2009, file: !3, line: 313, type: !137)
!2012 = !DILocation(line: 0, scope: !2001)
!2013 = !DILocation(line: 305, column: 20, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 305, column: 7)
!2015 = !DILocation(line: 305, column: 7, scope: !2001)
!2016 = !DILocation(line: 305, column: 27, scope: !2014)
!2017 = !DILocation(line: 305, column: 10, scope: !2014)
!2018 = !DILocation(line: 306, column: 21, scope: !2014)
!2019 = !DILocation(line: 306, column: 12, scope: !2014)
!2020 = !DILocation(line: 307, column: 12, scope: !2014)
!2021 = !DILocation(line: 310, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 310, column: 7)
!2023 = !DILocation(line: 310, column: 7, scope: !2001)
!2024 = !DILocation(line: 311, column: 5, scope: !2022)
!2025 = !DILocation(line: 313, column: 3, scope: !2001)
!2026 = !DILocation(line: 314, column: 1, scope: !2001)
!2027 = distinct !DISubprogram(name: "__argmatch_die", scope: !306, file: !306, line: 60, type: !165, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !83)
!2028 = !DILocation(line: 62, column: 3, scope: !2027)
!2029 = !DILocation(line: 63, column: 1, scope: !2027)
!2030 = distinct !DISubprogram(name: "argmatch", scope: !306, file: !306, line: 82, type: !2031, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !2035)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!2033, !80, !2034, !196, !137}
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !138, line: 35, baseType: !113)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!2035 = !{!2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043}
!2036 = !DILocalVariable(name: "arg", arg: 1, scope: !2030, file: !306, line: 82, type: !80)
!2037 = !DILocalVariable(name: "arglist", arg: 2, scope: !2030, file: !306, line: 82, type: !2034)
!2038 = !DILocalVariable(name: "vallist", arg: 3, scope: !2030, file: !306, line: 83, type: !196)
!2039 = !DILocalVariable(name: "valsize", arg: 4, scope: !2030, file: !306, line: 83, type: !137)
!2040 = !DILocalVariable(name: "i", scope: !2030, file: !306, line: 85, type: !137)
!2041 = !DILocalVariable(name: "arglen", scope: !2030, file: !306, line: 86, type: !137)
!2042 = !DILocalVariable(name: "matchind", scope: !2030, file: !306, line: 87, type: !2033)
!2043 = !DILocalVariable(name: "ambiguous", scope: !2030, file: !306, line: 88, type: !256)
!2044 = !DILocation(line: 0, scope: !2030)
!2045 = !DILocation(line: 90, column: 12, scope: !2030)
!2046 = !DILocation(line: 93, column: 15, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !306, line: 93, column: 3)
!2048 = distinct !DILexicalBlock(scope: !2030, file: !306, line: 93, column: 3)
!2049 = !DILocation(line: 93, column: 3, scope: !2048)
!2050 = !DILocation(line: 0, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !306, line: 106, column: 19)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !306, line: 104, column: 13)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !306, line: 100, column: 20)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !306, line: 97, column: 15)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !306, line: 96, column: 9)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !306, line: 95, column: 11)
!2057 = distinct !DILexicalBlock(scope: !2047, file: !306, line: 94, column: 5)
!2058 = !DILocation(line: 95, column: 12, scope: !2056)
!2059 = !DILocation(line: 95, column: 11, scope: !2057)
!2060 = !DILocation(line: 97, column: 15, scope: !2054)
!2061 = !DILocation(line: 97, column: 35, scope: !2054)
!2062 = !DILocation(line: 97, column: 15, scope: !2055)
!2063 = !DILocation(line: 100, column: 29, scope: !2053)
!2064 = !DILocation(line: 100, column: 20, scope: !2054)
!2065 = !DILocation(line: 107, column: 19, scope: !2051)
!2066 = !DILocation(line: 107, column: 63, scope: !2051)
!2067 = !DILocation(line: 107, column: 53, scope: !2051)
!2068 = !DILocation(line: 108, column: 63, scope: !2051)
!2069 = !DILocation(line: 108, column: 53, scope: !2051)
!2070 = !DILocation(line: 107, column: 22, scope: !2051)
!2071 = !DILocation(line: 106, column: 19, scope: !2052)
!2072 = !DILocation(line: 113, column: 17, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2051, file: !306, line: 109, column: 17)
!2074 = !DILocation(line: 93, column: 28, scope: !2047)
!2075 = distinct !{!2075, !2049, !2076}
!2076 = !DILocation(line: 116, column: 5, scope: !2048)
!2077 = !DILocation(line: 87, column: 13, scope: !2030)
!2078 = !DILocation(line: 88, column: 8, scope: !2030)
!2079 = !DILocation(line: 117, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2030, file: !306, line: 117, column: 7)
!2081 = !DILocation(line: 0, scope: !2080)
!2082 = !DILocation(line: 121, column: 1, scope: !2030)
!2083 = distinct !DISubprogram(name: "argmatch_invalid", scope: !306, file: !306, line: 129, type: !2084, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !80, !80, !2033}
!2086 = !{!2087, !2088, !2089, !2090}
!2087 = !DILocalVariable(name: "context", arg: 1, scope: !2083, file: !306, line: 129, type: !80)
!2088 = !DILocalVariable(name: "value", arg: 2, scope: !2083, file: !306, line: 129, type: !80)
!2089 = !DILocalVariable(name: "problem", arg: 3, scope: !2083, file: !306, line: 129, type: !2033)
!2090 = !DILocalVariable(name: "format", scope: !2083, file: !306, line: 131, type: !80)
!2091 = !DILocation(line: 0, scope: !2083)
!2092 = !DILocation(line: 131, column: 33, scope: !2083)
!2093 = !DILocation(line: 131, column: 25, scope: !2083)
!2094 = !DILocation(line: 135, column: 24, scope: !2083)
!2095 = !DILocation(line: 136, column: 10, scope: !2083)
!2096 = !DILocation(line: 135, column: 3, scope: !2083)
!2097 = !DILocation(line: 137, column: 1, scope: !2083)
!2098 = distinct !DISubprogram(name: "argmatch_valid", scope: !306, file: !306, line: 144, type: !2099, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !2101)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !2034, !196, !137}
!2101 = !{!2102, !2103, !2104, !2105, !2106}
!2102 = !DILocalVariable(name: "arglist", arg: 1, scope: !2098, file: !306, line: 144, type: !2034)
!2103 = !DILocalVariable(name: "vallist", arg: 2, scope: !2098, file: !306, line: 145, type: !196)
!2104 = !DILocalVariable(name: "valsize", arg: 3, scope: !2098, file: !306, line: 145, type: !137)
!2105 = !DILocalVariable(name: "i", scope: !2098, file: !306, line: 147, type: !137)
!2106 = !DILocalVariable(name: "last_val", scope: !2098, file: !306, line: 148, type: !80)
!2107 = !DILocation(line: 0, scope: !2098)
!2108 = !DILocation(line: 152, column: 3, scope: !2098)
!2109 = !DILocation(line: 153, column: 15, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !306, line: 153, column: 3)
!2111 = distinct !DILexicalBlock(scope: !2098, file: !306, line: 153, column: 3)
!2112 = !DILocation(line: 153, column: 3, scope: !2111)
!2113 = !DILocation(line: 154, column: 12, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !306, line: 154, column: 9)
!2115 = !DILocation(line: 155, column: 9, scope: !2114)
!2116 = !DILocation(line: 155, column: 63, scope: !2114)
!2117 = !DILocation(line: 155, column: 53, scope: !2114)
!2118 = !DILocation(line: 155, column: 12, scope: !2114)
!2119 = !DILocation(line: 154, column: 9, scope: !2110)
!2120 = !DILocation(line: 158, column: 53, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2114, file: !306, line: 156, column: 7)
!2122 = !DILocation(line: 157, column: 9, scope: !2121)
!2123 = !DILocation(line: 158, column: 43, scope: !2121)
!2124 = !DILocation(line: 159, column: 7, scope: !2121)
!2125 = !DILocation(line: 162, column: 9, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2114, file: !306, line: 161, column: 7)
!2127 = !DILocation(line: 153, column: 28, scope: !2110)
!2128 = distinct !{!2128, !2112, !2129}
!2129 = !DILocation(line: 163, column: 7, scope: !2111)
!2130 = !DILocation(line: 164, column: 3, scope: !2098)
!2131 = !DILocalVariable(name: "__c", arg: 1, scope: !2132, file: !1755, line: 101, type: !82)
!2132 = distinct !DISubprogram(name: "putc_unlocked", scope: !1755, file: !1755, line: 101, type: !2133, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !2137)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!82, !82, !2135}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1498, line: 7, baseType: !317)
!2137 = !{!2131, !2138}
!2138 = !DILocalVariable(name: "__stream", arg: 2, scope: !2132, file: !1755, line: 101, type: !2135)
!2139 = !DILocation(line: 0, scope: !2132, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 164, column: 3, scope: !2098)
!2141 = !DILocation(line: 103, column: 10, scope: !2132, inlinedAt: !2140)
!2142 = !DILocation(line: 165, column: 1, scope: !2098)
!2143 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !306, file: !306, line: 174, type: !2144, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!2033, !80, !80, !2034, !196, !137, !352}
!2146 = !{!2147, !2148, !2149, !2150, !2151, !2152, !2153}
!2147 = !DILocalVariable(name: "context", arg: 1, scope: !2143, file: !306, line: 174, type: !80)
!2148 = !DILocalVariable(name: "arg", arg: 2, scope: !2143, file: !306, line: 175, type: !80)
!2149 = !DILocalVariable(name: "arglist", arg: 3, scope: !2143, file: !306, line: 175, type: !2034)
!2150 = !DILocalVariable(name: "vallist", arg: 4, scope: !2143, file: !306, line: 176, type: !196)
!2151 = !DILocalVariable(name: "valsize", arg: 5, scope: !2143, file: !306, line: 176, type: !137)
!2152 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !2143, file: !306, line: 177, type: !352)
!2153 = !DILocalVariable(name: "res", scope: !2143, file: !306, line: 179, type: !2033)
!2154 = !DILocation(line: 0, scope: !2143)
!2155 = !DILocation(line: 0, scope: !2030, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 179, column: 19, scope: !2143)
!2157 = !DILocation(line: 90, column: 12, scope: !2030, inlinedAt: !2156)
!2158 = !DILocation(line: 93, column: 15, scope: !2047, inlinedAt: !2156)
!2159 = !DILocation(line: 93, column: 3, scope: !2048, inlinedAt: !2156)
!2160 = !DILocation(line: 0, scope: !2051, inlinedAt: !2156)
!2161 = !DILocation(line: 95, column: 12, scope: !2056, inlinedAt: !2156)
!2162 = !DILocation(line: 95, column: 11, scope: !2057, inlinedAt: !2156)
!2163 = !DILocation(line: 97, column: 15, scope: !2054, inlinedAt: !2156)
!2164 = !DILocation(line: 97, column: 35, scope: !2054, inlinedAt: !2156)
!2165 = !DILocation(line: 97, column: 15, scope: !2055, inlinedAt: !2156)
!2166 = !DILocation(line: 100, column: 29, scope: !2053, inlinedAt: !2156)
!2167 = !DILocation(line: 100, column: 20, scope: !2054, inlinedAt: !2156)
!2168 = !DILocation(line: 107, column: 19, scope: !2051, inlinedAt: !2156)
!2169 = !DILocation(line: 107, column: 63, scope: !2051, inlinedAt: !2156)
!2170 = !DILocation(line: 107, column: 53, scope: !2051, inlinedAt: !2156)
!2171 = !DILocation(line: 108, column: 63, scope: !2051, inlinedAt: !2156)
!2172 = !DILocation(line: 108, column: 53, scope: !2051, inlinedAt: !2156)
!2173 = !DILocation(line: 107, column: 22, scope: !2051, inlinedAt: !2156)
!2174 = !DILocation(line: 106, column: 19, scope: !2052, inlinedAt: !2156)
!2175 = !DILocation(line: 113, column: 17, scope: !2073, inlinedAt: !2156)
!2176 = !DILocation(line: 93, column: 28, scope: !2047, inlinedAt: !2156)
!2177 = distinct !{!2177, !2159, !2178}
!2178 = !DILocation(line: 116, column: 5, scope: !2048, inlinedAt: !2156)
!2179 = !DILocation(line: 117, column: 7, scope: !2080, inlinedAt: !2156)
!2180 = !DILocation(line: 180, column: 11, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2143, file: !306, line: 180, column: 7)
!2182 = !DILocation(line: 180, column: 7, scope: !2143)
!2183 = !DILocation(line: 0, scope: !2083, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 185, column: 3, scope: !2143)
!2185 = !DILocation(line: 131, column: 33, scope: !2083, inlinedAt: !2184)
!2186 = !DILocation(line: 131, column: 25, scope: !2083, inlinedAt: !2184)
!2187 = !DILocation(line: 135, column: 24, scope: !2083, inlinedAt: !2184)
!2188 = !DILocation(line: 136, column: 10, scope: !2083, inlinedAt: !2184)
!2189 = !DILocation(line: 135, column: 3, scope: !2083, inlinedAt: !2184)
!2190 = !DILocation(line: 186, column: 3, scope: !2143)
!2191 = !DILocation(line: 187, column: 3, scope: !2143)
!2192 = !DILocation(line: 189, column: 3, scope: !2143)
!2193 = !DILocation(line: 190, column: 1, scope: !2143)
!2194 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !306, file: !306, line: 195, type: !2195, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !2197)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!80, !196, !2034, !196, !137}
!2197 = !{!2198, !2199, !2200, !2201, !2202}
!2198 = !DILocalVariable(name: "value", arg: 1, scope: !2194, file: !306, line: 195, type: !196)
!2199 = !DILocalVariable(name: "arglist", arg: 2, scope: !2194, file: !306, line: 196, type: !2034)
!2200 = !DILocalVariable(name: "vallist", arg: 3, scope: !2194, file: !306, line: 197, type: !196)
!2201 = !DILocalVariable(name: "valsize", arg: 4, scope: !2194, file: !306, line: 197, type: !137)
!2202 = !DILocalVariable(name: "i", scope: !2194, file: !306, line: 199, type: !137)
!2203 = !DILocation(line: 0, scope: !2194)
!2204 = !DILocation(line: 201, column: 15, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !306, line: 201, column: 3)
!2206 = distinct !DILexicalBlock(scope: !2194, file: !306, line: 201, column: 3)
!2207 = !DILocation(line: 201, column: 3, scope: !2206)
!2208 = !DILocation(line: 202, column: 10, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !306, line: 202, column: 9)
!2210 = !DILocation(line: 202, column: 9, scope: !2205)
!2211 = distinct !{!2211, !2207, !2212}
!2212 = !DILocation(line: 203, column: 23, scope: !2206)
!2213 = !DILocation(line: 202, column: 58, scope: !2209)
!2214 = !DILocation(line: 202, column: 48, scope: !2209)
!2215 = !DILocation(line: 201, column: 28, scope: !2205)
!2216 = !DILocation(line: 205, column: 1, scope: !2194)
!2217 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !357, file: !357, line: 51, type: !151, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !2218)
!2218 = !{!2219}
!2219 = !DILocalVariable(name: "file", arg: 1, scope: !2217, file: !357, line: 51, type: !80)
!2220 = !DILocation(line: 0, scope: !2217)
!2221 = !DILocation(line: 53, column: 13, scope: !2217)
!2222 = !DILocation(line: 54, column: 1, scope: !2217)
!2223 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !357, file: !357, line: 88, type: !2224, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !256}
!2226 = !{!2227}
!2227 = !DILocalVariable(name: "ignore", arg: 1, scope: !2223, file: !357, line: 88, type: !256)
!2228 = !DILocation(line: 0, scope: !2223)
!2229 = !DILocation(line: 90, column: 16, scope: !2223)
!2230 = !{!2231, !2231, i64 0}
!2231 = !{!"_Bool", !1398, i64 0}
!2232 = !DILocation(line: 91, column: 1, scope: !2223)
!2233 = distinct !DISubprogram(name: "close_stdout", scope: !357, file: !357, line: 117, type: !165, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !2234)
!2234 = !{!2235}
!2235 = !DILocalVariable(name: "write_error", scope: !2236, file: !357, line: 122, type: !80)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !357, line: 121, column: 5)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !357, line: 119, column: 7)
!2238 = !DILocation(line: 119, column: 21, scope: !2237)
!2239 = !DILocation(line: 119, column: 7, scope: !2237)
!2240 = !DILocation(line: 119, column: 29, scope: !2237)
!2241 = !DILocation(line: 120, column: 7, scope: !2237)
!2242 = !DILocation(line: 120, column: 12, scope: !2237)
!2243 = !{i8 0, i8 2}
!2244 = !DILocation(line: 120, column: 25, scope: !2237)
!2245 = !DILocation(line: 120, column: 28, scope: !2237)
!2246 = !DILocation(line: 120, column: 34, scope: !2237)
!2247 = !DILocation(line: 119, column: 7, scope: !2233)
!2248 = !DILocation(line: 122, column: 33, scope: !2236)
!2249 = !DILocation(line: 0, scope: !2236)
!2250 = !DILocation(line: 123, column: 11, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2236, file: !357, line: 123, column: 11)
!2252 = !DILocation(line: 0, scope: !2251)
!2253 = !DILocation(line: 123, column: 11, scope: !2236)
!2254 = !DILocation(line: 124, column: 36, scope: !2251)
!2255 = !DILocation(line: 124, column: 9, scope: !2251)
!2256 = !DILocation(line: 127, column: 9, scope: !2251)
!2257 = !DILocation(line: 129, column: 14, scope: !2236)
!2258 = !DILocation(line: 129, column: 7, scope: !2236)
!2259 = !DILocation(line: 134, column: 42, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2233, file: !357, line: 134, column: 7)
!2261 = !DILocation(line: 134, column: 28, scope: !2260)
!2262 = !DILocation(line: 134, column: 50, scope: !2260)
!2263 = !DILocation(line: 134, column: 7, scope: !2233)
!2264 = !DILocation(line: 135, column: 12, scope: !2260)
!2265 = !DILocation(line: 135, column: 5, scope: !2260)
!2266 = !DILocation(line: 136, column: 1, scope: !2233)
!2267 = distinct !DISubprogram(name: "fdadvise", scope: !558, file: !558, line: 31, type: !2268, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !557, retainedNodes: !2272)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{null, !82, !2270, !2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !85, line: 63, baseType: !111)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !50, line: 52, baseType: !49)
!2272 = !{!2273, !2274, !2275, !2276, !2277}
!2273 = !DILocalVariable(name: "fd", arg: 1, scope: !2267, file: !558, line: 31, type: !82)
!2274 = !DILocalVariable(name: "offset", arg: 2, scope: !2267, file: !558, line: 31, type: !2270)
!2275 = !DILocalVariable(name: "len", arg: 3, scope: !2267, file: !558, line: 31, type: !2270)
!2276 = !DILocalVariable(name: "advice", arg: 4, scope: !2267, file: !558, line: 31, type: !2271)
!2277 = !DILocalVariable(name: "__x", scope: !2278, file: !558, line: 34, type: !82)
!2278 = distinct !DILexicalBlock(scope: !2267, file: !558, line: 34, column: 3)
!2279 = !DILocation(line: 0, scope: !2267)
!2280 = !DILocation(line: 34, column: 3, scope: !2278)
!2281 = !DILocation(line: 0, scope: !2278)
!2282 = !DILocation(line: 36, column: 1, scope: !2267)
!2283 = distinct !DISubprogram(name: "fadvise", scope: !558, file: !558, line: 39, type: !2284, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !557, retainedNodes: !2288)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !2286, !2271}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1498, line: 7, baseType: !569)
!2288 = !{!2289, !2290}
!2289 = !DILocalVariable(name: "fp", arg: 1, scope: !2283, file: !558, line: 39, type: !2286)
!2290 = !DILocalVariable(name: "advice", arg: 2, scope: !2283, file: !558, line: 39, type: !2271)
!2291 = !DILocation(line: 0, scope: !2283)
!2292 = !DILocation(line: 41, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2283, file: !558, line: 41, column: 7)
!2294 = !DILocation(line: 41, column: 7, scope: !2283)
!2295 = !DILocation(line: 42, column: 15, scope: !2293)
!2296 = !DILocation(line: 0, scope: !2267, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 42, column: 5, scope: !2293)
!2298 = !DILocation(line: 34, column: 3, scope: !2278, inlinedAt: !2297)
!2299 = !DILocation(line: 0, scope: !2278, inlinedAt: !2297)
!2300 = !DILocation(line: 42, column: 5, scope: !2293)
!2301 = !DILocation(line: 43, column: 1, scope: !2283)
!2302 = distinct !DISubprogram(name: "freopen_safer", scope: !601, file: !601, line: 62, type: !2303, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !2307)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!2305, !80, !80, !2305}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1498, line: 7, baseType: !607)
!2307 = !{!2308, !2309, !2310, !2311, !2312, !2313, !2314}
!2308 = !DILocalVariable(name: "name", arg: 1, scope: !2302, file: !601, line: 62, type: !80)
!2309 = !DILocalVariable(name: "mode", arg: 2, scope: !2302, file: !601, line: 62, type: !80)
!2310 = !DILocalVariable(name: "f", arg: 3, scope: !2302, file: !601, line: 62, type: !2305)
!2311 = !DILocalVariable(name: "protect_in", scope: !2302, file: !601, line: 70, type: !256)
!2312 = !DILocalVariable(name: "protect_out", scope: !2302, file: !601, line: 71, type: !256)
!2313 = !DILocalVariable(name: "protect_err", scope: !2302, file: !601, line: 72, type: !256)
!2314 = !DILocalVariable(name: "saved_errno", scope: !2302, file: !601, line: 73, type: !82)
!2315 = !DILocation(line: 0, scope: !2302)
!2316 = !DILocation(line: 75, column: 11, scope: !2302)
!2317 = !DILocation(line: 75, column: 3, scope: !2302)
!2318 = !DILocation(line: 78, column: 11, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !601, line: 78, column: 11)
!2320 = distinct !DILexicalBlock(scope: !2302, file: !601, line: 76, column: 5)
!2321 = !DILocation(line: 78, column: 47, scope: !2319)
!2322 = !DILocation(line: 78, column: 11, scope: !2320)
!2323 = !DILocation(line: 82, column: 11, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !601, line: 82, column: 11)
!2325 = !DILocation(line: 82, column: 47, scope: !2324)
!2326 = !DILocation(line: 82, column: 11, scope: !2320)
!2327 = !DILocation(line: 86, column: 11, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2320, file: !601, line: 86, column: 11)
!2329 = !DILocation(line: 86, column: 45, scope: !2328)
!2330 = !DILocation(line: 93, column: 18, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2302, file: !601, line: 93, column: 7)
!2332 = !DILocalVariable(name: "fd", arg: 1, scope: !2333, file: !601, line: 40, type: !82)
!2333 = distinct !DISubprogram(name: "protect_fd", scope: !601, file: !601, line: 40, type: !918, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !2334)
!2334 = !{!2332, !2335}
!2335 = !DILocalVariable(name: "value", scope: !2333, file: !601, line: 42, type: !82)
!2336 = !DILocation(line: 0, scope: !2333, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 93, column: 22, scope: !2331)
!2338 = !DILocation(line: 42, column: 15, scope: !2333, inlinedAt: !2337)
!2339 = !DILocation(line: 43, column: 13, scope: !2340, inlinedAt: !2337)
!2340 = distinct !DILexicalBlock(scope: !2333, file: !601, line: 43, column: 7)
!2341 = !DILocation(line: 43, column: 7, scope: !2333, inlinedAt: !2337)
!2342 = !DILocation(line: 45, column: 13, scope: !2343, inlinedAt: !2337)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !601, line: 45, column: 11)
!2344 = distinct !DILexicalBlock(scope: !2340, file: !601, line: 44, column: 5)
!2345 = !DILocation(line: 45, column: 11, scope: !2344, inlinedAt: !2337)
!2346 = !DILocation(line: 47, column: 11, scope: !2347, inlinedAt: !2337)
!2347 = distinct !DILexicalBlock(scope: !2343, file: !601, line: 46, column: 9)
!2348 = !DILocation(line: 48, column: 11, scope: !2347, inlinedAt: !2337)
!2349 = !DILocation(line: 48, column: 17, scope: !2347, inlinedAt: !2337)
!2350 = !DILocation(line: 49, column: 9, scope: !2347, inlinedAt: !2337)
!2351 = !DILocation(line: 95, column: 12, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2331, file: !601, line: 95, column: 12)
!2353 = !DILocation(line: 95, column: 24, scope: !2352)
!2354 = !DILocation(line: 0, scope: !2333, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 95, column: 28, scope: !2352)
!2356 = !DILocation(line: 42, column: 15, scope: !2333, inlinedAt: !2355)
!2357 = !DILocation(line: 43, column: 13, scope: !2340, inlinedAt: !2355)
!2358 = !DILocation(line: 43, column: 7, scope: !2333, inlinedAt: !2355)
!2359 = !DILocation(line: 45, column: 13, scope: !2343, inlinedAt: !2355)
!2360 = !DILocation(line: 45, column: 11, scope: !2344, inlinedAt: !2355)
!2361 = !DILocation(line: 47, column: 11, scope: !2347, inlinedAt: !2355)
!2362 = !DILocation(line: 48, column: 11, scope: !2347, inlinedAt: !2355)
!2363 = !DILocation(line: 48, column: 17, scope: !2347, inlinedAt: !2355)
!2364 = !DILocation(line: 49, column: 9, scope: !2347, inlinedAt: !2355)
!2365 = !DILocation(line: 97, column: 12, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2352, file: !601, line: 97, column: 12)
!2367 = !DILocation(line: 97, column: 24, scope: !2366)
!2368 = !DILocation(line: 0, scope: !2333, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 97, column: 28, scope: !2366)
!2370 = !DILocation(line: 42, column: 15, scope: !2333, inlinedAt: !2369)
!2371 = !DILocation(line: 43, column: 13, scope: !2340, inlinedAt: !2369)
!2372 = !DILocation(line: 43, column: 7, scope: !2333, inlinedAt: !2369)
!2373 = !DILocation(line: 45, column: 13, scope: !2343, inlinedAt: !2369)
!2374 = !DILocation(line: 45, column: 11, scope: !2344, inlinedAt: !2369)
!2375 = !DILocation(line: 47, column: 11, scope: !2347, inlinedAt: !2369)
!2376 = !DILocation(line: 48, column: 11, scope: !2347, inlinedAt: !2369)
!2377 = !DILocation(line: 48, column: 17, scope: !2347, inlinedAt: !2369)
!2378 = !DILocation(line: 49, column: 9, scope: !2347, inlinedAt: !2369)
!2379 = !DILocation(line: 100, column: 9, scope: !2366)
!2380 = !DILocation(line: 101, column: 17, scope: !2302)
!2381 = !DILocation(line: 102, column: 7, scope: !2302)
!2382 = !DILocation(line: 0, scope: !2331)
!2383 = !DILocation(line: 102, column: 7, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2302, file: !601, line: 102, column: 7)
!2385 = !DILocation(line: 103, column: 5, scope: !2384)
!2386 = !DILocation(line: 104, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2302, file: !601, line: 104, column: 7)
!2388 = !DILocation(line: 104, column: 7, scope: !2302)
!2389 = !DILocation(line: 105, column: 5, scope: !2387)
!2390 = !DILocation(line: 106, column: 7, scope: !2302)
!2391 = !DILocation(line: 107, column: 5, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2302, file: !601, line: 106, column: 7)
!2393 = !DILocation(line: 108, column: 8, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2302, file: !601, line: 108, column: 7)
!2395 = !DILocation(line: 108, column: 7, scope: !2302)
!2396 = !DILocation(line: 109, column: 11, scope: !2394)
!2397 = !DILocation(line: 109, column: 5, scope: !2394)
!2398 = !DILocation(line: 110, column: 3, scope: !2302)
!2399 = distinct !DISubprogram(name: "initbuffer", scope: !652, file: !652, line: 37, type: !2400, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{null, !657}
!2402 = !{!2403}
!2403 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2399, file: !652, line: 37, type: !657)
!2404 = !DILocation(line: 0, scope: !2399)
!2405 = !DILocation(line: 39, column: 11, scope: !2399)
!2406 = !DILocalVariable(name: "__dest", arg: 1, scope: !2407, file: !2408, line: 59, type: !135)
!2407 = distinct !DISubprogram(name: "memset", scope: !2408, file: !2408, line: 59, type: !2409, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2411)
!2408 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!135, !135, !82, !137}
!2411 = !{!2406, !2412, !2413}
!2412 = !DILocalVariable(name: "__ch", arg: 2, scope: !2407, file: !2408, line: 59, type: !82)
!2413 = !DILocalVariable(name: "__len", arg: 3, scope: !2407, file: !2408, line: 59, type: !137)
!2414 = !DILocation(line: 0, scope: !2407, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 39, column: 3, scope: !2399)
!2416 = !DILocation(line: 71, column: 10, scope: !2407, inlinedAt: !2415)
!2417 = !DILocation(line: 40, column: 1, scope: !2399)
!2418 = distinct !DISubprogram(name: "readlinebuffer", scope: !652, file: !652, line: 43, type: !2419, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2423)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!657, !657, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1498, line: 7, baseType: !664)
!2423 = !{!2424, !2425}
!2424 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2418, file: !652, line: 43, type: !657)
!2425 = !DILocalVariable(name: "stream", arg: 2, scope: !2418, file: !652, line: 43, type: !2421)
!2426 = !DILocation(line: 0, scope: !2418)
!2427 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2428, file: !652, line: 59, type: !657)
!2428 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !652, file: !652, line: 59, type: !2429, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2431)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!657, !657, !2421, !79}
!2431 = !{!2427, !2432, !2433, !2434, !2435, !2436, !2437, !2438}
!2432 = !DILocalVariable(name: "stream", arg: 2, scope: !2428, file: !652, line: 59, type: !2421)
!2433 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2428, file: !652, line: 60, type: !79)
!2434 = !DILocalVariable(name: "c", scope: !2428, file: !652, line: 62, type: !82)
!2435 = !DILocalVariable(name: "buffer", scope: !2428, file: !652, line: 63, type: !78)
!2436 = !DILocalVariable(name: "p", scope: !2428, file: !652, line: 64, type: !78)
!2437 = !DILocalVariable(name: "end", scope: !2428, file: !652, line: 65, type: !78)
!2438 = !DILocalVariable(name: "oldsize", scope: !2439, file: !652, line: 83, type: !137)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !652, line: 82, column: 9)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !652, line: 81, column: 11)
!2441 = distinct !DILexicalBlock(scope: !2428, file: !652, line: 71, column: 5)
!2442 = !DILocation(line: 0, scope: !2428, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 45, column: 10, scope: !2418)
!2444 = !DILocation(line: 63, column: 30, scope: !2428, inlinedAt: !2443)
!2445 = !DILocation(line: 65, column: 36, scope: !2428, inlinedAt: !2443)
!2446 = !DILocalVariable(name: "__stream", arg: 1, scope: !2447, file: !1755, line: 128, type: !2421)
!2447 = distinct !DISubprogram(name: "feof_unlocked", scope: !1755, file: !1755, line: 128, type: !2448, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!82, !2421}
!2450 = !{!2446}
!2451 = !DILocation(line: 0, scope: !2447, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 67, column: 7, scope: !2453, inlinedAt: !2443)
!2453 = distinct !DILexicalBlock(scope: !2428, file: !652, line: 67, column: 7)
!2454 = !DILocation(line: 130, column: 10, scope: !2447, inlinedAt: !2452)
!2455 = !DILocation(line: 67, column: 7, scope: !2453, inlinedAt: !2443)
!2456 = !DILocation(line: 67, column: 7, scope: !2428, inlinedAt: !2443)
!2457 = !{!1777, !1536, i64 0}
!2458 = !DILocation(line: 65, column: 22, scope: !2428, inlinedAt: !2443)
!2459 = !DILocation(line: 0, scope: !2460, inlinedAt: !2463)
!2460 = distinct !DISubprogram(name: "getc_unlocked", scope: !1755, file: !1755, line: 66, type: !2448, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2461)
!2461 = !{!2462}
!2462 = !DILocalVariable(name: "__fp", arg: 1, scope: !2460, file: !1755, line: 66, type: !2421)
!2463 = distinct !DILocation(line: 72, column: 11, scope: !2441, inlinedAt: !2443)
!2464 = !DILocation(line: 70, column: 3, scope: !2428, inlinedAt: !2443)
!2465 = !DILocation(line: 68, column: 10, scope: !2460, inlinedAt: !2463)
!2466 = !{!1763, !1397, i64 8}
!2467 = !{!1763, !1397, i64 16}
!2468 = !DILocation(line: 73, column: 11, scope: !2441, inlinedAt: !2443)
!2469 = !DILocation(line: 73, column: 13, scope: !2470, inlinedAt: !2443)
!2470 = distinct !DILexicalBlock(scope: !2441, file: !652, line: 73, column: 11)
!2471 = !DILocation(line: 75, column: 17, scope: !2472, inlinedAt: !2443)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !652, line: 75, column: 15)
!2473 = distinct !DILexicalBlock(scope: !2470, file: !652, line: 74, column: 9)
!2474 = !DILocation(line: 75, column: 27, scope: !2472, inlinedAt: !2443)
!2475 = !DILocalVariable(name: "__stream", arg: 1, scope: !2476, file: !1755, line: 135, type: !2421)
!2476 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1755, file: !1755, line: 135, type: !2448, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2477)
!2477 = !{!2475}
!2478 = !DILocation(line: 0, scope: !2476, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 75, column: 30, scope: !2472, inlinedAt: !2443)
!2480 = !DILocation(line: 137, column: 10, scope: !2476, inlinedAt: !2479)
!2481 = !DILocation(line: 75, column: 30, scope: !2472, inlinedAt: !2443)
!2482 = !DILocation(line: 75, column: 15, scope: !2473, inlinedAt: !2443)
!2483 = !DILocation(line: 77, column: 15, scope: !2484, inlinedAt: !2443)
!2484 = distinct !DILexicalBlock(scope: !2473, file: !652, line: 77, column: 15)
!2485 = !DILocation(line: 77, column: 21, scope: !2484, inlinedAt: !2443)
!2486 = !DILocation(line: 77, column: 15, scope: !2473, inlinedAt: !2443)
!2487 = !DILocation(line: 0, scope: !2441, inlinedAt: !2443)
!2488 = !DILocation(line: 81, column: 13, scope: !2440, inlinedAt: !2443)
!2489 = !DILocation(line: 81, column: 11, scope: !2441, inlinedAt: !2443)
!2490 = !DILocation(line: 83, column: 40, scope: !2439, inlinedAt: !2443)
!2491 = !DILocation(line: 0, scope: !2439, inlinedAt: !2443)
!2492 = !DILocation(line: 84, column: 20, scope: !2439, inlinedAt: !2443)
!2493 = !DILocation(line: 85, column: 22, scope: !2439, inlinedAt: !2443)
!2494 = !DILocation(line: 86, column: 30, scope: !2439, inlinedAt: !2443)
!2495 = !DILocation(line: 87, column: 38, scope: !2439, inlinedAt: !2443)
!2496 = !DILocation(line: 87, column: 24, scope: !2439, inlinedAt: !2443)
!2497 = !DILocation(line: 88, column: 9, scope: !2439, inlinedAt: !2443)
!2498 = !DILocation(line: 89, column: 14, scope: !2441, inlinedAt: !2443)
!2499 = !DILocation(line: 89, column: 9, scope: !2441, inlinedAt: !2443)
!2500 = !DILocation(line: 89, column: 12, scope: !2441, inlinedAt: !2443)
!2501 = !DILocation(line: 91, column: 12, scope: !2428, inlinedAt: !2443)
!2502 = !DILocation(line: 90, column: 5, scope: !2441, inlinedAt: !2443)
!2503 = distinct !{!2503, !2464, !2504}
!2504 = !DILocation(line: 91, column: 24, scope: !2428, inlinedAt: !2443)
!2505 = !DILocation(line: 93, column: 26, scope: !2428, inlinedAt: !2443)
!2506 = !DILocation(line: 93, column: 15, scope: !2428, inlinedAt: !2443)
!2507 = !DILocation(line: 93, column: 22, scope: !2428, inlinedAt: !2443)
!2508 = !DILocation(line: 94, column: 3, scope: !2428, inlinedAt: !2443)
!2509 = !DILocation(line: 45, column: 3, scope: !2418)
!2510 = !DILocation(line: 0, scope: !2428)
!2511 = !DILocation(line: 63, column: 30, scope: !2428)
!2512 = !DILocation(line: 65, column: 36, scope: !2428)
!2513 = !DILocation(line: 0, scope: !2447, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 67, column: 7, scope: !2453)
!2515 = !DILocation(line: 130, column: 10, scope: !2447, inlinedAt: !2514)
!2516 = !DILocation(line: 67, column: 7, scope: !2453)
!2517 = !DILocation(line: 67, column: 7, scope: !2428)
!2518 = !DILocation(line: 65, column: 22, scope: !2428)
!2519 = !DILocation(line: 0, scope: !2460, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 72, column: 11, scope: !2441)
!2521 = !DILocation(line: 0, scope: !2484)
!2522 = !DILocation(line: 70, column: 3, scope: !2428)
!2523 = !DILocation(line: 68, column: 10, scope: !2460, inlinedAt: !2520)
!2524 = !DILocation(line: 73, column: 11, scope: !2441)
!2525 = !DILocation(line: 73, column: 13, scope: !2470)
!2526 = !DILocation(line: 75, column: 17, scope: !2472)
!2527 = !DILocation(line: 75, column: 27, scope: !2472)
!2528 = !DILocation(line: 0, scope: !2476, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 75, column: 30, scope: !2472)
!2530 = !DILocation(line: 137, column: 10, scope: !2476, inlinedAt: !2529)
!2531 = !DILocation(line: 75, column: 30, scope: !2472)
!2532 = !DILocation(line: 75, column: 15, scope: !2473)
!2533 = !DILocation(line: 77, column: 15, scope: !2484)
!2534 = !DILocation(line: 77, column: 21, scope: !2484)
!2535 = !DILocation(line: 77, column: 15, scope: !2473)
!2536 = !DILocation(line: 0, scope: !2441)
!2537 = !DILocation(line: 81, column: 13, scope: !2440)
!2538 = !DILocation(line: 81, column: 11, scope: !2441)
!2539 = !DILocation(line: 83, column: 40, scope: !2439)
!2540 = !DILocation(line: 0, scope: !2439)
!2541 = !DILocation(line: 84, column: 20, scope: !2439)
!2542 = !DILocation(line: 85, column: 22, scope: !2439)
!2543 = !DILocation(line: 86, column: 30, scope: !2439)
!2544 = !DILocation(line: 87, column: 38, scope: !2439)
!2545 = !DILocation(line: 87, column: 24, scope: !2439)
!2546 = !DILocation(line: 88, column: 9, scope: !2439)
!2547 = !DILocation(line: 89, column: 14, scope: !2441)
!2548 = !DILocation(line: 89, column: 9, scope: !2441)
!2549 = !DILocation(line: 89, column: 12, scope: !2441)
!2550 = !DILocation(line: 91, column: 12, scope: !2428)
!2551 = !DILocation(line: 90, column: 5, scope: !2441)
!2552 = distinct !{!2552, !2522, !2553}
!2553 = !DILocation(line: 91, column: 24, scope: !2428)
!2554 = !DILocation(line: 93, column: 26, scope: !2428)
!2555 = !DILocation(line: 93, column: 15, scope: !2428)
!2556 = !DILocation(line: 93, column: 22, scope: !2428)
!2557 = !DILocation(line: 94, column: 3, scope: !2428)
!2558 = !DILocation(line: 95, column: 1, scope: !2428)
!2559 = distinct !DISubprogram(name: "freebuffer", scope: !652, file: !652, line: 100, type: !2400, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2560)
!2560 = !{!2561}
!2561 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2559, file: !652, line: 100, type: !657)
!2562 = !DILocation(line: 0, scope: !2559)
!2563 = !DILocation(line: 102, column: 21, scope: !2559)
!2564 = !DILocation(line: 102, column: 3, scope: !2559)
!2565 = !DILocation(line: 103, column: 1, scope: !2559)
!2566 = distinct !DISubprogram(name: "memcasecmp", scope: !700, file: !700, line: 32, type: !2567, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!82, !196, !196, !137}
!2569 = !{!2570, !2571, !2572, !2573, !2574, !2575, !2576, !2580, !2581, !2582, !2584, !2585, !2587}
!2570 = !DILocalVariable(name: "vs1", arg: 1, scope: !2566, file: !700, line: 32, type: !196)
!2571 = !DILocalVariable(name: "vs2", arg: 2, scope: !2566, file: !700, line: 32, type: !196)
!2572 = !DILocalVariable(name: "n", arg: 3, scope: !2566, file: !700, line: 32, type: !137)
!2573 = !DILocalVariable(name: "i", scope: !2566, file: !700, line: 34, type: !137)
!2574 = !DILocalVariable(name: "s1", scope: !2566, file: !700, line: 35, type: !80)
!2575 = !DILocalVariable(name: "s2", scope: !2566, file: !700, line: 36, type: !80)
!2576 = !DILocalVariable(name: "u1", scope: !2577, file: !700, line: 39, type: !246)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !700, line: 38, column: 5)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !700, line: 37, column: 3)
!2579 = distinct !DILexicalBlock(scope: !2566, file: !700, line: 37, column: 3)
!2580 = !DILocalVariable(name: "u2", scope: !2577, file: !700, line: 40, type: !246)
!2581 = !DILocalVariable(name: "U1", scope: !2577, file: !700, line: 41, type: !82)
!2582 = !DILocalVariable(name: "__res", scope: !2583, file: !700, line: 41, type: !82)
!2583 = distinct !DILexicalBlock(scope: !2577, file: !700, line: 41, column: 16)
!2584 = !DILocalVariable(name: "U2", scope: !2577, file: !700, line: 42, type: !82)
!2585 = !DILocalVariable(name: "__res", scope: !2586, file: !700, line: 42, type: !82)
!2586 = distinct !DILexicalBlock(scope: !2577, file: !700, line: 42, column: 16)
!2587 = !DILocalVariable(name: "diff", scope: !2577, file: !700, line: 43, type: !82)
!2588 = !DILocation(line: 0, scope: !2566)
!2589 = !DILocation(line: 37, column: 17, scope: !2578)
!2590 = !DILocation(line: 37, column: 3, scope: !2579)
!2591 = !DILocation(line: 0, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2583, file: !700, line: 41, column: 16)
!2593 = distinct !{!2593, !2590, !2594}
!2594 = !DILocation(line: 47, column: 5, scope: !2579)
!2595 = !DILocation(line: 39, column: 26, scope: !2577)
!2596 = !DILocation(line: 0, scope: !2577)
!2597 = !DILocation(line: 40, column: 26, scope: !2577)
!2598 = !DILocation(line: 41, column: 16, scope: !2592)
!2599 = !DILocation(line: 0, scope: !2583)
!2600 = !DILocation(line: 42, column: 16, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2586, file: !700, line: 42, column: 16)
!2602 = !DILocation(line: 0, scope: !2586)
!2603 = !DILocation(line: 43, column: 45, scope: !2577)
!2604 = !DILocation(line: 45, column: 11, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2577, file: !700, line: 45, column: 11)
!2606 = !DILocation(line: 37, column: 23, scope: !2578)
!2607 = !DILocation(line: 49, column: 1, scope: !2566)
!2608 = distinct !DISubprogram(name: "posix2_version", scope: !702, file: !702, line: 40, type: !204, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2609)
!2609 = !{!2610, !2611, !2612, !2615}
!2610 = !DILocalVariable(name: "v", scope: !2608, file: !702, line: 42, type: !113)
!2611 = !DILocalVariable(name: "s", scope: !2608, file: !702, line: 43, type: !80)
!2612 = !DILocalVariable(name: "e", scope: !2613, file: !702, line: 47, type: !78)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !702, line: 46, column: 5)
!2614 = distinct !DILexicalBlock(scope: !2608, file: !702, line: 45, column: 7)
!2615 = !DILocalVariable(name: "i", scope: !2613, file: !702, line: 48, type: !113)
!2616 = !DILocation(line: 0, scope: !2608)
!2617 = !DILocation(line: 43, column: 19, scope: !2608)
!2618 = !DILocation(line: 45, column: 7, scope: !2614)
!2619 = !DILocation(line: 45, column: 9, scope: !2614)
!2620 = !DILocation(line: 45, column: 12, scope: !2614)
!2621 = !DILocation(line: 45, column: 7, scope: !2608)
!2622 = !DILocation(line: 47, column: 7, scope: !2613)
!2623 = !DILocation(line: 0, scope: !2613)
!2624 = !DILocation(line: 48, column: 20, scope: !2613)
!2625 = !DILocation(line: 49, column: 14, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2613, file: !702, line: 49, column: 11)
!2627 = !DILocation(line: 49, column: 13, scope: !2626)
!2628 = !DILocation(line: 51, column: 5, scope: !2614)
!2629 = !DILocation(line: 53, column: 10, scope: !2608)
!2630 = !DILocation(line: 53, column: 3, scope: !2608)
!2631 = distinct !DISubprogram(name: "set_program_name", scope: !408, file: !408, line: 39, type: !151, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !2632)
!2632 = !{!2633, !2634, !2635}
!2633 = !DILocalVariable(name: "argv0", arg: 1, scope: !2631, file: !408, line: 39, type: !80)
!2634 = !DILocalVariable(name: "slash", scope: !2631, file: !408, line: 46, type: !80)
!2635 = !DILocalVariable(name: "base", scope: !2631, file: !408, line: 47, type: !80)
!2636 = !DILocation(line: 0, scope: !2631)
!2637 = !DILocation(line: 51, column: 13, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2631, file: !408, line: 51, column: 7)
!2639 = !DILocation(line: 51, column: 7, scope: !2631)
!2640 = !DILocation(line: 55, column: 14, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2638, file: !408, line: 52, column: 5)
!2642 = !DILocation(line: 54, column: 7, scope: !2641)
!2643 = !DILocation(line: 56, column: 7, scope: !2641)
!2644 = !DILocation(line: 59, column: 11, scope: !2631)
!2645 = !DILocation(line: 60, column: 17, scope: !2631)
!2646 = !DILocation(line: 60, column: 11, scope: !2631)
!2647 = !DILocation(line: 61, column: 12, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2631, file: !408, line: 61, column: 7)
!2649 = !DILocation(line: 61, column: 20, scope: !2648)
!2650 = !DILocation(line: 61, column: 25, scope: !2648)
!2651 = !DILocation(line: 61, column: 42, scope: !2648)
!2652 = !DILocation(line: 61, column: 28, scope: !2648)
!2653 = !DILocation(line: 61, column: 61, scope: !2648)
!2654 = !DILocation(line: 61, column: 7, scope: !2631)
!2655 = !DILocation(line: 64, column: 11, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !408, line: 64, column: 11)
!2657 = distinct !DILexicalBlock(scope: !2648, file: !408, line: 62, column: 5)
!2658 = !DILocation(line: 64, column: 36, scope: !2656)
!2659 = !DILocation(line: 64, column: 11, scope: !2657)
!2660 = !DILocation(line: 66, column: 24, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2656, file: !408, line: 65, column: 9)
!2662 = !DILocation(line: 70, column: 41, scope: !2661)
!2663 = !DILocation(line: 72, column: 9, scope: !2661)
!2664 = !DILocation(line: 84, column: 16, scope: !2631)
!2665 = !DILocation(line: 90, column: 27, scope: !2631)
!2666 = !DILocation(line: 92, column: 1, scope: !2631)
!2667 = distinct !DISubprogram(name: "clone_quoting_options", scope: !449, file: !449, line: 122, type: !2668, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !2671)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!2670, !2670}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!2671 = !{!2672, !2673, !2674}
!2672 = !DILocalVariable(name: "o", arg: 1, scope: !2667, file: !449, line: 122, type: !2670)
!2673 = !DILocalVariable(name: "e", scope: !2667, file: !449, line: 124, type: !82)
!2674 = !DILocalVariable(name: "p", scope: !2667, file: !449, line: 125, type: !2670)
!2675 = !DILocation(line: 0, scope: !2667)
!2676 = !DILocation(line: 124, column: 11, scope: !2667)
!2677 = !DILocation(line: 125, column: 40, scope: !2667)
!2678 = !DILocation(line: 125, column: 31, scope: !2667)
!2679 = !DILocation(line: 127, column: 9, scope: !2667)
!2680 = !DILocation(line: 128, column: 3, scope: !2667)
!2681 = distinct !DISubprogram(name: "get_quoting_style", scope: !449, file: !449, line: 133, type: !2682, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !2684)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!35, !464}
!2684 = !{!2685}
!2685 = !DILocalVariable(name: "o", arg: 1, scope: !2681, file: !449, line: 133, type: !464)
!2686 = !DILocation(line: 0, scope: !2681)
!2687 = !DILocation(line: 135, column: 11, scope: !2681)
!2688 = !DILocation(line: 135, column: 46, scope: !2681)
!2689 = !{!2690, !1398, i64 0}
!2690 = !{!"quoting_options", !1398, i64 0, !1576, i64 4, !1398, i64 8, !1397, i64 40, !1397, i64 48}
!2691 = !DILocation(line: 135, column: 3, scope: !2681)
!2692 = distinct !DISubprogram(name: "set_quoting_style", scope: !449, file: !449, line: 141, type: !2693, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !2670, !35}
!2695 = !{!2696, !2697}
!2696 = !DILocalVariable(name: "o", arg: 1, scope: !2692, file: !449, line: 141, type: !2670)
!2697 = !DILocalVariable(name: "s", arg: 2, scope: !2692, file: !449, line: 141, type: !35)
!2698 = !DILocation(line: 0, scope: !2692)
!2699 = !DILocation(line: 143, column: 4, scope: !2692)
!2700 = !DILocation(line: 143, column: 39, scope: !2692)
!2701 = !DILocation(line: 143, column: 45, scope: !2692)
!2702 = !DILocation(line: 144, column: 1, scope: !2692)
!2703 = distinct !DISubprogram(name: "set_char_quoting", scope: !449, file: !449, line: 152, type: !2704, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!82, !2670, !79, !82}
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2713, !2714}
!2707 = !DILocalVariable(name: "o", arg: 1, scope: !2703, file: !449, line: 152, type: !2670)
!2708 = !DILocalVariable(name: "c", arg: 2, scope: !2703, file: !449, line: 152, type: !79)
!2709 = !DILocalVariable(name: "i", arg: 3, scope: !2703, file: !449, line: 152, type: !82)
!2710 = !DILocalVariable(name: "uc", scope: !2703, file: !449, line: 154, type: !246)
!2711 = !DILocalVariable(name: "p", scope: !2703, file: !449, line: 155, type: !2712)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2713 = !DILocalVariable(name: "shift", scope: !2703, file: !449, line: 157, type: !82)
!2714 = !DILocalVariable(name: "r", scope: !2703, file: !449, line: 158, type: !82)
!2715 = !DILocation(line: 0, scope: !2703)
!2716 = !DILocation(line: 156, column: 6, scope: !2703)
!2717 = !DILocation(line: 156, column: 62, scope: !2703)
!2718 = !DILocation(line: 156, column: 57, scope: !2703)
!2719 = !DILocation(line: 157, column: 15, scope: !2703)
!2720 = !DILocation(line: 158, column: 12, scope: !2703)
!2721 = !DILocation(line: 158, column: 15, scope: !2703)
!2722 = !DILocation(line: 158, column: 25, scope: !2703)
!2723 = !DILocation(line: 159, column: 13, scope: !2703)
!2724 = !DILocation(line: 159, column: 18, scope: !2703)
!2725 = !DILocation(line: 159, column: 23, scope: !2703)
!2726 = !DILocation(line: 159, column: 6, scope: !2703)
!2727 = !DILocation(line: 160, column: 3, scope: !2703)
!2728 = distinct !DISubprogram(name: "set_quoting_flags", scope: !449, file: !449, line: 168, type: !2729, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !2731)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!82, !2670, !82}
!2731 = !{!2732, !2733, !2734}
!2732 = !DILocalVariable(name: "o", arg: 1, scope: !2728, file: !449, line: 168, type: !2670)
!2733 = !DILocalVariable(name: "i", arg: 2, scope: !2728, file: !449, line: 168, type: !82)
!2734 = !DILocalVariable(name: "r", scope: !2728, file: !449, line: 170, type: !82)
!2735 = !DILocation(line: 0, scope: !2728)
!2736 = !DILocation(line: 171, column: 8, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2728, file: !449, line: 171, column: 7)
!2738 = !DILocation(line: 171, column: 7, scope: !2728)
!2739 = !DILocation(line: 173, column: 10, scope: !2728)
!2740 = !{!2690, !1576, i64 4}
!2741 = !DILocation(line: 174, column: 12, scope: !2728)
!2742 = !DILocation(line: 175, column: 3, scope: !2728)
!2743 = distinct !DISubprogram(name: "set_custom_quoting", scope: !449, file: !449, line: 179, type: !2744, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{null, !2670, !80, !80}
!2746 = !{!2747, !2748, !2749}
!2747 = !DILocalVariable(name: "o", arg: 1, scope: !2743, file: !449, line: 179, type: !2670)
!2748 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2743, file: !449, line: 180, type: !80)
!2749 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2743, file: !449, line: 180, type: !80)
!2750 = !DILocation(line: 0, scope: !2743)
!2751 = !DILocation(line: 182, column: 8, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2743, file: !449, line: 182, column: 7)
!2753 = !DILocation(line: 182, column: 7, scope: !2743)
!2754 = !DILocation(line: 184, column: 6, scope: !2743)
!2755 = !DILocation(line: 184, column: 12, scope: !2743)
!2756 = !DILocation(line: 185, column: 8, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2743, file: !449, line: 185, column: 7)
!2758 = !DILocation(line: 185, column: 23, scope: !2757)
!2759 = !DILocation(line: 185, column: 19, scope: !2757)
!2760 = !DILocation(line: 186, column: 5, scope: !2757)
!2761 = !DILocation(line: 187, column: 6, scope: !2743)
!2762 = !DILocation(line: 187, column: 17, scope: !2743)
!2763 = !{!2690, !1397, i64 40}
!2764 = !DILocation(line: 188, column: 6, scope: !2743)
!2765 = !DILocation(line: 188, column: 18, scope: !2743)
!2766 = !{!2690, !1397, i64 48}
!2767 = !DILocation(line: 189, column: 1, scope: !2743)
!2768 = distinct !DISubprogram(name: "quotearg_buffer", scope: !449, file: !449, line: 784, type: !2769, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!137, !78, !137, !80, !137, !464}
!2771 = !{!2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779}
!2772 = !DILocalVariable(name: "buffer", arg: 1, scope: !2768, file: !449, line: 784, type: !78)
!2773 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2768, file: !449, line: 784, type: !137)
!2774 = !DILocalVariable(name: "arg", arg: 3, scope: !2768, file: !449, line: 785, type: !80)
!2775 = !DILocalVariable(name: "argsize", arg: 4, scope: !2768, file: !449, line: 785, type: !137)
!2776 = !DILocalVariable(name: "o", arg: 5, scope: !2768, file: !449, line: 786, type: !464)
!2777 = !DILocalVariable(name: "p", scope: !2768, file: !449, line: 788, type: !464)
!2778 = !DILocalVariable(name: "e", scope: !2768, file: !449, line: 789, type: !82)
!2779 = !DILocalVariable(name: "r", scope: !2768, file: !449, line: 790, type: !137)
!2780 = !DILocation(line: 0, scope: !2768)
!2781 = !DILocation(line: 788, column: 37, scope: !2768)
!2782 = !DILocation(line: 789, column: 11, scope: !2768)
!2783 = !DILocation(line: 791, column: 43, scope: !2768)
!2784 = !DILocation(line: 791, column: 53, scope: !2768)
!2785 = !DILocation(line: 791, column: 60, scope: !2768)
!2786 = !DILocation(line: 792, column: 43, scope: !2768)
!2787 = !DILocation(line: 792, column: 58, scope: !2768)
!2788 = !DILocation(line: 790, column: 14, scope: !2768)
!2789 = !DILocation(line: 793, column: 9, scope: !2768)
!2790 = !DILocation(line: 794, column: 3, scope: !2768)
!2791 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !449, file: !449, line: 256, type: !2792, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !2796)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!137, !78, !137, !80, !137, !35, !82, !2794, !80, !80}
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2796 = !{!2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2821, !2822, !2823, !2824, !2825, !2828, !2829, !2835, !2838, !2839, !2846, !2849, !2850, !2851, !2852, !2853, !2854}
!2797 = !DILocalVariable(name: "buffer", arg: 1, scope: !2791, file: !449, line: 256, type: !78)
!2798 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2791, file: !449, line: 256, type: !137)
!2799 = !DILocalVariable(name: "arg", arg: 3, scope: !2791, file: !449, line: 257, type: !80)
!2800 = !DILocalVariable(name: "argsize", arg: 4, scope: !2791, file: !449, line: 257, type: !137)
!2801 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2791, file: !449, line: 258, type: !35)
!2802 = !DILocalVariable(name: "flags", arg: 6, scope: !2791, file: !449, line: 258, type: !82)
!2803 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2791, file: !449, line: 259, type: !2794)
!2804 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2791, file: !449, line: 260, type: !80)
!2805 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2791, file: !449, line: 261, type: !80)
!2806 = !DILocalVariable(name: "i", scope: !2791, file: !449, line: 263, type: !137)
!2807 = !DILocalVariable(name: "len", scope: !2791, file: !449, line: 264, type: !137)
!2808 = !DILocalVariable(name: "orig_buffersize", scope: !2791, file: !449, line: 265, type: !137)
!2809 = !DILocalVariable(name: "quote_string", scope: !2791, file: !449, line: 266, type: !80)
!2810 = !DILocalVariable(name: "quote_string_len", scope: !2791, file: !449, line: 267, type: !137)
!2811 = !DILocalVariable(name: "backslash_escapes", scope: !2791, file: !449, line: 268, type: !256)
!2812 = !DILocalVariable(name: "unibyte_locale", scope: !2791, file: !449, line: 269, type: !256)
!2813 = !DILocalVariable(name: "elide_outer_quotes", scope: !2791, file: !449, line: 270, type: !256)
!2814 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2791, file: !449, line: 271, type: !256)
!2815 = !DILocalVariable(name: "encountered_single_quote", scope: !2791, file: !449, line: 272, type: !256)
!2816 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2791, file: !449, line: 273, type: !256)
!2817 = !DILocalVariable(name: "c", scope: !2818, file: !449, line: 402, type: !246)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !449, line: 401, column: 5)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !449, line: 400, column: 3)
!2820 = distinct !DILexicalBlock(scope: !2791, file: !449, line: 400, column: 3)
!2821 = !DILocalVariable(name: "esc", scope: !2818, file: !449, line: 403, type: !246)
!2822 = !DILocalVariable(name: "is_right_quote", scope: !2818, file: !449, line: 404, type: !256)
!2823 = !DILocalVariable(name: "escaping", scope: !2818, file: !449, line: 405, type: !256)
!2824 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2818, file: !449, line: 406, type: !256)
!2825 = !DILocalVariable(name: "m", scope: !2826, file: !449, line: 610, type: !137)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !449, line: 608, column: 11)
!2827 = distinct !DILexicalBlock(scope: !2818, file: !449, line: 426, column: 9)
!2828 = !DILocalVariable(name: "printable", scope: !2826, file: !449, line: 612, type: !256)
!2829 = !DILocalVariable(name: "mbstate", scope: !2830, file: !449, line: 621, type: !2832)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !449, line: 620, column: 15)
!2831 = distinct !DILexicalBlock(scope: !2826, file: !449, line: 614, column: 17)
!2832 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2833, line: 6, baseType: !2834)
!2833 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !485, line: 21, baseType: !484)
!2835 = !DILocalVariable(name: "w", scope: !2836, file: !449, line: 631, type: !2837)
!2836 = distinct !DILexicalBlock(scope: !2830, file: !449, line: 630, column: 19)
!2837 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !138, line: 74, baseType: !82)
!2838 = !DILocalVariable(name: "bytes", scope: !2836, file: !449, line: 632, type: !137)
!2839 = !DILocalVariable(name: "j", scope: !2840, file: !449, line: 657, type: !137)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !449, line: 656, column: 27)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !449, line: 654, column: 29)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !449, line: 649, column: 23)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !449, line: 641, column: 30)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !449, line: 636, column: 30)
!2845 = distinct !DILexicalBlock(scope: !2836, file: !449, line: 634, column: 25)
!2846 = !DILocalVariable(name: "ilim", scope: !2847, file: !449, line: 684, type: !137)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !449, line: 681, column: 15)
!2848 = distinct !DILexicalBlock(scope: !2826, file: !449, line: 680, column: 17)
!2849 = !DILabel(scope: !2791, name: "process_input", file: !449, line: 314)
!2850 = !DILabel(scope: !2827, name: "c_and_shell_escape", file: !449, line: 512)
!2851 = !DILabel(scope: !2827, name: "c_escape", file: !449, line: 517)
!2852 = !DILabel(scope: !2818, name: "store_escape", file: !449, line: 719)
!2853 = !DILabel(scope: !2818, name: "store_c", file: !449, line: 722)
!2854 = !DILabel(scope: !2791, name: "force_outer_quoting_style", file: !449, line: 763)
!2855 = !DILocation(line: 0, scope: !2791)
!2856 = !DILocation(line: 269, column: 25, scope: !2791)
!2857 = !DILocation(line: 269, column: 36, scope: !2791)
!2858 = !DILocation(line: 270, column: 8, scope: !2791)
!2859 = !DILocation(line: 0, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2827, file: !449, line: 526, column: 15)
!2861 = !DILocation(line: 0, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !449, line: 462, column: 19)
!2863 = distinct !DILexicalBlock(scope: !2827, file: !449, line: 455, column: 13)
!2864 = !DILocation(line: 0, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !449, line: 449, column: 20)
!2866 = distinct !DILexicalBlock(scope: !2827, file: !449, line: 428, column: 15)
!2867 = !DILocation(line: 0, scope: !2830)
!2868 = !DILocation(line: 0, scope: !2836)
!2869 = !DILocation(line: 0, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2818, file: !449, line: 712, column: 11)
!2871 = !DILocation(line: 273, column: 3, scope: !2791)
!2872 = !DILocation(line: 265, column: 10, scope: !2791)
!2873 = !DILocation(line: 266, column: 15, scope: !2791)
!2874 = !DILocation(line: 267, column: 10, scope: !2791)
!2875 = !DILocation(line: 268, column: 8, scope: !2791)
!2876 = !DILocation(line: 271, column: 8, scope: !2791)
!2877 = !DILocation(line: 272, column: 8, scope: !2791)
!2878 = !DILocation(line: 273, column: 8, scope: !2791)
!2879 = !DILocation(line: 314, column: 2, scope: !2791)
!2880 = !DILocation(line: 316, column: 3, scope: !2791)
!2881 = !DILocation(line: 323, column: 11, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2791, file: !449, line: 317, column: 5)
!2883 = !DILocation(line: 323, column: 12, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2882, file: !449, line: 323, column: 11)
!2885 = !DILocation(line: 324, column: 9, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !449, line: 324, column: 9)
!2887 = distinct !DILexicalBlock(scope: !2884, file: !449, line: 324, column: 9)
!2888 = !DILocation(line: 324, column: 9, scope: !2887)
!2889 = !DILocation(line: 362, column: 26, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !449, line: 340, column: 11)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !449, line: 339, column: 13)
!2892 = distinct !DILexicalBlock(scope: !2882, file: !449, line: 338, column: 7)
!2893 = !DILocation(line: 363, column: 27, scope: !2890)
!2894 = !DILocation(line: 364, column: 11, scope: !2890)
!2895 = !DILocation(line: 365, column: 14, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2892, file: !449, line: 365, column: 13)
!2897 = !DILocation(line: 365, column: 13, scope: !2892)
!2898 = !DILocation(line: 366, column: 43, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !449, line: 366, column: 11)
!2900 = distinct !DILexicalBlock(scope: !2896, file: !449, line: 366, column: 11)
!2901 = !DILocation(line: 366, column: 11, scope: !2900)
!2902 = !DILocation(line: 367, column: 13, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !449, line: 367, column: 13)
!2904 = distinct !DILexicalBlock(scope: !2899, file: !449, line: 367, column: 13)
!2905 = !DILocation(line: 367, column: 13, scope: !2904)
!2906 = !DILocation(line: 366, column: 70, scope: !2899)
!2907 = distinct !{!2907, !2901, !2908}
!2908 = !DILocation(line: 367, column: 13, scope: !2900)
!2909 = !DILocation(line: 264, column: 10, scope: !2791)
!2910 = !DILocation(line: 370, column: 28, scope: !2892)
!2911 = !DILocation(line: 372, column: 7, scope: !2882)
!2912 = !DILocation(line: 376, column: 7, scope: !2882)
!2913 = !DILocation(line: 379, column: 7, scope: !2882)
!2914 = !DILocation(line: 381, column: 12, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2882, file: !449, line: 381, column: 11)
!2916 = !DILocation(line: 381, column: 11, scope: !2882)
!2917 = !DILocation(line: 386, column: 12, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2882, file: !449, line: 386, column: 11)
!2919 = !DILocation(line: 386, column: 11, scope: !2882)
!2920 = !DILocation(line: 387, column: 9, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !449, line: 387, column: 9)
!2922 = distinct !DILexicalBlock(scope: !2918, file: !449, line: 387, column: 9)
!2923 = !DILocation(line: 387, column: 9, scope: !2922)
!2924 = !DILocation(line: 394, column: 7, scope: !2882)
!2925 = !DILocation(line: 397, column: 7, scope: !2882)
!2926 = !DILocation(line: 0, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2818, file: !449, line: 408, column: 11)
!2928 = !DILocation(line: 0, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !449, line: 419, column: 15)
!2930 = distinct !DILexicalBlock(scope: !2927, file: !449, line: 418, column: 9)
!2931 = !DILocation(line: 0, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2827, file: !449, line: 556, column: 15)
!2933 = !DILocation(line: 0, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2827, file: !449, line: 548, column: 15)
!2935 = !DILocation(line: 0, scope: !2841)
!2936 = !DILocation(line: 0, scope: !2848)
!2937 = !DILocation(line: 0, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2827, file: !449, line: 509, column: 15)
!2939 = !DILocation(line: 400, column: 8, scope: !2820)
!2940 = !DILocation(line: 0, scope: !2820)
!2941 = !DILocation(line: 400, column: 27, scope: !2819)
!2942 = !DILocation(line: 400, column: 19, scope: !2819)
!2943 = !DILocation(line: 400, column: 41, scope: !2819)
!2944 = !DILocation(line: 400, column: 48, scope: !2819)
!2945 = !DILocation(line: 400, column: 3, scope: !2820)
!2946 = !DILocation(line: 400, column: 60, scope: !2819)
!2947 = !DILocation(line: 0, scope: !2818)
!2948 = !DILocation(line: 409, column: 11, scope: !2927)
!2949 = !DILocation(line: 411, column: 17, scope: !2927)
!2950 = !DILocation(line: 412, column: 39, scope: !2927)
!2951 = !DILocation(line: 416, column: 32, scope: !2927)
!2952 = !DILocation(line: 412, column: 19, scope: !2927)
!2953 = !DILocation(line: 412, column: 15, scope: !2927)
!2954 = !DILocation(line: 417, column: 11, scope: !2927)
!2955 = !DILocation(line: 417, column: 26, scope: !2927)
!2956 = !DILocation(line: 417, column: 14, scope: !2927)
!2957 = !DILocation(line: 417, column: 63, scope: !2927)
!2958 = !DILocation(line: 408, column: 11, scope: !2818)
!2959 = !DILocation(line: 424, column: 11, scope: !2818)
!2960 = !DILocation(line: 425, column: 7, scope: !2818)
!2961 = !DILocation(line: 428, column: 15, scope: !2827)
!2962 = !DILocation(line: 430, column: 15, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !449, line: 430, column: 15)
!2964 = distinct !DILexicalBlock(scope: !2866, file: !449, line: 429, column: 13)
!2965 = !DILocation(line: 430, column: 15, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2963, file: !449, line: 430, column: 15)
!2967 = !DILocation(line: 430, column: 15, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !449, line: 430, column: 15)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !449, line: 430, column: 15)
!2970 = distinct !DILexicalBlock(scope: !2966, file: !449, line: 430, column: 15)
!2971 = !DILocation(line: 430, column: 15, scope: !2969)
!2972 = !DILocation(line: 430, column: 15, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !449, line: 430, column: 15)
!2974 = distinct !DILexicalBlock(scope: !2970, file: !449, line: 430, column: 15)
!2975 = !DILocation(line: 430, column: 15, scope: !2974)
!2976 = !DILocation(line: 430, column: 15, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !449, line: 430, column: 15)
!2978 = distinct !DILexicalBlock(scope: !2970, file: !449, line: 430, column: 15)
!2979 = !DILocation(line: 430, column: 15, scope: !2978)
!2980 = !DILocation(line: 430, column: 15, scope: !2970)
!2981 = !DILocation(line: 430, column: 15, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !449, line: 430, column: 15)
!2983 = distinct !DILexicalBlock(scope: !2963, file: !449, line: 430, column: 15)
!2984 = !DILocation(line: 430, column: 15, scope: !2983)
!2985 = !DILocation(line: 438, column: 19, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2964, file: !449, line: 437, column: 19)
!2987 = !DILocation(line: 438, column: 24, scope: !2986)
!2988 = !DILocation(line: 438, column: 28, scope: !2986)
!2989 = !DILocation(line: 438, column: 38, scope: !2986)
!2990 = !DILocation(line: 438, column: 48, scope: !2986)
!2991 = !DILocation(line: 438, column: 59, scope: !2986)
!2992 = !DILocation(line: 440, column: 19, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !449, line: 440, column: 19)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !449, line: 440, column: 19)
!2995 = distinct !DILexicalBlock(scope: !2986, file: !449, line: 439, column: 17)
!2996 = !DILocation(line: 440, column: 19, scope: !2994)
!2997 = !DILocation(line: 441, column: 19, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !449, line: 441, column: 19)
!2999 = distinct !DILexicalBlock(scope: !2995, file: !449, line: 441, column: 19)
!3000 = !DILocation(line: 441, column: 19, scope: !2999)
!3001 = !DILocation(line: 442, column: 17, scope: !2995)
!3002 = !DILocation(line: 449, column: 20, scope: !2866)
!3003 = !DILocation(line: 454, column: 11, scope: !2827)
!3004 = !DILocation(line: 457, column: 19, scope: !2863)
!3005 = !DILocation(line: 463, column: 19, scope: !2862)
!3006 = !DILocation(line: 463, column: 24, scope: !2862)
!3007 = !DILocation(line: 463, column: 28, scope: !2862)
!3008 = !DILocation(line: 463, column: 38, scope: !2862)
!3009 = !DILocation(line: 463, column: 47, scope: !2862)
!3010 = !DILocation(line: 463, column: 41, scope: !2862)
!3011 = !DILocation(line: 463, column: 52, scope: !2862)
!3012 = !DILocation(line: 462, column: 19, scope: !2863)
!3013 = !DILocation(line: 464, column: 25, scope: !2862)
!3014 = !DILocation(line: 464, column: 17, scope: !2862)
!3015 = !DILocation(line: 471, column: 25, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2862, file: !449, line: 465, column: 19)
!3017 = !DILocation(line: 475, column: 21, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !449, line: 475, column: 21)
!3019 = distinct !DILexicalBlock(scope: !3016, file: !449, line: 475, column: 21)
!3020 = !DILocation(line: 475, column: 21, scope: !3019)
!3021 = !DILocation(line: 476, column: 21, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !449, line: 476, column: 21)
!3023 = distinct !DILexicalBlock(scope: !3016, file: !449, line: 476, column: 21)
!3024 = !DILocation(line: 476, column: 21, scope: !3023)
!3025 = !DILocation(line: 477, column: 21, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !449, line: 477, column: 21)
!3027 = distinct !DILexicalBlock(scope: !3016, file: !449, line: 477, column: 21)
!3028 = !DILocation(line: 477, column: 21, scope: !3027)
!3029 = !DILocation(line: 478, column: 21, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !449, line: 478, column: 21)
!3031 = distinct !DILexicalBlock(scope: !3016, file: !449, line: 478, column: 21)
!3032 = !DILocation(line: 478, column: 21, scope: !3031)
!3033 = !DILocation(line: 479, column: 21, scope: !3016)
!3034 = !DILocation(line: 492, column: 31, scope: !2827)
!3035 = !DILocation(line: 493, column: 31, scope: !2827)
!3036 = !DILocation(line: 495, column: 31, scope: !2827)
!3037 = !DILocation(line: 496, column: 31, scope: !2827)
!3038 = !DILocation(line: 497, column: 31, scope: !2827)
!3039 = !DILocation(line: 500, column: 15, scope: !2827)
!3040 = !DILocation(line: 502, column: 19, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !449, line: 501, column: 13)
!3042 = distinct !DILexicalBlock(scope: !2827, file: !449, line: 500, column: 15)
!3043 = !DILocation(line: 509, column: 33, scope: !2938)
!3044 = !DILocation(line: 0, scope: !2827)
!3045 = !DILocation(line: 512, column: 9, scope: !2827)
!3046 = !DILocation(line: 514, column: 15, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !2827, file: !449, line: 513, column: 15)
!3048 = !DILocation(line: 517, column: 9, scope: !2827)
!3049 = !DILocation(line: 518, column: 15, scope: !2827)
!3050 = !DILocation(line: 526, column: 15, scope: !2827)
!3051 = !DILocation(line: 526, column: 40, scope: !2860)
!3052 = !DILocation(line: 526, column: 47, scope: !2860)
!3053 = !DILocation(line: 526, column: 18, scope: !2860)
!3054 = !DILocation(line: 530, column: 17, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2827, file: !449, line: 530, column: 15)
!3056 = !DILocation(line: 530, column: 15, scope: !2827)
!3057 = !DILocation(line: 535, column: 11, scope: !2827)
!3058 = !DILocation(line: 549, column: 15, scope: !2934)
!3059 = !DILocation(line: 556, column: 15, scope: !2827)
!3060 = !DILocation(line: 558, column: 19, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !2932, file: !449, line: 557, column: 13)
!3062 = !DILocation(line: 561, column: 19, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3061, file: !449, line: 561, column: 19)
!3064 = !DILocation(line: 561, column: 35, scope: !3063)
!3065 = !DILocation(line: 561, column: 30, scope: !3063)
!3066 = !DILocation(line: 570, column: 15, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !449, line: 570, column: 15)
!3068 = distinct !DILexicalBlock(scope: !3061, file: !449, line: 570, column: 15)
!3069 = !DILocation(line: 570, column: 15, scope: !3068)
!3070 = !DILocation(line: 571, column: 15, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !449, line: 571, column: 15)
!3072 = distinct !DILexicalBlock(scope: !3061, file: !449, line: 571, column: 15)
!3073 = !DILocation(line: 571, column: 15, scope: !3072)
!3074 = !DILocation(line: 572, column: 15, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !449, line: 572, column: 15)
!3076 = distinct !DILexicalBlock(scope: !3061, file: !449, line: 572, column: 15)
!3077 = !DILocation(line: 572, column: 15, scope: !3076)
!3078 = !DILocation(line: 574, column: 13, scope: !3061)
!3079 = !DILocation(line: 614, column: 17, scope: !2826)
!3080 = !DILocation(line: 0, scope: !2826)
!3081 = !DILocation(line: 617, column: 29, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !2831, file: !449, line: 615, column: 15)
!3083 = !DILocation(line: 617, column: 27, scope: !3082)
!3084 = !DILocation(line: 618, column: 15, scope: !3082)
!3085 = !DILocation(line: 621, column: 17, scope: !2830)
!3086 = !DILocation(line: 621, column: 27, scope: !2830)
!3087 = !DILocalVariable(name: "__dest", arg: 1, scope: !3088, file: !2408, line: 59, type: !135)
!3088 = distinct !DISubprogram(name: "memset", scope: !2408, file: !2408, line: 59, type: !2409, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3089)
!3089 = !{!3087, !3090, !3091}
!3090 = !DILocalVariable(name: "__ch", arg: 2, scope: !3088, file: !2408, line: 59, type: !82)
!3091 = !DILocalVariable(name: "__len", arg: 3, scope: !3088, file: !2408, line: 59, type: !137)
!3092 = !DILocation(line: 0, scope: !3088, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 622, column: 17, scope: !2830)
!3094 = !DILocation(line: 71, column: 10, scope: !3088, inlinedAt: !3093)
!3095 = !DILocation(line: 626, column: 29, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !2830, file: !449, line: 626, column: 21)
!3097 = !DILocation(line: 626, column: 21, scope: !2830)
!3098 = !DILocation(line: 627, column: 29, scope: !3096)
!3099 = !DILocation(line: 627, column: 19, scope: !3096)
!3100 = !DILocation(line: 629, column: 17, scope: !2830)
!3101 = !DILocation(line: 624, column: 19, scope: !2830)
!3102 = !DILocation(line: 625, column: 27, scope: !2830)
!3103 = !DILocation(line: 631, column: 21, scope: !2836)
!3104 = !DILocation(line: 632, column: 56, scope: !2836)
!3105 = !DILocation(line: 632, column: 50, scope: !2836)
!3106 = !DILocation(line: 633, column: 53, scope: !2836)
!3107 = !DILocation(line: 632, column: 36, scope: !2836)
!3108 = !DILocation(line: 634, column: 25, scope: !2836)
!3109 = !DILocation(line: 644, column: 38, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !2843, file: !449, line: 642, column: 23)
!3111 = !DILocation(line: 644, column: 48, scope: !3110)
!3112 = !DILocation(line: 644, column: 25, scope: !3110)
!3113 = !DILocation(line: 644, column: 51, scope: !3110)
!3114 = !DILocation(line: 645, column: 28, scope: !3110)
!3115 = !DILocation(line: 644, column: 34, scope: !3110)
!3116 = distinct !{!3116, !3112, !3114}
!3117 = !DILocation(line: 658, column: 43, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !449, line: 658, column: 29)
!3119 = distinct !DILexicalBlock(scope: !2840, file: !449, line: 658, column: 29)
!3120 = !DILocation(line: 655, column: 29, scope: !2841)
!3121 = !DILocation(line: 0, scope: !2840)
!3122 = !DILocation(line: 659, column: 49, scope: !3118)
!3123 = !DILocation(line: 659, column: 39, scope: !3118)
!3124 = !DILocation(line: 659, column: 31, scope: !3118)
!3125 = !DILocation(line: 658, column: 53, scope: !3118)
!3126 = !DILocation(line: 658, column: 29, scope: !3119)
!3127 = distinct !{!3127, !3126, !3128}
!3128 = !DILocation(line: 667, column: 33, scope: !3119)
!3129 = !DILocation(line: 674, column: 19, scope: !2830)
!3130 = !DILocation(line: 670, column: 41, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !2842, file: !449, line: 670, column: 29)
!3132 = !DILocation(line: 670, column: 31, scope: !3131)
!3133 = !DILocation(line: 670, column: 29, scope: !2842)
!3134 = !DILocation(line: 672, column: 27, scope: !2842)
!3135 = !DILocation(line: 675, column: 26, scope: !2830)
!3136 = !DILocation(line: 675, column: 24, scope: !2830)
!3137 = !DILocation(line: 674, column: 19, scope: !2836)
!3138 = distinct !{!3138, !3100, !3139}
!3139 = !DILocation(line: 675, column: 44, scope: !2830)
!3140 = !DILocation(line: 676, column: 15, scope: !2831)
!3141 = !DILocation(line: 0, scope: !2831)
!3142 = !DILocation(line: 678, column: 40, scope: !2826)
!3143 = !DILocation(line: 680, column: 19, scope: !2848)
!3144 = !DILocation(line: 680, column: 45, scope: !2848)
!3145 = !DILocation(line: 680, column: 23, scope: !2848)
!3146 = !DILocation(line: 684, column: 33, scope: !2847)
!3147 = !DILocation(line: 0, scope: !2847)
!3148 = !DILocation(line: 686, column: 17, scope: !2847)
!3149 = !DILocation(line: 405, column: 12, scope: !2818)
!3150 = !DILocation(line: 688, column: 43, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !449, line: 688, column: 25)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !449, line: 687, column: 19)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !449, line: 686, column: 17)
!3154 = distinct !DILexicalBlock(scope: !2847, file: !449, line: 686, column: 17)
!3155 = !DILocation(line: 690, column: 25, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !449, line: 690, column: 25)
!3157 = distinct !DILexicalBlock(scope: !3151, file: !449, line: 689, column: 23)
!3158 = !DILocation(line: 690, column: 25, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3156, file: !449, line: 690, column: 25)
!3160 = !DILocation(line: 690, column: 25, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !449, line: 690, column: 25)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !449, line: 690, column: 25)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !449, line: 690, column: 25)
!3164 = !DILocation(line: 690, column: 25, scope: !3162)
!3165 = !DILocation(line: 690, column: 25, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !449, line: 690, column: 25)
!3167 = distinct !DILexicalBlock(scope: !3163, file: !449, line: 690, column: 25)
!3168 = !DILocation(line: 690, column: 25, scope: !3167)
!3169 = !DILocation(line: 690, column: 25, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !449, line: 690, column: 25)
!3171 = distinct !DILexicalBlock(scope: !3163, file: !449, line: 690, column: 25)
!3172 = !DILocation(line: 690, column: 25, scope: !3171)
!3173 = !DILocation(line: 690, column: 25, scope: !3163)
!3174 = !DILocation(line: 690, column: 25, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !449, line: 690, column: 25)
!3176 = distinct !DILexicalBlock(scope: !3156, file: !449, line: 690, column: 25)
!3177 = !DILocation(line: 690, column: 25, scope: !3176)
!3178 = !DILocation(line: 691, column: 25, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !449, line: 691, column: 25)
!3180 = distinct !DILexicalBlock(scope: !3157, file: !449, line: 691, column: 25)
!3181 = !DILocation(line: 691, column: 25, scope: !3180)
!3182 = !DILocation(line: 692, column: 25, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !449, line: 692, column: 25)
!3184 = distinct !DILexicalBlock(scope: !3157, file: !449, line: 692, column: 25)
!3185 = !DILocation(line: 692, column: 25, scope: !3184)
!3186 = !DILocation(line: 693, column: 38, scope: !3157)
!3187 = !DILocation(line: 693, column: 33, scope: !3157)
!3188 = !DILocation(line: 694, column: 23, scope: !3157)
!3189 = !DILocation(line: 695, column: 30, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3151, file: !449, line: 695, column: 30)
!3191 = !DILocation(line: 695, column: 30, scope: !3151)
!3192 = !DILocation(line: 697, column: 25, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !449, line: 697, column: 25)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !449, line: 697, column: 25)
!3195 = distinct !DILexicalBlock(scope: !3190, file: !449, line: 696, column: 23)
!3196 = !DILocation(line: 697, column: 25, scope: !3194)
!3197 = !DILocation(line: 699, column: 23, scope: !3195)
!3198 = !DILocation(line: 700, column: 35, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3152, file: !449, line: 700, column: 25)
!3200 = !DILocation(line: 700, column: 30, scope: !3199)
!3201 = !DILocation(line: 700, column: 25, scope: !3152)
!3202 = !DILocation(line: 702, column: 21, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !449, line: 702, column: 21)
!3204 = distinct !DILexicalBlock(scope: !3152, file: !449, line: 702, column: 21)
!3205 = !DILocation(line: 702, column: 21, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !449, line: 702, column: 21)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !449, line: 702, column: 21)
!3208 = distinct !DILexicalBlock(scope: !3203, file: !449, line: 702, column: 21)
!3209 = !DILocation(line: 702, column: 21, scope: !3207)
!3210 = !DILocation(line: 702, column: 21, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !449, line: 702, column: 21)
!3212 = distinct !DILexicalBlock(scope: !3208, file: !449, line: 702, column: 21)
!3213 = !DILocation(line: 702, column: 21, scope: !3212)
!3214 = !DILocation(line: 702, column: 21, scope: !3208)
!3215 = !DILocation(line: 0, scope: !3152)
!3216 = !DILocation(line: 703, column: 21, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !449, line: 703, column: 21)
!3218 = distinct !DILexicalBlock(scope: !3152, file: !449, line: 703, column: 21)
!3219 = !DILocation(line: 703, column: 21, scope: !3218)
!3220 = !DILocation(line: 704, column: 25, scope: !3152)
!3221 = !DILocation(line: 686, column: 17, scope: !3153)
!3222 = distinct !{!3222, !3223, !3224}
!3223 = !DILocation(line: 686, column: 17, scope: !3154)
!3224 = !DILocation(line: 705, column: 19, scope: !3154)
!3225 = !DILocation(line: 416, column: 30, scope: !2927)
!3226 = !DILocation(line: 712, column: 34, scope: !2870)
!3227 = !DILocation(line: 715, column: 35, scope: !2870)
!3228 = !DILocation(line: 715, column: 17, scope: !2870)
!3229 = !DILocation(line: 715, column: 47, scope: !2870)
!3230 = !DILocation(line: 715, column: 65, scope: !2870)
!3231 = !DILocation(line: 716, column: 15, scope: !2870)
!3232 = !DILocation(line: 716, column: 11, scope: !2870)
!3233 = !DILocation(line: 712, column: 11, scope: !2818)
!3234 = !DILocation(line: 400, column: 10, scope: !2820)
!3235 = !DILocation(line: 719, column: 5, scope: !2818)
!3236 = !DILocation(line: 720, column: 7, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !2818, file: !449, line: 720, column: 7)
!3238 = !DILocation(line: 720, column: 7, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3237, file: !449, line: 720, column: 7)
!3240 = !DILocation(line: 720, column: 7, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !449, line: 720, column: 7)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !449, line: 720, column: 7)
!3243 = distinct !DILexicalBlock(scope: !3239, file: !449, line: 720, column: 7)
!3244 = !DILocation(line: 720, column: 7, scope: !3242)
!3245 = !DILocation(line: 720, column: 7, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !449, line: 720, column: 7)
!3247 = distinct !DILexicalBlock(scope: !3243, file: !449, line: 720, column: 7)
!3248 = !DILocation(line: 720, column: 7, scope: !3247)
!3249 = !DILocation(line: 720, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !449, line: 720, column: 7)
!3251 = distinct !DILexicalBlock(scope: !3243, file: !449, line: 720, column: 7)
!3252 = !DILocation(line: 720, column: 7, scope: !3251)
!3253 = !DILocation(line: 720, column: 7, scope: !3243)
!3254 = !DILocation(line: 720, column: 7, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !449, line: 720, column: 7)
!3256 = distinct !DILexicalBlock(scope: !3237, file: !449, line: 720, column: 7)
!3257 = !DILocation(line: 720, column: 7, scope: !3256)
!3258 = !DILocation(line: 722, column: 5, scope: !2818)
!3259 = !DILocation(line: 723, column: 7, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !449, line: 723, column: 7)
!3261 = distinct !DILexicalBlock(scope: !2818, file: !449, line: 723, column: 7)
!3262 = !DILocation(line: 424, column: 9, scope: !2818)
!3263 = !DILocation(line: 723, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !449, line: 723, column: 7)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !449, line: 723, column: 7)
!3266 = distinct !DILexicalBlock(scope: !3260, file: !449, line: 723, column: 7)
!3267 = !DILocation(line: 723, column: 7, scope: !3265)
!3268 = !DILocation(line: 723, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !449, line: 723, column: 7)
!3270 = distinct !DILexicalBlock(scope: !3266, file: !449, line: 723, column: 7)
!3271 = !DILocation(line: 723, column: 7, scope: !3270)
!3272 = !DILocation(line: 723, column: 7, scope: !3266)
!3273 = !DILocation(line: 724, column: 7, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !449, line: 724, column: 7)
!3275 = distinct !DILexicalBlock(scope: !2818, file: !449, line: 724, column: 7)
!3276 = !DILocation(line: 724, column: 7, scope: !3275)
!3277 = !DILocation(line: 726, column: 13, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !2818, file: !449, line: 726, column: 11)
!3279 = !DILocation(line: 726, column: 11, scope: !2818)
!3280 = !DILocation(line: 728, column: 5, scope: !2819)
!3281 = !DILocation(line: 400, column: 75, scope: !2819)
!3282 = !DILocation(line: 400, column: 3, scope: !2819)
!3283 = distinct !{!3283, !2945, !3284}
!3284 = !DILocation(line: 728, column: 5, scope: !2820)
!3285 = !DILocation(line: 730, column: 11, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !2791, file: !449, line: 730, column: 7)
!3287 = !DILocation(line: 730, column: 16, scope: !3286)
!3288 = !DILocation(line: 738, column: 51, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !2791, file: !449, line: 738, column: 7)
!3290 = !DILocation(line: 739, column: 10, scope: !3289)
!3291 = !DILocation(line: 741, column: 11, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !449, line: 741, column: 11)
!3293 = distinct !DILexicalBlock(scope: !3289, file: !449, line: 740, column: 5)
!3294 = !DILocation(line: 741, column: 11, scope: !3293)
!3295 = !DILocation(line: 742, column: 16, scope: !3292)
!3296 = !DILocation(line: 742, column: 9, scope: !3292)
!3297 = !DILocation(line: 746, column: 18, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3292, file: !449, line: 746, column: 16)
!3299 = !DILocation(line: 746, column: 32, scope: !3298)
!3300 = !DILocation(line: 746, column: 29, scope: !3298)
!3301 = !DILocation(line: 755, column: 7, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !2791, file: !449, line: 755, column: 7)
!3303 = !DILocation(line: 755, column: 20, scope: !3302)
!3304 = !DILocation(line: 756, column: 12, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !449, line: 756, column: 5)
!3306 = distinct !DILexicalBlock(scope: !3302, file: !449, line: 756, column: 5)
!3307 = !DILocation(line: 756, column: 5, scope: !3306)
!3308 = !DILocation(line: 757, column: 7, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !449, line: 757, column: 7)
!3310 = distinct !DILexicalBlock(scope: !3305, file: !449, line: 757, column: 7)
!3311 = !DILocation(line: 757, column: 7, scope: !3310)
!3312 = !DILocation(line: 756, column: 39, scope: !3305)
!3313 = distinct !{!3313, !3307, !3314}
!3314 = !DILocation(line: 757, column: 7, scope: !3306)
!3315 = !DILocation(line: 759, column: 11, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !2791, file: !449, line: 759, column: 7)
!3317 = !DILocation(line: 759, column: 7, scope: !2791)
!3318 = !DILocation(line: 760, column: 5, scope: !3316)
!3319 = !DILocation(line: 760, column: 17, scope: !3316)
!3320 = !DILocation(line: 763, column: 2, scope: !2791)
!3321 = !DILocation(line: 766, column: 51, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !2791, file: !449, line: 766, column: 7)
!3323 = !DILocation(line: 766, column: 21, scope: !3322)
!3324 = !DILocation(line: 770, column: 42, scope: !2791)
!3325 = !DILocation(line: 768, column: 10, scope: !2791)
!3326 = !DILocation(line: 768, column: 3, scope: !2791)
!3327 = !DILocation(line: 772, column: 1, scope: !2791)
!3328 = distinct !DISubprogram(name: "gettext_quote", scope: !449, file: !449, line: 207, type: !3329, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3331)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!80, !80, !35}
!3331 = !{!3332, !3333, !3334, !3335}
!3332 = !DILocalVariable(name: "msgid", arg: 1, scope: !3328, file: !449, line: 207, type: !80)
!3333 = !DILocalVariable(name: "s", arg: 2, scope: !3328, file: !449, line: 207, type: !35)
!3334 = !DILocalVariable(name: "translation", scope: !3328, file: !449, line: 209, type: !80)
!3335 = !DILocalVariable(name: "locale_code", scope: !3328, file: !449, line: 210, type: !80)
!3336 = !DILocation(line: 0, scope: !3328)
!3337 = !DILocation(line: 209, column: 29, scope: !3328)
!3338 = !DILocation(line: 212, column: 19, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3328, file: !449, line: 212, column: 7)
!3340 = !DILocation(line: 212, column: 7, scope: !3328)
!3341 = !DILocation(line: 233, column: 17, scope: !3328)
!3342 = !DILocalVariable(name: "s1", arg: 1, scope: !3343, file: !3344, line: 160, type: !80)
!3343 = distinct !DISubprogram(name: "strcaseeq0", scope: !3344, file: !3344, line: 160, type: !3345, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3347)
!3344 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!82, !80, !80, !79, !79, !79, !79, !79, !79, !79, !79, !79}
!3347 = !{!3342, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357}
!3348 = !DILocalVariable(name: "s2", arg: 2, scope: !3343, file: !3344, line: 160, type: !80)
!3349 = !DILocalVariable(name: "s20", arg: 3, scope: !3343, file: !3344, line: 160, type: !79)
!3350 = !DILocalVariable(name: "s21", arg: 4, scope: !3343, file: !3344, line: 160, type: !79)
!3351 = !DILocalVariable(name: "s22", arg: 5, scope: !3343, file: !3344, line: 160, type: !79)
!3352 = !DILocalVariable(name: "s23", arg: 6, scope: !3343, file: !3344, line: 160, type: !79)
!3353 = !DILocalVariable(name: "s24", arg: 7, scope: !3343, file: !3344, line: 160, type: !79)
!3354 = !DILocalVariable(name: "s25", arg: 8, scope: !3343, file: !3344, line: 160, type: !79)
!3355 = !DILocalVariable(name: "s26", arg: 9, scope: !3343, file: !3344, line: 160, type: !79)
!3356 = !DILocalVariable(name: "s27", arg: 10, scope: !3343, file: !3344, line: 160, type: !79)
!3357 = !DILocalVariable(name: "s28", arg: 11, scope: !3343, file: !3344, line: 160, type: !79)
!3358 = !DILocation(line: 0, scope: !3343, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 234, column: 7, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3328, file: !449, line: 234, column: 7)
!3361 = !DILocation(line: 162, column: 7, scope: !3362, inlinedAt: !3359)
!3362 = distinct !DILexicalBlock(scope: !3343, file: !3344, line: 162, column: 7)
!3363 = !DILocalVariable(name: "s1", arg: 1, scope: !3364, file: !3344, line: 146, type: !80)
!3364 = distinct !DISubprogram(name: "strcaseeq1", scope: !3344, file: !3344, line: 146, type: !3365, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!82, !80, !80, !79, !79, !79, !79, !79, !79, !79, !79}
!3367 = !{!3363, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376}
!3368 = !DILocalVariable(name: "s2", arg: 2, scope: !3364, file: !3344, line: 146, type: !80)
!3369 = !DILocalVariable(name: "s21", arg: 3, scope: !3364, file: !3344, line: 146, type: !79)
!3370 = !DILocalVariable(name: "s22", arg: 4, scope: !3364, file: !3344, line: 146, type: !79)
!3371 = !DILocalVariable(name: "s23", arg: 5, scope: !3364, file: !3344, line: 146, type: !79)
!3372 = !DILocalVariable(name: "s24", arg: 6, scope: !3364, file: !3344, line: 146, type: !79)
!3373 = !DILocalVariable(name: "s25", arg: 7, scope: !3364, file: !3344, line: 146, type: !79)
!3374 = !DILocalVariable(name: "s26", arg: 8, scope: !3364, file: !3344, line: 146, type: !79)
!3375 = !DILocalVariable(name: "s27", arg: 9, scope: !3364, file: !3344, line: 146, type: !79)
!3376 = !DILocalVariable(name: "s28", arg: 10, scope: !3364, file: !3344, line: 146, type: !79)
!3377 = !DILocation(line: 0, scope: !3364, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 167, column: 16, scope: !3379, inlinedAt: !3359)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !3344, line: 164, column: 11)
!3380 = distinct !DILexicalBlock(scope: !3362, file: !3344, line: 163, column: 5)
!3381 = !DILocation(line: 148, column: 7, scope: !3382, inlinedAt: !3378)
!3382 = distinct !DILexicalBlock(scope: !3364, file: !3344, line: 148, column: 7)
!3383 = !DILocalVariable(name: "s1", arg: 1, scope: !3384, file: !3344, line: 132, type: !80)
!3384 = distinct !DISubprogram(name: "strcaseeq2", scope: !3344, file: !3344, line: 132, type: !3385, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!82, !80, !80, !79, !79, !79, !79, !79, !79, !79}
!3387 = !{!3383, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395}
!3388 = !DILocalVariable(name: "s2", arg: 2, scope: !3384, file: !3344, line: 132, type: !80)
!3389 = !DILocalVariable(name: "s22", arg: 3, scope: !3384, file: !3344, line: 132, type: !79)
!3390 = !DILocalVariable(name: "s23", arg: 4, scope: !3384, file: !3344, line: 132, type: !79)
!3391 = !DILocalVariable(name: "s24", arg: 5, scope: !3384, file: !3344, line: 132, type: !79)
!3392 = !DILocalVariable(name: "s25", arg: 6, scope: !3384, file: !3344, line: 132, type: !79)
!3393 = !DILocalVariable(name: "s26", arg: 7, scope: !3384, file: !3344, line: 132, type: !79)
!3394 = !DILocalVariable(name: "s27", arg: 8, scope: !3384, file: !3344, line: 132, type: !79)
!3395 = !DILocalVariable(name: "s28", arg: 9, scope: !3384, file: !3344, line: 132, type: !79)
!3396 = !DILocation(line: 0, scope: !3384, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 153, column: 16, scope: !3398, inlinedAt: !3378)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !3344, line: 150, column: 11)
!3399 = distinct !DILexicalBlock(scope: !3382, file: !3344, line: 149, column: 5)
!3400 = !DILocation(line: 134, column: 7, scope: !3401, inlinedAt: !3397)
!3401 = distinct !DILexicalBlock(scope: !3384, file: !3344, line: 134, column: 7)
!3402 = !DILocalVariable(name: "s1", arg: 1, scope: !3403, file: !3344, line: 118, type: !80)
!3403 = distinct !DISubprogram(name: "strcaseeq3", scope: !3344, file: !3344, line: 118, type: !3404, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3406)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!82, !80, !80, !79, !79, !79, !79, !79, !79}
!3406 = !{!3402, !3407, !3408, !3409, !3410, !3411, !3412, !3413}
!3407 = !DILocalVariable(name: "s2", arg: 2, scope: !3403, file: !3344, line: 118, type: !80)
!3408 = !DILocalVariable(name: "s23", arg: 3, scope: !3403, file: !3344, line: 118, type: !79)
!3409 = !DILocalVariable(name: "s24", arg: 4, scope: !3403, file: !3344, line: 118, type: !79)
!3410 = !DILocalVariable(name: "s25", arg: 5, scope: !3403, file: !3344, line: 118, type: !79)
!3411 = !DILocalVariable(name: "s26", arg: 6, scope: !3403, file: !3344, line: 118, type: !79)
!3412 = !DILocalVariable(name: "s27", arg: 7, scope: !3403, file: !3344, line: 118, type: !79)
!3413 = !DILocalVariable(name: "s28", arg: 8, scope: !3403, file: !3344, line: 118, type: !79)
!3414 = !DILocation(line: 0, scope: !3403, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 139, column: 16, scope: !3416, inlinedAt: !3397)
!3416 = distinct !DILexicalBlock(scope: !3417, file: !3344, line: 136, column: 11)
!3417 = distinct !DILexicalBlock(scope: !3401, file: !3344, line: 135, column: 5)
!3418 = !DILocation(line: 120, column: 7, scope: !3419, inlinedAt: !3415)
!3419 = distinct !DILexicalBlock(scope: !3403, file: !3344, line: 120, column: 7)
!3420 = !DILocation(line: 120, column: 7, scope: !3403, inlinedAt: !3415)
!3421 = !DILocalVariable(name: "s1", arg: 1, scope: !3422, file: !3344, line: 104, type: !80)
!3422 = distinct !DISubprogram(name: "strcaseeq4", scope: !3344, file: !3344, line: 104, type: !3423, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3425)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!82, !80, !80, !79, !79, !79, !79, !79}
!3425 = !{!3421, !3426, !3427, !3428, !3429, !3430, !3431}
!3426 = !DILocalVariable(name: "s2", arg: 2, scope: !3422, file: !3344, line: 104, type: !80)
!3427 = !DILocalVariable(name: "s24", arg: 3, scope: !3422, file: !3344, line: 104, type: !79)
!3428 = !DILocalVariable(name: "s25", arg: 4, scope: !3422, file: !3344, line: 104, type: !79)
!3429 = !DILocalVariable(name: "s26", arg: 5, scope: !3422, file: !3344, line: 104, type: !79)
!3430 = !DILocalVariable(name: "s27", arg: 6, scope: !3422, file: !3344, line: 104, type: !79)
!3431 = !DILocalVariable(name: "s28", arg: 7, scope: !3422, file: !3344, line: 104, type: !79)
!3432 = !DILocation(line: 0, scope: !3422, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 125, column: 16, scope: !3434, inlinedAt: !3415)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !3344, line: 122, column: 11)
!3435 = distinct !DILexicalBlock(scope: !3419, file: !3344, line: 121, column: 5)
!3436 = !DILocation(line: 106, column: 7, scope: !3437, inlinedAt: !3433)
!3437 = distinct !DILexicalBlock(scope: !3422, file: !3344, line: 106, column: 7)
!3438 = !DILocation(line: 106, column: 7, scope: !3422, inlinedAt: !3433)
!3439 = !DILocalVariable(name: "s1", arg: 1, scope: !3440, file: !3344, line: 90, type: !80)
!3440 = distinct !DISubprogram(name: "strcaseeq5", scope: !3344, file: !3344, line: 90, type: !3441, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3443)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!82, !80, !80, !79, !79, !79, !79}
!3443 = !{!3439, !3444, !3445, !3446, !3447, !3448}
!3444 = !DILocalVariable(name: "s2", arg: 2, scope: !3440, file: !3344, line: 90, type: !80)
!3445 = !DILocalVariable(name: "s25", arg: 3, scope: !3440, file: !3344, line: 90, type: !79)
!3446 = !DILocalVariable(name: "s26", arg: 4, scope: !3440, file: !3344, line: 90, type: !79)
!3447 = !DILocalVariable(name: "s27", arg: 5, scope: !3440, file: !3344, line: 90, type: !79)
!3448 = !DILocalVariable(name: "s28", arg: 6, scope: !3440, file: !3344, line: 90, type: !79)
!3449 = !DILocation(line: 0, scope: !3440, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 111, column: 16, scope: !3451, inlinedAt: !3433)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !3344, line: 108, column: 11)
!3452 = distinct !DILexicalBlock(scope: !3437, file: !3344, line: 107, column: 5)
!3453 = !DILocation(line: 92, column: 7, scope: !3454, inlinedAt: !3450)
!3454 = distinct !DILexicalBlock(scope: !3440, file: !3344, line: 92, column: 7)
!3455 = !DILocation(line: 92, column: 7, scope: !3440, inlinedAt: !3450)
!3456 = !DILocation(line: 235, column: 12, scope: !3360)
!3457 = !DILocation(line: 235, column: 21, scope: !3360)
!3458 = !DILocation(line: 235, column: 5, scope: !3360)
!3459 = !DILocation(line: 0, scope: !3364, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 167, column: 16, scope: !3379, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 236, column: 7, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3328, file: !449, line: 236, column: 7)
!3463 = !DILocation(line: 148, column: 7, scope: !3382, inlinedAt: !3460)
!3464 = !DILocation(line: 0, scope: !3384, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 153, column: 16, scope: !3398, inlinedAt: !3460)
!3466 = !DILocation(line: 134, column: 7, scope: !3401, inlinedAt: !3465)
!3467 = !DILocation(line: 134, column: 7, scope: !3384, inlinedAt: !3465)
!3468 = !DILocation(line: 0, scope: !3403, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 139, column: 16, scope: !3416, inlinedAt: !3465)
!3470 = !DILocation(line: 120, column: 7, scope: !3419, inlinedAt: !3469)
!3471 = !DILocation(line: 120, column: 7, scope: !3403, inlinedAt: !3469)
!3472 = !DILocation(line: 0, scope: !3422, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 125, column: 16, scope: !3434, inlinedAt: !3469)
!3474 = !DILocation(line: 106, column: 7, scope: !3437, inlinedAt: !3473)
!3475 = !DILocation(line: 106, column: 7, scope: !3422, inlinedAt: !3473)
!3476 = !DILocation(line: 0, scope: !3440, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 111, column: 16, scope: !3451, inlinedAt: !3473)
!3478 = !DILocation(line: 92, column: 7, scope: !3454, inlinedAt: !3477)
!3479 = !DILocation(line: 92, column: 7, scope: !3440, inlinedAt: !3477)
!3480 = !DILocalVariable(name: "s1", arg: 1, scope: !3481, file: !3344, line: 76, type: !80)
!3481 = distinct !DISubprogram(name: "strcaseeq6", scope: !3344, file: !3344, line: 76, type: !3482, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3484)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!82, !80, !80, !79, !79, !79}
!3484 = !{!3480, !3485, !3486, !3487, !3488}
!3485 = !DILocalVariable(name: "s2", arg: 2, scope: !3481, file: !3344, line: 76, type: !80)
!3486 = !DILocalVariable(name: "s26", arg: 3, scope: !3481, file: !3344, line: 76, type: !79)
!3487 = !DILocalVariable(name: "s27", arg: 4, scope: !3481, file: !3344, line: 76, type: !79)
!3488 = !DILocalVariable(name: "s28", arg: 5, scope: !3481, file: !3344, line: 76, type: !79)
!3489 = !DILocation(line: 0, scope: !3481, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 97, column: 16, scope: !3491, inlinedAt: !3477)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !3344, line: 94, column: 11)
!3492 = distinct !DILexicalBlock(scope: !3454, file: !3344, line: 93, column: 5)
!3493 = !DILocation(line: 78, column: 7, scope: !3494, inlinedAt: !3490)
!3494 = distinct !DILexicalBlock(scope: !3481, file: !3344, line: 78, column: 7)
!3495 = !DILocation(line: 78, column: 7, scope: !3481, inlinedAt: !3490)
!3496 = !DILocalVariable(name: "s1", arg: 1, scope: !3497, file: !3344, line: 62, type: !80)
!3497 = distinct !DISubprogram(name: "strcaseeq7", scope: !3344, file: !3344, line: 62, type: !3498, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!82, !80, !80, !79, !79}
!3500 = !{!3496, !3501, !3502, !3503}
!3501 = !DILocalVariable(name: "s2", arg: 2, scope: !3497, file: !3344, line: 62, type: !80)
!3502 = !DILocalVariable(name: "s27", arg: 3, scope: !3497, file: !3344, line: 62, type: !79)
!3503 = !DILocalVariable(name: "s28", arg: 4, scope: !3497, file: !3344, line: 62, type: !79)
!3504 = !DILocation(line: 0, scope: !3497, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 83, column: 16, scope: !3506, inlinedAt: !3490)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !3344, line: 80, column: 11)
!3507 = distinct !DILexicalBlock(scope: !3494, file: !3344, line: 79, column: 5)
!3508 = !DILocation(line: 64, column: 7, scope: !3509, inlinedAt: !3505)
!3509 = distinct !DILexicalBlock(scope: !3497, file: !3344, line: 64, column: 7)
!3510 = !DILocation(line: 236, column: 7, scope: !3328)
!3511 = !DILocation(line: 237, column: 12, scope: !3462)
!3512 = !DILocation(line: 237, column: 21, scope: !3462)
!3513 = !DILocation(line: 237, column: 5, scope: !3462)
!3514 = !DILocation(line: 239, column: 13, scope: !3328)
!3515 = !DILocation(line: 239, column: 11, scope: !3328)
!3516 = !DILocation(line: 239, column: 3, scope: !3328)
!3517 = !DILocation(line: 240, column: 1, scope: !3328)
!3518 = distinct !DISubprogram(name: "quotearg_alloc", scope: !449, file: !449, line: 799, type: !3519, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3521)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!78, !80, !137, !464}
!3521 = !{!3522, !3523, !3524}
!3522 = !DILocalVariable(name: "arg", arg: 1, scope: !3518, file: !449, line: 799, type: !80)
!3523 = !DILocalVariable(name: "argsize", arg: 2, scope: !3518, file: !449, line: 799, type: !137)
!3524 = !DILocalVariable(name: "o", arg: 3, scope: !3518, file: !449, line: 800, type: !464)
!3525 = !DILocation(line: 0, scope: !3518)
!3526 = !DILocalVariable(name: "arg", arg: 1, scope: !3527, file: !449, line: 812, type: !80)
!3527 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !449, file: !449, line: 812, type: !3528, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!78, !80, !137, !195, !464}
!3530 = !{!3526, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538}
!3531 = !DILocalVariable(name: "argsize", arg: 2, scope: !3527, file: !449, line: 812, type: !137)
!3532 = !DILocalVariable(name: "size", arg: 3, scope: !3527, file: !449, line: 812, type: !195)
!3533 = !DILocalVariable(name: "o", arg: 4, scope: !3527, file: !449, line: 813, type: !464)
!3534 = !DILocalVariable(name: "p", scope: !3527, file: !449, line: 815, type: !464)
!3535 = !DILocalVariable(name: "e", scope: !3527, file: !449, line: 816, type: !82)
!3536 = !DILocalVariable(name: "flags", scope: !3527, file: !449, line: 818, type: !82)
!3537 = !DILocalVariable(name: "bufsize", scope: !3527, file: !449, line: 819, type: !137)
!3538 = !DILocalVariable(name: "buf", scope: !3527, file: !449, line: 823, type: !78)
!3539 = !DILocation(line: 0, scope: !3527, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 802, column: 10, scope: !3518)
!3541 = !DILocation(line: 815, column: 37, scope: !3527, inlinedAt: !3540)
!3542 = !DILocation(line: 816, column: 11, scope: !3527, inlinedAt: !3540)
!3543 = !DILocation(line: 818, column: 18, scope: !3527, inlinedAt: !3540)
!3544 = !DILocation(line: 818, column: 24, scope: !3527, inlinedAt: !3540)
!3545 = !DILocation(line: 819, column: 69, scope: !3527, inlinedAt: !3540)
!3546 = !DILocation(line: 820, column: 53, scope: !3527, inlinedAt: !3540)
!3547 = !DILocation(line: 821, column: 49, scope: !3527, inlinedAt: !3540)
!3548 = !DILocation(line: 822, column: 49, scope: !3527, inlinedAt: !3540)
!3549 = !DILocation(line: 819, column: 20, scope: !3527, inlinedAt: !3540)
!3550 = !DILocation(line: 822, column: 62, scope: !3527, inlinedAt: !3540)
!3551 = !DILocalVariable(name: "n", arg: 1, scope: !3552, file: !458, line: 216, type: !137)
!3552 = distinct !DISubprogram(name: "xcharalloc", scope: !458, file: !458, line: 216, type: !3553, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!78, !137}
!3555 = !{!3551}
!3556 = !DILocation(line: 0, scope: !3552, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 823, column: 15, scope: !3527, inlinedAt: !3540)
!3558 = !DILocation(line: 218, column: 10, scope: !3552, inlinedAt: !3557)
!3559 = !DILocation(line: 824, column: 60, scope: !3527, inlinedAt: !3540)
!3560 = !DILocation(line: 826, column: 32, scope: !3527, inlinedAt: !3540)
!3561 = !DILocation(line: 826, column: 47, scope: !3527, inlinedAt: !3540)
!3562 = !DILocation(line: 824, column: 3, scope: !3527, inlinedAt: !3540)
!3563 = !DILocation(line: 827, column: 9, scope: !3527, inlinedAt: !3540)
!3564 = !DILocation(line: 802, column: 3, scope: !3518)
!3565 = !DILocation(line: 0, scope: !3527)
!3566 = !DILocation(line: 815, column: 37, scope: !3527)
!3567 = !DILocation(line: 816, column: 11, scope: !3527)
!3568 = !DILocation(line: 818, column: 18, scope: !3527)
!3569 = !DILocation(line: 818, column: 27, scope: !3527)
!3570 = !DILocation(line: 818, column: 24, scope: !3527)
!3571 = !DILocation(line: 819, column: 69, scope: !3527)
!3572 = !DILocation(line: 820, column: 53, scope: !3527)
!3573 = !DILocation(line: 821, column: 49, scope: !3527)
!3574 = !DILocation(line: 822, column: 49, scope: !3527)
!3575 = !DILocation(line: 819, column: 20, scope: !3527)
!3576 = !DILocation(line: 822, column: 62, scope: !3527)
!3577 = !DILocation(line: 0, scope: !3552, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 823, column: 15, scope: !3527)
!3579 = !DILocation(line: 218, column: 10, scope: !3552, inlinedAt: !3578)
!3580 = !DILocation(line: 824, column: 60, scope: !3527)
!3581 = !DILocation(line: 826, column: 32, scope: !3527)
!3582 = !DILocation(line: 826, column: 47, scope: !3527)
!3583 = !DILocation(line: 824, column: 3, scope: !3527)
!3584 = !DILocation(line: 827, column: 9, scope: !3527)
!3585 = !DILocation(line: 828, column: 7, scope: !3527)
!3586 = !DILocation(line: 829, column: 11, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3527, file: !449, line: 828, column: 7)
!3588 = !DILocation(line: 829, column: 5, scope: !3587)
!3589 = !DILocation(line: 830, column: 3, scope: !3527)
!3590 = distinct !DISubprogram(name: "quotearg_free", scope: !449, file: !449, line: 848, type: !165, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3591)
!3591 = !{!3592, !3593}
!3592 = !DILocalVariable(name: "sv", scope: !3590, file: !449, line: 850, type: !537)
!3593 = !DILocalVariable(name: "i", scope: !3590, file: !449, line: 851, type: !82)
!3594 = !DILocation(line: 850, column: 24, scope: !3590)
!3595 = !DILocation(line: 0, scope: !3590)
!3596 = !DILocation(line: 852, column: 19, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !449, line: 852, column: 3)
!3598 = distinct !DILexicalBlock(scope: !3590, file: !449, line: 852, column: 3)
!3599 = !DILocation(line: 852, column: 17, scope: !3597)
!3600 = !DILocation(line: 852, column: 3, scope: !3598)
!3601 = !DILocation(line: 853, column: 17, scope: !3597)
!3602 = !{!3603, !1397, i64 8}
!3603 = !{!"slotvec", !1536, i64 0, !1397, i64 8}
!3604 = !DILocation(line: 853, column: 5, scope: !3597)
!3605 = !DILocation(line: 852, column: 28, scope: !3597)
!3606 = distinct !{!3606, !3600, !3607}
!3607 = !DILocation(line: 853, column: 20, scope: !3598)
!3608 = !DILocation(line: 854, column: 13, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3590, file: !449, line: 854, column: 7)
!3610 = !DILocation(line: 854, column: 17, scope: !3609)
!3611 = !DILocation(line: 854, column: 7, scope: !3590)
!3612 = !DILocation(line: 856, column: 7, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3609, file: !449, line: 855, column: 5)
!3614 = !DILocation(line: 857, column: 21, scope: !3613)
!3615 = !{!3603, !1536, i64 0}
!3616 = !DILocation(line: 858, column: 20, scope: !3613)
!3617 = !DILocation(line: 859, column: 5, scope: !3613)
!3618 = !DILocation(line: 860, column: 10, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3590, file: !449, line: 860, column: 7)
!3620 = !DILocation(line: 860, column: 7, scope: !3590)
!3621 = !DILocation(line: 862, column: 13, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3619, file: !449, line: 861, column: 5)
!3623 = !DILocation(line: 862, column: 7, scope: !3622)
!3624 = !DILocation(line: 863, column: 15, scope: !3622)
!3625 = !DILocation(line: 864, column: 5, scope: !3622)
!3626 = !DILocation(line: 865, column: 10, scope: !3590)
!3627 = !DILocation(line: 866, column: 1, scope: !3590)
!3628 = distinct !DISubprogram(name: "quotearg_n", scope: !449, file: !449, line: 931, type: !155, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3629)
!3629 = !{!3630, !3631}
!3630 = !DILocalVariable(name: "n", arg: 1, scope: !3628, file: !449, line: 931, type: !82)
!3631 = !DILocalVariable(name: "arg", arg: 2, scope: !3628, file: !449, line: 931, type: !80)
!3632 = !DILocation(line: 0, scope: !3628)
!3633 = !DILocation(line: 933, column: 10, scope: !3628)
!3634 = !DILocation(line: 933, column: 3, scope: !3628)
!3635 = distinct !DISubprogram(name: "quotearg_n_options", scope: !449, file: !449, line: 877, type: !3636, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3638)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!78, !82, !80, !137, !464}
!3638 = !{!3639, !3640, !3641, !3642, !3643, !3644, !3645, !3648, !3649, !3651, !3652, !3653}
!3639 = !DILocalVariable(name: "n", arg: 1, scope: !3635, file: !449, line: 877, type: !82)
!3640 = !DILocalVariable(name: "arg", arg: 2, scope: !3635, file: !449, line: 877, type: !80)
!3641 = !DILocalVariable(name: "argsize", arg: 3, scope: !3635, file: !449, line: 877, type: !137)
!3642 = !DILocalVariable(name: "options", arg: 4, scope: !3635, file: !449, line: 878, type: !464)
!3643 = !DILocalVariable(name: "e", scope: !3635, file: !449, line: 880, type: !82)
!3644 = !DILocalVariable(name: "sv", scope: !3635, file: !449, line: 882, type: !537)
!3645 = !DILocalVariable(name: "preallocated", scope: !3646, file: !449, line: 889, type: !256)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !449, line: 888, column: 5)
!3647 = distinct !DILexicalBlock(scope: !3635, file: !449, line: 887, column: 7)
!3648 = !DILocalVariable(name: "nmax", scope: !3646, file: !449, line: 890, type: !82)
!3649 = !DILocalVariable(name: "size", scope: !3650, file: !449, line: 903, type: !137)
!3650 = distinct !DILexicalBlock(scope: !3635, file: !449, line: 902, column: 3)
!3651 = !DILocalVariable(name: "val", scope: !3650, file: !449, line: 904, type: !78)
!3652 = !DILocalVariable(name: "flags", scope: !3650, file: !449, line: 906, type: !82)
!3653 = !DILocalVariable(name: "qsize", scope: !3650, file: !449, line: 907, type: !137)
!3654 = !DILocation(line: 0, scope: !3635)
!3655 = !DILocation(line: 880, column: 11, scope: !3635)
!3656 = !DILocation(line: 882, column: 24, scope: !3635)
!3657 = !DILocation(line: 884, column: 9, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3635, file: !449, line: 884, column: 7)
!3659 = !DILocation(line: 884, column: 7, scope: !3635)
!3660 = !DILocation(line: 885, column: 5, scope: !3658)
!3661 = !DILocation(line: 887, column: 7, scope: !3647)
!3662 = !DILocation(line: 887, column: 14, scope: !3647)
!3663 = !DILocation(line: 887, column: 7, scope: !3635)
!3664 = !DILocation(line: 889, column: 31, scope: !3646)
!3665 = !DILocation(line: 0, scope: !3646)
!3666 = !DILocation(line: 892, column: 16, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3646, file: !449, line: 892, column: 11)
!3668 = !DILocation(line: 892, column: 11, scope: !3646)
!3669 = !DILocation(line: 893, column: 9, scope: !3667)
!3670 = !DILocation(line: 895, column: 32, scope: !3646)
!3671 = !DILocation(line: 895, column: 61, scope: !3646)
!3672 = !DILocation(line: 895, column: 58, scope: !3646)
!3673 = !DILocation(line: 895, column: 66, scope: !3646)
!3674 = !DILocation(line: 895, column: 22, scope: !3646)
!3675 = !DILocation(line: 895, column: 15, scope: !3646)
!3676 = !DILocation(line: 896, column: 11, scope: !3646)
!3677 = !DILocation(line: 897, column: 15, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3646, file: !449, line: 896, column: 11)
!3679 = !{i64 0, i64 8, !1535, i64 8, i64 8, !1396}
!3680 = !DILocation(line: 897, column: 9, scope: !3678)
!3681 = !DILocation(line: 898, column: 20, scope: !3646)
!3682 = !DILocation(line: 898, column: 18, scope: !3646)
!3683 = !DILocation(line: 898, column: 15, scope: !3646)
!3684 = !DILocation(line: 898, column: 38, scope: !3646)
!3685 = !DILocation(line: 898, column: 31, scope: !3646)
!3686 = !DILocation(line: 898, column: 48, scope: !3646)
!3687 = !DILocation(line: 0, scope: !3088, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 898, column: 7, scope: !3646)
!3689 = !DILocation(line: 71, column: 10, scope: !3088, inlinedAt: !3688)
!3690 = !DILocation(line: 899, column: 14, scope: !3646)
!3691 = !DILocation(line: 900, column: 5, scope: !3646)
!3692 = !DILocation(line: 903, column: 19, scope: !3650)
!3693 = !DILocation(line: 903, column: 25, scope: !3650)
!3694 = !DILocation(line: 0, scope: !3650)
!3695 = !DILocation(line: 904, column: 23, scope: !3650)
!3696 = !DILocation(line: 906, column: 26, scope: !3650)
!3697 = !DILocation(line: 906, column: 32, scope: !3650)
!3698 = !DILocation(line: 908, column: 55, scope: !3650)
!3699 = !DILocation(line: 909, column: 46, scope: !3650)
!3700 = !DILocation(line: 910, column: 55, scope: !3650)
!3701 = !DILocation(line: 911, column: 55, scope: !3650)
!3702 = !DILocation(line: 907, column: 20, scope: !3650)
!3703 = !DILocation(line: 913, column: 14, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3650, file: !449, line: 913, column: 9)
!3705 = !DILocation(line: 913, column: 9, scope: !3650)
!3706 = !DILocation(line: 915, column: 35, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3704, file: !449, line: 914, column: 7)
!3708 = !DILocation(line: 915, column: 20, scope: !3707)
!3709 = !DILocation(line: 916, column: 17, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3707, file: !449, line: 916, column: 13)
!3711 = !DILocation(line: 916, column: 13, scope: !3707)
!3712 = !DILocation(line: 917, column: 11, scope: !3710)
!3713 = !DILocation(line: 0, scope: !3552, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 918, column: 27, scope: !3707)
!3715 = !DILocation(line: 218, column: 10, scope: !3552, inlinedAt: !3714)
!3716 = !DILocation(line: 918, column: 19, scope: !3707)
!3717 = !DILocation(line: 919, column: 69, scope: !3707)
!3718 = !DILocation(line: 921, column: 44, scope: !3707)
!3719 = !DILocation(line: 922, column: 44, scope: !3707)
!3720 = !DILocation(line: 919, column: 9, scope: !3707)
!3721 = !DILocation(line: 923, column: 7, scope: !3707)
!3722 = !DILocation(line: 925, column: 11, scope: !3650)
!3723 = !DILocation(line: 926, column: 5, scope: !3650)
!3724 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !449, file: !449, line: 937, type: !3725, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3727)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!78, !82, !80, !137}
!3727 = !{!3728, !3729, !3730}
!3728 = !DILocalVariable(name: "n", arg: 1, scope: !3724, file: !449, line: 937, type: !82)
!3729 = !DILocalVariable(name: "arg", arg: 2, scope: !3724, file: !449, line: 937, type: !80)
!3730 = !DILocalVariable(name: "argsize", arg: 3, scope: !3724, file: !449, line: 937, type: !137)
!3731 = !DILocation(line: 0, scope: !3724)
!3732 = !DILocation(line: 939, column: 10, scope: !3724)
!3733 = !DILocation(line: 939, column: 3, scope: !3724)
!3734 = distinct !DISubprogram(name: "quotearg", scope: !449, file: !449, line: 943, type: !147, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3735)
!3735 = !{!3736}
!3736 = !DILocalVariable(name: "arg", arg: 1, scope: !3734, file: !449, line: 943, type: !80)
!3737 = !DILocation(line: 0, scope: !3734)
!3738 = !DILocation(line: 0, scope: !3628, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 945, column: 10, scope: !3734)
!3740 = !DILocation(line: 933, column: 10, scope: !3628, inlinedAt: !3739)
!3741 = !DILocation(line: 945, column: 3, scope: !3734)
!3742 = distinct !DISubprogram(name: "quotearg_mem", scope: !449, file: !449, line: 949, type: !3743, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!78, !80, !137}
!3745 = !{!3746, !3747}
!3746 = !DILocalVariable(name: "arg", arg: 1, scope: !3742, file: !449, line: 949, type: !80)
!3747 = !DILocalVariable(name: "argsize", arg: 2, scope: !3742, file: !449, line: 949, type: !137)
!3748 = !DILocation(line: 0, scope: !3742)
!3749 = !DILocation(line: 0, scope: !3724, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 951, column: 10, scope: !3742)
!3751 = !DILocation(line: 939, column: 10, scope: !3724, inlinedAt: !3750)
!3752 = !DILocation(line: 951, column: 3, scope: !3742)
!3753 = distinct !DISubprogram(name: "quotearg_n_style", scope: !449, file: !449, line: 955, type: !211, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3754)
!3754 = !{!3755, !3756, !3757, !3758}
!3755 = !DILocalVariable(name: "n", arg: 1, scope: !3753, file: !449, line: 955, type: !82)
!3756 = !DILocalVariable(name: "s", arg: 2, scope: !3753, file: !449, line: 955, type: !35)
!3757 = !DILocalVariable(name: "arg", arg: 3, scope: !3753, file: !449, line: 955, type: !80)
!3758 = !DILocalVariable(name: "o", scope: !3753, file: !449, line: 957, type: !465)
!3759 = !DILocation(line: 0, scope: !3753)
!3760 = !DILocation(line: 957, column: 3, scope: !3753)
!3761 = !DILocation(line: 957, column: 32, scope: !3753)
!3762 = !DILocalVariable(name: "style", arg: 1, scope: !3763, file: !449, line: 193, type: !35)
!3763 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !449, file: !449, line: 193, type: !3764, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!466, !35}
!3766 = !{!3762, !3767}
!3767 = !DILocalVariable(name: "o", scope: !3763, file: !449, line: 195, type: !466)
!3768 = !DILocation(line: 0, scope: !3763, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 957, column: 36, scope: !3753)
!3770 = !DILocation(line: 195, column: 26, scope: !3763, inlinedAt: !3769)
!3771 = !{!3772}
!3772 = distinct !{!3772, !3773, !"quoting_options_from_style: argument 0"}
!3773 = distinct !{!3773, !"quoting_options_from_style"}
!3774 = !DILocation(line: 196, column: 13, scope: !3775, inlinedAt: !3769)
!3775 = distinct !DILexicalBlock(scope: !3763, file: !449, line: 196, column: 7)
!3776 = !DILocation(line: 196, column: 7, scope: !3763, inlinedAt: !3769)
!3777 = !DILocation(line: 197, column: 5, scope: !3775, inlinedAt: !3769)
!3778 = !DILocation(line: 198, column: 5, scope: !3763, inlinedAt: !3769)
!3779 = !DILocation(line: 198, column: 11, scope: !3763, inlinedAt: !3769)
!3780 = !DILocation(line: 958, column: 10, scope: !3753)
!3781 = !DILocation(line: 959, column: 1, scope: !3753)
!3782 = !DILocation(line: 958, column: 3, scope: !3753)
!3783 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !449, file: !449, line: 962, type: !3784, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3786)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!78, !82, !35, !80, !137}
!3786 = !{!3787, !3788, !3789, !3790, !3791}
!3787 = !DILocalVariable(name: "n", arg: 1, scope: !3783, file: !449, line: 962, type: !82)
!3788 = !DILocalVariable(name: "s", arg: 2, scope: !3783, file: !449, line: 962, type: !35)
!3789 = !DILocalVariable(name: "arg", arg: 3, scope: !3783, file: !449, line: 963, type: !80)
!3790 = !DILocalVariable(name: "argsize", arg: 4, scope: !3783, file: !449, line: 963, type: !137)
!3791 = !DILocalVariable(name: "o", scope: !3783, file: !449, line: 965, type: !465)
!3792 = !DILocation(line: 0, scope: !3783)
!3793 = !DILocation(line: 965, column: 3, scope: !3783)
!3794 = !DILocation(line: 965, column: 32, scope: !3783)
!3795 = !DILocation(line: 0, scope: !3763, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 965, column: 36, scope: !3783)
!3797 = !DILocation(line: 195, column: 26, scope: !3763, inlinedAt: !3796)
!3798 = !{!3799}
!3799 = distinct !{!3799, !3800, !"quoting_options_from_style: argument 0"}
!3800 = distinct !{!3800, !"quoting_options_from_style"}
!3801 = !DILocation(line: 196, column: 13, scope: !3775, inlinedAt: !3796)
!3802 = !DILocation(line: 196, column: 7, scope: !3763, inlinedAt: !3796)
!3803 = !DILocation(line: 197, column: 5, scope: !3775, inlinedAt: !3796)
!3804 = !DILocation(line: 198, column: 5, scope: !3763, inlinedAt: !3796)
!3805 = !DILocation(line: 198, column: 11, scope: !3763, inlinedAt: !3796)
!3806 = !DILocation(line: 966, column: 10, scope: !3783)
!3807 = !DILocation(line: 967, column: 1, scope: !3783)
!3808 = !DILocation(line: 966, column: 3, scope: !3783)
!3809 = distinct !DISubprogram(name: "quotearg_style", scope: !449, file: !449, line: 970, type: !237, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3810)
!3810 = !{!3811, !3812}
!3811 = !DILocalVariable(name: "s", arg: 1, scope: !3809, file: !449, line: 970, type: !35)
!3812 = !DILocalVariable(name: "arg", arg: 2, scope: !3809, file: !449, line: 970, type: !80)
!3813 = !DILocation(line: 195, column: 26, scope: !3763, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 957, column: 36, scope: !3753, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 972, column: 10, scope: !3809)
!3816 = !DILocation(line: 957, column: 32, scope: !3753, inlinedAt: !3815)
!3817 = !DILocation(line: 0, scope: !3809)
!3818 = !DILocation(line: 0, scope: !3753, inlinedAt: !3815)
!3819 = !DILocation(line: 957, column: 3, scope: !3753, inlinedAt: !3815)
!3820 = !DILocation(line: 0, scope: !3763, inlinedAt: !3814)
!3821 = !{!3822}
!3822 = distinct !{!3822, !3823, !"quoting_options_from_style: argument 0"}
!3823 = distinct !{!3823, !"quoting_options_from_style"}
!3824 = !DILocation(line: 196, column: 13, scope: !3775, inlinedAt: !3814)
!3825 = !DILocation(line: 196, column: 7, scope: !3763, inlinedAt: !3814)
!3826 = !DILocation(line: 197, column: 5, scope: !3775, inlinedAt: !3814)
!3827 = !DILocation(line: 198, column: 5, scope: !3763, inlinedAt: !3814)
!3828 = !DILocation(line: 198, column: 11, scope: !3763, inlinedAt: !3814)
!3829 = !DILocation(line: 958, column: 10, scope: !3753, inlinedAt: !3815)
!3830 = !DILocation(line: 959, column: 1, scope: !3753, inlinedAt: !3815)
!3831 = !DILocation(line: 972, column: 3, scope: !3809)
!3832 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !449, file: !449, line: 976, type: !3833, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3835)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!78, !35, !80, !137}
!3835 = !{!3836, !3837, !3838}
!3836 = !DILocalVariable(name: "s", arg: 1, scope: !3832, file: !449, line: 976, type: !35)
!3837 = !DILocalVariable(name: "arg", arg: 2, scope: !3832, file: !449, line: 976, type: !80)
!3838 = !DILocalVariable(name: "argsize", arg: 3, scope: !3832, file: !449, line: 976, type: !137)
!3839 = !DILocation(line: 195, column: 26, scope: !3763, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 965, column: 36, scope: !3783, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 978, column: 10, scope: !3832)
!3842 = !DILocation(line: 965, column: 32, scope: !3783, inlinedAt: !3841)
!3843 = !DILocation(line: 0, scope: !3832)
!3844 = !DILocation(line: 0, scope: !3783, inlinedAt: !3841)
!3845 = !DILocation(line: 965, column: 3, scope: !3783, inlinedAt: !3841)
!3846 = !DILocation(line: 0, scope: !3763, inlinedAt: !3840)
!3847 = !{!3848}
!3848 = distinct !{!3848, !3849, !"quoting_options_from_style: argument 0"}
!3849 = distinct !{!3849, !"quoting_options_from_style"}
!3850 = !DILocation(line: 196, column: 13, scope: !3775, inlinedAt: !3840)
!3851 = !DILocation(line: 196, column: 7, scope: !3763, inlinedAt: !3840)
!3852 = !DILocation(line: 197, column: 5, scope: !3775, inlinedAt: !3840)
!3853 = !DILocation(line: 198, column: 5, scope: !3763, inlinedAt: !3840)
!3854 = !DILocation(line: 198, column: 11, scope: !3763, inlinedAt: !3840)
!3855 = !DILocation(line: 966, column: 10, scope: !3783, inlinedAt: !3841)
!3856 = !DILocation(line: 967, column: 1, scope: !3783, inlinedAt: !3841)
!3857 = !DILocation(line: 978, column: 3, scope: !3832)
!3858 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !449, file: !449, line: 982, type: !3859, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!78, !80, !137, !79}
!3861 = !{!3862, !3863, !3864, !3865}
!3862 = !DILocalVariable(name: "arg", arg: 1, scope: !3858, file: !449, line: 982, type: !80)
!3863 = !DILocalVariable(name: "argsize", arg: 2, scope: !3858, file: !449, line: 982, type: !137)
!3864 = !DILocalVariable(name: "ch", arg: 3, scope: !3858, file: !449, line: 982, type: !79)
!3865 = !DILocalVariable(name: "options", scope: !3858, file: !449, line: 984, type: !466)
!3866 = !DILocation(line: 0, scope: !3858)
!3867 = !DILocation(line: 984, column: 3, scope: !3858)
!3868 = !DILocation(line: 984, column: 26, scope: !3858)
!3869 = !DILocation(line: 985, column: 13, scope: !3858)
!3870 = !{i64 0, i64 4, !1544, i64 4, i64 4, !1575, i64 8, i64 32, !1544, i64 40, i64 8, !1396, i64 48, i64 8, !1396}
!3871 = !DILocation(line: 0, scope: !2703, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 986, column: 3, scope: !3858)
!3873 = !DILocation(line: 156, column: 62, scope: !2703, inlinedAt: !3872)
!3874 = !DILocation(line: 156, column: 57, scope: !2703, inlinedAt: !3872)
!3875 = !DILocation(line: 157, column: 15, scope: !2703, inlinedAt: !3872)
!3876 = !DILocation(line: 158, column: 12, scope: !2703, inlinedAt: !3872)
!3877 = !DILocation(line: 158, column: 15, scope: !2703, inlinedAt: !3872)
!3878 = !DILocation(line: 158, column: 25, scope: !2703, inlinedAt: !3872)
!3879 = !DILocation(line: 159, column: 18, scope: !2703, inlinedAt: !3872)
!3880 = !DILocation(line: 159, column: 23, scope: !2703, inlinedAt: !3872)
!3881 = !DILocation(line: 159, column: 6, scope: !2703, inlinedAt: !3872)
!3882 = !DILocation(line: 987, column: 10, scope: !3858)
!3883 = !DILocation(line: 988, column: 1, scope: !3858)
!3884 = !DILocation(line: 987, column: 3, scope: !3858)
!3885 = distinct !DISubprogram(name: "quotearg_char", scope: !449, file: !449, line: 991, type: !3886, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!78, !80, !79}
!3888 = !{!3889, !3890}
!3889 = !DILocalVariable(name: "arg", arg: 1, scope: !3885, file: !449, line: 991, type: !80)
!3890 = !DILocalVariable(name: "ch", arg: 2, scope: !3885, file: !449, line: 991, type: !79)
!3891 = !DILocation(line: 984, column: 26, scope: !3858, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 993, column: 10, scope: !3885)
!3893 = !DILocation(line: 0, scope: !3885)
!3894 = !DILocation(line: 0, scope: !3858, inlinedAt: !3892)
!3895 = !DILocation(line: 984, column: 3, scope: !3858, inlinedAt: !3892)
!3896 = !DILocation(line: 985, column: 13, scope: !3858, inlinedAt: !3892)
!3897 = !DILocation(line: 0, scope: !2703, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 986, column: 3, scope: !3858, inlinedAt: !3892)
!3899 = !DILocation(line: 156, column: 62, scope: !2703, inlinedAt: !3898)
!3900 = !DILocation(line: 156, column: 57, scope: !2703, inlinedAt: !3898)
!3901 = !DILocation(line: 157, column: 15, scope: !2703, inlinedAt: !3898)
!3902 = !DILocation(line: 158, column: 12, scope: !2703, inlinedAt: !3898)
!3903 = !DILocation(line: 158, column: 15, scope: !2703, inlinedAt: !3898)
!3904 = !DILocation(line: 158, column: 25, scope: !2703, inlinedAt: !3898)
!3905 = !DILocation(line: 159, column: 18, scope: !2703, inlinedAt: !3898)
!3906 = !DILocation(line: 159, column: 23, scope: !2703, inlinedAt: !3898)
!3907 = !DILocation(line: 159, column: 6, scope: !2703, inlinedAt: !3898)
!3908 = !DILocation(line: 987, column: 10, scope: !3858, inlinedAt: !3892)
!3909 = !DILocation(line: 988, column: 1, scope: !3858, inlinedAt: !3892)
!3910 = !DILocation(line: 993, column: 3, scope: !3885)
!3911 = distinct !DISubprogram(name: "quotearg_colon", scope: !449, file: !449, line: 997, type: !147, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3912)
!3912 = !{!3913}
!3913 = !DILocalVariable(name: "arg", arg: 1, scope: !3911, file: !449, line: 997, type: !80)
!3914 = !DILocation(line: 984, column: 26, scope: !3858, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 993, column: 10, scope: !3885, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 999, column: 10, scope: !3911)
!3917 = !DILocation(line: 0, scope: !3911)
!3918 = !DILocation(line: 0, scope: !3885, inlinedAt: !3916)
!3919 = !DILocation(line: 0, scope: !3858, inlinedAt: !3915)
!3920 = !DILocation(line: 984, column: 3, scope: !3858, inlinedAt: !3915)
!3921 = !DILocation(line: 985, column: 13, scope: !3858, inlinedAt: !3915)
!3922 = !DILocation(line: 0, scope: !2703, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 986, column: 3, scope: !3858, inlinedAt: !3915)
!3924 = !DILocation(line: 156, column: 57, scope: !2703, inlinedAt: !3923)
!3925 = !DILocation(line: 158, column: 12, scope: !2703, inlinedAt: !3923)
!3926 = !DILocation(line: 159, column: 6, scope: !2703, inlinedAt: !3923)
!3927 = !DILocation(line: 987, column: 10, scope: !3858, inlinedAt: !3915)
!3928 = !DILocation(line: 988, column: 1, scope: !3858, inlinedAt: !3915)
!3929 = !DILocation(line: 999, column: 3, scope: !3911)
!3930 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !449, file: !449, line: 1003, type: !3743, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3931)
!3931 = !{!3932, !3933}
!3932 = !DILocalVariable(name: "arg", arg: 1, scope: !3930, file: !449, line: 1003, type: !80)
!3933 = !DILocalVariable(name: "argsize", arg: 2, scope: !3930, file: !449, line: 1003, type: !137)
!3934 = !DILocation(line: 984, column: 26, scope: !3858, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 1005, column: 10, scope: !3930)
!3936 = !DILocation(line: 0, scope: !3930)
!3937 = !DILocation(line: 0, scope: !3858, inlinedAt: !3935)
!3938 = !DILocation(line: 984, column: 3, scope: !3858, inlinedAt: !3935)
!3939 = !DILocation(line: 985, column: 13, scope: !3858, inlinedAt: !3935)
!3940 = !DILocation(line: 0, scope: !2703, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 986, column: 3, scope: !3858, inlinedAt: !3935)
!3942 = !DILocation(line: 156, column: 57, scope: !2703, inlinedAt: !3941)
!3943 = !DILocation(line: 158, column: 12, scope: !2703, inlinedAt: !3941)
!3944 = !DILocation(line: 159, column: 6, scope: !2703, inlinedAt: !3941)
!3945 = !DILocation(line: 987, column: 10, scope: !3858, inlinedAt: !3935)
!3946 = !DILocation(line: 988, column: 1, scope: !3858, inlinedAt: !3935)
!3947 = !DILocation(line: 1005, column: 3, scope: !3930)
!3948 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !449, file: !449, line: 1009, type: !211, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3949)
!3949 = !{!3950, !3951, !3952, !3953}
!3950 = !DILocalVariable(name: "n", arg: 1, scope: !3948, file: !449, line: 1009, type: !82)
!3951 = !DILocalVariable(name: "s", arg: 2, scope: !3948, file: !449, line: 1009, type: !35)
!3952 = !DILocalVariable(name: "arg", arg: 3, scope: !3948, file: !449, line: 1009, type: !80)
!3953 = !DILocalVariable(name: "options", scope: !3948, file: !449, line: 1011, type: !466)
!3954 = !DILocation(line: 195, column: 26, scope: !3763, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 1012, column: 13, scope: !3948)
!3956 = !DILocation(line: 0, scope: !3948)
!3957 = !DILocation(line: 1011, column: 3, scope: !3948)
!3958 = !DILocation(line: 1011, column: 26, scope: !3948)
!3959 = !DILocation(line: 1012, column: 13, scope: !3948)
!3960 = !DILocation(line: 0, scope: !3763, inlinedAt: !3955)
!3961 = !{!3962}
!3962 = distinct !{!3962, !3963, !"quoting_options_from_style: argument 0"}
!3963 = distinct !{!3963, !"quoting_options_from_style"}
!3964 = !DILocation(line: 196, column: 13, scope: !3775, inlinedAt: !3955)
!3965 = !DILocation(line: 196, column: 7, scope: !3763, inlinedAt: !3955)
!3966 = !DILocation(line: 197, column: 5, scope: !3775, inlinedAt: !3955)
!3967 = !DILocation(line: 0, scope: !2703, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 1013, column: 3, scope: !3948)
!3969 = !DILocation(line: 156, column: 57, scope: !2703, inlinedAt: !3968)
!3970 = !DILocation(line: 158, column: 12, scope: !2703, inlinedAt: !3968)
!3971 = !DILocation(line: 159, column: 6, scope: !2703, inlinedAt: !3968)
!3972 = !DILocation(line: 1014, column: 10, scope: !3948)
!3973 = !DILocation(line: 1015, column: 1, scope: !3948)
!3974 = !DILocation(line: 1014, column: 3, scope: !3948)
!3975 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !449, file: !449, line: 1018, type: !3976, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3978)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!78, !82, !80, !80, !80}
!3978 = !{!3979, !3980, !3981, !3982}
!3979 = !DILocalVariable(name: "n", arg: 1, scope: !3975, file: !449, line: 1018, type: !82)
!3980 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3975, file: !449, line: 1018, type: !80)
!3981 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3975, file: !449, line: 1019, type: !80)
!3982 = !DILocalVariable(name: "arg", arg: 4, scope: !3975, file: !449, line: 1019, type: !80)
!3983 = !DILocalVariable(name: "o", scope: !3984, file: !449, line: 1030, type: !466)
!3984 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !449, file: !449, line: 1026, type: !3985, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3987)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!78, !82, !80, !80, !80, !137}
!3987 = !{!3988, !3989, !3990, !3991, !3992, !3983}
!3988 = !DILocalVariable(name: "n", arg: 1, scope: !3984, file: !449, line: 1026, type: !82)
!3989 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3984, file: !449, line: 1026, type: !80)
!3990 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3984, file: !449, line: 1027, type: !80)
!3991 = !DILocalVariable(name: "arg", arg: 4, scope: !3984, file: !449, line: 1028, type: !80)
!3992 = !DILocalVariable(name: "argsize", arg: 5, scope: !3984, file: !449, line: 1028, type: !137)
!3993 = !DILocation(line: 1030, column: 26, scope: !3984, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 1021, column: 10, scope: !3975)
!3995 = !DILocation(line: 0, scope: !3975)
!3996 = !DILocation(line: 0, scope: !3984, inlinedAt: !3994)
!3997 = !DILocation(line: 1030, column: 3, scope: !3984, inlinedAt: !3994)
!3998 = !DILocation(line: 1030, column: 30, scope: !3984, inlinedAt: !3994)
!3999 = !DILocation(line: 0, scope: !2743, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 1031, column: 3, scope: !3984, inlinedAt: !3994)
!4001 = !DILocation(line: 184, column: 6, scope: !2743, inlinedAt: !4000)
!4002 = !DILocation(line: 184, column: 12, scope: !2743, inlinedAt: !4000)
!4003 = !DILocation(line: 185, column: 8, scope: !2757, inlinedAt: !4000)
!4004 = !DILocation(line: 185, column: 23, scope: !2757, inlinedAt: !4000)
!4005 = !DILocation(line: 185, column: 19, scope: !2757, inlinedAt: !4000)
!4006 = !DILocation(line: 186, column: 5, scope: !2757, inlinedAt: !4000)
!4007 = !DILocation(line: 187, column: 6, scope: !2743, inlinedAt: !4000)
!4008 = !DILocation(line: 187, column: 17, scope: !2743, inlinedAt: !4000)
!4009 = !DILocation(line: 188, column: 6, scope: !2743, inlinedAt: !4000)
!4010 = !DILocation(line: 188, column: 18, scope: !2743, inlinedAt: !4000)
!4011 = !DILocation(line: 1032, column: 10, scope: !3984, inlinedAt: !3994)
!4012 = !DILocation(line: 1033, column: 1, scope: !3984, inlinedAt: !3994)
!4013 = !DILocation(line: 1021, column: 3, scope: !3975)
!4014 = !DILocation(line: 0, scope: !3984)
!4015 = !DILocation(line: 1030, column: 3, scope: !3984)
!4016 = !DILocation(line: 1030, column: 26, scope: !3984)
!4017 = !DILocation(line: 1030, column: 30, scope: !3984)
!4018 = !DILocation(line: 0, scope: !2743, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 1031, column: 3, scope: !3984)
!4020 = !DILocation(line: 184, column: 6, scope: !2743, inlinedAt: !4019)
!4021 = !DILocation(line: 184, column: 12, scope: !2743, inlinedAt: !4019)
!4022 = !DILocation(line: 185, column: 8, scope: !2757, inlinedAt: !4019)
!4023 = !DILocation(line: 185, column: 23, scope: !2757, inlinedAt: !4019)
!4024 = !DILocation(line: 185, column: 19, scope: !2757, inlinedAt: !4019)
!4025 = !DILocation(line: 186, column: 5, scope: !2757, inlinedAt: !4019)
!4026 = !DILocation(line: 187, column: 6, scope: !2743, inlinedAt: !4019)
!4027 = !DILocation(line: 187, column: 17, scope: !2743, inlinedAt: !4019)
!4028 = !DILocation(line: 188, column: 6, scope: !2743, inlinedAt: !4019)
!4029 = !DILocation(line: 188, column: 18, scope: !2743, inlinedAt: !4019)
!4030 = !DILocation(line: 1032, column: 10, scope: !3984)
!4031 = !DILocation(line: 1033, column: 1, scope: !3984)
!4032 = !DILocation(line: 1032, column: 3, scope: !3984)
!4033 = distinct !DISubprogram(name: "quotearg_custom", scope: !449, file: !449, line: 1036, type: !4034, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !4036)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!78, !80, !80, !80}
!4036 = !{!4037, !4038, !4039}
!4037 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4033, file: !449, line: 1036, type: !80)
!4038 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4033, file: !449, line: 1036, type: !80)
!4039 = !DILocalVariable(name: "arg", arg: 3, scope: !4033, file: !449, line: 1037, type: !80)
!4040 = !DILocation(line: 1030, column: 26, scope: !3984, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 1021, column: 10, scope: !3975, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 1039, column: 10, scope: !4033)
!4043 = !DILocation(line: 0, scope: !4033)
!4044 = !DILocation(line: 0, scope: !3975, inlinedAt: !4042)
!4045 = !DILocation(line: 0, scope: !3984, inlinedAt: !4041)
!4046 = !DILocation(line: 1030, column: 3, scope: !3984, inlinedAt: !4041)
!4047 = !DILocation(line: 1030, column: 30, scope: !3984, inlinedAt: !4041)
!4048 = !DILocation(line: 0, scope: !2743, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 1031, column: 3, scope: !3984, inlinedAt: !4041)
!4050 = !DILocation(line: 184, column: 6, scope: !2743, inlinedAt: !4049)
!4051 = !DILocation(line: 184, column: 12, scope: !2743, inlinedAt: !4049)
!4052 = !DILocation(line: 185, column: 8, scope: !2757, inlinedAt: !4049)
!4053 = !DILocation(line: 185, column: 23, scope: !2757, inlinedAt: !4049)
!4054 = !DILocation(line: 185, column: 19, scope: !2757, inlinedAt: !4049)
!4055 = !DILocation(line: 186, column: 5, scope: !2757, inlinedAt: !4049)
!4056 = !DILocation(line: 187, column: 6, scope: !2743, inlinedAt: !4049)
!4057 = !DILocation(line: 187, column: 17, scope: !2743, inlinedAt: !4049)
!4058 = !DILocation(line: 188, column: 6, scope: !2743, inlinedAt: !4049)
!4059 = !DILocation(line: 188, column: 18, scope: !2743, inlinedAt: !4049)
!4060 = !DILocation(line: 1032, column: 10, scope: !3984, inlinedAt: !4041)
!4061 = !DILocation(line: 1033, column: 1, scope: !3984, inlinedAt: !4041)
!4062 = !DILocation(line: 1039, column: 3, scope: !4033)
!4063 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !449, file: !449, line: 1043, type: !4064, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !4066)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!78, !80, !80, !80, !137}
!4066 = !{!4067, !4068, !4069, !4070}
!4067 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4063, file: !449, line: 1043, type: !80)
!4068 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4063, file: !449, line: 1043, type: !80)
!4069 = !DILocalVariable(name: "arg", arg: 3, scope: !4063, file: !449, line: 1044, type: !80)
!4070 = !DILocalVariable(name: "argsize", arg: 4, scope: !4063, file: !449, line: 1044, type: !137)
!4071 = !DILocation(line: 1030, column: 26, scope: !3984, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 1046, column: 10, scope: !4063)
!4073 = !DILocation(line: 0, scope: !4063)
!4074 = !DILocation(line: 0, scope: !3984, inlinedAt: !4072)
!4075 = !DILocation(line: 1030, column: 3, scope: !3984, inlinedAt: !4072)
!4076 = !DILocation(line: 1030, column: 30, scope: !3984, inlinedAt: !4072)
!4077 = !DILocation(line: 0, scope: !2743, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 1031, column: 3, scope: !3984, inlinedAt: !4072)
!4079 = !DILocation(line: 184, column: 6, scope: !2743, inlinedAt: !4078)
!4080 = !DILocation(line: 184, column: 12, scope: !2743, inlinedAt: !4078)
!4081 = !DILocation(line: 185, column: 8, scope: !2757, inlinedAt: !4078)
!4082 = !DILocation(line: 185, column: 23, scope: !2757, inlinedAt: !4078)
!4083 = !DILocation(line: 185, column: 19, scope: !2757, inlinedAt: !4078)
!4084 = !DILocation(line: 186, column: 5, scope: !2757, inlinedAt: !4078)
!4085 = !DILocation(line: 187, column: 6, scope: !2743, inlinedAt: !4078)
!4086 = !DILocation(line: 187, column: 17, scope: !2743, inlinedAt: !4078)
!4087 = !DILocation(line: 188, column: 6, scope: !2743, inlinedAt: !4078)
!4088 = !DILocation(line: 188, column: 18, scope: !2743, inlinedAt: !4078)
!4089 = !DILocation(line: 1032, column: 10, scope: !3984, inlinedAt: !4072)
!4090 = !DILocation(line: 1033, column: 1, scope: !3984, inlinedAt: !4072)
!4091 = !DILocation(line: 1046, column: 3, scope: !4063)
!4092 = distinct !DISubprogram(name: "quote_n_mem", scope: !449, file: !449, line: 1061, type: !4093, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!80, !82, !80, !137}
!4095 = !{!4096, !4097, !4098}
!4096 = !DILocalVariable(name: "n", arg: 1, scope: !4092, file: !449, line: 1061, type: !82)
!4097 = !DILocalVariable(name: "arg", arg: 2, scope: !4092, file: !449, line: 1061, type: !80)
!4098 = !DILocalVariable(name: "argsize", arg: 3, scope: !4092, file: !449, line: 1061, type: !137)
!4099 = !DILocation(line: 0, scope: !4092)
!4100 = !DILocation(line: 1063, column: 10, scope: !4092)
!4101 = !DILocation(line: 1063, column: 3, scope: !4092)
!4102 = distinct !DISubprogram(name: "quote_mem", scope: !449, file: !449, line: 1067, type: !4103, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!80, !80, !137}
!4105 = !{!4106, !4107}
!4106 = !DILocalVariable(name: "arg", arg: 1, scope: !4102, file: !449, line: 1067, type: !80)
!4107 = !DILocalVariable(name: "argsize", arg: 2, scope: !4102, file: !449, line: 1067, type: !137)
!4108 = !DILocation(line: 0, scope: !4102)
!4109 = !DILocation(line: 0, scope: !4092, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 1069, column: 10, scope: !4102)
!4111 = !DILocation(line: 1063, column: 10, scope: !4092, inlinedAt: !4110)
!4112 = !DILocation(line: 1069, column: 3, scope: !4102)
!4113 = distinct !DISubprogram(name: "quote_n", scope: !449, file: !449, line: 1073, type: !311, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !4114)
!4114 = !{!4115, !4116}
!4115 = !DILocalVariable(name: "n", arg: 1, scope: !4113, file: !449, line: 1073, type: !82)
!4116 = !DILocalVariable(name: "arg", arg: 2, scope: !4113, file: !449, line: 1073, type: !80)
!4117 = !DILocation(line: 0, scope: !4113)
!4118 = !DILocation(line: 0, scope: !4092, inlinedAt: !4119)
!4119 = distinct !DILocation(line: 1075, column: 10, scope: !4113)
!4120 = !DILocation(line: 1063, column: 10, scope: !4092, inlinedAt: !4119)
!4121 = !DILocation(line: 1075, column: 3, scope: !4113)
!4122 = distinct !DISubprogram(name: "quote", scope: !449, file: !449, line: 1079, type: !184, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !4123)
!4123 = !{!4124}
!4124 = !DILocalVariable(name: "arg", arg: 1, scope: !4122, file: !449, line: 1079, type: !80)
!4125 = !DILocation(line: 0, scope: !4122)
!4126 = !DILocation(line: 0, scope: !4113, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 1081, column: 10, scope: !4122)
!4128 = !DILocation(line: 0, scope: !4092, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 1075, column: 10, scope: !4113, inlinedAt: !4127)
!4130 = !DILocation(line: 1063, column: 10, scope: !4092, inlinedAt: !4129)
!4131 = !DILocation(line: 1081, column: 3, scope: !4122)
!4132 = distinct !DISubprogram(name: "version_etc_arn", scope: !705, file: !705, line: 61, type: !4133, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !4137)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !4135, !80, !80, !80, !2034, !137}
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1498, line: 7, baseType: !715)
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4143}
!4138 = !DILocalVariable(name: "stream", arg: 1, scope: !4132, file: !705, line: 61, type: !4135)
!4139 = !DILocalVariable(name: "command_name", arg: 2, scope: !4132, file: !705, line: 62, type: !80)
!4140 = !DILocalVariable(name: "package", arg: 3, scope: !4132, file: !705, line: 62, type: !80)
!4141 = !DILocalVariable(name: "version", arg: 4, scope: !4132, file: !705, line: 63, type: !80)
!4142 = !DILocalVariable(name: "authors", arg: 5, scope: !4132, file: !705, line: 64, type: !2034)
!4143 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4132, file: !705, line: 64, type: !137)
!4144 = !DILocation(line: 0, scope: !4132)
!4145 = !DILocation(line: 66, column: 7, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4132, file: !705, line: 66, column: 7)
!4147 = !DILocation(line: 66, column: 7, scope: !4132)
!4148 = !DILocation(line: 67, column: 5, scope: !4146)
!4149 = !DILocation(line: 69, column: 5, scope: !4146)
!4150 = !DILocation(line: 83, column: 3, scope: !4132)
!4151 = !DILocation(line: 85, column: 3, scope: !4132)
!4152 = !DILocation(line: 88, column: 3, scope: !4132)
!4153 = !DILocation(line: 95, column: 3, scope: !4132)
!4154 = !DILocation(line: 97, column: 3, scope: !4132)
!4155 = !DILocation(line: 105, column: 7, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4132, file: !705, line: 98, column: 5)
!4157 = !DILocation(line: 106, column: 7, scope: !4156)
!4158 = !DILocation(line: 109, column: 7, scope: !4156)
!4159 = !DILocation(line: 110, column: 7, scope: !4156)
!4160 = !DILocation(line: 113, column: 7, scope: !4156)
!4161 = !DILocation(line: 115, column: 7, scope: !4156)
!4162 = !DILocation(line: 120, column: 7, scope: !4156)
!4163 = !DILocation(line: 122, column: 7, scope: !4156)
!4164 = !DILocation(line: 127, column: 7, scope: !4156)
!4165 = !DILocation(line: 129, column: 7, scope: !4156)
!4166 = !DILocation(line: 134, column: 7, scope: !4156)
!4167 = !DILocation(line: 137, column: 7, scope: !4156)
!4168 = !DILocation(line: 142, column: 7, scope: !4156)
!4169 = !DILocation(line: 145, column: 7, scope: !4156)
!4170 = !DILocation(line: 150, column: 7, scope: !4156)
!4171 = !DILocation(line: 154, column: 7, scope: !4156)
!4172 = !DILocation(line: 159, column: 7, scope: !4156)
!4173 = !DILocation(line: 163, column: 7, scope: !4156)
!4174 = !DILocation(line: 170, column: 7, scope: !4156)
!4175 = !DILocation(line: 174, column: 7, scope: !4156)
!4176 = !DILocation(line: 176, column: 1, scope: !4132)
!4177 = distinct !DISubprogram(name: "version_etc_ar", scope: !705, file: !705, line: 183, type: !4178, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !4180)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{null, !4135, !80, !80, !80, !2034}
!4180 = !{!4181, !4182, !4183, !4184, !4185, !4186}
!4181 = !DILocalVariable(name: "stream", arg: 1, scope: !4177, file: !705, line: 183, type: !4135)
!4182 = !DILocalVariable(name: "command_name", arg: 2, scope: !4177, file: !705, line: 184, type: !80)
!4183 = !DILocalVariable(name: "package", arg: 3, scope: !4177, file: !705, line: 184, type: !80)
!4184 = !DILocalVariable(name: "version", arg: 4, scope: !4177, file: !705, line: 185, type: !80)
!4185 = !DILocalVariable(name: "authors", arg: 5, scope: !4177, file: !705, line: 185, type: !2034)
!4186 = !DILocalVariable(name: "n_authors", scope: !4177, file: !705, line: 187, type: !137)
!4187 = !DILocation(line: 0, scope: !4177)
!4188 = !DILocation(line: 189, column: 8, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4177, file: !705, line: 189, column: 3)
!4190 = !DILocation(line: 0, scope: !4189)
!4191 = !DILocation(line: 189, column: 23, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4189, file: !705, line: 189, column: 3)
!4193 = !DILocation(line: 189, column: 3, scope: !4189)
!4194 = !DILocation(line: 189, column: 52, scope: !4192)
!4195 = distinct !{!4195, !4193, !4196}
!4196 = !DILocation(line: 190, column: 5, scope: !4189)
!4197 = !DILocation(line: 191, column: 3, scope: !4177)
!4198 = !DILocation(line: 192, column: 1, scope: !4177)
!4199 = distinct !DISubprogram(name: "version_etc_va", scope: !705, file: !705, line: 199, type: !4200, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !4209)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{null, !4135, !80, !80, !80, !4202}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !705, line: 192, size: 192, elements: !4204)
!4204 = !{!4205, !4206, !4207, !4208}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4203, file: !705, line: 192, baseType: !6, size: 32)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4203, file: !705, line: 192, baseType: !6, size: 32, offset: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4203, file: !705, line: 192, baseType: !135, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4203, file: !705, line: 192, baseType: !135, size: 64, offset: 128)
!4209 = !{!4210, !4211, !4212, !4213, !4214, !4215, !4216}
!4210 = !DILocalVariable(name: "stream", arg: 1, scope: !4199, file: !705, line: 199, type: !4135)
!4211 = !DILocalVariable(name: "command_name", arg: 2, scope: !4199, file: !705, line: 200, type: !80)
!4212 = !DILocalVariable(name: "package", arg: 3, scope: !4199, file: !705, line: 200, type: !80)
!4213 = !DILocalVariable(name: "version", arg: 4, scope: !4199, file: !705, line: 201, type: !80)
!4214 = !DILocalVariable(name: "authors", arg: 5, scope: !4199, file: !705, line: 201, type: !4202)
!4215 = !DILocalVariable(name: "n_authors", scope: !4199, file: !705, line: 203, type: !137)
!4216 = !DILocalVariable(name: "authtab", scope: !4199, file: !705, line: 204, type: !4217)
!4217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 640, elements: !524)
!4218 = !DILocation(line: 0, scope: !4199)
!4219 = !DILocation(line: 204, column: 3, scope: !4199)
!4220 = !DILocation(line: 204, column: 15, scope: !4199)
!4221 = !DILocation(line: 0, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !705, line: 206, column: 3)
!4223 = distinct !DILexicalBlock(scope: !4199, file: !705, line: 206, column: 3)
!4224 = !DILocation(line: 208, column: 35, scope: !4222)
!4225 = !DILocation(line: 208, column: 14, scope: !4222)
!4226 = !DILocation(line: 208, column: 33, scope: !4222)
!4227 = !DILocation(line: 208, column: 67, scope: !4222)
!4228 = !DILocation(line: 206, column: 3, scope: !4223)
!4229 = !DILocation(line: 0, scope: !4223)
!4230 = !DILocation(line: 211, column: 3, scope: !4199)
!4231 = !DILocation(line: 213, column: 1, scope: !4199)
!4232 = distinct !DISubprogram(name: "version_etc", scope: !705, file: !705, line: 230, type: !4233, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !4135, !80, !80, !80, null}
!4235 = !{!4236, !4237, !4238, !4239, !4240}
!4236 = !DILocalVariable(name: "stream", arg: 1, scope: !4232, file: !705, line: 230, type: !4135)
!4237 = !DILocalVariable(name: "command_name", arg: 2, scope: !4232, file: !705, line: 231, type: !80)
!4238 = !DILocalVariable(name: "package", arg: 3, scope: !4232, file: !705, line: 231, type: !80)
!4239 = !DILocalVariable(name: "version", arg: 4, scope: !4232, file: !705, line: 232, type: !80)
!4240 = !DILocalVariable(name: "authors", scope: !4232, file: !705, line: 234, type: !4241)
!4241 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !85, line: 52, baseType: !4242)
!4242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4243, line: 32, baseType: !4244)
!4243 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!4244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !705, line: 234, baseType: !4245)
!4245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4203, size: 192, elements: !120)
!4246 = !DILocation(line: 0, scope: !4232)
!4247 = !DILocation(line: 234, column: 3, scope: !4232)
!4248 = !DILocation(line: 234, column: 11, scope: !4232)
!4249 = !DILocation(line: 236, column: 3, scope: !4232)
!4250 = !DILocation(line: 237, column: 3, scope: !4232)
!4251 = !DILocation(line: 238, column: 3, scope: !4232)
!4252 = !DILocation(line: 239, column: 1, scope: !4232)
!4253 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !705, file: !705, line: 242, type: !165, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !83)
!4254 = !DILocation(line: 244, column: 3, scope: !4253)
!4255 = !DILocation(line: 249, column: 3, scope: !4253)
!4256 = !DILocation(line: 255, column: 3, scope: !4253)
!4257 = !DILocation(line: 260, column: 3, scope: !4253)
!4258 = !DILocation(line: 262, column: 1, scope: !4253)
!4259 = distinct !DISubprogram(name: "xnmalloc", scope: !458, file: !458, line: 99, type: !4260, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4262)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!135, !137, !137}
!4262 = !{!4263, !4264}
!4263 = !DILocalVariable(name: "n", arg: 1, scope: !4259, file: !458, line: 99, type: !137)
!4264 = !DILocalVariable(name: "s", arg: 2, scope: !4259, file: !458, line: 99, type: !137)
!4265 = !DILocation(line: 0, scope: !4259)
!4266 = !DILocation(line: 101, column: 7, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4259, file: !458, line: 101, column: 7)
!4268 = !DILocation(line: 101, column: 7, scope: !4259)
!4269 = !DILocation(line: 102, column: 5, scope: !4267)
!4270 = !DILocation(line: 103, column: 21, scope: !4259)
!4271 = !DILocalVariable(name: "n", arg: 1, scope: !4272, file: !747, line: 39, type: !137)
!4272 = distinct !DISubprogram(name: "xmalloc", scope: !747, file: !747, line: 39, type: !4273, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4275)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!135, !137}
!4275 = !{!4271, !4276}
!4276 = !DILocalVariable(name: "p", scope: !4272, file: !747, line: 41, type: !135)
!4277 = !DILocation(line: 0, scope: !4272, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 103, column: 10, scope: !4259)
!4279 = !DILocation(line: 41, column: 13, scope: !4272, inlinedAt: !4278)
!4280 = !DILocation(line: 42, column: 8, scope: !4281, inlinedAt: !4278)
!4281 = distinct !DILexicalBlock(scope: !4272, file: !747, line: 42, column: 7)
!4282 = !DILocation(line: 42, column: 15, scope: !4281, inlinedAt: !4278)
!4283 = !DILocation(line: 42, column: 10, scope: !4281, inlinedAt: !4278)
!4284 = !DILocation(line: 43, column: 5, scope: !4281, inlinedAt: !4278)
!4285 = !DILocation(line: 103, column: 3, scope: !4259)
!4286 = !DILocation(line: 0, scope: !4272)
!4287 = !DILocation(line: 41, column: 13, scope: !4272)
!4288 = !DILocation(line: 42, column: 8, scope: !4281)
!4289 = !DILocation(line: 42, column: 15, scope: !4281)
!4290 = !DILocation(line: 42, column: 10, scope: !4281)
!4291 = !DILocation(line: 43, column: 5, scope: !4281)
!4292 = !DILocation(line: 44, column: 3, scope: !4272)
!4293 = distinct !DISubprogram(name: "xnrealloc", scope: !458, file: !458, line: 112, type: !4294, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4296)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!135, !135, !137, !137}
!4296 = !{!4297, !4298, !4299}
!4297 = !DILocalVariable(name: "p", arg: 1, scope: !4293, file: !458, line: 112, type: !135)
!4298 = !DILocalVariable(name: "n", arg: 2, scope: !4293, file: !458, line: 112, type: !137)
!4299 = !DILocalVariable(name: "s", arg: 3, scope: !4293, file: !458, line: 112, type: !137)
!4300 = !DILocation(line: 0, scope: !4293)
!4301 = !DILocation(line: 114, column: 7, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4293, file: !458, line: 114, column: 7)
!4303 = !DILocation(line: 114, column: 7, scope: !4293)
!4304 = !DILocation(line: 115, column: 5, scope: !4302)
!4305 = !DILocation(line: 116, column: 25, scope: !4293)
!4306 = !DILocalVariable(name: "p", arg: 1, scope: !4307, file: !747, line: 51, type: !135)
!4307 = distinct !DISubprogram(name: "xrealloc", scope: !747, file: !747, line: 51, type: !4308, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4310)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!135, !135, !137}
!4310 = !{!4306, !4311}
!4311 = !DILocalVariable(name: "n", arg: 2, scope: !4307, file: !747, line: 51, type: !137)
!4312 = !DILocation(line: 0, scope: !4307, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 116, column: 10, scope: !4293)
!4314 = !DILocation(line: 53, column: 8, scope: !4315, inlinedAt: !4313)
!4315 = distinct !DILexicalBlock(scope: !4307, file: !747, line: 53, column: 7)
!4316 = !DILocation(line: 53, column: 13, scope: !4315, inlinedAt: !4313)
!4317 = !DILocation(line: 53, column: 10, scope: !4315, inlinedAt: !4313)
!4318 = !DILocation(line: 57, column: 7, scope: !4319, inlinedAt: !4313)
!4319 = distinct !DILexicalBlock(scope: !4315, file: !747, line: 54, column: 5)
!4320 = !DILocation(line: 58, column: 7, scope: !4319, inlinedAt: !4313)
!4321 = !DILocation(line: 61, column: 7, scope: !4307, inlinedAt: !4313)
!4322 = !DILocation(line: 62, column: 8, scope: !4323, inlinedAt: !4313)
!4323 = distinct !DILexicalBlock(scope: !4307, file: !747, line: 62, column: 7)
!4324 = !DILocation(line: 62, column: 13, scope: !4323, inlinedAt: !4313)
!4325 = !DILocation(line: 62, column: 10, scope: !4323, inlinedAt: !4313)
!4326 = !DILocation(line: 63, column: 5, scope: !4323, inlinedAt: !4313)
!4327 = !DILocation(line: 116, column: 3, scope: !4293)
!4328 = !DILocation(line: 0, scope: !4307)
!4329 = !DILocation(line: 53, column: 8, scope: !4315)
!4330 = !DILocation(line: 53, column: 13, scope: !4315)
!4331 = !DILocation(line: 53, column: 10, scope: !4315)
!4332 = !DILocation(line: 57, column: 7, scope: !4319)
!4333 = !DILocation(line: 58, column: 7, scope: !4319)
!4334 = !DILocation(line: 61, column: 7, scope: !4307)
!4335 = !DILocation(line: 62, column: 8, scope: !4323)
!4336 = !DILocation(line: 62, column: 13, scope: !4323)
!4337 = !DILocation(line: 62, column: 10, scope: !4323)
!4338 = !DILocation(line: 63, column: 5, scope: !4323)
!4339 = !DILocation(line: 65, column: 1, scope: !4307)
!4340 = !DILocation(line: 0, scope: !750)
!4341 = !DILocation(line: 176, column: 14, scope: !750)
!4342 = !DILocation(line: 178, column: 9, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !750, file: !458, line: 178, column: 7)
!4344 = !DILocation(line: 178, column: 7, scope: !750)
!4345 = !DILocation(line: 180, column: 13, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !458, line: 180, column: 11)
!4347 = distinct !DILexicalBlock(scope: !4343, file: !458, line: 179, column: 5)
!4348 = !DILocation(line: 180, column: 11, scope: !4347)
!4349 = !DILocation(line: 188, column: 30, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4346, file: !458, line: 181, column: 9)
!4351 = !DILocation(line: 189, column: 16, scope: !4350)
!4352 = !DILocation(line: 189, column: 13, scope: !4350)
!4353 = !DILocation(line: 190, column: 9, scope: !4350)
!4354 = !DILocation(line: 191, column: 11, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4347, file: !458, line: 191, column: 11)
!4356 = !DILocation(line: 191, column: 11, scope: !4347)
!4357 = !DILocation(line: 206, column: 7, scope: !750)
!4358 = !DILocation(line: 207, column: 25, scope: !750)
!4359 = !DILocation(line: 0, scope: !4307, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 207, column: 10, scope: !750)
!4361 = !DILocation(line: 53, column: 10, scope: !4315, inlinedAt: !4360)
!4362 = !DILocation(line: 192, column: 9, scope: !4355)
!4363 = !DILocation(line: 200, column: 69, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !458, line: 200, column: 11)
!4365 = distinct !DILexicalBlock(scope: !4343, file: !458, line: 195, column: 5)
!4366 = !DILocation(line: 201, column: 11, scope: !4364)
!4367 = !DILocation(line: 200, column: 11, scope: !4365)
!4368 = !DILocation(line: 202, column: 9, scope: !4364)
!4369 = !DILocation(line: 203, column: 14, scope: !4365)
!4370 = !DILocation(line: 203, column: 18, scope: !4365)
!4371 = !DILocation(line: 203, column: 9, scope: !4365)
!4372 = !DILocation(line: 53, column: 8, scope: !4315, inlinedAt: !4360)
!4373 = !DILocation(line: 57, column: 7, scope: !4319, inlinedAt: !4360)
!4374 = !DILocation(line: 58, column: 7, scope: !4319, inlinedAt: !4360)
!4375 = !DILocation(line: 61, column: 7, scope: !4307, inlinedAt: !4360)
!4376 = !DILocation(line: 62, column: 8, scope: !4323, inlinedAt: !4360)
!4377 = !DILocation(line: 62, column: 13, scope: !4323, inlinedAt: !4360)
!4378 = !DILocation(line: 62, column: 10, scope: !4323, inlinedAt: !4360)
!4379 = !DILocation(line: 63, column: 5, scope: !4323, inlinedAt: !4360)
!4380 = !DILocation(line: 207, column: 3, scope: !750)
!4381 = distinct !DISubprogram(name: "xcharalloc", scope: !458, file: !458, line: 216, type: !3553, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4382)
!4382 = !{!4383}
!4383 = !DILocalVariable(name: "n", arg: 1, scope: !4381, file: !458, line: 216, type: !137)
!4384 = !DILocation(line: 0, scope: !4381)
!4385 = !DILocation(line: 0, scope: !4272, inlinedAt: !4386)
!4386 = distinct !DILocation(line: 218, column: 10, scope: !4381)
!4387 = !DILocation(line: 41, column: 13, scope: !4272, inlinedAt: !4386)
!4388 = !DILocation(line: 42, column: 8, scope: !4281, inlinedAt: !4386)
!4389 = !DILocation(line: 42, column: 15, scope: !4281, inlinedAt: !4386)
!4390 = !DILocation(line: 42, column: 10, scope: !4281, inlinedAt: !4386)
!4391 = !DILocation(line: 43, column: 5, scope: !4281, inlinedAt: !4386)
!4392 = !DILocation(line: 218, column: 3, scope: !4381)
!4393 = distinct !DISubprogram(name: "x2realloc", scope: !747, file: !747, line: 74, type: !4394, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4396)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!135, !135, !195}
!4396 = !{!4397, !4398}
!4397 = !DILocalVariable(name: "p", arg: 1, scope: !4393, file: !747, line: 74, type: !135)
!4398 = !DILocalVariable(name: "pn", arg: 2, scope: !4393, file: !747, line: 74, type: !195)
!4399 = !DILocation(line: 0, scope: !4393)
!4400 = !DILocation(line: 0, scope: !750, inlinedAt: !4401)
!4401 = distinct !DILocation(line: 76, column: 10, scope: !4393)
!4402 = !DILocation(line: 176, column: 14, scope: !750, inlinedAt: !4401)
!4403 = !DILocation(line: 178, column: 9, scope: !4343, inlinedAt: !4401)
!4404 = !DILocation(line: 178, column: 7, scope: !750, inlinedAt: !4401)
!4405 = !DILocation(line: 180, column: 13, scope: !4346, inlinedAt: !4401)
!4406 = !DILocation(line: 180, column: 11, scope: !4347, inlinedAt: !4401)
!4407 = !DILocation(line: 191, column: 11, scope: !4355, inlinedAt: !4401)
!4408 = !DILocation(line: 191, column: 11, scope: !4347, inlinedAt: !4401)
!4409 = !DILocation(line: 206, column: 7, scope: !750, inlinedAt: !4401)
!4410 = !DILocation(line: 0, scope: !4307, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 207, column: 10, scope: !750, inlinedAt: !4401)
!4412 = !DILocation(line: 53, column: 10, scope: !4315, inlinedAt: !4411)
!4413 = !DILocation(line: 192, column: 9, scope: !4355, inlinedAt: !4401)
!4414 = !DILocation(line: 201, column: 11, scope: !4364, inlinedAt: !4401)
!4415 = !DILocation(line: 200, column: 11, scope: !4365, inlinedAt: !4401)
!4416 = !DILocation(line: 202, column: 9, scope: !4364, inlinedAt: !4401)
!4417 = !DILocation(line: 203, column: 14, scope: !4365, inlinedAt: !4401)
!4418 = !DILocation(line: 203, column: 18, scope: !4365, inlinedAt: !4401)
!4419 = !DILocation(line: 203, column: 9, scope: !4365, inlinedAt: !4401)
!4420 = !DILocation(line: 53, column: 8, scope: !4315, inlinedAt: !4411)
!4421 = !DILocation(line: 57, column: 7, scope: !4319, inlinedAt: !4411)
!4422 = !DILocation(line: 58, column: 7, scope: !4319, inlinedAt: !4411)
!4423 = !DILocation(line: 61, column: 7, scope: !4307, inlinedAt: !4411)
!4424 = !DILocation(line: 62, column: 8, scope: !4323, inlinedAt: !4411)
!4425 = !DILocation(line: 62, column: 13, scope: !4323, inlinedAt: !4411)
!4426 = !DILocation(line: 62, column: 10, scope: !4323, inlinedAt: !4411)
!4427 = !DILocation(line: 63, column: 5, scope: !4323, inlinedAt: !4411)
!4428 = !DILocation(line: 76, column: 3, scope: !4393)
!4429 = distinct !DISubprogram(name: "xzalloc", scope: !747, file: !747, line: 84, type: !4273, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4430)
!4430 = !{!4431}
!4431 = !DILocalVariable(name: "n", arg: 1, scope: !4429, file: !747, line: 84, type: !137)
!4432 = !DILocation(line: 0, scope: !4429)
!4433 = !DILocalVariable(name: "n", arg: 1, scope: !4434, file: !747, line: 93, type: !137)
!4434 = distinct !DISubprogram(name: "xcalloc", scope: !747, file: !747, line: 93, type: !4260, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4435)
!4435 = !{!4433, !4436, !4437}
!4436 = !DILocalVariable(name: "s", arg: 2, scope: !4434, file: !747, line: 93, type: !137)
!4437 = !DILocalVariable(name: "p", scope: !4434, file: !747, line: 95, type: !135)
!4438 = !DILocation(line: 0, scope: !4434, inlinedAt: !4439)
!4439 = distinct !DILocation(line: 86, column: 10, scope: !4429)
!4440 = !DILocation(line: 100, column: 7, scope: !4441, inlinedAt: !4439)
!4441 = distinct !DILexicalBlock(scope: !4434, file: !747, line: 100, column: 7)
!4442 = !DILocation(line: 101, column: 7, scope: !4441, inlinedAt: !4439)
!4443 = !DILocation(line: 101, column: 18, scope: !4441, inlinedAt: !4439)
!4444 = !DILocation(line: 101, column: 16, scope: !4441, inlinedAt: !4439)
!4445 = !DILocation(line: 100, column: 7, scope: !4434, inlinedAt: !4439)
!4446 = !DILocation(line: 102, column: 5, scope: !4441, inlinedAt: !4439)
!4447 = !DILocation(line: 86, column: 3, scope: !4429)
!4448 = !DILocation(line: 0, scope: !4434)
!4449 = !DILocation(line: 100, column: 7, scope: !4441)
!4450 = !DILocation(line: 101, column: 7, scope: !4441)
!4451 = !DILocation(line: 101, column: 18, scope: !4441)
!4452 = !DILocation(line: 101, column: 16, scope: !4441)
!4453 = !DILocation(line: 100, column: 7, scope: !4434)
!4454 = !DILocation(line: 102, column: 5, scope: !4441)
!4455 = !DILocation(line: 103, column: 3, scope: !4434)
!4456 = distinct !DISubprogram(name: "xmemdup", scope: !747, file: !747, line: 111, type: !4457, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4459)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!135, !196, !137}
!4459 = !{!4460, !4461}
!4460 = !DILocalVariable(name: "p", arg: 1, scope: !4456, file: !747, line: 111, type: !196)
!4461 = !DILocalVariable(name: "s", arg: 2, scope: !4456, file: !747, line: 111, type: !137)
!4462 = !DILocation(line: 0, scope: !4456)
!4463 = !DILocation(line: 0, scope: !4272, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 113, column: 18, scope: !4456)
!4465 = !DILocation(line: 41, column: 13, scope: !4272, inlinedAt: !4464)
!4466 = !DILocation(line: 42, column: 8, scope: !4281, inlinedAt: !4464)
!4467 = !DILocation(line: 42, column: 15, scope: !4281, inlinedAt: !4464)
!4468 = !DILocation(line: 42, column: 10, scope: !4281, inlinedAt: !4464)
!4469 = !DILocation(line: 43, column: 5, scope: !4281, inlinedAt: !4464)
!4470 = !DILocalVariable(name: "__dest", arg: 1, scope: !4471, file: !2408, line: 31, type: !4474)
!4471 = distinct !DISubprogram(name: "memcpy", scope: !2408, file: !2408, line: 31, type: !4472, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4476)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!135, !4474, !4475, !137}
!4474 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !135)
!4475 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !196)
!4476 = !{!4470, !4477, !4478}
!4477 = !DILocalVariable(name: "__src", arg: 2, scope: !4471, file: !2408, line: 31, type: !4475)
!4478 = !DILocalVariable(name: "__len", arg: 3, scope: !4471, file: !2408, line: 31, type: !137)
!4479 = !DILocation(line: 0, scope: !4471, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 113, column: 10, scope: !4456)
!4481 = !DILocation(line: 34, column: 10, scope: !4471, inlinedAt: !4480)
!4482 = !DILocation(line: 113, column: 3, scope: !4456)
!4483 = distinct !DISubprogram(name: "xstrdup", scope: !747, file: !747, line: 119, type: !147, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4484)
!4484 = !{!4485}
!4485 = !DILocalVariable(name: "string", arg: 1, scope: !4483, file: !747, line: 119, type: !80)
!4486 = !DILocation(line: 0, scope: !4483)
!4487 = !DILocation(line: 121, column: 27, scope: !4483)
!4488 = !DILocation(line: 121, column: 43, scope: !4483)
!4489 = !DILocation(line: 0, scope: !4456, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 121, column: 10, scope: !4483)
!4491 = !DILocation(line: 0, scope: !4272, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 113, column: 18, scope: !4456, inlinedAt: !4490)
!4493 = !DILocation(line: 41, column: 13, scope: !4272, inlinedAt: !4492)
!4494 = !DILocation(line: 42, column: 8, scope: !4281, inlinedAt: !4492)
!4495 = !DILocation(line: 42, column: 15, scope: !4281, inlinedAt: !4492)
!4496 = !DILocation(line: 42, column: 10, scope: !4281, inlinedAt: !4492)
!4497 = !DILocation(line: 43, column: 5, scope: !4281, inlinedAt: !4492)
!4498 = !DILocation(line: 0, scope: !4471, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 113, column: 10, scope: !4456, inlinedAt: !4490)
!4500 = !DILocation(line: 34, column: 10, scope: !4471, inlinedAt: !4499)
!4501 = !DILocation(line: 121, column: 3, scope: !4483)
!4502 = distinct !DISubprogram(name: "xalloc_die", scope: !767, file: !767, line: 32, type: !165, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !83)
!4503 = !DILocation(line: 34, column: 10, scope: !4502)
!4504 = !DILocation(line: 34, column: 33, scope: !4502)
!4505 = !DILocation(line: 34, column: 3, scope: !4502)
!4506 = !DILocation(line: 40, column: 3, scope: !4502)
!4507 = distinct !DISubprogram(name: "xstrtoumax", scope: !4508, file: !4508, line: 76, type: !4509, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !4513)
!4508 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!4511, !80, !193, !82, !4512, !80}
!4511 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !21, line: 38, baseType: !20)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!4513 = !{!4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4526, !4527, !4530, !4531}
!4514 = !DILocalVariable(name: "s", arg: 1, scope: !4507, file: !4508, line: 76, type: !80)
!4515 = !DILocalVariable(name: "ptr", arg: 2, scope: !4507, file: !4508, line: 76, type: !193)
!4516 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4507, file: !4508, line: 76, type: !82)
!4517 = !DILocalVariable(name: "val", arg: 4, scope: !4507, file: !4508, line: 77, type: !4512)
!4518 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4507, file: !4508, line: 77, type: !80)
!4519 = !DILocalVariable(name: "t_ptr", scope: !4507, file: !4508, line: 79, type: !78)
!4520 = !DILocalVariable(name: "p", scope: !4507, file: !4508, line: 80, type: !193)
!4521 = !DILocalVariable(name: "tmp", scope: !4507, file: !4508, line: 81, type: !1468)
!4522 = !DILocalVariable(name: "err", scope: !4507, file: !4508, line: 82, type: !4511)
!4523 = !DILocalVariable(name: "q", scope: !4524, file: !4508, line: 92, type: !80)
!4524 = distinct !DILexicalBlock(scope: !4525, file: !4508, line: 91, column: 5)
!4525 = distinct !DILexicalBlock(scope: !4507, file: !4508, line: 90, column: 7)
!4526 = !DILocalVariable(name: "ch", scope: !4524, file: !4508, line: 93, type: !246)
!4527 = !DILocalVariable(name: "base", scope: !4528, file: !4508, line: 129, type: !82)
!4528 = distinct !DILexicalBlock(scope: !4529, file: !4508, line: 128, column: 5)
!4529 = distinct !DILexicalBlock(scope: !4507, file: !4508, line: 127, column: 7)
!4530 = !DILocalVariable(name: "suffixes", scope: !4528, file: !4508, line: 130, type: !82)
!4531 = !DILocalVariable(name: "overflow", scope: !4528, file: !4508, line: 131, type: !4511)
!4532 = !DILocation(line: 0, scope: !4507)
!4533 = !DILocation(line: 79, column: 3, scope: !4507)
!4534 = !DILocation(line: 84, column: 3, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !4508, line: 84, column: 3)
!4536 = distinct !DILexicalBlock(scope: !4507, file: !4508, line: 84, column: 3)
!4537 = !DILocation(line: 86, column: 8, scope: !4507)
!4538 = !DILocation(line: 88, column: 3, scope: !4507)
!4539 = !DILocation(line: 88, column: 9, scope: !4507)
!4540 = !DILocation(line: 0, scope: !4524)
!4541 = !DILocation(line: 94, column: 7, scope: !4524)
!4542 = !DILocation(line: 94, column: 14, scope: !4524)
!4543 = !DILocation(line: 95, column: 15, scope: !4524)
!4544 = distinct !{!4544, !4541, !4545}
!4545 = !DILocation(line: 95, column: 17, scope: !4524)
!4546 = !DILocation(line: 96, column: 14, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4524, file: !4508, line: 96, column: 11)
!4548 = !DILocalVariable(name: "nptr", arg: 1, scope: !4549, file: !4550, line: 336, type: !4553)
!4549 = distinct !DISubprogram(name: "strtoumax", scope: !4550, file: !4550, line: 336, type: !4551, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !4555)
!4550 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!1468, !4553, !4554, !82}
!4553 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!4554 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !193)
!4555 = !{!4548, !4556, !4557}
!4556 = !DILocalVariable(name: "endptr", arg: 2, scope: !4549, file: !4550, line: 336, type: !4554)
!4557 = !DILocalVariable(name: "base", arg: 3, scope: !4549, file: !4550, line: 336, type: !82)
!4558 = !DILocation(line: 0, scope: !4549, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 100, column: 9, scope: !4507)
!4560 = !DILocation(line: 339, column: 10, scope: !4549, inlinedAt: !4559)
!4561 = !DILocation(line: 102, column: 7, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4507, file: !4508, line: 102, column: 7)
!4563 = !DILocation(line: 102, column: 10, scope: !4562)
!4564 = !DILocation(line: 102, column: 7, scope: !4507)
!4565 = !DILocation(line: 106, column: 11, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4567, file: !4508, line: 106, column: 11)
!4567 = distinct !DILexicalBlock(scope: !4562, file: !4508, line: 103, column: 5)
!4568 = !DILocation(line: 106, column: 26, scope: !4566)
!4569 = !DILocation(line: 106, column: 29, scope: !4566)
!4570 = !DILocation(line: 106, column: 33, scope: !4566)
!4571 = !DILocation(line: 106, column: 36, scope: !4566)
!4572 = !DILocation(line: 106, column: 11, scope: !4567)
!4573 = !DILocation(line: 111, column: 12, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4562, file: !4508, line: 111, column: 12)
!4575 = !DILocation(line: 111, column: 12, scope: !4562)
!4576 = !DILocation(line: 116, column: 5, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4574, file: !4508, line: 112, column: 5)
!4578 = !DILocation(line: 121, column: 8, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4507, file: !4508, line: 121, column: 7)
!4580 = !DILocation(line: 121, column: 7, scope: !4507)
!4581 = !DILocation(line: 123, column: 12, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4579, file: !4508, line: 122, column: 5)
!4583 = !DILocation(line: 124, column: 7, scope: !4582)
!4584 = !DILocation(line: 127, column: 7, scope: !4529)
!4585 = !DILocation(line: 127, column: 11, scope: !4529)
!4586 = !DILocation(line: 127, column: 7, scope: !4507)
!4587 = !DILocation(line: 0, scope: !4528)
!4588 = !DILocation(line: 133, column: 12, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4528, file: !4508, line: 133, column: 11)
!4590 = !DILocation(line: 133, column: 11, scope: !4528)
!4591 = !DILocation(line: 135, column: 16, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4589, file: !4508, line: 134, column: 9)
!4593 = !DILocation(line: 136, column: 22, scope: !4592)
!4594 = !DILocation(line: 136, column: 11, scope: !4592)
!4595 = !DILocation(line: 139, column: 7, scope: !4528)
!4596 = !DILocation(line: 151, column: 15, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4598, file: !4508, line: 151, column: 15)
!4598 = distinct !DILexicalBlock(scope: !4528, file: !4508, line: 140, column: 9)
!4599 = !DILocation(line: 151, column: 15, scope: !4598)
!4600 = !DILocation(line: 152, column: 21, scope: !4597)
!4601 = !DILocation(line: 152, column: 13, scope: !4597)
!4602 = !DILocation(line: 155, column: 21, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4604, file: !4508, line: 155, column: 21)
!4604 = distinct !DILexicalBlock(scope: !4597, file: !4508, line: 153, column: 15)
!4605 = !DILocation(line: 155, column: 29, scope: !4603)
!4606 = !DILocation(line: 155, column: 21, scope: !4604)
!4607 = !DILocation(line: 163, column: 17, scope: !4604)
!4608 = !DILocation(line: 167, column: 7, scope: !4528)
!4609 = !DILocalVariable(name: "err", scope: !4610, file: !4508, line: 67, type: !4511)
!4610 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4508, file: !4508, line: 65, type: !4611, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !4613)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!4511, !4512, !82, !82}
!4613 = !{!4614, !4615, !4616, !4609}
!4614 = !DILocalVariable(name: "x", arg: 1, scope: !4610, file: !4508, line: 65, type: !4512)
!4615 = !DILocalVariable(name: "base", arg: 2, scope: !4610, file: !4508, line: 65, type: !82)
!4616 = !DILocalVariable(name: "power", arg: 3, scope: !4610, file: !4508, line: 65, type: !82)
!4617 = !DILocation(line: 0, scope: !4610, inlinedAt: !4618)
!4618 = distinct !DILocation(line: 221, column: 22, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4528, file: !4508, line: 168, column: 9)
!4620 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4621, file: !4508, line: 48, type: !82)
!4621 = distinct !DISubprogram(name: "bkm_scale", scope: !4508, file: !4508, line: 48, type: !4622, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !4624)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!4511, !4512, !82}
!4624 = !{!4625, !4620}
!4625 = !DILocalVariable(name: "x", arg: 1, scope: !4621, file: !4508, line: 48, type: !4512)
!4626 = !DILocation(line: 0, scope: !4621, inlinedAt: !4627)
!4627 = distinct !DILocation(line: 69, column: 12, scope: !4610, inlinedAt: !4618)
!4628 = !DILocation(line: 55, column: 39, scope: !4629, inlinedAt: !4627)
!4629 = distinct !DILexicalBlock(scope: !4621, file: !4508, line: 55, column: 7)
!4630 = !DILocation(line: 55, column: 7, scope: !4621, inlinedAt: !4627)
!4631 = !DILocation(line: 69, column: 9, scope: !4610, inlinedAt: !4618)
!4632 = !DILocation(line: 229, column: 11, scope: !4528)
!4633 = !DILocation(line: 0, scope: !4610, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 217, column: 22, scope: !4619)
!4635 = !DILocation(line: 0, scope: !4621, inlinedAt: !4636)
!4636 = distinct !DILocation(line: 69, column: 12, scope: !4610, inlinedAt: !4634)
!4637 = !DILocation(line: 55, column: 39, scope: !4629, inlinedAt: !4636)
!4638 = !DILocation(line: 55, column: 7, scope: !4621, inlinedAt: !4636)
!4639 = !DILocation(line: 69, column: 9, scope: !4610, inlinedAt: !4634)
!4640 = !DILocation(line: 0, scope: !4610, inlinedAt: !4641)
!4641 = distinct !DILocation(line: 204, column: 22, scope: !4619)
!4642 = !DILocation(line: 0, scope: !4621, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 69, column: 12, scope: !4610, inlinedAt: !4641)
!4644 = !DILocation(line: 55, column: 39, scope: !4629, inlinedAt: !4643)
!4645 = !DILocation(line: 55, column: 7, scope: !4621, inlinedAt: !4643)
!4646 = !DILocation(line: 69, column: 9, scope: !4610, inlinedAt: !4641)
!4647 = !DILocation(line: 0, scope: !4610, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 185, column: 22, scope: !4619)
!4649 = !DILocation(line: 0, scope: !4621, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 69, column: 12, scope: !4610, inlinedAt: !4648)
!4651 = !DILocation(line: 55, column: 39, scope: !4629, inlinedAt: !4650)
!4652 = !DILocation(line: 55, column: 7, scope: !4621, inlinedAt: !4650)
!4653 = !DILocation(line: 69, column: 9, scope: !4610, inlinedAt: !4648)
!4654 = !DILocation(line: 0, scope: !4621, inlinedAt: !4655)
!4655 = distinct !DILocation(line: 170, column: 22, scope: !4619)
!4656 = !DILocation(line: 55, column: 39, scope: !4629, inlinedAt: !4655)
!4657 = !DILocation(line: 55, column: 7, scope: !4621, inlinedAt: !4655)
!4658 = !DILocation(line: 171, column: 11, scope: !4619)
!4659 = !DILocation(line: 0, scope: !4621, inlinedAt: !4660)
!4660 = distinct !DILocation(line: 177, column: 22, scope: !4619)
!4661 = !DILocation(line: 55, column: 39, scope: !4629, inlinedAt: !4660)
!4662 = !DILocation(line: 55, column: 7, scope: !4621, inlinedAt: !4660)
!4663 = !DILocation(line: 178, column: 11, scope: !4619)
!4664 = !DILocation(line: 0, scope: !4610, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 190, column: 22, scope: !4619)
!4666 = !DILocation(line: 0, scope: !4621, inlinedAt: !4667)
!4667 = distinct !DILocation(line: 69, column: 12, scope: !4610, inlinedAt: !4665)
!4668 = !DILocation(line: 55, column: 39, scope: !4629, inlinedAt: !4667)
!4669 = !DILocation(line: 55, column: 7, scope: !4621, inlinedAt: !4667)
!4670 = !DILocation(line: 69, column: 9, scope: !4610, inlinedAt: !4665)
!4671 = !DILocation(line: 0, scope: !4610, inlinedAt: !4672)
!4672 = distinct !DILocation(line: 195, column: 22, scope: !4619)
!4673 = !DILocation(line: 0, scope: !4621, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 69, column: 12, scope: !4610, inlinedAt: !4672)
!4675 = !DILocation(line: 55, column: 39, scope: !4629, inlinedAt: !4674)
!4676 = !DILocation(line: 55, column: 7, scope: !4621, inlinedAt: !4674)
!4677 = !DILocation(line: 0, scope: !4610, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 200, column: 22, scope: !4619)
!4679 = !DILocation(line: 0, scope: !4621, inlinedAt: !4680)
!4680 = distinct !DILocation(line: 69, column: 12, scope: !4610, inlinedAt: !4678)
!4681 = !DILocation(line: 55, column: 39, scope: !4629, inlinedAt: !4680)
!4682 = !DILocation(line: 55, column: 7, scope: !4621, inlinedAt: !4680)
!4683 = !DILocation(line: 69, column: 9, scope: !4610, inlinedAt: !4678)
!4684 = !DILocation(line: 0, scope: !4610, inlinedAt: !4685)
!4685 = distinct !DILocation(line: 209, column: 22, scope: !4619)
!4686 = !DILocation(line: 0, scope: !4621, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 69, column: 12, scope: !4610, inlinedAt: !4685)
!4688 = !DILocation(line: 55, column: 39, scope: !4629, inlinedAt: !4687)
!4689 = !DILocation(line: 55, column: 7, scope: !4621, inlinedAt: !4687)
!4690 = !DILocation(line: 69, column: 9, scope: !4610, inlinedAt: !4685)
!4691 = !DILocation(line: 0, scope: !4621, inlinedAt: !4692)
!4692 = distinct !DILocation(line: 213, column: 22, scope: !4619)
!4693 = !DILocation(line: 55, column: 39, scope: !4629, inlinedAt: !4692)
!4694 = !DILocation(line: 55, column: 7, scope: !4621, inlinedAt: !4692)
!4695 = !DILocation(line: 214, column: 11, scope: !4619)
!4696 = !DILocation(line: 225, column: 16, scope: !4619)
!4697 = !DILocation(line: 226, column: 22, scope: !4619)
!4698 = !DILocation(line: 226, column: 11, scope: !4619)
!4699 = !DILocation(line: 0, scope: !4619)
!4700 = !DILocation(line: 230, column: 10, scope: !4528)
!4701 = !DILocation(line: 231, column: 11, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4528, file: !4508, line: 231, column: 11)
!4703 = !DILocation(line: 232, column: 13, scope: !4702)
!4704 = !DILocation(line: 231, column: 11, scope: !4528)
!4705 = !DILocation(line: 107, column: 13, scope: !4566)
!4706 = !DILocation(line: 82, column: 16, scope: !4507)
!4707 = !DILocation(line: 235, column: 8, scope: !4507)
!4708 = !DILocation(line: 236, column: 3, scope: !4507)
!4709 = !DILocation(line: 237, column: 1, scope: !4507)
!4710 = distinct !DISubprogram(name: "rpl_calloc", scope: !774, file: !774, line: 42, type: !4260, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4711)
!4711 = !{!4712, !4713, !4714, !4715}
!4712 = !DILocalVariable(name: "n", arg: 1, scope: !4710, file: !774, line: 42, type: !137)
!4713 = !DILocalVariable(name: "s", arg: 2, scope: !4710, file: !774, line: 42, type: !137)
!4714 = !DILocalVariable(name: "result", scope: !4710, file: !774, line: 44, type: !135)
!4715 = !DILocalVariable(name: "bytes", scope: !4716, file: !774, line: 56, type: !137)
!4716 = distinct !DILexicalBlock(scope: !4717, file: !774, line: 53, column: 5)
!4717 = distinct !DILexicalBlock(scope: !4710, file: !774, line: 47, column: 7)
!4718 = !DILocation(line: 0, scope: !4710)
!4719 = !DILocation(line: 47, column: 9, scope: !4717)
!4720 = !DILocation(line: 47, column: 19, scope: !4717)
!4721 = !DILocation(line: 47, column: 14, scope: !4717)
!4722 = !DILocation(line: 0, scope: !4716)
!4723 = !DILocation(line: 57, column: 21, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4716, file: !774, line: 57, column: 11)
!4725 = !DILocation(line: 57, column: 11, scope: !4716)
!4726 = !DILocation(line: 59, column: 11, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4724, file: !774, line: 58, column: 9)
!4728 = !DILocation(line: 59, column: 17, scope: !4727)
!4729 = !DILocation(line: 65, column: 12, scope: !4710)
!4730 = !DILocation(line: 72, column: 3, scope: !4710)
!4731 = !DILocation(line: 73, column: 1, scope: !4710)
!4732 = distinct !DISubprogram(name: "rpl_fclose", scope: !777, file: !777, line: 58, type: !4733, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4737)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!82, !4735}
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1498, line: 7, baseType: !783)
!4737 = !{!4738, !4739, !4740, !4741}
!4738 = !DILocalVariable(name: "fp", arg: 1, scope: !4732, file: !777, line: 58, type: !4735)
!4739 = !DILocalVariable(name: "saved_errno", scope: !4732, file: !777, line: 60, type: !82)
!4740 = !DILocalVariable(name: "fd", scope: !4732, file: !777, line: 61, type: !82)
!4741 = !DILocalVariable(name: "result", scope: !4732, file: !777, line: 62, type: !82)
!4742 = !DILocation(line: 0, scope: !4732)
!4743 = !DILocation(line: 65, column: 8, scope: !4732)
!4744 = !DILocation(line: 66, column: 10, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4732, file: !777, line: 66, column: 7)
!4746 = !DILocation(line: 66, column: 7, scope: !4732)
!4747 = !DILocation(line: 67, column: 12, scope: !4745)
!4748 = !DILocation(line: 67, column: 5, scope: !4745)
!4749 = !DILocation(line: 72, column: 9, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4732, file: !777, line: 72, column: 7)
!4751 = !DILocation(line: 72, column: 23, scope: !4750)
!4752 = !DILocation(line: 72, column: 33, scope: !4750)
!4753 = !DILocation(line: 72, column: 26, scope: !4750)
!4754 = !DILocation(line: 72, column: 59, scope: !4750)
!4755 = !DILocation(line: 73, column: 7, scope: !4750)
!4756 = !DILocation(line: 73, column: 10, scope: !4750)
!4757 = !DILocation(line: 72, column: 7, scope: !4732)
!4758 = !DILocation(line: 100, column: 12, scope: !4732)
!4759 = !DILocation(line: 105, column: 7, scope: !4732)
!4760 = !DILocation(line: 74, column: 19, scope: !4750)
!4761 = !DILocation(line: 105, column: 19, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4732, file: !777, line: 105, column: 7)
!4763 = !DILocation(line: 107, column: 13, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4762, file: !777, line: 106, column: 5)
!4765 = !DILocation(line: 109, column: 5, scope: !4764)
!4766 = !DILocation(line: 112, column: 1, scope: !4732)
!4767 = distinct !DISubprogram(name: "rpl_fflush", scope: !820, file: !820, line: 129, type: !4768, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4772)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!82, !4770}
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1498, line: 7, baseType: !826)
!4772 = !{!4773}
!4773 = !DILocalVariable(name: "stream", arg: 1, scope: !4767, file: !820, line: 129, type: !4770)
!4774 = !DILocation(line: 0, scope: !4767)
!4775 = !DILocation(line: 150, column: 14, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4767, file: !820, line: 150, column: 7)
!4777 = !DILocation(line: 150, column: 22, scope: !4776)
!4778 = !DILocation(line: 150, column: 27, scope: !4776)
!4779 = !DILocation(line: 150, column: 7, scope: !4767)
!4780 = !DILocation(line: 151, column: 12, scope: !4776)
!4781 = !DILocation(line: 151, column: 5, scope: !4776)
!4782 = !DILocalVariable(name: "fp", arg: 1, scope: !4783, file: !820, line: 41, type: !4770)
!4783 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !820, file: !820, line: 41, type: !4784, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4786)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{null, !4770}
!4786 = !{!4782}
!4787 = !DILocation(line: 0, scope: !4783, inlinedAt: !4788)
!4788 = distinct !DILocation(line: 156, column: 3, scope: !4767)
!4789 = !DILocation(line: 43, column: 11, scope: !4790, inlinedAt: !4788)
!4790 = distinct !DILexicalBlock(scope: !4783, file: !820, line: 43, column: 7)
!4791 = !DILocation(line: 43, column: 18, scope: !4790, inlinedAt: !4788)
!4792 = !DILocation(line: 43, column: 7, scope: !4783, inlinedAt: !4788)
!4793 = !DILocation(line: 45, column: 5, scope: !4790, inlinedAt: !4788)
!4794 = !DILocation(line: 158, column: 10, scope: !4767)
!4795 = !DILocation(line: 158, column: 3, scope: !4767)
!4796 = !DILocation(line: 235, column: 1, scope: !4767)
!4797 = distinct !DISubprogram(name: "rpl_fseeko", scope: !861, file: !861, line: 28, type: !4798, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !4802)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!82, !4800, !2270, !82}
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1498, line: 7, baseType: !867)
!4802 = !{!4803, !4804, !4805, !4806}
!4803 = !DILocalVariable(name: "fp", arg: 1, scope: !4797, file: !861, line: 28, type: !4800)
!4804 = !DILocalVariable(name: "offset", arg: 2, scope: !4797, file: !861, line: 28, type: !2270)
!4805 = !DILocalVariable(name: "whence", arg: 3, scope: !4797, file: !861, line: 28, type: !82)
!4806 = !DILocalVariable(name: "pos", scope: !4807, file: !861, line: 117, type: !2270)
!4807 = distinct !DILexicalBlock(scope: !4808, file: !861, line: 113, column: 5)
!4808 = distinct !DILexicalBlock(scope: !4797, file: !861, line: 52, column: 7)
!4809 = !DILocation(line: 0, scope: !4797)
!4810 = !DILocation(line: 52, column: 11, scope: !4808)
!4811 = !DILocation(line: 52, column: 31, scope: !4808)
!4812 = !DILocation(line: 52, column: 24, scope: !4808)
!4813 = !DILocation(line: 53, column: 7, scope: !4808)
!4814 = !DILocation(line: 53, column: 14, scope: !4808)
!4815 = !DILocation(line: 53, column: 35, scope: !4808)
!4816 = !{!1763, !1397, i64 32}
!4817 = !DILocation(line: 53, column: 28, scope: !4808)
!4818 = !DILocation(line: 54, column: 7, scope: !4808)
!4819 = !DILocation(line: 54, column: 14, scope: !4808)
!4820 = !{!1763, !1397, i64 72}
!4821 = !DILocation(line: 54, column: 28, scope: !4808)
!4822 = !DILocation(line: 52, column: 7, scope: !4797)
!4823 = !DILocation(line: 117, column: 26, scope: !4807)
!4824 = !DILocation(line: 117, column: 19, scope: !4807)
!4825 = !DILocation(line: 0, scope: !4807)
!4826 = !DILocation(line: 118, column: 15, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4807, file: !861, line: 118, column: 11)
!4828 = !DILocation(line: 118, column: 11, scope: !4807)
!4829 = !DILocation(line: 129, column: 11, scope: !4807)
!4830 = !DILocation(line: 129, column: 18, scope: !4807)
!4831 = !DILocation(line: 130, column: 11, scope: !4807)
!4832 = !DILocation(line: 130, column: 19, scope: !4807)
!4833 = !{!1763, !1536, i64 144}
!4834 = !DILocation(line: 161, column: 7, scope: !4807)
!4835 = !DILocation(line: 163, column: 10, scope: !4797)
!4836 = !DILocation(line: 163, column: 3, scope: !4797)
!4837 = !DILocation(line: 164, column: 1, scope: !4797)
!4838 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !902, file: !902, line: 86, type: !4839, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !4845)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!137, !4841, !80, !137, !4842}
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2833, line: 6, baseType: !4844)
!4844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !485, line: 21, baseType: !908)
!4845 = !{!4846, !4847, !4848, !4849, !4850, !4851, !4852}
!4846 = !DILocalVariable(name: "pwc", arg: 1, scope: !4838, file: !902, line: 86, type: !4841)
!4847 = !DILocalVariable(name: "s", arg: 2, scope: !4838, file: !902, line: 86, type: !80)
!4848 = !DILocalVariable(name: "n", arg: 3, scope: !4838, file: !902, line: 86, type: !137)
!4849 = !DILocalVariable(name: "ps", arg: 4, scope: !4838, file: !902, line: 86, type: !4842)
!4850 = !DILocalVariable(name: "ret", scope: !4838, file: !902, line: 88, type: !137)
!4851 = !DILocalVariable(name: "wc", scope: !4838, file: !902, line: 89, type: !2837)
!4852 = !DILocalVariable(name: "uc", scope: !4853, file: !902, line: 156, type: !246)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !902, line: 155, column: 5)
!4854 = distinct !DILexicalBlock(scope: !4838, file: !902, line: 154, column: 7)
!4855 = !DILocation(line: 0, scope: !4838)
!4856 = !DILocation(line: 89, column: 3, scope: !4838)
!4857 = !DILocation(line: 105, column: 9, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4838, file: !902, line: 105, column: 7)
!4859 = !DILocation(line: 105, column: 7, scope: !4838)
!4860 = !DILocation(line: 145, column: 9, scope: !4838)
!4861 = !DILocation(line: 154, column: 19, scope: !4854)
!4862 = !DILocation(line: 154, column: 31, scope: !4854)
!4863 = !DILocation(line: 154, column: 26, scope: !4854)
!4864 = !DILocation(line: 154, column: 41, scope: !4854)
!4865 = !DILocation(line: 154, column: 7, scope: !4838)
!4866 = !DILocation(line: 156, column: 26, scope: !4853)
!4867 = !DILocation(line: 0, scope: !4853)
!4868 = !DILocation(line: 157, column: 14, scope: !4853)
!4869 = !DILocation(line: 157, column: 12, scope: !4853)
!4870 = !DILocation(line: 163, column: 1, scope: !4838)
!4871 = distinct !DISubprogram(name: "close_stream", scope: !921, file: !921, line: 56, type: !4872, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4876)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!82, !4874}
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1498, line: 7, baseType: !927)
!4876 = !{!4877, !4878, !4880, !4881}
!4877 = !DILocalVariable(name: "stream", arg: 1, scope: !4871, file: !921, line: 56, type: !4874)
!4878 = !DILocalVariable(name: "some_pending", scope: !4871, file: !921, line: 58, type: !4879)
!4879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!4880 = !DILocalVariable(name: "prev_fail", scope: !4871, file: !921, line: 59, type: !4879)
!4881 = !DILocalVariable(name: "fclose_fail", scope: !4871, file: !921, line: 60, type: !4879)
!4882 = !DILocation(line: 0, scope: !4871)
!4883 = !DILocation(line: 58, column: 30, scope: !4871)
!4884 = !DILocalVariable(name: "__stream", arg: 1, scope: !4885, file: !1755, line: 135, type: !4874)
!4885 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1755, file: !1755, line: 135, type: !4872, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4886)
!4886 = !{!4884}
!4887 = !DILocation(line: 0, scope: !4885, inlinedAt: !4888)
!4888 = distinct !DILocation(line: 59, column: 27, scope: !4871)
!4889 = !DILocation(line: 137, column: 10, scope: !4885, inlinedAt: !4888)
!4890 = !DILocation(line: 59, column: 43, scope: !4871)
!4891 = !DILocation(line: 60, column: 29, scope: !4871)
!4892 = !DILocation(line: 60, column: 45, scope: !4871)
!4893 = !DILocation(line: 70, column: 17, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4871, file: !921, line: 70, column: 7)
!4895 = !DILocation(line: 58, column: 50, scope: !4871)
!4896 = !DILocation(line: 70, column: 33, scope: !4894)
!4897 = !DILocation(line: 70, column: 53, scope: !4894)
!4898 = !DILocation(line: 70, column: 59, scope: !4894)
!4899 = !DILocation(line: 70, column: 7, scope: !4871)
!4900 = !DILocation(line: 72, column: 11, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4894, file: !921, line: 71, column: 5)
!4902 = !DILocation(line: 73, column: 9, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4901, file: !921, line: 72, column: 11)
!4904 = !DILocation(line: 73, column: 15, scope: !4903)
!4905 = !DILocation(line: 78, column: 1, scope: !4871)
!4906 = distinct !DISubprogram(name: "hard_locale", scope: !959, file: !959, line: 27, type: !918, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !958, retainedNodes: !4907)
!4907 = !{!4908, !4909}
!4908 = !DILocalVariable(name: "category", arg: 1, scope: !4906, file: !959, line: 27, type: !82)
!4909 = !DILocalVariable(name: "locale", scope: !4906, file: !959, line: 29, type: !4910)
!4910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 2056, elements: !4911)
!4911 = !{!4912}
!4912 = !DISubrange(count: 257)
!4913 = !DILocation(line: 0, scope: !4906)
!4914 = !DILocation(line: 29, column: 3, scope: !4906)
!4915 = !DILocation(line: 29, column: 8, scope: !4906)
!4916 = !DILocation(line: 31, column: 7, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4906, file: !959, line: 31, column: 7)
!4918 = !DILocation(line: 31, column: 7, scope: !4906)
!4919 = !DILocation(line: 34, column: 12, scope: !4906)
!4920 = !DILocation(line: 34, column: 38, scope: !4906)
!4921 = !DILocation(line: 34, column: 41, scope: !4906)
!4922 = !DILocation(line: 34, column: 66, scope: !4906)
!4923 = !DILocation(line: 35, column: 1, scope: !4906)
!4924 = distinct !DISubprogram(name: "locale_charset", scope: !966, file: !966, line: 831, type: !506, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !4925)
!4925 = !{!4926}
!4926 = !DILocalVariable(name: "codeset", scope: !4924, file: !966, line: 833, type: !80)
!4927 = !DILocation(line: 847, column: 13, scope: !4924)
!4928 = !DILocation(line: 0, scope: !4924)
!4929 = !DILocation(line: 911, column: 15, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4924, file: !966, line: 911, column: 7)
!4931 = !DILocation(line: 911, column: 7, scope: !4924)
!4932 = !DILocation(line: 1070, column: 13, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4934, file: !966, line: 1070, column: 13)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !966, line: 1060, column: 7)
!4935 = distinct !DILexicalBlock(scope: !4924, file: !966, line: 1019, column: 3)
!4936 = !DILocation(line: 1070, column: 24, scope: !4933)
!4937 = !DILocation(line: 1070, column: 13, scope: !4934)
!4938 = !DILocation(line: 1158, column: 3, scope: !4924)
!4939 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1359, file: !1359, line: 269, type: !4940, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1358, retainedNodes: !4942)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!82, !82, !78, !137}
!4942 = !{!4943, !4944, !4945}
!4943 = !DILocalVariable(name: "category", arg: 1, scope: !4939, file: !1359, line: 269, type: !82)
!4944 = !DILocalVariable(name: "buf", arg: 2, scope: !4939, file: !1359, line: 269, type: !78)
!4945 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4939, file: !1359, line: 269, type: !137)
!4946 = !DILocation(line: 0, scope: !4939)
!4947 = !DILocalVariable(name: "category", arg: 1, scope: !4948, file: !1359, line: 91, type: !82)
!4948 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1359, file: !1359, line: 91, type: !4940, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1358, retainedNodes: !4949)
!4949 = !{!4947, !4950, !4951, !4952, !4953}
!4950 = !DILocalVariable(name: "buf", arg: 2, scope: !4948, file: !1359, line: 91, type: !78)
!4951 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4948, file: !1359, line: 91, type: !137)
!4952 = !DILocalVariable(name: "result", scope: !4948, file: !1359, line: 140, type: !80)
!4953 = !DILocalVariable(name: "length", scope: !4954, file: !1359, line: 154, type: !137)
!4954 = distinct !DILexicalBlock(scope: !4955, file: !1359, line: 153, column: 5)
!4955 = distinct !DILexicalBlock(scope: !4948, file: !1359, line: 142, column: 7)
!4956 = !DILocation(line: 0, scope: !4948, inlinedAt: !4957)
!4957 = distinct !DILocation(line: 274, column: 10, scope: !4939)
!4958 = !DILocalVariable(name: "category", arg: 1, scope: !4959, file: !1359, line: 60, type: !82)
!4959 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1359, file: !1359, line: 60, type: !4960, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1358, retainedNodes: !4962)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!80, !82}
!4962 = !{!4958, !4963}
!4963 = !DILocalVariable(name: "result", scope: !4959, file: !1359, line: 62, type: !80)
!4964 = !DILocation(line: 0, scope: !4959, inlinedAt: !4965)
!4965 = distinct !DILocation(line: 140, column: 24, scope: !4948, inlinedAt: !4957)
!4966 = !DILocation(line: 62, column: 24, scope: !4959, inlinedAt: !4965)
!4967 = !DILocation(line: 142, column: 14, scope: !4955, inlinedAt: !4957)
!4968 = !DILocation(line: 142, column: 7, scope: !4948, inlinedAt: !4957)
!4969 = !DILocation(line: 145, column: 19, scope: !4970, inlinedAt: !4957)
!4970 = distinct !DILexicalBlock(scope: !4971, file: !1359, line: 145, column: 11)
!4971 = distinct !DILexicalBlock(scope: !4955, file: !1359, line: 143, column: 5)
!4972 = !DILocation(line: 145, column: 11, scope: !4971, inlinedAt: !4957)
!4973 = !DILocation(line: 149, column: 16, scope: !4970, inlinedAt: !4957)
!4974 = !DILocation(line: 149, column: 9, scope: !4970, inlinedAt: !4957)
!4975 = !DILocation(line: 154, column: 23, scope: !4954, inlinedAt: !4957)
!4976 = !DILocation(line: 0, scope: !4954, inlinedAt: !4957)
!4977 = !DILocation(line: 155, column: 18, scope: !4978, inlinedAt: !4957)
!4978 = distinct !DILexicalBlock(scope: !4954, file: !1359, line: 155, column: 11)
!4979 = !DILocation(line: 155, column: 11, scope: !4954, inlinedAt: !4957)
!4980 = !DILocation(line: 157, column: 39, scope: !4981, inlinedAt: !4957)
!4981 = distinct !DILexicalBlock(scope: !4978, file: !1359, line: 156, column: 9)
!4982 = !DILocalVariable(name: "__dest", arg: 1, scope: !4983, file: !2408, line: 31, type: !4474)
!4983 = distinct !DISubprogram(name: "memcpy", scope: !2408, file: !2408, line: 31, type: !4472, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1358, retainedNodes: !4984)
!4984 = !{!4982, !4985, !4986}
!4985 = !DILocalVariable(name: "__src", arg: 2, scope: !4983, file: !2408, line: 31, type: !4475)
!4986 = !DILocalVariable(name: "__len", arg: 3, scope: !4983, file: !2408, line: 31, type: !137)
!4987 = !DILocation(line: 0, scope: !4983, inlinedAt: !4988)
!4988 = distinct !DILocation(line: 157, column: 11, scope: !4981, inlinedAt: !4957)
!4989 = !DILocation(line: 34, column: 10, scope: !4983, inlinedAt: !4988)
!4990 = !DILocation(line: 158, column: 11, scope: !4981, inlinedAt: !4957)
!4991 = !DILocation(line: 162, column: 23, scope: !4992, inlinedAt: !4957)
!4992 = distinct !DILexicalBlock(scope: !4993, file: !1359, line: 162, column: 15)
!4993 = distinct !DILexicalBlock(scope: !4978, file: !1359, line: 161, column: 9)
!4994 = !DILocation(line: 162, column: 15, scope: !4993, inlinedAt: !4957)
!4995 = !DILocation(line: 167, column: 44, scope: !4996, inlinedAt: !4957)
!4996 = distinct !DILexicalBlock(scope: !4992, file: !1359, line: 163, column: 13)
!4997 = !DILocation(line: 0, scope: !4983, inlinedAt: !4998)
!4998 = distinct !DILocation(line: 167, column: 15, scope: !4996, inlinedAt: !4957)
!4999 = !DILocation(line: 34, column: 10, scope: !4983, inlinedAt: !4998)
!5000 = !DILocation(line: 168, column: 15, scope: !4996, inlinedAt: !4957)
!5001 = !DILocation(line: 168, column: 32, scope: !4996, inlinedAt: !4957)
!5002 = !DILocation(line: 169, column: 13, scope: !4996, inlinedAt: !4957)
!5003 = !DILocation(line: 0, scope: !4955, inlinedAt: !4957)
!5004 = !DILocation(line: 274, column: 3, scope: !4939)
!5005 = distinct !DISubprogram(name: "setlocale_null", scope: !1359, file: !1359, line: 301, type: !4960, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1358, retainedNodes: !5006)
!5006 = !{!5007}
!5007 = !DILocalVariable(name: "category", arg: 1, scope: !5005, file: !1359, line: 301, type: !82)
!5008 = !DILocation(line: 0, scope: !5005)
!5009 = !DILocation(line: 0, scope: !4959, inlinedAt: !5010)
!5010 = distinct !DILocation(line: 304, column: 10, scope: !5005)
!5011 = !DILocation(line: 62, column: 24, scope: !4959, inlinedAt: !5010)
!5012 = !DILocation(line: 304, column: 3, scope: !5005)
