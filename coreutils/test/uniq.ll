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
@skip_fields = internal unnamed_addr global i64 0, align 8, !dbg !89
@check_chars = internal unnamed_addr global i64 0, align 8, !dbg !91
@output_first_repeated = internal unnamed_addr global i1 false, align 1, !dbg !143
@output_unique = internal unnamed_addr global i1 false, align 1, !dbg !144
@output_later_repeated = internal unnamed_addr global i1 false, align 1, !dbg !145
@countmode = internal unnamed_addr global i1 false, align 4, !dbg !146
@delimit_groups = internal unnamed_addr global i32 0, align 4, !dbg !104
@.str.20 = private unnamed_addr constant [24 x i8] c"-0123456789Dcdf:is:uw:z\00", align 1
@longopts = internal constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i32 2, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 2, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !106
@optind = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.22 = private unnamed_addr constant [15 x i8] c"--all-repeated\00", align 1
@delimit_method_string = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* null], align 16, !dbg !126
@delimit_method_map = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4, !dbg !120
@grouping = internal unnamed_addr global i32 0, align 4, !dbg !132
@.str.23 = private unnamed_addr constant [8 x i8] c"--group\00", align 1
@grouping_method_string = internal constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* null], align 16, !dbg !138
@grouping_method_map = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !134
@.str.24 = private unnamed_addr constant [33 x i8] c"invalid number of fields to skip\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@ignore_case = internal unnamed_addr global i1 false, align 1, !dbg !147
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), align 8, !dbg !148
@.str.72 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@argmatch_die = dso_local local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !154
@.str.75 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.76 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.77 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.78 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.79 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !166
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !171
@.str.84 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.85 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.86 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !173
@.str.93 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !179
@.str.107 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.108 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.109 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.111, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.112, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.113, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.114, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.115, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.116, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.117, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.118, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.119, i32 0, i32 0), i8* null], align 16, !dbg !185
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !197
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !203
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !215
@.str.11.120 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.121 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.122 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.123 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.124 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.125 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.126 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !222
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !229
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !217
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !231
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !236
@.str.1.176 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.180 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.181 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.196 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.199 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.200 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !699 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !703, metadata !DIExpression()), !dbg !704
  %3 = icmp eq i32 %0, 0, !dbg !705
  br i1 %3, label %9, label %4, !dbg !707

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !708, !tbaa !710
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #30, !dbg !708
  %7 = load i8*, i8** @program_name, align 8, !dbg !708, !tbaa !710
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #30, !dbg !708
  br label %88, !dbg !708

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #30, !dbg !714
  %11 = load i8*, i8** @program_name, align 8, !dbg !714, !tbaa !710
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #30, !dbg !714
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.2, i64 0, i64 0), i32 5) #30, !dbg !716
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !716, !tbaa !710
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !716
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i64 0, i64 0), i32 5) #30, !dbg !717
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !717, !tbaa !710
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #30, !dbg !717
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.3, i64 0, i64 0), i32 5) #30, !dbg !721
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !721, !tbaa !710
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !721
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.4, i64 0, i64 0), i32 5) #30, !dbg !722
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !722, !tbaa !710
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !722
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 5) #30, !dbg !723
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !723, !tbaa !710
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !723
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.6, i64 0, i64 0), i32 5) #30, !dbg !724
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !710
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !724
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.7, i64 0, i64 0), i32 5) #30, !dbg !725
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !725, !tbaa !710
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !725
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 5) #30, !dbg !726
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !726, !tbaa !710
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !726
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i32 5) #30, !dbg !727
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !727, !tbaa !710
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !727
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 5) #30, !dbg !728
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !728, !tbaa !710
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !728
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 5) #30, !dbg !729
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !729, !tbaa !710
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !729
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.12, i64 0, i64 0), i32 5) #30, !dbg !730
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !730, !tbaa !710
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !730
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.13, i64 0, i64 0), i32 5) #30, !dbg !731
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !731, !tbaa !710
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !731
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !732, metadata !DIExpression()) #30, !dbg !750
  %52 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !752
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %52) #30, !dbg !752
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !737, metadata !DIExpression()) #30, !dbg !753
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %52, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #30, !dbg !753
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !746, metadata !DIExpression()) #30, !dbg !750
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !747, metadata !DIExpression()) #30, !dbg !750
  %53 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !754
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !747, metadata !DIExpression()) #30, !dbg !750
  br label %54, !dbg !755

54:                                               ; preds = %59, %9
  %55 = phi i8* [ %62, %59 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %9 ]
  %56 = phi %struct.infomap* [ %60, %59 ], [ %53, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %56, metadata !747, metadata !DIExpression()) #30, !dbg !750
  %57 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %55) #31, !dbg !756
  %58 = icmp eq i32 %57, 0, !dbg !756
  br i1 %58, label %64, label %59, !dbg !755

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.infomap, %struct.infomap* %56, i64 1, !dbg !757
  call void @llvm.dbg.value(metadata %struct.infomap* %60, metadata !747, metadata !DIExpression()) #30, !dbg !750
  %61 = getelementptr inbounds %struct.infomap, %struct.infomap* %60, i64 0, i32 0, !dbg !758
  %62 = load i8*, i8** %61, align 8, !dbg !758, !tbaa !759
  %63 = icmp eq i8* %62, null, !dbg !761
  br i1 %63, label %64, label %54, !dbg !762, !llvm.loop !763

64:                                               ; preds = %59, %54
  %65 = phi %struct.infomap* [ %56, %54 ], [ %60, %59 ]
  %66 = getelementptr inbounds %struct.infomap, %struct.infomap* %65, i64 0, i32 1, !dbg !765
  %67 = load i8*, i8** %66, align 8, !dbg !765, !tbaa !767
  %68 = icmp eq i8* %67, null, !dbg !768
  %69 = select i1 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %67, !dbg !769
  call void @llvm.dbg.value(metadata i8* %69, metadata !746, metadata !DIExpression()) #30, !dbg !750
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i32 5) #30, !dbg !770
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0)) #30, !dbg !770
  %72 = tail call i8* @setlocale(i32 5, i8* null) #30, !dbg !771
  call void @llvm.dbg.value(metadata i8* %72, metadata !749, metadata !DIExpression()) #30, !dbg !750
  %73 = icmp eq i8* %72, null, !dbg !772
  br i1 %73, label %81, label %74, !dbg !774

74:                                               ; preds = %64
  %75 = tail call i32 @strncmp(i8* nonnull %72, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 3) #31, !dbg !775
  %76 = icmp eq i32 %75, 0, !dbg !775
  br i1 %76, label %81, label %77, !dbg !776

77:                                               ; preds = %74
  %78 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.45, i64 0, i64 0), i32 5) #30, !dbg !777
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !777, !tbaa !710
  %80 = tail call i32 @fputs_unlocked(i8* %78, %struct._IO_FILE* %79) #30, !dbg !777
  br label %81, !dbg !779

81:                                               ; preds = %64, %74, %77
  %82 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0), i32 5) #30, !dbg !780
  %83 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #30, !dbg !780
  %84 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i32 5) #30, !dbg !781
  %85 = icmp eq i8* %69, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !781
  %86 = select i1 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), !dbg !781
  %87 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %84, i8* %69, i8* %86) #30, !dbg !781
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %52) #30, !dbg !782
  br label %88

88:                                               ; preds = %81, %4
  tail call void @exit(i32 %0) #32, !dbg !783
  unreachable, !dbg !783
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !784 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !788 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !844 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !848 {
  %3 = alloca %struct.linebuffer, align 8
  %4 = alloca %struct.linebuffer, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x i8*], align 16
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !853, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i8** %1, metadata !854, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i32 0, metadata !855, metadata !DIExpression()), !dbg !873
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #30, !dbg !874
  %11 = icmp ne i8* %10, null, !dbg !875
  call void @llvm.dbg.value(metadata i1 %11, metadata !856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !873
  call void @llvm.dbg.value(metadata i32 0, metadata !857, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i32 0, metadata !858, metadata !DIExpression()), !dbg !873
  %12 = bitcast [2 x i8*]* %8 to i8*, !dbg !876
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #30, !dbg !876
  call void @llvm.dbg.declare(metadata [2 x i8*]* %8, metadata !859, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i8 10, metadata !863, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i8 0, metadata !864, metadata !DIExpression()), !dbg !873
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1, !dbg !878
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8** %13, align 8, !dbg !879, !tbaa !710
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0, !dbg !880
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8** %14, align 16, !dbg !881, !tbaa !710
  %15 = load i8*, i8** %1, align 8, !dbg !882, !tbaa !710
  tail call void @set_program_name(i8* %15) #30, !dbg !883
  %16 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #30, !dbg !884
  %17 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #30, !dbg !885
  %18 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #30, !dbg !886
  %19 = tail call i32 @atexit(void ()* nonnull @close_stdout) #30, !dbg !887
  store i64 0, i64* @skip_chars, align 8, !dbg !888, !tbaa !889
  store i64 0, i64* @skip_fields, align 8, !dbg !891, !tbaa !889
  store i64 -1, i64* @check_chars, align 8, !dbg !892, !tbaa !889
  store i1 true, i1* @output_first_repeated, align 1, !dbg !893
  store i1 true, i1* @output_unique, align 1, !dbg !894
  store i1 false, i1* @output_later_repeated, align 1, !dbg !895
  store i1 true, i1* @countmode, align 4, !dbg !896
  store i32 0, i32* @delimit_groups, align 4, !dbg !897, !tbaa !898
  %20 = bitcast i64* %5 to i8*
  %21 = bitcast i64* %6 to i8*
  %22 = bitcast i64* %7 to i8*
  %23 = bitcast i64* %9 to i8*
  br label %24, !dbg !899

24:                                               ; preds = %36, %2
  %25 = phi i32 [ 0, %2 ], [ %37, %36 ], !dbg !900
  %26 = phi i32 [ 0, %2 ], [ %38, %36 ], !dbg !901
  %27 = phi i32 [ 0, %2 ], [ %39, %36 ], !dbg !873
  %28 = phi i8 [ 10, %2 ], [ %40, %36 ], !dbg !902
  %29 = phi i8 [ 0, %2 ], [ %41, %36 ], !dbg !903
  call void @llvm.dbg.value(metadata i8 %29, metadata !864, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i8 %28, metadata !863, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i32 %27, metadata !858, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i32 %26, metadata !857, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i32 %25, metadata !855, metadata !DIExpression()), !dbg !873
  %30 = icmp eq i32 %25, -1, !dbg !904
  br i1 %30, label %42, label %31, !dbg !905

31:                                               ; preds = %24
  %32 = icmp ne i32 %27, 0
  %33 = and i1 %11, %32, !dbg !906
  br i1 %33, label %42, label %34, !dbg !906

34:                                               ; preds = %31
  %35 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #30, !dbg !907
  call void @llvm.dbg.value(metadata i32 %35, metadata !855, metadata !DIExpression()), !dbg !873
  switch i32 %35, label %158 [
    i32 -1, label %42
    i32 1, label %63
    i32 48, label %90
    i32 49, label %90
    i32 50, label %90
    i32 51, label %90
    i32 52, label %90
    i32 53, label %90
    i32 54, label %90
    i32 55, label %90
    i32 56, label %90
    i32 57, label %90
    i32 99, label %107
    i32 100, label %108
    i32 68, label %109
    i32 128, label %119
    i32 102, label %128
    i32 105, label %136
    i32 115, label %137
    i32 117, label %145
    i32 119, label %146
    i32 122, label %36
    i32 -130, label %154
    i32 -131, label %155
  ], !dbg !908

36:                                               ; preds = %34, %106, %104, %88, %107, %108, %117, %134, %136, %143, %145, %152, %123, %122, %55
  %37 = phi i32 [ %43, %55 ], [ 119, %152 ], [ 117, %145 ], [ 115, %143 ], [ 105, %136 ], [ 102, %134 ], [ 128, %122 ], [ 128, %123 ], [ 68, %117 ], [ 100, %108 ], [ 99, %107 ], [ 1, %88 ], [ %35, %104 ], [ %35, %106 ], [ %35, %34 ]
  %38 = phi i32 [ %26, %55 ], [ %26, %152 ], [ %26, %145 ], [ %26, %143 ], [ %26, %136 ], [ 2, %134 ], [ %26, %122 ], [ %26, %123 ], [ %26, %117 ], [ %26, %108 ], [ %26, %107 ], [ %26, %88 ], [ 1, %104 ], [ 1, %106 ], [ %26, %34 ]
  %39 = phi i32 [ %60, %55 ], [ %27, %152 ], [ %27, %145 ], [ %27, %143 ], [ %27, %136 ], [ %27, %134 ], [ %27, %122 ], [ %27, %123 ], [ %27, %117 ], [ %27, %108 ], [ %27, %107 ], [ %89, %88 ], [ %27, %104 ], [ %27, %106 ], [ %27, %34 ]
  %40 = phi i8 [ %28, %55 ], [ %28, %152 ], [ %28, %145 ], [ %28, %143 ], [ %28, %136 ], [ %28, %134 ], [ %28, %122 ], [ %28, %123 ], [ %28, %117 ], [ %28, %108 ], [ %28, %107 ], [ %28, %88 ], [ %28, %104 ], [ %28, %106 ], [ 0, %34 ]
  %41 = phi i8 [ %29, %55 ], [ %29, %152 ], [ 1, %145 ], [ %29, %143 ], [ %29, %136 ], [ %29, %134 ], [ %29, %122 ], [ %29, %123 ], [ 1, %117 ], [ 1, %108 ], [ 1, %107 ], [ %29, %88 ], [ %29, %104 ], [ %29, %106 ], [ %29, %34 ]
  br label %24, !dbg !873, !llvm.loop !909

42:                                               ; preds = %34, %31, %24
  %43 = phi i32 [ -1, %24 ], [ %25, %31 ], [ %35, %34 ], !dbg !873
  call void @llvm.dbg.value(metadata i32 %43, metadata !855, metadata !DIExpression()), !dbg !873
  %44 = load i32, i32* @optind, align 4, !dbg !911, !tbaa !914
  %45 = icmp slt i32 %44, %0, !dbg !916
  br i1 %45, label %46, label %159, !dbg !917

46:                                               ; preds = %42
  %47 = icmp eq i32 %27, 2, !dbg !918
  br i1 %47, label %48, label %55, !dbg !920

48:                                               ; preds = %46
  %49 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 5) #30, !dbg !921
  %50 = load i32, i32* @optind, align 4, !dbg !923, !tbaa !914
  %51 = sext i32 %50 to i64, !dbg !924
  %52 = getelementptr inbounds i8*, i8** %1, i64 %51, !dbg !924
  %53 = load i8*, i8** %52, align 8, !dbg !924, !tbaa !710
  %54 = call i8* @quote(i8* %53) #30, !dbg !925
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %49, i8* %54) #30, !dbg !926
  call void @usage(i32 1) #33, !dbg !927
  unreachable, !dbg !927

55:                                               ; preds = %46
  %56 = add nsw i32 %44, 1, !dbg !928
  store i32 %56, i32* @optind, align 4, !dbg !928, !tbaa !914
  %57 = sext i32 %44 to i64, !dbg !929
  %58 = getelementptr inbounds i8*, i8** %1, i64 %57, !dbg !929
  %59 = load i8*, i8** %58, align 8, !dbg !929, !tbaa !710
  %60 = add i32 %27, 1, !dbg !930
  call void @llvm.dbg.value(metadata i32 %60, metadata !858, metadata !DIExpression()), !dbg !873
  %61 = zext i32 %27 to i64, !dbg !931
  %62 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 %61, !dbg !931
  store i8* %59, i8** %62, align 8, !dbg !932, !tbaa !710
  br label %36, !dbg !933

63:                                               ; preds = %34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #30, !dbg !934
  %64 = load i8*, i8** @optarg, align 8, !dbg !935, !tbaa !710
  %65 = load i8, i8* %64, align 1, !dbg !935, !tbaa !898
  %66 = icmp eq i8 %65, 43, !dbg !937
  br i1 %66, label %67, label %77, !dbg !938

67:                                               ; preds = %63
  %68 = call i32 @posix2_version() #30, !dbg !939
  call void @llvm.dbg.value(metadata i32 %68, metadata !944, metadata !DIExpression()) #30, !dbg !946
  %69 = add i32 %68, -200112, !dbg !947
  %70 = icmp ult i32 %69, 697, !dbg !947
  br i1 %70, label %77, label %71, !dbg !948

71:                                               ; preds = %67
  %72 = load i8*, i8** @optarg, align 8, !dbg !949, !tbaa !710
  call void @llvm.dbg.value(metadata i64* %9, metadata !865, metadata !DIExpression(DW_OP_deref)), !dbg !950
  %73 = call i32 @xstrtoumax(i8* %72, i8** null, i32 10, i64* nonnull %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #30, !dbg !951
  %74 = icmp eq i32 %73, 0, !dbg !952
  call void @llvm.dbg.value(metadata i64 undef, metadata !865, metadata !DIExpression()), !dbg !950
  br i1 %74, label %75, label %77, !dbg !953

75:                                               ; preds = %71
  %76 = load i64, i64* %9, align 8
  call void @llvm.dbg.value(metadata i64 %76, metadata !865, metadata !DIExpression()), !dbg !950
  store i64 %76, i64* @skip_chars, align 8, !dbg !954, !tbaa !889
  br label %88, !dbg !955

77:                                               ; preds = %71, %67, %63
  %78 = icmp eq i32 %27, 2, !dbg !956
  br i1 %78, label %79, label %83, !dbg !958

79:                                               ; preds = %77
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 5) #30, !dbg !959
  %81 = load i8*, i8** @optarg, align 8, !dbg !961, !tbaa !710
  %82 = call i8* @quote(i8* %81) #30, !dbg !962
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80, i8* %82) #30, !dbg !963
  call void @usage(i32 1) #33, !dbg !964
  unreachable, !dbg !964

83:                                               ; preds = %77
  %84 = load i8*, i8** @optarg, align 8, !dbg !965, !tbaa !710
  %85 = add i32 %27, 1, !dbg !966
  call void @llvm.dbg.value(metadata i32 %85, metadata !858, metadata !DIExpression()), !dbg !873
  %86 = zext i32 %27 to i64, !dbg !967
  %87 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 %86, !dbg !967
  store i8* %84, i8** %87, align 8, !dbg !968, !tbaa !710
  br label %88

88:                                               ; preds = %83, %75
  %89 = phi i32 [ %85, %83 ], [ %27, %75 ], !dbg !873
  call void @llvm.dbg.value(metadata i32 %89, metadata !858, metadata !DIExpression()), !dbg !873
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #30, !dbg !969
  br label %36, !dbg !970

90:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34, %34, %34
  %91 = icmp eq i32 %26, 2, !dbg !971
  br i1 %91, label %92, label %95, !dbg !974

92:                                               ; preds = %90
  %93 = add nsw i32 %35, -48, !dbg !975
  %94 = sext i32 %93 to i64, !dbg !975
  br label %104, !dbg !975

95:                                               ; preds = %90
  %96 = load i64, i64* @skip_fields, align 8, !dbg !975, !tbaa !889
  %97 = icmp ugt i64 %96, 1844674407370955161, !dbg !975
  br i1 %97, label %106, label %98, !dbg !975

98:                                               ; preds = %95
  %99 = mul nuw i64 %96, 10, !dbg !975
  %100 = add nsw i32 %35, -48, !dbg !975
  %101 = sext i32 %100 to i64, !dbg !975
  %102 = add i64 %99, %101, !dbg !975
  %103 = icmp ult i64 %102, %96, !dbg !975
  br i1 %103, label %106, label %104, !dbg !975

104:                                              ; preds = %92, %98
  %105 = phi i64 [ %94, %92 ], [ %102, %98 ]
  store i64 %105, i64* @skip_fields, align 8, !dbg !975, !tbaa !889
  br label %36, !dbg !977

106:                                              ; preds = %98, %95
  store i64 -1, i64* @skip_fields, align 8, !dbg !978, !tbaa !889
  br label %36, !dbg !979

107:                                              ; preds = %34
  store i1 false, i1* @countmode, align 4, !dbg !980
  call void @llvm.dbg.value(metadata i8 1, metadata !864, metadata !DIExpression()), !dbg !873
  br label %36, !dbg !981

108:                                              ; preds = %34
  store i1 false, i1* @output_unique, align 1, !dbg !982
  call void @llvm.dbg.value(metadata i8 1, metadata !864, metadata !DIExpression()), !dbg !873
  br label %36, !dbg !983

109:                                              ; preds = %34
  store i1 false, i1* @output_unique, align 1, !dbg !984
  store i1 true, i1* @output_later_repeated, align 1, !dbg !985
  %110 = load i8*, i8** @optarg, align 8, !dbg !986, !tbaa !710
  %111 = icmp eq i8* %110, null, !dbg !988
  br i1 %111, label %117, label %112, !dbg !989

112:                                              ; preds = %109
  %113 = load void ()*, void ()** @argmatch_die, align 8, !dbg !990, !tbaa !710
  %114 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %110, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @delimit_method_string, i64 0, i64 0), i8* bitcast ([3 x i32]* @delimit_method_map to i8*), i64 4, void ()* %113) #30, !dbg !990
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* @delimit_method_map, i64 0, i64 %114, !dbg !990
  %116 = load i32, i32* %115, align 4, !dbg !990, !tbaa !898
  br label %117

117:                                              ; preds = %109, %112
  %118 = phi i32 [ %116, %112 ], [ 0, %109 ], !dbg !991
  store i32 %118, i32* @delimit_groups, align 4, !dbg !991, !tbaa !898
  call void @llvm.dbg.value(metadata i8 1, metadata !864, metadata !DIExpression()), !dbg !873
  br label %36, !dbg !992

119:                                              ; preds = %34
  %120 = load i8*, i8** @optarg, align 8, !dbg !993, !tbaa !710
  %121 = icmp eq i8* %120, null, !dbg !995
  br i1 %121, label %122, label %123, !dbg !996

122:                                              ; preds = %119
  store i32 3, i32* @grouping, align 4, !dbg !997, !tbaa !898
  br label %36, !dbg !998

123:                                              ; preds = %119
  %124 = load void ()*, void ()** @argmatch_die, align 8, !dbg !999, !tbaa !710
  %125 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* nonnull %120, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @grouping_method_string, i64 0, i64 0), i8* bitcast ([4 x i32]* @grouping_method_map to i8*), i64 4, void ()* %124) #30, !dbg !999
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* @grouping_method_map, i64 0, i64 %125, !dbg !999
  %127 = load i32, i32* %126, align 4, !dbg !999, !tbaa !898
  store i32 %127, i32* @grouping, align 4, !dbg !1000, !tbaa !898
  br label %36

128:                                              ; preds = %34
  call void @llvm.dbg.value(metadata i32 2, metadata !857, metadata !DIExpression()), !dbg !873
  %129 = load i8*, i8** @optarg, align 8, !dbg !1001, !tbaa !710
  call void @llvm.dbg.value(metadata i8* %129, metadata !1002, metadata !DIExpression()) #30, !dbg !1009
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), metadata !1007, metadata !DIExpression()) #30, !dbg !1009
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #30, !dbg !1011
  call void @llvm.dbg.value(metadata i64* %7, metadata !1008, metadata !DIExpression(DW_OP_deref)) #30, !dbg !1009
  %130 = call i32 @xstrtoumax(i8* %129, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #30, !dbg !1012
  %131 = icmp ult i32 %130, 2, !dbg !1013
  br i1 %131, label %134, label %132, !dbg !1013

132:                                              ; preds = %128
  %133 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i32 5) #30, !dbg !1014
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %129, i8* %133) #30, !dbg !1014
  unreachable, !dbg !1014

134:                                              ; preds = %128
  %135 = load i64, i64* %7, align 8, !dbg !1016, !tbaa !889
  call void @llvm.dbg.value(metadata i64 %135, metadata !1008, metadata !DIExpression()) #30, !dbg !1009
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #30, !dbg !1017
  store i64 %135, i64* @skip_fields, align 8, !dbg !1018, !tbaa !889
  br label %36, !dbg !1019

136:                                              ; preds = %34
  store i1 true, i1* @ignore_case, align 1, !dbg !1020
  br label %36, !dbg !1021

137:                                              ; preds = %34
  %138 = load i8*, i8** @optarg, align 8, !dbg !1022, !tbaa !710
  call void @llvm.dbg.value(metadata i8* %138, metadata !1002, metadata !DIExpression()) #30, !dbg !1023
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), metadata !1007, metadata !DIExpression()) #30, !dbg !1023
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #30, !dbg !1025
  call void @llvm.dbg.value(metadata i64* %6, metadata !1008, metadata !DIExpression(DW_OP_deref)) #30, !dbg !1023
  %139 = call i32 @xstrtoumax(i8* %138, i8** null, i32 10, i64* nonnull %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #30, !dbg !1026
  %140 = icmp ult i32 %139, 2, !dbg !1027
  br i1 %140, label %143, label %141, !dbg !1027

141:                                              ; preds = %137
  %142 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i32 5) #30, !dbg !1028
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %138, i8* %142) #30, !dbg !1028
  unreachable, !dbg !1028

143:                                              ; preds = %137
  %144 = load i64, i64* %6, align 8, !dbg !1029, !tbaa !889
  call void @llvm.dbg.value(metadata i64 %144, metadata !1008, metadata !DIExpression()) #30, !dbg !1023
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #30, !dbg !1030
  store i64 %144, i64* @skip_chars, align 8, !dbg !1031, !tbaa !889
  br label %36, !dbg !1032

145:                                              ; preds = %34
  store i1 false, i1* @output_first_repeated, align 1, !dbg !1033
  call void @llvm.dbg.value(metadata i8 1, metadata !864, metadata !DIExpression()), !dbg !873
  br label %36, !dbg !1034

146:                                              ; preds = %34
  %147 = load i8*, i8** @optarg, align 8, !dbg !1035, !tbaa !710
  call void @llvm.dbg.value(metadata i8* %147, metadata !1002, metadata !DIExpression()) #30, !dbg !1036
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), metadata !1007, metadata !DIExpression()) #30, !dbg !1036
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #30, !dbg !1038
  call void @llvm.dbg.value(metadata i64* %5, metadata !1008, metadata !DIExpression(DW_OP_deref)) #30, !dbg !1036
  %148 = call i32 @xstrtoumax(i8* %147, i8** null, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #30, !dbg !1039
  %149 = icmp ult i32 %148, 2, !dbg !1040
  br i1 %149, label %152, label %150, !dbg !1040

150:                                              ; preds = %146
  %151 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i32 5) #30, !dbg !1041
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %147, i8* %151) #30, !dbg !1041
  unreachable, !dbg !1041

152:                                              ; preds = %146
  %153 = load i64, i64* %5, align 8, !dbg !1042, !tbaa !889
  call void @llvm.dbg.value(metadata i64 %153, metadata !1008, metadata !DIExpression()) #30, !dbg !1036
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #30, !dbg !1043
  store i64 %153, i64* @check_chars, align 8, !dbg !1044, !tbaa !889
  br label %36, !dbg !1045

154:                                              ; preds = %34
  call void @usage(i32 0) #33, !dbg !1046
  unreachable, !dbg !1046

155:                                              ; preds = %34
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1047, !tbaa !710
  %157 = load i8*, i8** @Version, align 8, !dbg !1047, !tbaa !710
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %157, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8* null) #30, !dbg !1047
  call void @exit(i32 0) #32, !dbg !1047
  unreachable, !dbg !1047

158:                                              ; preds = %34
  call void @usage(i32 1) #33, !dbg !1048
  unreachable, !dbg !1048

159:                                              ; preds = %42
  %160 = load i32, i32* @grouping, align 4, !dbg !1049, !tbaa !898
  %161 = icmp eq i32 %160, 0, !dbg !1051
  %162 = icmp eq i8 %29, 0
  %163 = or i1 %162, %161, !dbg !1052
  br i1 %163, label %166, label %164, !dbg !1052

164:                                              ; preds = %159
  %165 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0), i32 5) #30, !dbg !1053
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %165) #30, !dbg !1055
  call void @usage(i32 1) #33, !dbg !1056
  unreachable, !dbg !1056

166:                                              ; preds = %159
  %167 = load i1, i1* @countmode, align 4
  %168 = or i1 %161, %167, !dbg !1057
  br i1 %168, label %171, label %169, !dbg !1057

169:                                              ; preds = %166
  %170 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #30, !dbg !1059
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %170) #30, !dbg !1061
  call void @usage(i32 1) #33, !dbg !1062
  unreachable, !dbg !1062

171:                                              ; preds = %166
  br i1 %167, label %176, label %172, !dbg !1063

172:                                              ; preds = %171
  %173 = load i1, i1* @output_later_repeated, align 1, !dbg !1065
  br i1 %173, label %174, label %176, !dbg !1066

174:                                              ; preds = %172
  %175 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.32, i64 0, i64 0), i32 5) #30, !dbg !1067
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %175) #30, !dbg !1069
  call void @usage(i32 1) #33, !dbg !1070
  unreachable, !dbg !1070

176:                                              ; preds = %172, %171
  %177 = load i8*, i8** %14, align 16, !dbg !1071, !tbaa !710
  %178 = load i8*, i8** %13, align 8, !dbg !1072, !tbaa !710
  call void @llvm.dbg.value(metadata i8* %177, metadata !1073, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %178, metadata !1078, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata i8 %28, metadata !1079, metadata !DIExpression()) #30, !dbg !1125
  %179 = bitcast %struct.linebuffer* %3 to i8*, !dbg !1127
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %179) #30, !dbg !1127
  call void @llvm.dbg.declare(metadata %struct.linebuffer* %3, metadata !1080, metadata !DIExpression()) #30, !dbg !1128
  %180 = bitcast %struct.linebuffer* %4 to i8*, !dbg !1127
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %180) #30, !dbg !1127
  call void @llvm.dbg.declare(metadata %struct.linebuffer* %4, metadata !1087, metadata !DIExpression()) #30, !dbg !1129
  %181 = call i32 @strcmp(i8* nonnull dereferenceable(1) %177, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #31, !dbg !1130
  %182 = icmp eq i32 %181, 0, !dbg !1130
  br i1 %182, label %191, label %183, !dbg !1132

183:                                              ; preds = %176
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1133, !tbaa !710
  %185 = call %struct._IO_FILE* @freopen_safer(i8* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), %struct._IO_FILE* %184) #30, !dbg !1134
  %186 = icmp eq %struct._IO_FILE* %185, null, !dbg !1134
  br i1 %186, label %187, label %191, !dbg !1135

187:                                              ; preds = %183
  %188 = tail call i32* @__errno_location() #34, !dbg !1136
  %189 = load i32, i32* %188, align 4, !dbg !1136, !tbaa !914
  %190 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %177) #30, !dbg !1136
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i8* %190) #30, !dbg !1136
  unreachable, !dbg !1136

191:                                              ; preds = %183, %176
  %192 = call i32 @strcmp(i8* nonnull dereferenceable(1) %178, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #31, !dbg !1137
  %193 = icmp eq i32 %192, 0, !dbg !1137
  br i1 %193, label %202, label %194, !dbg !1139

194:                                              ; preds = %191
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1140, !tbaa !710
  %196 = call %struct._IO_FILE* @freopen_safer(i8* %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), %struct._IO_FILE* %195) #30, !dbg !1141
  %197 = icmp eq %struct._IO_FILE* %196, null, !dbg !1141
  br i1 %197, label %198, label %202, !dbg !1142

198:                                              ; preds = %194
  %199 = tail call i32* @__errno_location() #34, !dbg !1143
  %200 = load i32, i32* %199, align 4, !dbg !1143, !tbaa !914
  %201 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %178) #30, !dbg !1143
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i8* %201) #30, !dbg !1143
  unreachable, !dbg !1143

202:                                              ; preds = %194, %191
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1144, !tbaa !710
  call void @fadvise(%struct._IO_FILE* %203, i32 2) #30, !dbg !1145
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, metadata !1088, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, metadata !1090, metadata !DIExpression()) #30, !dbg !1125
  call void @initbuffer(%struct.linebuffer* nonnull %3) #30, !dbg !1146
  call void @initbuffer(%struct.linebuffer* nonnull %4) #30, !dbg !1147
  %204 = load i1, i1* @output_unique, align 1, !dbg !1148
  br i1 %204, label %205, label %316, !dbg !1149

205:                                              ; preds = %202
  %206 = load i1, i1* @output_first_repeated, align 1, !dbg !1150
  %207 = load i1, i1* @countmode, align 4
  %208 = and i1 %206, %207, !dbg !1151
  br i1 %208, label %209, label %316, !dbg !1151

209:                                              ; preds = %205
  %210 = zext i8 %28 to i32
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, metadata !1088, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, metadata !1090, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata i8* undef, metadata !1091, metadata !DIExpression()) #30, !dbg !1152
  call void @llvm.dbg.value(metadata i64 undef, metadata !1094, metadata !DIExpression()) #30, !dbg !1152
  call void @llvm.dbg.value(metadata i8 0, metadata !1095, metadata !DIExpression()) #30, !dbg !1152
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1153, !tbaa !710
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %211, metadata !1154, metadata !DIExpression()) #30, !dbg !1160
  %212 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %211, i64 0, i32 0, !dbg !1162
  %213 = load i32, i32* %212, align 8, !dbg !1162, !tbaa !1163
  %214 = and i32 %213, 16, !dbg !1166
  %215 = icmp eq i32 %214, 0, !dbg !1166
  br i1 %215, label %216, label %299, !dbg !1167

216:                                              ; preds = %209, %288
  %217 = phi %struct._IO_FILE* [ %294, %288 ], [ %211, %209 ]
  %218 = phi %struct.linebuffer* [ %293, %288 ], [ %3, %209 ]
  %219 = phi %struct.linebuffer* [ %292, %288 ], [ %4, %209 ]
  %220 = phi i8* [ %291, %288 ], [ undef, %209 ]
  %221 = phi i64 [ %290, %288 ], [ undef, %209 ]
  %222 = phi i8 [ %289, %288 ], [ 0, %209 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %218, metadata !1088, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.linebuffer* %219, metadata !1090, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %220, metadata !1091, metadata !DIExpression()) #30, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %221, metadata !1094, metadata !DIExpression()) #30, !dbg !1152
  call void @llvm.dbg.value(metadata i8 %222, metadata !1095, metadata !DIExpression()) #30, !dbg !1152
  %223 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %218, %struct._IO_FILE* nonnull %217, i8 signext %28) #30, !dbg !1168
  %224 = icmp eq %struct.linebuffer* %223, null, !dbg !1170
  br i1 %224, label %299, label %225, !dbg !1171

225:                                              ; preds = %216
  %226 = call fastcc i8* @find_field(%struct.linebuffer* %218) #31, !dbg !1172
  call void @llvm.dbg.value(metadata i8* %226, metadata !1096, metadata !DIExpression()) #30, !dbg !1173
  %227 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %218, i64 0, i32 1, !dbg !1174
  %228 = load i64, i64* %227, align 8, !dbg !1174, !tbaa !1175
  %229 = add i64 %228, -1, !dbg !1177
  %230 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %218, i64 0, i32 2, !dbg !1178
  %231 = load i8*, i8** %230, align 8, !dbg !1178, !tbaa !1179
  %232 = ptrtoint i8* %226 to i64, !dbg !1180
  %233 = ptrtoint i8* %231 to i64, !dbg !1180
  %234 = sub i64 %233, %232, !dbg !1180
  %235 = add i64 %229, %234, !dbg !1181
  call void @llvm.dbg.value(metadata i64 %235, metadata !1098, metadata !DIExpression()) #30, !dbg !1173
  %236 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %219, i64 0, i32 1, !dbg !1182
  %237 = load i64, i64* %236, align 8, !dbg !1182, !tbaa !1175
  %238 = icmp eq i64 %237, 0, !dbg !1183
  br i1 %238, label %255, label %239, !dbg !1184

239:                                              ; preds = %225
  call void @llvm.dbg.value(metadata i8* %226, metadata !1185, metadata !DIExpression()) #30, !dbg !1193
  call void @llvm.dbg.value(metadata i8* %220, metadata !1190, metadata !DIExpression()) #30, !dbg !1193
  call void @llvm.dbg.value(metadata i64 %235, metadata !1191, metadata !DIExpression()) #30, !dbg !1193
  call void @llvm.dbg.value(metadata i64 %221, metadata !1192, metadata !DIExpression()) #30, !dbg !1193
  %240 = load i64, i64* @check_chars, align 8, !dbg !1195, !tbaa !889
  %241 = icmp ult i64 %240, %235, !dbg !1197
  %242 = select i1 %241, i64 %240, i64 %235, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %242, metadata !1191, metadata !DIExpression()) #30, !dbg !1193
  %243 = icmp ult i64 %240, %221, !dbg !1199
  %244 = select i1 %243, i64 %240, i64 %221, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %244, metadata !1192, metadata !DIExpression()) #30, !dbg !1193
  %245 = load i1, i1* @ignore_case, align 1, !dbg !1202
  %246 = icmp eq i64 %242, %244, !dbg !1204
  br i1 %245, label %247, label %251, !dbg !1205

247:                                              ; preds = %239
  br i1 %246, label %248, label %255, !dbg !1206

248:                                              ; preds = %247
  %249 = call i32 @memcasecmp(i8* %226, i8* %220, i64 %242) #31, !dbg !1207
  %250 = icmp ne i32 %249, 0, !dbg !1206
  br label %255, !dbg !1206

251:                                              ; preds = %239
  br i1 %246, label %252, label %255, !dbg !1208

252:                                              ; preds = %251
  %253 = call i32 @bcmp(i8* %226, i8* %220, i64 %242) #30, !dbg !1209
  %254 = icmp ne i32 %253, 0, !dbg !1208
  br label %255, !dbg !1208

255:                                              ; preds = %252, %251, %248, %247, %225
  %256 = phi i1 [ true, %225 ], [ true, %247 ], [ %250, %248 ], [ true, %251 ], [ %254, %252 ]
  call void @llvm.dbg.value(metadata i1 %256, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !1173
  %257 = load i32, i32* @grouping, align 4
  %258 = icmp ne i32 %257, 0
  %259 = and i1 %256, %258, !dbg !1210
  br i1 %259, label %260, label %279, !dbg !1210

260:                                              ; preds = %255
  switch i32 %257, label %261 [
    i32 4, label %267
    i32 1, label %267
  ], !dbg !1212

261:                                              ; preds = %260
  %262 = and i8 %222, 1, !dbg !1213
  %263 = icmp ne i8 %262, 0, !dbg !1213
  %264 = and i32 %257, -2
  %265 = icmp eq i32 %264, 2
  %266 = and i1 %263, %265, !dbg !1214
  br i1 %266, label %267, label %283, !dbg !1214

267:                                              ; preds = %261, %260, %260
  call void @llvm.dbg.value(metadata i8 %28, metadata !1215, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !1220
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1222, !tbaa !710
  %269 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %268, i64 0, i32 5, !dbg !1222
  %270 = load i8*, i8** %269, align 8, !dbg !1222, !tbaa !1223
  %271 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %268, i64 0, i32 6, !dbg !1222
  %272 = load i8*, i8** %271, align 8, !dbg !1222, !tbaa !1224
  %273 = icmp ult i8* %270, %272, !dbg !1222
  br i1 %273, label %277, label %274, !dbg !1222, !prof !1225

274:                                              ; preds = %267
  call void @llvm.dbg.value(metadata i32 %210, metadata !1215, metadata !DIExpression()) #30, !dbg !1220
  %275 = call i32 @__overflow(%struct._IO_FILE* nonnull %268, i32 %210) #30, !dbg !1222
  %276 = load i32, i32* @grouping, align 4
  br label %279, !dbg !1222

277:                                              ; preds = %267
  %278 = getelementptr inbounds i8, i8* %270, i64 1, !dbg !1222
  store i8* %278, i8** %269, align 8, !dbg !1222, !tbaa !1223
  store i8 %28, i8* %270, align 1, !dbg !1222, !tbaa !898
  br label %283, !dbg !1222

279:                                              ; preds = %274, %255
  %280 = phi i32 [ %276, %274 ], [ %257, %255 ]
  %281 = icmp ne i32 %280, 0
  %282 = or i1 %256, %281, !dbg !1226
  br i1 %282, label %283, label %288, !dbg !1226

283:                                              ; preds = %279, %277, %261
  %284 = load i64, i64* %227, align 8, !dbg !1227, !tbaa !1175
  %285 = load i8*, i8** %230, align 8, !dbg !1227, !tbaa !1179
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1227, !tbaa !710
  %287 = call i64 @fwrite_unlocked(i8* %285, i64 1, i64 %284, %struct._IO_FILE* %286) #30, !dbg !1227
  br label %288, !dbg !1227

288:                                              ; preds = %283, %279
  %289 = phi i8 [ %222, %279 ], [ 1, %283 ], !dbg !1152
  %290 = phi i64 [ %221, %279 ], [ %235, %283 ]
  %291 = phi i8* [ %220, %279 ], [ %226, %283 ]
  %292 = phi %struct.linebuffer* [ %219, %279 ], [ %218, %283 ], !dbg !1125
  %293 = phi %struct.linebuffer* [ %218, %279 ], [ %219, %283 ], !dbg !1125
  call void @llvm.dbg.value(metadata %struct.linebuffer* %293, metadata !1088, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.linebuffer* %292, metadata !1090, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %291, metadata !1091, metadata !DIExpression()) #30, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %290, metadata !1094, metadata !DIExpression()) #30, !dbg !1152
  call void @llvm.dbg.value(metadata i8 %289, metadata !1095, metadata !DIExpression()) #30, !dbg !1152
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1153, !tbaa !710
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %294, metadata !1154, metadata !DIExpression()) #30, !dbg !1160
  %295 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %294, i64 0, i32 0, !dbg !1162
  %296 = load i32, i32* %295, align 8, !dbg !1162, !tbaa !1163
  %297 = and i32 %296, 16, !dbg !1166
  %298 = icmp eq i32 %297, 0, !dbg !1166
  br i1 %298, label %216, label %299, !dbg !1167

299:                                              ; preds = %288, %216, %209
  %300 = phi i8 [ 0, %209 ], [ %222, %216 ], [ %289, %288 ], !dbg !1228
  call void @llvm.dbg.value(metadata i8 %300, metadata !1095, metadata !DIExpression()) #30, !dbg !1152
  %301 = load i32, i32* @grouping, align 4, !dbg !1229, !tbaa !898
  switch i32 %301, label %431 [
    i32 4, label %302
    i32 2, label %302
  ], !dbg !1231

302:                                              ; preds = %299, %299
  %303 = and i8 %300, 1, !dbg !1232
  %304 = icmp eq i8 %303, 0, !dbg !1232
  br i1 %304, label %431, label %305, !dbg !1233

305:                                              ; preds = %302
  call void @llvm.dbg.value(metadata i8 %28, metadata !1215, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !1234
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1236, !tbaa !710
  %307 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %306, i64 0, i32 5, !dbg !1236
  %308 = load i8*, i8** %307, align 8, !dbg !1236, !tbaa !1223
  %309 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %306, i64 0, i32 6, !dbg !1236
  %310 = load i8*, i8** %309, align 8, !dbg !1236, !tbaa !1224
  %311 = icmp ult i8* %308, %310, !dbg !1236
  br i1 %311, label %314, label %312, !dbg !1236, !prof !1225

312:                                              ; preds = %305
  call void @llvm.dbg.value(metadata i32 %210, metadata !1215, metadata !DIExpression()) #30, !dbg !1234
  %313 = call i32 @__overflow(%struct._IO_FILE* nonnull %306, i32 %210) #30, !dbg !1236
  br label %431, !dbg !1236

314:                                              ; preds = %305
  %315 = getelementptr inbounds i8, i8* %308, i64 1, !dbg !1236
  store i8* %315, i8** %307, align 8, !dbg !1236, !tbaa !1223
  store i8 %28, i8* %308, align 1, !dbg !1236, !tbaa !898
  br label %431, !dbg !1236

316:                                              ; preds = %205, %202
  call void @llvm.dbg.value(metadata i64 0, metadata !1114, metadata !DIExpression()) #30, !dbg !1237
  call void @llvm.dbg.value(metadata i8 1, metadata !1115, metadata !DIExpression()) #30, !dbg !1237
  %317 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1238, !tbaa !710
  %318 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* nonnull %4, %struct._IO_FILE* %317, i8 signext %28) #30, !dbg !1240
  %319 = icmp eq %struct.linebuffer* %318, null, !dbg !1241
  br i1 %319, label %431, label %320, !dbg !1242

320:                                              ; preds = %316
  %321 = call fastcc i8* @find_field(%struct.linebuffer* nonnull %4) #31, !dbg !1243
  call void @llvm.dbg.value(metadata i64 undef, metadata !1113, metadata !DIExpression()) #30, !dbg !1237
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, metadata !1088, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, metadata !1090, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata i8 1, metadata !1115, metadata !DIExpression()) #30, !dbg !1237
  call void @llvm.dbg.value(metadata i64 0, metadata !1114, metadata !DIExpression()) #30, !dbg !1237
  call void @llvm.dbg.value(metadata i8* %321, metadata !1111, metadata !DIExpression()) #30, !dbg !1237
  %322 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1244, !tbaa !710
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %322, metadata !1154, metadata !DIExpression()) #30, !dbg !1245
  %323 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %322, i64 0, i32 0, !dbg !1247
  %324 = load i32, i32* %323, align 8, !dbg !1247, !tbaa !1163
  %325 = and i32 %324, 16, !dbg !1248
  %326 = icmp eq i32 %325, 0, !dbg !1248
  br i1 %326, label %327, label %428, !dbg !1249

327:                                              ; preds = %320
  %328 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 1, !dbg !1250
  %329 = load i64, i64* %328, align 8, !dbg !1250, !tbaa !1175
  %330 = ptrtoint i8* %321 to i64, !dbg !1251
  %331 = xor i64 %330, -1, !dbg !1252
  %332 = add i64 %329, %331, !dbg !1252
  %333 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 2, !dbg !1253
  %334 = load i8*, i8** %333, align 8, !dbg !1253, !tbaa !1179
  %335 = ptrtoint i8* %334 to i64, !dbg !1251
  %336 = add i64 %332, %335, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %336, metadata !1113, metadata !DIExpression()) #30, !dbg !1237
  %337 = zext i8 %28 to i32
  br label %338, !dbg !1249

338:                                              ; preds = %416, %327
  %339 = phi %struct._IO_FILE* [ %322, %327 ], [ %423, %416 ]
  %340 = phi %struct.linebuffer* [ %3, %327 ], [ %422, %416 ]
  %341 = phi %struct.linebuffer* [ %4, %327 ], [ %421, %416 ]
  %342 = phi i8 [ 1, %327 ], [ %420, %416 ]
  %343 = phi i64 [ 0, %327 ], [ %419, %416 ]
  %344 = phi i64 [ %336, %327 ], [ %418, %416 ]
  %345 = phi i8* [ %321, %327 ], [ %417, %416 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %340, metadata !1088, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.linebuffer* %341, metadata !1090, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata i8 %342, metadata !1115, metadata !DIExpression()) #30, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %343, metadata !1114, metadata !DIExpression()) #30, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %344, metadata !1113, metadata !DIExpression()) #30, !dbg !1237
  call void @llvm.dbg.value(metadata i8* %345, metadata !1111, metadata !DIExpression()) #30, !dbg !1237
  %346 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %340, %struct._IO_FILE* nonnull %339, i8 signext %28) #30, !dbg !1255
  %347 = icmp eq %struct.linebuffer* %346, null, !dbg !1257
  br i1 %347, label %348, label %354, !dbg !1258

348:                                              ; preds = %338
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1259, !tbaa !710
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %349, metadata !1262, metadata !DIExpression()) #30, !dbg !1265
  %350 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %349, i64 0, i32 0, !dbg !1267
  %351 = load i32, i32* %350, align 8, !dbg !1267, !tbaa !1163
  %352 = and i32 %351, 32, !dbg !1259
  %353 = icmp eq i32 %352, 0, !dbg !1259
  br i1 %353, label %428, label %431

354:                                              ; preds = %338
  %355 = call fastcc i8* @find_field(%struct.linebuffer* %340) #31, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %355, metadata !1118, metadata !DIExpression()) #30, !dbg !1269
  %356 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %340, i64 0, i32 1, !dbg !1270
  %357 = load i64, i64* %356, align 8, !dbg !1270, !tbaa !1175
  %358 = add i64 %357, -1, !dbg !1271
  %359 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %340, i64 0, i32 2, !dbg !1272
  %360 = load i8*, i8** %359, align 8, !dbg !1272, !tbaa !1179
  %361 = ptrtoint i8* %355 to i64, !dbg !1273
  %362 = ptrtoint i8* %360 to i64, !dbg !1273
  %363 = sub i64 %362, %361, !dbg !1273
  %364 = add i64 %358, %363, !dbg !1274
  call void @llvm.dbg.value(metadata i64 %364, metadata !1119, metadata !DIExpression()) #30, !dbg !1269
  call void @llvm.dbg.value(metadata i8* %355, metadata !1185, metadata !DIExpression()) #30, !dbg !1275
  call void @llvm.dbg.value(metadata i8* %345, metadata !1190, metadata !DIExpression()) #30, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %364, metadata !1191, metadata !DIExpression()) #30, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %344, metadata !1192, metadata !DIExpression()) #30, !dbg !1275
  %365 = load i64, i64* @check_chars, align 8, !dbg !1277, !tbaa !889
  %366 = icmp ult i64 %365, %364, !dbg !1278
  %367 = select i1 %366, i64 %365, i64 %364, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %367, metadata !1191, metadata !DIExpression()) #30, !dbg !1275
  %368 = icmp ult i64 %365, %344, !dbg !1280
  %369 = select i1 %368, i64 %365, i64 %344, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %369, metadata !1192, metadata !DIExpression()) #30, !dbg !1275
  %370 = load i1, i1* @ignore_case, align 1, !dbg !1282
  %371 = icmp eq i64 %367, %369, !dbg !1283
  br i1 %370, label %372, label %376, !dbg !1284

372:                                              ; preds = %354
  br i1 %371, label %373, label %380, !dbg !1285

373:                                              ; preds = %372
  %374 = call i32 @memcasecmp(i8* %355, i8* %345, i64 %367) #31, !dbg !1286
  %375 = icmp ne i32 %374, 0, !dbg !1285
  br label %380, !dbg !1285

376:                                              ; preds = %354
  br i1 %371, label %377, label %380, !dbg !1287

377:                                              ; preds = %376
  %378 = call i32 @bcmp(i8* %355, i8* %345, i64 %367) #30, !dbg !1288
  %379 = icmp ne i32 %378, 0, !dbg !1287
  br label %380, !dbg !1287

380:                                              ; preds = %377, %376, %373, %372
  %381 = phi i1 [ true, %372 ], [ %375, %373 ], [ true, %376 ], [ %379, %377 ], !dbg !1283
  %382 = xor i1 %381, true, !dbg !1289
  call void @llvm.dbg.value(metadata i1 %382, metadata !1116, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !1269
  %383 = zext i1 %382 to i64, !dbg !1290
  %384 = add i64 %343, %383, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %384, metadata !1114, metadata !DIExpression()) #30, !dbg !1237
  %385 = icmp eq i64 %384, -1, !dbg !1292
  %386 = select i1 %385, i64 -2, i64 %384, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %386, metadata !1114, metadata !DIExpression()) #30, !dbg !1237
  %387 = load i32, i32* @delimit_groups, align 4, !dbg !1295, !tbaa !898
  %388 = icmp eq i32 %387, 0, !dbg !1297
  br i1 %388, label %410, label %389, !dbg !1298

389:                                              ; preds = %380
  br i1 %381, label %390, label %393, !dbg !1299

390:                                              ; preds = %389
  %391 = icmp eq i64 %386, 0, !dbg !1301
  %392 = select i1 %391, i8 %342, i8 0, !dbg !1305
  call void @llvm.dbg.value(metadata i8 %342, metadata !1115, metadata !DIExpression()) #30, !dbg !1237
  br label %413, !dbg !1306

393:                                              ; preds = %389
  %394 = icmp eq i64 %386, 1, !dbg !1307
  br i1 %394, label %395, label %411, !dbg !1309

395:                                              ; preds = %393
  switch i32 %387, label %411 [
    i32 1, label %399
    i32 2, label %396
  ], !dbg !1310

396:                                              ; preds = %395
  %397 = and i8 %342, 1, !dbg !1313
  %398 = icmp eq i8 %397, 0, !dbg !1313
  br i1 %398, label %399, label %411, !dbg !1314

399:                                              ; preds = %396, %395
  call void @llvm.dbg.value(metadata i8 %28, metadata !1215, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !1315
  %400 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1317, !tbaa !710
  %401 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %400, i64 0, i32 5, !dbg !1317
  %402 = load i8*, i8** %401, align 8, !dbg !1317, !tbaa !1223
  %403 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %400, i64 0, i32 6, !dbg !1317
  %404 = load i8*, i8** %403, align 8, !dbg !1317, !tbaa !1224
  %405 = icmp ult i8* %402, %404, !dbg !1317
  br i1 %405, label %408, label %406, !dbg !1317, !prof !1225

406:                                              ; preds = %399
  call void @llvm.dbg.value(metadata i32 %337, metadata !1215, metadata !DIExpression()) #30, !dbg !1315
  %407 = call i32 @__overflow(%struct._IO_FILE* nonnull %400, i32 %337) #30, !dbg !1317
  br label %411, !dbg !1317

408:                                              ; preds = %399
  %409 = getelementptr inbounds i8, i8* %402, i64 1, !dbg !1317
  store i8* %409, i8** %401, align 8, !dbg !1317, !tbaa !1223
  store i8 %28, i8* %402, align 1, !dbg !1317, !tbaa !898
  br label %411, !dbg !1317

410:                                              ; preds = %380
  call void @llvm.dbg.value(metadata i8 %342, metadata !1115, metadata !DIExpression()) #30, !dbg !1237
  br i1 %381, label %413, label %411, !dbg !1306

411:                                              ; preds = %410, %408, %406, %396, %395, %393
  %412 = load i1, i1* @output_later_repeated, align 1, !dbg !1318
  br i1 %412, label %413, label %416, !dbg !1319

413:                                              ; preds = %411, %410, %390
  %414 = phi i8 [ %342, %411 ], [ %342, %410 ], [ %392, %390 ]
  call fastcc void @writeline(%struct.linebuffer* %341, i1 zeroext %382, i64 %386) #30, !dbg !1320
  call void @llvm.dbg.value(metadata %struct.linebuffer* %340, metadata !1090, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.linebuffer* %341, metadata !1088, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %355, metadata !1111, metadata !DIExpression()) #30, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %364, metadata !1113, metadata !DIExpression()) #30, !dbg !1237
  %415 = select i1 %381, i64 0, i64 %386, !dbg !1321
  br label %416, !dbg !1321

416:                                              ; preds = %413, %411
  %417 = phi i8* [ %345, %411 ], [ %355, %413 ], !dbg !1237
  %418 = phi i64 [ %344, %411 ], [ %364, %413 ], !dbg !1237
  %419 = phi i64 [ %386, %411 ], [ %415, %413 ], !dbg !1237
  %420 = phi i8 [ %342, %411 ], [ %414, %413 ], !dbg !1322
  %421 = phi %struct.linebuffer* [ %341, %411 ], [ %340, %413 ], !dbg !1125
  %422 = phi %struct.linebuffer* [ %340, %411 ], [ %341, %413 ], !dbg !1125
  call void @llvm.dbg.value(metadata %struct.linebuffer* %422, metadata !1088, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.linebuffer* %421, metadata !1090, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata i8 %420, metadata !1115, metadata !DIExpression()) #30, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %419, metadata !1114, metadata !DIExpression()) #30, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %418, metadata !1113, metadata !DIExpression()) #30, !dbg !1237
  call void @llvm.dbg.value(metadata i8* %417, metadata !1111, metadata !DIExpression()) #30, !dbg !1237
  %423 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1244, !tbaa !710
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %423, metadata !1154, metadata !DIExpression()) #30, !dbg !1245
  %424 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %423, i64 0, i32 0, !dbg !1247
  %425 = load i32, i32* %424, align 8, !dbg !1247, !tbaa !1163
  %426 = and i32 %425, 16, !dbg !1248
  %427 = icmp eq i32 %426, 0, !dbg !1248
  br i1 %427, label %338, label %428, !dbg !1249

428:                                              ; preds = %416, %348, %320
  %429 = phi i64 [ %343, %348 ], [ 0, %320 ], [ %419, %416 ]
  %430 = phi %struct.linebuffer* [ %341, %348 ], [ %4, %320 ], [ %421, %416 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %430, metadata !1090, metadata !DIExpression()) #30, !dbg !1125
  call void @llvm.dbg.value(metadata i64 %429, metadata !1114, metadata !DIExpression()) #30, !dbg !1237
  call fastcc void @writeline(%struct.linebuffer* %430, i1 zeroext false, i64 %429) #30, !dbg !1323
  br label %431, !dbg !1324

431:                                              ; preds = %428, %348, %316, %314, %312, %302, %299
  call void @llvm.dbg.label(metadata !1124) #30, !dbg !1325
  %432 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1326, !tbaa !710
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %432, metadata !1262, metadata !DIExpression()) #30, !dbg !1328
  %433 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %432, i64 0, i32 0, !dbg !1330
  %434 = load i32, i32* %433, align 8, !dbg !1330, !tbaa !1163
  %435 = and i32 %434, 32, !dbg !1326
  %436 = icmp eq i32 %435, 0, !dbg !1326
  br i1 %436, label %437, label %440, !dbg !1331

437:                                              ; preds = %431
  %438 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %432) #30, !dbg !1332
  %439 = icmp eq i32 %438, 0, !dbg !1333
  br i1 %439, label %443, label %440, !dbg !1334

440:                                              ; preds = %437, %431
  %441 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0), i32 5) #30, !dbg !1335
  %442 = call i8* @quotearg_style(i32 4, i8* %177) #30, !dbg !1335
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %441, i8* %442) #30, !dbg !1335
  unreachable, !dbg !1335

443:                                              ; preds = %437
  %444 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %3, i64 0, i32 2, !dbg !1336
  %445 = load i8*, i8** %444, align 8, !dbg !1336, !tbaa !1179
  call void @free(i8* %445) #30, !dbg !1337
  %446 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 2, !dbg !1338
  %447 = load i8*, i8** %446, align 8, !dbg !1338, !tbaa !1179
  call void @free(i8* %447) #30, !dbg !1339
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %180) #30, !dbg !1340
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %179) #30, !dbg !1340
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #30, !dbg !1341
  ret i32 0, !dbg !1341
}

; Function Attrs: nofree nounwind readonly
declare !dbg !1342 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1346 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1349 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1350 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1353 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1359 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define internal fastcc i8* @find_field(%struct.linebuffer* nocapture readonly %0) unnamed_addr #11 !dbg !1363 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1369, metadata !DIExpression()), !dbg !1374
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1375
  %3 = load i8*, i8** %2, align 8, !dbg !1375, !tbaa !1179
  call void @llvm.dbg.value(metadata i8* %3, metadata !1371, metadata !DIExpression()), !dbg !1374
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1376
  %5 = load i64, i64* %4, align 8, !dbg !1376, !tbaa !1175
  %6 = add i64 %5, -1, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %6, metadata !1372, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 0, metadata !1373, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 0, metadata !1370, metadata !DIExpression()), !dbg !1374
  %7 = load i64, i64* @skip_fields, align 8, !dbg !1378, !tbaa !889
  %8 = icmp ne i64 %7, 0, !dbg !1381
  %9 = icmp ne i64 %6, 0, !dbg !1382
  %10 = and i1 %9, %8, !dbg !1382
  br i1 %10, label %11, label %58, !dbg !1383

11:                                               ; preds = %1, %52
  %12 = phi i64 [ %53, %52 ], [ 0, %1 ]
  %13 = phi i64 [ %54, %52 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !1373, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %13, metadata !1370, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %12, metadata !1373, metadata !DIExpression()), !dbg !1374
  %14 = icmp ult i64 %12, %6, !dbg !1384
  br i1 %14, label %15, label %32, !dbg !1386

15:                                               ; preds = %11
  %16 = tail call i16** @__ctype_b_loc() #34, !dbg !1374
  %17 = load i16*, i16** %16, align 8, !tbaa !710
  br label %18, !dbg !1386

18:                                               ; preds = %15, %29
  %19 = phi i64 [ %12, %15 ], [ %30, %29 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !1373, metadata !DIExpression()), !dbg !1374
  %20 = getelementptr inbounds i8, i8* %3, i64 %19, !dbg !1387
  %21 = load i8, i8* %20, align 1, !dbg !1387, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %21, metadata !1388, metadata !DIExpression()) #30, !dbg !1393
  %22 = zext i8 %21 to i64, !dbg !1395
  %23 = getelementptr inbounds i16, i16* %17, i64 %22, !dbg !1395
  %24 = load i16, i16* %23, align 2, !dbg !1395, !tbaa !1396
  %25 = and i16 %24, 1, !dbg !1395
  %26 = icmp ne i16 %25, 0, !dbg !1395
  %27 = icmp eq i8 %21, 10, !dbg !1397
  %28 = or i1 %27, %26, !dbg !1397
  br i1 %28, label %29, label %32, !dbg !1398

29:                                               ; preds = %18
  %30 = add i64 %19, 1, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %30, metadata !1373, metadata !DIExpression()), !dbg !1374
  %31 = icmp eq i64 %30, %6, !dbg !1384
  br i1 %31, label %58, label %18, !dbg !1386, !llvm.loop !1400

32:                                               ; preds = %18, %11
  %33 = phi i64 [ %12, %11 ], [ %19, %18 ], !dbg !1374
  call void @llvm.dbg.value(metadata i64 %33, metadata !1373, metadata !DIExpression()), !dbg !1374
  %34 = icmp ult i64 %33, %6, !dbg !1401
  br i1 %34, label %35, label %52, !dbg !1402

35:                                               ; preds = %32
  %36 = tail call i16** @__ctype_b_loc() #34, !dbg !1374
  %37 = load i16*, i16** %36, align 8, !tbaa !710
  br label %38, !dbg !1402

38:                                               ; preds = %35, %49
  %39 = phi i64 [ %33, %35 ], [ %50, %49 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1373, metadata !DIExpression()), !dbg !1374
  %40 = getelementptr inbounds i8, i8* %3, i64 %39, !dbg !1403
  %41 = load i8, i8* %40, align 1, !dbg !1403, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %41, metadata !1388, metadata !DIExpression()) #30, !dbg !1404
  %42 = zext i8 %41 to i64, !dbg !1406
  %43 = getelementptr inbounds i16, i16* %37, i64 %42, !dbg !1406
  %44 = load i16, i16* %43, align 2, !dbg !1406, !tbaa !1396
  %45 = and i16 %44, 1, !dbg !1406
  %46 = icmp ne i16 %45, 0, !dbg !1406
  %47 = icmp eq i8 %41, 10, !dbg !1407
  %48 = or i1 %47, %46, !dbg !1407
  br i1 %48, label %52, label %49, !dbg !1408

49:                                               ; preds = %38
  %50 = add i64 %39, 1, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %50, metadata !1373, metadata !DIExpression()), !dbg !1374
  %51 = icmp eq i64 %50, %6, !dbg !1401
  br i1 %51, label %58, label %38, !dbg !1402, !llvm.loop !1410

52:                                               ; preds = %38, %32
  %53 = phi i64 [ %33, %32 ], [ %39, %38 ], !dbg !1374
  %54 = add nuw i64 %13, 1, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %53, metadata !1373, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %54, metadata !1370, metadata !DIExpression()), !dbg !1374
  %55 = icmp ult i64 %54, %7, !dbg !1381
  %56 = icmp ugt i64 %6, %53, !dbg !1382
  %57 = and i1 %56, %55, !dbg !1382
  br i1 %57, label %11, label %58, !dbg !1383, !llvm.loop !1412

58:                                               ; preds = %52, %29, %49, %1
  %59 = phi i64 [ 0, %1 ], [ %6, %49 ], [ %6, %29 ], [ %53, %52 ], !dbg !1414
  %60 = load i64, i64* @skip_chars, align 8, !dbg !1415, !tbaa !889
  %61 = sub i64 %6, %59, !dbg !1415
  %62 = icmp ult i64 %60, %61, !dbg !1415
  %63 = select i1 %62, i64 %60, i64 %61, !dbg !1415
  %64 = add i64 %63, %59, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %64, metadata !1373, metadata !DIExpression()), !dbg !1374
  %65 = getelementptr inbounds i8, i8* %3, i64 %64, !dbg !1417
  ret i8* %65, !dbg !1418
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #12

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1419 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @writeline(%struct.linebuffer* nocapture readonly %0, i1 zeroext %1, i64 %2) unnamed_addr #8 !dbg !1422 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1426, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i1 %1, metadata !1427, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %2, metadata !1428, metadata !DIExpression()), !dbg !1433
  %4 = icmp eq i64 %2, 0, !dbg !1434
  br i1 %4, label %5, label %7, !dbg !1436

5:                                                ; preds = %3
  %6 = load i1, i1* @output_unique, align 1, !dbg !1437
  br i1 %6, label %12, label %24, !dbg !1438

7:                                                ; preds = %3
  br i1 %1, label %10, label %8, !dbg !1436

8:                                                ; preds = %7
  %9 = load i1, i1* @output_first_repeated, align 1, !dbg !1439
  br i1 %9, label %12, label %24, !dbg !1440

10:                                               ; preds = %7
  %11 = load i1, i1* @output_later_repeated, align 1, !dbg !1441
  br i1 %11, label %12, label %24, !dbg !1436

12:                                               ; preds = %10, %8, %5
  %13 = load i1, i1* @countmode, align 4, !dbg !1442
  br i1 %13, label %17, label %14, !dbg !1444

14:                                               ; preds = %12
  %15 = add i64 %2, 1, !dbg !1445
  %16 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), i64 %15) #30, !dbg !1445
  br label %17, !dbg !1445

17:                                               ; preds = %14, %12
  %18 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1446
  %19 = load i64, i64* %18, align 8, !dbg !1446, !tbaa !1175
  %20 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1446
  %21 = load i8*, i8** %20, align 8, !dbg !1446, !tbaa !1179
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1446, !tbaa !710
  %23 = tail call i64 @fwrite_unlocked(i8* %21, i64 1, i64 %19, %struct._IO_FILE* %22), !dbg !1446
  br label %24, !dbg !1446

24:                                               ; preds = %17, %5, %8, %10
  ret void, !dbg !1447
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #8 !dbg !1448 {
  tail call void @usage(i32 1) #30, !dbg !1449
  ret void, !dbg !1450
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @argmatch(i8* nocapture readonly %0, i8** nocapture readonly %1, i8* readonly %2, i64 %3) local_unnamed_addr #11 !dbg !1451 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1457, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8** %1, metadata !1458, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8* %2, metadata !1459, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %3, metadata !1460, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 -1, metadata !1463, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 0, metadata !1464, metadata !DIExpression()), !dbg !1465
  %5 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #31, !dbg !1466
  call void @llvm.dbg.value(metadata i64 %5, metadata !1462, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 0, metadata !1461, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 0, metadata !1464, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 -1, metadata !1463, metadata !DIExpression()), !dbg !1465
  %6 = load i8*, i8** %1, align 8, !dbg !1467, !tbaa !710
  %7 = icmp eq i8* %6, null, !dbg !1470
  br i1 %7, label %38, label %8, !dbg !1470

8:                                                ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10, !dbg !1470

10:                                               ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  call void @llvm.dbg.value(metadata i8 %12, metadata !1464, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %13, metadata !1463, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %14, metadata !1461, metadata !DIExpression()), !dbg !1465
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #31, !dbg !1471
  %16 = icmp eq i32 %15, 0, !dbg !1471
  br i1 %16, label %17, label %31, !dbg !1474

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #31, !dbg !1475
  %19 = icmp eq i64 %18, %5, !dbg !1478
  br i1 %19, label %44, label %20, !dbg !1479

20:                                               ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !1480
  br i1 %21, label %31, label %22, !dbg !1482

22:                                               ; preds = %20
  br i1 %9, label %30, label %23, !dbg !1483

23:                                               ; preds = %22
  %24 = mul i64 %13, %3, !dbg !1486
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1487
  %26 = mul i64 %14, %3, !dbg !1488
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !1489
  %28 = tail call i32 @bcmp(i8* nonnull %25, i8* nonnull %27, i64 %3), !dbg !1490
  %29 = icmp eq i32 %28, 0, !dbg !1490
  br i1 %29, label %31, label %30, !dbg !1491

30:                                               ; preds = %23, %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1464, metadata !DIExpression()), !dbg !1465
  br label %31, !dbg !1492

31:                                               ; preds = %20, %10, %30, %23
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ], !dbg !1465
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ], !dbg !1465
  call void @llvm.dbg.value(metadata i8 %33, metadata !1464, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %32, metadata !1463, metadata !DIExpression()), !dbg !1465
  %34 = add i64 %14, 1, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %34, metadata !1461, metadata !DIExpression()), !dbg !1465
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !1467
  %36 = load i8*, i8** %35, align 8, !dbg !1467, !tbaa !710
  %37 = icmp eq i8* %36, null, !dbg !1470
  br i1 %37, label %38, label %10, !dbg !1470, !llvm.loop !1495

38:                                               ; preds = %31, %4
  %39 = phi i64 [ -1, %4 ], [ %32, %31 ], !dbg !1497
  %40 = phi i8 [ 0, %4 ], [ %33, %31 ], !dbg !1498
  %41 = and i8 %40, 1, !dbg !1499
  %42 = icmp eq i8 %41, 0, !dbg !1499
  %43 = select i1 %42, i64 %39, i64 -2, !dbg !1501
  ret i64 %43, !dbg !1501

44:                                               ; preds = %17
  ret i64 %14, !dbg !1502
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_invalid(i8* %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !1503 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1507, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8* %1, metadata !1508, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %2, metadata !1509, metadata !DIExpression()), !dbg !1511
  %4 = icmp eq i64 %2, -1, !dbg !1512
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.76, i64 0, i64 0), !dbg !1513
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #30, !dbg !1511
  call void @llvm.dbg.value(metadata i8* %6, metadata !1510, metadata !DIExpression()), !dbg !1511
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #30, !dbg !1514
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #30, !dbg !1515
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #30, !dbg !1516
  ret void, !dbg !1517
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_valid(i8** nocapture readonly %0, i8* nocapture readonly %1, i64 %2) local_unnamed_addr #8 !dbg !1518 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1522, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8* %1, metadata !1523, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %2, metadata !1524, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8* null, metadata !1526, metadata !DIExpression()), !dbg !1527
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.77, i64 0, i64 0), i32 5) #30, !dbg !1528
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1528, !tbaa !710
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !1528
  call void @llvm.dbg.value(metadata i64 0, metadata !1525, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8* null, metadata !1526, metadata !DIExpression()), !dbg !1527
  %7 = load i8*, i8** %0, align 8, !dbg !1529, !tbaa !710
  %8 = icmp eq i8* %7, null, !dbg !1532
  br i1 %8, label %35, label %9, !dbg !1532

9:                                                ; preds = %3, %29
  %10 = phi i8* [ %33, %29 ], [ %7, %3 ]
  %11 = phi i8* [ %30, %29 ], [ null, %3 ]
  %12 = phi i64 [ %31, %29 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !1526, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %12, metadata !1525, metadata !DIExpression()), !dbg !1527
  %13 = icmp eq i64 %12, 0, !dbg !1533
  br i1 %13, label %19, label %14, !dbg !1535

14:                                               ; preds = %9
  %15 = mul i64 %12, %2, !dbg !1536
  %16 = getelementptr inbounds i8, i8* %1, i64 %15, !dbg !1537
  %17 = tail call i32 @bcmp(i8* %11, i8* %16, i64 %2), !dbg !1538
  %18 = icmp eq i32 %17, 0, !dbg !1538
  br i1 %18, label %25, label %19, !dbg !1539

19:                                               ; preds = %9, %14
  %20 = phi i64 [ %15, %14 ], [ 0, %9 ], !dbg !1540
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1542, !tbaa !710
  %22 = tail call i8* @quote(i8* nonnull %10) #30, !dbg !1542
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.78, i64 0, i64 0), i8* %22) #30, !dbg !1542
  %24 = getelementptr inbounds i8, i8* %1, i64 %20, !dbg !1543
  call void @llvm.dbg.value(metadata i8* %24, metadata !1526, metadata !DIExpression()), !dbg !1527
  br label %29, !dbg !1544

25:                                               ; preds = %14
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1545, !tbaa !710
  %27 = tail call i8* @quote(i8* nonnull %10) #30, !dbg !1545
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %26, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.79, i64 0, i64 0), i8* %27) #30, !dbg !1545
  br label %29

29:                                               ; preds = %19, %25
  %30 = phi i8* [ %24, %19 ], [ %11, %25 ], !dbg !1527
  call void @llvm.dbg.value(metadata i8* %30, metadata !1526, metadata !DIExpression()), !dbg !1527
  %31 = add i64 %12, 1, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %31, metadata !1525, metadata !DIExpression()), !dbg !1527
  %32 = getelementptr inbounds i8*, i8** %0, i64 %31, !dbg !1529
  %33 = load i8*, i8** %32, align 8, !dbg !1529, !tbaa !710
  %34 = icmp eq i8* %33, null, !dbg !1532
  br i1 %34, label %35, label %9, !dbg !1532, !llvm.loop !1548

35:                                               ; preds = %29, %3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1550, !tbaa !710
  call void @llvm.dbg.value(metadata i32 10, metadata !1551, metadata !DIExpression()) #30, !dbg !1591
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, metadata !1590, metadata !DIExpression()) #30, !dbg !1591
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !1593
  %38 = load i8*, i8** %37, align 8, !dbg !1593, !tbaa !1223
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !1593
  %40 = load i8*, i8** %39, align 8, !dbg !1593, !tbaa !1224
  %41 = icmp ult i8* %38, %40, !dbg !1593
  br i1 %41, label %44, label %42, !dbg !1593, !prof !1225

42:                                               ; preds = %35
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #30, !dbg !1593
  br label %46, !dbg !1593

44:                                               ; preds = %35
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1593
  store i8* %45, i8** %37, align 8, !dbg !1593, !tbaa !1223
  store i8 10, i8* %38, align 1, !dbg !1593, !tbaa !898
  br label %46, !dbg !1593

46:                                               ; preds = %42, %44
  ret void, !dbg !1594
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @__xargmatch_internal(i8* %0, i8* %1, i8** nocapture readonly %2, i8* readonly %3, i64 %4, void ()* nocapture %5) local_unnamed_addr #8 !dbg !1595 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1599, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8* %1, metadata !1600, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8** %2, metadata !1601, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8* %3, metadata !1602, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %4, metadata !1603, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata void ()* %5, metadata !1604, metadata !DIExpression()), !dbg !1606
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #31, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %7, metadata !1605, metadata !DIExpression()), !dbg !1606
  %8 = icmp sgt i64 %7, -1, !dbg !1608
  br i1 %8, label %15, label %9, !dbg !1610

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %0, metadata !1507, metadata !DIExpression()) #30, !dbg !1611
  call void @llvm.dbg.value(metadata i8* %1, metadata !1508, metadata !DIExpression()) #30, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %7, metadata !1509, metadata !DIExpression()) #30, !dbg !1611
  %10 = icmp eq i64 %7, -1, !dbg !1613
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.76, i64 0, i64 0), !dbg !1614
  %12 = tail call i8* @dcgettext(i8* null, i8* %11, i32 5) #30, !dbg !1611
  call void @llvm.dbg.value(metadata i8* %12, metadata !1510, metadata !DIExpression()) #30, !dbg !1611
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #30, !dbg !1615
  %14 = tail call i8* @quote_n(i32 1, i8* %0) #30, !dbg !1616
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %13, i8* %14) #30, !dbg !1617
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4), !dbg !1618
  tail call void %5() #30, !dbg !1619
  br label %15, !dbg !1620

15:                                               ; preds = %6, %9
  %16 = phi i64 [ -1, %9 ], [ %7, %6 ], !dbg !1606
  ret i64 %16, !dbg !1621
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i8* @argmatch_to_argument(i8* nocapture readonly %0, i8** nocapture readonly %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #11 !dbg !1622 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1626, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8** %1, metadata !1627, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8* %2, metadata !1628, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %3, metadata !1629, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1631
  %5 = load i8*, i8** %1, align 8, !dbg !1632, !tbaa !710
  %6 = icmp eq i8* %5, null, !dbg !1635
  br i1 %6, label %21, label %7, !dbg !1635

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1631
  %8 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %3), !dbg !1636
  %9 = icmp eq i32 %8, 0, !dbg !1636
  call void @llvm.dbg.value(metadata i64 1, metadata !1630, metadata !DIExpression()), !dbg !1631
  br i1 %9, label %21, label %10, !dbg !1638

10:                                               ; preds = %7, %15
  %11 = phi i64 [ %20, %15 ], [ 1, %7 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1630, metadata !DIExpression()), !dbg !1631
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !1632
  %13 = load i8*, i8** %12, align 8, !dbg !1632, !tbaa !710
  %14 = icmp eq i8* %13, null, !dbg !1635
  br i1 %14, label %21, label %15, !dbg !1635, !llvm.loop !1639

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !1630, metadata !DIExpression()), !dbg !1631
  %16 = mul i64 %11, %3, !dbg !1641
  %17 = getelementptr inbounds i8, i8* %2, i64 %16, !dbg !1642
  %18 = tail call i32 @bcmp(i8* %0, i8* %17, i64 %3), !dbg !1636
  %19 = icmp eq i32 %18, 0, !dbg !1636
  %20 = add i64 %11, 1, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %20, metadata !1630, metadata !DIExpression()), !dbg !1631
  br i1 %19, label %21, label %10, !dbg !1638, !llvm.loop !1639

21:                                               ; preds = %10, %15, %7, %4
  %22 = phi i8* [ null, %4 ], [ %5, %7 ], [ %13, %15 ], [ null, %10 ], !dbg !1632
  ret i8* %22, !dbg !1644
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #14 !dbg !1645 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1647, metadata !DIExpression()), !dbg !1648
  store i8* %0, i8** @file_name, align 8, !dbg !1649, !tbaa !710
  ret void, !dbg !1650
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #14 !dbg !1651 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1655, metadata !DIExpression()), !dbg !1656
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1657, !tbaa !1658
  ret void, !dbg !1660
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1661 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1666, !tbaa !710
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #30, !dbg !1667
  %3 = icmp eq i32 %2, 0, !dbg !1668
  br i1 %3, label %22, label %4, !dbg !1669

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1670, !tbaa !1658, !range !1671
  %6 = icmp eq i8 %5, 0, !dbg !1670
  br i1 %6, label %11, label %7, !dbg !1672

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #34, !dbg !1673
  %9 = load i32, i32* %8, align 4, !dbg !1673, !tbaa !914
  %10 = icmp eq i32 %9, 32, !dbg !1674
  br i1 %10, label %22, label %11, !dbg !1675

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i64 0, i64 0), i32 5) #30, !dbg !1676
  call void @llvm.dbg.value(metadata i8* %12, metadata !1663, metadata !DIExpression()), !dbg !1677
  %13 = load i8*, i8** @file_name, align 8, !dbg !1678, !tbaa !710
  %14 = icmp eq i8* %13, null, !dbg !1678
  %15 = tail call i32* @__errno_location() #34, !dbg !1680
  %16 = load i32, i32* %15, align 4, !dbg !1680, !tbaa !914
  br i1 %14, label %19, label %17, !dbg !1681

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #30, !dbg !1682
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.85, i64 0, i64 0), i8* %18, i8* %12) #30, !dbg !1683
  br label %20, !dbg !1683

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.86, i64 0, i64 0), i8* %12) #30, !dbg !1684
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1685, !tbaa !914
  tail call void @_exit(i32 %21) #32, !dbg !1686
  unreachable, !dbg !1686

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1687, !tbaa !710
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #30, !dbg !1689
  %25 = icmp eq i32 %24, 0, !dbg !1690
  br i1 %25, label %28, label %26, !dbg !1691

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1692, !tbaa !914
  tail call void @_exit(i32 %27) #32, !dbg !1693
  unreachable, !dbg !1693

28:                                               ; preds = %22
  ret void, !dbg !1694
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1695 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1701, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %1, metadata !1702, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %2, metadata !1703, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %3, metadata !1704, metadata !DIExpression()), !dbg !1707
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #30, !dbg !1708
  call void @llvm.dbg.value(metadata i32 %5, metadata !1705, metadata !DIExpression()), !dbg !1709
  ret void, !dbg !1710
}

; Function Attrs: nounwind
declare !dbg !1711 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1715 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1753, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %1, metadata !1754, metadata !DIExpression()), !dbg !1755
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1756
  br i1 %3, label %7, label %4, !dbg !1758

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #30, !dbg !1759
  call void @llvm.dbg.value(metadata i32 %5, metadata !1701, metadata !DIExpression()) #30, !dbg !1760
  call void @llvm.dbg.value(metadata i64 0, metadata !1702, metadata !DIExpression()) #30, !dbg !1760
  call void @llvm.dbg.value(metadata i64 0, metadata !1703, metadata !DIExpression()) #30, !dbg !1760
  call void @llvm.dbg.value(metadata i32 %1, metadata !1704, metadata !DIExpression()) #30, !dbg !1760
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #30, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %6, metadata !1705, metadata !DIExpression()) #30, !dbg !1763
  br label %7, !dbg !1764

7:                                                ; preds = %4, %2
  ret void, !dbg !1765
}

; Function Attrs: nofree nounwind
declare !dbg !1766 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @freopen_safer(i8* %0, i8* %1, %struct._IO_FILE* %2) local_unnamed_addr #8 !dbg !1769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1807, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* %1, metadata !1808, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1809, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 0, metadata !1810, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 0, metadata !1812, metadata !DIExpression()), !dbg !1814
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #30, !dbg !1815
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %54
  ], !dbg !1816

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #30, !dbg !1817
  %7 = icmp ne i32 %6, 2, !dbg !1820
  %8 = zext i1 %7 to i8, !dbg !1821
  br label %9, !dbg !1821

9:                                                ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ], !dbg !1814
  call void @llvm.dbg.value(metadata i8 %10, metadata !1812, metadata !DIExpression()), !dbg !1814
  %11 = tail call i32 @dup2(i32 1, i32 1) #30, !dbg !1822
  %12 = icmp ne i32 %11, 1, !dbg !1824
  %13 = zext i1 %12 to i8, !dbg !1825
  br label %14, !dbg !1825

14:                                               ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ], !dbg !1814
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ], !dbg !1814
  call void @llvm.dbg.value(metadata i8 %16, metadata !1812, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %15, metadata !1811, metadata !DIExpression()), !dbg !1814
  %17 = tail call i32 @dup2(i32 0, i32 0) #30, !dbg !1826
  %18 = icmp eq i32 %17, 0, !dbg !1828
  call void @llvm.dbg.value(metadata i8 undef, metadata !1810, metadata !DIExpression()), !dbg !1814
  br i1 %18, label %27, label %19, !dbg !1829

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !1831, metadata !DIExpression()) #30, !dbg !1837
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i64 0, i64 0), i32 0) #30, !dbg !1839
  call void @llvm.dbg.value(metadata i32 %20, metadata !1836, metadata !DIExpression()) #30, !dbg !1837
  %21 = icmp eq i32 %20, 0, !dbg !1840
  %22 = icmp slt i32 %20, 1, !dbg !1842
  br i1 %22, label %26, label %23, !dbg !1842

23:                                               ; preds = %19
  %24 = tail call i32 @close(i32 %20) #30, !dbg !1843
  %25 = tail call i32* @__errno_location() #34, !dbg !1847
  store i32 9, i32* %25, align 4, !dbg !1848, !tbaa !914
  br label %26, !dbg !1849

26:                                               ; preds = %19, %23
  br i1 %21, label %27, label %59, !dbg !1850

27:                                               ; preds = %26, %14
  %28 = xor i1 %18, true, !dbg !1851
  %29 = icmp eq i8 %15, 0, !dbg !1851
  br i1 %29, label %39, label %30, !dbg !1853

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, metadata !1831, metadata !DIExpression()) #30, !dbg !1854
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i64 0, i64 0), i32 0) #30, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %31, metadata !1836, metadata !DIExpression()) #30, !dbg !1854
  %32 = icmp eq i32 %31, 1, !dbg !1857
  %33 = icmp slt i32 %31, 0
  %34 = or i1 %32, %33, !dbg !1858
  br i1 %34, label %38, label %35, !dbg !1858

35:                                               ; preds = %30
  %36 = tail call i32 @close(i32 %31) #30, !dbg !1859
  %37 = tail call i32* @__errno_location() #34, !dbg !1860
  store i32 9, i32* %37, align 4, !dbg !1861, !tbaa !914
  br label %38, !dbg !1862

38:                                               ; preds = %30, %35
  br i1 %32, label %39, label %59, !dbg !1863

39:                                               ; preds = %38, %27
  %40 = phi i8 [ 1, %38 ], [ 0, %27 ]
  %41 = icmp eq i8 %16, 0, !dbg !1864
  br i1 %41, label %54, label %42, !dbg !1866

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i32 2, metadata !1831, metadata !DIExpression()) #30, !dbg !1867
  %43 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i64 0, i64 0), i32 0) #30, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %43, metadata !1836, metadata !DIExpression()) #30, !dbg !1867
  %44 = icmp eq i32 %43, 2, !dbg !1870
  %45 = icmp slt i32 %43, 0
  %46 = or i1 %44, %45, !dbg !1871
  br i1 %46, label %50, label %47, !dbg !1871

47:                                               ; preds = %42
  %48 = tail call i32 @close(i32 %43) #30, !dbg !1872
  %49 = tail call i32* @__errno_location() #34, !dbg !1873
  store i32 9, i32* %49, align 4, !dbg !1874, !tbaa !914
  br label %50, !dbg !1875

50:                                               ; preds = %42, %47
  br i1 %44, label %54, label %51, !dbg !1876

51:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1809, metadata !DIExpression()), !dbg !1814
  %52 = tail call i32* @__errno_location() #34, !dbg !1877
  %53 = load i32, i32* %52, align 4, !dbg !1877, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %65, metadata !1813, metadata !DIExpression()), !dbg !1814
  br label %67, !dbg !1878

54:                                               ; preds = %3, %50, %39
  %55 = phi i8 [ 1, %50 ], [ 0, %39 ], [ 0, %3 ]
  %56 = phi i8 [ %40, %50 ], [ %40, %39 ], [ 0, %3 ]
  %57 = phi i1 [ %28, %50 ], [ %28, %39 ], [ false, %3 ]
  %58 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #30, !dbg !1879
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %58, metadata !1809, metadata !DIExpression()), !dbg !1814
  br label %59

59:                                               ; preds = %38, %26, %54
  %60 = phi i8 [ %55, %54 ], [ %16, %26 ], [ %16, %38 ]
  %61 = phi i8 [ %56, %54 ], [ %15, %26 ], [ 1, %38 ]
  %62 = phi i1 [ %57, %54 ], [ true, %26 ], [ %28, %38 ]
  %63 = phi %struct._IO_FILE* [ %58, %54 ], [ null, %26 ], [ null, %38 ], !dbg !1880
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1809, metadata !DIExpression()), !dbg !1814
  %64 = tail call i32* @__errno_location() #34, !dbg !1877
  %65 = load i32, i32* %64, align 4, !dbg !1877, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %65, metadata !1813, metadata !DIExpression()), !dbg !1814
  %66 = icmp eq i8 %60, 0, !dbg !1881
  br i1 %66, label %74, label %67, !dbg !1878

67:                                               ; preds = %51, %59
  %68 = phi i32 [ %53, %51 ], [ %65, %59 ]
  %69 = phi i32* [ %52, %51 ], [ %64, %59 ]
  %70 = phi %struct._IO_FILE* [ null, %51 ], [ %63, %59 ]
  %71 = phi i1 [ %28, %51 ], [ %62, %59 ]
  %72 = phi i8 [ %40, %51 ], [ %61, %59 ]
  %73 = tail call i32 @close(i32 2) #30, !dbg !1883
  br label %74, !dbg !1883

74:                                               ; preds = %67, %59
  %75 = phi i32 [ %68, %67 ], [ %65, %59 ]
  %76 = phi i32* [ %69, %67 ], [ %64, %59 ]
  %77 = phi %struct._IO_FILE* [ %70, %67 ], [ %63, %59 ]
  %78 = phi i1 [ %71, %67 ], [ %62, %59 ]
  %79 = phi i8 [ %72, %67 ], [ %61, %59 ]
  %80 = icmp eq i8 %79, 0, !dbg !1884
  br i1 %80, label %83, label %81, !dbg !1886

81:                                               ; preds = %74
  %82 = tail call i32 @close(i32 1) #30, !dbg !1887
  br label %83, !dbg !1887

83:                                               ; preds = %81, %74
  br i1 %78, label %84, label %86, !dbg !1888

84:                                               ; preds = %83
  %85 = tail call i32 @close(i32 0) #30, !dbg !1889
  br label %86, !dbg !1889

86:                                               ; preds = %84, %83
  %87 = icmp eq %struct._IO_FILE* %77, null, !dbg !1891
  br i1 %87, label %88, label %89, !dbg !1893

88:                                               ; preds = %86
  store i32 %75, i32* %76, align 4, !dbg !1894, !tbaa !914
  br label %89, !dbg !1895

89:                                               ; preds = %88, %86
  ret %struct._IO_FILE* %77, !dbg !1896
}

; Function Attrs: nounwind
declare !dbg !1897 i32 @dup2(i32, i32) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1901 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #16

declare !dbg !1904 i32 @close(i32) local_unnamed_addr #3

declare !dbg !1905 %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @initbuffer(%struct.linebuffer* %0) local_unnamed_addr #17 !dbg !1908 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1918, metadata !DIExpression()), !dbg !1919
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !1920
  call void @llvm.dbg.value(metadata i8* %2, metadata !1921, metadata !DIExpression()) #30, !dbg !1929
  call void @llvm.dbg.value(metadata i32 0, metadata !1927, metadata !DIExpression()) #30, !dbg !1929
  call void @llvm.dbg.value(metadata i64 24, metadata !1928, metadata !DIExpression()) #30, !dbg !1929
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(24) %2, i8 0, i64 24, i1 false) #30, !dbg !1931
  ret void, !dbg !1932
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer(%struct.linebuffer* %0, %struct._IO_FILE* %1) local_unnamed_addr #8 !dbg !1933 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1971, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1972, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1974, metadata !DIExpression()) #30, !dbg !1989
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1979, metadata !DIExpression()) #30, !dbg !1989
  call void @llvm.dbg.value(metadata i8 10, metadata !1980, metadata !DIExpression()) #30, !dbg !1989
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1991
  %4 = load i8*, i8** %3, align 8, !dbg !1991, !tbaa !1179
  call void @llvm.dbg.value(metadata i8* %4, metadata !1982, metadata !DIExpression()) #30, !dbg !1989
  call void @llvm.dbg.value(metadata i8* %4, metadata !1983, metadata !DIExpression()) #30, !dbg !1989
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1992
  call void @llvm.dbg.value(metadata i8* undef, metadata !1984, metadata !DIExpression()) #30, !dbg !1989
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1993, metadata !DIExpression()) #30, !dbg !1998
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2001
  %7 = load i32, i32* %6, align 8, !dbg !2001, !tbaa !1163
  %8 = and i32 %7, 16, !dbg !2002
  %9 = icmp eq i32 %8, 0, !dbg !2002
  br i1 %9, label %10, label %62, !dbg !2003

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !1992, !tbaa !2004
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !2005
  call void @llvm.dbg.value(metadata i8* %12, metadata !1984, metadata !DIExpression()) #30, !dbg !1989
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15, !dbg !2006

15:                                               ; preds = %48, %10
  %16 = phi i8* [ %49, %48 ], [ %4, %10 ], !dbg !1989
  %17 = phi i8* [ %53, %48 ], [ %4, %10 ], !dbg !1989
  %18 = phi i8* [ %51, %48 ], [ %12, %10 ], !dbg !1989
  call void @llvm.dbg.value(metadata i8* %18, metadata !1984, metadata !DIExpression()) #30, !dbg !1989
  call void @llvm.dbg.value(metadata i8* %17, metadata !1983, metadata !DIExpression()) #30, !dbg !1989
  call void @llvm.dbg.value(metadata i8* %16, metadata !1982, metadata !DIExpression()) #30, !dbg !1989
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2007, metadata !DIExpression()) #30, !dbg !2010
  %19 = load i8*, i8** %13, align 8, !dbg !2012, !tbaa !2013
  %20 = load i8*, i8** %14, align 8, !dbg !2012, !tbaa !2014
  %21 = icmp ult i8* %19, %20, !dbg !2012
  br i1 %21, label %22, label %26, !dbg !2012, !prof !1225

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !2012
  store i8* %23, i8** %13, align 8, !dbg !2012, !tbaa !2013
  %24 = load i8, i8* %19, align 1, !dbg !2012, !tbaa !898
  %25 = zext i8 %24 to i32, !dbg !2012
  call void @llvm.dbg.value(metadata i32 %27, metadata !1981, metadata !DIExpression()) #30, !dbg !1989
  br label %39, !dbg !2015

26:                                               ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #30, !dbg !2012
  call void @llvm.dbg.value(metadata i32 %27, metadata !1981, metadata !DIExpression()) #30, !dbg !1989
  %28 = icmp eq i32 %27, -1, !dbg !2016
  br i1 %28, label %29, label %39, !dbg !2015

29:                                               ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !2018
  br i1 %30, label %62, label %31, !dbg !2021

31:                                               ; preds = %29
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2022, metadata !DIExpression()) #30, !dbg !2025
  %32 = load i32, i32* %6, align 8, !dbg !2027, !tbaa !1163
  %33 = and i32 %32, 32, !dbg !2028
  %34 = icmp eq i32 %33, 0, !dbg !2028
  br i1 %34, label %35, label %62, !dbg !2029

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !2030
  %37 = load i8, i8* %36, align 1, !dbg !2030, !tbaa !898
  %38 = icmp eq i8 %37, 10, !dbg !2032
  br i1 %38, label %55, label %39, !dbg !2033

39:                                               ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ], !dbg !2034
  call void @llvm.dbg.value(metadata i32 %40, metadata !1981, metadata !DIExpression()) #30, !dbg !1989
  %41 = icmp eq i8* %17, %18, !dbg !2035
  br i1 %41, label %42, label %48, !dbg !2036

42:                                               ; preds = %39
  %43 = load i64, i64* %5, align 8, !dbg !2037, !tbaa !2004
  call void @llvm.dbg.value(metadata i64 %43, metadata !1985, metadata !DIExpression()) #30, !dbg !2038
  %44 = tail call i8* @x2realloc(i8* %16, i64* nonnull %5) #30, !dbg !2039
  call void @llvm.dbg.value(metadata i8* %44, metadata !1982, metadata !DIExpression()) #30, !dbg !1989
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !2040
  call void @llvm.dbg.value(metadata i8* %45, metadata !1983, metadata !DIExpression()) #30, !dbg !1989
  store i8* %44, i8** %3, align 8, !dbg !2041, !tbaa !1179
  %46 = load i64, i64* %5, align 8, !dbg !2042, !tbaa !2004
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !2043
  call void @llvm.dbg.value(metadata i8* %47, metadata !1984, metadata !DIExpression()) #30, !dbg !1989
  br label %48, !dbg !2044

48:                                               ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ], !dbg !1989
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ], !dbg !1989
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ], !dbg !1989
  call void @llvm.dbg.value(metadata i8* %51, metadata !1984, metadata !DIExpression()) #30, !dbg !1989
  call void @llvm.dbg.value(metadata i8* %50, metadata !1983, metadata !DIExpression()) #30, !dbg !1989
  call void @llvm.dbg.value(metadata i8* %49, metadata !1982, metadata !DIExpression()) #30, !dbg !1989
  %52 = trunc i32 %40 to i8, !dbg !2045
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !2046
  call void @llvm.dbg.value(metadata i8* %53, metadata !1983, metadata !DIExpression()) #30, !dbg !1989
  store i8 %52, i8* %50, align 1, !dbg !2047, !tbaa !898
  %54 = icmp eq i32 %40, 10, !dbg !2048
  br i1 %54, label %55, label %15, !dbg !2049, !llvm.loop !2050

55:                                               ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ], !dbg !1989
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ], !dbg !1989
  call void @llvm.dbg.value(metadata i8* %57, metadata !1983, metadata !DIExpression()) #30, !dbg !1989
  call void @llvm.dbg.value(metadata i8* %56, metadata !1982, metadata !DIExpression()) #30, !dbg !1989
  %58 = ptrtoint i8* %57 to i64, !dbg !2052
  %59 = ptrtoint i8* %56 to i64, !dbg !2052
  %60 = sub i64 %58, %59, !dbg !2052
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2053
  store i64 %60, i64* %61, align 8, !dbg !2054, !tbaa !1175
  br label %62, !dbg !2055

62:                                               ; preds = %29, %31, %2, %55
  %63 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %31 ], [ null, %29 ], !dbg !1989
  ret %struct.linebuffer* %63, !dbg !2056
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %0, %struct._IO_FILE* %1, i8 signext %2) local_unnamed_addr #8 !dbg !1975 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1974, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1979, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 %2, metadata !1980, metadata !DIExpression()), !dbg !2057
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2058
  %5 = load i8*, i8** %4, align 8, !dbg !2058, !tbaa !1179
  call void @llvm.dbg.value(metadata i8* %5, metadata !1982, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8* %5, metadata !1983, metadata !DIExpression()), !dbg !2057
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2059
  call void @llvm.dbg.value(metadata i8* undef, metadata !1984, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1993, metadata !DIExpression()), !dbg !2060
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2062
  %8 = load i32, i32* %7, align 8, !dbg !2062, !tbaa !1163
  %9 = and i32 %8, 16, !dbg !2063
  %10 = icmp eq i32 %9, 0, !dbg !2063
  br i1 %10, label %11, label %64, !dbg !2064

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !2059, !tbaa !2004
  %13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !2065
  call void @llvm.dbg.value(metadata i8* %13, metadata !1984, metadata !DIExpression()), !dbg !2057
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = sext i8 %2 to i32
  br label %17, !dbg !2066

17:                                               ; preds = %11, %50
  %18 = phi i8* [ %51, %50 ], [ %5, %11 ], !dbg !2057
  %19 = phi i8* [ %55, %50 ], [ %5, %11 ], !dbg !2057
  %20 = phi i8* [ %53, %50 ], [ %13, %11 ], !dbg !2057
  call void @llvm.dbg.value(metadata i8* %20, metadata !1984, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8* %19, metadata !1983, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8* %18, metadata !1982, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2007, metadata !DIExpression()) #30, !dbg !2067
  %21 = load i8*, i8** %14, align 8, !dbg !2069, !tbaa !2013
  %22 = load i8*, i8** %15, align 8, !dbg !2069, !tbaa !2014
  %23 = icmp ult i8* %21, %22, !dbg !2069
  br i1 %23, label %24, label %28, !dbg !2069, !prof !1225

24:                                               ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !2069
  store i8* %25, i8** %14, align 8, !dbg !2069, !tbaa !2013
  %26 = load i8, i8* %21, align 1, !dbg !2069, !tbaa !898
  %27 = zext i8 %26 to i32, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %29, metadata !1981, metadata !DIExpression()), !dbg !2057
  br label %41, !dbg !2070

28:                                               ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #30, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %29, metadata !1981, metadata !DIExpression()), !dbg !2057
  %30 = icmp eq i32 %29, -1, !dbg !2071
  br i1 %30, label %31, label %41, !dbg !2070

31:                                               ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !2072
  br i1 %32, label %64, label %33, !dbg !2073

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2022, metadata !DIExpression()), !dbg !2074
  %34 = load i32, i32* %7, align 8, !dbg !2076, !tbaa !1163
  %35 = and i32 %34, 32, !dbg !2077
  %36 = icmp eq i32 %35, 0, !dbg !2077
  br i1 %36, label %37, label %64, !dbg !2078

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2079
  %39 = load i8, i8* %38, align 1, !dbg !2079, !tbaa !898
  %40 = icmp eq i8 %39, %2, !dbg !2080
  br i1 %40, label %57, label %41, !dbg !2081

41:                                               ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ], !dbg !2082
  call void @llvm.dbg.value(metadata i32 %42, metadata !1981, metadata !DIExpression()), !dbg !2057
  %43 = icmp eq i8* %19, %20, !dbg !2083
  br i1 %43, label %44, label %50, !dbg !2084

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !2085, !tbaa !2004
  call void @llvm.dbg.value(metadata i64 %45, metadata !1985, metadata !DIExpression()), !dbg !2086
  %46 = tail call i8* @x2realloc(i8* %18, i64* nonnull %6) #30, !dbg !2087
  call void @llvm.dbg.value(metadata i8* %46, metadata !1982, metadata !DIExpression()), !dbg !2057
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !2088
  call void @llvm.dbg.value(metadata i8* %47, metadata !1983, metadata !DIExpression()), !dbg !2057
  store i8* %46, i8** %4, align 8, !dbg !2089, !tbaa !1179
  %48 = load i64, i64* %6, align 8, !dbg !2090, !tbaa !2004
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !2091
  call void @llvm.dbg.value(metadata i8* %49, metadata !1984, metadata !DIExpression()), !dbg !2057
  br label %50, !dbg !2092

50:                                               ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ], !dbg !2057
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ], !dbg !2057
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ], !dbg !2057
  call void @llvm.dbg.value(metadata i8* %53, metadata !1984, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8* %52, metadata !1983, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8* %51, metadata !1982, metadata !DIExpression()), !dbg !2057
  %54 = trunc i32 %42 to i8, !dbg !2093
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !2094
  call void @llvm.dbg.value(metadata i8* %55, metadata !1983, metadata !DIExpression()), !dbg !2057
  store i8 %54, i8* %52, align 1, !dbg !2095, !tbaa !898
  %56 = icmp eq i32 %42, %16, !dbg !2096
  br i1 %56, label %57, label %17, !dbg !2097, !llvm.loop !2098

57:                                               ; preds = %37, %50
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ], !dbg !2057
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ], !dbg !2057
  call void @llvm.dbg.value(metadata i8* %59, metadata !1983, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8* %58, metadata !1982, metadata !DIExpression()), !dbg !2057
  %60 = ptrtoint i8* %59 to i64, !dbg !2100
  %61 = ptrtoint i8* %58 to i64, !dbg !2100
  %62 = sub i64 %60, %61, !dbg !2100
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2101
  store i64 %62, i64* %63, align 8, !dbg !2102, !tbaa !1175
  br label %64, !dbg !2103

64:                                               ; preds = %31, %33, %3, %57
  %65 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %33 ], [ null, %31 ], !dbg !2057
  ret %struct.linebuffer* %65, !dbg !2104
}

; Function Attrs: nounwind sspstrong uwtable willreturn
define dso_local void @freebuffer(%struct.linebuffer* nocapture readonly %0) local_unnamed_addr #19 !dbg !2105 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2107, metadata !DIExpression()), !dbg !2108
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2109
  %3 = load i8*, i8** %2, align 8, !dbg !2109, !tbaa !1179
  tail call void @free(i8* %3) #30, !dbg !2110
  ret void, !dbg !2111
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @memcasecmp(i8* nocapture readonly %0, i8* nocapture readonly %1, i64 %2) local_unnamed_addr #11 !dbg !2112 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2116, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %1, metadata !2117, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %2, metadata !2118, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %0, metadata !2120, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %1, metadata !2121, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 0, metadata !2119, metadata !DIExpression()), !dbg !2134
  %4 = icmp eq i64 %2, 0, !dbg !2135
  br i1 %4, label %25, label %5, !dbg !2136

5:                                                ; preds = %3
  %6 = tail call i32** @__ctype_toupper_loc() #34, !dbg !2134
  %7 = load i32*, i32** %6, align 8, !tbaa !710
  br label %10, !dbg !2136

8:                                                ; preds = %10
  call void @llvm.dbg.value(metadata i64 %24, metadata !2119, metadata !DIExpression()), !dbg !2134
  %9 = icmp eq i64 %24, %2, !dbg !2135
  br i1 %9, label %25, label %10, !dbg !2136, !llvm.loop !2137

10:                                               ; preds = %5, %8
  %11 = phi i64 [ 0, %5 ], [ %24, %8 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2119, metadata !DIExpression()), !dbg !2134
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2139
  %13 = load i8, i8* %12, align 1, !dbg !2139, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %13, metadata !2122, metadata !DIExpression()), !dbg !2140
  %14 = getelementptr inbounds i8, i8* %1, i64 %11, !dbg !2141
  %15 = load i8, i8* %14, align 1, !dbg !2141, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %15, metadata !2126, metadata !DIExpression()), !dbg !2140
  %16 = zext i8 %13 to i64, !dbg !2142
  %17 = getelementptr inbounds i32, i32* %7, i64 %16, !dbg !2142
  %18 = load i32, i32* %17, align 4, !dbg !2142, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %18, metadata !2128, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i32 %18, metadata !2127, metadata !DIExpression()), !dbg !2140
  %19 = zext i8 %15 to i64, !dbg !2145
  %20 = getelementptr inbounds i32, i32* %7, i64 %19, !dbg !2145
  %21 = load i32, i32* %20, align 4, !dbg !2145, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %21, metadata !2131, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %21, metadata !2130, metadata !DIExpression()), !dbg !2140
  %22 = sub nsw i32 %18, %21, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %22, metadata !2133, metadata !DIExpression()), !dbg !2140
  %23 = icmp eq i32 %22, 0, !dbg !2149
  %24 = add nuw i64 %11, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %24, metadata !2119, metadata !DIExpression()), !dbg !2134
  br i1 %23, label %8, label %25

25:                                               ; preds = %10, %8, %3
  %26 = phi i32 [ 0, %3 ], [ 0, %8 ], [ %22, %10 ], !dbg !2134
  ret i32 %26, !dbg !2152
}

; Function Attrs: nounwind readnone willreturn
declare i32** @__ctype_toupper_loc() local_unnamed_addr #10

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i32 @posix2_version() local_unnamed_addr #17 !dbg !2153 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i64 200809, metadata !2156, metadata !DIExpression()), !dbg !2162
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i64 0, i64 0)) #30, !dbg !2163
  call void @llvm.dbg.value(metadata i8* %2, metadata !2157, metadata !DIExpression()), !dbg !2162
  %3 = icmp eq i8* %2, null, !dbg !2164
  br i1 %3, label %17, label %4, !dbg !2165

4:                                                ; preds = %0
  %5 = load i8, i8* %2, align 1, !dbg !2166, !tbaa !898
  %6 = icmp eq i8 %5, 0, !dbg !2166
  br i1 %6, label %17, label %7, !dbg !2167

7:                                                ; preds = %4
  %8 = bitcast i8** %1 to i8*, !dbg !2168
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #30, !dbg !2168
  call void @llvm.dbg.value(metadata i8** %1, metadata !2158, metadata !DIExpression(DW_OP_deref)), !dbg !2169
  %9 = call i64 @strtol(i8* nonnull %2, i8** nonnull %1, i32 10) #30, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %9, metadata !2161, metadata !DIExpression()), !dbg !2169
  %10 = load i8*, i8** %1, align 8, !dbg !2171, !tbaa !710
  call void @llvm.dbg.value(metadata i8* %10, metadata !2158, metadata !DIExpression()), !dbg !2169
  %11 = load i8, i8* %10, align 1, !dbg !2173, !tbaa !898
  %12 = icmp eq i8 %11, 0, !dbg !2173
  call void @llvm.dbg.value(metadata i64 undef, metadata !2156, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #30, !dbg !2174
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i64 %9, metadata !2156, metadata !DIExpression()), !dbg !2162
  %14 = icmp slt i64 %9, 2147483647, !dbg !2175
  br i1 %14, label %15, label %17, !dbg !2175

15:                                               ; preds = %13
  %16 = icmp sgt i64 %9, -2147483648, !dbg !2175
  br i1 %16, label %17, label %19, !dbg !2175

17:                                               ; preds = %13, %7, %4, %0, %15
  %18 = phi i64 [ %9, %15 ], [ 200809, %0 ], [ 200809, %4 ], [ 200809, %7 ], [ 2147483647, %13 ]
  br label %19, !dbg !2175

19:                                               ; preds = %15, %17
  %20 = phi i64 [ %18, %17 ], [ -2147483648, %15 ]
  %21 = trunc i64 %20 to i32, !dbg !2175
  ret i32 %21, !dbg !2176
}

; Function Attrs: nofree nounwind willreturn
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2177 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2179, metadata !DIExpression()), !dbg !2182
  %2 = icmp eq i8* %0, null, !dbg !2183
  br i1 %2, label %3, label %6, !dbg !2185

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2186, !tbaa !710
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.107, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #35, !dbg !2188
  tail call void @abort() #32, !dbg !2189
  unreachable, !dbg !2189

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #31, !dbg !2190
  call void @llvm.dbg.value(metadata i8* %7, metadata !2180, metadata !DIExpression()), !dbg !2182
  %8 = icmp eq i8* %7, null, !dbg !2191
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2192
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2192
  call void @llvm.dbg.value(metadata i8* %10, metadata !2181, metadata !DIExpression()), !dbg !2182
  %11 = ptrtoint i8* %10 to i64, !dbg !2193
  %12 = ptrtoint i8* %0 to i64, !dbg !2193
  %13 = sub i64 %11, %12, !dbg !2193
  %14 = icmp sgt i64 %13, 6, !dbg !2195
  br i1 %14, label %15, label %24, !dbg !2196

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2197
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.108, i64 0, i64 0), i64 7) #31, !dbg !2198
  %18 = icmp eq i32 %17, 0, !dbg !2199
  br i1 %18, label %19, label %24, !dbg !2200

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2179, metadata !DIExpression()), !dbg !2182
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.109, i64 0, i64 0), i64 3) #31, !dbg !2201
  %21 = icmp eq i32 %20, 0, !dbg !2204
  br i1 %21, label %22, label %24, !dbg !2205

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2206
  call void @llvm.dbg.value(metadata i8* %23, metadata !2179, metadata !DIExpression()), !dbg !2182
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2208, !tbaa !710
  br label %24, !dbg !2209

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2179, metadata !DIExpression()), !dbg !2182
  store i8* %25, i8** @program_name, align 8, !dbg !2210, !tbaa !710
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2211, !tbaa !710
  ret void, !dbg !2212
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #21

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2213 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2218, metadata !DIExpression()), !dbg !2221
  %2 = tail call i32* @__errno_location() #34, !dbg !2222
  %3 = load i32, i32* %2, align 4, !dbg !2222, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %3, metadata !2219, metadata !DIExpression()), !dbg !2221
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2223
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2223
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2223
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #30, !dbg !2224
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2224
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2220, metadata !DIExpression()), !dbg !2221
  store i32 %3, i32* %2, align 4, !dbg !2225, !tbaa !914
  ret %struct.quoting_options* %8, !dbg !2226
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #22 !dbg !2227 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2233, metadata !DIExpression()), !dbg !2234
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2235
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2235
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2236
  %5 = load i32, i32* %4, align 8, !dbg !2236, !tbaa !2237
  ret i32 %5, !dbg !2239
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !2240 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 %1, metadata !2245, metadata !DIExpression()), !dbg !2246
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2247
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2247
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2248
  store i32 %1, i32* %5, align 8, !dbg !2249, !tbaa !2237
  ret void, !dbg !2250
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #23 !dbg !2251 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2255, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8 %1, metadata !2256, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32 %2, metadata !2257, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8 %1, metadata !2258, metadata !DIExpression()), !dbg !2263
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2264
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2264
  %6 = lshr i8 %1, 5, !dbg !2265
  %7 = zext i8 %6 to i64, !dbg !2265
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2266
  call void @llvm.dbg.value(metadata i32* %8, metadata !2259, metadata !DIExpression()), !dbg !2263
  %9 = and i8 %1, 31, !dbg !2267
  %10 = zext i8 %9 to i32, !dbg !2267
  call void @llvm.dbg.value(metadata i32 %10, metadata !2261, metadata !DIExpression()), !dbg !2263
  %11 = load i32, i32* %8, align 4, !dbg !2268, !tbaa !914
  %12 = lshr i32 %11, %10, !dbg !2269
  %13 = and i32 %12, 1, !dbg !2270
  call void @llvm.dbg.value(metadata i32 %13, metadata !2262, metadata !DIExpression()), !dbg !2263
  %14 = and i32 %2, 1, !dbg !2271
  %15 = xor i32 %13, %14, !dbg !2272
  %16 = shl i32 %15, %10, !dbg !2273
  %17 = xor i32 %16, %11, !dbg !2274
  store i32 %17, i32* %8, align 4, !dbg !2274, !tbaa !914
  ret i32 %13, !dbg !2275
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #23 !dbg !2276 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2280, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i32 %1, metadata !2281, metadata !DIExpression()), !dbg !2283
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2284
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2286
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2280, metadata !DIExpression()), !dbg !2283
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2287
  %6 = load i32, i32* %5, align 4, !dbg !2287, !tbaa !2288
  call void @llvm.dbg.value(metadata i32 %6, metadata !2282, metadata !DIExpression()), !dbg !2283
  store i32 %1, i32* %5, align 4, !dbg !2289, !tbaa !2288
  ret i32 %6, !dbg !2290
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2291 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2295, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8* %1, metadata !2296, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8* %2, metadata !2297, metadata !DIExpression()), !dbg !2298
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2299
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2301
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2295, metadata !DIExpression()), !dbg !2298
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2302
  store i32 10, i32* %6, align 8, !dbg !2303, !tbaa !2237
  %7 = icmp ne i8* %1, null, !dbg !2304
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2306
  br i1 %9, label %11, label %10, !dbg !2306

10:                                               ; preds = %3
  tail call void @abort() #32, !dbg !2307
  unreachable, !dbg !2307

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2308
  store i8* %1, i8** %12, align 8, !dbg !2309, !tbaa !2310
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2311
  store i8* %2, i8** %13, align 8, !dbg !2312, !tbaa !2313
  ret void, !dbg !2314
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2315 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2319, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %1, metadata !2320, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8* %2, metadata !2321, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %3, metadata !2322, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2323, metadata !DIExpression()), !dbg !2327
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2328
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2328
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2324, metadata !DIExpression()), !dbg !2327
  %8 = tail call i32* @__errno_location() #34, !dbg !2329
  %9 = load i32, i32* %8, align 4, !dbg !2329, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %9, metadata !2325, metadata !DIExpression()), !dbg !2327
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2330
  %11 = load i32, i32* %10, align 8, !dbg !2330, !tbaa !2237
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2331
  %13 = load i32, i32* %12, align 4, !dbg !2331, !tbaa !2288
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2332
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2333
  %16 = load i8*, i8** %15, align 8, !dbg !2333, !tbaa !2310
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2334
  %18 = load i8*, i8** %17, align 8, !dbg !2334, !tbaa !2313
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2335
  call void @llvm.dbg.value(metadata i64 %19, metadata !2326, metadata !DIExpression()), !dbg !2327
  store i32 %9, i32* %8, align 4, !dbg !2336, !tbaa !914
  ret i64 %19, !dbg !2337
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2338 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2344, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %1, metadata !2345, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %2, metadata !2346, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %3, metadata !2347, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %4, metadata !2348, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %5, metadata !2349, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32* %6, metadata !2350, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %7, metadata !2351, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %8, metadata !2352, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 0, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 0, metadata !2355, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* null, metadata !2356, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 0, metadata !2357, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2358, metadata !DIExpression()), !dbg !2412
  %13 = tail call i64 @__ctype_get_mb_cur_max() #30, !dbg !2413
  %14 = icmp eq i64 %13, 1, !dbg !2414
  call void @llvm.dbg.value(metadata i1 %14, metadata !2359, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2412
  %15 = lshr i32 %5, 1, !dbg !2415
  %16 = trunc i32 %15 to i8, !dbg !2415
  %17 = and i8 %16, 1, !dbg !2415
  call void @llvm.dbg.value(metadata i8 %17, metadata !2360, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 1, metadata !2363, metadata !DIExpression()), !dbg !2412
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2416

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2417
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2418
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2419
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2420
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2412
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2421
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2422
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2423
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2345, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %38, metadata !2363, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %37, metadata !2362, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %36, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %35, metadata !2360, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %34, metadata !2347, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %33, metadata !2358, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %32, metadata !2357, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %31, metadata !2356, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %30, metadata !2355, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 0, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %29, metadata !2352, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %28, metadata !2351, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %27, metadata !2348, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.label(metadata !2406), !dbg !2424
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
  ], !dbg !2425

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2360, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 5, metadata !2348, metadata !DIExpression()), !dbg !2412
  br label %92, !dbg !2426

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2360, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 5, metadata !2348, metadata !DIExpression()), !dbg !2412
  %42 = and i8 %35, 1, !dbg !2428
  %43 = icmp eq i8 %42, 0, !dbg !2428
  br i1 %43, label %44, label %92, !dbg !2426

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2430
  br i1 %45, label %92, label %46, !dbg !2433

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2430, !tbaa !898
  br label %92, !dbg !2430

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.120, i64 0, i64 0), i32 %27), !dbg !2434
  call void @llvm.dbg.value(metadata i8* %48, metadata !2351, metadata !DIExpression()), !dbg !2412
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), i32 %27), !dbg !2438
  call void @llvm.dbg.value(metadata i8* %49, metadata !2352, metadata !DIExpression()), !dbg !2412
  br label %50, !dbg !2439

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2352, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %51, metadata !2351, metadata !DIExpression()), !dbg !2412
  %53 = and i8 %35, 1, !dbg !2440
  %54 = icmp eq i8 %53, 0, !dbg !2440
  br i1 %54, label %55, label %70, !dbg !2442

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2356, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 0, metadata !2354, metadata !DIExpression()), !dbg !2412
  %56 = load i8, i8* %51, align 1, !dbg !2443, !tbaa !898
  %57 = icmp eq i8 %56, 0, !dbg !2446
  br i1 %57, label %70, label %58, !dbg !2446

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2356, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %61, metadata !2354, metadata !DIExpression()), !dbg !2412
  %62 = icmp ult i64 %61, %39, !dbg !2447
  br i1 %62, label %63, label %65, !dbg !2450

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2447
  store i8 %59, i8* %64, align 1, !dbg !2447, !tbaa !898
  br label %65, !dbg !2447

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %66, metadata !2354, metadata !DIExpression()), !dbg !2412
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2451
  call void @llvm.dbg.value(metadata i8* %67, metadata !2356, metadata !DIExpression()), !dbg !2412
  %68 = load i8, i8* %67, align 1, !dbg !2443, !tbaa !898
  %69 = icmp eq i8 %68, 0, !dbg !2446
  br i1 %69, label %70, label %58, !dbg !2446, !llvm.loop !2452

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2454
  call void @llvm.dbg.value(metadata i64 %71, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 1, metadata !2358, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %52, metadata !2356, metadata !DIExpression()), !dbg !2412
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #31, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %72, metadata !2357, metadata !DIExpression()), !dbg !2412
  br label %92, !dbg !2456

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2358, metadata !DIExpression()), !dbg !2412
  br label %74, !dbg !2457

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %75, metadata !2358, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 1, metadata !2360, metadata !DIExpression()), !dbg !2412
  br label %76, !dbg !2458

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2420
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %78, metadata !2360, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %77, metadata !2358, metadata !DIExpression()), !dbg !2412
  %79 = and i8 %78, 1, !dbg !2459
  %80 = icmp eq i8 %79, 0, !dbg !2459
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2461
  br label %82, !dbg !2461

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2412
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2415
  call void @llvm.dbg.value(metadata i8 %84, metadata !2360, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %83, metadata !2358, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 2, metadata !2348, metadata !DIExpression()), !dbg !2412
  %85 = and i8 %84, 1, !dbg !2462
  %86 = icmp eq i8 %85, 0, !dbg !2462
  br i1 %86, label %87, label %92, !dbg !2464

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2465
  br i1 %88, label %92, label %89, !dbg !2468

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2465, !tbaa !898
  br label %92, !dbg !2465

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2360, metadata !DIExpression()), !dbg !2412
  br label %92, !dbg !2469

91:                                               ; preds = %26
  call void @abort() #32, !dbg !2470
  unreachable, !dbg !2470

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2454
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), %40 ], !dbg !2412
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2412
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2412
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %100, metadata !2360, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %99, metadata !2358, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %98, metadata !2357, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %97, metadata !2356, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %96, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %95, metadata !2352, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %94, metadata !2351, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %93, metadata !2348, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 0, metadata !2353, metadata !DIExpression()), !dbg !2412
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
  br label %121, !dbg !2471

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2472
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2454
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2417
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2421
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2422
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2423
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2345, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %128, metadata !2363, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %127, metadata !2362, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %126, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %125, metadata !2347, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %124, metadata !2355, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %123, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %122, metadata !2353, metadata !DIExpression()), !dbg !2412
  %130 = icmp eq i64 %125, -1, !dbg !2473
  br i1 %130, label %131, label %135, !dbg !2474

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2475
  %133 = load i8, i8* %132, align 1, !dbg !2475, !tbaa !898
  %134 = icmp eq i8 %133, 0, !dbg !2476
  br i1 %134, label %587, label %137, !dbg !2477

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2478
  br i1 %136, label %587, label %137, !dbg !2477

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2369, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 0, metadata !2370, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 0, metadata !2371, metadata !DIExpression()), !dbg !2479
  br i1 %106, label %138, label %153, !dbg !2480

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2482
  %140 = and i1 %107, %130, !dbg !2483
  br i1 %140, label %141, label %143, !dbg !2483

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #31, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %142, metadata !2347, metadata !DIExpression()), !dbg !2412
  br label %143, !dbg !2485

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2485
  call void @llvm.dbg.value(metadata i64 %144, metadata !2347, metadata !DIExpression()), !dbg !2412
  %145 = icmp ugt i64 %139, %144, !dbg !2486
  br i1 %145, label %153, label %146, !dbg !2487

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2488
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2489
  %149 = icmp ne i32 %148, 0, !dbg !2490
  %150 = or i1 %149, %109, !dbg !2491
  %151 = xor i1 %149, true, !dbg !2491
  %152 = zext i1 %151 to i8, !dbg !2491
  br i1 %150, label %153, label %646, !dbg !2491

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2479
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2479
  call void @llvm.dbg.value(metadata i8 %156, metadata !2369, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i64 %154, metadata !2347, metadata !DIExpression()), !dbg !2412
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2492
  %158 = load i8, i8* %157, align 1, !dbg !2492, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %158, metadata !2364, metadata !DIExpression()), !dbg !2479
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
  ], !dbg !2493

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2494

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2495

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2370, metadata !DIExpression()), !dbg !2479
  %162 = and i8 %126, 1, !dbg !2499
  %163 = icmp eq i8 %162, 0, !dbg !2499
  %164 = and i1 %110, %163, !dbg !2499
  br i1 %164, label %165, label %181, !dbg !2499

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2501
  br i1 %166, label %167, label %169, !dbg !2505

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2501
  store i8 39, i8* %168, align 1, !dbg !2501, !tbaa !898
  br label %169, !dbg !2501

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %170, metadata !2354, metadata !DIExpression()), !dbg !2412
  %171 = icmp ult i64 %170, %129, !dbg !2506
  br i1 %171, label %172, label %174, !dbg !2509

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2506
  store i8 36, i8* %173, align 1, !dbg !2506, !tbaa !898
  br label %174, !dbg !2506

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %175, metadata !2354, metadata !DIExpression()), !dbg !2412
  %176 = icmp ult i64 %175, %129, !dbg !2510
  br i1 %176, label %177, label %179, !dbg !2513

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2510
  store i8 39, i8* %178, align 1, !dbg !2510, !tbaa !898
  br label %179, !dbg !2510

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %180, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 1, metadata !2361, metadata !DIExpression()), !dbg !2412
  br label %181, !dbg !2514

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2412
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %183, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %182, metadata !2354, metadata !DIExpression()), !dbg !2412
  %184 = icmp ult i64 %182, %129, !dbg !2515
  br i1 %184, label %185, label %187, !dbg !2518

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2515
  store i8 92, i8* %186, align 1, !dbg !2515, !tbaa !898
  br label %187, !dbg !2515

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2518
  call void @llvm.dbg.value(metadata i64 %188, metadata !2354, metadata !DIExpression()), !dbg !2412
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2519
  br i1 %191, label %192, label %473, !dbg !2519

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2521
  %194 = load i8, i8* %193, align 1, !dbg !2521, !tbaa !898
  %195 = add i8 %194, -48, !dbg !2522
  %196 = icmp ult i8 %195, 10, !dbg !2522
  br i1 %196, label %197, label %473, !dbg !2522

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2523
  br i1 %198, label %199, label %201, !dbg !2527

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2523
  store i8 48, i8* %200, align 1, !dbg !2523, !tbaa !898
  br label %201, !dbg !2523

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2527
  call void @llvm.dbg.value(metadata i64 %202, metadata !2354, metadata !DIExpression()), !dbg !2412
  %203 = icmp ult i64 %202, %129, !dbg !2528
  br i1 %203, label %204, label %206, !dbg !2531

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2528
  store i8 48, i8* %205, align 1, !dbg !2528, !tbaa !898
  br label %206, !dbg !2528

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %207, metadata !2354, metadata !DIExpression()), !dbg !2412
  br label %473, !dbg !2532

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2533

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2534

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2535

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2537
  br i1 %214, label %215, label %473, !dbg !2537

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2539
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2540
  %218 = load i8, i8* %217, align 1, !dbg !2540, !tbaa !898
  %219 = icmp eq i8 %218, 63, !dbg !2541
  br i1 %219, label %220, label %473, !dbg !2542

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2543
  %222 = load i8, i8* %221, align 1, !dbg !2543, !tbaa !898
  %223 = sext i8 %222 to i32, !dbg !2543
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
  ], !dbg !2544

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2545

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2364, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i64 undef, metadata !2353, metadata !DIExpression()), !dbg !2412
  %226 = icmp ult i64 %123, %129, !dbg !2547
  br i1 %226, label %227, label %229, !dbg !2550

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2547
  store i8 63, i8* %228, align 1, !dbg !2547, !tbaa !898
  br label %229, !dbg !2547

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %230, metadata !2354, metadata !DIExpression()), !dbg !2412
  %231 = icmp ult i64 %230, %129, !dbg !2551
  br i1 %231, label %232, label %234, !dbg !2554

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2551
  store i8 34, i8* %233, align 1, !dbg !2551, !tbaa !898
  br label %234, !dbg !2551

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2554
  call void @llvm.dbg.value(metadata i64 %235, metadata !2354, metadata !DIExpression()), !dbg !2412
  %236 = icmp ult i64 %235, %129, !dbg !2555
  br i1 %236, label %237, label %239, !dbg !2558

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2555
  store i8 34, i8* %238, align 1, !dbg !2555, !tbaa !898
  br label %239, !dbg !2555

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %240, metadata !2354, metadata !DIExpression()), !dbg !2412
  %241 = icmp ult i64 %240, %129, !dbg !2559
  br i1 %241, label %242, label %244, !dbg !2562

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2559
  store i8 63, i8* %243, align 1, !dbg !2559, !tbaa !898
  br label %244, !dbg !2559

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2562
  call void @llvm.dbg.value(metadata i64 %245, metadata !2354, metadata !DIExpression()), !dbg !2412
  br label %473, !dbg !2563

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2368, metadata !DIExpression()), !dbg !2479
  br label %256, !dbg !2564

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2368, metadata !DIExpression()), !dbg !2479
  br label %256, !dbg !2565

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2368, metadata !DIExpression()), !dbg !2479
  br label %254, !dbg !2566

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2368, metadata !DIExpression()), !dbg !2479
  br label %254, !dbg !2567

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2368, metadata !DIExpression()), !dbg !2479
  br label %256, !dbg !2568

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2368, metadata !DIExpression()), !dbg !2479
  br i1 %110, label %252, label %253, !dbg !2569

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2570

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2573

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2575
  call void @llvm.dbg.value(metadata i8 %255, metadata !2368, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.label(metadata !2407), !dbg !2576
  br i1 %111, label %256, label %631, !dbg !2577

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2575
  call void @llvm.dbg.value(metadata i8 %257, metadata !2368, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.label(metadata !2408), !dbg !2579
  br i1 %102, label %495, label %473, !dbg !2580

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2581

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2582, !tbaa !898
  %261 = icmp eq i8 %260, 0, !dbg !2584
  br i1 %261, label %262, label %473, !dbg !2585

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2586
  br i1 %263, label %264, label %473, !dbg !2588

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2371, metadata !DIExpression()), !dbg !2479
  br label %265, !dbg !2589

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2479
  call void @llvm.dbg.value(metadata i8 %266, metadata !2371, metadata !DIExpression()), !dbg !2479
  br i1 %111, label %473, label %631, !dbg !2590

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2362, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 1, metadata !2371, metadata !DIExpression()), !dbg !2479
  br i1 %110, label %268, label %473, !dbg !2592

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2593

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2596
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2598
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2598
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2598
  call void @llvm.dbg.value(metadata i64 %274, metadata !2345, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %273, metadata !2355, metadata !DIExpression()), !dbg !2412
  %275 = icmp ult i64 %123, %274, !dbg !2599
  br i1 %275, label %276, label %278, !dbg !2602

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2599
  store i8 39, i8* %277, align 1, !dbg !2599, !tbaa !898
  br label %278, !dbg !2599

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %279, metadata !2354, metadata !DIExpression()), !dbg !2412
  %280 = icmp ult i64 %279, %274, !dbg !2603
  br i1 %280, label %281, label %283, !dbg !2606

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2603
  store i8 92, i8* %282, align 1, !dbg !2603, !tbaa !898
  br label %283, !dbg !2603

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %284, metadata !2354, metadata !DIExpression()), !dbg !2412
  %285 = icmp ult i64 %284, %274, !dbg !2607
  br i1 %285, label %286, label %288, !dbg !2610

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2607
  store i8 39, i8* %287, align 1, !dbg !2607, !tbaa !898
  br label %288, !dbg !2607

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %289, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2412
  br label %473, !dbg !2611

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2612

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2372, metadata !DIExpression()), !dbg !2613
  %292 = tail call i16** @__ctype_b_loc() #34, !dbg !2614
  %293 = load i16*, i16** %292, align 8, !dbg !2614, !tbaa !710
  %294 = zext i8 %158 to i64, !dbg !2614
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2614
  %296 = load i16, i16* %295, align 2, !dbg !2614, !tbaa !1396
  %297 = lshr i16 %296, 14, !dbg !2616
  %298 = trunc i16 %297 to i8, !dbg !2616
  %299 = and i8 %298, 1, !dbg !2616
  call void @llvm.dbg.value(metadata i8 %354, metadata !2375, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 %355, metadata !2372, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 %306, metadata !2347, metadata !DIExpression()), !dbg !2412
  %300 = icmp eq i8 %299, 0, !dbg !2617
  call void @llvm.dbg.value(metadata i1 %357, metadata !2371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2479
  br label %359, !dbg !2618

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #30, !dbg !2619
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2376, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8* %23, metadata !2621, metadata !DIExpression()) #30, !dbg !2626
  call void @llvm.dbg.value(metadata i32 0, metadata !2624, metadata !DIExpression()) #30, !dbg !2626
  call void @llvm.dbg.value(metadata i64 8, metadata !2625, metadata !DIExpression()) #30, !dbg !2626
  store i64 0, i64* %10, align 8, !dbg !2628
  call void @llvm.dbg.value(metadata i64 0, metadata !2372, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 1, metadata !2375, metadata !DIExpression()), !dbg !2613
  %302 = icmp eq i64 %154, -1, !dbg !2629
  br i1 %302, label %303, label %305, !dbg !2631

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #31, !dbg !2632
  call void @llvm.dbg.value(metadata i64 %304, metadata !2347, metadata !DIExpression()), !dbg !2412
  br label %305, !dbg !2633

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2479
  call void @llvm.dbg.value(metadata i64 %306, metadata !2347, metadata !DIExpression()), !dbg !2412
  br label %307, !dbg !2634

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2635
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2636
  call void @llvm.dbg.value(metadata i8 %309, metadata !2375, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 %308, metadata !2372, metadata !DIExpression()), !dbg !2613
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #30, !dbg !2637
  %310 = add i64 %308, %122, !dbg !2638
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2639
  %312 = sub i64 %306, %310, !dbg !2640
  call void @llvm.dbg.value(metadata i32* %12, metadata !2392, metadata !DIExpression(DW_OP_deref)), !dbg !2641
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #30, !dbg !2642
  call void @llvm.dbg.value(metadata i64 %313, metadata !2395, metadata !DIExpression()), !dbg !2641
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2643

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2372, metadata !DIExpression()), !dbg !2613
  %315 = icmp ugt i64 %306, %310, !dbg !2644
  br i1 %315, label %316, label %341, !dbg !2646

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2647
  br label %318, !dbg !2647

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2372, metadata !DIExpression()), !dbg !2613
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2648
  %322 = load i8, i8* %321, align 1, !dbg !2648, !tbaa !898
  %323 = icmp eq i8 %322, 0, !dbg !2646
  br i1 %323, label %341, label %324, !dbg !2647

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2649
  call void @llvm.dbg.value(metadata i64 %325, metadata !2372, metadata !DIExpression()), !dbg !2613
  %326 = add i64 %325, %122, !dbg !2650
  %327 = icmp ult i64 %326, %306, !dbg !2644
  br i1 %327, label %318, label %341, !dbg !2646, !llvm.loop !2651

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2652
  call void @llvm.dbg.value(metadata i64 1, metadata !2396, metadata !DIExpression()), !dbg !2653
  br i1 %330, label %331, label %344, !dbg !2652

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2396, metadata !DIExpression()), !dbg !2653
  %333 = add i64 %332, %310, !dbg !2654
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2657
  %335 = load i8, i8* %334, align 1, !dbg !2657, !tbaa !898
  %336 = sext i8 %335 to i32, !dbg !2657
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2658

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %338, metadata !2396, metadata !DIExpression()), !dbg !2653
  %339 = icmp eq i64 %338, %313, !dbg !2660
  br i1 %339, label %344, label %331, !dbg !2661, !llvm.loop !2662

340:                                              ; preds = %307
  br label %341, !dbg !2664

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2375, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 undef, metadata !2372, metadata !DIExpression()), !dbg !2613
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #30, !dbg !2664
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2665, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %345, metadata !2392, metadata !DIExpression()), !dbg !2641
  %346 = call i32 @iswprint(i32 %345) #30, !dbg !2667
  %347 = icmp eq i32 %346, 0, !dbg !2667
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2668
  call void @llvm.dbg.value(metadata i8 %348, metadata !2375, metadata !DIExpression()), !dbg !2613
  %349 = add i64 %313, %308, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %349, metadata !2372, metadata !DIExpression()), !dbg !2613
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #30, !dbg !2664
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #31, !dbg !2670
  %351 = icmp eq i32 %350, 0, !dbg !2671
  br i1 %351, label %307, label %353, !dbg !2672, !llvm.loop !2673

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2375, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 undef, metadata !2372, metadata !DIExpression()), !dbg !2613
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #30, !dbg !2664
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #30, !dbg !2675
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #30, !dbg !2675
  call void @llvm.dbg.value(metadata i8 %354, metadata !2375, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 %355, metadata !2372, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 %306, metadata !2347, metadata !DIExpression()), !dbg !2412
  %356 = and i8 %354, 1, !dbg !2617
  %357 = icmp eq i8 %356, 0, !dbg !2617
  call void @llvm.dbg.value(metadata i1 %357, metadata !2371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2479
  %358 = icmp ugt i64 %355, 1, !dbg !2676
  br i1 %358, label %367, label %359, !dbg !2618

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2677
  br i1 %364, label %367, label %365, !dbg !2677

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2479
  call void @llvm.dbg.value(metadata i8 %472, metadata !2371, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %441, metadata !2370, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %440, metadata !2369, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %439, metadata !2364, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %438, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %371, metadata !2347, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %437, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %375, metadata !2353, metadata !DIExpression()), !dbg !2412
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %372, metadata !2403, metadata !DIExpression()), !dbg !2679
  %373 = and i1 %102, %368
  br label %374, !dbg !2680

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2472
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2412
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2421
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2479
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2479
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2681
  call void @llvm.dbg.value(metadata i8 %380, metadata !2370, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %379, metadata !2369, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %378, metadata !2364, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %377, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %376, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %375, metadata !2353, metadata !DIExpression()), !dbg !2412
  br i1 %373, label %381, label %427, !dbg !2682

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2687

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2370, metadata !DIExpression()), !dbg !2479
  %383 = and i8 %377, 1, !dbg !2690
  %384 = icmp eq i8 %383, 0, !dbg !2690
  %385 = and i1 %110, %384, !dbg !2690
  br i1 %385, label %386, label %402, !dbg !2690

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2692
  br i1 %387, label %388, label %390, !dbg !2696

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2692
  store i8 39, i8* %389, align 1, !dbg !2692, !tbaa !898
  br label %390, !dbg !2692

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %391, metadata !2354, metadata !DIExpression()), !dbg !2412
  %392 = icmp ult i64 %391, %129, !dbg !2697
  br i1 %392, label %393, label %395, !dbg !2700

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2697
  store i8 36, i8* %394, align 1, !dbg !2697, !tbaa !898
  br label %395, !dbg !2697

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2700
  call void @llvm.dbg.value(metadata i64 %396, metadata !2354, metadata !DIExpression()), !dbg !2412
  %397 = icmp ult i64 %396, %129, !dbg !2701
  br i1 %397, label %398, label %400, !dbg !2704

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2701
  store i8 39, i8* %399, align 1, !dbg !2701, !tbaa !898
  br label %400, !dbg !2701

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2704
  call void @llvm.dbg.value(metadata i64 %401, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 1, metadata !2361, metadata !DIExpression()), !dbg !2412
  br label %402, !dbg !2705

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2412
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %404, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %403, metadata !2354, metadata !DIExpression()), !dbg !2412
  %405 = icmp ult i64 %403, %129, !dbg !2706
  br i1 %405, label %406, label %408, !dbg !2709

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2706
  store i8 92, i8* %407, align 1, !dbg !2706, !tbaa !898
  br label %408, !dbg !2706

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %409, metadata !2354, metadata !DIExpression()), !dbg !2412
  %410 = icmp ult i64 %409, %129, !dbg !2710
  br i1 %410, label %411, label %415, !dbg !2713

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2710
  %413 = or i8 %412, 48, !dbg !2710
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2710
  store i8 %413, i8* %414, align 1, !dbg !2710, !tbaa !898
  br label %415, !dbg !2710

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %416, metadata !2354, metadata !DIExpression()), !dbg !2412
  %417 = icmp ult i64 %416, %129, !dbg !2714
  br i1 %417, label %418, label %423, !dbg !2717

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2714
  %420 = and i8 %419, 7, !dbg !2714
  %421 = or i8 %420, 48, !dbg !2714
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2714
  store i8 %421, i8* %422, align 1, !dbg !2714, !tbaa !898
  br label %423, !dbg !2714

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %424, metadata !2354, metadata !DIExpression()), !dbg !2412
  %425 = and i8 %378, 7, !dbg !2718
  %426 = or i8 %425, 48, !dbg !2719
  call void @llvm.dbg.value(metadata i8 %426, metadata !2364, metadata !DIExpression()), !dbg !2479
  br label %436, !dbg !2720

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2721
  %429 = icmp eq i8 %428, 0, !dbg !2721
  br i1 %429, label %436, label %430, !dbg !2723

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2724
  br i1 %431, label %432, label %434, !dbg !2728

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2724
  store i8 92, i8* %433, align 1, !dbg !2724, !tbaa !898
  br label %434, !dbg !2724

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %435, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2369, metadata !DIExpression()), !dbg !2479
  br label %436, !dbg !2729

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2412
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2421
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2479
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2479
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2479
  call void @llvm.dbg.value(metadata i8 %441, metadata !2370, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %440, metadata !2369, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %439, metadata !2364, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %438, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %437, metadata !2354, metadata !DIExpression()), !dbg !2412
  %442 = add i64 %375, 1, !dbg !2730
  %443 = icmp ugt i64 %372, %442, !dbg !2732
  br i1 %443, label %444, label %471, !dbg !2733

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2734
  %446 = icmp ne i8 %445, 0, !dbg !2734
  %447 = and i8 %441, 1, !dbg !2734
  %448 = icmp eq i8 %447, 0, !dbg !2734
  %449 = and i1 %446, %448, !dbg !2734
  br i1 %449, label %450, label %461, !dbg !2734

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2737
  br i1 %451, label %452, label %454, !dbg !2741

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2737
  store i8 39, i8* %453, align 1, !dbg !2737, !tbaa !898
  br label %454, !dbg !2737

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2741
  call void @llvm.dbg.value(metadata i64 %455, metadata !2354, metadata !DIExpression()), !dbg !2412
  %456 = icmp ult i64 %455, %129, !dbg !2742
  br i1 %456, label %457, label %459, !dbg !2745

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2742
  store i8 39, i8* %458, align 1, !dbg !2742, !tbaa !898
  br label %459, !dbg !2742

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2745
  call void @llvm.dbg.value(metadata i64 %460, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2412
  br label %461, !dbg !2746

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2747
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %463, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %462, metadata !2354, metadata !DIExpression()), !dbg !2412
  %464 = icmp ult i64 %462, %129, !dbg !2748
  br i1 %464, label %465, label %467, !dbg !2751

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2748
  store i8 %439, i8* %466, align 1, !dbg !2748, !tbaa !898
  br label %467, !dbg !2748

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %468, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %442, metadata !2353, metadata !DIExpression()), !dbg !2412
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2752
  %470 = load i8, i8* %469, align 1, !dbg !2752, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %470, metadata !2364, metadata !DIExpression()), !dbg !2479
  br label %374, !dbg !2753, !llvm.loop !2754

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2479
  call void @llvm.dbg.value(metadata i8 %472, metadata !2371, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %441, metadata !2370, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %440, metadata !2369, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %439, metadata !2364, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %438, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %371, metadata !2347, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %437, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %375, metadata !2353, metadata !DIExpression()), !dbg !2412
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2472
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2412
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2417
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2757
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2412
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2412
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2479
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2479
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2479
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2345, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %482, metadata !2371, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %481, metadata !2370, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %156, metadata !2369, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %480, metadata !2364, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %479, metadata !2362, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %478, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %477, metadata !2347, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %476, metadata !2355, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %475, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %474, metadata !2353, metadata !DIExpression()), !dbg !2412
  br i1 %116, label %494, label %484, !dbg !2758

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2760
  %486 = zext i8 %485 to i64, !dbg !2760
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2761
  %488 = load i32, i32* %487, align 4, !dbg !2761, !tbaa !914
  %489 = and i8 %480, 31, !dbg !2762
  %490 = zext i8 %489 to i32, !dbg !2762
  %491 = shl nuw i32 1, %490, !dbg !2763
  %492 = and i32 %488, %491, !dbg !2763
  %493 = icmp eq i32 %492, 0, !dbg !2763
  br i1 %493, label %494, label %495, !dbg !2764

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2765

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2766
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2412
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2417
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2757
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2421
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2422
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2479
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2479
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2345, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %503, metadata !2371, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %502, metadata !2364, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %501, metadata !2362, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %500, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %499, metadata !2347, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %498, metadata !2355, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %497, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %496, metadata !2353, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.label(metadata !2409), !dbg !2767
  br i1 %109, label %505, label %635, !dbg !2768

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2370, metadata !DIExpression()), !dbg !2479
  %506 = and i8 %500, 1, !dbg !2770
  %507 = icmp eq i8 %506, 0, !dbg !2770
  %508 = and i1 %110, %507, !dbg !2770
  br i1 %508, label %509, label %525, !dbg !2770

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2772
  br i1 %510, label %511, label %513, !dbg !2776

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2772
  store i8 39, i8* %512, align 1, !dbg !2772, !tbaa !898
  br label %513, !dbg !2772

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %514, metadata !2354, metadata !DIExpression()), !dbg !2412
  %515 = icmp ult i64 %514, %504, !dbg !2777
  br i1 %515, label %516, label %518, !dbg !2780

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2777
  store i8 36, i8* %517, align 1, !dbg !2777, !tbaa !898
  br label %518, !dbg !2777

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %519, metadata !2354, metadata !DIExpression()), !dbg !2412
  %520 = icmp ult i64 %519, %504, !dbg !2781
  br i1 %520, label %521, label %523, !dbg !2784

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2781
  store i8 39, i8* %522, align 1, !dbg !2781, !tbaa !898
  br label %523, !dbg !2781

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %524, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 1, metadata !2361, metadata !DIExpression()), !dbg !2412
  br label %525, !dbg !2785

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2479
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %527, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %526, metadata !2354, metadata !DIExpression()), !dbg !2412
  %528 = icmp ult i64 %526, %504, !dbg !2786
  br i1 %528, label %529, label %531, !dbg !2789

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2786
  store i8 92, i8* %530, align 1, !dbg !2786, !tbaa !898
  br label %531, !dbg !2786

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2789
  call void @llvm.dbg.value(metadata i64 %543, metadata !2345, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %542, metadata !2371, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %541, metadata !2370, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %540, metadata !2364, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %539, metadata !2362, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %538, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %537, metadata !2347, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %536, metadata !2355, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %535, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %534, metadata !2353, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.label(metadata !2410), !dbg !2790
  br label %560, !dbg !2791

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2766
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2412
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2417
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2757
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2421
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2422
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2794
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2479
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2479
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2345, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %542, metadata !2371, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %541, metadata !2370, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %540, metadata !2364, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %539, metadata !2362, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %538, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %537, metadata !2347, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %536, metadata !2355, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %535, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %534, metadata !2353, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.label(metadata !2410), !dbg !2790
  %544 = and i8 %538, 1, !dbg !2791
  %545 = icmp ne i8 %544, 0, !dbg !2791
  %546 = and i8 %541, 1, !dbg !2791
  %547 = icmp eq i8 %546, 0, !dbg !2791
  %548 = and i1 %545, %547, !dbg !2791
  br i1 %548, label %549, label %560, !dbg !2791

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2795
  br i1 %550, label %551, label %553, !dbg !2799

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2795
  store i8 39, i8* %552, align 1, !dbg !2795, !tbaa !898
  br label %553, !dbg !2795

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2799
  call void @llvm.dbg.value(metadata i64 %554, metadata !2354, metadata !DIExpression()), !dbg !2412
  %555 = icmp ult i64 %554, %543, !dbg !2800
  br i1 %555, label %556, label %558, !dbg !2803

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2800
  store i8 39, i8* %557, align 1, !dbg !2800, !tbaa !898
  br label %558, !dbg !2800

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %559, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2412
  br label %560, !dbg !2804

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2479
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %569, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %568, metadata !2354, metadata !DIExpression()), !dbg !2412
  %570 = icmp ult i64 %568, %561, !dbg !2805
  br i1 %570, label %571, label %573, !dbg !2808

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2805
  store i8 %563, i8* %572, align 1, !dbg !2805, !tbaa !898
  br label %573, !dbg !2805

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %574, metadata !2354, metadata !DIExpression()), !dbg !2412
  %575 = icmp eq i8 %562, 0, !dbg !2809
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2811
  call void @llvm.dbg.value(metadata i8 %576, metadata !2363, metadata !DIExpression()), !dbg !2412
  br label %577, !dbg !2812

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2766
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2412
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2417
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2757
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2421
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2412
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2423
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2345, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %584, metadata !2363, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %583, metadata !2362, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %582, metadata !2361, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %581, metadata !2347, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %580, metadata !2355, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %579, metadata !2354, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %578, metadata !2353, metadata !DIExpression()), !dbg !2412
  %586 = add i64 %578, 1, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %586, metadata !2353, metadata !DIExpression()), !dbg !2412
  br label %121, !dbg !2814, !llvm.loop !2815

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2817
  %590 = and i1 %110, %589, !dbg !2819
  %591 = xor i1 %590, true, !dbg !2819
  %592 = or i1 %109, %591, !dbg !2819
  br i1 %592, label %593, label %635, !dbg !2819

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2820
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2820
  br i1 %597, label %598, label %607, !dbg !2820

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2822
  %600 = icmp eq i8 %599, 0, !dbg !2822
  br i1 %600, label %603, label %601, !dbg !2825

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2826
  br label %652, !dbg !2827

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2828
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2830
  br i1 %606, label %26, label %607, !dbg !2830

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2831
  %610 = and i1 %609, %608, !dbg !2833
  br i1 %610, label %611, label %626, !dbg !2833

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2356, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %123, metadata !2354, metadata !DIExpression()), !dbg !2412
  %612 = load i8, i8* %97, align 1, !dbg !2834, !tbaa !898
  %613 = icmp eq i8 %612, 0, !dbg !2837
  br i1 %613, label %626, label %614, !dbg !2837

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2356, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %617, metadata !2354, metadata !DIExpression()), !dbg !2412
  %618 = icmp ult i64 %617, %129, !dbg !2838
  br i1 %618, label %619, label %621, !dbg !2841

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2838
  store i8 %615, i8* %620, align 1, !dbg !2838, !tbaa !898
  br label %621, !dbg !2838

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %622, metadata !2354, metadata !DIExpression()), !dbg !2412
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2842
  call void @llvm.dbg.value(metadata i8* %623, metadata !2356, metadata !DIExpression()), !dbg !2412
  %624 = load i8, i8* %623, align 1, !dbg !2834, !tbaa !898
  %625 = icmp eq i8 %624, 0, !dbg !2837
  br i1 %625, label %626, label %614, !dbg !2837, !llvm.loop !2843

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2454
  call void @llvm.dbg.value(metadata i64 %627, metadata !2354, metadata !DIExpression()), !dbg !2412
  %628 = icmp ult i64 %627, %129, !dbg !2845
  br i1 %628, label %629, label %652, !dbg !2847

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2848
  store i8 0, i8* %630, align 1, !dbg !2849, !tbaa !898
  br label %652, !dbg !2848

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2345, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %637, metadata !2347, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.label(metadata !2411), !dbg !2850
  %633 = icmp eq i8 %101, 0, !dbg !2851
  %634 = select i1 %633, i32 2, i32 4, !dbg !2851
  br label %642, !dbg !2851

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2345, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %637, metadata !2347, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.label(metadata !2411), !dbg !2850
  %639 = icmp eq i32 %93, 2, !dbg !2853
  %640 = icmp eq i8 %636, 0, !dbg !2851
  %641 = select i1 %640, i32 2, i32 4, !dbg !2851
  br i1 %639, label %642, label %646, !dbg !2851

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2851

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2348, metadata !DIExpression()), !dbg !2412
  %650 = and i32 %5, -3, !dbg !2854
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2855
  br label %652, !dbg !2856

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2857
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2862, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 %1, metadata !2863, metadata !DIExpression()), !dbg !2866
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #30, !dbg !2867
  call void @llvm.dbg.value(metadata i8* %3, metadata !2864, metadata !DIExpression()), !dbg !2866
  %4 = icmp eq i8* %3, %0, !dbg !2868
  br i1 %4, label %5, label %72, !dbg !2870

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #30, !dbg !2871
  call void @llvm.dbg.value(metadata i8* %6, metadata !2865, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8* %6, metadata !2872, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* undef, metadata !2878, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 85, metadata !2879, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 84, metadata !2880, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 70, metadata !2881, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 45, metadata !2882, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 56, metadata !2883, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 0, metadata !2884, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 0, metadata !2885, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 0, metadata !2887, metadata !DIExpression()), !dbg !2888
  %7 = load i8, i8* %6, align 1, !dbg !2891, !tbaa !898
  %8 = and i8 %7, -33, !dbg !2891
  %9 = sext i8 %8 to i32, !dbg !2891
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2891

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2893, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8* undef, metadata !2898, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8 84, metadata !2899, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8 70, metadata !2900, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8 45, metadata !2901, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8 56, metadata !2902, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8 0, metadata !2903, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8 0, metadata !2904, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8 0, metadata !2905, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8 0, metadata !2906, metadata !DIExpression()), !dbg !2907
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2911
  %12 = load i8, i8* %11, align 1, !dbg !2911, !tbaa !898
  %13 = and i8 %12, -33, !dbg !2911
  %14 = icmp eq i8 %13, 84, !dbg !2911
  br i1 %14, label %15, label %69, !dbg !2911

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2913, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8* undef, metadata !2918, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 70, metadata !2919, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 45, metadata !2920, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 56, metadata !2921, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 0, metadata !2922, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 0, metadata !2923, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 0, metadata !2924, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 0, metadata !2925, metadata !DIExpression()), !dbg !2926
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2930
  %17 = load i8, i8* %16, align 1, !dbg !2930, !tbaa !898
  %18 = and i8 %17, -33, !dbg !2930
  %19 = icmp eq i8 %18, 70, !dbg !2930
  br i1 %19, label %20, label %69, !dbg !2930

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2932, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8* undef, metadata !2937, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8 45, metadata !2938, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8 56, metadata !2939, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8 0, metadata !2940, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8 0, metadata !2941, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8 0, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8 0, metadata !2943, metadata !DIExpression()), !dbg !2944
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2948
  %22 = load i8, i8* %21, align 1, !dbg !2948, !tbaa !898
  %23 = icmp eq i8 %22, 45, !dbg !2948
  br i1 %23, label %24, label %69, !dbg !2950

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2951, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8* undef, metadata !2956, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8 56, metadata !2957, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8 0, metadata !2958, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8 0, metadata !2959, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8 0, metadata !2960, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8 0, metadata !2961, metadata !DIExpression()), !dbg !2962
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2966
  %26 = load i8, i8* %25, align 1, !dbg !2966, !tbaa !898
  %27 = icmp eq i8 %26, 56, !dbg !2966
  br i1 %27, label %28, label %69, !dbg !2968

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2969, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8* undef, metadata !2974, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 0, metadata !2975, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 0, metadata !2976, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 0, metadata !2977, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 0, metadata !2978, metadata !DIExpression()), !dbg !2979
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2983
  %30 = load i8, i8* %29, align 1, !dbg !2983, !tbaa !898
  %31 = icmp eq i8 %30, 0, !dbg !2983
  br i1 %31, label %32, label %69, !dbg !2985

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2986, !tbaa !898
  %34 = icmp eq i8 %33, 96, !dbg !2987
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.123, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.124, i64 0, i64 0), !dbg !2986
  br label %72, !dbg !2988

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2893, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8* undef, metadata !2898, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 66, metadata !2899, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 49, metadata !2900, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 56, metadata !2901, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 48, metadata !2902, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 51, metadata !2903, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 48, metadata !2904, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 0, metadata !2905, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 0, metadata !2906, metadata !DIExpression()), !dbg !2989
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2993
  %38 = load i8, i8* %37, align 1, !dbg !2993, !tbaa !898
  %39 = and i8 %38, -33, !dbg !2993
  %40 = icmp eq i8 %39, 66, !dbg !2993
  br i1 %40, label %41, label %69, !dbg !2993

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2913, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8* undef, metadata !2918, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8 49, metadata !2919, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8 56, metadata !2920, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8 48, metadata !2921, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8 51, metadata !2922, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8 48, metadata !2923, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8 0, metadata !2924, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8 0, metadata !2925, metadata !DIExpression()), !dbg !2994
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2996
  %43 = load i8, i8* %42, align 1, !dbg !2996, !tbaa !898
  %44 = icmp eq i8 %43, 49, !dbg !2996
  br i1 %44, label %45, label %69, !dbg !2997

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2932, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* undef, metadata !2937, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 56, metadata !2938, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 48, metadata !2939, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 51, metadata !2940, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 48, metadata !2941, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 0, metadata !2942, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 0, metadata !2943, metadata !DIExpression()), !dbg !2998
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3000
  %47 = load i8, i8* %46, align 1, !dbg !3000, !tbaa !898
  %48 = icmp eq i8 %47, 56, !dbg !3000
  br i1 %48, label %49, label %69, !dbg !3001

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2951, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8* undef, metadata !2956, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8 48, metadata !2957, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8 51, metadata !2958, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8 48, metadata !2959, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8 0, metadata !2960, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8 0, metadata !2961, metadata !DIExpression()), !dbg !3002
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3004
  %51 = load i8, i8* %50, align 1, !dbg !3004, !tbaa !898
  %52 = icmp eq i8 %51, 48, !dbg !3004
  br i1 %52, label %53, label %69, !dbg !3005

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2969, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8* undef, metadata !2974, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8 51, metadata !2975, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8 48, metadata !2976, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8 0, metadata !2977, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8 0, metadata !2978, metadata !DIExpression()), !dbg !3006
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3008
  %55 = load i8, i8* %54, align 1, !dbg !3008, !tbaa !898
  %56 = icmp eq i8 %55, 51, !dbg !3008
  br i1 %56, label %57, label %69, !dbg !3009

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !3010, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8* undef, metadata !3015, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 48, metadata !3016, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 0, metadata !3017, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 0, metadata !3018, metadata !DIExpression()), !dbg !3019
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3023
  %59 = load i8, i8* %58, align 1, !dbg !3023, !tbaa !898
  %60 = icmp eq i8 %59, 48, !dbg !3023
  br i1 %60, label %61, label %69, !dbg !3025

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !3026, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8* undef, metadata !3031, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 0, metadata !3032, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 0, metadata !3033, metadata !DIExpression()), !dbg !3034
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3038
  %63 = load i8, i8* %62, align 1, !dbg !3038, !tbaa !898
  %64 = icmp eq i8 %63, 0, !dbg !3038
  br i1 %64, label %65, label %69, !dbg !3040

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !3041, !tbaa !898
  %67 = icmp eq i8 %66, 96, !dbg !3042
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.125, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.126, i64 0, i64 0), !dbg !3041
  br label %72, !dbg !3043

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !3044
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), !dbg !3045
  br label %72, !dbg !3046

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2866
  ret i8* %73, !dbg !3047
}

; Function Attrs: nounwind
declare !dbg !3048 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !3052 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3058 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3062, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %1, metadata !3063, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8* %0, metadata !3066, metadata !DIExpression()) #30, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %1, metadata !3071, metadata !DIExpression()) #30, !dbg !3079
  call void @llvm.dbg.value(metadata i64* null, metadata !3072, metadata !DIExpression()) #30, !dbg !3079
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3073, metadata !DIExpression()) #30, !dbg !3079
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3081
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3081
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3074, metadata !DIExpression()) #30, !dbg !3079
  %6 = tail call i32* @__errno_location() #34, !dbg !3082
  %7 = load i32, i32* %6, align 4, !dbg !3082, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %7, metadata !3075, metadata !DIExpression()) #30, !dbg !3079
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3083
  %9 = load i32, i32* %8, align 4, !dbg !3083, !tbaa !2288
  %10 = or i32 %9, 1, !dbg !3084
  call void @llvm.dbg.value(metadata i32 %10, metadata !3076, metadata !DIExpression()) #30, !dbg !3079
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3085
  %12 = load i32, i32* %11, align 8, !dbg !3085, !tbaa !2237
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3086
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3087
  %15 = load i8*, i8** %14, align 8, !dbg !3087, !tbaa !2310
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3088
  %17 = load i8*, i8** %16, align 8, !dbg !3088, !tbaa !2313
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #30, !dbg !3089
  %19 = add i64 %18, 1, !dbg !3090
  call void @llvm.dbg.value(metadata i64 %19, metadata !3077, metadata !DIExpression()) #30, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %19, metadata !3091, metadata !DIExpression()) #30, !dbg !3096
  %20 = tail call noalias i8* @xmalloc(i64 %19) #30, !dbg !3098
  call void @llvm.dbg.value(metadata i8* %20, metadata !3078, metadata !DIExpression()) #30, !dbg !3079
  %21 = load i32, i32* %11, align 8, !dbg !3099, !tbaa !2237
  %22 = load i8*, i8** %14, align 8, !dbg !3100, !tbaa !2310
  %23 = load i8*, i8** %16, align 8, !dbg !3101, !tbaa !2313
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #30, !dbg !3102
  store i32 %7, i32* %6, align 4, !dbg !3103, !tbaa !914
  ret i8* %20, !dbg !3104
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3067 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3066, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 %1, metadata !3071, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64* %2, metadata !3072, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3073, metadata !DIExpression()), !dbg !3105
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3106
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3106
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3074, metadata !DIExpression()), !dbg !3105
  %7 = tail call i32* @__errno_location() #34, !dbg !3107
  %8 = load i32, i32* %7, align 4, !dbg !3107, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %8, metadata !3075, metadata !DIExpression()), !dbg !3105
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3108
  %10 = load i32, i32* %9, align 4, !dbg !3108, !tbaa !2288
  %11 = icmp eq i64* %2, null, !dbg !3109
  %12 = zext i1 %11 to i32, !dbg !3109
  %13 = or i32 %10, %12, !dbg !3110
  call void @llvm.dbg.value(metadata i32 %13, metadata !3076, metadata !DIExpression()), !dbg !3105
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3111
  %15 = load i32, i32* %14, align 8, !dbg !3111, !tbaa !2237
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3112
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3113
  %18 = load i8*, i8** %17, align 8, !dbg !3113, !tbaa !2310
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3114
  %20 = load i8*, i8** %19, align 8, !dbg !3114, !tbaa !2313
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !3115
  %22 = add i64 %21, 1, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %22, metadata !3077, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 %22, metadata !3091, metadata !DIExpression()) #30, !dbg !3117
  %23 = tail call noalias i8* @xmalloc(i64 %22) #30, !dbg !3119
  call void @llvm.dbg.value(metadata i8* %23, metadata !3078, metadata !DIExpression()), !dbg !3105
  %24 = load i32, i32* %14, align 8, !dbg !3120, !tbaa !2237
  %25 = load i8*, i8** %17, align 8, !dbg !3121, !tbaa !2310
  %26 = load i8*, i8** %19, align 8, !dbg !3122, !tbaa !2313
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !3123
  store i32 %8, i32* %7, align 4, !dbg !3124, !tbaa !914
  br i1 %11, label %29, label %28, !dbg !3125

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3126, !tbaa !889
  br label %29, !dbg !3128

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3129
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3130 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3134, !tbaa !710
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3132, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i32 1, metadata !3133, metadata !DIExpression()), !dbg !3135
  %2 = load i32, i32* @nslots, align 4, !dbg !3136, !tbaa !914
  %3 = icmp sgt i32 %2, 1, !dbg !3139
  br i1 %3, label %4, label %12, !dbg !3140

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3139
  br label %6, !dbg !3140

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !3133, metadata !DIExpression()), !dbg !3135
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !3141
  %9 = load i8*, i8** %8, align 8, !dbg !3141, !tbaa !3142
  tail call void @free(i8* %9) #30, !dbg !3144
  %10 = add nuw nsw i64 %7, 1, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %10, metadata !3133, metadata !DIExpression()), !dbg !3135
  %11 = icmp eq i64 %10, %5, !dbg !3139
  br i1 %11, label %12, label %6, !dbg !3140, !llvm.loop !3146

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3148
  %14 = load i8*, i8** %13, align 8, !dbg !3148, !tbaa !3142
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3150
  br i1 %15, label %17, label %16, !dbg !3151

16:                                               ; preds = %12
  tail call void @free(i8* %14) #30, !dbg !3152
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3154, !tbaa !3155
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3156, !tbaa !3142
  br label %17, !dbg !3157

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3158
  br i1 %18, label %21, label %19, !dbg !3160

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3161
  tail call void @free(i8* %20) #30, !dbg !3163
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3164, !tbaa !710
  br label %21, !dbg !3165

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3166, !tbaa !914
  ret void, !dbg !3167
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3168 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3170, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8* %1, metadata !3171, metadata !DIExpression()), !dbg !3172
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3173
  ret i8* %3, !dbg !3174
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3175 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3179, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i8* %1, metadata !3180, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %2, metadata !3181, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3182, metadata !DIExpression()), !dbg !3194
  %5 = tail call i32* @__errno_location() #34, !dbg !3195
  %6 = load i32, i32* %5, align 4, !dbg !3195, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %6, metadata !3183, metadata !DIExpression()), !dbg !3194
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3196, !tbaa !710
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3184, metadata !DIExpression()), !dbg !3194
  %8 = icmp slt i32 %0, 0, !dbg !3197
  br i1 %8, label %9, label %10, !dbg !3199

9:                                                ; preds = %4
  tail call void @abort() #32, !dbg !3200
  unreachable, !dbg !3200

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3201, !tbaa !914
  %12 = icmp sgt i32 %11, %0, !dbg !3202
  br i1 %12, label %34, label %13, !dbg !3203

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3204
  call void @llvm.dbg.value(metadata i1 %14, metadata !3185, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3205
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3188, metadata !DIExpression()), !dbg !3205
  %15 = icmp eq i32 %0, 2147483647, !dbg !3206
  br i1 %15, label %16, label %17, !dbg !3208

16:                                               ; preds = %13
  tail call void @xalloc_die() #32, !dbg !3209
  unreachable, !dbg !3209

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3210
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3210
  %20 = add nuw nsw i32 %0, 1, !dbg !3211
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !3212
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #30, !dbg !3213
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3213
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3184, metadata !DIExpression()), !dbg !3194
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3214, !tbaa !710
  br i1 %14, label %25, label %26, !dbg !3215

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3216, !tbaa.struct !3218
  br label %26, !dbg !3219

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3220, !tbaa !914
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3221
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3222
  %31 = sub nsw i32 %20, %27, !dbg !3223
  %32 = sext i32 %31 to i64, !dbg !3224
  %33 = shl nsw i64 %32, 4, !dbg !3225
  call void @llvm.dbg.value(metadata i8* %30, metadata !2621, metadata !DIExpression()) #30, !dbg !3226
  call void @llvm.dbg.value(metadata i32 0, metadata !2624, metadata !DIExpression()) #30, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %33, metadata !2625, metadata !DIExpression()) #30, !dbg !3226
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #30, !dbg !3228
  store i32 %20, i32* @nslots, align 4, !dbg !3229, !tbaa !914
  br label %34, !dbg !3230

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3194
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3184, metadata !DIExpression()), !dbg !3194
  %36 = zext i32 %0 to i64, !dbg !3231
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3232
  %38 = load i64, i64* %37, align 8, !dbg !3232, !tbaa !3155
  call void @llvm.dbg.value(metadata i64 %38, metadata !3189, metadata !DIExpression()), !dbg !3233
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3234
  %40 = load i8*, i8** %39, align 8, !dbg !3234, !tbaa !3142
  call void @llvm.dbg.value(metadata i8* %40, metadata !3191, metadata !DIExpression()), !dbg !3233
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3235
  %42 = load i32, i32* %41, align 4, !dbg !3235, !tbaa !2288
  %43 = or i32 %42, 1, !dbg !3236
  call void @llvm.dbg.value(metadata i32 %43, metadata !3192, metadata !DIExpression()), !dbg !3233
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3237
  %45 = load i32, i32* %44, align 8, !dbg !3237, !tbaa !2237
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3238
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3239
  %48 = load i8*, i8** %47, align 8, !dbg !3239, !tbaa !2310
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3240
  %50 = load i8*, i8** %49, align 8, !dbg !3240, !tbaa !2313
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %51, metadata !3193, metadata !DIExpression()), !dbg !3233
  %52 = icmp ugt i64 %38, %51, !dbg !3242
  br i1 %52, label %63, label %53, !dbg !3244

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3245
  call void @llvm.dbg.value(metadata i64 %54, metadata !3189, metadata !DIExpression()), !dbg !3233
  store i64 %54, i64* %37, align 8, !dbg !3247, !tbaa !3155
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3248
  br i1 %55, label %57, label %56, !dbg !3250

56:                                               ; preds = %53
  tail call void @free(i8* %40) #30, !dbg !3251
  br label %57, !dbg !3251

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !3091, metadata !DIExpression()) #30, !dbg !3252
  %58 = tail call noalias i8* @xmalloc(i64 %54) #30, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %58, metadata !3191, metadata !DIExpression()), !dbg !3233
  store i8* %58, i8** %39, align 8, !dbg !3255, !tbaa !3142
  %59 = load i32, i32* %44, align 8, !dbg !3256, !tbaa !2237
  %60 = load i8*, i8** %47, align 8, !dbg !3257, !tbaa !2310
  %61 = load i8*, i8** %49, align 8, !dbg !3258, !tbaa !2313
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3259
  br label %63, !dbg !3260

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3233
  call void @llvm.dbg.value(metadata i8* %64, metadata !3191, metadata !DIExpression()), !dbg !3233
  store i32 %6, i32* %5, align 4, !dbg !3261, !tbaa !914
  ret i8* %64, !dbg !3262
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3267, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i8* %1, metadata !3268, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %2, metadata !3269, metadata !DIExpression()), !dbg !3270
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3271
  ret i8* %4, !dbg !3272
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3273 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3275, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i32 0, metadata !3170, metadata !DIExpression()) #30, !dbg !3277
  call void @llvm.dbg.value(metadata i8* %0, metadata !3171, metadata !DIExpression()) #30, !dbg !3277
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #30, !dbg !3279
  ret i8* %2, !dbg !3280
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3281 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3285, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %1, metadata !3286, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i32 0, metadata !3267, metadata !DIExpression()) #30, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %0, metadata !3268, metadata !DIExpression()) #30, !dbg !3288
  call void @llvm.dbg.value(metadata i64 %1, metadata !3269, metadata !DIExpression()) #30, !dbg !3288
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #30, !dbg !3290
  ret i8* %3, !dbg !3291
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3292 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3296, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i32 %1, metadata !3297, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i8* %2, metadata !3298, metadata !DIExpression()), !dbg !3300
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3301
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #30, !dbg !3301
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3299, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3303), !dbg !3306
  call void @llvm.dbg.value(metadata i32 %1, metadata !3307, metadata !DIExpression()) #30, !dbg !3313
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3312, metadata !DIExpression()) #30, !dbg !3315
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #30, !dbg !3315, !alias.scope !3303
  %6 = icmp eq i32 %1, 10, !dbg !3316
  br i1 %6, label %7, label %8, !dbg !3318

7:                                                ; preds = %3
  tail call void @abort() #32, !dbg !3319, !noalias !3303
  unreachable, !dbg !3319

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3320
  store i32 %1, i32* %9, align 8, !dbg !3321, !tbaa !2237, !alias.scope !3303
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3322
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #30, !dbg !3323
  ret i8* %10, !dbg !3324
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3325 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3329, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 %1, metadata !3330, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i8* %2, metadata !3331, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i64 %3, metadata !3332, metadata !DIExpression()), !dbg !3334
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3335
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #30, !dbg !3335
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3333, metadata !DIExpression()), !dbg !3336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3337), !dbg !3340
  call void @llvm.dbg.value(metadata i32 %1, metadata !3307, metadata !DIExpression()) #30, !dbg !3341
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3312, metadata !DIExpression()) #30, !dbg !3343
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #30, !dbg !3343, !alias.scope !3337
  %7 = icmp eq i32 %1, 10, !dbg !3344
  br i1 %7, label %8, label %9, !dbg !3345

8:                                                ; preds = %4
  tail call void @abort() #32, !dbg !3346, !noalias !3337
  unreachable, !dbg !3346

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3347
  store i32 %1, i32* %10, align 8, !dbg !3348, !tbaa !2237, !alias.scope !3337
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3349
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #30, !dbg !3350
  ret i8* %11, !dbg !3351
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3352 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3356, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* %1, metadata !3357, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 0, metadata !3296, metadata !DIExpression()) #30, !dbg !3359
  call void @llvm.dbg.value(metadata i32 %0, metadata !3297, metadata !DIExpression()) #30, !dbg !3359
  call void @llvm.dbg.value(metadata i8* %1, metadata !3298, metadata !DIExpression()) #30, !dbg !3359
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3361
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #30, !dbg !3361
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3299, metadata !DIExpression()) #30, !dbg !3362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3363) #30, !dbg !3366
  call void @llvm.dbg.value(metadata i32 %0, metadata !3307, metadata !DIExpression()) #30, !dbg !3367
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3312, metadata !DIExpression()) #30, !dbg !3369
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #30, !dbg !3369, !alias.scope !3363
  %5 = icmp eq i32 %0, 10, !dbg !3370
  br i1 %5, label %6, label %7, !dbg !3371

6:                                                ; preds = %2
  tail call void @abort() #32, !dbg !3372, !noalias !3363
  unreachable, !dbg !3372

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3373
  store i32 %0, i32* %8, align 8, !dbg !3374, !tbaa !2237, !alias.scope !3363
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #30, !dbg !3375
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #30, !dbg !3376
  ret i8* %9, !dbg !3377
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3378 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3382, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8* %1, metadata !3383, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 %2, metadata !3384, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i32 0, metadata !3329, metadata !DIExpression()) #30, !dbg !3386
  call void @llvm.dbg.value(metadata i32 %0, metadata !3330, metadata !DIExpression()) #30, !dbg !3386
  call void @llvm.dbg.value(metadata i8* %1, metadata !3331, metadata !DIExpression()) #30, !dbg !3386
  call void @llvm.dbg.value(metadata i64 %2, metadata !3332, metadata !DIExpression()) #30, !dbg !3386
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3388
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #30, !dbg !3388
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3333, metadata !DIExpression()) #30, !dbg !3389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3390) #30, !dbg !3393
  call void @llvm.dbg.value(metadata i32 %0, metadata !3307, metadata !DIExpression()) #30, !dbg !3394
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3312, metadata !DIExpression()) #30, !dbg !3396
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #30, !dbg !3396, !alias.scope !3390
  %6 = icmp eq i32 %0, 10, !dbg !3397
  br i1 %6, label %7, label %8, !dbg !3398

7:                                                ; preds = %3
  tail call void @abort() #32, !dbg !3399, !noalias !3390
  unreachable, !dbg !3399

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3400
  store i32 %0, i32* %9, align 8, !dbg !3401, !tbaa !2237, !alias.scope !3390
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #30, !dbg !3402
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #30, !dbg !3403
  ret i8* %10, !dbg !3404
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3405 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3409, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %1, metadata !3410, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i8 %2, metadata !3411, metadata !DIExpression()), !dbg !3413
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3414
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #30, !dbg !3414
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3412, metadata !DIExpression()), !dbg !3415
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3416, !tbaa.struct !3417
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2255, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i8 %2, metadata !2256, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i32 1, metadata !2257, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i8 %2, metadata !2258, metadata !DIExpression()), !dbg !3418
  %6 = lshr i8 %2, 5, !dbg !3420
  %7 = zext i8 %6 to i64, !dbg !3420
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3421
  call void @llvm.dbg.value(metadata i32* %8, metadata !2259, metadata !DIExpression()), !dbg !3418
  %9 = and i8 %2, 31, !dbg !3422
  %10 = zext i8 %9 to i32, !dbg !3422
  call void @llvm.dbg.value(metadata i32 %10, metadata !2261, metadata !DIExpression()), !dbg !3418
  %11 = load i32, i32* %8, align 4, !dbg !3423, !tbaa !914
  %12 = lshr i32 %11, %10, !dbg !3424
  %13 = and i32 %12, 1, !dbg !3425
  call void @llvm.dbg.value(metadata i32 %13, metadata !2262, metadata !DIExpression()), !dbg !3418
  %14 = xor i32 %13, 1, !dbg !3426
  %15 = shl i32 %14, %10, !dbg !3427
  %16 = xor i32 %15, %11, !dbg !3428
  store i32 %16, i32* %8, align 4, !dbg !3428, !tbaa !914
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3429
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #30, !dbg !3430
  ret i8* %17, !dbg !3431
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3432 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3436, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i8 %1, metadata !3437, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i8* %0, metadata !3409, metadata !DIExpression()) #30, !dbg !3439
  call void @llvm.dbg.value(metadata i64 -1, metadata !3410, metadata !DIExpression()) #30, !dbg !3439
  call void @llvm.dbg.value(metadata i8 %1, metadata !3411, metadata !DIExpression()) #30, !dbg !3439
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3441
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #30, !dbg !3441
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3412, metadata !DIExpression()) #30, !dbg !3442
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #30, !dbg !3443, !tbaa.struct !3417
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2255, metadata !DIExpression()) #30, !dbg !3444
  call void @llvm.dbg.value(metadata i8 %1, metadata !2256, metadata !DIExpression()) #30, !dbg !3444
  call void @llvm.dbg.value(metadata i32 1, metadata !2257, metadata !DIExpression()) #30, !dbg !3444
  call void @llvm.dbg.value(metadata i8 %1, metadata !2258, metadata !DIExpression()) #30, !dbg !3444
  %5 = lshr i8 %1, 5, !dbg !3446
  %6 = zext i8 %5 to i64, !dbg !3446
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3447
  call void @llvm.dbg.value(metadata i32* %7, metadata !2259, metadata !DIExpression()) #30, !dbg !3444
  %8 = and i8 %1, 31, !dbg !3448
  %9 = zext i8 %8 to i32, !dbg !3448
  call void @llvm.dbg.value(metadata i32 %9, metadata !2261, metadata !DIExpression()) #30, !dbg !3444
  %10 = load i32, i32* %7, align 4, !dbg !3449, !tbaa !914
  %11 = lshr i32 %10, %9, !dbg !3450
  %12 = and i32 %11, 1, !dbg !3451
  call void @llvm.dbg.value(metadata i32 %12, metadata !2262, metadata !DIExpression()) #30, !dbg !3444
  %13 = xor i32 %12, 1, !dbg !3452
  %14 = shl i32 %13, %9, !dbg !3453
  %15 = xor i32 %14, %10, !dbg !3454
  store i32 %15, i32* %7, align 4, !dbg !3454, !tbaa !914
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #30, !dbg !3455
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #30, !dbg !3456
  ret i8* %16, !dbg !3457
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3458 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3460, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8* %0, metadata !3436, metadata !DIExpression()) #30, !dbg !3462
  call void @llvm.dbg.value(metadata i8 58, metadata !3437, metadata !DIExpression()) #30, !dbg !3462
  call void @llvm.dbg.value(metadata i8* %0, metadata !3409, metadata !DIExpression()) #30, !dbg !3464
  call void @llvm.dbg.value(metadata i64 -1, metadata !3410, metadata !DIExpression()) #30, !dbg !3464
  call void @llvm.dbg.value(metadata i8 58, metadata !3411, metadata !DIExpression()) #30, !dbg !3464
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3466
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #30, !dbg !3466
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3412, metadata !DIExpression()) #30, !dbg !3467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #30, !dbg !3468, !tbaa.struct !3417
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2255, metadata !DIExpression()) #30, !dbg !3469
  call void @llvm.dbg.value(metadata i8 58, metadata !2256, metadata !DIExpression()) #30, !dbg !3469
  call void @llvm.dbg.value(metadata i32 1, metadata !2257, metadata !DIExpression()) #30, !dbg !3469
  call void @llvm.dbg.value(metadata i8 58, metadata !2258, metadata !DIExpression()) #30, !dbg !3469
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3471
  call void @llvm.dbg.value(metadata i32* %4, metadata !2259, metadata !DIExpression()) #30, !dbg !3469
  call void @llvm.dbg.value(metadata i32 26, metadata !2261, metadata !DIExpression()) #30, !dbg !3469
  %5 = load i32, i32* %4, align 4, !dbg !3472, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %5, metadata !2262, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #30, !dbg !3469
  %6 = or i32 %5, 67108864, !dbg !3473
  store i32 %6, i32* %4, align 4, !dbg !3473, !tbaa !914
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #30, !dbg !3474
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #30, !dbg !3475
  ret i8* %7, !dbg !3476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3477 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3479, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 %1, metadata !3480, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8* %0, metadata !3409, metadata !DIExpression()) #30, !dbg !3482
  call void @llvm.dbg.value(metadata i64 %1, metadata !3410, metadata !DIExpression()) #30, !dbg !3482
  call void @llvm.dbg.value(metadata i8 58, metadata !3411, metadata !DIExpression()) #30, !dbg !3482
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3484
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #30, !dbg !3484
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3412, metadata !DIExpression()) #30, !dbg !3485
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #30, !dbg !3486, !tbaa.struct !3417
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2255, metadata !DIExpression()) #30, !dbg !3487
  call void @llvm.dbg.value(metadata i8 58, metadata !2256, metadata !DIExpression()) #30, !dbg !3487
  call void @llvm.dbg.value(metadata i32 1, metadata !2257, metadata !DIExpression()) #30, !dbg !3487
  call void @llvm.dbg.value(metadata i8 58, metadata !2258, metadata !DIExpression()) #30, !dbg !3487
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3489
  call void @llvm.dbg.value(metadata i32* %5, metadata !2259, metadata !DIExpression()) #30, !dbg !3487
  call void @llvm.dbg.value(metadata i32 26, metadata !2261, metadata !DIExpression()) #30, !dbg !3487
  %6 = load i32, i32* %5, align 4, !dbg !3490, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %6, metadata !2262, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #30, !dbg !3487
  %7 = or i32 %6, 67108864, !dbg !3491
  store i32 %7, i32* %5, align 4, !dbg !3491, !tbaa !914
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #30, !dbg !3492
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #30, !dbg !3493
  ret i8* %8, !dbg !3494
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3495 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3312, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3501
  call void @llvm.dbg.value(metadata i32 %0, metadata !3497, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 %1, metadata !3498, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i8* %2, metadata !3499, metadata !DIExpression()), !dbg !3503
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3504
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #30, !dbg !3504
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3500, metadata !DIExpression()), !dbg !3505
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3506
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3507), !dbg !3506
  call void @llvm.dbg.value(metadata i32 %1, metadata !3307, metadata !DIExpression()) #30, !dbg !3510
  call void @llvm.dbg.value(metadata i32 0, metadata !3312, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3510
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3501, !alias.scope !3507
  %8 = icmp eq i32 %1, 10, !dbg !3511
  br i1 %8, label %9, label %10, !dbg !3512

9:                                                ; preds = %3
  tail call void @abort() #32, !dbg !3513, !noalias !3507
  unreachable, !dbg !3513

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3312, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3510
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3506
  store i32 %1, i32* %11, align 8, !dbg !3506, !tbaa.struct !3417
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3506
  %13 = bitcast i32* %12 to i8*, !dbg !3506
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3506, !tbaa.struct !3514
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3506
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2255, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8 58, metadata !2256, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i32 1, metadata !2257, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8 58, metadata !2258, metadata !DIExpression()), !dbg !3515
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3517
  call void @llvm.dbg.value(metadata i32* %14, metadata !2259, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i32 26, metadata !2261, metadata !DIExpression()), !dbg !3515
  %15 = load i32, i32* %14, align 4, !dbg !3518, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %15, metadata !2262, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3515
  %16 = or i32 %15, 67108864, !dbg !3519
  store i32 %16, i32* %14, align 4, !dbg !3519, !tbaa !914
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3520
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #30, !dbg !3521
  ret i8* %17, !dbg !3522
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3523 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3527, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i8* %1, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i8* %2, metadata !3529, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i8* %3, metadata !3530, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i32 %0, metadata !3532, metadata !DIExpression()) #30, !dbg !3542
  call void @llvm.dbg.value(metadata i8* %1, metadata !3537, metadata !DIExpression()) #30, !dbg !3542
  call void @llvm.dbg.value(metadata i8* %2, metadata !3538, metadata !DIExpression()) #30, !dbg !3542
  call void @llvm.dbg.value(metadata i8* %3, metadata !3539, metadata !DIExpression()) #30, !dbg !3542
  call void @llvm.dbg.value(metadata i64 -1, metadata !3540, metadata !DIExpression()) #30, !dbg !3542
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3544
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #30, !dbg !3544
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3541, metadata !DIExpression()) #30, !dbg !3545
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #30, !dbg !3546, !tbaa.struct !3417
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2295, metadata !DIExpression()) #30, !dbg !3547
  call void @llvm.dbg.value(metadata i8* %1, metadata !2296, metadata !DIExpression()) #30, !dbg !3547
  call void @llvm.dbg.value(metadata i8* %2, metadata !2297, metadata !DIExpression()) #30, !dbg !3547
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2295, metadata !DIExpression()) #30, !dbg !3547
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3549
  store i32 10, i32* %7, align 8, !dbg !3550, !tbaa !2237
  %8 = icmp ne i8* %1, null, !dbg !3551
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3552
  br i1 %10, label %12, label %11, !dbg !3552

11:                                               ; preds = %4
  tail call void @abort() #32, !dbg !3553
  unreachable, !dbg !3553

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3554
  store i8* %1, i8** %13, align 8, !dbg !3555, !tbaa !2310
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3556
  store i8* %2, i8** %14, align 8, !dbg !3557, !tbaa !2313
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #30, !dbg !3558
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #30, !dbg !3559
  ret i8* %15, !dbg !3560
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3533 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3532, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i8* %1, metadata !3537, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i8* %2, metadata !3538, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i8* %3, metadata !3539, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %4, metadata !3540, metadata !DIExpression()), !dbg !3561
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3562
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #30, !dbg !3562
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3541, metadata !DIExpression()), !dbg !3563
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3564, !tbaa.struct !3417
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2295, metadata !DIExpression()) #30, !dbg !3565
  call void @llvm.dbg.value(metadata i8* %1, metadata !2296, metadata !DIExpression()) #30, !dbg !3565
  call void @llvm.dbg.value(metadata i8* %2, metadata !2297, metadata !DIExpression()) #30, !dbg !3565
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2295, metadata !DIExpression()) #30, !dbg !3565
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3567
  store i32 10, i32* %8, align 8, !dbg !3568, !tbaa !2237
  %9 = icmp ne i8* %1, null, !dbg !3569
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3570
  br i1 %11, label %13, label %12, !dbg !3570

12:                                               ; preds = %5
  tail call void @abort() #32, !dbg !3571
  unreachable, !dbg !3571

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3572
  store i8* %1, i8** %14, align 8, !dbg !3573, !tbaa !2310
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3574
  store i8* %2, i8** %15, align 8, !dbg !3575, !tbaa !2313
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3576
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #30, !dbg !3577
  ret i8* %16, !dbg !3578
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3579 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3583, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %1, metadata !3584, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %2, metadata !3585, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 0, metadata !3527, metadata !DIExpression()) #30, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %0, metadata !3528, metadata !DIExpression()) #30, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %1, metadata !3529, metadata !DIExpression()) #30, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %2, metadata !3530, metadata !DIExpression()) #30, !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !3532, metadata !DIExpression()) #30, !dbg !3589
  call void @llvm.dbg.value(metadata i8* %0, metadata !3537, metadata !DIExpression()) #30, !dbg !3589
  call void @llvm.dbg.value(metadata i8* %1, metadata !3538, metadata !DIExpression()) #30, !dbg !3589
  call void @llvm.dbg.value(metadata i8* %2, metadata !3539, metadata !DIExpression()) #30, !dbg !3589
  call void @llvm.dbg.value(metadata i64 -1, metadata !3540, metadata !DIExpression()) #30, !dbg !3589
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3591
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #30, !dbg !3591
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3541, metadata !DIExpression()) #30, !dbg !3592
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #30, !dbg !3593, !tbaa.struct !3417
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2295, metadata !DIExpression()) #30, !dbg !3594
  call void @llvm.dbg.value(metadata i8* %0, metadata !2296, metadata !DIExpression()) #30, !dbg !3594
  call void @llvm.dbg.value(metadata i8* %1, metadata !2297, metadata !DIExpression()) #30, !dbg !3594
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2295, metadata !DIExpression()) #30, !dbg !3594
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3596
  store i32 10, i32* %6, align 8, !dbg !3597, !tbaa !2237
  %7 = icmp ne i8* %0, null, !dbg !3598
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3599
  br i1 %9, label %11, label %10, !dbg !3599

10:                                               ; preds = %3
  tail call void @abort() #32, !dbg !3600
  unreachable, !dbg !3600

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3601
  store i8* %0, i8** %12, align 8, !dbg !3602, !tbaa !2310
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3603
  store i8* %1, i8** %13, align 8, !dbg !3604, !tbaa !2313
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #30, !dbg !3605
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #30, !dbg !3606
  ret i8* %14, !dbg !3607
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3608 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3612, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8* %1, metadata !3613, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8* %2, metadata !3614, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %3, metadata !3615, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i32 0, metadata !3532, metadata !DIExpression()) #30, !dbg !3617
  call void @llvm.dbg.value(metadata i8* %0, metadata !3537, metadata !DIExpression()) #30, !dbg !3617
  call void @llvm.dbg.value(metadata i8* %1, metadata !3538, metadata !DIExpression()) #30, !dbg !3617
  call void @llvm.dbg.value(metadata i8* %2, metadata !3539, metadata !DIExpression()) #30, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %3, metadata !3540, metadata !DIExpression()) #30, !dbg !3617
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3619
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #30, !dbg !3619
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3541, metadata !DIExpression()) #30, !dbg !3620
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #30, !dbg !3621, !tbaa.struct !3417
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2295, metadata !DIExpression()) #30, !dbg !3622
  call void @llvm.dbg.value(metadata i8* %0, metadata !2296, metadata !DIExpression()) #30, !dbg !3622
  call void @llvm.dbg.value(metadata i8* %1, metadata !2297, metadata !DIExpression()) #30, !dbg !3622
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2295, metadata !DIExpression()) #30, !dbg !3622
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3624
  store i32 10, i32* %7, align 8, !dbg !3625, !tbaa !2237
  %8 = icmp ne i8* %0, null, !dbg !3626
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3627
  br i1 %10, label %12, label %11, !dbg !3627

11:                                               ; preds = %4
  tail call void @abort() #32, !dbg !3628
  unreachable, !dbg !3628

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3629
  store i8* %0, i8** %13, align 8, !dbg !3630, !tbaa !2310
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3631
  store i8* %1, i8** %14, align 8, !dbg !3632, !tbaa !2313
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #30, !dbg !3633
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #30, !dbg !3634
  ret i8* %15, !dbg !3635
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3636 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3640, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8* %1, metadata !3641, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 %2, metadata !3642, metadata !DIExpression()), !dbg !3643
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3644
  ret i8* %4, !dbg !3645
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3646 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3650, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i64 %1, metadata !3651, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i32 0, metadata !3640, metadata !DIExpression()) #30, !dbg !3653
  call void @llvm.dbg.value(metadata i8* %0, metadata !3641, metadata !DIExpression()) #30, !dbg !3653
  call void @llvm.dbg.value(metadata i64 %1, metadata !3642, metadata !DIExpression()) #30, !dbg !3653
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #30, !dbg !3655
  ret i8* %3, !dbg !3656
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3657 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3661, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i8* %1, metadata !3662, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32 %0, metadata !3640, metadata !DIExpression()) #30, !dbg !3664
  call void @llvm.dbg.value(metadata i8* %1, metadata !3641, metadata !DIExpression()) #30, !dbg !3664
  call void @llvm.dbg.value(metadata i64 -1, metadata !3642, metadata !DIExpression()) #30, !dbg !3664
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #30, !dbg !3666
  ret i8* %3, !dbg !3667
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3668 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3672, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 0, metadata !3661, metadata !DIExpression()) #30, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %0, metadata !3662, metadata !DIExpression()) #30, !dbg !3674
  call void @llvm.dbg.value(metadata i32 0, metadata !3640, metadata !DIExpression()) #30, !dbg !3676
  call void @llvm.dbg.value(metadata i8* %0, metadata !3641, metadata !DIExpression()) #30, !dbg !3676
  call void @llvm.dbg.value(metadata i64 -1, metadata !3642, metadata !DIExpression()) #30, !dbg !3676
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #30, !dbg !3678
  ret i8* %2, !dbg !3679
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3680 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3718, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i8* %1, metadata !3719, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i8* %2, metadata !3720, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i8* %3, metadata !3721, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i8** %4, metadata !3722, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i64 %5, metadata !3723, metadata !DIExpression()), !dbg !3724
  %7 = icmp eq i8* %1, null, !dbg !3725
  br i1 %7, label %10, label %8, !dbg !3727

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.139, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #30, !dbg !3728
  br label %12, !dbg !3728

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.140, i64 0, i64 0), i8* %2, i8* %3) #30, !dbg !3729
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.141, i64 0, i64 0), i32 5) #30, !dbg !3730
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #30, !dbg !3730
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.142, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3731
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.143, i64 0, i64 0), i32 5) #30, !dbg !3732
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.144, i64 0, i64 0)) #30, !dbg !3732
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.142, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3733
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
  ], !dbg !3734

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.145, i64 0, i64 0), i32 5) #30, !dbg !3735
  %21 = load i8*, i8** %4, align 8, !dbg !3735, !tbaa !710
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #30, !dbg !3735
  br label %147, !dbg !3737

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.146, i64 0, i64 0), i32 5) #30, !dbg !3738
  %25 = load i8*, i8** %4, align 8, !dbg !3738, !tbaa !710
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3738
  %27 = load i8*, i8** %26, align 8, !dbg !3738, !tbaa !710
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #30, !dbg !3738
  br label %147, !dbg !3739

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.147, i64 0, i64 0), i32 5) #30, !dbg !3740
  %31 = load i8*, i8** %4, align 8, !dbg !3740, !tbaa !710
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3740
  %33 = load i8*, i8** %32, align 8, !dbg !3740, !tbaa !710
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3740
  %35 = load i8*, i8** %34, align 8, !dbg !3740, !tbaa !710
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #30, !dbg !3740
  br label %147, !dbg !3741

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.148, i64 0, i64 0), i32 5) #30, !dbg !3742
  %39 = load i8*, i8** %4, align 8, !dbg !3742, !tbaa !710
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3742
  %41 = load i8*, i8** %40, align 8, !dbg !3742, !tbaa !710
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3742
  %43 = load i8*, i8** %42, align 8, !dbg !3742, !tbaa !710
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3742
  %45 = load i8*, i8** %44, align 8, !dbg !3742, !tbaa !710
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #30, !dbg !3742
  br label %147, !dbg !3743

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.149, i64 0, i64 0), i32 5) #30, !dbg !3744
  %49 = load i8*, i8** %4, align 8, !dbg !3744, !tbaa !710
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3744
  %51 = load i8*, i8** %50, align 8, !dbg !3744, !tbaa !710
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3744
  %53 = load i8*, i8** %52, align 8, !dbg !3744, !tbaa !710
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3744
  %55 = load i8*, i8** %54, align 8, !dbg !3744, !tbaa !710
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3744
  %57 = load i8*, i8** %56, align 8, !dbg !3744, !tbaa !710
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #30, !dbg !3744
  br label %147, !dbg !3745

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.150, i64 0, i64 0), i32 5) #30, !dbg !3746
  %61 = load i8*, i8** %4, align 8, !dbg !3746, !tbaa !710
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3746
  %63 = load i8*, i8** %62, align 8, !dbg !3746, !tbaa !710
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3746
  %65 = load i8*, i8** %64, align 8, !dbg !3746, !tbaa !710
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3746
  %67 = load i8*, i8** %66, align 8, !dbg !3746, !tbaa !710
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3746
  %69 = load i8*, i8** %68, align 8, !dbg !3746, !tbaa !710
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3746
  %71 = load i8*, i8** %70, align 8, !dbg !3746, !tbaa !710
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #30, !dbg !3746
  br label %147, !dbg !3747

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.151, i64 0, i64 0), i32 5) #30, !dbg !3748
  %75 = load i8*, i8** %4, align 8, !dbg !3748, !tbaa !710
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3748
  %77 = load i8*, i8** %76, align 8, !dbg !3748, !tbaa !710
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3748
  %79 = load i8*, i8** %78, align 8, !dbg !3748, !tbaa !710
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3748
  %81 = load i8*, i8** %80, align 8, !dbg !3748, !tbaa !710
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3748
  %83 = load i8*, i8** %82, align 8, !dbg !3748, !tbaa !710
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3748
  %85 = load i8*, i8** %84, align 8, !dbg !3748, !tbaa !710
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3748
  %87 = load i8*, i8** %86, align 8, !dbg !3748, !tbaa !710
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #30, !dbg !3748
  br label %147, !dbg !3749

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.152, i64 0, i64 0), i32 5) #30, !dbg !3750
  %91 = load i8*, i8** %4, align 8, !dbg !3750, !tbaa !710
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3750
  %93 = load i8*, i8** %92, align 8, !dbg !3750, !tbaa !710
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3750
  %95 = load i8*, i8** %94, align 8, !dbg !3750, !tbaa !710
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3750
  %97 = load i8*, i8** %96, align 8, !dbg !3750, !tbaa !710
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3750
  %99 = load i8*, i8** %98, align 8, !dbg !3750, !tbaa !710
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3750
  %101 = load i8*, i8** %100, align 8, !dbg !3750, !tbaa !710
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3750
  %103 = load i8*, i8** %102, align 8, !dbg !3750, !tbaa !710
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3750
  %105 = load i8*, i8** %104, align 8, !dbg !3750, !tbaa !710
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #30, !dbg !3750
  br label %147, !dbg !3751

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.153, i64 0, i64 0), i32 5) #30, !dbg !3752
  %109 = load i8*, i8** %4, align 8, !dbg !3752, !tbaa !710
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3752
  %111 = load i8*, i8** %110, align 8, !dbg !3752, !tbaa !710
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3752
  %113 = load i8*, i8** %112, align 8, !dbg !3752, !tbaa !710
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3752
  %115 = load i8*, i8** %114, align 8, !dbg !3752, !tbaa !710
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3752
  %117 = load i8*, i8** %116, align 8, !dbg !3752, !tbaa !710
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3752
  %119 = load i8*, i8** %118, align 8, !dbg !3752, !tbaa !710
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3752
  %121 = load i8*, i8** %120, align 8, !dbg !3752, !tbaa !710
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3752
  %123 = load i8*, i8** %122, align 8, !dbg !3752, !tbaa !710
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3752
  %125 = load i8*, i8** %124, align 8, !dbg !3752, !tbaa !710
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #30, !dbg !3752
  br label %147, !dbg !3753

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.154, i64 0, i64 0), i32 5) #30, !dbg !3754
  %129 = load i8*, i8** %4, align 8, !dbg !3754, !tbaa !710
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3754
  %131 = load i8*, i8** %130, align 8, !dbg !3754, !tbaa !710
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3754
  %133 = load i8*, i8** %132, align 8, !dbg !3754, !tbaa !710
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3754
  %135 = load i8*, i8** %134, align 8, !dbg !3754, !tbaa !710
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3754
  %137 = load i8*, i8** %136, align 8, !dbg !3754, !tbaa !710
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3754
  %139 = load i8*, i8** %138, align 8, !dbg !3754, !tbaa !710
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3754
  %141 = load i8*, i8** %140, align 8, !dbg !3754, !tbaa !710
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3754
  %143 = load i8*, i8** %142, align 8, !dbg !3754, !tbaa !710
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3754
  %145 = load i8*, i8** %144, align 8, !dbg !3754, !tbaa !710
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #30, !dbg !3754
  br label %147, !dbg !3755

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3756
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3757 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3761, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i8* %1, metadata !3762, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i8* %2, metadata !3763, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i8* %3, metadata !3764, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i8** %4, metadata !3765, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i64 0, metadata !3766, metadata !DIExpression()), !dbg !3767
  br label %6, !dbg !3768

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3770
  call void @llvm.dbg.value(metadata i64 %7, metadata !3766, metadata !DIExpression()), !dbg !3767
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3771
  %9 = load i8*, i8** %8, align 8, !dbg !3771, !tbaa !710
  %10 = icmp eq i8* %9, null, !dbg !3773
  %11 = add i64 %7, 1, !dbg !3774
  call void @llvm.dbg.value(metadata i64 %11, metadata !3766, metadata !DIExpression()), !dbg !3767
  br i1 %10, label %12, label %6, !dbg !3773, !llvm.loop !3775

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3777
  ret void, !dbg !3778
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3779 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3790, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8* %1, metadata !3791, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8* %2, metadata !3792, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8* %3, metadata !3793, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3794, metadata !DIExpression()), !dbg !3798
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3799
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #30, !dbg !3799
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3796, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 0, metadata !3795, metadata !DIExpression()), !dbg !3798
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3795, metadata !DIExpression()), !dbg !3798
  %11 = load i32, i32* %8, align 8, !dbg !3801
  %12 = icmp ult i32 %11, 41, !dbg !3801
  br i1 %12, label %13, label %18, !dbg !3801

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3801
  %15 = zext i32 %11 to i64, !dbg !3801
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3801
  %17 = add nuw nsw i32 %11, 8, !dbg !3801
  store i32 %17, i32* %8, align 8, !dbg !3801
  br label %21, !dbg !3801

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3801
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3801
  store i8* %20, i8** %9, align 8, !dbg !3801
  br label %21, !dbg !3801

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3801
  %25 = load i8*, i8** %24, align 8, !dbg !3801
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3804
  store i8* %25, i8** %26, align 16, !dbg !3805, !tbaa !710
  %27 = icmp eq i8* %25, null, !dbg !3806
  br i1 %27, label %30, label %28, !dbg !3807

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3795, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i64 1, metadata !3795, metadata !DIExpression()), !dbg !3798
  %29 = icmp ult i32 %22, 41, !dbg !3801
  br i1 %29, label %35, label %32, !dbg !3801

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3808
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3809
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #30, !dbg !3810
  ret void, !dbg !3810

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3801
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3801
  store i8* %34, i8** %9, align 8, !dbg !3801
  br label %40, !dbg !3801

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3801
  %37 = zext i32 %22 to i64, !dbg !3801
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3801
  %39 = add nuw nsw i32 %22, 8, !dbg !3801
  store i32 %39, i32* %8, align 8, !dbg !3801
  br label %40, !dbg !3801

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3801
  %44 = load i8*, i8** %43, align 8, !dbg !3801
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3804
  store i8* %44, i8** %45, align 8, !dbg !3805, !tbaa !710
  %46 = icmp eq i8* %44, null, !dbg !3806
  br i1 %46, label %30, label %47, !dbg !3807

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3795, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i64 2, metadata !3795, metadata !DIExpression()), !dbg !3798
  %48 = icmp ult i32 %41, 41, !dbg !3801
  br i1 %48, label %52, label %49, !dbg !3801

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3801
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3801
  store i8* %51, i8** %9, align 8, !dbg !3801
  br label %57, !dbg !3801

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3801
  %54 = zext i32 %41 to i64, !dbg !3801
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3801
  %56 = add nuw nsw i32 %41, 8, !dbg !3801
  store i32 %56, i32* %8, align 8, !dbg !3801
  br label %57, !dbg !3801

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3801
  %61 = load i8*, i8** %60, align 8, !dbg !3801
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3804
  store i8* %61, i8** %62, align 16, !dbg !3805, !tbaa !710
  %63 = icmp eq i8* %61, null, !dbg !3806
  br i1 %63, label %30, label %64, !dbg !3807

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3795, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i64 3, metadata !3795, metadata !DIExpression()), !dbg !3798
  %65 = icmp ult i32 %58, 41, !dbg !3801
  br i1 %65, label %69, label %66, !dbg !3801

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3801
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3801
  store i8* %68, i8** %9, align 8, !dbg !3801
  br label %74, !dbg !3801

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3801
  %71 = zext i32 %58 to i64, !dbg !3801
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3801
  %73 = add nuw nsw i32 %58, 8, !dbg !3801
  store i32 %73, i32* %8, align 8, !dbg !3801
  br label %74, !dbg !3801

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3801
  %78 = load i8*, i8** %77, align 8, !dbg !3801
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3804
  store i8* %78, i8** %79, align 8, !dbg !3805, !tbaa !710
  %80 = icmp eq i8* %78, null, !dbg !3806
  br i1 %80, label %30, label %81, !dbg !3807

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3795, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i64 4, metadata !3795, metadata !DIExpression()), !dbg !3798
  %82 = icmp ult i32 %75, 41, !dbg !3801
  br i1 %82, label %86, label %83, !dbg !3801

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3801
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3801
  store i8* %85, i8** %9, align 8, !dbg !3801
  br label %91, !dbg !3801

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3801
  %88 = zext i32 %75 to i64, !dbg !3801
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3801
  %90 = add nuw nsw i32 %75, 8, !dbg !3801
  store i32 %90, i32* %8, align 8, !dbg !3801
  br label %91, !dbg !3801

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3801
  %95 = load i8*, i8** %94, align 8, !dbg !3801
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3804
  store i8* %95, i8** %96, align 16, !dbg !3805, !tbaa !710
  %97 = icmp eq i8* %95, null, !dbg !3806
  br i1 %97, label %30, label %98, !dbg !3807

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3795, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i64 5, metadata !3795, metadata !DIExpression()), !dbg !3798
  %99 = icmp ult i32 %92, 41, !dbg !3801
  br i1 %99, label %103, label %100, !dbg !3801

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3801
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3801
  store i8* %102, i8** %9, align 8, !dbg !3801
  br label %108, !dbg !3801

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3801
  %105 = zext i32 %92 to i64, !dbg !3801
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3801
  %107 = add nuw nsw i32 %92, 8, !dbg !3801
  store i32 %107, i32* %8, align 8, !dbg !3801
  br label %108, !dbg !3801

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3801
  %111 = load i8*, i8** %110, align 8, !dbg !3801
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3804
  store i8* %111, i8** %112, align 8, !dbg !3805, !tbaa !710
  %113 = icmp eq i8* %111, null, !dbg !3806
  br i1 %113, label %30, label %114, !dbg !3807

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3795, metadata !DIExpression()), !dbg !3798
  %115 = load i8*, i8** %9, align 8, !dbg !3801
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3801
  store i8* %116, i8** %9, align 8, !dbg !3801
  %117 = bitcast i8* %115 to i8**, !dbg !3801
  %118 = load i8*, i8** %117, align 8, !dbg !3801
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3804
  store i8* %118, i8** %119, align 16, !dbg !3805, !tbaa !710
  %120 = icmp eq i8* %118, null, !dbg !3806
  br i1 %120, label %30, label %121, !dbg !3807

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3795, metadata !DIExpression()), !dbg !3798
  %122 = load i8*, i8** %9, align 8, !dbg !3801
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3801
  store i8* %123, i8** %9, align 8, !dbg !3801
  %124 = bitcast i8* %122 to i8**, !dbg !3801
  %125 = load i8*, i8** %124, align 8, !dbg !3801
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3804
  store i8* %125, i8** %126, align 8, !dbg !3805, !tbaa !710
  %127 = icmp eq i8* %125, null, !dbg !3806
  br i1 %127, label %30, label %128, !dbg !3807

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3795, metadata !DIExpression()), !dbg !3798
  %129 = load i8*, i8** %9, align 8, !dbg !3801
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3801
  store i8* %130, i8** %9, align 8, !dbg !3801
  %131 = bitcast i8* %129 to i8**, !dbg !3801
  %132 = load i8*, i8** %131, align 8, !dbg !3801
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3804
  store i8* %132, i8** %133, align 16, !dbg !3805, !tbaa !710
  %134 = icmp eq i8* %132, null, !dbg !3806
  br i1 %134, label %30, label %135, !dbg !3807

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3795, metadata !DIExpression()), !dbg !3798
  %136 = load i8*, i8** %9, align 8, !dbg !3801
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3801
  store i8* %137, i8** %9, align 8, !dbg !3801
  %138 = bitcast i8* %136 to i8**, !dbg !3801
  %139 = load i8*, i8** %138, align 8, !dbg !3801
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3804
  store i8* %139, i8** %140, align 8, !dbg !3805, !tbaa !710
  %141 = icmp eq i8* %139, null, !dbg !3806
  %142 = select i1 %141, i64 9, i64 10, !dbg !3807
  br label %30, !dbg !3807
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3811 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3815, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8* %1, metadata !3816, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8* %2, metadata !3817, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8* %3, metadata !3818, metadata !DIExpression()), !dbg !3825
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3826
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #30, !dbg !3826
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3819, metadata !DIExpression()), !dbg !3827
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3828
  call void @llvm.va_start(i8* nonnull %6), !dbg !3828
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3829
  call void @llvm.va_end(i8* nonnull %6), !dbg !3830
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #30, !dbg !3831
  ret void, !dbg !3831
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #26

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3832 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3833, !tbaa !710
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.142, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3833
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.157, i64 0, i64 0), i32 5) #30, !dbg !3834
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.158, i64 0, i64 0)) #30, !dbg !3834
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.159, i64 0, i64 0), i32 5) #30, !dbg !3835
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.160, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.161, i64 0, i64 0)) #30, !dbg !3835
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.162, i64 0, i64 0), i32 5) #30, !dbg !3836
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.163, i64 0, i64 0)) #30, !dbg !3836
  ret void, !dbg !3837
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #27 !dbg !3838 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3842, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64 %1, metadata !3843, metadata !DIExpression()), !dbg !3844
  %3 = udiv i64 9223372036854775807, %1, !dbg !3845
  %4 = icmp ult i64 %3, %0, !dbg !3845
  br i1 %4, label %5, label %6, !dbg !3847

5:                                                ; preds = %2
  tail call void @xalloc_die() #32, !dbg !3848
  unreachable, !dbg !3848

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3849
  call void @llvm.dbg.value(metadata i64 %7, metadata !3850, metadata !DIExpression()) #30, !dbg !3856
  %8 = tail call noalias i8* @malloc(i64 %7) #30, !dbg !3858
  call void @llvm.dbg.value(metadata i8* %8, metadata !3855, metadata !DIExpression()) #30, !dbg !3856
  %9 = icmp eq i8* %8, null, !dbg !3859
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3861
  br i1 %11, label %12, label %13, !dbg !3861

12:                                               ; preds = %6
  tail call void @xalloc_die() #32, !dbg !3862
  unreachable, !dbg !3862

13:                                               ; preds = %6
  ret i8* %8, !dbg !3863
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #28

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3851 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3850, metadata !DIExpression()), !dbg !3864
  %2 = tail call noalias i8* @malloc(i64 %0) #30, !dbg !3865
  call void @llvm.dbg.value(metadata i8* %2, metadata !3855, metadata !DIExpression()), !dbg !3864
  %3 = icmp eq i8* %2, null, !dbg !3866
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3867
  br i1 %5, label %6, label %7, !dbg !3867

6:                                                ; preds = %1
  tail call void @xalloc_die() #32, !dbg !3868
  unreachable, !dbg !3868

7:                                                ; preds = %1
  ret i8* %2, !dbg !3869
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #27 !dbg !3870 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3874, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i64 %1, metadata !3875, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i64 %2, metadata !3876, metadata !DIExpression()), !dbg !3877
  %4 = udiv i64 9223372036854775807, %2, !dbg !3878
  %5 = icmp ult i64 %4, %1, !dbg !3878
  br i1 %5, label %6, label %7, !dbg !3880

6:                                                ; preds = %3
  tail call void @xalloc_die() #32, !dbg !3881
  unreachable, !dbg !3881

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3882
  call void @llvm.dbg.value(metadata i8* %0, metadata !3883, metadata !DIExpression()) #30, !dbg !3889
  call void @llvm.dbg.value(metadata i64 %8, metadata !3888, metadata !DIExpression()) #30, !dbg !3889
  %9 = icmp eq i64 %8, 0, !dbg !3891
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3893
  br i1 %11, label %12, label %13, !dbg !3893

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #30, !dbg !3894
  br label %19, !dbg !3896

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #30, !dbg !3897
  call void @llvm.dbg.value(metadata i8* %14, metadata !3883, metadata !DIExpression()) #30, !dbg !3889
  %15 = icmp eq i8* %14, null, !dbg !3898
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3900
  br i1 %17, label %18, label %19, !dbg !3900

18:                                               ; preds = %13
  tail call void @xalloc_die() #32, !dbg !3901
  unreachable, !dbg !3901

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3889
  ret i8* %20, !dbg !3902
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3884 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3883, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 %1, metadata !3888, metadata !DIExpression()), !dbg !3903
  %3 = icmp eq i64 %1, 0, !dbg !3904
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3905
  br i1 %5, label %6, label %7, !dbg !3905

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #30, !dbg !3906
  br label %13, !dbg !3907

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #30, !dbg !3908
  call void @llvm.dbg.value(metadata i8* %8, metadata !3883, metadata !DIExpression()), !dbg !3903
  %9 = icmp eq i8* %8, null, !dbg !3909
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3910
  br i1 %11, label %12, label %13, !dbg !3910

12:                                               ; preds = %7
  tail call void @xalloc_die() #32, !dbg !3911
  unreachable, !dbg !3911

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3903
  ret i8* %14, !dbg !3912
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #27 !dbg !270 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !274, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64* %1, metadata !275, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 %2, metadata !276, metadata !DIExpression()), !dbg !3913
  %4 = load i64, i64* %1, align 8, !dbg !3914, !tbaa !889
  call void @llvm.dbg.value(metadata i64 %4, metadata !277, metadata !DIExpression()), !dbg !3913
  %5 = icmp eq i8* %0, null, !dbg !3915
  br i1 %5, label %6, label %20, !dbg !3917

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3918
  br i1 %7, label %8, label %13, !dbg !3921

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %9, metadata !277, metadata !DIExpression()), !dbg !3913
  %10 = icmp ugt i64 %2, 128, !dbg !3924
  %11 = zext i1 %10 to i64, !dbg !3924
  %12 = add nuw nsw i64 %9, %11, !dbg !3925
  call void @llvm.dbg.value(metadata i64 %12, metadata !277, metadata !DIExpression()), !dbg !3913
  br label %13, !dbg !3926

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3913
  call void @llvm.dbg.value(metadata i64 %14, metadata !277, metadata !DIExpression()), !dbg !3913
  %15 = udiv i64 9223372036854775807, %2, !dbg !3927
  %16 = icmp ult i64 %15, %14, !dbg !3927
  br i1 %16, label %19, label %17, !dbg !3929

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !277, metadata !DIExpression()), !dbg !3913
  store i64 %14, i64* %1, align 8, !dbg !3930, !tbaa !889
  %18 = mul i64 %14, %2, !dbg !3931
  call void @llvm.dbg.value(metadata i8* %0, metadata !3883, metadata !DIExpression()) #30, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %28, metadata !3888, metadata !DIExpression()) #30, !dbg !3932
  br label %31, !dbg !3934

19:                                               ; preds = %13
  tail call void @xalloc_die() #32, !dbg !3935
  unreachable, !dbg !3935

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3936
  %22 = icmp ugt i64 %21, %4, !dbg !3939
  br i1 %22, label %24, label %23, !dbg !3940

23:                                               ; preds = %20
  tail call void @xalloc_die() #32, !dbg !3941
  unreachable, !dbg !3941

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3942
  %26 = add nuw i64 %4, 1, !dbg !3943
  %27 = add i64 %26, %25, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %27, metadata !277, metadata !DIExpression()), !dbg !3913
  store i64 %27, i64* %1, align 8, !dbg !3930, !tbaa !889
  %28 = mul i64 %27, %2, !dbg !3931
  call void @llvm.dbg.value(metadata i8* %0, metadata !3883, metadata !DIExpression()) #30, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %28, metadata !3888, metadata !DIExpression()) #30, !dbg !3932
  %29 = icmp eq i64 %28, 0, !dbg !3945
  br i1 %29, label %30, label %31, !dbg !3934

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #30, !dbg !3946
  br label %38, !dbg !3947

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #30, !dbg !3948
  call void @llvm.dbg.value(metadata i8* %33, metadata !3883, metadata !DIExpression()) #30, !dbg !3932
  %34 = icmp eq i8* %33, null, !dbg !3949
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3950
  br i1 %36, label %37, label %38, !dbg !3950

37:                                               ; preds = %31
  tail call void @xalloc_die() #32, !dbg !3951
  unreachable, !dbg !3951

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3932
  ret i8* %39, !dbg !3952
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #27 !dbg !3953 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %0, metadata !3850, metadata !DIExpression()) #30, !dbg !3957
  %2 = tail call noalias i8* @malloc(i64 %0) #30, !dbg !3959
  call void @llvm.dbg.value(metadata i8* %2, metadata !3855, metadata !DIExpression()) #30, !dbg !3957
  %3 = icmp eq i8* %2, null, !dbg !3960
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3961
  br i1 %5, label %6, label %7, !dbg !3961

6:                                                ; preds = %1
  tail call void @xalloc_die() #32, !dbg !3962
  unreachable, !dbg !3962

7:                                                ; preds = %1
  ret i8* %2, !dbg !3963
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3964 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3968, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i64* %1, metadata !3969, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8* %0, metadata !274, metadata !DIExpression()) #30, !dbg !3971
  call void @llvm.dbg.value(metadata i64* %1, metadata !275, metadata !DIExpression()) #30, !dbg !3971
  call void @llvm.dbg.value(metadata i64 1, metadata !276, metadata !DIExpression()) #30, !dbg !3971
  %3 = load i64, i64* %1, align 8, !dbg !3973, !tbaa !889
  call void @llvm.dbg.value(metadata i64 %3, metadata !277, metadata !DIExpression()) #30, !dbg !3971
  %4 = icmp eq i8* %0, null, !dbg !3974
  br i1 %4, label %5, label %10, !dbg !3975

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3976
  br i1 %6, label %17, label %7, !dbg !3977

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !277, metadata !DIExpression()) #30, !dbg !3971
  %8 = icmp slt i64 %3, 0, !dbg !3978
  br i1 %8, label %9, label %17, !dbg !3979

9:                                                ; preds = %7
  tail call void @xalloc_die() #32, !dbg !3980
  unreachable, !dbg !3980

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3981
  br i1 %11, label %13, label %12, !dbg !3982

12:                                               ; preds = %10
  tail call void @xalloc_die() #32, !dbg !3983
  unreachable, !dbg !3983

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3984
  %15 = add nuw nsw i64 %3, 1, !dbg !3985
  %16 = add nuw nsw i64 %15, %14, !dbg !3986
  call void @llvm.dbg.value(metadata i64 %16, metadata !277, metadata !DIExpression()) #30, !dbg !3971
  call void @llvm.dbg.value(metadata i8* %0, metadata !3883, metadata !DIExpression()) #30, !dbg !3987
  call void @llvm.dbg.value(metadata i64 %16, metadata !3888, metadata !DIExpression()) #30, !dbg !3987
  br label %17, !dbg !3989

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3990
  store i64 %18, i64* %1, align 8, !dbg !3990, !tbaa !889
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #30, !dbg !3991
  call void @llvm.dbg.value(metadata i8* %19, metadata !3883, metadata !DIExpression()) #30, !dbg !3987
  %20 = icmp eq i8* %19, null, !dbg !3992
  br i1 %20, label %21, label %22, !dbg !3993

21:                                               ; preds = %17
  tail call void @xalloc_die() #32, !dbg !3994
  unreachable, !dbg !3994

22:                                               ; preds = %17
  ret i8* %19, !dbg !3995
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3996 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3998, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %0, metadata !4000, metadata !DIExpression()) #30, !dbg !4005
  call void @llvm.dbg.value(metadata i64 1, metadata !4003, metadata !DIExpression()) #30, !dbg !4005
  %2 = icmp slt i64 %0, 0, !dbg !4007
  br i1 %2, label %6, label %3, !dbg !4009

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #30, !dbg !4010
  call void @llvm.dbg.value(metadata i8* %4, metadata !4004, metadata !DIExpression()) #30, !dbg !4005
  %5 = icmp eq i8* %4, null, !dbg !4011
  br i1 %5, label %6, label %7, !dbg !4012

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #32, !dbg !4013
  unreachable, !dbg !4013

7:                                                ; preds = %3
  ret i8* %4, !dbg !4014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4001 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4000, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i64 %1, metadata !4003, metadata !DIExpression()), !dbg !4015
  %3 = udiv i64 9223372036854775807, %1, !dbg !4016
  %4 = icmp ult i64 %3, %0, !dbg !4016
  br i1 %4, label %8, label %5, !dbg !4017

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #30, !dbg !4018
  call void @llvm.dbg.value(metadata i8* %6, metadata !4004, metadata !DIExpression()), !dbg !4015
  %7 = icmp eq i8* %6, null, !dbg !4019
  br i1 %7, label %8, label %9, !dbg !4020

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #32, !dbg !4021
  unreachable, !dbg !4021

9:                                                ; preds = %5
  ret i8* %6, !dbg !4022
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4023 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4027, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i64 %1, metadata !4028, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i64 %1, metadata !3850, metadata !DIExpression()) #30, !dbg !4030
  %3 = tail call noalias i8* @malloc(i64 %1) #30, !dbg !4032
  call void @llvm.dbg.value(metadata i8* %3, metadata !3855, metadata !DIExpression()) #30, !dbg !4030
  %4 = icmp eq i8* %3, null, !dbg !4033
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !4034
  br i1 %6, label %7, label %8, !dbg !4034

7:                                                ; preds = %2
  tail call void @xalloc_die() #32, !dbg !4035
  unreachable, !dbg !4035

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4036, metadata !DIExpression()) #30, !dbg !4045
  call void @llvm.dbg.value(metadata i8* %0, metadata !4043, metadata !DIExpression()) #30, !dbg !4045
  call void @llvm.dbg.value(metadata i64 %1, metadata !4044, metadata !DIExpression()) #30, !dbg !4045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #30, !dbg !4047
  ret i8* %3, !dbg !4048
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4049 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4051, metadata !DIExpression()), !dbg !4052
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #31, !dbg !4053
  %3 = add i64 %2, 1, !dbg !4054
  call void @llvm.dbg.value(metadata i8* %0, metadata !4027, metadata !DIExpression()) #30, !dbg !4055
  call void @llvm.dbg.value(metadata i64 %3, metadata !4028, metadata !DIExpression()) #30, !dbg !4055
  call void @llvm.dbg.value(metadata i64 %3, metadata !3850, metadata !DIExpression()) #30, !dbg !4057
  %4 = tail call noalias i8* @malloc(i64 %3) #30, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %4, metadata !3855, metadata !DIExpression()) #30, !dbg !4057
  %5 = icmp eq i8* %4, null, !dbg !4060
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !4061
  br i1 %7, label %8, label %9, !dbg !4061

8:                                                ; preds = %1
  tail call void @xalloc_die() #32, !dbg !4062
  unreachable, !dbg !4062

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4036, metadata !DIExpression()) #30, !dbg !4063
  call void @llvm.dbg.value(metadata i8* %0, metadata !4043, metadata !DIExpression()) #30, !dbg !4063
  call void @llvm.dbg.value(metadata i64 %3, metadata !4044, metadata !DIExpression()) #30, !dbg !4063
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #30, !dbg !4065
  ret i8* %4, !dbg !4066
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4067 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4068, !tbaa !914
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.176, i64 0, i64 0), i32 5) #30, !dbg !4069
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.177, i64 0, i64 0), i8* %2) #30, !dbg !4070
  tail call void @abort() #32, !dbg !4071
  unreachable, !dbg !4071
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !4072 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4079, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i8** %1, metadata !4080, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i32 %2, metadata !4081, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i64* %3, metadata !4082, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i8* %4, metadata !4083, metadata !DIExpression()), !dbg !4097
  %7 = bitcast i8** %6 to i8*, !dbg !4098
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #30, !dbg !4098
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()), !dbg !4097
  %8 = icmp ult i32 %2, 37, !dbg !4099
  br i1 %8, label %10, label %9, !dbg !4099

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.180, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.181, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #32, !dbg !4099
  unreachable, !dbg !4099

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4102
  call void @llvm.dbg.value(metadata i8** %25, metadata !4085, metadata !DIExpression()), !dbg !4097
  %12 = tail call i32* @__errno_location() #34, !dbg !4103
  store i32 0, i32* %12, align 4, !dbg !4104, !tbaa !914
  call void @llvm.dbg.value(metadata i8* %0, metadata !4088, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i8 undef, metadata !4091, metadata !DIExpression()), !dbg !4105
  %13 = tail call i16** @__ctype_b_loc() #34, !dbg !4097
  %14 = load i16*, i16** %13, align 8, !tbaa !710
  br label %15, !dbg !4106

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4105
  %17 = load i8, i8* %16, align 1, !dbg !4105, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %17, metadata !4091, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i8* %16, metadata !4088, metadata !DIExpression()), !dbg !4105
  %18 = zext i8 %17 to i64, !dbg !4107
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4107
  %20 = load i16, i16* %19, align 2, !dbg !4107, !tbaa !1396
  %21 = and i16 %20, 8192, !dbg !4107
  %22 = icmp eq i16 %21, 0, !dbg !4106
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4108
  call void @llvm.dbg.value(metadata i8* %23, metadata !4088, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i8 undef, metadata !4091, metadata !DIExpression()), !dbg !4105
  br i1 %22, label %24, label %15, !dbg !4106, !llvm.loop !4109

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4102
  %26 = icmp eq i8 %17, 45, !dbg !4111
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoumax(i8* %0, i8** %25, i32 %2) #30, !dbg !4113
  call void @llvm.dbg.value(metadata i64 %28, metadata !4086, metadata !DIExpression()), !dbg !4097
  %29 = load i8*, i8** %25, align 8, !dbg !4114, !tbaa !710
  %30 = icmp eq i8* %29, %0, !dbg !4116
  br i1 %30, label %31, label %40, !dbg !4117

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4118
  br i1 %32, label %285, label %33, !dbg !4121

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4122, !tbaa !898
  %35 = icmp eq i8 %34, 0, !dbg !4122
  br i1 %35, label %285, label %36, !dbg !4123

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4122
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #31, !dbg !4124
  %39 = icmp eq i8* %38, null, !dbg !4124
  br i1 %39, label %285, label %47, !dbg !4125

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4126, !tbaa !914
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4128

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4087, metadata !DIExpression()), !dbg !4097
  br label %43, !dbg !4129

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4097
  call void @llvm.dbg.value(metadata i32 %44, metadata !4087, metadata !DIExpression()), !dbg !4097
  %45 = icmp eq i8* %4, null, !dbg !4131
  br i1 %45, label %46, label %47, !dbg !4133

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4086, metadata !DIExpression()), !dbg !4097
  store i64 %28, i64* %3, align 8, !dbg !4134, !tbaa !889
  br label %285, !dbg !4136

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4137, !tbaa !898
  %51 = sext i8 %50 to i32, !dbg !4137
  %52 = icmp eq i8 %50, 0, !dbg !4138
  br i1 %52, label %282, label %53, !dbg !4139

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4092, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i32 1, metadata !4095, metadata !DIExpression()), !dbg !4140
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #31, !dbg !4141
  %55 = icmp eq i8* %54, null, !dbg !4141
  br i1 %55, label %56, label %58, !dbg !4143

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4086, metadata !DIExpression()), !dbg !4097
  store i64 %49, i64* %3, align 8, !dbg !4144, !tbaa !889
  %57 = or i32 %48, 2, !dbg !4146
  br label %285, !dbg !4147

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
  ], !dbg !4148

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #31, !dbg !4149
  %61 = icmp eq i8* %60, null, !dbg !4149
  br i1 %61, label %72, label %62, !dbg !4152

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4153
  %64 = load i8, i8* %63, align 1, !dbg !4153, !tbaa !898
  %65 = sext i8 %64 to i32, !dbg !4153
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4154

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4155
  %68 = load i8, i8* %67, align 1, !dbg !4155, !tbaa !898
  %69 = icmp eq i8 %68, 66, !dbg !4158
  %70 = select i1 %69, i64 3, i64 1, !dbg !4159
  br label %72, !dbg !4159

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4092, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i32 2, metadata !4095, metadata !DIExpression()), !dbg !4140
  br label %72, !dbg !4160

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4095, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i32 undef, metadata !4092, metadata !DIExpression()), !dbg !4140
  switch i32 %51, label %265 [
    i32 98, label %205
    i32 66, label %210
    i32 99, label %272
    i32 69, label %175
    i32 71, label %215
    i32 103, label %215
    i32 107, label %267
    i32 75, label %267
    i32 77, label %230
    i32 109, label %230
    i32 80, label %150
    i32 84, label %240
    i32 116, label %240
    i32 119, label %260
    i32 89, label %110
    i32 90, label %75
  ], !dbg !4161

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4162, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 7, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 6, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4179
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4179
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #30, !dbg !4181
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4181
  %78 = mul i64 %49, %73, !dbg !4183
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4183
  call void @llvm.dbg.value(metadata i1 %77, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 6, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i1 %77, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 6, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 5, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4179
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4179
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #30, !dbg !4181
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !4181
  %82 = mul i64 %79, %73, !dbg !4183
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4183
  %84 = or i1 %77, %81, !dbg !4184
  call void @llvm.dbg.value(metadata i1 %84, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 5, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i1 %84, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 5, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 4, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4179
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4179
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #30, !dbg !4181
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !4181
  %87 = mul i64 %83, %73, !dbg !4183
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !4183
  %89 = or i1 %84, %86, !dbg !4184
  call void @llvm.dbg.value(metadata i1 %89, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 4, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i1 %89, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 4, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4179
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4179
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #30, !dbg !4181
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !4181
  %92 = mul i64 %88, %73, !dbg !4183
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !4183
  %94 = or i1 %89, %91, !dbg !4184
  call void @llvm.dbg.value(metadata i1 %94, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i1 %94, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4179
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4179
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #30, !dbg !4181
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !4181
  %97 = mul i64 %93, %73, !dbg !4183
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !4183
  %99 = or i1 %94, %96, !dbg !4184
  call void @llvm.dbg.value(metadata i1 %99, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i1 %99, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4179
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4179
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #30, !dbg !4181
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !4181
  %102 = mul i64 %98, %73, !dbg !4183
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !4183
  %104 = or i1 %99, %101, !dbg !4184
  call void @llvm.dbg.value(metadata i1 %104, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i1 %104, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression()) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4179
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4179
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #30, !dbg !4181
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !4181
  %107 = mul i64 %103, %73, !dbg !4183
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4183
  %109 = or i1 %104, %106, !dbg !4184
  call void @llvm.dbg.value(metadata i1 %109, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4170
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4170
  br label %272, !dbg !4185

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4162, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 8, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 7, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4188
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4188
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #30, !dbg !4190
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !4190
  %113 = mul i64 %49, %73, !dbg !4191
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !4191
  call void @llvm.dbg.value(metadata i1 %112, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 7, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i1 %112, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 7, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 6, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4188
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4188
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #30, !dbg !4190
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !4190
  %117 = mul i64 %114, %73, !dbg !4191
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4191
  %119 = or i1 %112, %116, !dbg !4192
  call void @llvm.dbg.value(metadata i1 %119, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 6, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i1 %119, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 6, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 5, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4188
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4188
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #30, !dbg !4190
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4190
  %122 = mul i64 %118, %73, !dbg !4191
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !4191
  %124 = or i1 %119, %121, !dbg !4192
  call void @llvm.dbg.value(metadata i1 %124, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 5, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i1 %124, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 5, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 4, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4188
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4188
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #30, !dbg !4190
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !4190
  %127 = mul i64 %123, %73, !dbg !4191
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !4191
  %129 = or i1 %124, %126, !dbg !4192
  call void @llvm.dbg.value(metadata i1 %129, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 4, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i1 %129, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 4, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4188
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4188
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #30, !dbg !4190
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !4190
  %132 = mul i64 %128, %73, !dbg !4191
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !4191
  %134 = or i1 %129, %131, !dbg !4192
  call void @llvm.dbg.value(metadata i1 %134, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i1 %134, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4188
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4188
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #30, !dbg !4190
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !4190
  %137 = mul i64 %133, %73, !dbg !4191
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4191
  %139 = or i1 %134, %136, !dbg !4192
  call void @llvm.dbg.value(metadata i1 %139, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i1 %139, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4188
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4188
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #30, !dbg !4190
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !4190
  %142 = mul i64 %138, %73, !dbg !4191
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !4191
  %144 = or i1 %139, %141, !dbg !4192
  call void @llvm.dbg.value(metadata i1 %144, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i1 %144, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression()) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4188
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4188
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #30, !dbg !4190
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !4190
  %147 = mul i64 %143, %73, !dbg !4191
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4191
  %149 = or i1 %144, %146, !dbg !4192
  call void @llvm.dbg.value(metadata i1 %149, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4186
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4186
  br label %272, !dbg !4185

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4162, metadata !DIExpression()) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 5, metadata !4169, metadata !DIExpression()) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 4, metadata !4169, metadata !DIExpression()) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4195
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4195
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #30, !dbg !4197
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !4197
  %153 = mul i64 %49, %73, !dbg !4198
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !4198
  call void @llvm.dbg.value(metadata i1 %152, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 4, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i1 %152, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 4, metadata !4169, metadata !DIExpression()) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression()) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4195
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4195
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #30, !dbg !4197
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4197
  %157 = mul i64 %154, %73, !dbg !4198
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !4198
  %159 = or i1 %152, %156, !dbg !4199
  call void @llvm.dbg.value(metadata i1 %159, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i1 %159, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression()) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression()) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4195
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4195
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #30, !dbg !4197
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !4197
  %162 = mul i64 %158, %73, !dbg !4198
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !4198
  %164 = or i1 %159, %161, !dbg !4199
  call void @llvm.dbg.value(metadata i1 %164, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i1 %164, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression()) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression()) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4195
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4195
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #30, !dbg !4197
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !4197
  %167 = mul i64 %163, %73, !dbg !4198
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !4198
  %169 = or i1 %164, %166, !dbg !4199
  call void @llvm.dbg.value(metadata i1 %169, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i1 %169, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression()) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression()) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4195
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4195
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #30, !dbg !4197
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4197
  %172 = mul i64 %168, %73, !dbg !4198
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !4198
  %174 = or i1 %169, %171, !dbg !4199
  call void @llvm.dbg.value(metadata i1 %174, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4193
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4193
  br label %272, !dbg !4185

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4162, metadata !DIExpression()) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 6, metadata !4169, metadata !DIExpression()) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 5, metadata !4169, metadata !DIExpression()) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4202
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4202
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #30, !dbg !4204
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !4204
  %178 = mul i64 %49, %73, !dbg !4205
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %177, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 5, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i1 %177, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 5, metadata !4169, metadata !DIExpression()) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 4, metadata !4169, metadata !DIExpression()) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4202
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4202
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #30, !dbg !4204
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !4204
  %182 = mul i64 %179, %73, !dbg !4205
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !4205
  %184 = or i1 %177, %181, !dbg !4206
  call void @llvm.dbg.value(metadata i1 %184, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 4, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i1 %184, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 4, metadata !4169, metadata !DIExpression()) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression()) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4202
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4202
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #30, !dbg !4204
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !4204
  %187 = mul i64 %183, %73, !dbg !4205
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !4205
  %189 = or i1 %184, %186, !dbg !4206
  call void @llvm.dbg.value(metadata i1 %189, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i1 %189, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression()) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression()) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4202
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4202
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #30, !dbg !4204
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !4204
  %192 = mul i64 %188, %73, !dbg !4205
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !4205
  %194 = or i1 %189, %191, !dbg !4206
  call void @llvm.dbg.value(metadata i1 %194, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i1 %194, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression()) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression()) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4202
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4202
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #30, !dbg !4204
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4204
  %197 = mul i64 %193, %73, !dbg !4205
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4205
  %199 = or i1 %194, %196, !dbg !4206
  call void @llvm.dbg.value(metadata i1 %199, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i1 %199, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression()) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression()) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4202
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4202
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #30, !dbg !4204
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4204
  %202 = mul i64 %198, %73, !dbg !4205
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4205
  %204 = or i1 %199, %201, !dbg !4206
  call void @llvm.dbg.value(metadata i1 %204, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4200
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4200
  br label %272, !dbg !4185

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4207
  call void @llvm.dbg.value(metadata i32 512, metadata !4178, metadata !DIExpression()) #30, !dbg !4207
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #30, !dbg !4209
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !4209
  %208 = shl i64 %49, 9, !dbg !4210
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !4210
  call void @llvm.dbg.value(metadata i1 %207, metadata !4096, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4140
  br label %272, !dbg !4211

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4212
  call void @llvm.dbg.value(metadata i32 1024, metadata !4178, metadata !DIExpression()) #30, !dbg !4212
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #30, !dbg !4214
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !4214
  %213 = shl i64 %49, 10, !dbg !4215
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4215
  call void @llvm.dbg.value(metadata i1 %212, metadata !4096, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4140
  br label %272, !dbg !4216

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4167, metadata !DIExpression()) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i32 undef, metadata !4168, metadata !DIExpression()) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i32 0, metadata !4162, metadata !DIExpression()) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i32 0, metadata !4162, metadata !DIExpression()) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression()) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression()) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4219
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4219
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #30, !dbg !4221
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !4221
  %218 = mul i64 %49, %73, !dbg !4222
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !4222
  call void @llvm.dbg.value(metadata i1 %217, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i1 %217, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression()) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression()) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4219
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4219
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #30, !dbg !4221
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4221
  %222 = mul i64 %219, %73, !dbg !4222
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4222
  %224 = or i1 %217, %221, !dbg !4223
  call void @llvm.dbg.value(metadata i1 %224, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i1 %224, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression()) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression()) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4219
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4219
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #30, !dbg !4221
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4221
  %227 = mul i64 %223, %73, !dbg !4222
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4222
  %229 = or i1 %224, %226, !dbg !4223
  call void @llvm.dbg.value(metadata i1 %229, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4217
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4217
  br label %272, !dbg !4185

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4167, metadata !DIExpression()) #30, !dbg !4224
  call void @llvm.dbg.value(metadata i32 undef, metadata !4168, metadata !DIExpression()) #30, !dbg !4224
  call void @llvm.dbg.value(metadata i32 0, metadata !4162, metadata !DIExpression()) #30, !dbg !4224
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression()) #30, !dbg !4224
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4226
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4226
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #30, !dbg !4228
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !4228
  %233 = mul i64 %49, %73, !dbg !4229
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !4229
  call void @llvm.dbg.value(metadata i1 %232, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4224
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression()) #30, !dbg !4224
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %234) #30, !dbg !4228
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !4228
  %237 = mul i64 %234, %73, !dbg !4229
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !4229
  %239 = or i1 %232, %236, !dbg !4230
  call void @llvm.dbg.value(metadata i1 %239, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4224
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4224
  br label %272, !dbg !4185

240:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4167, metadata !DIExpression()) #30, !dbg !4231
  call void @llvm.dbg.value(metadata i32 undef, metadata !4168, metadata !DIExpression()) #30, !dbg !4231
  call void @llvm.dbg.value(metadata i32 0, metadata !4162, metadata !DIExpression()) #30, !dbg !4231
  call void @llvm.dbg.value(metadata i32 3, metadata !4169, metadata !DIExpression()) #30, !dbg !4231
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4233
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4233
  %241 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #30, !dbg !4235
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !4235
  %243 = mul i64 %49, %73, !dbg !4236
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4236
  call void @llvm.dbg.value(metadata i1 %242, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4231
  call void @llvm.dbg.value(metadata i32 2, metadata !4169, metadata !DIExpression()) #30, !dbg !4231
  %245 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %244) #30, !dbg !4235
  %246 = extractvalue { i64, i1 } %245, 1, !dbg !4235
  %247 = mul i64 %244, %73, !dbg !4236
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4236
  %249 = or i1 %242, %246, !dbg !4237
  call void @llvm.dbg.value(metadata i1 %249, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4231
  call void @llvm.dbg.value(metadata i32 1, metadata !4169, metadata !DIExpression()) #30, !dbg !4231
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %248) #30, !dbg !4235
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4235
  %252 = mul i64 %248, %73, !dbg !4236
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4236
  %254 = or i1 %249, %251, !dbg !4237
  call void @llvm.dbg.value(metadata i1 %254, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4231
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression()) #30, !dbg !4231
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #30, !dbg !4235
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4235
  %257 = mul i64 %253, %73, !dbg !4236
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4236
  %259 = or i1 %254, %256, !dbg !4237
  call void @llvm.dbg.value(metadata i1 %259, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4231
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4231
  br label %272, !dbg !4185

260:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4238
  call void @llvm.dbg.value(metadata i32 2, metadata !4178, metadata !DIExpression()) #30, !dbg !4238
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #30, !dbg !4240
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !4240
  %263 = shl i64 %49, 1, !dbg !4241
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !4241
  call void @llvm.dbg.value(metadata i1 %262, metadata !4096, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4140
  br label %272, !dbg !4242

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4086, metadata !DIExpression()), !dbg !4097
  store i64 %49, i64* %3, align 8, !dbg !4243, !tbaa !889
  %266 = or i32 %48, 2, !dbg !4244
  br label %285, !dbg !4245

267:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4167, metadata !DIExpression()) #30, !dbg !4246
  call void @llvm.dbg.value(metadata i32 undef, metadata !4168, metadata !DIExpression()) #30, !dbg !4246
  call void @llvm.dbg.value(metadata i32 0, metadata !4162, metadata !DIExpression()) #30, !dbg !4246
  call void @llvm.dbg.value(metadata i32 undef, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4246
  call void @llvm.dbg.value(metadata i64* undef, metadata !4173, metadata !DIExpression()) #30, !dbg !4248
  call void @llvm.dbg.value(metadata i32 undef, metadata !4178, metadata !DIExpression()) #30, !dbg !4248
  %268 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #30, !dbg !4250
  %269 = extractvalue { i64, i1 } %268, 1, !dbg !4250
  call void @llvm.dbg.value(metadata i32 undef, metadata !4169, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #30, !dbg !4246
  call void @llvm.dbg.value(metadata i1 %269, metadata !4162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #30, !dbg !4246
  %270 = mul i64 %49, %73, !dbg !4251
  %271 = select i1 %269, i64 -1, i64 %270, !dbg !4251
  br label %272, !dbg !4185

272:                                              ; preds = %75, %110, %240, %150, %230, %267, %215, %175, %205, %210, %260, %72
  %273 = phi i64 [ %264, %260 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %271, %267 ], [ %238, %230 ], [ %173, %150 ], [ %258, %240 ], [ %148, %110 ], [ %108, %75 ], !dbg !4097
  %274 = phi i1 [ %262, %260 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %269, %267 ], [ %239, %230 ], [ %174, %150 ], [ %259, %240 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !4252
  call void @llvm.dbg.value(metadata i32 %275, metadata !4096, metadata !DIExpression()), !dbg !4140
  %276 = or i32 %48, %275, !dbg !4185
  call void @llvm.dbg.value(metadata i32 %276, metadata !4087, metadata !DIExpression()), !dbg !4097
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4253
  store i8* %277, i8** %25, align 8, !dbg !4253, !tbaa !710
  %278 = load i8, i8* %277, align 1, !dbg !4254, !tbaa !898
  %279 = icmp eq i8 %278, 0, !dbg !4254
  %280 = or i32 %276, 2
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !4256
  call void @llvm.dbg.value(metadata i32 %281, metadata !4087, metadata !DIExpression()), !dbg !4097
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !4257
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !4258
  call void @llvm.dbg.value(metadata i32 %284, metadata !4087, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i64 %283, metadata !4086, metadata !DIExpression()), !dbg !4097
  store i64 %283, i64* %3, align 8, !dbg !4259, !tbaa !889
  br label %285, !dbg !4260

285:                                              ; preds = %56, %265, %40, %31, %33, %36, %24, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %266, %265 ], !dbg !4097
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #30, !dbg !4261
  ret i32 %286, !dbg !4261
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !4262 i64 @strtoumax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #29 !dbg !4266 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4268, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i64 %1, metadata !4269, metadata !DIExpression()), !dbg !4274
  %3 = icmp eq i64 %0, 0, !dbg !4275
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4276
  br i1 %5, label %11, label %6, !dbg !4276

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4271, metadata !DIExpression()), !dbg !4277
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4278
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4278
  br i1 %8, label %9, label %11, !dbg !4280

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #34, !dbg !4281
  store i32 12, i32* %10, align 4, !dbg !4283, !tbaa !914
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4268, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i64 %12, metadata !4269, metadata !DIExpression()), !dbg !4274
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #30, !dbg !4284
  call void @llvm.dbg.value(metadata i8* %14, metadata !4270, metadata !DIExpression()), !dbg !4274
  br label %15, !dbg !4285

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4274
  ret i8* %16, !dbg !4286
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #28

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4287 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4325, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i32 0, metadata !4326, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i32 0, metadata !4328, metadata !DIExpression()), !dbg !4329
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #30, !dbg !4330
  call void @llvm.dbg.value(metadata i32 %2, metadata !4327, metadata !DIExpression()), !dbg !4329
  %3 = icmp slt i32 %2, 0, !dbg !4331
  br i1 %3, label %4, label %6, !dbg !4333

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4334
  br label %24, !dbg !4335

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #30, !dbg !4336
  %8 = icmp eq i32 %7, 0, !dbg !4336
  br i1 %8, label %13, label %9, !dbg !4338

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #30, !dbg !4339
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #30, !dbg !4340
  %12 = icmp eq i64 %11, -1, !dbg !4341
  br i1 %12, label %16, label %13, !dbg !4342

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #30, !dbg !4343
  %15 = icmp eq i32 %14, 0, !dbg !4343
  br i1 %15, label %16, label %18, !dbg !4344

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4326, metadata !DIExpression()), !dbg !4329
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4345
  call void @llvm.dbg.value(metadata i32 %21, metadata !4328, metadata !DIExpression()), !dbg !4329
  br label %24, !dbg !4346

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #34, !dbg !4347
  %20 = load i32, i32* %19, align 4, !dbg !4347, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %20, metadata !4326, metadata !DIExpression()), !dbg !4329
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4345
  call void @llvm.dbg.value(metadata i32 %21, metadata !4328, metadata !DIExpression()), !dbg !4329
  %22 = icmp eq i32 %20, 0, !dbg !4348
  br i1 %22, label %24, label %23, !dbg !4346

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4350, !tbaa !914
  call void @llvm.dbg.value(metadata i32 -1, metadata !4328, metadata !DIExpression()), !dbg !4329
  br label %24, !dbg !4352

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4329
  ret i32 %25, !dbg !4353
}

; Function Attrs: nofree nounwind
declare !dbg !4354 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4357 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4360 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4398, metadata !DIExpression()), !dbg !4399
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4400
  br i1 %2, label %6, label %3, !dbg !4402

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #30, !dbg !4403
  %5 = icmp eq i32 %4, 0, !dbg !4403
  br i1 %5, label %6, label %8, !dbg !4404

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4405
  br label %17, !dbg !4406

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4407, metadata !DIExpression()) #30, !dbg !4412
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4414
  %10 = load i32, i32* %9, align 8, !dbg !4414, !tbaa !1163
  %11 = and i32 %10, 256, !dbg !4416
  %12 = icmp eq i32 %11, 0, !dbg !4416
  br i1 %12, label %15, label %13, !dbg !4417

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #30, !dbg !4418
  br label %15, !dbg !4418

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4419
  br label %17, !dbg !4420

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4399
  ret i32 %18, !dbg !4421
}

; Function Attrs: nofree nounwind
declare !dbg !4422 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4425 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4463, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i64 %1, metadata !4464, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i32 %2, metadata !4465, metadata !DIExpression()), !dbg !4469
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4470
  %5 = load i8*, i8** %4, align 8, !dbg !4470, !tbaa !2014
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4471
  %7 = load i8*, i8** %6, align 8, !dbg !4471, !tbaa !2013
  %8 = icmp eq i8* %5, %7, !dbg !4472
  br i1 %8, label %9, label %28, !dbg !4473

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4474
  %11 = load i8*, i8** %10, align 8, !dbg !4474, !tbaa !1223
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4475
  %13 = load i8*, i8** %12, align 8, !dbg !4475, !tbaa !4476
  %14 = icmp eq i8* %11, %13, !dbg !4477
  br i1 %14, label %15, label %28, !dbg !4478

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4479
  %17 = load i8*, i8** %16, align 8, !dbg !4479, !tbaa !4480
  %18 = icmp eq i8* %17, null, !dbg !4481
  br i1 %18, label %19, label %28, !dbg !4482

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #30, !dbg !4483
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #30, !dbg !4484
  call void @llvm.dbg.value(metadata i64 %21, metadata !4466, metadata !DIExpression()), !dbg !4485
  %22 = icmp eq i64 %21, -1, !dbg !4486
  br i1 %22, label %30, label %23, !dbg !4488

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4489
  %25 = load i32, i32* %24, align 8, !dbg !4490, !tbaa !1163
  %26 = and i32 %25, -17, !dbg !4490
  store i32 %26, i32* %24, align 8, !dbg !4490, !tbaa !1163
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4491
  store i64 %21, i64* %27, align 8, !dbg !4492, !tbaa !4493
  br label %30, !dbg !4494

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4495
  br label %30, !dbg !4496

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4469
  ret i32 %31, !dbg !4497
}

; Function Attrs: nofree nounwind
declare !dbg !4498 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4501 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4517, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i8* %1, metadata !4518, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i64 %2, metadata !4519, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4520, metadata !DIExpression()), !dbg !4526
  %6 = bitcast i32* %5 to i8*, !dbg !4527
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #30, !dbg !4527
  %7 = icmp eq i32* %0, null, !dbg !4528
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4530
  call void @llvm.dbg.value(metadata i32* %8, metadata !4517, metadata !DIExpression()), !dbg !4526
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #30, !dbg !4531
  call void @llvm.dbg.value(metadata i64 %9, metadata !4521, metadata !DIExpression()), !dbg !4526
  %10 = icmp ugt i64 %9, -3, !dbg !4532
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4533
  br i1 %12, label %13, label %18, !dbg !4533

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #30, !dbg !4534
  br i1 %14, label %18, label %15, !dbg !4535

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4536, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %16, metadata !4523, metadata !DIExpression()), !dbg !4537
  %17 = zext i8 %16 to i32, !dbg !4538
  store i32 %17, i32* %8, align 4, !dbg !4539, !tbaa !914
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4526
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #30, !dbg !4540
  ret i64 %19, !dbg !4540
}

; Function Attrs: nounwind
declare !dbg !4541 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4545 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4583, metadata !DIExpression()), !dbg !4588
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #30, !dbg !4589
  call void @llvm.dbg.value(metadata i1 undef, metadata !4584, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4588
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4590, metadata !DIExpression()), !dbg !4593
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4595
  %4 = load i32, i32* %3, align 8, !dbg !4595, !tbaa !1163
  %5 = and i32 %4, 32, !dbg !4596
  %6 = icmp eq i32 %5, 0, !dbg !4596
  call void @llvm.dbg.value(metadata i1 %6, metadata !4586, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4588
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #30, !dbg !4597
  %8 = icmp eq i32 %7, 0, !dbg !4598
  call void @llvm.dbg.value(metadata i1 %8, metadata !4587, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4588
  br i1 %6, label %9, label %19, !dbg !4599

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4601
  call void @llvm.dbg.value(metadata i1 %10, metadata !4584, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4588
  %11 = or i1 %10, %8, !dbg !4602
  %12 = xor i1 %8, true, !dbg !4602
  %13 = sext i1 %12 to i32, !dbg !4602
  br i1 %11, label %22, label %14, !dbg !4602

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #34, !dbg !4603
  %16 = load i32, i32* %15, align 4, !dbg !4603, !tbaa !914
  %17 = icmp ne i32 %16, 9, !dbg !4604
  %18 = sext i1 %17 to i32, !dbg !4605
  br label %22, !dbg !4605

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4606

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #34, !dbg !4608
  store i32 0, i32* %21, align 4, !dbg !4610, !tbaa !914
  br label %22, !dbg !4608

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4588
  ret i32 %23, !dbg !4611
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4612 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4614, metadata !DIExpression()), !dbg !4619
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4620
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #30, !dbg !4620
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4615, metadata !DIExpression()), !dbg !4621
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #30, !dbg !4622
  %5 = icmp eq i32 %4, 0, !dbg !4622
  br i1 %5, label %6, label %13, !dbg !4624

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4625
  %8 = load i16, i16* %7, align 16, !dbg !4625
  %9 = icmp eq i16 %8, 67, !dbg !4625
  br i1 %9, label %13, label %10, !dbg !4626

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.196, i64 0, i64 0), i64 6), !dbg !4627
  %12 = icmp ne i32 %11, 0, !dbg !4628
  br label %13, !dbg !4626

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4619
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #30, !dbg !4629
  ret i1 %14, !dbg !4629
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4630 {
  %1 = tail call i8* @nl_langinfo(i32 14) #30, !dbg !4635
  call void @llvm.dbg.value(metadata i8* %1, metadata !4634, metadata !DIExpression()), !dbg !4636
  %2 = icmp eq i8* %1, null, !dbg !4637
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.199, i64 0, i64 0), i8* %1, !dbg !4639
  call void @llvm.dbg.value(metadata i8* %3, metadata !4634, metadata !DIExpression()), !dbg !4636
  %4 = load i8, i8* %3, align 1, !dbg !4640, !tbaa !898
  %5 = icmp eq i8 %4, 0, !dbg !4644
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.200, i64 0, i64 0), i8* %3, !dbg !4645
  call void @llvm.dbg.value(metadata i8* %6, metadata !4634, metadata !DIExpression()), !dbg !4636
  ret i8* %6, !dbg !4646
}

; Function Attrs: nounwind
declare !dbg !4647 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4650 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4654, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i8* %1, metadata !4655, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %2, metadata !4656, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i32 %0, metadata !4658, metadata !DIExpression()) #30, !dbg !4667
  call void @llvm.dbg.value(metadata i8* %1, metadata !4661, metadata !DIExpression()) #30, !dbg !4667
  call void @llvm.dbg.value(metadata i64 %2, metadata !4662, metadata !DIExpression()) #30, !dbg !4667
  call void @llvm.dbg.value(metadata i32 %0, metadata !4669, metadata !DIExpression()) #30, !dbg !4675
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #30, !dbg !4677
  call void @llvm.dbg.value(metadata i8* %4, metadata !4674, metadata !DIExpression()) #30, !dbg !4675
  call void @llvm.dbg.value(metadata i8* %4, metadata !4663, metadata !DIExpression()) #30, !dbg !4667
  %5 = icmp eq i8* %4, null, !dbg !4678
  br i1 %5, label %6, label %9, !dbg !4679

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4680
  br i1 %7, label %19, label %8, !dbg !4683

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4684, !tbaa !898
  br label %19, !dbg !4685

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #31, !dbg !4686
  call void @llvm.dbg.value(metadata i64 %10, metadata !4664, metadata !DIExpression()) #30, !dbg !4687
  %11 = icmp ult i64 %10, %2, !dbg !4688
  br i1 %11, label %12, label %14, !dbg !4690

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4691
  call void @llvm.dbg.value(metadata i8* %1, metadata !4693, metadata !DIExpression()) #30, !dbg !4698
  call void @llvm.dbg.value(metadata i8* %4, metadata !4696, metadata !DIExpression()) #30, !dbg !4698
  call void @llvm.dbg.value(metadata i64 %13, metadata !4697, metadata !DIExpression()) #30, !dbg !4698
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #30, !dbg !4700
  br label %19, !dbg !4701

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4702
  br i1 %15, label %19, label %16, !dbg !4705

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4706
  call void @llvm.dbg.value(metadata i8* %1, metadata !4693, metadata !DIExpression()) #30, !dbg !4708
  call void @llvm.dbg.value(metadata i8* %4, metadata !4696, metadata !DIExpression()) #30, !dbg !4708
  call void @llvm.dbg.value(metadata i64 %17, metadata !4697, metadata !DIExpression()) #30, !dbg !4708
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #30, !dbg !4710
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4711
  store i8 0, i8* %18, align 1, !dbg !4712, !tbaa !898
  br label %19, !dbg !4713

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4714
  ret i32 %20, !dbg !4715
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4716 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4718, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 %0, metadata !4669, metadata !DIExpression()) #30, !dbg !4720
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #30, !dbg !4722
  call void @llvm.dbg.value(metadata i8* %2, metadata !4674, metadata !DIExpression()) #30, !dbg !4720
  ret i8* %2, !dbg !4723
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
attributes #9 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #19 = { nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree nounwind }
attributes #22 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #26 = { nofree nosync nounwind willreturn }
attributes #27 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #28 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #29 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #30 = { nounwind }
attributes #31 = { nounwind readonly willreturn }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }
attributes #34 = { nounwind readnone willreturn }
attributes #35 = { cold }

!llvm.dbg.cu = !{!2, !150, !156, !168, !175, !244, !247, !249, !253, !256, !181, !187, !258, !238, !265, !281, !283, !287, !289, !291, !293, !295, !298, !300, !302, !691}
!llvm.ident = !{!693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693}
!llvm.module.flags = !{!694, !695, !696, !697, !698}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "skip_chars", scope: !2, file: !3, line: 57, type: !76, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !73, globals: !88, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/uniq.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!21 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!36 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!50 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!73 = !{!74, !75, !76, !79, !81, !83, !85, !86, !87}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 46, baseType: !78)
!77 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !{!89, !0, !91, !93, !95, !98, !100, !102, !104, !106, !120, !126, !132, !134, !138}
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "skip_fields", scope: !2, file: !3, line: 54, type: !76, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "check_chars", scope: !2, file: !3, line: 60, type: !76, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "countmode", scope: !2, file: !3, line: 70, type: !11, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "output_unique", scope: !2, file: !3, line: 75, type: !97, isLocal: true, isDefinition: true)
!97 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "output_first_repeated", scope: !2, file: !3, line: 76, type: !97, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "output_later_repeated", scope: !2, file: !3, line: 77, type: !97, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "ignore_case", scope: !2, file: !3, line: 80, type: !97, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "delimit_groups", scope: !2, file: !3, line: 105, type: !15, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 142, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 3328, elements: !118)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !111, line: 50, size: 256, elements: !112)
!111 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!112 = !{!113, !114, !115, !117}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !111, line: 52, baseType: !83, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !110, file: !111, line: 55, baseType: !85, size: 32, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !110, file: !111, line: 56, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !110, file: !111, line: 57, baseType: !85, size: 32, offset: 192)
!118 = !{!119}
!119 = !DISubrange(count: 13)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "delimit_method_map", scope: !2, file: !3, line: 99, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 96, elements: !124)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!124 = !{!125}
!125 = !DISubrange(count: 3)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "delimit_method_string", scope: !2, file: !3, line: 94, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 256, elements: !130)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!130 = !{!131}
!131 = !DISubrange(count: 4)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "grouping", scope: !2, file: !3, line: 135, type: !28, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "grouping_method_map", scope: !2, file: !3, line: 130, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 128, elements: !130)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "grouping_method_string", scope: !2, file: !3, line: 125, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 320, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 5)
!143 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!144 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!145 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!146 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!147 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "Version", scope: !150, file: !151, line: 2, type: !83, isLocal: false, isDefinition: true)
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, globals: !153, splitDebugInlining: false, nameTableKind: None)
!151 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!152 = !{}
!153 = !{!148}
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !156, file: !157, line: 67, type: !161, isLocal: false, isDefinition: true)
!156 = distinct !DICompileUnit(language: DW_LANG_C99, file: !157, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !158, retainedTypes: !159, globals: !160, splitDebugInlining: false, nameTableKind: None)
!157 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!158 = !{!35}
!159 = !{!74, !83, !87}
!160 = !{!154}
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !162, line: 61, baseType: !163)
!162 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{null}
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "file_name", scope: !168, file: !169, line: 46, type: !83, isLocal: true, isDefinition: true)
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, globals: !170, splitDebugInlining: false, nameTableKind: None)
!169 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!170 = !{!166, !171}
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !168, file: !169, line: 56, type: !97, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "exit_failure", scope: !175, file: !176, line: 24, type: !178, isLocal: false, isDefinition: true)
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, globals: !177, splitDebugInlining: false, nameTableKind: None)
!176 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!177 = !{!173}
!178 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "program_name", scope: !181, file: !182, line: 33, type: !83, isLocal: false, isDefinition: true)
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !183, globals: !184, splitDebugInlining: false, nameTableKind: None)
!182 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = !{!74, !81}
!184 = !{!179}
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !187, file: !188, line: 85, type: !233, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !195, globals: !196, splitDebugInlining: false, nameTableKind: None)
!188 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!189 = !{!35, !190, !58}
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !36, line: 242, baseType: !6, size: 32, elements: !191)
!191 = !{!192, !193, !194}
!192 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!193 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!194 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!195 = !{!85, !86, !76, !81}
!196 = !{!185, !197, !203, !215, !217, !222, !229, !231}
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !187, file: !188, line: 101, type: !199, isLocal: false, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 320, elements: !201)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!201 = !{!202}
!202 = !DISubrange(count: 10)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !187, file: !188, line: 1052, type: !205, isLocal: false, isDefinition: true)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !188, line: 65, size: 448, elements: !206)
!206 = !{!207, !208, !209, !213, !214}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !205, file: !188, line: 68, baseType: !35, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !188, line: 71, baseType: !85, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !205, file: !188, line: 75, baseType: !210, size: 256, offset: 64)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !205, file: !188, line: 78, baseType: !83, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !205, file: !188, line: 81, baseType: !83, size: 64, offset: 384)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !187, file: !188, line: 116, type: !205, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "slot0", scope: !187, file: !188, line: 842, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 2048, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 256)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "slotvec", scope: !187, file: !188, line: 845, type: !224, isLocal: true, isDefinition: true)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !188, line: 834, size: 128, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !225, file: !188, line: 836, baseType: !76, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !225, file: !188, line: 837, baseType: !81, size: 64, offset: 64)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "nslots", scope: !187, file: !188, line: 843, type: !85, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "slotvec0", scope: !187, file: !188, line: 844, type: !225, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 704, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 11)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !238, file: !239, line: 26, type: !241, isLocal: false, isDefinition: true)
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, globals: !240, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!240 = !{!236}
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 376, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 47)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!246 = !{!49}
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !251, splitDebugInlining: false, nameTableKind: None)
!250 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !255, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "lib/memcasecmp.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!255 = !{!85}
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, splitDebugInlining: false, nameTableKind: None)
!257 = !DIFile(filename: "lib/posixver.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !260, retainedTypes: !264, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!260 = !{!261}
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !259, line: 40, baseType: !6, size: 32, elements: !262)
!262 = !{!263}
!263 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!264 = !{!74}
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !267, retainedTypes: !280, splitDebugInlining: false, nameTableKind: None)
!266 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!267 = !{!268}
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !270, file: !269, line: 186, baseType: !6, size: 32, elements: !278)
!269 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!270 = distinct !DISubprogram(name: "x2nrealloc", scope: !269, file: !269, line: 174, type: !271, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{!74, !74, !75, !76}
!273 = !{!274, !275, !276, !277}
!274 = !DILocalVariable(name: "p", arg: 1, scope: !270, file: !269, line: 174, type: !74)
!275 = !DILocalVariable(name: "pn", arg: 2, scope: !270, file: !269, line: 174, type: !75)
!276 = !DILocalVariable(name: "s", arg: 3, scope: !270, file: !269, line: 174, type: !76)
!277 = !DILocalVariable(name: "n", scope: !270, file: !269, line: 176, type: !76)
!278 = !{!279}
!279 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!280 = !{!76, !81, !74}
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, splitDebugInlining: false, nameTableKind: None)
!282 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !285, retainedTypes: !286, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!285 = !{!20, !58}
!286 = !{!85, !86}
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !264, splitDebugInlining: false, nameTableKind: None)
!288 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, splitDebugInlining: false, nameTableKind: None)
!290 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !264, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !264, splitDebugInlining: false, nameTableKind: None)
!294 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!295 = distinct !DICompileUnit(language: DW_LANG_C99, file: !296, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !297, splitDebugInlining: false, nameTableKind: None)
!296 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!297 = !{!76}
!298 = distinct !DICompileUnit(language: DW_LANG_C99, file: !299, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, splitDebugInlining: false, nameTableKind: None)
!299 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!300 = distinct !DICompileUnit(language: DW_LANG_C99, file: !301, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, splitDebugInlining: false, nameTableKind: None)
!301 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !304, retainedTypes: !264, splitDebugInlining: false, nameTableKind: None)
!303 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!304 = !{!305}
!305 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !306, line: 41, baseType: !6, size: 32, elements: !307)
!306 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!308 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!309 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!310 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!311 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!312 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!313 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!314 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!315 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!316 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!317 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!318 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!319 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!320 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!321 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!322 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!323 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!324 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!325 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!326 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!327 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!328 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!329 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!330 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!331 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!332 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!333 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!334 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!335 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!336 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!337 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!338 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!339 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!340 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!341 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!342 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!343 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!344 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!345 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!346 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!347 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!348 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!349 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!350 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!351 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!352 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!353 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!354 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!355 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!356 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!357 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!416 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!419 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!420 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!421 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!422 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!423 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!424 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!425 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!426 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!427 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!428 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!429 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!430 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!503 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!576 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!577 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!578 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!579 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!580 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!581 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!582 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!583 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!584 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!585 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!586 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!587 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!588 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!589 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!590 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!592 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!593 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!594 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!595 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!596 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!597 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!623 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!624 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!625 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!626 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!627 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!632 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!633 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!634 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!635 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!691 = distinct !DICompileUnit(language: DW_LANG_C99, file: !692, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !264, splitDebugInlining: false, nameTableKind: None)
!692 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!693 = !{!"clang version 12.0.1"}
!694 = !{i32 7, !"Dwarf Version", i32 4}
!695 = !{i32 2, !"Debug Info Version", i32 3}
!696 = !{i32 1, !"wchar_size", i32 4}
!697 = !{i32 7, !"PIC Level", i32 2}
!698 = !{i32 7, !"PIE Level", i32 2}
!699 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 160, type: !700, scopeLine: 161, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !702)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !85}
!702 = !{!703}
!703 = !DILocalVariable(name: "status", arg: 1, scope: !699, file: !3, line: 160, type: !85)
!704 = !DILocation(line: 0, scope: !699)
!705 = !DILocation(line: 162, column: 14, scope: !706)
!706 = distinct !DILexicalBlock(scope: !699, file: !3, line: 162, column: 7)
!707 = !DILocation(line: 162, column: 7, scope: !699)
!708 = !DILocation(line: 163, column: 5, scope: !709)
!709 = distinct !DILexicalBlock(scope: !706, file: !3, line: 163, column: 5)
!710 = !{!711, !711, i64 0}
!711 = !{!"any pointer", !712, i64 0}
!712 = !{!"omnipotent char", !713, i64 0}
!713 = !{!"Simple C/C++ TBAA"}
!714 = !DILocation(line: 166, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !706, file: !3, line: 165, column: 5)
!716 = !DILocation(line: 170, column: 7, scope: !715)
!717 = !DILocation(line: 590, column: 3, scope: !718, inlinedAt: !720)
!718 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !719, file: !719, line: 588, type: !164, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!719 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!720 = distinct !DILocation(line: 177, column: 7, scope: !715)
!721 = !DILocation(line: 179, column: 6, scope: !715)
!722 = !DILocation(line: 183, column: 6, scope: !715)
!723 = !DILocation(line: 189, column: 6, scope: !715)
!724 = !DILocation(line: 192, column: 6, scope: !715)
!725 = !DILocation(line: 196, column: 6, scope: !715)
!726 = !DILocation(line: 201, column: 7, scope: !715)
!727 = !DILocation(line: 204, column: 6, scope: !715)
!728 = !DILocation(line: 207, column: 6, scope: !715)
!729 = !DILocation(line: 208, column: 6, scope: !715)
!730 = !DILocation(line: 209, column: 6, scope: !715)
!731 = !DILocation(line: 214, column: 6, scope: !715)
!732 = !DILocalVariable(name: "program", arg: 1, scope: !733, file: !719, line: 634, type: !83)
!733 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !719, file: !719, line: 634, type: !734, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !83}
!736 = !{!732, !737, !746, !747, !749}
!737 = !DILocalVariable(name: "infomap", scope: !733, file: !719, line: 636, type: !738)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 896, elements: !744)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !733, file: !719, line: 636, size: 128, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !740, file: !719, line: 636, baseType: !83, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !740, file: !719, line: 636, baseType: !83, size: 64, offset: 64)
!744 = !{!745}
!745 = !DISubrange(count: 7)
!746 = !DILocalVariable(name: "node", scope: !733, file: !719, line: 646, type: !83)
!747 = !DILocalVariable(name: "map_prog", scope: !733, file: !719, line: 647, type: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!749 = !DILocalVariable(name: "lc_messages", scope: !733, file: !719, line: 659, type: !83)
!750 = !DILocation(line: 0, scope: !733, inlinedAt: !751)
!751 = distinct !DILocation(line: 219, column: 7, scope: !715)
!752 = !DILocation(line: 636, column: 3, scope: !733, inlinedAt: !751)
!753 = !DILocation(line: 636, column: 67, scope: !733, inlinedAt: !751)
!754 = !DILocation(line: 647, column: 36, scope: !733, inlinedAt: !751)
!755 = !DILocation(line: 649, column: 3, scope: !733, inlinedAt: !751)
!756 = !DILocation(line: 649, column: 33, scope: !733, inlinedAt: !751)
!757 = !DILocation(line: 650, column: 13, scope: !733, inlinedAt: !751)
!758 = !DILocation(line: 649, column: 20, scope: !733, inlinedAt: !751)
!759 = !{!760, !711, i64 0}
!760 = !{!"infomap", !711, i64 0, !711, i64 8}
!761 = !DILocation(line: 649, column: 10, scope: !733, inlinedAt: !751)
!762 = !DILocation(line: 649, column: 28, scope: !733, inlinedAt: !751)
!763 = distinct !{!763, !755, !757, !764}
!764 = !{!"llvm.loop.mustprogress"}
!765 = !DILocation(line: 652, column: 17, scope: !766, inlinedAt: !751)
!766 = distinct !DILexicalBlock(scope: !733, file: !719, line: 652, column: 7)
!767 = !{!760, !711, i64 8}
!768 = !DILocation(line: 652, column: 7, scope: !766, inlinedAt: !751)
!769 = !DILocation(line: 652, column: 7, scope: !733, inlinedAt: !751)
!770 = !DILocation(line: 655, column: 3, scope: !733, inlinedAt: !751)
!771 = !DILocation(line: 659, column: 29, scope: !733, inlinedAt: !751)
!772 = !DILocation(line: 660, column: 7, scope: !773, inlinedAt: !751)
!773 = distinct !DILexicalBlock(scope: !733, file: !719, line: 660, column: 7)
!774 = !DILocation(line: 660, column: 19, scope: !773, inlinedAt: !751)
!775 = !DILocation(line: 660, column: 22, scope: !773, inlinedAt: !751)
!776 = !DILocation(line: 660, column: 7, scope: !733, inlinedAt: !751)
!777 = !DILocation(line: 666, column: 7, scope: !778, inlinedAt: !751)
!778 = distinct !DILexicalBlock(scope: !773, file: !719, line: 661, column: 5)
!779 = !DILocation(line: 668, column: 5, scope: !778, inlinedAt: !751)
!780 = !DILocation(line: 669, column: 3, scope: !733, inlinedAt: !751)
!781 = !DILocation(line: 671, column: 3, scope: !733, inlinedAt: !751)
!782 = !DILocation(line: 673, column: 1, scope: !733, inlinedAt: !751)
!783 = !DILocation(line: 221, column: 3, scope: !699)
!784 = !DISubprogram(name: "dcgettext", scope: !785, file: !785, line: 51, type: !786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!785 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!786 = !DISubroutineType(types: !787)
!787 = !{!81, !83, !83, !85}
!788 = !DISubprogram(name: "fputs_unlocked", scope: !789, file: !789, line: 667, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!789 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!790 = !DISubroutineType(types: !791)
!791 = !{!85, !83, !792}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !794, line: 49, size: 1728, elements: !795)
!794 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !811, !812, !813, !814, !818, !819, !821, !825, !828, !830, !833, !836, !837, !838, !839, !840}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !793, file: !794, line: 51, baseType: !85, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !793, file: !794, line: 54, baseType: !81, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !793, file: !794, line: 55, baseType: !81, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !793, file: !794, line: 56, baseType: !81, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !793, file: !794, line: 57, baseType: !81, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !793, file: !794, line: 58, baseType: !81, size: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !793, file: !794, line: 59, baseType: !81, size: 64, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !793, file: !794, line: 60, baseType: !81, size: 64, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !793, file: !794, line: 61, baseType: !81, size: 64, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !793, file: !794, line: 64, baseType: !81, size: 64, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !793, file: !794, line: 65, baseType: !81, size: 64, offset: 640)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !793, file: !794, line: 66, baseType: !81, size: 64, offset: 704)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !793, file: !794, line: 68, baseType: !809, size: 64, offset: 768)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !794, line: 36, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !793, file: !794, line: 70, baseType: !792, size: 64, offset: 832)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !793, file: !794, line: 72, baseType: !85, size: 32, offset: 896)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !793, file: !794, line: 73, baseType: !85, size: 32, offset: 928)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !793, file: !794, line: 74, baseType: !815, size: 64, offset: 960)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !816, line: 152, baseType: !817)
!816 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!817 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !793, file: !794, line: 77, baseType: !86, size: 16, offset: 1024)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !793, file: !794, line: 78, baseType: !820, size: 8, offset: 1040)
!820 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !793, file: !794, line: 79, baseType: !822, size: 8, offset: 1048)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 8, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 1)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !793, file: !794, line: 81, baseType: !826, size: 64, offset: 1088)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !794, line: 43, baseType: null)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !793, file: !794, line: 89, baseType: !829, size: 64, offset: 1152)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !816, line: 153, baseType: !817)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !793, file: !794, line: 91, baseType: !831, size: 64, offset: 1216)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !794, line: 37, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !793, file: !794, line: 92, baseType: !834, size: 64, offset: 1280)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !794, line: 38, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !793, file: !794, line: 93, baseType: !792, size: 64, offset: 1344)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !793, file: !794, line: 94, baseType: !74, size: 64, offset: 1408)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !793, file: !794, line: 95, baseType: !76, size: 64, offset: 1472)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !793, file: !794, line: 96, baseType: !85, size: 32, offset: 1536)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !793, file: !794, line: 98, baseType: !841, size: 160, offset: 1568)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 160, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 20)
!844 = !DISubprogram(name: "setlocale", scope: !845, file: !845, line: 122, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!845 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!846 = !DISubroutineType(types: !847)
!847 = !{!81, !85, !83}
!848 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 477, type: !849, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !852)
!849 = !DISubroutineType(types: !850)
!850 = !{!85, !85, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!852 = !{!853, !854, !855, !856, !857, !858, !859, !863, !864, !865}
!853 = !DILocalVariable(name: "argc", arg: 1, scope: !848, file: !3, line: 477, type: !85)
!854 = !DILocalVariable(name: "argv", arg: 2, scope: !848, file: !3, line: 477, type: !851)
!855 = !DILocalVariable(name: "optc", scope: !848, file: !3, line: 479, type: !85)
!856 = !DILocalVariable(name: "posixly_correct", scope: !848, file: !3, line: 480, type: !97)
!857 = !DILocalVariable(name: "skip_field_option_type", scope: !848, file: !3, line: 481, type: !5)
!858 = !DILocalVariable(name: "nfiles", scope: !848, file: !3, line: 482, type: !6)
!859 = !DILocalVariable(name: "file", scope: !848, file: !3, line: 483, type: !860)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !861)
!861 = !{!862}
!862 = !DISubrange(count: 2)
!863 = !DILocalVariable(name: "delimiter", scope: !848, file: !3, line: 484, type: !82)
!864 = !DILocalVariable(name: "output_option_used", scope: !848, file: !3, line: 485, type: !97)
!865 = !DILocalVariable(name: "size", scope: !866, file: !3, line: 529, type: !870)
!866 = distinct !DILexicalBlock(scope: !867, file: !3, line: 528, column: 11)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 526, column: 9)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 510, column: 11)
!869 = distinct !DILexicalBlock(scope: !848, file: !3, line: 505, column: 5)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !871, line: 102, baseType: !872)
!871 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !816, line: 73, baseType: !78)
!873 = !DILocation(line: 0, scope: !848)
!874 = !DILocation(line: 480, column: 27, scope: !848)
!875 = !DILocation(line: 480, column: 54, scope: !848)
!876 = !DILocation(line: 483, column: 3, scope: !848)
!877 = !DILocation(line: 483, column: 15, scope: !848)
!878 = !DILocation(line: 487, column: 13, scope: !848)
!879 = !DILocation(line: 487, column: 21, scope: !848)
!880 = !DILocation(line: 487, column: 3, scope: !848)
!881 = !DILocation(line: 487, column: 11, scope: !848)
!882 = !DILocation(line: 489, column: 21, scope: !848)
!883 = !DILocation(line: 489, column: 3, scope: !848)
!884 = !DILocation(line: 490, column: 3, scope: !848)
!885 = !DILocation(line: 491, column: 3, scope: !848)
!886 = !DILocation(line: 492, column: 3, scope: !848)
!887 = !DILocation(line: 494, column: 3, scope: !848)
!888 = !DILocation(line: 496, column: 14, scope: !848)
!889 = !{!890, !890, i64 0}
!890 = !{!"long", !712, i64 0}
!891 = !DILocation(line: 497, column: 15, scope: !848)
!892 = !DILocation(line: 498, column: 15, scope: !848)
!893 = !DILocation(line: 499, column: 41, scope: !848)
!894 = !DILocation(line: 499, column: 17, scope: !848)
!895 = !DILocation(line: 500, column: 25, scope: !848)
!896 = !DILocation(line: 501, column: 13, scope: !848)
!897 = !DILocation(line: 502, column: 18, scope: !848)
!898 = !{!712, !712, i64 0}
!899 = !DILocation(line: 504, column: 3, scope: !848)
!900 = !DILocation(line: 479, column: 7, scope: !848)
!901 = !DILocation(line: 481, column: 31, scope: !848)
!902 = !DILocation(line: 484, column: 8, scope: !848)
!903 = !DILocation(line: 485, column: 8, scope: !848)
!904 = !DILocation(line: 510, column: 16, scope: !868)
!905 = !DILocation(line: 511, column: 11, scope: !868)
!906 = !DILocation(line: 511, column: 31, scope: !868)
!907 = !DILocation(line: 512, column: 23, scope: !868)
!908 = !DILocation(line: 510, column: 11, scope: !869)
!909 = distinct !{!909, !899, !910}
!910 = !DILocation(line: 633, column: 5, scope: !848)
!911 = !DILocation(line: 516, column: 23, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 516, column: 15)
!913 = distinct !DILexicalBlock(scope: !868, file: !3, line: 515, column: 9)
!914 = !{!915, !915, i64 0}
!915 = !{!"int", !712, i64 0}
!916 = !DILocation(line: 516, column: 20, scope: !912)
!917 = !DILocation(line: 516, column: 15, scope: !913)
!918 = !DILocation(line: 518, column: 22, scope: !919)
!919 = distinct !DILexicalBlock(scope: !913, file: !3, line: 518, column: 15)
!920 = !DILocation(line: 518, column: 15, scope: !913)
!921 = !DILocation(line: 520, column: 28, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !3, line: 519, column: 13)
!923 = !DILocation(line: 520, column: 63, scope: !922)
!924 = !DILocation(line: 520, column: 58, scope: !922)
!925 = !DILocation(line: 520, column: 51, scope: !922)
!926 = !DILocation(line: 520, column: 15, scope: !922)
!927 = !DILocation(line: 521, column: 15, scope: !922)
!928 = !DILocation(line: 523, column: 39, scope: !913)
!929 = !DILocation(line: 523, column: 28, scope: !913)
!930 = !DILocation(line: 523, column: 22, scope: !913)
!931 = !DILocation(line: 523, column: 11, scope: !913)
!932 = !DILocation(line: 523, column: 26, scope: !913)
!933 = !DILocation(line: 524, column: 9, scope: !913)
!934 = !DILocation(line: 529, column: 13, scope: !866)
!935 = !DILocation(line: 530, column: 17, scope: !936)
!936 = distinct !DILexicalBlock(scope: !866, file: !3, line: 530, column: 17)
!937 = !DILocation(line: 530, column: 27, scope: !936)
!938 = !DILocation(line: 531, column: 17, scope: !936)
!939 = !DILocation(line: 227, column: 19, scope: !940, inlinedAt: !945)
!940 = distinct !DISubprogram(name: "strict_posix2", scope: !3, file: !3, line: 225, type: !941, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !943)
!941 = !DISubroutineType(types: !942)
!942 = !{!97}
!943 = !{!944}
!944 = !DILocalVariable(name: "posix_ver", scope: !940, file: !3, line: 227, type: !85)
!945 = distinct !DILocation(line: 531, column: 22, scope: !936)
!946 = !DILocation(line: 0, scope: !940, inlinedAt: !945)
!947 = !DILocation(line: 228, column: 30, scope: !940, inlinedAt: !945)
!948 = !DILocation(line: 532, column: 17, scope: !936)
!949 = !DILocation(line: 532, column: 32, scope: !936)
!950 = !DILocation(line: 0, scope: !866)
!951 = !DILocation(line: 532, column: 20, scope: !936)
!952 = !DILocation(line: 532, column: 61, scope: !936)
!953 = !DILocation(line: 533, column: 17, scope: !936)
!954 = !DILocation(line: 534, column: 26, scope: !936)
!955 = !DILocation(line: 534, column: 15, scope: !936)
!956 = !DILocation(line: 535, column: 29, scope: !957)
!957 = distinct !DILexicalBlock(scope: !936, file: !3, line: 535, column: 22)
!958 = !DILocation(line: 535, column: 22, scope: !936)
!959 = !DILocation(line: 537, column: 30, scope: !960)
!960 = distinct !DILexicalBlock(scope: !957, file: !3, line: 536, column: 15)
!961 = !DILocation(line: 537, column: 60, scope: !960)
!962 = !DILocation(line: 537, column: 53, scope: !960)
!963 = !DILocation(line: 537, column: 17, scope: !960)
!964 = !DILocation(line: 538, column: 17, scope: !960)
!965 = !DILocation(line: 541, column: 32, scope: !957)
!966 = !DILocation(line: 541, column: 26, scope: !957)
!967 = !DILocation(line: 541, column: 15, scope: !957)
!968 = !DILocation(line: 541, column: 30, scope: !957)
!969 = !DILocation(line: 542, column: 11, scope: !867)
!970 = !DILocation(line: 543, column: 11, scope: !867)
!971 = !DILocation(line: 556, column: 40, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !3, line: 556, column: 17)
!973 = distinct !DILexicalBlock(scope: !867, file: !3, line: 555, column: 11)
!974 = !DILocation(line: 556, column: 17, scope: !973)
!975 = !DILocation(line: 559, column: 18, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !3, line: 559, column: 17)
!977 = !DILocation(line: 559, column: 17, scope: !973)
!978 = !DILocation(line: 560, column: 27, scope: !976)
!979 = !DILocation(line: 560, column: 15, scope: !976)
!980 = !DILocation(line: 567, column: 21, scope: !867)
!981 = !DILocation(line: 569, column: 11, scope: !867)
!982 = !DILocation(line: 572, column: 25, scope: !867)
!983 = !DILocation(line: 574, column: 11, scope: !867)
!984 = !DILocation(line: 577, column: 25, scope: !867)
!985 = !DILocation(line: 578, column: 33, scope: !867)
!986 = !DILocation(line: 579, column: 15, scope: !987)
!987 = distinct !DILexicalBlock(scope: !867, file: !3, line: 579, column: 15)
!988 = !DILocation(line: 579, column: 22, scope: !987)
!989 = !DILocation(line: 579, column: 15, scope: !867)
!990 = !DILocation(line: 582, column: 30, scope: !987)
!991 = !DILocation(line: 0, scope: !987)
!992 = !DILocation(line: 586, column: 11, scope: !867)
!993 = !DILocation(line: 589, column: 15, scope: !994)
!994 = distinct !DILexicalBlock(scope: !867, file: !3, line: 589, column: 15)
!995 = !DILocation(line: 589, column: 22, scope: !994)
!996 = !DILocation(line: 589, column: 15, scope: !867)
!997 = !DILocation(line: 590, column: 22, scope: !994)
!998 = !DILocation(line: 590, column: 13, scope: !994)
!999 = !DILocation(line: 592, column: 24, scope: !994)
!1000 = !DILocation(line: 592, column: 22, scope: !994)
!1001 = !DILocation(line: 599, column: 35, scope: !867)
!1002 = !DILocalVariable(name: "opt", arg: 1, scope: !1003, file: !3, line: 235, type: !83)
!1003 = distinct !DISubprogram(name: "size_opt", scope: !3, file: !3, line: 235, type: !1004, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1006)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!76, !83, !83}
!1006 = !{!1002, !1007, !1008}
!1007 = !DILocalVariable(name: "msgid", arg: 2, scope: !1003, file: !3, line: 235, type: !83)
!1008 = !DILocalVariable(name: "size", scope: !1003, file: !3, line: 237, type: !870)
!1009 = !DILocation(line: 0, scope: !1003, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 599, column: 25, scope: !867)
!1011 = !DILocation(line: 237, column: 3, scope: !1003, inlinedAt: !1010)
!1012 = !DILocation(line: 239, column: 11, scope: !1003, inlinedAt: !1010)
!1013 = !DILocation(line: 239, column: 3, scope: !1003, inlinedAt: !1010)
!1014 = !DILocation(line: 246, column: 7, scope: !1015, inlinedAt: !1010)
!1015 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 240, column: 5)
!1016 = !DILocation(line: 249, column: 10, scope: !1003, inlinedAt: !1010)
!1017 = !DILocation(line: 250, column: 1, scope: !1003, inlinedAt: !1010)
!1018 = !DILocation(line: 599, column: 23, scope: !867)
!1019 = !DILocation(line: 601, column: 11, scope: !867)
!1020 = !DILocation(line: 604, column: 23, scope: !867)
!1021 = !DILocation(line: 605, column: 11, scope: !867)
!1022 = !DILocation(line: 608, column: 34, scope: !867)
!1023 = !DILocation(line: 0, scope: !1003, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 608, column: 24, scope: !867)
!1025 = !DILocation(line: 237, column: 3, scope: !1003, inlinedAt: !1024)
!1026 = !DILocation(line: 239, column: 11, scope: !1003, inlinedAt: !1024)
!1027 = !DILocation(line: 239, column: 3, scope: !1003, inlinedAt: !1024)
!1028 = !DILocation(line: 246, column: 7, scope: !1015, inlinedAt: !1024)
!1029 = !DILocation(line: 249, column: 10, scope: !1003, inlinedAt: !1024)
!1030 = !DILocation(line: 250, column: 1, scope: !1003, inlinedAt: !1024)
!1031 = !DILocation(line: 608, column: 22, scope: !867)
!1032 = !DILocation(line: 610, column: 11, scope: !867)
!1033 = !DILocation(line: 613, column: 33, scope: !867)
!1034 = !DILocation(line: 615, column: 11, scope: !867)
!1035 = !DILocation(line: 618, column: 35, scope: !867)
!1036 = !DILocation(line: 0, scope: !1003, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 618, column: 25, scope: !867)
!1038 = !DILocation(line: 237, column: 3, scope: !1003, inlinedAt: !1037)
!1039 = !DILocation(line: 239, column: 11, scope: !1003, inlinedAt: !1037)
!1040 = !DILocation(line: 239, column: 3, scope: !1003, inlinedAt: !1037)
!1041 = !DILocation(line: 246, column: 7, scope: !1015, inlinedAt: !1037)
!1042 = !DILocation(line: 249, column: 10, scope: !1003, inlinedAt: !1037)
!1043 = !DILocation(line: 250, column: 1, scope: !1003, inlinedAt: !1037)
!1044 = !DILocation(line: 618, column: 23, scope: !867)
!1045 = !DILocation(line: 620, column: 11, scope: !867)
!1046 = !DILocation(line: 626, column: 9, scope: !867)
!1047 = !DILocation(line: 628, column: 9, scope: !867)
!1048 = !DILocation(line: 631, column: 11, scope: !867)
!1049 = !DILocation(line: 639, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !848, file: !3, line: 639, column: 7)
!1051 = !DILocation(line: 639, column: 16, scope: !1050)
!1052 = !DILocation(line: 639, column: 27, scope: !1050)
!1053 = !DILocation(line: 641, column: 20, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 640, column: 5)
!1055 = !DILocation(line: 641, column: 7, scope: !1054)
!1056 = !DILocation(line: 642, column: 7, scope: !1054)
!1057 = !DILocation(line: 645, column: 27, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !848, file: !3, line: 645, column: 7)
!1059 = !DILocation(line: 648, column: 12, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 646, column: 5)
!1061 = !DILocation(line: 647, column: 7, scope: !1060)
!1062 = !DILocation(line: 649, column: 7, scope: !1060)
!1063 = !DILocation(line: 652, column: 38, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !848, file: !3, line: 652, column: 7)
!1065 = !DILocation(line: 652, column: 41, scope: !1064)
!1066 = !DILocation(line: 652, column: 7, scope: !848)
!1067 = !DILocation(line: 655, column: 12, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 653, column: 5)
!1069 = !DILocation(line: 654, column: 7, scope: !1068)
!1070 = !DILocation(line: 656, column: 7, scope: !1068)
!1071 = !DILocation(line: 659, column: 15, scope: !848)
!1072 = !DILocation(line: 659, column: 24, scope: !848)
!1073 = !DILocalVariable(name: "infile", arg: 1, scope: !1074, file: !3, line: 320, type: !83)
!1074 = distinct !DISubprogram(name: "check_file", scope: !3, file: !3, line: 320, type: !1075, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !83, !83, !82}
!1077 = !{!1073, !1078, !1079, !1080, !1087, !1088, !1090, !1091, !1094, !1095, !1096, !1098, !1099, !1100, !1104, !1108, !1109, !1111, !1113, !1114, !1115, !1116, !1118, !1119, !1120, !1124}
!1078 = !DILocalVariable(name: "outfile", arg: 2, scope: !1074, file: !3, line: 320, type: !83)
!1079 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1074, file: !3, line: 320, type: !82)
!1080 = !DILocalVariable(name: "lb1", scope: !1074, file: !3, line: 322, type: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1082, line: 26, size: 192, elements: !1083)
!1082 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1083 = !{!1084, !1085, !1086}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1081, file: !1082, line: 28, baseType: !76, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1081, file: !1082, line: 29, baseType: !76, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1081, file: !1082, line: 30, baseType: !81, size: 64, offset: 128)
!1087 = !DILocalVariable(name: "lb2", scope: !1074, file: !3, line: 322, type: !1081)
!1088 = !DILocalVariable(name: "thisline", scope: !1074, file: !3, line: 323, type: !1089)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1090 = !DILocalVariable(name: "prevline", scope: !1074, file: !3, line: 323, type: !1089)
!1091 = !DILocalVariable(name: "prevfield", scope: !1092, file: !3, line: 355, type: !81)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 354, column: 5)
!1093 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 353, column: 7)
!1094 = !DILocalVariable(name: "prevlen", scope: !1092, file: !3, line: 356, type: !76)
!1095 = !DILocalVariable(name: "first_group_printed", scope: !1092, file: !3, line: 357, type: !97)
!1096 = !DILocalVariable(name: "thisfield", scope: !1097, file: !3, line: 361, type: !81)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 360, column: 9)
!1098 = !DILocalVariable(name: "thislen", scope: !1097, file: !3, line: 362, type: !76)
!1099 = !DILocalVariable(name: "new_group", scope: !1097, file: !3, line: 363, type: !97)
!1100 = !DILocalVariable(name: "__ptr", scope: !1101, file: !3, line: 382, type: !83)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 382, column: 15)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 381, column: 13)
!1103 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 380, column: 15)
!1104 = !DILocalVariable(name: "__stream", scope: !1101, file: !3, line: 382, type: !1105)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1107, line: 7, baseType: !793)
!1107 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1108 = !DILocalVariable(name: "__cnt", scope: !1101, file: !3, line: 382, type: !76)
!1109 = !DILocalVariable(name: "_tmp", scope: !1110, file: !3, line: 385, type: !1089)
!1110 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 385, column: 15)
!1111 = !DILocalVariable(name: "prevfield", scope: !1112, file: !3, line: 396, type: !81)
!1112 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 395, column: 5)
!1113 = !DILocalVariable(name: "prevlen", scope: !1112, file: !3, line: 397, type: !76)
!1114 = !DILocalVariable(name: "match_count", scope: !1112, file: !3, line: 398, type: !870)
!1115 = !DILocalVariable(name: "first_delimiter", scope: !1112, file: !3, line: 399, type: !97)
!1116 = !DILocalVariable(name: "match", scope: !1117, file: !3, line: 408, type: !97)
!1117 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 407, column: 9)
!1118 = !DILocalVariable(name: "thisfield", scope: !1117, file: !3, line: 409, type: !81)
!1119 = !DILocalVariable(name: "thislen", scope: !1117, file: !3, line: 410, type: !76)
!1120 = !DILocalVariable(name: "_tmp", scope: !1121, file: !3, line: 448, type: !1089)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 448, column: 15)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 446, column: 13)
!1123 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 445, column: 15)
!1124 = !DILabel(scope: !1074, name: "closefiles", file: !3, line: 459)
!1125 = !DILocation(line: 0, scope: !1074, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 659, column: 3, scope: !848)
!1127 = !DILocation(line: 322, column: 3, scope: !1074, inlinedAt: !1126)
!1128 = !DILocation(line: 322, column: 21, scope: !1074, inlinedAt: !1126)
!1129 = !DILocation(line: 322, column: 26, scope: !1074, inlinedAt: !1126)
!1130 = !DILocation(line: 325, column: 10, scope: !1131, inlinedAt: !1126)
!1131 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 325, column: 7)
!1132 = !DILocation(line: 325, column: 30, scope: !1131, inlinedAt: !1126)
!1133 = !DILocation(line: 325, column: 55, scope: !1131, inlinedAt: !1126)
!1134 = !DILocation(line: 325, column: 33, scope: !1131, inlinedAt: !1126)
!1135 = !DILocation(line: 325, column: 7, scope: !1074, inlinedAt: !1126)
!1136 = !DILocation(line: 326, column: 5, scope: !1131, inlinedAt: !1126)
!1137 = !DILocation(line: 327, column: 10, scope: !1138, inlinedAt: !1126)
!1138 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 327, column: 7)
!1139 = !DILocation(line: 327, column: 31, scope: !1138, inlinedAt: !1126)
!1140 = !DILocation(line: 327, column: 57, scope: !1138, inlinedAt: !1126)
!1141 = !DILocation(line: 327, column: 34, scope: !1138, inlinedAt: !1126)
!1142 = !DILocation(line: 327, column: 7, scope: !1074, inlinedAt: !1126)
!1143 = !DILocation(line: 328, column: 5, scope: !1138, inlinedAt: !1126)
!1144 = !DILocation(line: 330, column: 12, scope: !1074, inlinedAt: !1126)
!1145 = !DILocation(line: 330, column: 3, scope: !1074, inlinedAt: !1126)
!1146 = !DILocation(line: 335, column: 3, scope: !1074, inlinedAt: !1126)
!1147 = !DILocation(line: 336, column: 3, scope: !1074, inlinedAt: !1126)
!1148 = !DILocation(line: 353, column: 7, scope: !1093, inlinedAt: !1126)
!1149 = !DILocation(line: 353, column: 21, scope: !1093, inlinedAt: !1126)
!1150 = !DILocation(line: 353, column: 24, scope: !1093, inlinedAt: !1126)
!1151 = !DILocation(line: 353, column: 46, scope: !1093, inlinedAt: !1126)
!1152 = !DILocation(line: 0, scope: !1092, inlinedAt: !1126)
!1153 = !DILocation(line: 359, column: 15, scope: !1092, inlinedAt: !1126)
!1154 = !DILocalVariable(name: "__stream", arg: 1, scope: !1155, file: !1156, line: 128, type: !1105)
!1155 = distinct !DISubprogram(name: "feof_unlocked", scope: !1156, file: !1156, line: 128, type: !1157, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1159)
!1156 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!85, !1105}
!1159 = !{!1154}
!1160 = !DILocation(line: 0, scope: !1155, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 359, column: 15, scope: !1092, inlinedAt: !1126)
!1162 = !DILocation(line: 130, column: 10, scope: !1155, inlinedAt: !1161)
!1163 = !{!1164, !915, i64 0}
!1164 = !{!"_IO_FILE", !915, i64 0, !711, i64 8, !711, i64 16, !711, i64 24, !711, i64 32, !711, i64 40, !711, i64 48, !711, i64 56, !711, i64 64, !711, i64 72, !711, i64 80, !711, i64 88, !711, i64 96, !711, i64 104, !915, i64 112, !915, i64 116, !890, i64 120, !1165, i64 128, !712, i64 130, !712, i64 131, !711, i64 136, !890, i64 144, !711, i64 152, !711, i64 160, !711, i64 168, !711, i64 176, !890, i64 184, !915, i64 192, !712, i64 196}
!1165 = !{!"short", !712, i64 0}
!1166 = !DILocation(line: 359, column: 14, scope: !1092, inlinedAt: !1126)
!1167 = !DILocation(line: 359, column: 7, scope: !1092, inlinedAt: !1126)
!1168 = !DILocation(line: 365, column: 15, scope: !1169, inlinedAt: !1126)
!1169 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 365, column: 15)
!1170 = !DILocation(line: 365, column: 65, scope: !1169, inlinedAt: !1126)
!1171 = !DILocation(line: 365, column: 15, scope: !1097, inlinedAt: !1126)
!1172 = !DILocation(line: 368, column: 23, scope: !1097, inlinedAt: !1126)
!1173 = !DILocation(line: 0, scope: !1097, inlinedAt: !1126)
!1174 = !DILocation(line: 369, column: 31, scope: !1097, inlinedAt: !1126)
!1175 = !{!1176, !890, i64 8}
!1176 = !{!"linebuffer", !890, i64 0, !890, i64 8, !711, i64 16}
!1177 = !DILocation(line: 369, column: 38, scope: !1097, inlinedAt: !1126)
!1178 = !DILocation(line: 369, column: 67, scope: !1097, inlinedAt: !1126)
!1179 = !{!1176, !711, i64 16}
!1180 = !DILocation(line: 369, column: 55, scope: !1097, inlinedAt: !1126)
!1181 = !DILocation(line: 369, column: 42, scope: !1097, inlinedAt: !1126)
!1182 = !DILocation(line: 371, column: 34, scope: !1097, inlinedAt: !1126)
!1183 = !DILocation(line: 371, column: 41, scope: !1097, inlinedAt: !1126)
!1184 = !DILocation(line: 372, column: 24, scope: !1097, inlinedAt: !1126)
!1185 = !DILocalVariable(name: "old", arg: 1, scope: !1186, file: !3, line: 282, type: !81)
!1186 = distinct !DISubprogram(name: "different", scope: !3, file: !3, line: 282, type: !1187, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1189)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!97, !81, !81, !76, !76}
!1189 = !{!1185, !1190, !1191, !1192}
!1190 = !DILocalVariable(name: "new", arg: 2, scope: !1186, file: !3, line: 282, type: !81)
!1191 = !DILocalVariable(name: "oldlen", arg: 3, scope: !1186, file: !3, line: 282, type: !76)
!1192 = !DILocalVariable(name: "newlen", arg: 4, scope: !1186, file: !3, line: 282, type: !76)
!1193 = !DILocation(line: 0, scope: !1186, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 372, column: 27, scope: !1097, inlinedAt: !1126)
!1195 = !DILocation(line: 284, column: 7, scope: !1196, inlinedAt: !1194)
!1196 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 284, column: 7)
!1197 = !DILocation(line: 284, column: 19, scope: !1196, inlinedAt: !1194)
!1198 = !DILocation(line: 284, column: 7, scope: !1186, inlinedAt: !1194)
!1199 = !DILocation(line: 286, column: 19, scope: !1200, inlinedAt: !1194)
!1200 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 286, column: 7)
!1201 = !DILocation(line: 286, column: 7, scope: !1186, inlinedAt: !1194)
!1202 = !DILocation(line: 289, column: 7, scope: !1203, inlinedAt: !1194)
!1203 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 289, column: 7)
!1204 = !DILocation(line: 0, scope: !1203, inlinedAt: !1194)
!1205 = !DILocation(line: 289, column: 7, scope: !1186, inlinedAt: !1194)
!1206 = !DILocation(line: 290, column: 29, scope: !1203, inlinedAt: !1194)
!1207 = !DILocation(line: 290, column: 32, scope: !1203, inlinedAt: !1194)
!1208 = !DILocation(line: 292, column: 29, scope: !1203, inlinedAt: !1194)
!1209 = !DILocation(line: 292, column: 32, scope: !1203, inlinedAt: !1194)
!1210 = !DILocation(line: 374, column: 25, scope: !1211, inlinedAt: !1126)
!1211 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 374, column: 15)
!1212 = !DILocation(line: 375, column: 42, scope: !1211, inlinedAt: !1126)
!1213 = !DILocation(line: 376, column: 23, scope: !1211, inlinedAt: !1126)
!1214 = !DILocation(line: 376, column: 43, scope: !1211, inlinedAt: !1126)
!1215 = !DILocalVariable(name: "__c", arg: 1, scope: !1216, file: !1156, line: 108, type: !85)
!1216 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1156, file: !1156, line: 108, type: !1217, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1219)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!85, !85}
!1219 = !{!1215}
!1220 = !DILocation(line: 0, scope: !1216, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 378, column: 13, scope: !1211, inlinedAt: !1126)
!1222 = !DILocation(line: 110, column: 10, scope: !1216, inlinedAt: !1221)
!1223 = !{!1164, !711, i64 40}
!1224 = !{!1164, !711, i64 48}
!1225 = !{!"branch_weights", i32 2000, i32 1}
!1226 = !DILocation(line: 380, column: 25, scope: !1103, inlinedAt: !1126)
!1227 = !DILocation(line: 382, column: 15, scope: !1102, inlinedAt: !1126)
!1228 = !DILocation(line: 357, column: 12, scope: !1092, inlinedAt: !1126)
!1229 = !DILocation(line: 391, column: 12, scope: !1230, inlinedAt: !1126)
!1230 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 391, column: 11)
!1231 = !DILocation(line: 391, column: 32, scope: !1230, inlinedAt: !1126)
!1232 = !DILocation(line: 391, column: 61, scope: !1230, inlinedAt: !1126)
!1233 = !DILocation(line: 391, column: 11, scope: !1092, inlinedAt: !1126)
!1234 = !DILocation(line: 0, scope: !1216, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 392, column: 9, scope: !1230, inlinedAt: !1126)
!1236 = !DILocation(line: 110, column: 10, scope: !1216, inlinedAt: !1235)
!1237 = !DILocation(line: 0, scope: !1112, inlinedAt: !1126)
!1238 = !DILocation(line: 401, column: 43, scope: !1239, inlinedAt: !1126)
!1239 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 401, column: 11)
!1240 = !DILocation(line: 401, column: 11, scope: !1239, inlinedAt: !1126)
!1241 = !DILocation(line: 401, column: 61, scope: !1239, inlinedAt: !1126)
!1242 = !DILocation(line: 401, column: 11, scope: !1112, inlinedAt: !1126)
!1243 = !DILocation(line: 403, column: 19, scope: !1112, inlinedAt: !1126)
!1244 = !DILocation(line: 406, column: 15, scope: !1112, inlinedAt: !1126)
!1245 = !DILocation(line: 0, scope: !1155, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 406, column: 15, scope: !1112, inlinedAt: !1126)
!1247 = !DILocation(line: 130, column: 10, scope: !1155, inlinedAt: !1246)
!1248 = !DILocation(line: 406, column: 14, scope: !1112, inlinedAt: !1126)
!1249 = !DILocation(line: 406, column: 7, scope: !1112, inlinedAt: !1126)
!1250 = !DILocation(line: 404, column: 27, scope: !1112, inlinedAt: !1126)
!1251 = !DILocation(line: 404, column: 51, scope: !1112, inlinedAt: !1126)
!1252 = !DILocation(line: 404, column: 34, scope: !1112, inlinedAt: !1126)
!1253 = !DILocation(line: 404, column: 63, scope: !1112, inlinedAt: !1126)
!1254 = !DILocation(line: 404, column: 38, scope: !1112, inlinedAt: !1126)
!1255 = !DILocation(line: 411, column: 15, scope: !1256, inlinedAt: !1126)
!1256 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 411, column: 15)
!1257 = !DILocation(line: 411, column: 65, scope: !1256, inlinedAt: !1126)
!1258 = !DILocation(line: 411, column: 15, scope: !1117, inlinedAt: !1126)
!1259 = !DILocation(line: 413, column: 19, scope: !1260, inlinedAt: !1126)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 413, column: 19)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 412, column: 13)
!1262 = !DILocalVariable(name: "__stream", arg: 1, scope: !1263, file: !1156, line: 135, type: !1105)
!1263 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1156, file: !1156, line: 135, type: !1157, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1264)
!1264 = !{!1262}
!1265 = !DILocation(line: 0, scope: !1263, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 413, column: 19, scope: !1260, inlinedAt: !1126)
!1267 = !DILocation(line: 137, column: 10, scope: !1263, inlinedAt: !1266)
!1268 = !DILocation(line: 417, column: 23, scope: !1117, inlinedAt: !1126)
!1269 = !DILocation(line: 0, scope: !1117, inlinedAt: !1126)
!1270 = !DILocation(line: 418, column: 31, scope: !1117, inlinedAt: !1126)
!1271 = !DILocation(line: 418, column: 38, scope: !1117, inlinedAt: !1126)
!1272 = !DILocation(line: 418, column: 67, scope: !1117, inlinedAt: !1126)
!1273 = !DILocation(line: 418, column: 55, scope: !1117, inlinedAt: !1126)
!1274 = !DILocation(line: 418, column: 42, scope: !1117, inlinedAt: !1126)
!1275 = !DILocation(line: 0, scope: !1186, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 419, column: 20, scope: !1117, inlinedAt: !1126)
!1277 = !DILocation(line: 284, column: 7, scope: !1196, inlinedAt: !1276)
!1278 = !DILocation(line: 284, column: 19, scope: !1196, inlinedAt: !1276)
!1279 = !DILocation(line: 284, column: 7, scope: !1186, inlinedAt: !1276)
!1280 = !DILocation(line: 286, column: 19, scope: !1200, inlinedAt: !1276)
!1281 = !DILocation(line: 286, column: 7, scope: !1186, inlinedAt: !1276)
!1282 = !DILocation(line: 289, column: 7, scope: !1203, inlinedAt: !1276)
!1283 = !DILocation(line: 0, scope: !1203, inlinedAt: !1276)
!1284 = !DILocation(line: 289, column: 7, scope: !1186, inlinedAt: !1276)
!1285 = !DILocation(line: 290, column: 29, scope: !1203, inlinedAt: !1276)
!1286 = !DILocation(line: 290, column: 32, scope: !1203, inlinedAt: !1276)
!1287 = !DILocation(line: 292, column: 29, scope: !1203, inlinedAt: !1276)
!1288 = !DILocation(line: 292, column: 32, scope: !1203, inlinedAt: !1276)
!1289 = !DILocation(line: 419, column: 19, scope: !1117, inlinedAt: !1126)
!1290 = !DILocation(line: 420, column: 26, scope: !1117, inlinedAt: !1126)
!1291 = !DILocation(line: 420, column: 23, scope: !1117, inlinedAt: !1126)
!1292 = !DILocation(line: 422, column: 27, scope: !1293, inlinedAt: !1126)
!1293 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 422, column: 15)
!1294 = !DILocation(line: 422, column: 15, scope: !1117, inlinedAt: !1126)
!1295 = !DILocation(line: 429, column: 15, scope: !1296, inlinedAt: !1126)
!1296 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 429, column: 15)
!1297 = !DILocation(line: 429, column: 30, scope: !1296, inlinedAt: !1126)
!1298 = !DILocation(line: 429, column: 15, scope: !1117, inlinedAt: !1126)
!1299 = !DILocation(line: 431, column: 19, scope: !1300, inlinedAt: !1126)
!1300 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 430, column: 13)
!1301 = !DILocation(line: 433, column: 23, scope: !1302, inlinedAt: !1126)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 433, column: 23)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 432, column: 17)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 431, column: 19)
!1305 = !DILocation(line: 433, column: 23, scope: !1303, inlinedAt: !1126)
!1306 = !DILocation(line: 445, column: 22, scope: !1123, inlinedAt: !1126)
!1307 = !DILocation(line: 436, column: 36, scope: !1308, inlinedAt: !1126)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 436, column: 24)
!1309 = !DILocation(line: 436, column: 24, scope: !1304, inlinedAt: !1126)
!1310 = !DILocation(line: 439, column: 23, scope: !1311, inlinedAt: !1126)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 438, column: 23)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 437, column: 17)
!1313 = !DILocation(line: 440, column: 31, scope: !1311, inlinedAt: !1126)
!1314 = !DILocation(line: 438, column: 23, scope: !1312, inlinedAt: !1126)
!1315 = !DILocation(line: 0, scope: !1216, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 441, column: 21, scope: !1311, inlinedAt: !1126)
!1317 = !DILocation(line: 110, column: 10, scope: !1216, inlinedAt: !1316)
!1318 = !DILocation(line: 445, column: 25, scope: !1123, inlinedAt: !1126)
!1319 = !DILocation(line: 445, column: 15, scope: !1117, inlinedAt: !1126)
!1320 = !DILocation(line: 447, column: 15, scope: !1122, inlinedAt: !1126)
!1321 = !DILocation(line: 451, column: 19, scope: !1122, inlinedAt: !1126)
!1322 = !DILocation(line: 399, column: 12, scope: !1112, inlinedAt: !1126)
!1323 = !DILocation(line: 456, column: 7, scope: !1112, inlinedAt: !1126)
!1324 = !DILocation(line: 457, column: 5, scope: !1093, inlinedAt: !1126)
!1325 = !DILocation(line: 459, column: 2, scope: !1074, inlinedAt: !1126)
!1326 = !DILocation(line: 460, column: 7, scope: !1327, inlinedAt: !1126)
!1327 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 460, column: 7)
!1328 = !DILocation(line: 0, scope: !1263, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 460, column: 7, scope: !1327, inlinedAt: !1126)
!1330 = !DILocation(line: 137, column: 10, scope: !1263, inlinedAt: !1329)
!1331 = !DILocation(line: 460, column: 22, scope: !1327, inlinedAt: !1126)
!1332 = !DILocation(line: 460, column: 25, scope: !1327, inlinedAt: !1126)
!1333 = !DILocation(line: 460, column: 40, scope: !1327, inlinedAt: !1126)
!1334 = !DILocation(line: 460, column: 7, scope: !1074, inlinedAt: !1126)
!1335 = !DILocation(line: 461, column: 5, scope: !1327, inlinedAt: !1126)
!1336 = !DILocation(line: 465, column: 13, scope: !1074, inlinedAt: !1126)
!1337 = !DILocation(line: 465, column: 3, scope: !1074, inlinedAt: !1126)
!1338 = !DILocation(line: 466, column: 13, scope: !1074, inlinedAt: !1126)
!1339 = !DILocation(line: 466, column: 3, scope: !1074, inlinedAt: !1126)
!1340 = !DILocation(line: 467, column: 1, scope: !1074, inlinedAt: !1126)
!1341 = !DILocation(line: 662, column: 1, scope: !848)
!1342 = !DISubprogram(name: "getenv", scope: !1343, file: !1343, line: 634, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!1343 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!81, !83}
!1346 = !DISubprogram(name: "bindtextdomain", scope: !785, file: !785, line: 86, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!81, !83, !83}
!1349 = !DISubprogram(name: "textdomain", scope: !785, file: !785, line: 82, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!1350 = !DISubprogram(name: "atexit", scope: !1343, file: !1343, line: 595, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!85, !163}
!1353 = !DISubprogram(name: "getopt_long", scope: !111, file: !111, line: 66, type: !1354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!85, !85, !1356, !83, !1358, !116}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1359 = !DISubprogram(name: "error", scope: !1360, file: !1360, line: 52, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!1360 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !85, !85, !83, null}
!1363 = distinct !DISubprogram(name: "find_field", scope: !3, file: !3, line: 256, type: !1364, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1368)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!81, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1368 = !{!1369, !1370, !1371, !1372, !1373}
!1369 = !DILocalVariable(name: "line", arg: 1, scope: !1363, file: !3, line: 256, type: !1366)
!1370 = !DILocalVariable(name: "count", scope: !1363, file: !3, line: 258, type: !76)
!1371 = !DILocalVariable(name: "lp", scope: !1363, file: !3, line: 259, type: !83)
!1372 = !DILocalVariable(name: "size", scope: !1363, file: !3, line: 260, type: !76)
!1373 = !DILocalVariable(name: "i", scope: !1363, file: !3, line: 261, type: !76)
!1374 = !DILocation(line: 0, scope: !1363)
!1375 = !DILocation(line: 259, column: 26, scope: !1363)
!1376 = !DILocation(line: 260, column: 23, scope: !1363)
!1377 = !DILocation(line: 260, column: 30, scope: !1363)
!1378 = !DILocation(line: 263, column: 27, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 263, column: 3)
!1380 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 263, column: 3)
!1381 = !DILocation(line: 263, column: 25, scope: !1379)
!1382 = !DILocation(line: 263, column: 39, scope: !1379)
!1383 = !DILocation(line: 263, column: 3, scope: !1380)
!1384 = !DILocation(line: 265, column: 16, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 264, column: 5)
!1386 = !DILocation(line: 265, column: 23, scope: !1385)
!1387 = !DILocation(line: 265, column: 37, scope: !1385)
!1388 = !DILocalVariable(name: "ch", arg: 1, scope: !1389, file: !719, line: 160, type: !87)
!1389 = distinct !DISubprogram(name: "field_sep", scope: !719, file: !719, line: 160, type: !1390, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1392)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!97, !87}
!1392 = !{!1388}
!1393 = !DILocation(line: 0, scope: !1389, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 265, column: 26, scope: !1385)
!1395 = !DILocation(line: 162, column: 10, scope: !1389, inlinedAt: !1394)
!1396 = !{!1165, !1165, i64 0}
!1397 = !DILocation(line: 162, column: 23, scope: !1389, inlinedAt: !1394)
!1398 = !DILocation(line: 265, column: 7, scope: !1385)
!1399 = !DILocation(line: 266, column: 10, scope: !1385)
!1400 = distinct !{!1400, !1398, !1399, !764}
!1401 = !DILocation(line: 267, column: 16, scope: !1385)
!1402 = !DILocation(line: 267, column: 23, scope: !1385)
!1403 = !DILocation(line: 267, column: 38, scope: !1385)
!1404 = !DILocation(line: 0, scope: !1389, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 267, column: 27, scope: !1385)
!1406 = !DILocation(line: 162, column: 10, scope: !1389, inlinedAt: !1405)
!1407 = !DILocation(line: 162, column: 23, scope: !1389, inlinedAt: !1405)
!1408 = !DILocation(line: 267, column: 7, scope: !1385)
!1409 = !DILocation(line: 268, column: 10, scope: !1385)
!1410 = distinct !{!1410, !1408, !1409, !764}
!1411 = !DILocation(line: 263, column: 57, scope: !1379)
!1412 = distinct !{!1412, !1383, !1413, !764}
!1413 = !DILocation(line: 269, column: 5, scope: !1380)
!1414 = !DILocation(line: 261, column: 10, scope: !1363)
!1415 = !DILocation(line: 271, column: 8, scope: !1363)
!1416 = !DILocation(line: 271, column: 5, scope: !1363)
!1417 = !DILocation(line: 273, column: 23, scope: !1363)
!1418 = !DILocation(line: 273, column: 3, scope: !1363)
!1419 = !DISubprogram(name: "fwrite_unlocked", scope: !789, file: !789, line: 680, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!78, !79, !78, !78, !792}
!1422 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 302, type: !1423, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1425)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !1366, !97, !870}
!1425 = !{!1426, !1427, !1428, !1429, !1431, !1432}
!1426 = !DILocalVariable(name: "line", arg: 1, scope: !1422, file: !3, line: 302, type: !1366)
!1427 = !DILocalVariable(name: "match", arg: 2, scope: !1422, file: !3, line: 303, type: !97)
!1428 = !DILocalVariable(name: "linecount", arg: 3, scope: !1422, file: !3, line: 303, type: !870)
!1429 = !DILocalVariable(name: "__ptr", scope: !1430, file: !3, line: 313, type: !83)
!1430 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 313, column: 3)
!1431 = !DILocalVariable(name: "__stream", scope: !1430, file: !3, line: 313, type: !1105)
!1432 = !DILocalVariable(name: "__cnt", scope: !1430, file: !3, line: 313, type: !76)
!1433 = !DILocation(line: 0, scope: !1422)
!1434 = !DILocation(line: 305, column: 20, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 305, column: 7)
!1436 = !DILocation(line: 305, column: 7, scope: !1422)
!1437 = !DILocation(line: 305, column: 27, scope: !1435)
!1438 = !DILocation(line: 305, column: 10, scope: !1435)
!1439 = !DILocation(line: 306, column: 21, scope: !1435)
!1440 = !DILocation(line: 306, column: 12, scope: !1435)
!1441 = !DILocation(line: 307, column: 12, scope: !1435)
!1442 = !DILocation(line: 310, column: 7, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 310, column: 7)
!1444 = !DILocation(line: 310, column: 7, scope: !1422)
!1445 = !DILocation(line: 311, column: 5, scope: !1443)
!1446 = !DILocation(line: 313, column: 3, scope: !1422)
!1447 = !DILocation(line: 314, column: 1, scope: !1422)
!1448 = distinct !DISubprogram(name: "__argmatch_die", scope: !157, file: !157, line: 60, type: !164, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !152)
!1449 = !DILocation(line: 62, column: 3, scope: !1448)
!1450 = !DILocation(line: 63, column: 1, scope: !1448)
!1451 = distinct !DISubprogram(name: "argmatch", scope: !157, file: !157, line: 82, type: !1452, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !1456)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1454, !83, !1455, !79, !76}
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !77, line: 35, baseType: !817)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464}
!1457 = !DILocalVariable(name: "arg", arg: 1, scope: !1451, file: !157, line: 82, type: !83)
!1458 = !DILocalVariable(name: "arglist", arg: 2, scope: !1451, file: !157, line: 82, type: !1455)
!1459 = !DILocalVariable(name: "vallist", arg: 3, scope: !1451, file: !157, line: 83, type: !79)
!1460 = !DILocalVariable(name: "valsize", arg: 4, scope: !1451, file: !157, line: 83, type: !76)
!1461 = !DILocalVariable(name: "i", scope: !1451, file: !157, line: 85, type: !76)
!1462 = !DILocalVariable(name: "arglen", scope: !1451, file: !157, line: 86, type: !76)
!1463 = !DILocalVariable(name: "matchind", scope: !1451, file: !157, line: 87, type: !1454)
!1464 = !DILocalVariable(name: "ambiguous", scope: !1451, file: !157, line: 88, type: !97)
!1465 = !DILocation(line: 0, scope: !1451)
!1466 = !DILocation(line: 90, column: 12, scope: !1451)
!1467 = !DILocation(line: 93, column: 15, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !157, line: 93, column: 3)
!1469 = distinct !DILexicalBlock(scope: !1451, file: !157, line: 93, column: 3)
!1470 = !DILocation(line: 93, column: 3, scope: !1469)
!1471 = !DILocation(line: 95, column: 12, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !157, line: 95, column: 11)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !157, line: 94, column: 5)
!1474 = !DILocation(line: 95, column: 11, scope: !1473)
!1475 = !DILocation(line: 97, column: 15, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !157, line: 97, column: 15)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !157, line: 96, column: 9)
!1478 = !DILocation(line: 97, column: 35, scope: !1476)
!1479 = !DILocation(line: 97, column: 15, scope: !1477)
!1480 = !DILocation(line: 100, column: 29, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !157, line: 100, column: 20)
!1482 = !DILocation(line: 100, column: 20, scope: !1476)
!1483 = !DILocation(line: 107, column: 19, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !157, line: 106, column: 19)
!1485 = distinct !DILexicalBlock(scope: !1481, file: !157, line: 104, column: 13)
!1486 = !DILocation(line: 107, column: 63, scope: !1484)
!1487 = !DILocation(line: 107, column: 53, scope: !1484)
!1488 = !DILocation(line: 108, column: 63, scope: !1484)
!1489 = !DILocation(line: 108, column: 53, scope: !1484)
!1490 = !DILocation(line: 107, column: 22, scope: !1484)
!1491 = !DILocation(line: 106, column: 19, scope: !1485)
!1492 = !DILocation(line: 113, column: 17, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1484, file: !157, line: 109, column: 17)
!1494 = !DILocation(line: 93, column: 28, scope: !1468)
!1495 = distinct !{!1495, !1470, !1496, !764}
!1496 = !DILocation(line: 116, column: 5, scope: !1469)
!1497 = !DILocation(line: 87, column: 13, scope: !1451)
!1498 = !DILocation(line: 88, column: 8, scope: !1451)
!1499 = !DILocation(line: 117, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1451, file: !157, line: 117, column: 7)
!1501 = !DILocation(line: 117, column: 7, scope: !1451)
!1502 = !DILocation(line: 121, column: 1, scope: !1451)
!1503 = distinct !DISubprogram(name: "argmatch_invalid", scope: !157, file: !157, line: 129, type: !1504, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !1506)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{null, !83, !83, !1454}
!1506 = !{!1507, !1508, !1509, !1510}
!1507 = !DILocalVariable(name: "context", arg: 1, scope: !1503, file: !157, line: 129, type: !83)
!1508 = !DILocalVariable(name: "value", arg: 2, scope: !1503, file: !157, line: 129, type: !83)
!1509 = !DILocalVariable(name: "problem", arg: 3, scope: !1503, file: !157, line: 129, type: !1454)
!1510 = !DILocalVariable(name: "format", scope: !1503, file: !157, line: 131, type: !83)
!1511 = !DILocation(line: 0, scope: !1503)
!1512 = !DILocation(line: 131, column: 33, scope: !1503)
!1513 = !DILocation(line: 131, column: 25, scope: !1503)
!1514 = !DILocation(line: 135, column: 24, scope: !1503)
!1515 = !DILocation(line: 136, column: 10, scope: !1503)
!1516 = !DILocation(line: 135, column: 3, scope: !1503)
!1517 = !DILocation(line: 137, column: 1, scope: !1503)
!1518 = distinct !DISubprogram(name: "argmatch_valid", scope: !157, file: !157, line: 144, type: !1519, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !1521)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !1455, !79, !76}
!1521 = !{!1522, !1523, !1524, !1525, !1526}
!1522 = !DILocalVariable(name: "arglist", arg: 1, scope: !1518, file: !157, line: 144, type: !1455)
!1523 = !DILocalVariable(name: "vallist", arg: 2, scope: !1518, file: !157, line: 145, type: !79)
!1524 = !DILocalVariable(name: "valsize", arg: 3, scope: !1518, file: !157, line: 145, type: !76)
!1525 = !DILocalVariable(name: "i", scope: !1518, file: !157, line: 147, type: !76)
!1526 = !DILocalVariable(name: "last_val", scope: !1518, file: !157, line: 148, type: !83)
!1527 = !DILocation(line: 0, scope: !1518)
!1528 = !DILocation(line: 152, column: 3, scope: !1518)
!1529 = !DILocation(line: 153, column: 15, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !157, line: 153, column: 3)
!1531 = distinct !DILexicalBlock(scope: !1518, file: !157, line: 153, column: 3)
!1532 = !DILocation(line: 153, column: 3, scope: !1531)
!1533 = !DILocation(line: 154, column: 12, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !157, line: 154, column: 9)
!1535 = !DILocation(line: 155, column: 9, scope: !1534)
!1536 = !DILocation(line: 155, column: 63, scope: !1534)
!1537 = !DILocation(line: 155, column: 53, scope: !1534)
!1538 = !DILocation(line: 155, column: 12, scope: !1534)
!1539 = !DILocation(line: 154, column: 9, scope: !1530)
!1540 = !DILocation(line: 158, column: 53, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1534, file: !157, line: 156, column: 7)
!1542 = !DILocation(line: 157, column: 9, scope: !1541)
!1543 = !DILocation(line: 158, column: 43, scope: !1541)
!1544 = !DILocation(line: 159, column: 7, scope: !1541)
!1545 = !DILocation(line: 162, column: 9, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1534, file: !157, line: 161, column: 7)
!1547 = !DILocation(line: 153, column: 28, scope: !1530)
!1548 = distinct !{!1548, !1532, !1549, !764}
!1549 = !DILocation(line: 163, column: 7, scope: !1531)
!1550 = !DILocation(line: 164, column: 3, scope: !1518)
!1551 = !DILocalVariable(name: "__c", arg: 1, scope: !1552, file: !1156, line: 101, type: !85)
!1552 = distinct !DISubprogram(name: "putc_unlocked", scope: !1156, file: !1156, line: 101, type: !1553, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !1589)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!85, !85, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1107, line: 7, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !794, line: 49, size: 1728, elements: !1558)
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1557, file: !794, line: 51, baseType: !85, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1557, file: !794, line: 54, baseType: !81, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1557, file: !794, line: 55, baseType: !81, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1557, file: !794, line: 56, baseType: !81, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1557, file: !794, line: 57, baseType: !81, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1557, file: !794, line: 58, baseType: !81, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1557, file: !794, line: 59, baseType: !81, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1557, file: !794, line: 60, baseType: !81, size: 64, offset: 448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1557, file: !794, line: 61, baseType: !81, size: 64, offset: 512)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1557, file: !794, line: 64, baseType: !81, size: 64, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1557, file: !794, line: 65, baseType: !81, size: 64, offset: 640)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1557, file: !794, line: 66, baseType: !81, size: 64, offset: 704)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1557, file: !794, line: 68, baseType: !809, size: 64, offset: 768)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1557, file: !794, line: 70, baseType: !1573, size: 64, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1557, file: !794, line: 72, baseType: !85, size: 32, offset: 896)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1557, file: !794, line: 73, baseType: !85, size: 32, offset: 928)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1557, file: !794, line: 74, baseType: !815, size: 64, offset: 960)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1557, file: !794, line: 77, baseType: !86, size: 16, offset: 1024)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1557, file: !794, line: 78, baseType: !820, size: 8, offset: 1040)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1557, file: !794, line: 79, baseType: !822, size: 8, offset: 1048)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1557, file: !794, line: 81, baseType: !826, size: 64, offset: 1088)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1557, file: !794, line: 89, baseType: !829, size: 64, offset: 1152)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1557, file: !794, line: 91, baseType: !831, size: 64, offset: 1216)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1557, file: !794, line: 92, baseType: !834, size: 64, offset: 1280)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1557, file: !794, line: 93, baseType: !1573, size: 64, offset: 1344)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1557, file: !794, line: 94, baseType: !74, size: 64, offset: 1408)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1557, file: !794, line: 95, baseType: !76, size: 64, offset: 1472)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1557, file: !794, line: 96, baseType: !85, size: 32, offset: 1536)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1557, file: !794, line: 98, baseType: !841, size: 160, offset: 1568)
!1589 = !{!1551, !1590}
!1590 = !DILocalVariable(name: "__stream", arg: 2, scope: !1552, file: !1156, line: 101, type: !1555)
!1591 = !DILocation(line: 0, scope: !1552, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 164, column: 3, scope: !1518)
!1593 = !DILocation(line: 103, column: 10, scope: !1552, inlinedAt: !1592)
!1594 = !DILocation(line: 165, column: 1, scope: !1518)
!1595 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !157, file: !157, line: 174, type: !1596, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!1454, !83, !83, !1455, !79, !76, !161}
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605}
!1599 = !DILocalVariable(name: "context", arg: 1, scope: !1595, file: !157, line: 174, type: !83)
!1600 = !DILocalVariable(name: "arg", arg: 2, scope: !1595, file: !157, line: 175, type: !83)
!1601 = !DILocalVariable(name: "arglist", arg: 3, scope: !1595, file: !157, line: 175, type: !1455)
!1602 = !DILocalVariable(name: "vallist", arg: 4, scope: !1595, file: !157, line: 176, type: !79)
!1603 = !DILocalVariable(name: "valsize", arg: 5, scope: !1595, file: !157, line: 176, type: !76)
!1604 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1595, file: !157, line: 177, type: !161)
!1605 = !DILocalVariable(name: "res", scope: !1595, file: !157, line: 179, type: !1454)
!1606 = !DILocation(line: 0, scope: !1595)
!1607 = !DILocation(line: 179, column: 19, scope: !1595)
!1608 = !DILocation(line: 180, column: 11, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1595, file: !157, line: 180, column: 7)
!1610 = !DILocation(line: 180, column: 7, scope: !1595)
!1611 = !DILocation(line: 0, scope: !1503, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 185, column: 3, scope: !1595)
!1613 = !DILocation(line: 131, column: 33, scope: !1503, inlinedAt: !1612)
!1614 = !DILocation(line: 131, column: 25, scope: !1503, inlinedAt: !1612)
!1615 = !DILocation(line: 135, column: 24, scope: !1503, inlinedAt: !1612)
!1616 = !DILocation(line: 136, column: 10, scope: !1503, inlinedAt: !1612)
!1617 = !DILocation(line: 135, column: 3, scope: !1503, inlinedAt: !1612)
!1618 = !DILocation(line: 186, column: 3, scope: !1595)
!1619 = !DILocation(line: 187, column: 3, scope: !1595)
!1620 = !DILocation(line: 189, column: 3, scope: !1595)
!1621 = !DILocation(line: 190, column: 1, scope: !1595)
!1622 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !157, file: !157, line: 195, type: !1623, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !1625)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!83, !79, !1455, !79, !76}
!1625 = !{!1626, !1627, !1628, !1629, !1630}
!1626 = !DILocalVariable(name: "value", arg: 1, scope: !1622, file: !157, line: 195, type: !79)
!1627 = !DILocalVariable(name: "arglist", arg: 2, scope: !1622, file: !157, line: 196, type: !1455)
!1628 = !DILocalVariable(name: "vallist", arg: 3, scope: !1622, file: !157, line: 197, type: !79)
!1629 = !DILocalVariable(name: "valsize", arg: 4, scope: !1622, file: !157, line: 197, type: !76)
!1630 = !DILocalVariable(name: "i", scope: !1622, file: !157, line: 199, type: !76)
!1631 = !DILocation(line: 0, scope: !1622)
!1632 = !DILocation(line: 201, column: 15, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !157, line: 201, column: 3)
!1634 = distinct !DILexicalBlock(scope: !1622, file: !157, line: 201, column: 3)
!1635 = !DILocation(line: 201, column: 3, scope: !1634)
!1636 = !DILocation(line: 202, column: 10, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !157, line: 202, column: 9)
!1638 = !DILocation(line: 202, column: 9, scope: !1633)
!1639 = distinct !{!1639, !1635, !1640, !764}
!1640 = !DILocation(line: 203, column: 23, scope: !1634)
!1641 = !DILocation(line: 202, column: 58, scope: !1637)
!1642 = !DILocation(line: 202, column: 48, scope: !1637)
!1643 = !DILocation(line: 201, column: 28, scope: !1633)
!1644 = !DILocation(line: 205, column: 1, scope: !1622)
!1645 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !169, file: !169, line: 51, type: !734, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1646)
!1646 = !{!1647}
!1647 = !DILocalVariable(name: "file", arg: 1, scope: !1645, file: !169, line: 51, type: !83)
!1648 = !DILocation(line: 0, scope: !1645)
!1649 = !DILocation(line: 53, column: 13, scope: !1645)
!1650 = !DILocation(line: 54, column: 1, scope: !1645)
!1651 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !169, file: !169, line: 88, type: !1652, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1654)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !97}
!1654 = !{!1655}
!1655 = !DILocalVariable(name: "ignore", arg: 1, scope: !1651, file: !169, line: 88, type: !97)
!1656 = !DILocation(line: 0, scope: !1651)
!1657 = !DILocation(line: 90, column: 16, scope: !1651)
!1658 = !{!1659, !1659, i64 0}
!1659 = !{!"_Bool", !712, i64 0}
!1660 = !DILocation(line: 91, column: 1, scope: !1651)
!1661 = distinct !DISubprogram(name: "close_stdout", scope: !169, file: !169, line: 117, type: !164, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1662)
!1662 = !{!1663}
!1663 = !DILocalVariable(name: "write_error", scope: !1664, file: !169, line: 122, type: !83)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !169, line: 121, column: 5)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !169, line: 119, column: 7)
!1666 = !DILocation(line: 119, column: 21, scope: !1665)
!1667 = !DILocation(line: 119, column: 7, scope: !1665)
!1668 = !DILocation(line: 119, column: 29, scope: !1665)
!1669 = !DILocation(line: 120, column: 7, scope: !1665)
!1670 = !DILocation(line: 120, column: 12, scope: !1665)
!1671 = !{i8 0, i8 2}
!1672 = !DILocation(line: 120, column: 25, scope: !1665)
!1673 = !DILocation(line: 120, column: 28, scope: !1665)
!1674 = !DILocation(line: 120, column: 34, scope: !1665)
!1675 = !DILocation(line: 119, column: 7, scope: !1661)
!1676 = !DILocation(line: 122, column: 33, scope: !1664)
!1677 = !DILocation(line: 0, scope: !1664)
!1678 = !DILocation(line: 123, column: 11, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1664, file: !169, line: 123, column: 11)
!1680 = !DILocation(line: 0, scope: !1679)
!1681 = !DILocation(line: 123, column: 11, scope: !1664)
!1682 = !DILocation(line: 124, column: 36, scope: !1679)
!1683 = !DILocation(line: 124, column: 9, scope: !1679)
!1684 = !DILocation(line: 127, column: 9, scope: !1679)
!1685 = !DILocation(line: 129, column: 14, scope: !1664)
!1686 = !DILocation(line: 129, column: 7, scope: !1664)
!1687 = !DILocation(line: 134, column: 42, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1661, file: !169, line: 134, column: 7)
!1689 = !DILocation(line: 134, column: 28, scope: !1688)
!1690 = !DILocation(line: 134, column: 50, scope: !1688)
!1691 = !DILocation(line: 134, column: 7, scope: !1661)
!1692 = !DILocation(line: 135, column: 12, scope: !1688)
!1693 = !DILocation(line: 135, column: 5, scope: !1688)
!1694 = !DILocation(line: 136, column: 1, scope: !1661)
!1695 = distinct !DISubprogram(name: "fdadvise", scope: !245, file: !245, line: 31, type: !1696, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1700)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !85, !1698, !1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !789, line: 63, baseType: !815)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !50, line: 52, baseType: !49)
!1700 = !{!1701, !1702, !1703, !1704, !1705}
!1701 = !DILocalVariable(name: "fd", arg: 1, scope: !1695, file: !245, line: 31, type: !85)
!1702 = !DILocalVariable(name: "offset", arg: 2, scope: !1695, file: !245, line: 31, type: !1698)
!1703 = !DILocalVariable(name: "len", arg: 3, scope: !1695, file: !245, line: 31, type: !1698)
!1704 = !DILocalVariable(name: "advice", arg: 4, scope: !1695, file: !245, line: 31, type: !1699)
!1705 = !DILocalVariable(name: "__x", scope: !1706, file: !245, line: 34, type: !85)
!1706 = distinct !DILexicalBlock(scope: !1695, file: !245, line: 34, column: 3)
!1707 = !DILocation(line: 0, scope: !1695)
!1708 = !DILocation(line: 34, column: 3, scope: !1706)
!1709 = !DILocation(line: 0, scope: !1706)
!1710 = !DILocation(line: 36, column: 1, scope: !1695)
!1711 = !DISubprogram(name: "posix_fadvise", scope: !1712, file: !1712, line: 288, type: !1713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!1712 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!85, !85, !817, !817, !85}
!1715 = distinct !DISubprogram(name: "fadvise", scope: !245, file: !245, line: 39, type: !1716, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1752)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{null, !1718, !1699}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1107, line: 7, baseType: !1720)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !794, line: 49, size: 1728, elements: !1721)
!1721 = !{!1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1720, file: !794, line: 51, baseType: !85, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1720, file: !794, line: 54, baseType: !81, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1720, file: !794, line: 55, baseType: !81, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1720, file: !794, line: 56, baseType: !81, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1720, file: !794, line: 57, baseType: !81, size: 64, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1720, file: !794, line: 58, baseType: !81, size: 64, offset: 320)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1720, file: !794, line: 59, baseType: !81, size: 64, offset: 384)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1720, file: !794, line: 60, baseType: !81, size: 64, offset: 448)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1720, file: !794, line: 61, baseType: !81, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1720, file: !794, line: 64, baseType: !81, size: 64, offset: 576)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1720, file: !794, line: 65, baseType: !81, size: 64, offset: 640)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1720, file: !794, line: 66, baseType: !81, size: 64, offset: 704)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1720, file: !794, line: 68, baseType: !809, size: 64, offset: 768)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1720, file: !794, line: 70, baseType: !1736, size: 64, offset: 832)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1720, file: !794, line: 72, baseType: !85, size: 32, offset: 896)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1720, file: !794, line: 73, baseType: !85, size: 32, offset: 928)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1720, file: !794, line: 74, baseType: !815, size: 64, offset: 960)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1720, file: !794, line: 77, baseType: !86, size: 16, offset: 1024)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1720, file: !794, line: 78, baseType: !820, size: 8, offset: 1040)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1720, file: !794, line: 79, baseType: !822, size: 8, offset: 1048)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1720, file: !794, line: 81, baseType: !826, size: 64, offset: 1088)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1720, file: !794, line: 89, baseType: !829, size: 64, offset: 1152)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1720, file: !794, line: 91, baseType: !831, size: 64, offset: 1216)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1720, file: !794, line: 92, baseType: !834, size: 64, offset: 1280)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1720, file: !794, line: 93, baseType: !1736, size: 64, offset: 1344)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1720, file: !794, line: 94, baseType: !74, size: 64, offset: 1408)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1720, file: !794, line: 95, baseType: !76, size: 64, offset: 1472)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1720, file: !794, line: 96, baseType: !85, size: 32, offset: 1536)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1720, file: !794, line: 98, baseType: !841, size: 160, offset: 1568)
!1752 = !{!1753, !1754}
!1753 = !DILocalVariable(name: "fp", arg: 1, scope: !1715, file: !245, line: 39, type: !1718)
!1754 = !DILocalVariable(name: "advice", arg: 2, scope: !1715, file: !245, line: 39, type: !1699)
!1755 = !DILocation(line: 0, scope: !1715)
!1756 = !DILocation(line: 41, column: 7, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1715, file: !245, line: 41, column: 7)
!1758 = !DILocation(line: 41, column: 7, scope: !1715)
!1759 = !DILocation(line: 42, column: 15, scope: !1757)
!1760 = !DILocation(line: 0, scope: !1695, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 42, column: 5, scope: !1757)
!1762 = !DILocation(line: 34, column: 3, scope: !1706, inlinedAt: !1761)
!1763 = !DILocation(line: 0, scope: !1706, inlinedAt: !1761)
!1764 = !DILocation(line: 42, column: 5, scope: !1757)
!1765 = !DILocation(line: 43, column: 1, scope: !1715)
!1766 = !DISubprogram(name: "fileno", scope: !789, file: !789, line: 785, type: !1767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!85, !1736}
!1769 = distinct !DISubprogram(name: "freopen_safer", scope: !248, file: !248, line: 62, type: !1770, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1806)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!1772, !83, !83, !1772}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1107, line: 7, baseType: !1774)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !794, line: 49, size: 1728, elements: !1775)
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1774, file: !794, line: 51, baseType: !85, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1774, file: !794, line: 54, baseType: !81, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1774, file: !794, line: 55, baseType: !81, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1774, file: !794, line: 56, baseType: !81, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1774, file: !794, line: 57, baseType: !81, size: 64, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1774, file: !794, line: 58, baseType: !81, size: 64, offset: 320)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1774, file: !794, line: 59, baseType: !81, size: 64, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1774, file: !794, line: 60, baseType: !81, size: 64, offset: 448)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1774, file: !794, line: 61, baseType: !81, size: 64, offset: 512)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1774, file: !794, line: 64, baseType: !81, size: 64, offset: 576)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1774, file: !794, line: 65, baseType: !81, size: 64, offset: 640)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1774, file: !794, line: 66, baseType: !81, size: 64, offset: 704)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1774, file: !794, line: 68, baseType: !809, size: 64, offset: 768)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1774, file: !794, line: 70, baseType: !1790, size: 64, offset: 832)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1774, file: !794, line: 72, baseType: !85, size: 32, offset: 896)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1774, file: !794, line: 73, baseType: !85, size: 32, offset: 928)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1774, file: !794, line: 74, baseType: !815, size: 64, offset: 960)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1774, file: !794, line: 77, baseType: !86, size: 16, offset: 1024)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1774, file: !794, line: 78, baseType: !820, size: 8, offset: 1040)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1774, file: !794, line: 79, baseType: !822, size: 8, offset: 1048)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1774, file: !794, line: 81, baseType: !826, size: 64, offset: 1088)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1774, file: !794, line: 89, baseType: !829, size: 64, offset: 1152)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1774, file: !794, line: 91, baseType: !831, size: 64, offset: 1216)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1774, file: !794, line: 92, baseType: !834, size: 64, offset: 1280)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1774, file: !794, line: 93, baseType: !1790, size: 64, offset: 1344)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1774, file: !794, line: 94, baseType: !74, size: 64, offset: 1408)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1774, file: !794, line: 95, baseType: !76, size: 64, offset: 1472)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1774, file: !794, line: 96, baseType: !85, size: 32, offset: 1536)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1774, file: !794, line: 98, baseType: !841, size: 160, offset: 1568)
!1806 = !{!1807, !1808, !1809, !1810, !1811, !1812, !1813}
!1807 = !DILocalVariable(name: "name", arg: 1, scope: !1769, file: !248, line: 62, type: !83)
!1808 = !DILocalVariable(name: "mode", arg: 2, scope: !1769, file: !248, line: 62, type: !83)
!1809 = !DILocalVariable(name: "f", arg: 3, scope: !1769, file: !248, line: 62, type: !1772)
!1810 = !DILocalVariable(name: "protect_in", scope: !1769, file: !248, line: 70, type: !97)
!1811 = !DILocalVariable(name: "protect_out", scope: !1769, file: !248, line: 71, type: !97)
!1812 = !DILocalVariable(name: "protect_err", scope: !1769, file: !248, line: 72, type: !97)
!1813 = !DILocalVariable(name: "saved_errno", scope: !1769, file: !248, line: 73, type: !85)
!1814 = !DILocation(line: 0, scope: !1769)
!1815 = !DILocation(line: 75, column: 11, scope: !1769)
!1816 = !DILocation(line: 75, column: 3, scope: !1769)
!1817 = !DILocation(line: 78, column: 11, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !248, line: 78, column: 11)
!1819 = distinct !DILexicalBlock(scope: !1769, file: !248, line: 76, column: 5)
!1820 = !DILocation(line: 78, column: 47, scope: !1818)
!1821 = !DILocation(line: 78, column: 11, scope: !1819)
!1822 = !DILocation(line: 82, column: 11, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !248, line: 82, column: 11)
!1824 = !DILocation(line: 82, column: 47, scope: !1823)
!1825 = !DILocation(line: 82, column: 11, scope: !1819)
!1826 = !DILocation(line: 86, column: 11, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1819, file: !248, line: 86, column: 11)
!1828 = !DILocation(line: 86, column: 45, scope: !1827)
!1829 = !DILocation(line: 93, column: 18, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1769, file: !248, line: 93, column: 7)
!1831 = !DILocalVariable(name: "fd", arg: 1, scope: !1832, file: !248, line: 40, type: !85)
!1832 = distinct !DISubprogram(name: "protect_fd", scope: !248, file: !248, line: 40, type: !1833, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!97, !85}
!1835 = !{!1831, !1836}
!1836 = !DILocalVariable(name: "value", scope: !1832, file: !248, line: 42, type: !85)
!1837 = !DILocation(line: 0, scope: !1832, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 93, column: 22, scope: !1830)
!1839 = !DILocation(line: 42, column: 15, scope: !1832, inlinedAt: !1838)
!1840 = !DILocation(line: 43, column: 13, scope: !1841, inlinedAt: !1838)
!1841 = distinct !DILexicalBlock(scope: !1832, file: !248, line: 43, column: 7)
!1842 = !DILocation(line: 43, column: 7, scope: !1832, inlinedAt: !1838)
!1843 = !DILocation(line: 47, column: 11, scope: !1844, inlinedAt: !1838)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !248, line: 46, column: 9)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !248, line: 45, column: 11)
!1846 = distinct !DILexicalBlock(scope: !1841, file: !248, line: 44, column: 5)
!1847 = !DILocation(line: 48, column: 11, scope: !1844, inlinedAt: !1838)
!1848 = !DILocation(line: 48, column: 17, scope: !1844, inlinedAt: !1838)
!1849 = !DILocation(line: 49, column: 9, scope: !1844, inlinedAt: !1838)
!1850 = !DILocation(line: 93, column: 7, scope: !1769)
!1851 = !DILocation(line: 95, column: 12, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1830, file: !248, line: 95, column: 12)
!1853 = !DILocation(line: 95, column: 24, scope: !1852)
!1854 = !DILocation(line: 0, scope: !1832, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 95, column: 28, scope: !1852)
!1856 = !DILocation(line: 42, column: 15, scope: !1832, inlinedAt: !1855)
!1857 = !DILocation(line: 43, column: 13, scope: !1841, inlinedAt: !1855)
!1858 = !DILocation(line: 43, column: 7, scope: !1832, inlinedAt: !1855)
!1859 = !DILocation(line: 47, column: 11, scope: !1844, inlinedAt: !1855)
!1860 = !DILocation(line: 48, column: 11, scope: !1844, inlinedAt: !1855)
!1861 = !DILocation(line: 48, column: 17, scope: !1844, inlinedAt: !1855)
!1862 = !DILocation(line: 49, column: 9, scope: !1844, inlinedAt: !1855)
!1863 = !DILocation(line: 95, column: 12, scope: !1830)
!1864 = !DILocation(line: 97, column: 12, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1852, file: !248, line: 97, column: 12)
!1866 = !DILocation(line: 97, column: 24, scope: !1865)
!1867 = !DILocation(line: 0, scope: !1832, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 97, column: 28, scope: !1865)
!1869 = !DILocation(line: 42, column: 15, scope: !1832, inlinedAt: !1868)
!1870 = !DILocation(line: 43, column: 13, scope: !1841, inlinedAt: !1868)
!1871 = !DILocation(line: 43, column: 7, scope: !1832, inlinedAt: !1868)
!1872 = !DILocation(line: 47, column: 11, scope: !1844, inlinedAt: !1868)
!1873 = !DILocation(line: 48, column: 11, scope: !1844, inlinedAt: !1868)
!1874 = !DILocation(line: 48, column: 17, scope: !1844, inlinedAt: !1868)
!1875 = !DILocation(line: 49, column: 9, scope: !1844, inlinedAt: !1868)
!1876 = !DILocation(line: 97, column: 12, scope: !1852)
!1877 = !DILocation(line: 101, column: 17, scope: !1769)
!1878 = !DILocation(line: 102, column: 7, scope: !1769)
!1879 = !DILocation(line: 100, column: 9, scope: !1865)
!1880 = !DILocation(line: 0, scope: !1830)
!1881 = !DILocation(line: 102, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1769, file: !248, line: 102, column: 7)
!1883 = !DILocation(line: 103, column: 5, scope: !1882)
!1884 = !DILocation(line: 104, column: 7, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1769, file: !248, line: 104, column: 7)
!1886 = !DILocation(line: 104, column: 7, scope: !1769)
!1887 = !DILocation(line: 105, column: 5, scope: !1885)
!1888 = !DILocation(line: 106, column: 7, scope: !1769)
!1889 = !DILocation(line: 107, column: 5, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1769, file: !248, line: 106, column: 7)
!1891 = !DILocation(line: 108, column: 8, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1769, file: !248, line: 108, column: 7)
!1893 = !DILocation(line: 108, column: 7, scope: !1769)
!1894 = !DILocation(line: 109, column: 11, scope: !1892)
!1895 = !DILocation(line: 109, column: 5, scope: !1892)
!1896 = !DILocation(line: 110, column: 3, scope: !1769)
!1897 = !DISubprogram(name: "dup2", scope: !1898, file: !1898, line: 545, type: !1899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!1898 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!85, !85, !85}
!1901 = !DISubprogram(name: "open", scope: !1712, file: !1712, line: 196, type: !1902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!85, !83, !85, null}
!1904 = !DISubprogram(name: "close", scope: !1898, file: !1898, line: 353, type: !1217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!1905 = !DISubprogram(name: "freopen", scope: !789, file: !789, line: 252, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!1790, !83, !83, !1790}
!1908 = distinct !DISubprogram(name: "initbuffer", scope: !250, file: !250, line: 37, type: !1909, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1917)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1082, line: 26, size: 192, elements: !1913)
!1913 = !{!1914, !1915, !1916}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1912, file: !1082, line: 28, baseType: !76, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1912, file: !1082, line: 29, baseType: !76, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1912, file: !1082, line: 30, baseType: !81, size: 64, offset: 128)
!1917 = !{!1918}
!1918 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1908, file: !250, line: 37, type: !1911)
!1919 = !DILocation(line: 0, scope: !1908)
!1920 = !DILocation(line: 39, column: 11, scope: !1908)
!1921 = !DILocalVariable(name: "__dest", arg: 1, scope: !1922, file: !1923, line: 57, type: !74)
!1922 = distinct !DISubprogram(name: "memset", scope: !1923, file: !1923, line: 57, type: !1924, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1926)
!1923 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!74, !74, !85, !76}
!1926 = !{!1921, !1927, !1928}
!1927 = !DILocalVariable(name: "__ch", arg: 2, scope: !1922, file: !1923, line: 57, type: !85)
!1928 = !DILocalVariable(name: "__len", arg: 3, scope: !1922, file: !1923, line: 57, type: !76)
!1929 = !DILocation(line: 0, scope: !1922, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 39, column: 3, scope: !1908)
!1931 = !DILocation(line: 59, column: 10, scope: !1922, inlinedAt: !1930)
!1932 = !DILocation(line: 40, column: 1, scope: !1908)
!1933 = distinct !DISubprogram(name: "readlinebuffer", scope: !250, file: !250, line: 43, type: !1934, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1970)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!1911, !1911, !1936}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1107, line: 7, baseType: !1938)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !794, line: 49, size: 1728, elements: !1939)
!1939 = !{!1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1938, file: !794, line: 51, baseType: !85, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1938, file: !794, line: 54, baseType: !81, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1938, file: !794, line: 55, baseType: !81, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1938, file: !794, line: 56, baseType: !81, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1938, file: !794, line: 57, baseType: !81, size: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1938, file: !794, line: 58, baseType: !81, size: 64, offset: 320)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1938, file: !794, line: 59, baseType: !81, size: 64, offset: 384)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1938, file: !794, line: 60, baseType: !81, size: 64, offset: 448)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1938, file: !794, line: 61, baseType: !81, size: 64, offset: 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1938, file: !794, line: 64, baseType: !81, size: 64, offset: 576)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1938, file: !794, line: 65, baseType: !81, size: 64, offset: 640)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1938, file: !794, line: 66, baseType: !81, size: 64, offset: 704)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1938, file: !794, line: 68, baseType: !809, size: 64, offset: 768)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1938, file: !794, line: 70, baseType: !1954, size: 64, offset: 832)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1938, file: !794, line: 72, baseType: !85, size: 32, offset: 896)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1938, file: !794, line: 73, baseType: !85, size: 32, offset: 928)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1938, file: !794, line: 74, baseType: !815, size: 64, offset: 960)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1938, file: !794, line: 77, baseType: !86, size: 16, offset: 1024)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1938, file: !794, line: 78, baseType: !820, size: 8, offset: 1040)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1938, file: !794, line: 79, baseType: !822, size: 8, offset: 1048)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1938, file: !794, line: 81, baseType: !826, size: 64, offset: 1088)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1938, file: !794, line: 89, baseType: !829, size: 64, offset: 1152)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1938, file: !794, line: 91, baseType: !831, size: 64, offset: 1216)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1938, file: !794, line: 92, baseType: !834, size: 64, offset: 1280)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1938, file: !794, line: 93, baseType: !1954, size: 64, offset: 1344)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1938, file: !794, line: 94, baseType: !74, size: 64, offset: 1408)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1938, file: !794, line: 95, baseType: !76, size: 64, offset: 1472)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1938, file: !794, line: 96, baseType: !85, size: 32, offset: 1536)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1938, file: !794, line: 98, baseType: !841, size: 160, offset: 1568)
!1970 = !{!1971, !1972}
!1971 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1933, file: !250, line: 43, type: !1911)
!1972 = !DILocalVariable(name: "stream", arg: 2, scope: !1933, file: !250, line: 43, type: !1936)
!1973 = !DILocation(line: 0, scope: !1933)
!1974 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1975, file: !250, line: 59, type: !1911)
!1975 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !250, file: !250, line: 59, type: !1976, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1978)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!1911, !1911, !1936, !82}
!1978 = !{!1974, !1979, !1980, !1981, !1982, !1983, !1984, !1985}
!1979 = !DILocalVariable(name: "stream", arg: 2, scope: !1975, file: !250, line: 59, type: !1936)
!1980 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1975, file: !250, line: 60, type: !82)
!1981 = !DILocalVariable(name: "c", scope: !1975, file: !250, line: 62, type: !85)
!1982 = !DILocalVariable(name: "buffer", scope: !1975, file: !250, line: 63, type: !81)
!1983 = !DILocalVariable(name: "p", scope: !1975, file: !250, line: 64, type: !81)
!1984 = !DILocalVariable(name: "end", scope: !1975, file: !250, line: 65, type: !81)
!1985 = !DILocalVariable(name: "oldsize", scope: !1986, file: !250, line: 83, type: !76)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !250, line: 82, column: 9)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !250, line: 81, column: 11)
!1988 = distinct !DILexicalBlock(scope: !1975, file: !250, line: 71, column: 5)
!1989 = !DILocation(line: 0, scope: !1975, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 45, column: 10, scope: !1933)
!1991 = !DILocation(line: 63, column: 30, scope: !1975, inlinedAt: !1990)
!1992 = !DILocation(line: 65, column: 36, scope: !1975, inlinedAt: !1990)
!1993 = !DILocalVariable(name: "__stream", arg: 1, scope: !1994, file: !1156, line: 128, type: !1936)
!1994 = distinct !DISubprogram(name: "feof_unlocked", scope: !1156, file: !1156, line: 128, type: !1995, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!85, !1936}
!1997 = !{!1993}
!1998 = !DILocation(line: 0, scope: !1994, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 67, column: 7, scope: !2000, inlinedAt: !1990)
!2000 = distinct !DILexicalBlock(scope: !1975, file: !250, line: 67, column: 7)
!2001 = !DILocation(line: 130, column: 10, scope: !1994, inlinedAt: !1999)
!2002 = !DILocation(line: 67, column: 7, scope: !2000, inlinedAt: !1990)
!2003 = !DILocation(line: 67, column: 7, scope: !1975, inlinedAt: !1990)
!2004 = !{!1176, !890, i64 0}
!2005 = !DILocation(line: 65, column: 22, scope: !1975, inlinedAt: !1990)
!2006 = !DILocation(line: 70, column: 3, scope: !1975, inlinedAt: !1990)
!2007 = !DILocalVariable(name: "__fp", arg: 1, scope: !2008, file: !1156, line: 66, type: !1936)
!2008 = distinct !DISubprogram(name: "getc_unlocked", scope: !1156, file: !1156, line: 66, type: !1995, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2009)
!2009 = !{!2007}
!2010 = !DILocation(line: 0, scope: !2008, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 72, column: 11, scope: !1988, inlinedAt: !1990)
!2012 = !DILocation(line: 68, column: 10, scope: !2008, inlinedAt: !2011)
!2013 = !{!1164, !711, i64 8}
!2014 = !{!1164, !711, i64 16}
!2015 = !DILocation(line: 73, column: 11, scope: !1988, inlinedAt: !1990)
!2016 = !DILocation(line: 73, column: 13, scope: !2017, inlinedAt: !1990)
!2017 = distinct !DILexicalBlock(scope: !1988, file: !250, line: 73, column: 11)
!2018 = !DILocation(line: 75, column: 17, scope: !2019, inlinedAt: !1990)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !250, line: 75, column: 15)
!2020 = distinct !DILexicalBlock(scope: !2017, file: !250, line: 74, column: 9)
!2021 = !DILocation(line: 75, column: 27, scope: !2019, inlinedAt: !1990)
!2022 = !DILocalVariable(name: "__stream", arg: 1, scope: !2023, file: !1156, line: 135, type: !1936)
!2023 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1156, file: !1156, line: 135, type: !1995, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2024)
!2024 = !{!2022}
!2025 = !DILocation(line: 0, scope: !2023, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 75, column: 30, scope: !2019, inlinedAt: !1990)
!2027 = !DILocation(line: 137, column: 10, scope: !2023, inlinedAt: !2026)
!2028 = !DILocation(line: 75, column: 30, scope: !2019, inlinedAt: !1990)
!2029 = !DILocation(line: 75, column: 15, scope: !2020, inlinedAt: !1990)
!2030 = !DILocation(line: 77, column: 15, scope: !2031, inlinedAt: !1990)
!2031 = distinct !DILexicalBlock(scope: !2020, file: !250, line: 77, column: 15)
!2032 = !DILocation(line: 77, column: 21, scope: !2031, inlinedAt: !1990)
!2033 = !DILocation(line: 77, column: 15, scope: !2020, inlinedAt: !1990)
!2034 = !DILocation(line: 0, scope: !1988, inlinedAt: !1990)
!2035 = !DILocation(line: 81, column: 13, scope: !1987, inlinedAt: !1990)
!2036 = !DILocation(line: 81, column: 11, scope: !1988, inlinedAt: !1990)
!2037 = !DILocation(line: 83, column: 40, scope: !1986, inlinedAt: !1990)
!2038 = !DILocation(line: 0, scope: !1986, inlinedAt: !1990)
!2039 = !DILocation(line: 84, column: 20, scope: !1986, inlinedAt: !1990)
!2040 = !DILocation(line: 85, column: 22, scope: !1986, inlinedAt: !1990)
!2041 = !DILocation(line: 86, column: 30, scope: !1986, inlinedAt: !1990)
!2042 = !DILocation(line: 87, column: 38, scope: !1986, inlinedAt: !1990)
!2043 = !DILocation(line: 87, column: 24, scope: !1986, inlinedAt: !1990)
!2044 = !DILocation(line: 88, column: 9, scope: !1986, inlinedAt: !1990)
!2045 = !DILocation(line: 89, column: 14, scope: !1988, inlinedAt: !1990)
!2046 = !DILocation(line: 89, column: 9, scope: !1988, inlinedAt: !1990)
!2047 = !DILocation(line: 89, column: 12, scope: !1988, inlinedAt: !1990)
!2048 = !DILocation(line: 91, column: 12, scope: !1975, inlinedAt: !1990)
!2049 = !DILocation(line: 90, column: 5, scope: !1988, inlinedAt: !1990)
!2050 = distinct !{!2050, !2006, !2051, !764}
!2051 = !DILocation(line: 91, column: 24, scope: !1975, inlinedAt: !1990)
!2052 = !DILocation(line: 93, column: 26, scope: !1975, inlinedAt: !1990)
!2053 = !DILocation(line: 93, column: 15, scope: !1975, inlinedAt: !1990)
!2054 = !DILocation(line: 93, column: 22, scope: !1975, inlinedAt: !1990)
!2055 = !DILocation(line: 94, column: 3, scope: !1975, inlinedAt: !1990)
!2056 = !DILocation(line: 45, column: 3, scope: !1933)
!2057 = !DILocation(line: 0, scope: !1975)
!2058 = !DILocation(line: 63, column: 30, scope: !1975)
!2059 = !DILocation(line: 65, column: 36, scope: !1975)
!2060 = !DILocation(line: 0, scope: !1994, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 67, column: 7, scope: !2000)
!2062 = !DILocation(line: 130, column: 10, scope: !1994, inlinedAt: !2061)
!2063 = !DILocation(line: 67, column: 7, scope: !2000)
!2064 = !DILocation(line: 67, column: 7, scope: !1975)
!2065 = !DILocation(line: 65, column: 22, scope: !1975)
!2066 = !DILocation(line: 70, column: 3, scope: !1975)
!2067 = !DILocation(line: 0, scope: !2008, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 72, column: 11, scope: !1988)
!2069 = !DILocation(line: 68, column: 10, scope: !2008, inlinedAt: !2068)
!2070 = !DILocation(line: 73, column: 11, scope: !1988)
!2071 = !DILocation(line: 73, column: 13, scope: !2017)
!2072 = !DILocation(line: 75, column: 17, scope: !2019)
!2073 = !DILocation(line: 75, column: 27, scope: !2019)
!2074 = !DILocation(line: 0, scope: !2023, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 75, column: 30, scope: !2019)
!2076 = !DILocation(line: 137, column: 10, scope: !2023, inlinedAt: !2075)
!2077 = !DILocation(line: 75, column: 30, scope: !2019)
!2078 = !DILocation(line: 75, column: 15, scope: !2020)
!2079 = !DILocation(line: 77, column: 15, scope: !2031)
!2080 = !DILocation(line: 77, column: 21, scope: !2031)
!2081 = !DILocation(line: 77, column: 15, scope: !2020)
!2082 = !DILocation(line: 0, scope: !1988)
!2083 = !DILocation(line: 81, column: 13, scope: !1987)
!2084 = !DILocation(line: 81, column: 11, scope: !1988)
!2085 = !DILocation(line: 83, column: 40, scope: !1986)
!2086 = !DILocation(line: 0, scope: !1986)
!2087 = !DILocation(line: 84, column: 20, scope: !1986)
!2088 = !DILocation(line: 85, column: 22, scope: !1986)
!2089 = !DILocation(line: 86, column: 30, scope: !1986)
!2090 = !DILocation(line: 87, column: 38, scope: !1986)
!2091 = !DILocation(line: 87, column: 24, scope: !1986)
!2092 = !DILocation(line: 88, column: 9, scope: !1986)
!2093 = !DILocation(line: 89, column: 14, scope: !1988)
!2094 = !DILocation(line: 89, column: 9, scope: !1988)
!2095 = !DILocation(line: 89, column: 12, scope: !1988)
!2096 = !DILocation(line: 91, column: 12, scope: !1975)
!2097 = !DILocation(line: 90, column: 5, scope: !1988)
!2098 = distinct !{!2098, !2066, !2099, !764}
!2099 = !DILocation(line: 91, column: 24, scope: !1975)
!2100 = !DILocation(line: 93, column: 26, scope: !1975)
!2101 = !DILocation(line: 93, column: 15, scope: !1975)
!2102 = !DILocation(line: 93, column: 22, scope: !1975)
!2103 = !DILocation(line: 94, column: 3, scope: !1975)
!2104 = !DILocation(line: 95, column: 1, scope: !1975)
!2105 = distinct !DISubprogram(name: "freebuffer", scope: !250, file: !250, line: 100, type: !1909, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2106)
!2106 = !{!2107}
!2107 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2105, file: !250, line: 100, type: !1911)
!2108 = !DILocation(line: 0, scope: !2105)
!2109 = !DILocation(line: 102, column: 21, scope: !2105)
!2110 = !DILocation(line: 102, column: 3, scope: !2105)
!2111 = !DILocation(line: 103, column: 1, scope: !2105)
!2112 = distinct !DISubprogram(name: "memcasecmp", scope: !254, file: !254, line: 32, type: !2113, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!85, !79, !79, !76}
!2115 = !{!2116, !2117, !2118, !2119, !2120, !2121, !2122, !2126, !2127, !2128, !2130, !2131, !2133}
!2116 = !DILocalVariable(name: "vs1", arg: 1, scope: !2112, file: !254, line: 32, type: !79)
!2117 = !DILocalVariable(name: "vs2", arg: 2, scope: !2112, file: !254, line: 32, type: !79)
!2118 = !DILocalVariable(name: "n", arg: 3, scope: !2112, file: !254, line: 32, type: !76)
!2119 = !DILocalVariable(name: "i", scope: !2112, file: !254, line: 34, type: !76)
!2120 = !DILocalVariable(name: "s1", scope: !2112, file: !254, line: 35, type: !83)
!2121 = !DILocalVariable(name: "s2", scope: !2112, file: !254, line: 36, type: !83)
!2122 = !DILocalVariable(name: "u1", scope: !2123, file: !254, line: 39, type: !87)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !254, line: 38, column: 5)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !254, line: 37, column: 3)
!2125 = distinct !DILexicalBlock(scope: !2112, file: !254, line: 37, column: 3)
!2126 = !DILocalVariable(name: "u2", scope: !2123, file: !254, line: 40, type: !87)
!2127 = !DILocalVariable(name: "U1", scope: !2123, file: !254, line: 41, type: !85)
!2128 = !DILocalVariable(name: "__res", scope: !2129, file: !254, line: 41, type: !85)
!2129 = distinct !DILexicalBlock(scope: !2123, file: !254, line: 41, column: 16)
!2130 = !DILocalVariable(name: "U2", scope: !2123, file: !254, line: 42, type: !85)
!2131 = !DILocalVariable(name: "__res", scope: !2132, file: !254, line: 42, type: !85)
!2132 = distinct !DILexicalBlock(scope: !2123, file: !254, line: 42, column: 16)
!2133 = !DILocalVariable(name: "diff", scope: !2123, file: !254, line: 43, type: !85)
!2134 = !DILocation(line: 0, scope: !2112)
!2135 = !DILocation(line: 37, column: 17, scope: !2124)
!2136 = !DILocation(line: 37, column: 3, scope: !2125)
!2137 = distinct !{!2137, !2136, !2138, !764}
!2138 = !DILocation(line: 47, column: 5, scope: !2125)
!2139 = !DILocation(line: 39, column: 26, scope: !2123)
!2140 = !DILocation(line: 0, scope: !2123)
!2141 = !DILocation(line: 40, column: 26, scope: !2123)
!2142 = !DILocation(line: 41, column: 16, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2129, file: !254, line: 41, column: 16)
!2144 = !DILocation(line: 0, scope: !2129)
!2145 = !DILocation(line: 42, column: 16, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2132, file: !254, line: 42, column: 16)
!2147 = !DILocation(line: 0, scope: !2132)
!2148 = !DILocation(line: 43, column: 45, scope: !2123)
!2149 = !DILocation(line: 45, column: 11, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2123, file: !254, line: 45, column: 11)
!2151 = !DILocation(line: 37, column: 23, scope: !2124)
!2152 = !DILocation(line: 49, column: 1, scope: !2112)
!2153 = distinct !DISubprogram(name: "posix2_version", scope: !257, file: !257, line: 40, type: !2154, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !256, retainedNodes: !2155)
!2154 = !DISubroutineType(types: !255)
!2155 = !{!2156, !2157, !2158, !2161}
!2156 = !DILocalVariable(name: "v", scope: !2153, file: !257, line: 42, type: !817)
!2157 = !DILocalVariable(name: "s", scope: !2153, file: !257, line: 43, type: !83)
!2158 = !DILocalVariable(name: "e", scope: !2159, file: !257, line: 47, type: !81)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !257, line: 46, column: 5)
!2160 = distinct !DILexicalBlock(scope: !2153, file: !257, line: 45, column: 7)
!2161 = !DILocalVariable(name: "i", scope: !2159, file: !257, line: 48, type: !817)
!2162 = !DILocation(line: 0, scope: !2153)
!2163 = !DILocation(line: 43, column: 19, scope: !2153)
!2164 = !DILocation(line: 45, column: 7, scope: !2160)
!2165 = !DILocation(line: 45, column: 9, scope: !2160)
!2166 = !DILocation(line: 45, column: 12, scope: !2160)
!2167 = !DILocation(line: 45, column: 7, scope: !2153)
!2168 = !DILocation(line: 47, column: 7, scope: !2159)
!2169 = !DILocation(line: 0, scope: !2159)
!2170 = !DILocation(line: 48, column: 20, scope: !2159)
!2171 = !DILocation(line: 49, column: 14, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2159, file: !257, line: 49, column: 11)
!2173 = !DILocation(line: 49, column: 13, scope: !2172)
!2174 = !DILocation(line: 51, column: 5, scope: !2160)
!2175 = !DILocation(line: 53, column: 10, scope: !2153)
!2176 = !DILocation(line: 53, column: 3, scope: !2153)
!2177 = distinct !DISubprogram(name: "set_program_name", scope: !182, file: !182, line: 39, type: !734, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2178)
!2178 = !{!2179, !2180, !2181}
!2179 = !DILocalVariable(name: "argv0", arg: 1, scope: !2177, file: !182, line: 39, type: !83)
!2180 = !DILocalVariable(name: "slash", scope: !2177, file: !182, line: 46, type: !83)
!2181 = !DILocalVariable(name: "base", scope: !2177, file: !182, line: 47, type: !83)
!2182 = !DILocation(line: 0, scope: !2177)
!2183 = !DILocation(line: 51, column: 13, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2177, file: !182, line: 51, column: 7)
!2185 = !DILocation(line: 51, column: 7, scope: !2177)
!2186 = !DILocation(line: 55, column: 14, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2184, file: !182, line: 52, column: 5)
!2188 = !DILocation(line: 54, column: 7, scope: !2187)
!2189 = !DILocation(line: 56, column: 7, scope: !2187)
!2190 = !DILocation(line: 59, column: 11, scope: !2177)
!2191 = !DILocation(line: 60, column: 17, scope: !2177)
!2192 = !DILocation(line: 60, column: 11, scope: !2177)
!2193 = !DILocation(line: 61, column: 12, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2177, file: !182, line: 61, column: 7)
!2195 = !DILocation(line: 61, column: 20, scope: !2194)
!2196 = !DILocation(line: 61, column: 25, scope: !2194)
!2197 = !DILocation(line: 61, column: 42, scope: !2194)
!2198 = !DILocation(line: 61, column: 28, scope: !2194)
!2199 = !DILocation(line: 61, column: 61, scope: !2194)
!2200 = !DILocation(line: 61, column: 7, scope: !2177)
!2201 = !DILocation(line: 64, column: 11, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !182, line: 64, column: 11)
!2203 = distinct !DILexicalBlock(scope: !2194, file: !182, line: 62, column: 5)
!2204 = !DILocation(line: 64, column: 36, scope: !2202)
!2205 = !DILocation(line: 64, column: 11, scope: !2203)
!2206 = !DILocation(line: 66, column: 24, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2202, file: !182, line: 65, column: 9)
!2208 = !DILocation(line: 70, column: 41, scope: !2207)
!2209 = !DILocation(line: 72, column: 9, scope: !2207)
!2210 = !DILocation(line: 84, column: 16, scope: !2177)
!2211 = !DILocation(line: 90, column: 27, scope: !2177)
!2212 = !DILocation(line: 92, column: 1, scope: !2177)
!2213 = distinct !DISubprogram(name: "clone_quoting_options", scope: !188, file: !188, line: 122, type: !2214, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2217)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!2216, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!2217 = !{!2218, !2219, !2220}
!2218 = !DILocalVariable(name: "o", arg: 1, scope: !2213, file: !188, line: 122, type: !2216)
!2219 = !DILocalVariable(name: "e", scope: !2213, file: !188, line: 124, type: !85)
!2220 = !DILocalVariable(name: "p", scope: !2213, file: !188, line: 125, type: !2216)
!2221 = !DILocation(line: 0, scope: !2213)
!2222 = !DILocation(line: 124, column: 11, scope: !2213)
!2223 = !DILocation(line: 125, column: 40, scope: !2213)
!2224 = !DILocation(line: 125, column: 31, scope: !2213)
!2225 = !DILocation(line: 127, column: 9, scope: !2213)
!2226 = !DILocation(line: 128, column: 3, scope: !2213)
!2227 = distinct !DISubprogram(name: "get_quoting_style", scope: !188, file: !188, line: 133, type: !2228, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2232)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!35, !2230}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!2232 = !{!2233}
!2233 = !DILocalVariable(name: "o", arg: 1, scope: !2227, file: !188, line: 133, type: !2230)
!2234 = !DILocation(line: 0, scope: !2227)
!2235 = !DILocation(line: 135, column: 11, scope: !2227)
!2236 = !DILocation(line: 135, column: 46, scope: !2227)
!2237 = !{!2238, !712, i64 0}
!2238 = !{!"quoting_options", !712, i64 0, !915, i64 4, !712, i64 8, !711, i64 40, !711, i64 48}
!2239 = !DILocation(line: 135, column: 3, scope: !2227)
!2240 = distinct !DISubprogram(name: "set_quoting_style", scope: !188, file: !188, line: 141, type: !2241, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{null, !2216, !35}
!2243 = !{!2244, !2245}
!2244 = !DILocalVariable(name: "o", arg: 1, scope: !2240, file: !188, line: 141, type: !2216)
!2245 = !DILocalVariable(name: "s", arg: 2, scope: !2240, file: !188, line: 141, type: !35)
!2246 = !DILocation(line: 0, scope: !2240)
!2247 = !DILocation(line: 143, column: 4, scope: !2240)
!2248 = !DILocation(line: 143, column: 39, scope: !2240)
!2249 = !DILocation(line: 143, column: 45, scope: !2240)
!2250 = !DILocation(line: 144, column: 1, scope: !2240)
!2251 = distinct !DISubprogram(name: "set_char_quoting", scope: !188, file: !188, line: 152, type: !2252, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2254)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!85, !2216, !82, !85}
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2261, !2262}
!2255 = !DILocalVariable(name: "o", arg: 1, scope: !2251, file: !188, line: 152, type: !2216)
!2256 = !DILocalVariable(name: "c", arg: 2, scope: !2251, file: !188, line: 152, type: !82)
!2257 = !DILocalVariable(name: "i", arg: 3, scope: !2251, file: !188, line: 152, type: !85)
!2258 = !DILocalVariable(name: "uc", scope: !2251, file: !188, line: 154, type: !87)
!2259 = !DILocalVariable(name: "p", scope: !2251, file: !188, line: 155, type: !2260)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2261 = !DILocalVariable(name: "shift", scope: !2251, file: !188, line: 157, type: !85)
!2262 = !DILocalVariable(name: "r", scope: !2251, file: !188, line: 158, type: !85)
!2263 = !DILocation(line: 0, scope: !2251)
!2264 = !DILocation(line: 156, column: 6, scope: !2251)
!2265 = !DILocation(line: 156, column: 62, scope: !2251)
!2266 = !DILocation(line: 156, column: 57, scope: !2251)
!2267 = !DILocation(line: 157, column: 15, scope: !2251)
!2268 = !DILocation(line: 158, column: 12, scope: !2251)
!2269 = !DILocation(line: 158, column: 15, scope: !2251)
!2270 = !DILocation(line: 158, column: 25, scope: !2251)
!2271 = !DILocation(line: 159, column: 13, scope: !2251)
!2272 = !DILocation(line: 159, column: 18, scope: !2251)
!2273 = !DILocation(line: 159, column: 23, scope: !2251)
!2274 = !DILocation(line: 159, column: 6, scope: !2251)
!2275 = !DILocation(line: 160, column: 3, scope: !2251)
!2276 = distinct !DISubprogram(name: "set_quoting_flags", scope: !188, file: !188, line: 168, type: !2277, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!85, !2216, !85}
!2279 = !{!2280, !2281, !2282}
!2280 = !DILocalVariable(name: "o", arg: 1, scope: !2276, file: !188, line: 168, type: !2216)
!2281 = !DILocalVariable(name: "i", arg: 2, scope: !2276, file: !188, line: 168, type: !85)
!2282 = !DILocalVariable(name: "r", scope: !2276, file: !188, line: 170, type: !85)
!2283 = !DILocation(line: 0, scope: !2276)
!2284 = !DILocation(line: 171, column: 8, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2276, file: !188, line: 171, column: 7)
!2286 = !DILocation(line: 171, column: 7, scope: !2276)
!2287 = !DILocation(line: 173, column: 10, scope: !2276)
!2288 = !{!2238, !915, i64 4}
!2289 = !DILocation(line: 174, column: 12, scope: !2276)
!2290 = !DILocation(line: 175, column: 3, scope: !2276)
!2291 = distinct !DISubprogram(name: "set_custom_quoting", scope: !188, file: !188, line: 179, type: !2292, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{null, !2216, !83, !83}
!2294 = !{!2295, !2296, !2297}
!2295 = !DILocalVariable(name: "o", arg: 1, scope: !2291, file: !188, line: 179, type: !2216)
!2296 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2291, file: !188, line: 180, type: !83)
!2297 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2291, file: !188, line: 180, type: !83)
!2298 = !DILocation(line: 0, scope: !2291)
!2299 = !DILocation(line: 182, column: 8, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2291, file: !188, line: 182, column: 7)
!2301 = !DILocation(line: 182, column: 7, scope: !2291)
!2302 = !DILocation(line: 184, column: 6, scope: !2291)
!2303 = !DILocation(line: 184, column: 12, scope: !2291)
!2304 = !DILocation(line: 185, column: 8, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2291, file: !188, line: 185, column: 7)
!2306 = !DILocation(line: 185, column: 19, scope: !2305)
!2307 = !DILocation(line: 186, column: 5, scope: !2305)
!2308 = !DILocation(line: 187, column: 6, scope: !2291)
!2309 = !DILocation(line: 187, column: 17, scope: !2291)
!2310 = !{!2238, !711, i64 40}
!2311 = !DILocation(line: 188, column: 6, scope: !2291)
!2312 = !DILocation(line: 188, column: 18, scope: !2291)
!2313 = !{!2238, !711, i64 48}
!2314 = !DILocation(line: 189, column: 1, scope: !2291)
!2315 = distinct !DISubprogram(name: "quotearg_buffer", scope: !188, file: !188, line: 784, type: !2316, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!76, !81, !76, !83, !76, !2230}
!2318 = !{!2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326}
!2319 = !DILocalVariable(name: "buffer", arg: 1, scope: !2315, file: !188, line: 784, type: !81)
!2320 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2315, file: !188, line: 784, type: !76)
!2321 = !DILocalVariable(name: "arg", arg: 3, scope: !2315, file: !188, line: 785, type: !83)
!2322 = !DILocalVariable(name: "argsize", arg: 4, scope: !2315, file: !188, line: 785, type: !76)
!2323 = !DILocalVariable(name: "o", arg: 5, scope: !2315, file: !188, line: 786, type: !2230)
!2324 = !DILocalVariable(name: "p", scope: !2315, file: !188, line: 788, type: !2230)
!2325 = !DILocalVariable(name: "e", scope: !2315, file: !188, line: 789, type: !85)
!2326 = !DILocalVariable(name: "r", scope: !2315, file: !188, line: 790, type: !76)
!2327 = !DILocation(line: 0, scope: !2315)
!2328 = !DILocation(line: 788, column: 37, scope: !2315)
!2329 = !DILocation(line: 789, column: 11, scope: !2315)
!2330 = !DILocation(line: 791, column: 43, scope: !2315)
!2331 = !DILocation(line: 791, column: 53, scope: !2315)
!2332 = !DILocation(line: 791, column: 60, scope: !2315)
!2333 = !DILocation(line: 792, column: 43, scope: !2315)
!2334 = !DILocation(line: 792, column: 58, scope: !2315)
!2335 = !DILocation(line: 790, column: 14, scope: !2315)
!2336 = !DILocation(line: 793, column: 9, scope: !2315)
!2337 = !DILocation(line: 794, column: 3, scope: !2315)
!2338 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !188, file: !188, line: 256, type: !2339, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2343)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!76, !81, !76, !83, !76, !35, !85, !2341, !83, !83}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2368, !2369, !2370, !2371, !2372, !2375, !2376, !2392, !2395, !2396, !2403, !2406, !2407, !2408, !2409, !2410, !2411}
!2344 = !DILocalVariable(name: "buffer", arg: 1, scope: !2338, file: !188, line: 256, type: !81)
!2345 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2338, file: !188, line: 256, type: !76)
!2346 = !DILocalVariable(name: "arg", arg: 3, scope: !2338, file: !188, line: 257, type: !83)
!2347 = !DILocalVariable(name: "argsize", arg: 4, scope: !2338, file: !188, line: 257, type: !76)
!2348 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2338, file: !188, line: 258, type: !35)
!2349 = !DILocalVariable(name: "flags", arg: 6, scope: !2338, file: !188, line: 258, type: !85)
!2350 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2338, file: !188, line: 259, type: !2341)
!2351 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2338, file: !188, line: 260, type: !83)
!2352 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2338, file: !188, line: 261, type: !83)
!2353 = !DILocalVariable(name: "i", scope: !2338, file: !188, line: 263, type: !76)
!2354 = !DILocalVariable(name: "len", scope: !2338, file: !188, line: 264, type: !76)
!2355 = !DILocalVariable(name: "orig_buffersize", scope: !2338, file: !188, line: 265, type: !76)
!2356 = !DILocalVariable(name: "quote_string", scope: !2338, file: !188, line: 266, type: !83)
!2357 = !DILocalVariable(name: "quote_string_len", scope: !2338, file: !188, line: 267, type: !76)
!2358 = !DILocalVariable(name: "backslash_escapes", scope: !2338, file: !188, line: 268, type: !97)
!2359 = !DILocalVariable(name: "unibyte_locale", scope: !2338, file: !188, line: 269, type: !97)
!2360 = !DILocalVariable(name: "elide_outer_quotes", scope: !2338, file: !188, line: 270, type: !97)
!2361 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2338, file: !188, line: 271, type: !97)
!2362 = !DILocalVariable(name: "encountered_single_quote", scope: !2338, file: !188, line: 272, type: !97)
!2363 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2338, file: !188, line: 273, type: !97)
!2364 = !DILocalVariable(name: "c", scope: !2365, file: !188, line: 402, type: !87)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !188, line: 401, column: 5)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !188, line: 400, column: 3)
!2367 = distinct !DILexicalBlock(scope: !2338, file: !188, line: 400, column: 3)
!2368 = !DILocalVariable(name: "esc", scope: !2365, file: !188, line: 403, type: !87)
!2369 = !DILocalVariable(name: "is_right_quote", scope: !2365, file: !188, line: 404, type: !97)
!2370 = !DILocalVariable(name: "escaping", scope: !2365, file: !188, line: 405, type: !97)
!2371 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2365, file: !188, line: 406, type: !97)
!2372 = !DILocalVariable(name: "m", scope: !2373, file: !188, line: 610, type: !76)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !188, line: 608, column: 11)
!2374 = distinct !DILexicalBlock(scope: !2365, file: !188, line: 426, column: 9)
!2375 = !DILocalVariable(name: "printable", scope: !2373, file: !188, line: 612, type: !97)
!2376 = !DILocalVariable(name: "mbstate", scope: !2377, file: !188, line: 621, type: !2379)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !188, line: 620, column: 15)
!2378 = distinct !DILexicalBlock(scope: !2373, file: !188, line: 614, column: 17)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2380, line: 6, baseType: !2381)
!2380 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2382, line: 21, baseType: !2383)
!2382 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2382, line: 13, size: 64, elements: !2384)
!2384 = !{!2385, !2386}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2383, file: !2382, line: 15, baseType: !85, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2383, file: !2382, line: 20, baseType: !2387, size: 32, offset: 32)
!2387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2383, file: !2382, line: 16, size: 32, elements: !2388)
!2388 = !{!2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2387, file: !2382, line: 18, baseType: !6, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2387, file: !2382, line: 19, baseType: !2391, size: 32)
!2391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 32, elements: !130)
!2392 = !DILocalVariable(name: "w", scope: !2393, file: !188, line: 631, type: !2394)
!2393 = distinct !DILexicalBlock(scope: !2377, file: !188, line: 630, column: 19)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 74, baseType: !85)
!2395 = !DILocalVariable(name: "bytes", scope: !2393, file: !188, line: 632, type: !76)
!2396 = !DILocalVariable(name: "j", scope: !2397, file: !188, line: 657, type: !76)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !188, line: 656, column: 27)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !188, line: 654, column: 29)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !188, line: 649, column: 23)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !188, line: 641, column: 30)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !188, line: 636, column: 30)
!2402 = distinct !DILexicalBlock(scope: !2393, file: !188, line: 634, column: 25)
!2403 = !DILocalVariable(name: "ilim", scope: !2404, file: !188, line: 684, type: !76)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !188, line: 681, column: 15)
!2405 = distinct !DILexicalBlock(scope: !2373, file: !188, line: 680, column: 17)
!2406 = !DILabel(scope: !2338, name: "process_input", file: !188, line: 314)
!2407 = !DILabel(scope: !2374, name: "c_and_shell_escape", file: !188, line: 512)
!2408 = !DILabel(scope: !2374, name: "c_escape", file: !188, line: 517)
!2409 = !DILabel(scope: !2365, name: "store_escape", file: !188, line: 719)
!2410 = !DILabel(scope: !2365, name: "store_c", file: !188, line: 722)
!2411 = !DILabel(scope: !2338, name: "force_outer_quoting_style", file: !188, line: 763)
!2412 = !DILocation(line: 0, scope: !2338)
!2413 = !DILocation(line: 269, column: 25, scope: !2338)
!2414 = !DILocation(line: 269, column: 36, scope: !2338)
!2415 = !DILocation(line: 270, column: 8, scope: !2338)
!2416 = !DILocation(line: 273, column: 3, scope: !2338)
!2417 = !DILocation(line: 265, column: 10, scope: !2338)
!2418 = !DILocation(line: 266, column: 15, scope: !2338)
!2419 = !DILocation(line: 267, column: 10, scope: !2338)
!2420 = !DILocation(line: 268, column: 8, scope: !2338)
!2421 = !DILocation(line: 271, column: 8, scope: !2338)
!2422 = !DILocation(line: 272, column: 8, scope: !2338)
!2423 = !DILocation(line: 273, column: 8, scope: !2338)
!2424 = !DILocation(line: 314, column: 2, scope: !2338)
!2425 = !DILocation(line: 316, column: 3, scope: !2338)
!2426 = !DILocation(line: 323, column: 11, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2338, file: !188, line: 317, column: 5)
!2428 = !DILocation(line: 323, column: 12, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2427, file: !188, line: 323, column: 11)
!2430 = !DILocation(line: 324, column: 9, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !188, line: 324, column: 9)
!2432 = distinct !DILexicalBlock(scope: !2429, file: !188, line: 324, column: 9)
!2433 = !DILocation(line: 324, column: 9, scope: !2432)
!2434 = !DILocation(line: 362, column: 26, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !188, line: 340, column: 11)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !188, line: 339, column: 13)
!2437 = distinct !DILexicalBlock(scope: !2427, file: !188, line: 338, column: 7)
!2438 = !DILocation(line: 363, column: 27, scope: !2435)
!2439 = !DILocation(line: 364, column: 11, scope: !2435)
!2440 = !DILocation(line: 365, column: 14, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !188, line: 365, column: 13)
!2442 = !DILocation(line: 365, column: 13, scope: !2437)
!2443 = !DILocation(line: 366, column: 43, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !188, line: 366, column: 11)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !188, line: 366, column: 11)
!2446 = !DILocation(line: 366, column: 11, scope: !2445)
!2447 = !DILocation(line: 367, column: 13, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !188, line: 367, column: 13)
!2449 = distinct !DILexicalBlock(scope: !2444, file: !188, line: 367, column: 13)
!2450 = !DILocation(line: 367, column: 13, scope: !2449)
!2451 = !DILocation(line: 366, column: 70, scope: !2444)
!2452 = distinct !{!2452, !2446, !2453, !764}
!2453 = !DILocation(line: 367, column: 13, scope: !2445)
!2454 = !DILocation(line: 264, column: 10, scope: !2338)
!2455 = !DILocation(line: 370, column: 28, scope: !2437)
!2456 = !DILocation(line: 372, column: 7, scope: !2427)
!2457 = !DILocation(line: 376, column: 7, scope: !2427)
!2458 = !DILocation(line: 379, column: 7, scope: !2427)
!2459 = !DILocation(line: 381, column: 12, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2427, file: !188, line: 381, column: 11)
!2461 = !DILocation(line: 381, column: 11, scope: !2427)
!2462 = !DILocation(line: 386, column: 12, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2427, file: !188, line: 386, column: 11)
!2464 = !DILocation(line: 386, column: 11, scope: !2427)
!2465 = !DILocation(line: 387, column: 9, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !188, line: 387, column: 9)
!2467 = distinct !DILexicalBlock(scope: !2463, file: !188, line: 387, column: 9)
!2468 = !DILocation(line: 387, column: 9, scope: !2467)
!2469 = !DILocation(line: 394, column: 7, scope: !2427)
!2470 = !DILocation(line: 397, column: 7, scope: !2427)
!2471 = !DILocation(line: 400, column: 8, scope: !2367)
!2472 = !DILocation(line: 0, scope: !2367)
!2473 = !DILocation(line: 400, column: 27, scope: !2366)
!2474 = !DILocation(line: 400, column: 19, scope: !2366)
!2475 = !DILocation(line: 400, column: 41, scope: !2366)
!2476 = !DILocation(line: 400, column: 48, scope: !2366)
!2477 = !DILocation(line: 400, column: 3, scope: !2367)
!2478 = !DILocation(line: 400, column: 60, scope: !2366)
!2479 = !DILocation(line: 0, scope: !2365)
!2480 = !DILocation(line: 409, column: 11, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2365, file: !188, line: 408, column: 11)
!2482 = !DILocation(line: 411, column: 17, scope: !2481)
!2483 = !DILocation(line: 412, column: 39, scope: !2481)
!2484 = !DILocation(line: 416, column: 32, scope: !2481)
!2485 = !DILocation(line: 412, column: 19, scope: !2481)
!2486 = !DILocation(line: 412, column: 15, scope: !2481)
!2487 = !DILocation(line: 417, column: 11, scope: !2481)
!2488 = !DILocation(line: 417, column: 26, scope: !2481)
!2489 = !DILocation(line: 417, column: 14, scope: !2481)
!2490 = !DILocation(line: 417, column: 63, scope: !2481)
!2491 = !DILocation(line: 408, column: 11, scope: !2365)
!2492 = !DILocation(line: 424, column: 11, scope: !2365)
!2493 = !DILocation(line: 425, column: 7, scope: !2365)
!2494 = !DILocation(line: 428, column: 15, scope: !2374)
!2495 = !DILocation(line: 430, column: 15, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !188, line: 430, column: 15)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !188, line: 429, column: 13)
!2498 = distinct !DILexicalBlock(scope: !2374, file: !188, line: 428, column: 15)
!2499 = !DILocation(line: 430, column: 15, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2496, file: !188, line: 430, column: 15)
!2501 = !DILocation(line: 430, column: 15, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !188, line: 430, column: 15)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !188, line: 430, column: 15)
!2504 = distinct !DILexicalBlock(scope: !2500, file: !188, line: 430, column: 15)
!2505 = !DILocation(line: 430, column: 15, scope: !2503)
!2506 = !DILocation(line: 430, column: 15, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !188, line: 430, column: 15)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !188, line: 430, column: 15)
!2509 = !DILocation(line: 430, column: 15, scope: !2508)
!2510 = !DILocation(line: 430, column: 15, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !188, line: 430, column: 15)
!2512 = distinct !DILexicalBlock(scope: !2504, file: !188, line: 430, column: 15)
!2513 = !DILocation(line: 430, column: 15, scope: !2512)
!2514 = !DILocation(line: 430, column: 15, scope: !2504)
!2515 = !DILocation(line: 430, column: 15, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !188, line: 430, column: 15)
!2517 = distinct !DILexicalBlock(scope: !2496, file: !188, line: 430, column: 15)
!2518 = !DILocation(line: 430, column: 15, scope: !2517)
!2519 = !DILocation(line: 438, column: 19, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2497, file: !188, line: 437, column: 19)
!2521 = !DILocation(line: 438, column: 48, scope: !2520)
!2522 = !DILocation(line: 438, column: 59, scope: !2520)
!2523 = !DILocation(line: 440, column: 19, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !188, line: 440, column: 19)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !188, line: 440, column: 19)
!2526 = distinct !DILexicalBlock(scope: !2520, file: !188, line: 439, column: 17)
!2527 = !DILocation(line: 440, column: 19, scope: !2525)
!2528 = !DILocation(line: 441, column: 19, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !188, line: 441, column: 19)
!2530 = distinct !DILexicalBlock(scope: !2526, file: !188, line: 441, column: 19)
!2531 = !DILocation(line: 441, column: 19, scope: !2530)
!2532 = !DILocation(line: 442, column: 17, scope: !2526)
!2533 = !DILocation(line: 449, column: 20, scope: !2498)
!2534 = !DILocation(line: 454, column: 11, scope: !2374)
!2535 = !DILocation(line: 457, column: 19, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2374, file: !188, line: 455, column: 13)
!2537 = !DILocation(line: 463, column: 19, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2536, file: !188, line: 462, column: 19)
!2539 = !DILocation(line: 463, column: 47, scope: !2538)
!2540 = !DILocation(line: 463, column: 41, scope: !2538)
!2541 = !DILocation(line: 463, column: 52, scope: !2538)
!2542 = !DILocation(line: 462, column: 19, scope: !2536)
!2543 = !DILocation(line: 464, column: 25, scope: !2538)
!2544 = !DILocation(line: 464, column: 17, scope: !2538)
!2545 = !DILocation(line: 471, column: 25, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2538, file: !188, line: 465, column: 19)
!2547 = !DILocation(line: 475, column: 21, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !188, line: 475, column: 21)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !188, line: 475, column: 21)
!2550 = !DILocation(line: 475, column: 21, scope: !2549)
!2551 = !DILocation(line: 476, column: 21, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !188, line: 476, column: 21)
!2553 = distinct !DILexicalBlock(scope: !2546, file: !188, line: 476, column: 21)
!2554 = !DILocation(line: 476, column: 21, scope: !2553)
!2555 = !DILocation(line: 477, column: 21, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !188, line: 477, column: 21)
!2557 = distinct !DILexicalBlock(scope: !2546, file: !188, line: 477, column: 21)
!2558 = !DILocation(line: 477, column: 21, scope: !2557)
!2559 = !DILocation(line: 478, column: 21, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !188, line: 478, column: 21)
!2561 = distinct !DILexicalBlock(scope: !2546, file: !188, line: 478, column: 21)
!2562 = !DILocation(line: 478, column: 21, scope: !2561)
!2563 = !DILocation(line: 479, column: 21, scope: !2546)
!2564 = !DILocation(line: 492, column: 31, scope: !2374)
!2565 = !DILocation(line: 493, column: 31, scope: !2374)
!2566 = !DILocation(line: 495, column: 31, scope: !2374)
!2567 = !DILocation(line: 496, column: 31, scope: !2374)
!2568 = !DILocation(line: 497, column: 31, scope: !2374)
!2569 = !DILocation(line: 500, column: 15, scope: !2374)
!2570 = !DILocation(line: 502, column: 19, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !188, line: 501, column: 13)
!2572 = distinct !DILexicalBlock(scope: !2374, file: !188, line: 500, column: 15)
!2573 = !DILocation(line: 509, column: 33, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2374, file: !188, line: 509, column: 15)
!2575 = !DILocation(line: 0, scope: !2374)
!2576 = !DILocation(line: 512, column: 9, scope: !2374)
!2577 = !DILocation(line: 514, column: 15, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2374, file: !188, line: 513, column: 15)
!2579 = !DILocation(line: 517, column: 9, scope: !2374)
!2580 = !DILocation(line: 518, column: 15, scope: !2374)
!2581 = !DILocation(line: 526, column: 15, scope: !2374)
!2582 = !DILocation(line: 526, column: 40, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2374, file: !188, line: 526, column: 15)
!2584 = !DILocation(line: 526, column: 47, scope: !2583)
!2585 = !DILocation(line: 526, column: 18, scope: !2583)
!2586 = !DILocation(line: 530, column: 17, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2374, file: !188, line: 530, column: 15)
!2588 = !DILocation(line: 530, column: 15, scope: !2374)
!2589 = !DILocation(line: 535, column: 11, scope: !2374)
!2590 = !DILocation(line: 549, column: 15, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2374, file: !188, line: 548, column: 15)
!2592 = !DILocation(line: 556, column: 15, scope: !2374)
!2593 = !DILocation(line: 558, column: 19, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !188, line: 557, column: 13)
!2595 = distinct !DILexicalBlock(scope: !2374, file: !188, line: 556, column: 15)
!2596 = !DILocation(line: 561, column: 19, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2594, file: !188, line: 561, column: 19)
!2598 = !DILocation(line: 561, column: 30, scope: !2597)
!2599 = !DILocation(line: 570, column: 15, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !188, line: 570, column: 15)
!2601 = distinct !DILexicalBlock(scope: !2594, file: !188, line: 570, column: 15)
!2602 = !DILocation(line: 570, column: 15, scope: !2601)
!2603 = !DILocation(line: 571, column: 15, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !188, line: 571, column: 15)
!2605 = distinct !DILexicalBlock(scope: !2594, file: !188, line: 571, column: 15)
!2606 = !DILocation(line: 571, column: 15, scope: !2605)
!2607 = !DILocation(line: 572, column: 15, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !188, line: 572, column: 15)
!2609 = distinct !DILexicalBlock(scope: !2594, file: !188, line: 572, column: 15)
!2610 = !DILocation(line: 572, column: 15, scope: !2609)
!2611 = !DILocation(line: 574, column: 13, scope: !2594)
!2612 = !DILocation(line: 614, column: 17, scope: !2373)
!2613 = !DILocation(line: 0, scope: !2373)
!2614 = !DILocation(line: 617, column: 29, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2378, file: !188, line: 615, column: 15)
!2616 = !DILocation(line: 617, column: 27, scope: !2615)
!2617 = !DILocation(line: 678, column: 40, scope: !2373)
!2618 = !DILocation(line: 680, column: 23, scope: !2405)
!2619 = !DILocation(line: 621, column: 17, scope: !2377)
!2620 = !DILocation(line: 621, column: 27, scope: !2377)
!2621 = !DILocalVariable(name: "__dest", arg: 1, scope: !2622, file: !1923, line: 57, type: !74)
!2622 = distinct !DISubprogram(name: "memset", scope: !1923, file: !1923, line: 57, type: !1924, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2623)
!2623 = !{!2621, !2624, !2625}
!2624 = !DILocalVariable(name: "__ch", arg: 2, scope: !2622, file: !1923, line: 57, type: !85)
!2625 = !DILocalVariable(name: "__len", arg: 3, scope: !2622, file: !1923, line: 57, type: !76)
!2626 = !DILocation(line: 0, scope: !2622, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 622, column: 17, scope: !2377)
!2628 = !DILocation(line: 59, column: 10, scope: !2622, inlinedAt: !2627)
!2629 = !DILocation(line: 626, column: 29, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2377, file: !188, line: 626, column: 21)
!2631 = !DILocation(line: 626, column: 21, scope: !2377)
!2632 = !DILocation(line: 627, column: 29, scope: !2630)
!2633 = !DILocation(line: 627, column: 19, scope: !2630)
!2634 = !DILocation(line: 629, column: 17, scope: !2377)
!2635 = !DILocation(line: 624, column: 19, scope: !2377)
!2636 = !DILocation(line: 625, column: 27, scope: !2377)
!2637 = !DILocation(line: 631, column: 21, scope: !2393)
!2638 = !DILocation(line: 632, column: 56, scope: !2393)
!2639 = !DILocation(line: 632, column: 50, scope: !2393)
!2640 = !DILocation(line: 633, column: 53, scope: !2393)
!2641 = !DILocation(line: 0, scope: !2393)
!2642 = !DILocation(line: 632, column: 36, scope: !2393)
!2643 = !DILocation(line: 634, column: 25, scope: !2393)
!2644 = !DILocation(line: 644, column: 38, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2400, file: !188, line: 642, column: 23)
!2646 = !DILocation(line: 644, column: 48, scope: !2645)
!2647 = !DILocation(line: 644, column: 25, scope: !2645)
!2648 = !DILocation(line: 644, column: 51, scope: !2645)
!2649 = !DILocation(line: 645, column: 28, scope: !2645)
!2650 = !DILocation(line: 644, column: 34, scope: !2645)
!2651 = distinct !{!2651, !2647, !2649, !764}
!2652 = !DILocation(line: 655, column: 29, scope: !2398)
!2653 = !DILocation(line: 0, scope: !2397)
!2654 = !DILocation(line: 659, column: 49, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !188, line: 658, column: 29)
!2656 = distinct !DILexicalBlock(scope: !2397, file: !188, line: 658, column: 29)
!2657 = !DILocation(line: 659, column: 39, scope: !2655)
!2658 = !DILocation(line: 659, column: 31, scope: !2655)
!2659 = !DILocation(line: 658, column: 53, scope: !2655)
!2660 = !DILocation(line: 658, column: 43, scope: !2655)
!2661 = !DILocation(line: 658, column: 29, scope: !2656)
!2662 = distinct !{!2662, !2661, !2663, !764}
!2663 = !DILocation(line: 667, column: 33, scope: !2656)
!2664 = !DILocation(line: 674, column: 19, scope: !2377)
!2665 = !DILocation(line: 670, column: 41, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2399, file: !188, line: 670, column: 29)
!2667 = !DILocation(line: 670, column: 31, scope: !2666)
!2668 = !DILocation(line: 670, column: 29, scope: !2399)
!2669 = !DILocation(line: 672, column: 27, scope: !2399)
!2670 = !DILocation(line: 675, column: 26, scope: !2377)
!2671 = !DILocation(line: 675, column: 24, scope: !2377)
!2672 = !DILocation(line: 674, column: 19, scope: !2393)
!2673 = distinct !{!2673, !2634, !2674, !764}
!2674 = !DILocation(line: 675, column: 44, scope: !2377)
!2675 = !DILocation(line: 676, column: 15, scope: !2378)
!2676 = !DILocation(line: 680, column: 19, scope: !2405)
!2677 = !DILocation(line: 680, column: 45, scope: !2405)
!2678 = !DILocation(line: 684, column: 33, scope: !2404)
!2679 = !DILocation(line: 0, scope: !2404)
!2680 = !DILocation(line: 686, column: 17, scope: !2404)
!2681 = !DILocation(line: 405, column: 12, scope: !2365)
!2682 = !DILocation(line: 688, column: 43, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !188, line: 688, column: 25)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !188, line: 687, column: 19)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !188, line: 686, column: 17)
!2686 = distinct !DILexicalBlock(scope: !2404, file: !188, line: 686, column: 17)
!2687 = !DILocation(line: 690, column: 25, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !188, line: 690, column: 25)
!2689 = distinct !DILexicalBlock(scope: !2683, file: !188, line: 689, column: 23)
!2690 = !DILocation(line: 690, column: 25, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2688, file: !188, line: 690, column: 25)
!2692 = !DILocation(line: 690, column: 25, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !188, line: 690, column: 25)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !188, line: 690, column: 25)
!2695 = distinct !DILexicalBlock(scope: !2691, file: !188, line: 690, column: 25)
!2696 = !DILocation(line: 690, column: 25, scope: !2694)
!2697 = !DILocation(line: 690, column: 25, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !188, line: 690, column: 25)
!2699 = distinct !DILexicalBlock(scope: !2695, file: !188, line: 690, column: 25)
!2700 = !DILocation(line: 690, column: 25, scope: !2699)
!2701 = !DILocation(line: 690, column: 25, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !188, line: 690, column: 25)
!2703 = distinct !DILexicalBlock(scope: !2695, file: !188, line: 690, column: 25)
!2704 = !DILocation(line: 690, column: 25, scope: !2703)
!2705 = !DILocation(line: 690, column: 25, scope: !2695)
!2706 = !DILocation(line: 690, column: 25, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !188, line: 690, column: 25)
!2708 = distinct !DILexicalBlock(scope: !2688, file: !188, line: 690, column: 25)
!2709 = !DILocation(line: 690, column: 25, scope: !2708)
!2710 = !DILocation(line: 691, column: 25, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !188, line: 691, column: 25)
!2712 = distinct !DILexicalBlock(scope: !2689, file: !188, line: 691, column: 25)
!2713 = !DILocation(line: 691, column: 25, scope: !2712)
!2714 = !DILocation(line: 692, column: 25, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !188, line: 692, column: 25)
!2716 = distinct !DILexicalBlock(scope: !2689, file: !188, line: 692, column: 25)
!2717 = !DILocation(line: 692, column: 25, scope: !2716)
!2718 = !DILocation(line: 693, column: 38, scope: !2689)
!2719 = !DILocation(line: 693, column: 33, scope: !2689)
!2720 = !DILocation(line: 694, column: 23, scope: !2689)
!2721 = !DILocation(line: 695, column: 30, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2683, file: !188, line: 695, column: 30)
!2723 = !DILocation(line: 695, column: 30, scope: !2683)
!2724 = !DILocation(line: 697, column: 25, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !188, line: 697, column: 25)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !188, line: 697, column: 25)
!2727 = distinct !DILexicalBlock(scope: !2722, file: !188, line: 696, column: 23)
!2728 = !DILocation(line: 697, column: 25, scope: !2726)
!2729 = !DILocation(line: 699, column: 23, scope: !2727)
!2730 = !DILocation(line: 700, column: 35, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2684, file: !188, line: 700, column: 25)
!2732 = !DILocation(line: 700, column: 30, scope: !2731)
!2733 = !DILocation(line: 700, column: 25, scope: !2684)
!2734 = !DILocation(line: 702, column: 21, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !188, line: 702, column: 21)
!2736 = distinct !DILexicalBlock(scope: !2684, file: !188, line: 702, column: 21)
!2737 = !DILocation(line: 702, column: 21, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !188, line: 702, column: 21)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !188, line: 702, column: 21)
!2740 = distinct !DILexicalBlock(scope: !2735, file: !188, line: 702, column: 21)
!2741 = !DILocation(line: 702, column: 21, scope: !2739)
!2742 = !DILocation(line: 702, column: 21, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !188, line: 702, column: 21)
!2744 = distinct !DILexicalBlock(scope: !2740, file: !188, line: 702, column: 21)
!2745 = !DILocation(line: 702, column: 21, scope: !2744)
!2746 = !DILocation(line: 702, column: 21, scope: !2740)
!2747 = !DILocation(line: 0, scope: !2684)
!2748 = !DILocation(line: 703, column: 21, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !188, line: 703, column: 21)
!2750 = distinct !DILexicalBlock(scope: !2684, file: !188, line: 703, column: 21)
!2751 = !DILocation(line: 703, column: 21, scope: !2750)
!2752 = !DILocation(line: 704, column: 25, scope: !2684)
!2753 = !DILocation(line: 686, column: 17, scope: !2685)
!2754 = distinct !{!2754, !2755, !2756}
!2755 = !DILocation(line: 686, column: 17, scope: !2686)
!2756 = !DILocation(line: 705, column: 19, scope: !2686)
!2757 = !DILocation(line: 416, column: 30, scope: !2481)
!2758 = !DILocation(line: 712, column: 34, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2365, file: !188, line: 712, column: 11)
!2760 = !DILocation(line: 715, column: 35, scope: !2759)
!2761 = !DILocation(line: 715, column: 17, scope: !2759)
!2762 = !DILocation(line: 715, column: 47, scope: !2759)
!2763 = !DILocation(line: 715, column: 65, scope: !2759)
!2764 = !DILocation(line: 716, column: 11, scope: !2759)
!2765 = !DILocation(line: 712, column: 11, scope: !2365)
!2766 = !DILocation(line: 400, column: 10, scope: !2367)
!2767 = !DILocation(line: 719, column: 5, scope: !2365)
!2768 = !DILocation(line: 720, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2365, file: !188, line: 720, column: 7)
!2770 = !DILocation(line: 720, column: 7, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2769, file: !188, line: 720, column: 7)
!2772 = !DILocation(line: 720, column: 7, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !188, line: 720, column: 7)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !188, line: 720, column: 7)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !188, line: 720, column: 7)
!2776 = !DILocation(line: 720, column: 7, scope: !2774)
!2777 = !DILocation(line: 720, column: 7, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !188, line: 720, column: 7)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !188, line: 720, column: 7)
!2780 = !DILocation(line: 720, column: 7, scope: !2779)
!2781 = !DILocation(line: 720, column: 7, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !188, line: 720, column: 7)
!2783 = distinct !DILexicalBlock(scope: !2775, file: !188, line: 720, column: 7)
!2784 = !DILocation(line: 720, column: 7, scope: !2783)
!2785 = !DILocation(line: 720, column: 7, scope: !2775)
!2786 = !DILocation(line: 720, column: 7, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !188, line: 720, column: 7)
!2788 = distinct !DILexicalBlock(scope: !2769, file: !188, line: 720, column: 7)
!2789 = !DILocation(line: 720, column: 7, scope: !2788)
!2790 = !DILocation(line: 722, column: 5, scope: !2365)
!2791 = !DILocation(line: 723, column: 7, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !188, line: 723, column: 7)
!2793 = distinct !DILexicalBlock(scope: !2365, file: !188, line: 723, column: 7)
!2794 = !DILocation(line: 424, column: 9, scope: !2365)
!2795 = !DILocation(line: 723, column: 7, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !188, line: 723, column: 7)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !188, line: 723, column: 7)
!2798 = distinct !DILexicalBlock(scope: !2792, file: !188, line: 723, column: 7)
!2799 = !DILocation(line: 723, column: 7, scope: !2797)
!2800 = !DILocation(line: 723, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !188, line: 723, column: 7)
!2802 = distinct !DILexicalBlock(scope: !2798, file: !188, line: 723, column: 7)
!2803 = !DILocation(line: 723, column: 7, scope: !2802)
!2804 = !DILocation(line: 723, column: 7, scope: !2798)
!2805 = !DILocation(line: 724, column: 7, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !188, line: 724, column: 7)
!2807 = distinct !DILexicalBlock(scope: !2365, file: !188, line: 724, column: 7)
!2808 = !DILocation(line: 724, column: 7, scope: !2807)
!2809 = !DILocation(line: 726, column: 13, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2365, file: !188, line: 726, column: 11)
!2811 = !DILocation(line: 726, column: 11, scope: !2365)
!2812 = !DILocation(line: 728, column: 5, scope: !2366)
!2813 = !DILocation(line: 400, column: 75, scope: !2366)
!2814 = !DILocation(line: 400, column: 3, scope: !2366)
!2815 = distinct !{!2815, !2477, !2816, !764}
!2816 = !DILocation(line: 728, column: 5, scope: !2367)
!2817 = !DILocation(line: 730, column: 11, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2338, file: !188, line: 730, column: 7)
!2819 = !DILocation(line: 730, column: 16, scope: !2818)
!2820 = !DILocation(line: 738, column: 51, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2338, file: !188, line: 738, column: 7)
!2822 = !DILocation(line: 741, column: 11, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !188, line: 741, column: 11)
!2824 = distinct !DILexicalBlock(scope: !2821, file: !188, line: 740, column: 5)
!2825 = !DILocation(line: 741, column: 11, scope: !2824)
!2826 = !DILocation(line: 742, column: 16, scope: !2823)
!2827 = !DILocation(line: 742, column: 9, scope: !2823)
!2828 = !DILocation(line: 746, column: 18, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2823, file: !188, line: 746, column: 16)
!2830 = !DILocation(line: 746, column: 29, scope: !2829)
!2831 = !DILocation(line: 755, column: 7, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2338, file: !188, line: 755, column: 7)
!2833 = !DILocation(line: 755, column: 20, scope: !2832)
!2834 = !DILocation(line: 756, column: 12, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !188, line: 756, column: 5)
!2836 = distinct !DILexicalBlock(scope: !2832, file: !188, line: 756, column: 5)
!2837 = !DILocation(line: 756, column: 5, scope: !2836)
!2838 = !DILocation(line: 757, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !188, line: 757, column: 7)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !188, line: 757, column: 7)
!2841 = !DILocation(line: 757, column: 7, scope: !2840)
!2842 = !DILocation(line: 756, column: 39, scope: !2835)
!2843 = distinct !{!2843, !2837, !2844, !764}
!2844 = !DILocation(line: 757, column: 7, scope: !2836)
!2845 = !DILocation(line: 759, column: 11, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2338, file: !188, line: 759, column: 7)
!2847 = !DILocation(line: 759, column: 7, scope: !2338)
!2848 = !DILocation(line: 760, column: 5, scope: !2846)
!2849 = !DILocation(line: 760, column: 17, scope: !2846)
!2850 = !DILocation(line: 763, column: 2, scope: !2338)
!2851 = !DILocation(line: 766, column: 51, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2338, file: !188, line: 766, column: 7)
!2853 = !DILocation(line: 766, column: 21, scope: !2852)
!2854 = !DILocation(line: 770, column: 42, scope: !2338)
!2855 = !DILocation(line: 768, column: 10, scope: !2338)
!2856 = !DILocation(line: 768, column: 3, scope: !2338)
!2857 = !DILocation(line: 772, column: 1, scope: !2338)
!2858 = distinct !DISubprogram(name: "gettext_quote", scope: !188, file: !188, line: 207, type: !2859, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!83, !83, !35}
!2861 = !{!2862, !2863, !2864, !2865}
!2862 = !DILocalVariable(name: "msgid", arg: 1, scope: !2858, file: !188, line: 207, type: !83)
!2863 = !DILocalVariable(name: "s", arg: 2, scope: !2858, file: !188, line: 207, type: !35)
!2864 = !DILocalVariable(name: "translation", scope: !2858, file: !188, line: 209, type: !83)
!2865 = !DILocalVariable(name: "locale_code", scope: !2858, file: !188, line: 210, type: !83)
!2866 = !DILocation(line: 0, scope: !2858)
!2867 = !DILocation(line: 209, column: 29, scope: !2858)
!2868 = !DILocation(line: 212, column: 19, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2858, file: !188, line: 212, column: 7)
!2870 = !DILocation(line: 212, column: 7, scope: !2858)
!2871 = !DILocation(line: 233, column: 17, scope: !2858)
!2872 = !DILocalVariable(name: "s1", arg: 1, scope: !2873, file: !2874, line: 160, type: !83)
!2873 = distinct !DISubprogram(name: "strcaseeq0", scope: !2874, file: !2874, line: 160, type: !2875, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2877)
!2874 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!85, !83, !83, !82, !82, !82, !82, !82, !82, !82, !82, !82}
!2877 = !{!2872, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887}
!2878 = !DILocalVariable(name: "s2", arg: 2, scope: !2873, file: !2874, line: 160, type: !83)
!2879 = !DILocalVariable(name: "s20", arg: 3, scope: !2873, file: !2874, line: 160, type: !82)
!2880 = !DILocalVariable(name: "s21", arg: 4, scope: !2873, file: !2874, line: 160, type: !82)
!2881 = !DILocalVariable(name: "s22", arg: 5, scope: !2873, file: !2874, line: 160, type: !82)
!2882 = !DILocalVariable(name: "s23", arg: 6, scope: !2873, file: !2874, line: 160, type: !82)
!2883 = !DILocalVariable(name: "s24", arg: 7, scope: !2873, file: !2874, line: 160, type: !82)
!2884 = !DILocalVariable(name: "s25", arg: 8, scope: !2873, file: !2874, line: 160, type: !82)
!2885 = !DILocalVariable(name: "s26", arg: 9, scope: !2873, file: !2874, line: 160, type: !82)
!2886 = !DILocalVariable(name: "s27", arg: 10, scope: !2873, file: !2874, line: 160, type: !82)
!2887 = !DILocalVariable(name: "s28", arg: 11, scope: !2873, file: !2874, line: 160, type: !82)
!2888 = !DILocation(line: 0, scope: !2873, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 234, column: 7, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2858, file: !188, line: 234, column: 7)
!2891 = !DILocation(line: 162, column: 7, scope: !2892, inlinedAt: !2889)
!2892 = distinct !DILexicalBlock(scope: !2873, file: !2874, line: 162, column: 7)
!2893 = !DILocalVariable(name: "s1", arg: 1, scope: !2894, file: !2874, line: 146, type: !83)
!2894 = distinct !DISubprogram(name: "strcaseeq1", scope: !2874, file: !2874, line: 146, type: !2895, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!85, !83, !83, !82, !82, !82, !82, !82, !82, !82, !82}
!2897 = !{!2893, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906}
!2898 = !DILocalVariable(name: "s2", arg: 2, scope: !2894, file: !2874, line: 146, type: !83)
!2899 = !DILocalVariable(name: "s21", arg: 3, scope: !2894, file: !2874, line: 146, type: !82)
!2900 = !DILocalVariable(name: "s22", arg: 4, scope: !2894, file: !2874, line: 146, type: !82)
!2901 = !DILocalVariable(name: "s23", arg: 5, scope: !2894, file: !2874, line: 146, type: !82)
!2902 = !DILocalVariable(name: "s24", arg: 6, scope: !2894, file: !2874, line: 146, type: !82)
!2903 = !DILocalVariable(name: "s25", arg: 7, scope: !2894, file: !2874, line: 146, type: !82)
!2904 = !DILocalVariable(name: "s26", arg: 8, scope: !2894, file: !2874, line: 146, type: !82)
!2905 = !DILocalVariable(name: "s27", arg: 9, scope: !2894, file: !2874, line: 146, type: !82)
!2906 = !DILocalVariable(name: "s28", arg: 10, scope: !2894, file: !2874, line: 146, type: !82)
!2907 = !DILocation(line: 0, scope: !2894, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 167, column: 16, scope: !2909, inlinedAt: !2889)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !2874, line: 164, column: 11)
!2910 = distinct !DILexicalBlock(scope: !2892, file: !2874, line: 163, column: 5)
!2911 = !DILocation(line: 148, column: 7, scope: !2912, inlinedAt: !2908)
!2912 = distinct !DILexicalBlock(scope: !2894, file: !2874, line: 148, column: 7)
!2913 = !DILocalVariable(name: "s1", arg: 1, scope: !2914, file: !2874, line: 132, type: !83)
!2914 = distinct !DISubprogram(name: "strcaseeq2", scope: !2874, file: !2874, line: 132, type: !2915, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!85, !83, !83, !82, !82, !82, !82, !82, !82, !82}
!2917 = !{!2913, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925}
!2918 = !DILocalVariable(name: "s2", arg: 2, scope: !2914, file: !2874, line: 132, type: !83)
!2919 = !DILocalVariable(name: "s22", arg: 3, scope: !2914, file: !2874, line: 132, type: !82)
!2920 = !DILocalVariable(name: "s23", arg: 4, scope: !2914, file: !2874, line: 132, type: !82)
!2921 = !DILocalVariable(name: "s24", arg: 5, scope: !2914, file: !2874, line: 132, type: !82)
!2922 = !DILocalVariable(name: "s25", arg: 6, scope: !2914, file: !2874, line: 132, type: !82)
!2923 = !DILocalVariable(name: "s26", arg: 7, scope: !2914, file: !2874, line: 132, type: !82)
!2924 = !DILocalVariable(name: "s27", arg: 8, scope: !2914, file: !2874, line: 132, type: !82)
!2925 = !DILocalVariable(name: "s28", arg: 9, scope: !2914, file: !2874, line: 132, type: !82)
!2926 = !DILocation(line: 0, scope: !2914, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 153, column: 16, scope: !2928, inlinedAt: !2908)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !2874, line: 150, column: 11)
!2929 = distinct !DILexicalBlock(scope: !2912, file: !2874, line: 149, column: 5)
!2930 = !DILocation(line: 134, column: 7, scope: !2931, inlinedAt: !2927)
!2931 = distinct !DILexicalBlock(scope: !2914, file: !2874, line: 134, column: 7)
!2932 = !DILocalVariable(name: "s1", arg: 1, scope: !2933, file: !2874, line: 118, type: !83)
!2933 = distinct !DISubprogram(name: "strcaseeq3", scope: !2874, file: !2874, line: 118, type: !2934, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!85, !83, !83, !82, !82, !82, !82, !82, !82}
!2936 = !{!2932, !2937, !2938, !2939, !2940, !2941, !2942, !2943}
!2937 = !DILocalVariable(name: "s2", arg: 2, scope: !2933, file: !2874, line: 118, type: !83)
!2938 = !DILocalVariable(name: "s23", arg: 3, scope: !2933, file: !2874, line: 118, type: !82)
!2939 = !DILocalVariable(name: "s24", arg: 4, scope: !2933, file: !2874, line: 118, type: !82)
!2940 = !DILocalVariable(name: "s25", arg: 5, scope: !2933, file: !2874, line: 118, type: !82)
!2941 = !DILocalVariable(name: "s26", arg: 6, scope: !2933, file: !2874, line: 118, type: !82)
!2942 = !DILocalVariable(name: "s27", arg: 7, scope: !2933, file: !2874, line: 118, type: !82)
!2943 = !DILocalVariable(name: "s28", arg: 8, scope: !2933, file: !2874, line: 118, type: !82)
!2944 = !DILocation(line: 0, scope: !2933, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 139, column: 16, scope: !2946, inlinedAt: !2927)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !2874, line: 136, column: 11)
!2947 = distinct !DILexicalBlock(scope: !2931, file: !2874, line: 135, column: 5)
!2948 = !DILocation(line: 120, column: 7, scope: !2949, inlinedAt: !2945)
!2949 = distinct !DILexicalBlock(scope: !2933, file: !2874, line: 120, column: 7)
!2950 = !DILocation(line: 120, column: 7, scope: !2933, inlinedAt: !2945)
!2951 = !DILocalVariable(name: "s1", arg: 1, scope: !2952, file: !2874, line: 104, type: !83)
!2952 = distinct !DISubprogram(name: "strcaseeq4", scope: !2874, file: !2874, line: 104, type: !2953, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!85, !83, !83, !82, !82, !82, !82, !82}
!2955 = !{!2951, !2956, !2957, !2958, !2959, !2960, !2961}
!2956 = !DILocalVariable(name: "s2", arg: 2, scope: !2952, file: !2874, line: 104, type: !83)
!2957 = !DILocalVariable(name: "s24", arg: 3, scope: !2952, file: !2874, line: 104, type: !82)
!2958 = !DILocalVariable(name: "s25", arg: 4, scope: !2952, file: !2874, line: 104, type: !82)
!2959 = !DILocalVariable(name: "s26", arg: 5, scope: !2952, file: !2874, line: 104, type: !82)
!2960 = !DILocalVariable(name: "s27", arg: 6, scope: !2952, file: !2874, line: 104, type: !82)
!2961 = !DILocalVariable(name: "s28", arg: 7, scope: !2952, file: !2874, line: 104, type: !82)
!2962 = !DILocation(line: 0, scope: !2952, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 125, column: 16, scope: !2964, inlinedAt: !2945)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !2874, line: 122, column: 11)
!2965 = distinct !DILexicalBlock(scope: !2949, file: !2874, line: 121, column: 5)
!2966 = !DILocation(line: 106, column: 7, scope: !2967, inlinedAt: !2963)
!2967 = distinct !DILexicalBlock(scope: !2952, file: !2874, line: 106, column: 7)
!2968 = !DILocation(line: 106, column: 7, scope: !2952, inlinedAt: !2963)
!2969 = !DILocalVariable(name: "s1", arg: 1, scope: !2970, file: !2874, line: 90, type: !83)
!2970 = distinct !DISubprogram(name: "strcaseeq5", scope: !2874, file: !2874, line: 90, type: !2971, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!85, !83, !83, !82, !82, !82, !82}
!2973 = !{!2969, !2974, !2975, !2976, !2977, !2978}
!2974 = !DILocalVariable(name: "s2", arg: 2, scope: !2970, file: !2874, line: 90, type: !83)
!2975 = !DILocalVariable(name: "s25", arg: 3, scope: !2970, file: !2874, line: 90, type: !82)
!2976 = !DILocalVariable(name: "s26", arg: 4, scope: !2970, file: !2874, line: 90, type: !82)
!2977 = !DILocalVariable(name: "s27", arg: 5, scope: !2970, file: !2874, line: 90, type: !82)
!2978 = !DILocalVariable(name: "s28", arg: 6, scope: !2970, file: !2874, line: 90, type: !82)
!2979 = !DILocation(line: 0, scope: !2970, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 111, column: 16, scope: !2981, inlinedAt: !2963)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !2874, line: 108, column: 11)
!2982 = distinct !DILexicalBlock(scope: !2967, file: !2874, line: 107, column: 5)
!2983 = !DILocation(line: 92, column: 7, scope: !2984, inlinedAt: !2980)
!2984 = distinct !DILexicalBlock(scope: !2970, file: !2874, line: 92, column: 7)
!2985 = !DILocation(line: 92, column: 7, scope: !2970, inlinedAt: !2980)
!2986 = !DILocation(line: 235, column: 12, scope: !2890)
!2987 = !DILocation(line: 235, column: 21, scope: !2890)
!2988 = !DILocation(line: 235, column: 5, scope: !2890)
!2989 = !DILocation(line: 0, scope: !2894, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 167, column: 16, scope: !2909, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 236, column: 7, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2858, file: !188, line: 236, column: 7)
!2993 = !DILocation(line: 148, column: 7, scope: !2912, inlinedAt: !2990)
!2994 = !DILocation(line: 0, scope: !2914, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 153, column: 16, scope: !2928, inlinedAt: !2990)
!2996 = !DILocation(line: 134, column: 7, scope: !2931, inlinedAt: !2995)
!2997 = !DILocation(line: 134, column: 7, scope: !2914, inlinedAt: !2995)
!2998 = !DILocation(line: 0, scope: !2933, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 139, column: 16, scope: !2946, inlinedAt: !2995)
!3000 = !DILocation(line: 120, column: 7, scope: !2949, inlinedAt: !2999)
!3001 = !DILocation(line: 120, column: 7, scope: !2933, inlinedAt: !2999)
!3002 = !DILocation(line: 0, scope: !2952, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 125, column: 16, scope: !2964, inlinedAt: !2999)
!3004 = !DILocation(line: 106, column: 7, scope: !2967, inlinedAt: !3003)
!3005 = !DILocation(line: 106, column: 7, scope: !2952, inlinedAt: !3003)
!3006 = !DILocation(line: 0, scope: !2970, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 111, column: 16, scope: !2981, inlinedAt: !3003)
!3008 = !DILocation(line: 92, column: 7, scope: !2984, inlinedAt: !3007)
!3009 = !DILocation(line: 92, column: 7, scope: !2970, inlinedAt: !3007)
!3010 = !DILocalVariable(name: "s1", arg: 1, scope: !3011, file: !2874, line: 76, type: !83)
!3011 = distinct !DISubprogram(name: "strcaseeq6", scope: !2874, file: !2874, line: 76, type: !3012, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!85, !83, !83, !82, !82, !82}
!3014 = !{!3010, !3015, !3016, !3017, !3018}
!3015 = !DILocalVariable(name: "s2", arg: 2, scope: !3011, file: !2874, line: 76, type: !83)
!3016 = !DILocalVariable(name: "s26", arg: 3, scope: !3011, file: !2874, line: 76, type: !82)
!3017 = !DILocalVariable(name: "s27", arg: 4, scope: !3011, file: !2874, line: 76, type: !82)
!3018 = !DILocalVariable(name: "s28", arg: 5, scope: !3011, file: !2874, line: 76, type: !82)
!3019 = !DILocation(line: 0, scope: !3011, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 97, column: 16, scope: !3021, inlinedAt: !3007)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !2874, line: 94, column: 11)
!3022 = distinct !DILexicalBlock(scope: !2984, file: !2874, line: 93, column: 5)
!3023 = !DILocation(line: 78, column: 7, scope: !3024, inlinedAt: !3020)
!3024 = distinct !DILexicalBlock(scope: !3011, file: !2874, line: 78, column: 7)
!3025 = !DILocation(line: 78, column: 7, scope: !3011, inlinedAt: !3020)
!3026 = !DILocalVariable(name: "s1", arg: 1, scope: !3027, file: !2874, line: 62, type: !83)
!3027 = distinct !DISubprogram(name: "strcaseeq7", scope: !2874, file: !2874, line: 62, type: !3028, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!85, !83, !83, !82, !82}
!3030 = !{!3026, !3031, !3032, !3033}
!3031 = !DILocalVariable(name: "s2", arg: 2, scope: !3027, file: !2874, line: 62, type: !83)
!3032 = !DILocalVariable(name: "s27", arg: 3, scope: !3027, file: !2874, line: 62, type: !82)
!3033 = !DILocalVariable(name: "s28", arg: 4, scope: !3027, file: !2874, line: 62, type: !82)
!3034 = !DILocation(line: 0, scope: !3027, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 83, column: 16, scope: !3036, inlinedAt: !3020)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !2874, line: 80, column: 11)
!3037 = distinct !DILexicalBlock(scope: !3024, file: !2874, line: 79, column: 5)
!3038 = !DILocation(line: 64, column: 7, scope: !3039, inlinedAt: !3035)
!3039 = distinct !DILexicalBlock(scope: !3027, file: !2874, line: 64, column: 7)
!3040 = !DILocation(line: 236, column: 7, scope: !2858)
!3041 = !DILocation(line: 237, column: 12, scope: !2992)
!3042 = !DILocation(line: 237, column: 21, scope: !2992)
!3043 = !DILocation(line: 237, column: 5, scope: !2992)
!3044 = !DILocation(line: 239, column: 13, scope: !2858)
!3045 = !DILocation(line: 239, column: 11, scope: !2858)
!3046 = !DILocation(line: 239, column: 3, scope: !2858)
!3047 = !DILocation(line: 240, column: 1, scope: !2858)
!3048 = !DISubprogram(name: "iswprint", scope: !3049, file: !3049, line: 120, type: !3050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!3049 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!85, !6}
!3052 = !DISubprogram(name: "mbsinit", scope: !3053, file: !3053, line: 292, type: !3054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!3053 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!85, !3056}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2383)
!3058 = distinct !DISubprogram(name: "quotearg_alloc", scope: !188, file: !188, line: 799, type: !3059, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!81, !83, !76, !2230}
!3061 = !{!3062, !3063, !3064}
!3062 = !DILocalVariable(name: "arg", arg: 1, scope: !3058, file: !188, line: 799, type: !83)
!3063 = !DILocalVariable(name: "argsize", arg: 2, scope: !3058, file: !188, line: 799, type: !76)
!3064 = !DILocalVariable(name: "o", arg: 3, scope: !3058, file: !188, line: 800, type: !2230)
!3065 = !DILocation(line: 0, scope: !3058)
!3066 = !DILocalVariable(name: "arg", arg: 1, scope: !3067, file: !188, line: 812, type: !83)
!3067 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !188, file: !188, line: 812, type: !3068, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3070)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!81, !83, !76, !75, !2230}
!3070 = !{!3066, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078}
!3071 = !DILocalVariable(name: "argsize", arg: 2, scope: !3067, file: !188, line: 812, type: !76)
!3072 = !DILocalVariable(name: "size", arg: 3, scope: !3067, file: !188, line: 812, type: !75)
!3073 = !DILocalVariable(name: "o", arg: 4, scope: !3067, file: !188, line: 813, type: !2230)
!3074 = !DILocalVariable(name: "p", scope: !3067, file: !188, line: 815, type: !2230)
!3075 = !DILocalVariable(name: "e", scope: !3067, file: !188, line: 816, type: !85)
!3076 = !DILocalVariable(name: "flags", scope: !3067, file: !188, line: 818, type: !85)
!3077 = !DILocalVariable(name: "bufsize", scope: !3067, file: !188, line: 819, type: !76)
!3078 = !DILocalVariable(name: "buf", scope: !3067, file: !188, line: 823, type: !81)
!3079 = !DILocation(line: 0, scope: !3067, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 802, column: 10, scope: !3058)
!3081 = !DILocation(line: 815, column: 37, scope: !3067, inlinedAt: !3080)
!3082 = !DILocation(line: 816, column: 11, scope: !3067, inlinedAt: !3080)
!3083 = !DILocation(line: 818, column: 18, scope: !3067, inlinedAt: !3080)
!3084 = !DILocation(line: 818, column: 24, scope: !3067, inlinedAt: !3080)
!3085 = !DILocation(line: 819, column: 69, scope: !3067, inlinedAt: !3080)
!3086 = !DILocation(line: 820, column: 53, scope: !3067, inlinedAt: !3080)
!3087 = !DILocation(line: 821, column: 49, scope: !3067, inlinedAt: !3080)
!3088 = !DILocation(line: 822, column: 49, scope: !3067, inlinedAt: !3080)
!3089 = !DILocation(line: 819, column: 20, scope: !3067, inlinedAt: !3080)
!3090 = !DILocation(line: 822, column: 62, scope: !3067, inlinedAt: !3080)
!3091 = !DILocalVariable(name: "n", arg: 1, scope: !3092, file: !269, line: 216, type: !76)
!3092 = distinct !DISubprogram(name: "xcharalloc", scope: !269, file: !269, line: 216, type: !3093, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!81, !76}
!3095 = !{!3091}
!3096 = !DILocation(line: 0, scope: !3092, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 823, column: 15, scope: !3067, inlinedAt: !3080)
!3098 = !DILocation(line: 218, column: 10, scope: !3092, inlinedAt: !3097)
!3099 = !DILocation(line: 824, column: 60, scope: !3067, inlinedAt: !3080)
!3100 = !DILocation(line: 826, column: 32, scope: !3067, inlinedAt: !3080)
!3101 = !DILocation(line: 826, column: 47, scope: !3067, inlinedAt: !3080)
!3102 = !DILocation(line: 824, column: 3, scope: !3067, inlinedAt: !3080)
!3103 = !DILocation(line: 827, column: 9, scope: !3067, inlinedAt: !3080)
!3104 = !DILocation(line: 802, column: 3, scope: !3058)
!3105 = !DILocation(line: 0, scope: !3067)
!3106 = !DILocation(line: 815, column: 37, scope: !3067)
!3107 = !DILocation(line: 816, column: 11, scope: !3067)
!3108 = !DILocation(line: 818, column: 18, scope: !3067)
!3109 = !DILocation(line: 818, column: 27, scope: !3067)
!3110 = !DILocation(line: 818, column: 24, scope: !3067)
!3111 = !DILocation(line: 819, column: 69, scope: !3067)
!3112 = !DILocation(line: 820, column: 53, scope: !3067)
!3113 = !DILocation(line: 821, column: 49, scope: !3067)
!3114 = !DILocation(line: 822, column: 49, scope: !3067)
!3115 = !DILocation(line: 819, column: 20, scope: !3067)
!3116 = !DILocation(line: 822, column: 62, scope: !3067)
!3117 = !DILocation(line: 0, scope: !3092, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 823, column: 15, scope: !3067)
!3119 = !DILocation(line: 218, column: 10, scope: !3092, inlinedAt: !3118)
!3120 = !DILocation(line: 824, column: 60, scope: !3067)
!3121 = !DILocation(line: 826, column: 32, scope: !3067)
!3122 = !DILocation(line: 826, column: 47, scope: !3067)
!3123 = !DILocation(line: 824, column: 3, scope: !3067)
!3124 = !DILocation(line: 827, column: 9, scope: !3067)
!3125 = !DILocation(line: 828, column: 7, scope: !3067)
!3126 = !DILocation(line: 829, column: 11, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3067, file: !188, line: 828, column: 7)
!3128 = !DILocation(line: 829, column: 5, scope: !3127)
!3129 = !DILocation(line: 830, column: 3, scope: !3067)
!3130 = distinct !DISubprogram(name: "quotearg_free", scope: !188, file: !188, line: 848, type: !164, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3131)
!3131 = !{!3132, !3133}
!3132 = !DILocalVariable(name: "sv", scope: !3130, file: !188, line: 850, type: !224)
!3133 = !DILocalVariable(name: "i", scope: !3130, file: !188, line: 851, type: !85)
!3134 = !DILocation(line: 850, column: 24, scope: !3130)
!3135 = !DILocation(line: 0, scope: !3130)
!3136 = !DILocation(line: 852, column: 19, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !188, line: 852, column: 3)
!3138 = distinct !DILexicalBlock(scope: !3130, file: !188, line: 852, column: 3)
!3139 = !DILocation(line: 852, column: 17, scope: !3137)
!3140 = !DILocation(line: 852, column: 3, scope: !3138)
!3141 = !DILocation(line: 853, column: 17, scope: !3137)
!3142 = !{!3143, !711, i64 8}
!3143 = !{!"slotvec", !890, i64 0, !711, i64 8}
!3144 = !DILocation(line: 853, column: 5, scope: !3137)
!3145 = !DILocation(line: 852, column: 28, scope: !3137)
!3146 = distinct !{!3146, !3140, !3147, !764}
!3147 = !DILocation(line: 853, column: 20, scope: !3138)
!3148 = !DILocation(line: 854, column: 13, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3130, file: !188, line: 854, column: 7)
!3150 = !DILocation(line: 854, column: 17, scope: !3149)
!3151 = !DILocation(line: 854, column: 7, scope: !3130)
!3152 = !DILocation(line: 856, column: 7, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3149, file: !188, line: 855, column: 5)
!3154 = !DILocation(line: 857, column: 21, scope: !3153)
!3155 = !{!3143, !890, i64 0}
!3156 = !DILocation(line: 858, column: 20, scope: !3153)
!3157 = !DILocation(line: 859, column: 5, scope: !3153)
!3158 = !DILocation(line: 860, column: 10, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3130, file: !188, line: 860, column: 7)
!3160 = !DILocation(line: 860, column: 7, scope: !3130)
!3161 = !DILocation(line: 862, column: 13, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3159, file: !188, line: 861, column: 5)
!3163 = !DILocation(line: 862, column: 7, scope: !3162)
!3164 = !DILocation(line: 863, column: 15, scope: !3162)
!3165 = !DILocation(line: 864, column: 5, scope: !3162)
!3166 = !DILocation(line: 865, column: 10, scope: !3130)
!3167 = !DILocation(line: 866, column: 1, scope: !3130)
!3168 = distinct !DISubprogram(name: "quotearg_n", scope: !188, file: !188, line: 931, type: !846, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3169)
!3169 = !{!3170, !3171}
!3170 = !DILocalVariable(name: "n", arg: 1, scope: !3168, file: !188, line: 931, type: !85)
!3171 = !DILocalVariable(name: "arg", arg: 2, scope: !3168, file: !188, line: 931, type: !83)
!3172 = !DILocation(line: 0, scope: !3168)
!3173 = !DILocation(line: 933, column: 10, scope: !3168)
!3174 = !DILocation(line: 933, column: 3, scope: !3168)
!3175 = distinct !DISubprogram(name: "quotearg_n_options", scope: !188, file: !188, line: 877, type: !3176, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!81, !85, !83, !76, !2230}
!3178 = !{!3179, !3180, !3181, !3182, !3183, !3184, !3185, !3188, !3189, !3191, !3192, !3193}
!3179 = !DILocalVariable(name: "n", arg: 1, scope: !3175, file: !188, line: 877, type: !85)
!3180 = !DILocalVariable(name: "arg", arg: 2, scope: !3175, file: !188, line: 877, type: !83)
!3181 = !DILocalVariable(name: "argsize", arg: 3, scope: !3175, file: !188, line: 877, type: !76)
!3182 = !DILocalVariable(name: "options", arg: 4, scope: !3175, file: !188, line: 878, type: !2230)
!3183 = !DILocalVariable(name: "e", scope: !3175, file: !188, line: 880, type: !85)
!3184 = !DILocalVariable(name: "sv", scope: !3175, file: !188, line: 882, type: !224)
!3185 = !DILocalVariable(name: "preallocated", scope: !3186, file: !188, line: 889, type: !97)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !188, line: 888, column: 5)
!3187 = distinct !DILexicalBlock(scope: !3175, file: !188, line: 887, column: 7)
!3188 = !DILocalVariable(name: "nmax", scope: !3186, file: !188, line: 890, type: !85)
!3189 = !DILocalVariable(name: "size", scope: !3190, file: !188, line: 903, type: !76)
!3190 = distinct !DILexicalBlock(scope: !3175, file: !188, line: 902, column: 3)
!3191 = !DILocalVariable(name: "val", scope: !3190, file: !188, line: 904, type: !81)
!3192 = !DILocalVariable(name: "flags", scope: !3190, file: !188, line: 906, type: !85)
!3193 = !DILocalVariable(name: "qsize", scope: !3190, file: !188, line: 907, type: !76)
!3194 = !DILocation(line: 0, scope: !3175)
!3195 = !DILocation(line: 880, column: 11, scope: !3175)
!3196 = !DILocation(line: 882, column: 24, scope: !3175)
!3197 = !DILocation(line: 884, column: 9, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3175, file: !188, line: 884, column: 7)
!3199 = !DILocation(line: 884, column: 7, scope: !3175)
!3200 = !DILocation(line: 885, column: 5, scope: !3198)
!3201 = !DILocation(line: 887, column: 7, scope: !3187)
!3202 = !DILocation(line: 887, column: 14, scope: !3187)
!3203 = !DILocation(line: 887, column: 7, scope: !3175)
!3204 = !DILocation(line: 889, column: 31, scope: !3186)
!3205 = !DILocation(line: 0, scope: !3186)
!3206 = !DILocation(line: 892, column: 16, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3186, file: !188, line: 892, column: 11)
!3208 = !DILocation(line: 892, column: 11, scope: !3186)
!3209 = !DILocation(line: 893, column: 9, scope: !3207)
!3210 = !DILocation(line: 895, column: 32, scope: !3186)
!3211 = !DILocation(line: 895, column: 61, scope: !3186)
!3212 = !DILocation(line: 895, column: 66, scope: !3186)
!3213 = !DILocation(line: 895, column: 22, scope: !3186)
!3214 = !DILocation(line: 895, column: 15, scope: !3186)
!3215 = !DILocation(line: 896, column: 11, scope: !3186)
!3216 = !DILocation(line: 897, column: 15, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3186, file: !188, line: 896, column: 11)
!3218 = !{i64 0, i64 8, !889, i64 8, i64 8, !710}
!3219 = !DILocation(line: 897, column: 9, scope: !3217)
!3220 = !DILocation(line: 898, column: 20, scope: !3186)
!3221 = !DILocation(line: 898, column: 18, scope: !3186)
!3222 = !DILocation(line: 898, column: 15, scope: !3186)
!3223 = !DILocation(line: 898, column: 38, scope: !3186)
!3224 = !DILocation(line: 898, column: 31, scope: !3186)
!3225 = !DILocation(line: 898, column: 48, scope: !3186)
!3226 = !DILocation(line: 0, scope: !2622, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 898, column: 7, scope: !3186)
!3228 = !DILocation(line: 59, column: 10, scope: !2622, inlinedAt: !3227)
!3229 = !DILocation(line: 899, column: 14, scope: !3186)
!3230 = !DILocation(line: 900, column: 5, scope: !3186)
!3231 = !DILocation(line: 903, column: 19, scope: !3190)
!3232 = !DILocation(line: 903, column: 25, scope: !3190)
!3233 = !DILocation(line: 0, scope: !3190)
!3234 = !DILocation(line: 904, column: 23, scope: !3190)
!3235 = !DILocation(line: 906, column: 26, scope: !3190)
!3236 = !DILocation(line: 906, column: 32, scope: !3190)
!3237 = !DILocation(line: 908, column: 55, scope: !3190)
!3238 = !DILocation(line: 909, column: 46, scope: !3190)
!3239 = !DILocation(line: 910, column: 55, scope: !3190)
!3240 = !DILocation(line: 911, column: 55, scope: !3190)
!3241 = !DILocation(line: 907, column: 20, scope: !3190)
!3242 = !DILocation(line: 913, column: 14, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3190, file: !188, line: 913, column: 9)
!3244 = !DILocation(line: 913, column: 9, scope: !3190)
!3245 = !DILocation(line: 915, column: 35, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3243, file: !188, line: 914, column: 7)
!3247 = !DILocation(line: 915, column: 20, scope: !3246)
!3248 = !DILocation(line: 916, column: 17, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3246, file: !188, line: 916, column: 13)
!3250 = !DILocation(line: 916, column: 13, scope: !3246)
!3251 = !DILocation(line: 917, column: 11, scope: !3249)
!3252 = !DILocation(line: 0, scope: !3092, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 918, column: 27, scope: !3246)
!3254 = !DILocation(line: 218, column: 10, scope: !3092, inlinedAt: !3253)
!3255 = !DILocation(line: 918, column: 19, scope: !3246)
!3256 = !DILocation(line: 919, column: 69, scope: !3246)
!3257 = !DILocation(line: 921, column: 44, scope: !3246)
!3258 = !DILocation(line: 922, column: 44, scope: !3246)
!3259 = !DILocation(line: 919, column: 9, scope: !3246)
!3260 = !DILocation(line: 923, column: 7, scope: !3246)
!3261 = !DILocation(line: 925, column: 11, scope: !3190)
!3262 = !DILocation(line: 926, column: 5, scope: !3190)
!3263 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !188, file: !188, line: 937, type: !3264, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3266)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!81, !85, !83, !76}
!3266 = !{!3267, !3268, !3269}
!3267 = !DILocalVariable(name: "n", arg: 1, scope: !3263, file: !188, line: 937, type: !85)
!3268 = !DILocalVariable(name: "arg", arg: 2, scope: !3263, file: !188, line: 937, type: !83)
!3269 = !DILocalVariable(name: "argsize", arg: 3, scope: !3263, file: !188, line: 937, type: !76)
!3270 = !DILocation(line: 0, scope: !3263)
!3271 = !DILocation(line: 939, column: 10, scope: !3263)
!3272 = !DILocation(line: 939, column: 3, scope: !3263)
!3273 = distinct !DISubprogram(name: "quotearg", scope: !188, file: !188, line: 943, type: !1344, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3274)
!3274 = !{!3275}
!3275 = !DILocalVariable(name: "arg", arg: 1, scope: !3273, file: !188, line: 943, type: !83)
!3276 = !DILocation(line: 0, scope: !3273)
!3277 = !DILocation(line: 0, scope: !3168, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 945, column: 10, scope: !3273)
!3279 = !DILocation(line: 933, column: 10, scope: !3168, inlinedAt: !3278)
!3280 = !DILocation(line: 945, column: 3, scope: !3273)
!3281 = distinct !DISubprogram(name: "quotearg_mem", scope: !188, file: !188, line: 949, type: !3282, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!81, !83, !76}
!3284 = !{!3285, !3286}
!3285 = !DILocalVariable(name: "arg", arg: 1, scope: !3281, file: !188, line: 949, type: !83)
!3286 = !DILocalVariable(name: "argsize", arg: 2, scope: !3281, file: !188, line: 949, type: !76)
!3287 = !DILocation(line: 0, scope: !3281)
!3288 = !DILocation(line: 0, scope: !3263, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 951, column: 10, scope: !3281)
!3290 = !DILocation(line: 939, column: 10, scope: !3263, inlinedAt: !3289)
!3291 = !DILocation(line: 951, column: 3, scope: !3281)
!3292 = distinct !DISubprogram(name: "quotearg_n_style", scope: !188, file: !188, line: 955, type: !3293, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!81, !85, !35, !83}
!3295 = !{!3296, !3297, !3298, !3299}
!3296 = !DILocalVariable(name: "n", arg: 1, scope: !3292, file: !188, line: 955, type: !85)
!3297 = !DILocalVariable(name: "s", arg: 2, scope: !3292, file: !188, line: 955, type: !35)
!3298 = !DILocalVariable(name: "arg", arg: 3, scope: !3292, file: !188, line: 955, type: !83)
!3299 = !DILocalVariable(name: "o", scope: !3292, file: !188, line: 957, type: !2231)
!3300 = !DILocation(line: 0, scope: !3292)
!3301 = !DILocation(line: 957, column: 3, scope: !3292)
!3302 = !DILocation(line: 957, column: 32, scope: !3292)
!3303 = !{!3304}
!3304 = distinct !{!3304, !3305, !"quoting_options_from_style: argument 0"}
!3305 = distinct !{!3305, !"quoting_options_from_style"}
!3306 = !DILocation(line: 957, column: 36, scope: !3292)
!3307 = !DILocalVariable(name: "style", arg: 1, scope: !3308, file: !188, line: 193, type: !35)
!3308 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !188, file: !188, line: 193, type: !3309, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!205, !35}
!3311 = !{!3307, !3312}
!3312 = !DILocalVariable(name: "o", scope: !3308, file: !188, line: 195, type: !205)
!3313 = !DILocation(line: 0, scope: !3308, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 957, column: 36, scope: !3292)
!3315 = !DILocation(line: 195, column: 26, scope: !3308, inlinedAt: !3314)
!3316 = !DILocation(line: 196, column: 13, scope: !3317, inlinedAt: !3314)
!3317 = distinct !DILexicalBlock(scope: !3308, file: !188, line: 196, column: 7)
!3318 = !DILocation(line: 196, column: 7, scope: !3308, inlinedAt: !3314)
!3319 = !DILocation(line: 197, column: 5, scope: !3317, inlinedAt: !3314)
!3320 = !DILocation(line: 198, column: 5, scope: !3308, inlinedAt: !3314)
!3321 = !DILocation(line: 198, column: 11, scope: !3308, inlinedAt: !3314)
!3322 = !DILocation(line: 958, column: 10, scope: !3292)
!3323 = !DILocation(line: 959, column: 1, scope: !3292)
!3324 = !DILocation(line: 958, column: 3, scope: !3292)
!3325 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !188, file: !188, line: 962, type: !3326, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!81, !85, !35, !83, !76}
!3328 = !{!3329, !3330, !3331, !3332, !3333}
!3329 = !DILocalVariable(name: "n", arg: 1, scope: !3325, file: !188, line: 962, type: !85)
!3330 = !DILocalVariable(name: "s", arg: 2, scope: !3325, file: !188, line: 962, type: !35)
!3331 = !DILocalVariable(name: "arg", arg: 3, scope: !3325, file: !188, line: 963, type: !83)
!3332 = !DILocalVariable(name: "argsize", arg: 4, scope: !3325, file: !188, line: 963, type: !76)
!3333 = !DILocalVariable(name: "o", scope: !3325, file: !188, line: 965, type: !2231)
!3334 = !DILocation(line: 0, scope: !3325)
!3335 = !DILocation(line: 965, column: 3, scope: !3325)
!3336 = !DILocation(line: 965, column: 32, scope: !3325)
!3337 = !{!3338}
!3338 = distinct !{!3338, !3339, !"quoting_options_from_style: argument 0"}
!3339 = distinct !{!3339, !"quoting_options_from_style"}
!3340 = !DILocation(line: 965, column: 36, scope: !3325)
!3341 = !DILocation(line: 0, scope: !3308, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 965, column: 36, scope: !3325)
!3343 = !DILocation(line: 195, column: 26, scope: !3308, inlinedAt: !3342)
!3344 = !DILocation(line: 196, column: 13, scope: !3317, inlinedAt: !3342)
!3345 = !DILocation(line: 196, column: 7, scope: !3308, inlinedAt: !3342)
!3346 = !DILocation(line: 197, column: 5, scope: !3317, inlinedAt: !3342)
!3347 = !DILocation(line: 198, column: 5, scope: !3308, inlinedAt: !3342)
!3348 = !DILocation(line: 198, column: 11, scope: !3308, inlinedAt: !3342)
!3349 = !DILocation(line: 966, column: 10, scope: !3325)
!3350 = !DILocation(line: 967, column: 1, scope: !3325)
!3351 = !DILocation(line: 966, column: 3, scope: !3325)
!3352 = distinct !DISubprogram(name: "quotearg_style", scope: !188, file: !188, line: 970, type: !3353, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!81, !35, !83}
!3355 = !{!3356, !3357}
!3356 = !DILocalVariable(name: "s", arg: 1, scope: !3352, file: !188, line: 970, type: !35)
!3357 = !DILocalVariable(name: "arg", arg: 2, scope: !3352, file: !188, line: 970, type: !83)
!3358 = !DILocation(line: 0, scope: !3352)
!3359 = !DILocation(line: 0, scope: !3292, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 972, column: 10, scope: !3352)
!3361 = !DILocation(line: 957, column: 3, scope: !3292, inlinedAt: !3360)
!3362 = !DILocation(line: 957, column: 32, scope: !3292, inlinedAt: !3360)
!3363 = !{!3364}
!3364 = distinct !{!3364, !3365, !"quoting_options_from_style: argument 0"}
!3365 = distinct !{!3365, !"quoting_options_from_style"}
!3366 = !DILocation(line: 957, column: 36, scope: !3292, inlinedAt: !3360)
!3367 = !DILocation(line: 0, scope: !3308, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 957, column: 36, scope: !3292, inlinedAt: !3360)
!3369 = !DILocation(line: 195, column: 26, scope: !3308, inlinedAt: !3368)
!3370 = !DILocation(line: 196, column: 13, scope: !3317, inlinedAt: !3368)
!3371 = !DILocation(line: 196, column: 7, scope: !3308, inlinedAt: !3368)
!3372 = !DILocation(line: 197, column: 5, scope: !3317, inlinedAt: !3368)
!3373 = !DILocation(line: 198, column: 5, scope: !3308, inlinedAt: !3368)
!3374 = !DILocation(line: 198, column: 11, scope: !3308, inlinedAt: !3368)
!3375 = !DILocation(line: 958, column: 10, scope: !3292, inlinedAt: !3360)
!3376 = !DILocation(line: 959, column: 1, scope: !3292, inlinedAt: !3360)
!3377 = !DILocation(line: 972, column: 3, scope: !3352)
!3378 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !188, file: !188, line: 976, type: !3379, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3381)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!81, !35, !83, !76}
!3381 = !{!3382, !3383, !3384}
!3382 = !DILocalVariable(name: "s", arg: 1, scope: !3378, file: !188, line: 976, type: !35)
!3383 = !DILocalVariable(name: "arg", arg: 2, scope: !3378, file: !188, line: 976, type: !83)
!3384 = !DILocalVariable(name: "argsize", arg: 3, scope: !3378, file: !188, line: 976, type: !76)
!3385 = !DILocation(line: 0, scope: !3378)
!3386 = !DILocation(line: 0, scope: !3325, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 978, column: 10, scope: !3378)
!3388 = !DILocation(line: 965, column: 3, scope: !3325, inlinedAt: !3387)
!3389 = !DILocation(line: 965, column: 32, scope: !3325, inlinedAt: !3387)
!3390 = !{!3391}
!3391 = distinct !{!3391, !3392, !"quoting_options_from_style: argument 0"}
!3392 = distinct !{!3392, !"quoting_options_from_style"}
!3393 = !DILocation(line: 965, column: 36, scope: !3325, inlinedAt: !3387)
!3394 = !DILocation(line: 0, scope: !3308, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 965, column: 36, scope: !3325, inlinedAt: !3387)
!3396 = !DILocation(line: 195, column: 26, scope: !3308, inlinedAt: !3395)
!3397 = !DILocation(line: 196, column: 13, scope: !3317, inlinedAt: !3395)
!3398 = !DILocation(line: 196, column: 7, scope: !3308, inlinedAt: !3395)
!3399 = !DILocation(line: 197, column: 5, scope: !3317, inlinedAt: !3395)
!3400 = !DILocation(line: 198, column: 5, scope: !3308, inlinedAt: !3395)
!3401 = !DILocation(line: 198, column: 11, scope: !3308, inlinedAt: !3395)
!3402 = !DILocation(line: 966, column: 10, scope: !3325, inlinedAt: !3387)
!3403 = !DILocation(line: 967, column: 1, scope: !3325, inlinedAt: !3387)
!3404 = !DILocation(line: 978, column: 3, scope: !3378)
!3405 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !188, file: !188, line: 982, type: !3406, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!81, !83, !76, !82}
!3408 = !{!3409, !3410, !3411, !3412}
!3409 = !DILocalVariable(name: "arg", arg: 1, scope: !3405, file: !188, line: 982, type: !83)
!3410 = !DILocalVariable(name: "argsize", arg: 2, scope: !3405, file: !188, line: 982, type: !76)
!3411 = !DILocalVariable(name: "ch", arg: 3, scope: !3405, file: !188, line: 982, type: !82)
!3412 = !DILocalVariable(name: "options", scope: !3405, file: !188, line: 984, type: !205)
!3413 = !DILocation(line: 0, scope: !3405)
!3414 = !DILocation(line: 984, column: 3, scope: !3405)
!3415 = !DILocation(line: 984, column: 26, scope: !3405)
!3416 = !DILocation(line: 985, column: 13, scope: !3405)
!3417 = !{i64 0, i64 4, !898, i64 4, i64 4, !914, i64 8, i64 32, !898, i64 40, i64 8, !710, i64 48, i64 8, !710}
!3418 = !DILocation(line: 0, scope: !2251, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 986, column: 3, scope: !3405)
!3420 = !DILocation(line: 156, column: 62, scope: !2251, inlinedAt: !3419)
!3421 = !DILocation(line: 156, column: 57, scope: !2251, inlinedAt: !3419)
!3422 = !DILocation(line: 157, column: 15, scope: !2251, inlinedAt: !3419)
!3423 = !DILocation(line: 158, column: 12, scope: !2251, inlinedAt: !3419)
!3424 = !DILocation(line: 158, column: 15, scope: !2251, inlinedAt: !3419)
!3425 = !DILocation(line: 158, column: 25, scope: !2251, inlinedAt: !3419)
!3426 = !DILocation(line: 159, column: 18, scope: !2251, inlinedAt: !3419)
!3427 = !DILocation(line: 159, column: 23, scope: !2251, inlinedAt: !3419)
!3428 = !DILocation(line: 159, column: 6, scope: !2251, inlinedAt: !3419)
!3429 = !DILocation(line: 987, column: 10, scope: !3405)
!3430 = !DILocation(line: 988, column: 1, scope: !3405)
!3431 = !DILocation(line: 987, column: 3, scope: !3405)
!3432 = distinct !DISubprogram(name: "quotearg_char", scope: !188, file: !188, line: 991, type: !3433, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!81, !83, !82}
!3435 = !{!3436, !3437}
!3436 = !DILocalVariable(name: "arg", arg: 1, scope: !3432, file: !188, line: 991, type: !83)
!3437 = !DILocalVariable(name: "ch", arg: 2, scope: !3432, file: !188, line: 991, type: !82)
!3438 = !DILocation(line: 0, scope: !3432)
!3439 = !DILocation(line: 0, scope: !3405, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 993, column: 10, scope: !3432)
!3441 = !DILocation(line: 984, column: 3, scope: !3405, inlinedAt: !3440)
!3442 = !DILocation(line: 984, column: 26, scope: !3405, inlinedAt: !3440)
!3443 = !DILocation(line: 985, column: 13, scope: !3405, inlinedAt: !3440)
!3444 = !DILocation(line: 0, scope: !2251, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 986, column: 3, scope: !3405, inlinedAt: !3440)
!3446 = !DILocation(line: 156, column: 62, scope: !2251, inlinedAt: !3445)
!3447 = !DILocation(line: 156, column: 57, scope: !2251, inlinedAt: !3445)
!3448 = !DILocation(line: 157, column: 15, scope: !2251, inlinedAt: !3445)
!3449 = !DILocation(line: 158, column: 12, scope: !2251, inlinedAt: !3445)
!3450 = !DILocation(line: 158, column: 15, scope: !2251, inlinedAt: !3445)
!3451 = !DILocation(line: 158, column: 25, scope: !2251, inlinedAt: !3445)
!3452 = !DILocation(line: 159, column: 18, scope: !2251, inlinedAt: !3445)
!3453 = !DILocation(line: 159, column: 23, scope: !2251, inlinedAt: !3445)
!3454 = !DILocation(line: 159, column: 6, scope: !2251, inlinedAt: !3445)
!3455 = !DILocation(line: 987, column: 10, scope: !3405, inlinedAt: !3440)
!3456 = !DILocation(line: 988, column: 1, scope: !3405, inlinedAt: !3440)
!3457 = !DILocation(line: 993, column: 3, scope: !3432)
!3458 = distinct !DISubprogram(name: "quotearg_colon", scope: !188, file: !188, line: 997, type: !1344, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3459)
!3459 = !{!3460}
!3460 = !DILocalVariable(name: "arg", arg: 1, scope: !3458, file: !188, line: 997, type: !83)
!3461 = !DILocation(line: 0, scope: !3458)
!3462 = !DILocation(line: 0, scope: !3432, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 999, column: 10, scope: !3458)
!3464 = !DILocation(line: 0, scope: !3405, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 993, column: 10, scope: !3432, inlinedAt: !3463)
!3466 = !DILocation(line: 984, column: 3, scope: !3405, inlinedAt: !3465)
!3467 = !DILocation(line: 984, column: 26, scope: !3405, inlinedAt: !3465)
!3468 = !DILocation(line: 985, column: 13, scope: !3405, inlinedAt: !3465)
!3469 = !DILocation(line: 0, scope: !2251, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 986, column: 3, scope: !3405, inlinedAt: !3465)
!3471 = !DILocation(line: 156, column: 57, scope: !2251, inlinedAt: !3470)
!3472 = !DILocation(line: 158, column: 12, scope: !2251, inlinedAt: !3470)
!3473 = !DILocation(line: 159, column: 6, scope: !2251, inlinedAt: !3470)
!3474 = !DILocation(line: 987, column: 10, scope: !3405, inlinedAt: !3465)
!3475 = !DILocation(line: 988, column: 1, scope: !3405, inlinedAt: !3465)
!3476 = !DILocation(line: 999, column: 3, scope: !3458)
!3477 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !188, file: !188, line: 1003, type: !3282, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3478)
!3478 = !{!3479, !3480}
!3479 = !DILocalVariable(name: "arg", arg: 1, scope: !3477, file: !188, line: 1003, type: !83)
!3480 = !DILocalVariable(name: "argsize", arg: 2, scope: !3477, file: !188, line: 1003, type: !76)
!3481 = !DILocation(line: 0, scope: !3477)
!3482 = !DILocation(line: 0, scope: !3405, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 1005, column: 10, scope: !3477)
!3484 = !DILocation(line: 984, column: 3, scope: !3405, inlinedAt: !3483)
!3485 = !DILocation(line: 984, column: 26, scope: !3405, inlinedAt: !3483)
!3486 = !DILocation(line: 985, column: 13, scope: !3405, inlinedAt: !3483)
!3487 = !DILocation(line: 0, scope: !2251, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 986, column: 3, scope: !3405, inlinedAt: !3483)
!3489 = !DILocation(line: 156, column: 57, scope: !2251, inlinedAt: !3488)
!3490 = !DILocation(line: 158, column: 12, scope: !2251, inlinedAt: !3488)
!3491 = !DILocation(line: 159, column: 6, scope: !2251, inlinedAt: !3488)
!3492 = !DILocation(line: 987, column: 10, scope: !3405, inlinedAt: !3483)
!3493 = !DILocation(line: 988, column: 1, scope: !3405, inlinedAt: !3483)
!3494 = !DILocation(line: 1005, column: 3, scope: !3477)
!3495 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !188, file: !188, line: 1009, type: !3293, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3496)
!3496 = !{!3497, !3498, !3499, !3500}
!3497 = !DILocalVariable(name: "n", arg: 1, scope: !3495, file: !188, line: 1009, type: !85)
!3498 = !DILocalVariable(name: "s", arg: 2, scope: !3495, file: !188, line: 1009, type: !35)
!3499 = !DILocalVariable(name: "arg", arg: 3, scope: !3495, file: !188, line: 1009, type: !83)
!3500 = !DILocalVariable(name: "options", scope: !3495, file: !188, line: 1011, type: !205)
!3501 = !DILocation(line: 195, column: 26, scope: !3308, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 1012, column: 13, scope: !3495)
!3503 = !DILocation(line: 0, scope: !3495)
!3504 = !DILocation(line: 1011, column: 3, scope: !3495)
!3505 = !DILocation(line: 1011, column: 26, scope: !3495)
!3506 = !DILocation(line: 1012, column: 13, scope: !3495)
!3507 = !{!3508}
!3508 = distinct !{!3508, !3509, !"quoting_options_from_style: argument 0"}
!3509 = distinct !{!3509, !"quoting_options_from_style"}
!3510 = !DILocation(line: 0, scope: !3308, inlinedAt: !3502)
!3511 = !DILocation(line: 196, column: 13, scope: !3317, inlinedAt: !3502)
!3512 = !DILocation(line: 196, column: 7, scope: !3308, inlinedAt: !3502)
!3513 = !DILocation(line: 197, column: 5, scope: !3317, inlinedAt: !3502)
!3514 = !{i64 0, i64 4, !914, i64 4, i64 32, !898, i64 36, i64 8, !710, i64 44, i64 8, !710}
!3515 = !DILocation(line: 0, scope: !2251, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 1013, column: 3, scope: !3495)
!3517 = !DILocation(line: 156, column: 57, scope: !2251, inlinedAt: !3516)
!3518 = !DILocation(line: 158, column: 12, scope: !2251, inlinedAt: !3516)
!3519 = !DILocation(line: 159, column: 6, scope: !2251, inlinedAt: !3516)
!3520 = !DILocation(line: 1014, column: 10, scope: !3495)
!3521 = !DILocation(line: 1015, column: 1, scope: !3495)
!3522 = !DILocation(line: 1014, column: 3, scope: !3495)
!3523 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !188, file: !188, line: 1018, type: !3524, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!81, !85, !83, !83, !83}
!3526 = !{!3527, !3528, !3529, !3530}
!3527 = !DILocalVariable(name: "n", arg: 1, scope: !3523, file: !188, line: 1018, type: !85)
!3528 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3523, file: !188, line: 1018, type: !83)
!3529 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3523, file: !188, line: 1019, type: !83)
!3530 = !DILocalVariable(name: "arg", arg: 4, scope: !3523, file: !188, line: 1019, type: !83)
!3531 = !DILocation(line: 0, scope: !3523)
!3532 = !DILocalVariable(name: "n", arg: 1, scope: !3533, file: !188, line: 1026, type: !85)
!3533 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !188, file: !188, line: 1026, type: !3534, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3536)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!81, !85, !83, !83, !83, !76}
!3536 = !{!3532, !3537, !3538, !3539, !3540, !3541}
!3537 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3533, file: !188, line: 1026, type: !83)
!3538 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3533, file: !188, line: 1027, type: !83)
!3539 = !DILocalVariable(name: "arg", arg: 4, scope: !3533, file: !188, line: 1028, type: !83)
!3540 = !DILocalVariable(name: "argsize", arg: 5, scope: !3533, file: !188, line: 1028, type: !76)
!3541 = !DILocalVariable(name: "o", scope: !3533, file: !188, line: 1030, type: !205)
!3542 = !DILocation(line: 0, scope: !3533, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 1021, column: 10, scope: !3523)
!3544 = !DILocation(line: 1030, column: 3, scope: !3533, inlinedAt: !3543)
!3545 = !DILocation(line: 1030, column: 26, scope: !3533, inlinedAt: !3543)
!3546 = !DILocation(line: 1030, column: 30, scope: !3533, inlinedAt: !3543)
!3547 = !DILocation(line: 0, scope: !2291, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 1031, column: 3, scope: !3533, inlinedAt: !3543)
!3549 = !DILocation(line: 184, column: 6, scope: !2291, inlinedAt: !3548)
!3550 = !DILocation(line: 184, column: 12, scope: !2291, inlinedAt: !3548)
!3551 = !DILocation(line: 185, column: 8, scope: !2305, inlinedAt: !3548)
!3552 = !DILocation(line: 185, column: 19, scope: !2305, inlinedAt: !3548)
!3553 = !DILocation(line: 186, column: 5, scope: !2305, inlinedAt: !3548)
!3554 = !DILocation(line: 187, column: 6, scope: !2291, inlinedAt: !3548)
!3555 = !DILocation(line: 187, column: 17, scope: !2291, inlinedAt: !3548)
!3556 = !DILocation(line: 188, column: 6, scope: !2291, inlinedAt: !3548)
!3557 = !DILocation(line: 188, column: 18, scope: !2291, inlinedAt: !3548)
!3558 = !DILocation(line: 1032, column: 10, scope: !3533, inlinedAt: !3543)
!3559 = !DILocation(line: 1033, column: 1, scope: !3533, inlinedAt: !3543)
!3560 = !DILocation(line: 1021, column: 3, scope: !3523)
!3561 = !DILocation(line: 0, scope: !3533)
!3562 = !DILocation(line: 1030, column: 3, scope: !3533)
!3563 = !DILocation(line: 1030, column: 26, scope: !3533)
!3564 = !DILocation(line: 1030, column: 30, scope: !3533)
!3565 = !DILocation(line: 0, scope: !2291, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 1031, column: 3, scope: !3533)
!3567 = !DILocation(line: 184, column: 6, scope: !2291, inlinedAt: !3566)
!3568 = !DILocation(line: 184, column: 12, scope: !2291, inlinedAt: !3566)
!3569 = !DILocation(line: 185, column: 8, scope: !2305, inlinedAt: !3566)
!3570 = !DILocation(line: 185, column: 19, scope: !2305, inlinedAt: !3566)
!3571 = !DILocation(line: 186, column: 5, scope: !2305, inlinedAt: !3566)
!3572 = !DILocation(line: 187, column: 6, scope: !2291, inlinedAt: !3566)
!3573 = !DILocation(line: 187, column: 17, scope: !2291, inlinedAt: !3566)
!3574 = !DILocation(line: 188, column: 6, scope: !2291, inlinedAt: !3566)
!3575 = !DILocation(line: 188, column: 18, scope: !2291, inlinedAt: !3566)
!3576 = !DILocation(line: 1032, column: 10, scope: !3533)
!3577 = !DILocation(line: 1033, column: 1, scope: !3533)
!3578 = !DILocation(line: 1032, column: 3, scope: !3533)
!3579 = distinct !DISubprogram(name: "quotearg_custom", scope: !188, file: !188, line: 1036, type: !3580, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!81, !83, !83, !83}
!3582 = !{!3583, !3584, !3585}
!3583 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3579, file: !188, line: 1036, type: !83)
!3584 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3579, file: !188, line: 1036, type: !83)
!3585 = !DILocalVariable(name: "arg", arg: 3, scope: !3579, file: !188, line: 1037, type: !83)
!3586 = !DILocation(line: 0, scope: !3579)
!3587 = !DILocation(line: 0, scope: !3523, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 1039, column: 10, scope: !3579)
!3589 = !DILocation(line: 0, scope: !3533, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 1021, column: 10, scope: !3523, inlinedAt: !3588)
!3591 = !DILocation(line: 1030, column: 3, scope: !3533, inlinedAt: !3590)
!3592 = !DILocation(line: 1030, column: 26, scope: !3533, inlinedAt: !3590)
!3593 = !DILocation(line: 1030, column: 30, scope: !3533, inlinedAt: !3590)
!3594 = !DILocation(line: 0, scope: !2291, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 1031, column: 3, scope: !3533, inlinedAt: !3590)
!3596 = !DILocation(line: 184, column: 6, scope: !2291, inlinedAt: !3595)
!3597 = !DILocation(line: 184, column: 12, scope: !2291, inlinedAt: !3595)
!3598 = !DILocation(line: 185, column: 8, scope: !2305, inlinedAt: !3595)
!3599 = !DILocation(line: 185, column: 19, scope: !2305, inlinedAt: !3595)
!3600 = !DILocation(line: 186, column: 5, scope: !2305, inlinedAt: !3595)
!3601 = !DILocation(line: 187, column: 6, scope: !2291, inlinedAt: !3595)
!3602 = !DILocation(line: 187, column: 17, scope: !2291, inlinedAt: !3595)
!3603 = !DILocation(line: 188, column: 6, scope: !2291, inlinedAt: !3595)
!3604 = !DILocation(line: 188, column: 18, scope: !2291, inlinedAt: !3595)
!3605 = !DILocation(line: 1032, column: 10, scope: !3533, inlinedAt: !3590)
!3606 = !DILocation(line: 1033, column: 1, scope: !3533, inlinedAt: !3590)
!3607 = !DILocation(line: 1039, column: 3, scope: !3579)
!3608 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !188, file: !188, line: 1043, type: !3609, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3611)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!81, !83, !83, !83, !76}
!3611 = !{!3612, !3613, !3614, !3615}
!3612 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3608, file: !188, line: 1043, type: !83)
!3613 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3608, file: !188, line: 1043, type: !83)
!3614 = !DILocalVariable(name: "arg", arg: 3, scope: !3608, file: !188, line: 1044, type: !83)
!3615 = !DILocalVariable(name: "argsize", arg: 4, scope: !3608, file: !188, line: 1044, type: !76)
!3616 = !DILocation(line: 0, scope: !3608)
!3617 = !DILocation(line: 0, scope: !3533, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 1046, column: 10, scope: !3608)
!3619 = !DILocation(line: 1030, column: 3, scope: !3533, inlinedAt: !3618)
!3620 = !DILocation(line: 1030, column: 26, scope: !3533, inlinedAt: !3618)
!3621 = !DILocation(line: 1030, column: 30, scope: !3533, inlinedAt: !3618)
!3622 = !DILocation(line: 0, scope: !2291, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 1031, column: 3, scope: !3533, inlinedAt: !3618)
!3624 = !DILocation(line: 184, column: 6, scope: !2291, inlinedAt: !3623)
!3625 = !DILocation(line: 184, column: 12, scope: !2291, inlinedAt: !3623)
!3626 = !DILocation(line: 185, column: 8, scope: !2305, inlinedAt: !3623)
!3627 = !DILocation(line: 185, column: 19, scope: !2305, inlinedAt: !3623)
!3628 = !DILocation(line: 186, column: 5, scope: !2305, inlinedAt: !3623)
!3629 = !DILocation(line: 187, column: 6, scope: !2291, inlinedAt: !3623)
!3630 = !DILocation(line: 187, column: 17, scope: !2291, inlinedAt: !3623)
!3631 = !DILocation(line: 188, column: 6, scope: !2291, inlinedAt: !3623)
!3632 = !DILocation(line: 188, column: 18, scope: !2291, inlinedAt: !3623)
!3633 = !DILocation(line: 1032, column: 10, scope: !3533, inlinedAt: !3618)
!3634 = !DILocation(line: 1033, column: 1, scope: !3533, inlinedAt: !3618)
!3635 = !DILocation(line: 1046, column: 3, scope: !3608)
!3636 = distinct !DISubprogram(name: "quote_n_mem", scope: !188, file: !188, line: 1061, type: !3637, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3639)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!83, !85, !83, !76}
!3639 = !{!3640, !3641, !3642}
!3640 = !DILocalVariable(name: "n", arg: 1, scope: !3636, file: !188, line: 1061, type: !85)
!3641 = !DILocalVariable(name: "arg", arg: 2, scope: !3636, file: !188, line: 1061, type: !83)
!3642 = !DILocalVariable(name: "argsize", arg: 3, scope: !3636, file: !188, line: 1061, type: !76)
!3643 = !DILocation(line: 0, scope: !3636)
!3644 = !DILocation(line: 1063, column: 10, scope: !3636)
!3645 = !DILocation(line: 1063, column: 3, scope: !3636)
!3646 = distinct !DISubprogram(name: "quote_mem", scope: !188, file: !188, line: 1067, type: !3647, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3649)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!83, !83, !76}
!3649 = !{!3650, !3651}
!3650 = !DILocalVariable(name: "arg", arg: 1, scope: !3646, file: !188, line: 1067, type: !83)
!3651 = !DILocalVariable(name: "argsize", arg: 2, scope: !3646, file: !188, line: 1067, type: !76)
!3652 = !DILocation(line: 0, scope: !3646)
!3653 = !DILocation(line: 0, scope: !3636, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 1069, column: 10, scope: !3646)
!3655 = !DILocation(line: 1063, column: 10, scope: !3636, inlinedAt: !3654)
!3656 = !DILocation(line: 1069, column: 3, scope: !3646)
!3657 = distinct !DISubprogram(name: "quote_n", scope: !188, file: !188, line: 1073, type: !3658, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3660)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!83, !85, !83}
!3660 = !{!3661, !3662}
!3661 = !DILocalVariable(name: "n", arg: 1, scope: !3657, file: !188, line: 1073, type: !85)
!3662 = !DILocalVariable(name: "arg", arg: 2, scope: !3657, file: !188, line: 1073, type: !83)
!3663 = !DILocation(line: 0, scope: !3657)
!3664 = !DILocation(line: 0, scope: !3636, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 1075, column: 10, scope: !3657)
!3666 = !DILocation(line: 1063, column: 10, scope: !3636, inlinedAt: !3665)
!3667 = !DILocation(line: 1075, column: 3, scope: !3657)
!3668 = distinct !DISubprogram(name: "quote", scope: !188, file: !188, line: 1079, type: !3669, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3671)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!83, !83}
!3671 = !{!3672}
!3672 = !DILocalVariable(name: "arg", arg: 1, scope: !3668, file: !188, line: 1079, type: !83)
!3673 = !DILocation(line: 0, scope: !3668)
!3674 = !DILocation(line: 0, scope: !3657, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 1081, column: 10, scope: !3668)
!3676 = !DILocation(line: 0, scope: !3636, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 1075, column: 10, scope: !3657, inlinedAt: !3675)
!3678 = !DILocation(line: 1063, column: 10, scope: !3636, inlinedAt: !3677)
!3679 = !DILocation(line: 1081, column: 3, scope: !3668)
!3680 = distinct !DISubprogram(name: "version_etc_arn", scope: !259, file: !259, line: 61, type: !3681, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !3717)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{null, !3683, !83, !83, !83, !1455, !76}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1107, line: 7, baseType: !3685)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !794, line: 49, size: 1728, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3685, file: !794, line: 51, baseType: !85, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3685, file: !794, line: 54, baseType: !81, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3685, file: !794, line: 55, baseType: !81, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3685, file: !794, line: 56, baseType: !81, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3685, file: !794, line: 57, baseType: !81, size: 64, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3685, file: !794, line: 58, baseType: !81, size: 64, offset: 320)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3685, file: !794, line: 59, baseType: !81, size: 64, offset: 384)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3685, file: !794, line: 60, baseType: !81, size: 64, offset: 448)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3685, file: !794, line: 61, baseType: !81, size: 64, offset: 512)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3685, file: !794, line: 64, baseType: !81, size: 64, offset: 576)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3685, file: !794, line: 65, baseType: !81, size: 64, offset: 640)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3685, file: !794, line: 66, baseType: !81, size: 64, offset: 704)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3685, file: !794, line: 68, baseType: !809, size: 64, offset: 768)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3685, file: !794, line: 70, baseType: !3701, size: 64, offset: 832)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3685, file: !794, line: 72, baseType: !85, size: 32, offset: 896)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3685, file: !794, line: 73, baseType: !85, size: 32, offset: 928)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3685, file: !794, line: 74, baseType: !815, size: 64, offset: 960)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3685, file: !794, line: 77, baseType: !86, size: 16, offset: 1024)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3685, file: !794, line: 78, baseType: !820, size: 8, offset: 1040)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3685, file: !794, line: 79, baseType: !822, size: 8, offset: 1048)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3685, file: !794, line: 81, baseType: !826, size: 64, offset: 1088)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3685, file: !794, line: 89, baseType: !829, size: 64, offset: 1152)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3685, file: !794, line: 91, baseType: !831, size: 64, offset: 1216)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3685, file: !794, line: 92, baseType: !834, size: 64, offset: 1280)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3685, file: !794, line: 93, baseType: !3701, size: 64, offset: 1344)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3685, file: !794, line: 94, baseType: !74, size: 64, offset: 1408)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3685, file: !794, line: 95, baseType: !76, size: 64, offset: 1472)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3685, file: !794, line: 96, baseType: !85, size: 32, offset: 1536)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3685, file: !794, line: 98, baseType: !841, size: 160, offset: 1568)
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723}
!3718 = !DILocalVariable(name: "stream", arg: 1, scope: !3680, file: !259, line: 61, type: !3683)
!3719 = !DILocalVariable(name: "command_name", arg: 2, scope: !3680, file: !259, line: 62, type: !83)
!3720 = !DILocalVariable(name: "package", arg: 3, scope: !3680, file: !259, line: 62, type: !83)
!3721 = !DILocalVariable(name: "version", arg: 4, scope: !3680, file: !259, line: 63, type: !83)
!3722 = !DILocalVariable(name: "authors", arg: 5, scope: !3680, file: !259, line: 64, type: !1455)
!3723 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3680, file: !259, line: 64, type: !76)
!3724 = !DILocation(line: 0, scope: !3680)
!3725 = !DILocation(line: 66, column: 7, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3680, file: !259, line: 66, column: 7)
!3727 = !DILocation(line: 66, column: 7, scope: !3680)
!3728 = !DILocation(line: 67, column: 5, scope: !3726)
!3729 = !DILocation(line: 69, column: 5, scope: !3726)
!3730 = !DILocation(line: 83, column: 3, scope: !3680)
!3731 = !DILocation(line: 85, column: 3, scope: !3680)
!3732 = !DILocation(line: 88, column: 3, scope: !3680)
!3733 = !DILocation(line: 95, column: 3, scope: !3680)
!3734 = !DILocation(line: 97, column: 3, scope: !3680)
!3735 = !DILocation(line: 105, column: 7, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3680, file: !259, line: 98, column: 5)
!3737 = !DILocation(line: 106, column: 7, scope: !3736)
!3738 = !DILocation(line: 109, column: 7, scope: !3736)
!3739 = !DILocation(line: 110, column: 7, scope: !3736)
!3740 = !DILocation(line: 113, column: 7, scope: !3736)
!3741 = !DILocation(line: 115, column: 7, scope: !3736)
!3742 = !DILocation(line: 120, column: 7, scope: !3736)
!3743 = !DILocation(line: 122, column: 7, scope: !3736)
!3744 = !DILocation(line: 127, column: 7, scope: !3736)
!3745 = !DILocation(line: 129, column: 7, scope: !3736)
!3746 = !DILocation(line: 134, column: 7, scope: !3736)
!3747 = !DILocation(line: 137, column: 7, scope: !3736)
!3748 = !DILocation(line: 142, column: 7, scope: !3736)
!3749 = !DILocation(line: 145, column: 7, scope: !3736)
!3750 = !DILocation(line: 150, column: 7, scope: !3736)
!3751 = !DILocation(line: 154, column: 7, scope: !3736)
!3752 = !DILocation(line: 159, column: 7, scope: !3736)
!3753 = !DILocation(line: 163, column: 7, scope: !3736)
!3754 = !DILocation(line: 170, column: 7, scope: !3736)
!3755 = !DILocation(line: 174, column: 7, scope: !3736)
!3756 = !DILocation(line: 176, column: 1, scope: !3680)
!3757 = distinct !DISubprogram(name: "version_etc_ar", scope: !259, file: !259, line: 183, type: !3758, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{null, !3683, !83, !83, !83, !1455}
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3766}
!3761 = !DILocalVariable(name: "stream", arg: 1, scope: !3757, file: !259, line: 183, type: !3683)
!3762 = !DILocalVariable(name: "command_name", arg: 2, scope: !3757, file: !259, line: 184, type: !83)
!3763 = !DILocalVariable(name: "package", arg: 3, scope: !3757, file: !259, line: 184, type: !83)
!3764 = !DILocalVariable(name: "version", arg: 4, scope: !3757, file: !259, line: 185, type: !83)
!3765 = !DILocalVariable(name: "authors", arg: 5, scope: !3757, file: !259, line: 185, type: !1455)
!3766 = !DILocalVariable(name: "n_authors", scope: !3757, file: !259, line: 187, type: !76)
!3767 = !DILocation(line: 0, scope: !3757)
!3768 = !DILocation(line: 189, column: 8, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3757, file: !259, line: 189, column: 3)
!3770 = !DILocation(line: 0, scope: !3769)
!3771 = !DILocation(line: 189, column: 23, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3769, file: !259, line: 189, column: 3)
!3773 = !DILocation(line: 189, column: 3, scope: !3769)
!3774 = !DILocation(line: 189, column: 52, scope: !3772)
!3775 = distinct !{!3775, !3773, !3776, !764}
!3776 = !DILocation(line: 190, column: 5, scope: !3769)
!3777 = !DILocation(line: 191, column: 3, scope: !3757)
!3778 = !DILocation(line: 192, column: 1, scope: !3757)
!3779 = distinct !DISubprogram(name: "version_etc_va", scope: !259, file: !259, line: 199, type: !3780, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !3789)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{null, !3683, !83, !83, !83, !3782}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3784)
!3784 = !{!3785, !3786, !3787, !3788}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3783, file: !259, line: 192, baseType: !6, size: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3783, file: !259, line: 192, baseType: !6, size: 32, offset: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3783, file: !259, line: 192, baseType: !74, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3783, file: !259, line: 192, baseType: !74, size: 64, offset: 128)
!3789 = !{!3790, !3791, !3792, !3793, !3794, !3795, !3796}
!3790 = !DILocalVariable(name: "stream", arg: 1, scope: !3779, file: !259, line: 199, type: !3683)
!3791 = !DILocalVariable(name: "command_name", arg: 2, scope: !3779, file: !259, line: 200, type: !83)
!3792 = !DILocalVariable(name: "package", arg: 3, scope: !3779, file: !259, line: 200, type: !83)
!3793 = !DILocalVariable(name: "version", arg: 4, scope: !3779, file: !259, line: 201, type: !83)
!3794 = !DILocalVariable(name: "authors", arg: 5, scope: !3779, file: !259, line: 201, type: !3782)
!3795 = !DILocalVariable(name: "n_authors", scope: !3779, file: !259, line: 203, type: !76)
!3796 = !DILocalVariable(name: "authtab", scope: !3779, file: !259, line: 204, type: !3797)
!3797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 640, elements: !201)
!3798 = !DILocation(line: 0, scope: !3779)
!3799 = !DILocation(line: 204, column: 3, scope: !3779)
!3800 = !DILocation(line: 204, column: 15, scope: !3779)
!3801 = !DILocation(line: 208, column: 35, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !259, line: 206, column: 3)
!3803 = distinct !DILexicalBlock(scope: !3779, file: !259, line: 206, column: 3)
!3804 = !DILocation(line: 208, column: 14, scope: !3802)
!3805 = !DILocation(line: 208, column: 33, scope: !3802)
!3806 = !DILocation(line: 208, column: 67, scope: !3802)
!3807 = !DILocation(line: 206, column: 3, scope: !3803)
!3808 = !DILocation(line: 0, scope: !3803)
!3809 = !DILocation(line: 211, column: 3, scope: !3779)
!3810 = !DILocation(line: 213, column: 1, scope: !3779)
!3811 = distinct !DISubprogram(name: "version_etc", scope: !259, file: !259, line: 230, type: !3812, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !3814)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{null, !3683, !83, !83, !83, null}
!3814 = !{!3815, !3816, !3817, !3818, !3819}
!3815 = !DILocalVariable(name: "stream", arg: 1, scope: !3811, file: !259, line: 230, type: !3683)
!3816 = !DILocalVariable(name: "command_name", arg: 2, scope: !3811, file: !259, line: 231, type: !83)
!3817 = !DILocalVariable(name: "package", arg: 3, scope: !3811, file: !259, line: 231, type: !83)
!3818 = !DILocalVariable(name: "version", arg: 4, scope: !3811, file: !259, line: 232, type: !83)
!3819 = !DILocalVariable(name: "authors", scope: !3811, file: !259, line: 234, type: !3820)
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !789, line: 52, baseType: !3821)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3822, line: 32, baseType: !3823)
!3822 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !259, baseType: !3824)
!3824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3783, size: 192, elements: !823)
!3825 = !DILocation(line: 0, scope: !3811)
!3826 = !DILocation(line: 234, column: 3, scope: !3811)
!3827 = !DILocation(line: 234, column: 11, scope: !3811)
!3828 = !DILocation(line: 236, column: 3, scope: !3811)
!3829 = !DILocation(line: 237, column: 3, scope: !3811)
!3830 = !DILocation(line: 238, column: 3, scope: !3811)
!3831 = !DILocation(line: 239, column: 1, scope: !3811)
!3832 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !259, file: !259, line: 242, type: !164, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !152)
!3833 = !DILocation(line: 244, column: 3, scope: !3832)
!3834 = !DILocation(line: 249, column: 3, scope: !3832)
!3835 = !DILocation(line: 255, column: 3, scope: !3832)
!3836 = !DILocation(line: 260, column: 3, scope: !3832)
!3837 = !DILocation(line: 262, column: 1, scope: !3832)
!3838 = distinct !DISubprogram(name: "xnmalloc", scope: !269, file: !269, line: 99, type: !3839, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !3841)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!74, !76, !76}
!3841 = !{!3842, !3843}
!3842 = !DILocalVariable(name: "n", arg: 1, scope: !3838, file: !269, line: 99, type: !76)
!3843 = !DILocalVariable(name: "s", arg: 2, scope: !3838, file: !269, line: 99, type: !76)
!3844 = !DILocation(line: 0, scope: !3838)
!3845 = !DILocation(line: 101, column: 7, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3838, file: !269, line: 101, column: 7)
!3847 = !DILocation(line: 101, column: 7, scope: !3838)
!3848 = !DILocation(line: 102, column: 5, scope: !3846)
!3849 = !DILocation(line: 103, column: 21, scope: !3838)
!3850 = !DILocalVariable(name: "n", arg: 1, scope: !3851, file: !266, line: 39, type: !76)
!3851 = distinct !DISubprogram(name: "xmalloc", scope: !266, file: !266, line: 39, type: !3852, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!74, !76}
!3854 = !{!3850, !3855}
!3855 = !DILocalVariable(name: "p", scope: !3851, file: !266, line: 41, type: !74)
!3856 = !DILocation(line: 0, scope: !3851, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 103, column: 10, scope: !3838)
!3858 = !DILocation(line: 41, column: 13, scope: !3851, inlinedAt: !3857)
!3859 = !DILocation(line: 42, column: 8, scope: !3860, inlinedAt: !3857)
!3860 = distinct !DILexicalBlock(scope: !3851, file: !266, line: 42, column: 7)
!3861 = !DILocation(line: 42, column: 10, scope: !3860, inlinedAt: !3857)
!3862 = !DILocation(line: 43, column: 5, scope: !3860, inlinedAt: !3857)
!3863 = !DILocation(line: 103, column: 3, scope: !3838)
!3864 = !DILocation(line: 0, scope: !3851)
!3865 = !DILocation(line: 41, column: 13, scope: !3851)
!3866 = !DILocation(line: 42, column: 8, scope: !3860)
!3867 = !DILocation(line: 42, column: 10, scope: !3860)
!3868 = !DILocation(line: 43, column: 5, scope: !3860)
!3869 = !DILocation(line: 44, column: 3, scope: !3851)
!3870 = distinct !DISubprogram(name: "xnrealloc", scope: !269, file: !269, line: 112, type: !3871, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !3873)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!74, !74, !76, !76}
!3873 = !{!3874, !3875, !3876}
!3874 = !DILocalVariable(name: "p", arg: 1, scope: !3870, file: !269, line: 112, type: !74)
!3875 = !DILocalVariable(name: "n", arg: 2, scope: !3870, file: !269, line: 112, type: !76)
!3876 = !DILocalVariable(name: "s", arg: 3, scope: !3870, file: !269, line: 112, type: !76)
!3877 = !DILocation(line: 0, scope: !3870)
!3878 = !DILocation(line: 114, column: 7, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3870, file: !269, line: 114, column: 7)
!3880 = !DILocation(line: 114, column: 7, scope: !3870)
!3881 = !DILocation(line: 115, column: 5, scope: !3879)
!3882 = !DILocation(line: 116, column: 25, scope: !3870)
!3883 = !DILocalVariable(name: "p", arg: 1, scope: !3884, file: !266, line: 51, type: !74)
!3884 = distinct !DISubprogram(name: "xrealloc", scope: !266, file: !266, line: 51, type: !3885, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!74, !74, !76}
!3887 = !{!3883, !3888}
!3888 = !DILocalVariable(name: "n", arg: 2, scope: !3884, file: !266, line: 51, type: !76)
!3889 = !DILocation(line: 0, scope: !3884, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 116, column: 10, scope: !3870)
!3891 = !DILocation(line: 53, column: 8, scope: !3892, inlinedAt: !3890)
!3892 = distinct !DILexicalBlock(scope: !3884, file: !266, line: 53, column: 7)
!3893 = !DILocation(line: 53, column: 10, scope: !3892, inlinedAt: !3890)
!3894 = !DILocation(line: 57, column: 7, scope: !3895, inlinedAt: !3890)
!3895 = distinct !DILexicalBlock(scope: !3892, file: !266, line: 54, column: 5)
!3896 = !DILocation(line: 58, column: 7, scope: !3895, inlinedAt: !3890)
!3897 = !DILocation(line: 61, column: 7, scope: !3884, inlinedAt: !3890)
!3898 = !DILocation(line: 62, column: 8, scope: !3899, inlinedAt: !3890)
!3899 = distinct !DILexicalBlock(scope: !3884, file: !266, line: 62, column: 7)
!3900 = !DILocation(line: 62, column: 10, scope: !3899, inlinedAt: !3890)
!3901 = !DILocation(line: 63, column: 5, scope: !3899, inlinedAt: !3890)
!3902 = !DILocation(line: 116, column: 3, scope: !3870)
!3903 = !DILocation(line: 0, scope: !3884)
!3904 = !DILocation(line: 53, column: 8, scope: !3892)
!3905 = !DILocation(line: 53, column: 10, scope: !3892)
!3906 = !DILocation(line: 57, column: 7, scope: !3895)
!3907 = !DILocation(line: 58, column: 7, scope: !3895)
!3908 = !DILocation(line: 61, column: 7, scope: !3884)
!3909 = !DILocation(line: 62, column: 8, scope: !3899)
!3910 = !DILocation(line: 62, column: 10, scope: !3899)
!3911 = !DILocation(line: 63, column: 5, scope: !3899)
!3912 = !DILocation(line: 65, column: 1, scope: !3884)
!3913 = !DILocation(line: 0, scope: !270)
!3914 = !DILocation(line: 176, column: 14, scope: !270)
!3915 = !DILocation(line: 178, column: 9, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !270, file: !269, line: 178, column: 7)
!3917 = !DILocation(line: 178, column: 7, scope: !270)
!3918 = !DILocation(line: 180, column: 13, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !269, line: 180, column: 11)
!3920 = distinct !DILexicalBlock(scope: !3916, file: !269, line: 179, column: 5)
!3921 = !DILocation(line: 180, column: 11, scope: !3920)
!3922 = !DILocation(line: 188, column: 30, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3919, file: !269, line: 181, column: 9)
!3924 = !DILocation(line: 189, column: 16, scope: !3923)
!3925 = !DILocation(line: 189, column: 13, scope: !3923)
!3926 = !DILocation(line: 190, column: 9, scope: !3923)
!3927 = !DILocation(line: 191, column: 11, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3920, file: !269, line: 191, column: 11)
!3929 = !DILocation(line: 191, column: 11, scope: !3920)
!3930 = !DILocation(line: 206, column: 7, scope: !270)
!3931 = !DILocation(line: 207, column: 25, scope: !270)
!3932 = !DILocation(line: 0, scope: !3884, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 207, column: 10, scope: !270)
!3934 = !DILocation(line: 53, column: 10, scope: !3892, inlinedAt: !3933)
!3935 = !DILocation(line: 192, column: 9, scope: !3928)
!3936 = !DILocation(line: 200, column: 69, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3938, file: !269, line: 200, column: 11)
!3938 = distinct !DILexicalBlock(scope: !3916, file: !269, line: 195, column: 5)
!3939 = !DILocation(line: 201, column: 11, scope: !3937)
!3940 = !DILocation(line: 200, column: 11, scope: !3938)
!3941 = !DILocation(line: 202, column: 9, scope: !3937)
!3942 = !DILocation(line: 203, column: 14, scope: !3938)
!3943 = !DILocation(line: 203, column: 18, scope: !3938)
!3944 = !DILocation(line: 203, column: 9, scope: !3938)
!3945 = !DILocation(line: 53, column: 8, scope: !3892, inlinedAt: !3933)
!3946 = !DILocation(line: 57, column: 7, scope: !3895, inlinedAt: !3933)
!3947 = !DILocation(line: 58, column: 7, scope: !3895, inlinedAt: !3933)
!3948 = !DILocation(line: 61, column: 7, scope: !3884, inlinedAt: !3933)
!3949 = !DILocation(line: 62, column: 8, scope: !3899, inlinedAt: !3933)
!3950 = !DILocation(line: 62, column: 10, scope: !3899, inlinedAt: !3933)
!3951 = !DILocation(line: 63, column: 5, scope: !3899, inlinedAt: !3933)
!3952 = !DILocation(line: 207, column: 3, scope: !270)
!3953 = distinct !DISubprogram(name: "xcharalloc", scope: !269, file: !269, line: 216, type: !3093, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !3954)
!3954 = !{!3955}
!3955 = !DILocalVariable(name: "n", arg: 1, scope: !3953, file: !269, line: 216, type: !76)
!3956 = !DILocation(line: 0, scope: !3953)
!3957 = !DILocation(line: 0, scope: !3851, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 218, column: 10, scope: !3953)
!3959 = !DILocation(line: 41, column: 13, scope: !3851, inlinedAt: !3958)
!3960 = !DILocation(line: 42, column: 8, scope: !3860, inlinedAt: !3958)
!3961 = !DILocation(line: 42, column: 10, scope: !3860, inlinedAt: !3958)
!3962 = !DILocation(line: 43, column: 5, scope: !3860, inlinedAt: !3958)
!3963 = !DILocation(line: 218, column: 3, scope: !3953)
!3964 = distinct !DISubprogram(name: "x2realloc", scope: !266, file: !266, line: 74, type: !3965, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !3967)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!74, !74, !75}
!3967 = !{!3968, !3969}
!3968 = !DILocalVariable(name: "p", arg: 1, scope: !3964, file: !266, line: 74, type: !74)
!3969 = !DILocalVariable(name: "pn", arg: 2, scope: !3964, file: !266, line: 74, type: !75)
!3970 = !DILocation(line: 0, scope: !3964)
!3971 = !DILocation(line: 0, scope: !270, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 76, column: 10, scope: !3964)
!3973 = !DILocation(line: 176, column: 14, scope: !270, inlinedAt: !3972)
!3974 = !DILocation(line: 178, column: 9, scope: !3916, inlinedAt: !3972)
!3975 = !DILocation(line: 178, column: 7, scope: !270, inlinedAt: !3972)
!3976 = !DILocation(line: 180, column: 13, scope: !3919, inlinedAt: !3972)
!3977 = !DILocation(line: 180, column: 11, scope: !3920, inlinedAt: !3972)
!3978 = !DILocation(line: 191, column: 11, scope: !3928, inlinedAt: !3972)
!3979 = !DILocation(line: 191, column: 11, scope: !3920, inlinedAt: !3972)
!3980 = !DILocation(line: 192, column: 9, scope: !3928, inlinedAt: !3972)
!3981 = !DILocation(line: 201, column: 11, scope: !3937, inlinedAt: !3972)
!3982 = !DILocation(line: 200, column: 11, scope: !3938, inlinedAt: !3972)
!3983 = !DILocation(line: 202, column: 9, scope: !3937, inlinedAt: !3972)
!3984 = !DILocation(line: 203, column: 14, scope: !3938, inlinedAt: !3972)
!3985 = !DILocation(line: 203, column: 18, scope: !3938, inlinedAt: !3972)
!3986 = !DILocation(line: 203, column: 9, scope: !3938, inlinedAt: !3972)
!3987 = !DILocation(line: 0, scope: !3884, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 207, column: 10, scope: !270, inlinedAt: !3972)
!3989 = !DILocation(line: 53, column: 10, scope: !3892, inlinedAt: !3988)
!3990 = !DILocation(line: 206, column: 7, scope: !270, inlinedAt: !3972)
!3991 = !DILocation(line: 61, column: 7, scope: !3884, inlinedAt: !3988)
!3992 = !DILocation(line: 62, column: 8, scope: !3899, inlinedAt: !3988)
!3993 = !DILocation(line: 62, column: 10, scope: !3899, inlinedAt: !3988)
!3994 = !DILocation(line: 63, column: 5, scope: !3899, inlinedAt: !3988)
!3995 = !DILocation(line: 76, column: 3, scope: !3964)
!3996 = distinct !DISubprogram(name: "xzalloc", scope: !266, file: !266, line: 84, type: !3852, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !3997)
!3997 = !{!3998}
!3998 = !DILocalVariable(name: "n", arg: 1, scope: !3996, file: !266, line: 84, type: !76)
!3999 = !DILocation(line: 0, scope: !3996)
!4000 = !DILocalVariable(name: "n", arg: 1, scope: !4001, file: !266, line: 93, type: !76)
!4001 = distinct !DISubprogram(name: "xcalloc", scope: !266, file: !266, line: 93, type: !3839, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !4002)
!4002 = !{!4000, !4003, !4004}
!4003 = !DILocalVariable(name: "s", arg: 2, scope: !4001, file: !266, line: 93, type: !76)
!4004 = !DILocalVariable(name: "p", scope: !4001, file: !266, line: 95, type: !74)
!4005 = !DILocation(line: 0, scope: !4001, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 86, column: 10, scope: !3996)
!4007 = !DILocation(line: 100, column: 7, scope: !4008, inlinedAt: !4006)
!4008 = distinct !DILexicalBlock(scope: !4001, file: !266, line: 100, column: 7)
!4009 = !DILocation(line: 101, column: 7, scope: !4008, inlinedAt: !4006)
!4010 = !DILocation(line: 101, column: 18, scope: !4008, inlinedAt: !4006)
!4011 = !DILocation(line: 101, column: 16, scope: !4008, inlinedAt: !4006)
!4012 = !DILocation(line: 100, column: 7, scope: !4001, inlinedAt: !4006)
!4013 = !DILocation(line: 102, column: 5, scope: !4008, inlinedAt: !4006)
!4014 = !DILocation(line: 86, column: 3, scope: !3996)
!4015 = !DILocation(line: 0, scope: !4001)
!4016 = !DILocation(line: 100, column: 7, scope: !4008)
!4017 = !DILocation(line: 101, column: 7, scope: !4008)
!4018 = !DILocation(line: 101, column: 18, scope: !4008)
!4019 = !DILocation(line: 101, column: 16, scope: !4008)
!4020 = !DILocation(line: 100, column: 7, scope: !4001)
!4021 = !DILocation(line: 102, column: 5, scope: !4008)
!4022 = !DILocation(line: 103, column: 3, scope: !4001)
!4023 = distinct !DISubprogram(name: "xmemdup", scope: !266, file: !266, line: 111, type: !4024, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !4026)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!74, !79, !76}
!4026 = !{!4027, !4028}
!4027 = !DILocalVariable(name: "p", arg: 1, scope: !4023, file: !266, line: 111, type: !79)
!4028 = !DILocalVariable(name: "s", arg: 2, scope: !4023, file: !266, line: 111, type: !76)
!4029 = !DILocation(line: 0, scope: !4023)
!4030 = !DILocation(line: 0, scope: !3851, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 113, column: 18, scope: !4023)
!4032 = !DILocation(line: 41, column: 13, scope: !3851, inlinedAt: !4031)
!4033 = !DILocation(line: 42, column: 8, scope: !3860, inlinedAt: !4031)
!4034 = !DILocation(line: 42, column: 10, scope: !3860, inlinedAt: !4031)
!4035 = !DILocation(line: 43, column: 5, scope: !3860, inlinedAt: !4031)
!4036 = !DILocalVariable(name: "__dest", arg: 1, scope: !4037, file: !1923, line: 26, type: !4040)
!4037 = distinct !DISubprogram(name: "memcpy", scope: !1923, file: !1923, line: 26, type: !4038, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !4042)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!74, !4040, !4041, !76}
!4040 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!4041 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!4042 = !{!4036, !4043, !4044}
!4043 = !DILocalVariable(name: "__src", arg: 2, scope: !4037, file: !1923, line: 26, type: !4041)
!4044 = !DILocalVariable(name: "__len", arg: 3, scope: !4037, file: !1923, line: 26, type: !76)
!4045 = !DILocation(line: 0, scope: !4037, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 113, column: 10, scope: !4023)
!4047 = !DILocation(line: 29, column: 10, scope: !4037, inlinedAt: !4046)
!4048 = !DILocation(line: 113, column: 3, scope: !4023)
!4049 = distinct !DISubprogram(name: "xstrdup", scope: !266, file: !266, line: 119, type: !1344, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !4050)
!4050 = !{!4051}
!4051 = !DILocalVariable(name: "string", arg: 1, scope: !4049, file: !266, line: 119, type: !83)
!4052 = !DILocation(line: 0, scope: !4049)
!4053 = !DILocation(line: 121, column: 27, scope: !4049)
!4054 = !DILocation(line: 121, column: 43, scope: !4049)
!4055 = !DILocation(line: 0, scope: !4023, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 121, column: 10, scope: !4049)
!4057 = !DILocation(line: 0, scope: !3851, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 113, column: 18, scope: !4023, inlinedAt: !4056)
!4059 = !DILocation(line: 41, column: 13, scope: !3851, inlinedAt: !4058)
!4060 = !DILocation(line: 42, column: 8, scope: !3860, inlinedAt: !4058)
!4061 = !DILocation(line: 42, column: 10, scope: !3860, inlinedAt: !4058)
!4062 = !DILocation(line: 43, column: 5, scope: !3860, inlinedAt: !4058)
!4063 = !DILocation(line: 0, scope: !4037, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 113, column: 10, scope: !4023, inlinedAt: !4056)
!4065 = !DILocation(line: 29, column: 10, scope: !4037, inlinedAt: !4064)
!4066 = !DILocation(line: 121, column: 3, scope: !4049)
!4067 = distinct !DISubprogram(name: "xalloc_die", scope: !282, file: !282, line: 32, type: !164, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !281, retainedNodes: !152)
!4068 = !DILocation(line: 34, column: 10, scope: !4067)
!4069 = !DILocation(line: 34, column: 33, scope: !4067)
!4070 = !DILocation(line: 34, column: 3, scope: !4067)
!4071 = !DILocation(line: 40, column: 3, scope: !4067)
!4072 = distinct !DISubprogram(name: "xstrtoumax", scope: !4073, file: !4073, line: 76, type: !4074, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !4078)
!4073 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!4076, !83, !851, !85, !4077, !83}
!4076 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !21, line: 38, baseType: !20)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!4078 = !{!4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4091, !4092, !4095, !4096}
!4079 = !DILocalVariable(name: "s", arg: 1, scope: !4072, file: !4073, line: 76, type: !83)
!4080 = !DILocalVariable(name: "ptr", arg: 2, scope: !4072, file: !4073, line: 76, type: !851)
!4081 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4072, file: !4073, line: 76, type: !85)
!4082 = !DILocalVariable(name: "val", arg: 4, scope: !4072, file: !4073, line: 77, type: !4077)
!4083 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4072, file: !4073, line: 77, type: !83)
!4084 = !DILocalVariable(name: "t_ptr", scope: !4072, file: !4073, line: 79, type: !81)
!4085 = !DILocalVariable(name: "p", scope: !4072, file: !4073, line: 80, type: !851)
!4086 = !DILocalVariable(name: "tmp", scope: !4072, file: !4073, line: 81, type: !870)
!4087 = !DILocalVariable(name: "err", scope: !4072, file: !4073, line: 82, type: !4076)
!4088 = !DILocalVariable(name: "q", scope: !4089, file: !4073, line: 92, type: !83)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !4073, line: 91, column: 5)
!4090 = distinct !DILexicalBlock(scope: !4072, file: !4073, line: 90, column: 7)
!4091 = !DILocalVariable(name: "ch", scope: !4089, file: !4073, line: 93, type: !87)
!4092 = !DILocalVariable(name: "base", scope: !4093, file: !4073, line: 129, type: !85)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !4073, line: 128, column: 5)
!4094 = distinct !DILexicalBlock(scope: !4072, file: !4073, line: 127, column: 7)
!4095 = !DILocalVariable(name: "suffixes", scope: !4093, file: !4073, line: 130, type: !85)
!4096 = !DILocalVariable(name: "overflow", scope: !4093, file: !4073, line: 131, type: !4076)
!4097 = !DILocation(line: 0, scope: !4072)
!4098 = !DILocation(line: 79, column: 3, scope: !4072)
!4099 = !DILocation(line: 84, column: 3, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4101, file: !4073, line: 84, column: 3)
!4101 = distinct !DILexicalBlock(scope: !4072, file: !4073, line: 84, column: 3)
!4102 = !DILocation(line: 86, column: 8, scope: !4072)
!4103 = !DILocation(line: 88, column: 3, scope: !4072)
!4104 = !DILocation(line: 88, column: 9, scope: !4072)
!4105 = !DILocation(line: 0, scope: !4089)
!4106 = !DILocation(line: 94, column: 7, scope: !4089)
!4107 = !DILocation(line: 94, column: 14, scope: !4089)
!4108 = !DILocation(line: 95, column: 15, scope: !4089)
!4109 = distinct !{!4109, !4106, !4110, !764}
!4110 = !DILocation(line: 95, column: 17, scope: !4089)
!4111 = !DILocation(line: 96, column: 14, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4089, file: !4073, line: 96, column: 11)
!4113 = !DILocation(line: 100, column: 9, scope: !4072)
!4114 = !DILocation(line: 102, column: 7, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4072, file: !4073, line: 102, column: 7)
!4116 = !DILocation(line: 102, column: 10, scope: !4115)
!4117 = !DILocation(line: 102, column: 7, scope: !4072)
!4118 = !DILocation(line: 106, column: 11, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4120, file: !4073, line: 106, column: 11)
!4120 = distinct !DILexicalBlock(scope: !4115, file: !4073, line: 103, column: 5)
!4121 = !DILocation(line: 106, column: 26, scope: !4119)
!4122 = !DILocation(line: 106, column: 29, scope: !4119)
!4123 = !DILocation(line: 106, column: 33, scope: !4119)
!4124 = !DILocation(line: 106, column: 36, scope: !4119)
!4125 = !DILocation(line: 106, column: 11, scope: !4120)
!4126 = !DILocation(line: 111, column: 12, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4115, file: !4073, line: 111, column: 12)
!4128 = !DILocation(line: 111, column: 12, scope: !4115)
!4129 = !DILocation(line: 116, column: 5, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4127, file: !4073, line: 112, column: 5)
!4131 = !DILocation(line: 121, column: 8, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4072, file: !4073, line: 121, column: 7)
!4133 = !DILocation(line: 121, column: 7, scope: !4072)
!4134 = !DILocation(line: 123, column: 12, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4132, file: !4073, line: 122, column: 5)
!4136 = !DILocation(line: 124, column: 7, scope: !4135)
!4137 = !DILocation(line: 127, column: 7, scope: !4094)
!4138 = !DILocation(line: 127, column: 11, scope: !4094)
!4139 = !DILocation(line: 127, column: 7, scope: !4072)
!4140 = !DILocation(line: 0, scope: !4093)
!4141 = !DILocation(line: 133, column: 12, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4093, file: !4073, line: 133, column: 11)
!4143 = !DILocation(line: 133, column: 11, scope: !4093)
!4144 = !DILocation(line: 135, column: 16, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4142, file: !4073, line: 134, column: 9)
!4146 = !DILocation(line: 136, column: 22, scope: !4145)
!4147 = !DILocation(line: 136, column: 11, scope: !4145)
!4148 = !DILocation(line: 139, column: 7, scope: !4093)
!4149 = !DILocation(line: 151, column: 15, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !4073, line: 151, column: 15)
!4151 = distinct !DILexicalBlock(scope: !4093, file: !4073, line: 140, column: 9)
!4152 = !DILocation(line: 151, column: 15, scope: !4151)
!4153 = !DILocation(line: 152, column: 21, scope: !4150)
!4154 = !DILocation(line: 152, column: 13, scope: !4150)
!4155 = !DILocation(line: 155, column: 21, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !4073, line: 155, column: 21)
!4157 = distinct !DILexicalBlock(scope: !4150, file: !4073, line: 153, column: 15)
!4158 = !DILocation(line: 155, column: 29, scope: !4156)
!4159 = !DILocation(line: 155, column: 21, scope: !4157)
!4160 = !DILocation(line: 163, column: 17, scope: !4157)
!4161 = !DILocation(line: 167, column: 7, scope: !4093)
!4162 = !DILocalVariable(name: "err", scope: !4163, file: !4073, line: 67, type: !4076)
!4163 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4073, file: !4073, line: 65, type: !4164, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !4166)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!4076, !4077, !85, !85}
!4166 = !{!4167, !4168, !4169, !4162}
!4167 = !DILocalVariable(name: "x", arg: 1, scope: !4163, file: !4073, line: 65, type: !4077)
!4168 = !DILocalVariable(name: "base", arg: 2, scope: !4163, file: !4073, line: 65, type: !85)
!4169 = !DILocalVariable(name: "power", arg: 3, scope: !4163, file: !4073, line: 65, type: !85)
!4170 = !DILocation(line: 0, scope: !4163, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 221, column: 22, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4093, file: !4073, line: 168, column: 9)
!4173 = !DILocalVariable(name: "x", arg: 1, scope: !4174, file: !4073, line: 48, type: !4077)
!4174 = distinct !DISubprogram(name: "bkm_scale", scope: !4073, file: !4073, line: 48, type: !4175, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !4177)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!4076, !4077, !85}
!4177 = !{!4173, !4178}
!4178 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4174, file: !4073, line: 48, type: !85)
!4179 = !DILocation(line: 0, scope: !4174, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 69, column: 12, scope: !4163, inlinedAt: !4171)
!4181 = !DILocation(line: 55, column: 39, scope: !4182, inlinedAt: !4180)
!4182 = distinct !DILexicalBlock(scope: !4174, file: !4073, line: 55, column: 7)
!4183 = !DILocation(line: 55, column: 7, scope: !4174, inlinedAt: !4180)
!4184 = !DILocation(line: 69, column: 9, scope: !4163, inlinedAt: !4171)
!4185 = !DILocation(line: 229, column: 11, scope: !4093)
!4186 = !DILocation(line: 0, scope: !4163, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 217, column: 22, scope: !4172)
!4188 = !DILocation(line: 0, scope: !4174, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 69, column: 12, scope: !4163, inlinedAt: !4187)
!4190 = !DILocation(line: 55, column: 39, scope: !4182, inlinedAt: !4189)
!4191 = !DILocation(line: 55, column: 7, scope: !4174, inlinedAt: !4189)
!4192 = !DILocation(line: 69, column: 9, scope: !4163, inlinedAt: !4187)
!4193 = !DILocation(line: 0, scope: !4163, inlinedAt: !4194)
!4194 = distinct !DILocation(line: 204, column: 22, scope: !4172)
!4195 = !DILocation(line: 0, scope: !4174, inlinedAt: !4196)
!4196 = distinct !DILocation(line: 69, column: 12, scope: !4163, inlinedAt: !4194)
!4197 = !DILocation(line: 55, column: 39, scope: !4182, inlinedAt: !4196)
!4198 = !DILocation(line: 55, column: 7, scope: !4174, inlinedAt: !4196)
!4199 = !DILocation(line: 69, column: 9, scope: !4163, inlinedAt: !4194)
!4200 = !DILocation(line: 0, scope: !4163, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 185, column: 22, scope: !4172)
!4202 = !DILocation(line: 0, scope: !4174, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 69, column: 12, scope: !4163, inlinedAt: !4201)
!4204 = !DILocation(line: 55, column: 39, scope: !4182, inlinedAt: !4203)
!4205 = !DILocation(line: 55, column: 7, scope: !4174, inlinedAt: !4203)
!4206 = !DILocation(line: 69, column: 9, scope: !4163, inlinedAt: !4201)
!4207 = !DILocation(line: 0, scope: !4174, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 170, column: 22, scope: !4172)
!4209 = !DILocation(line: 55, column: 39, scope: !4182, inlinedAt: !4208)
!4210 = !DILocation(line: 55, column: 7, scope: !4174, inlinedAt: !4208)
!4211 = !DILocation(line: 171, column: 11, scope: !4172)
!4212 = !DILocation(line: 0, scope: !4174, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 177, column: 22, scope: !4172)
!4214 = !DILocation(line: 55, column: 39, scope: !4182, inlinedAt: !4213)
!4215 = !DILocation(line: 55, column: 7, scope: !4174, inlinedAt: !4213)
!4216 = !DILocation(line: 178, column: 11, scope: !4172)
!4217 = !DILocation(line: 0, scope: !4163, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 190, column: 22, scope: !4172)
!4219 = !DILocation(line: 0, scope: !4174, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 69, column: 12, scope: !4163, inlinedAt: !4218)
!4221 = !DILocation(line: 55, column: 39, scope: !4182, inlinedAt: !4220)
!4222 = !DILocation(line: 55, column: 7, scope: !4174, inlinedAt: !4220)
!4223 = !DILocation(line: 69, column: 9, scope: !4163, inlinedAt: !4218)
!4224 = !DILocation(line: 0, scope: !4163, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 200, column: 22, scope: !4172)
!4226 = !DILocation(line: 0, scope: !4174, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 69, column: 12, scope: !4163, inlinedAt: !4225)
!4228 = !DILocation(line: 55, column: 39, scope: !4182, inlinedAt: !4227)
!4229 = !DILocation(line: 55, column: 7, scope: !4174, inlinedAt: !4227)
!4230 = !DILocation(line: 69, column: 9, scope: !4163, inlinedAt: !4225)
!4231 = !DILocation(line: 0, scope: !4163, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 209, column: 22, scope: !4172)
!4233 = !DILocation(line: 0, scope: !4174, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 69, column: 12, scope: !4163, inlinedAt: !4232)
!4235 = !DILocation(line: 55, column: 39, scope: !4182, inlinedAt: !4234)
!4236 = !DILocation(line: 55, column: 7, scope: !4174, inlinedAt: !4234)
!4237 = !DILocation(line: 69, column: 9, scope: !4163, inlinedAt: !4232)
!4238 = !DILocation(line: 0, scope: !4174, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 213, column: 22, scope: !4172)
!4240 = !DILocation(line: 55, column: 39, scope: !4182, inlinedAt: !4239)
!4241 = !DILocation(line: 55, column: 7, scope: !4174, inlinedAt: !4239)
!4242 = !DILocation(line: 214, column: 11, scope: !4172)
!4243 = !DILocation(line: 225, column: 16, scope: !4172)
!4244 = !DILocation(line: 226, column: 22, scope: !4172)
!4245 = !DILocation(line: 226, column: 11, scope: !4172)
!4246 = !DILocation(line: 0, scope: !4163, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 195, column: 22, scope: !4172)
!4248 = !DILocation(line: 0, scope: !4174, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 69, column: 12, scope: !4163, inlinedAt: !4247)
!4250 = !DILocation(line: 55, column: 39, scope: !4182, inlinedAt: !4249)
!4251 = !DILocation(line: 55, column: 7, scope: !4174, inlinedAt: !4249)
!4252 = !DILocation(line: 0, scope: !4172)
!4253 = !DILocation(line: 230, column: 10, scope: !4093)
!4254 = !DILocation(line: 231, column: 11, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4093, file: !4073, line: 231, column: 11)
!4256 = !DILocation(line: 231, column: 11, scope: !4093)
!4257 = !DILocation(line: 107, column: 13, scope: !4119)
!4258 = !DILocation(line: 82, column: 16, scope: !4072)
!4259 = !DILocation(line: 235, column: 8, scope: !4072)
!4260 = !DILocation(line: 236, column: 3, scope: !4072)
!4261 = !DILocation(line: 237, column: 1, scope: !4072)
!4262 = !DISubprogram(name: "strtoumax", scope: !4263, file: !4263, line: 301, type: !4264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!4263 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!78, !83, !851, !85}
!4266 = distinct !DISubprogram(name: "rpl_calloc", scope: !288, file: !288, line: 42, type: !3839, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !4267)
!4267 = !{!4268, !4269, !4270, !4271}
!4268 = !DILocalVariable(name: "n", arg: 1, scope: !4266, file: !288, line: 42, type: !76)
!4269 = !DILocalVariable(name: "s", arg: 2, scope: !4266, file: !288, line: 42, type: !76)
!4270 = !DILocalVariable(name: "result", scope: !4266, file: !288, line: 44, type: !74)
!4271 = !DILocalVariable(name: "bytes", scope: !4272, file: !288, line: 56, type: !76)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !288, line: 53, column: 5)
!4273 = distinct !DILexicalBlock(scope: !4266, file: !288, line: 47, column: 7)
!4274 = !DILocation(line: 0, scope: !4266)
!4275 = !DILocation(line: 47, column: 9, scope: !4273)
!4276 = !DILocation(line: 47, column: 14, scope: !4273)
!4277 = !DILocation(line: 0, scope: !4272)
!4278 = !DILocation(line: 57, column: 21, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4272, file: !288, line: 57, column: 11)
!4280 = !DILocation(line: 57, column: 11, scope: !4272)
!4281 = !DILocation(line: 59, column: 11, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4279, file: !288, line: 58, column: 9)
!4283 = !DILocation(line: 59, column: 17, scope: !4282)
!4284 = !DILocation(line: 65, column: 12, scope: !4266)
!4285 = !DILocation(line: 72, column: 3, scope: !4266)
!4286 = !DILocation(line: 73, column: 1, scope: !4266)
!4287 = distinct !DISubprogram(name: "rpl_fclose", scope: !290, file: !290, line: 58, type: !4288, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !4324)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!85, !4290}
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1107, line: 7, baseType: !4292)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !794, line: 49, size: 1728, elements: !4293)
!4293 = !{!4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4292, file: !794, line: 51, baseType: !85, size: 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4292, file: !794, line: 54, baseType: !81, size: 64, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4292, file: !794, line: 55, baseType: !81, size: 64, offset: 128)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4292, file: !794, line: 56, baseType: !81, size: 64, offset: 192)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4292, file: !794, line: 57, baseType: !81, size: 64, offset: 256)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4292, file: !794, line: 58, baseType: !81, size: 64, offset: 320)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4292, file: !794, line: 59, baseType: !81, size: 64, offset: 384)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4292, file: !794, line: 60, baseType: !81, size: 64, offset: 448)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4292, file: !794, line: 61, baseType: !81, size: 64, offset: 512)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4292, file: !794, line: 64, baseType: !81, size: 64, offset: 576)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4292, file: !794, line: 65, baseType: !81, size: 64, offset: 640)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4292, file: !794, line: 66, baseType: !81, size: 64, offset: 704)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4292, file: !794, line: 68, baseType: !809, size: 64, offset: 768)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4292, file: !794, line: 70, baseType: !4308, size: 64, offset: 832)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4292, file: !794, line: 72, baseType: !85, size: 32, offset: 896)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4292, file: !794, line: 73, baseType: !85, size: 32, offset: 928)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4292, file: !794, line: 74, baseType: !815, size: 64, offset: 960)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4292, file: !794, line: 77, baseType: !86, size: 16, offset: 1024)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4292, file: !794, line: 78, baseType: !820, size: 8, offset: 1040)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4292, file: !794, line: 79, baseType: !822, size: 8, offset: 1048)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4292, file: !794, line: 81, baseType: !826, size: 64, offset: 1088)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4292, file: !794, line: 89, baseType: !829, size: 64, offset: 1152)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4292, file: !794, line: 91, baseType: !831, size: 64, offset: 1216)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4292, file: !794, line: 92, baseType: !834, size: 64, offset: 1280)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4292, file: !794, line: 93, baseType: !4308, size: 64, offset: 1344)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4292, file: !794, line: 94, baseType: !74, size: 64, offset: 1408)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4292, file: !794, line: 95, baseType: !76, size: 64, offset: 1472)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4292, file: !794, line: 96, baseType: !85, size: 32, offset: 1536)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4292, file: !794, line: 98, baseType: !841, size: 160, offset: 1568)
!4324 = !{!4325, !4326, !4327, !4328}
!4325 = !DILocalVariable(name: "fp", arg: 1, scope: !4287, file: !290, line: 58, type: !4290)
!4326 = !DILocalVariable(name: "saved_errno", scope: !4287, file: !290, line: 60, type: !85)
!4327 = !DILocalVariable(name: "fd", scope: !4287, file: !290, line: 61, type: !85)
!4328 = !DILocalVariable(name: "result", scope: !4287, file: !290, line: 62, type: !85)
!4329 = !DILocation(line: 0, scope: !4287)
!4330 = !DILocation(line: 65, column: 8, scope: !4287)
!4331 = !DILocation(line: 66, column: 10, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4287, file: !290, line: 66, column: 7)
!4333 = !DILocation(line: 66, column: 7, scope: !4287)
!4334 = !DILocation(line: 67, column: 12, scope: !4332)
!4335 = !DILocation(line: 67, column: 5, scope: !4332)
!4336 = !DILocation(line: 72, column: 9, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4287, file: !290, line: 72, column: 7)
!4338 = !DILocation(line: 72, column: 23, scope: !4337)
!4339 = !DILocation(line: 72, column: 33, scope: !4337)
!4340 = !DILocation(line: 72, column: 26, scope: !4337)
!4341 = !DILocation(line: 72, column: 59, scope: !4337)
!4342 = !DILocation(line: 73, column: 7, scope: !4337)
!4343 = !DILocation(line: 73, column: 10, scope: !4337)
!4344 = !DILocation(line: 72, column: 7, scope: !4287)
!4345 = !DILocation(line: 100, column: 12, scope: !4287)
!4346 = !DILocation(line: 105, column: 7, scope: !4287)
!4347 = !DILocation(line: 74, column: 19, scope: !4337)
!4348 = !DILocation(line: 105, column: 19, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4287, file: !290, line: 105, column: 7)
!4350 = !DILocation(line: 107, column: 13, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4349, file: !290, line: 106, column: 5)
!4352 = !DILocation(line: 109, column: 5, scope: !4351)
!4353 = !DILocation(line: 112, column: 1, scope: !4287)
!4354 = !DISubprogram(name: "fclose", scope: !789, file: !789, line: 213, type: !4355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!85, !4308}
!4357 = !DISubprogram(name: "lseek", scope: !1898, file: !1898, line: 334, type: !4358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!817, !85, !817, !85}
!4360 = distinct !DISubprogram(name: "rpl_fflush", scope: !292, file: !292, line: 129, type: !4361, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !4397)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!85, !4363}
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1107, line: 7, baseType: !4365)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !794, line: 49, size: 1728, elements: !4366)
!4366 = !{!4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4365, file: !794, line: 51, baseType: !85, size: 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4365, file: !794, line: 54, baseType: !81, size: 64, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4365, file: !794, line: 55, baseType: !81, size: 64, offset: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4365, file: !794, line: 56, baseType: !81, size: 64, offset: 192)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4365, file: !794, line: 57, baseType: !81, size: 64, offset: 256)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4365, file: !794, line: 58, baseType: !81, size: 64, offset: 320)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4365, file: !794, line: 59, baseType: !81, size: 64, offset: 384)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4365, file: !794, line: 60, baseType: !81, size: 64, offset: 448)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4365, file: !794, line: 61, baseType: !81, size: 64, offset: 512)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4365, file: !794, line: 64, baseType: !81, size: 64, offset: 576)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4365, file: !794, line: 65, baseType: !81, size: 64, offset: 640)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4365, file: !794, line: 66, baseType: !81, size: 64, offset: 704)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4365, file: !794, line: 68, baseType: !809, size: 64, offset: 768)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4365, file: !794, line: 70, baseType: !4381, size: 64, offset: 832)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4365, file: !794, line: 72, baseType: !85, size: 32, offset: 896)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4365, file: !794, line: 73, baseType: !85, size: 32, offset: 928)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4365, file: !794, line: 74, baseType: !815, size: 64, offset: 960)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4365, file: !794, line: 77, baseType: !86, size: 16, offset: 1024)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4365, file: !794, line: 78, baseType: !820, size: 8, offset: 1040)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4365, file: !794, line: 79, baseType: !822, size: 8, offset: 1048)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4365, file: !794, line: 81, baseType: !826, size: 64, offset: 1088)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4365, file: !794, line: 89, baseType: !829, size: 64, offset: 1152)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4365, file: !794, line: 91, baseType: !831, size: 64, offset: 1216)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4365, file: !794, line: 92, baseType: !834, size: 64, offset: 1280)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4365, file: !794, line: 93, baseType: !4381, size: 64, offset: 1344)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4365, file: !794, line: 94, baseType: !74, size: 64, offset: 1408)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4365, file: !794, line: 95, baseType: !76, size: 64, offset: 1472)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4365, file: !794, line: 96, baseType: !85, size: 32, offset: 1536)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4365, file: !794, line: 98, baseType: !841, size: 160, offset: 1568)
!4397 = !{!4398}
!4398 = !DILocalVariable(name: "stream", arg: 1, scope: !4360, file: !292, line: 129, type: !4363)
!4399 = !DILocation(line: 0, scope: !4360)
!4400 = !DILocation(line: 150, column: 14, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4360, file: !292, line: 150, column: 7)
!4402 = !DILocation(line: 150, column: 22, scope: !4401)
!4403 = !DILocation(line: 150, column: 27, scope: !4401)
!4404 = !DILocation(line: 150, column: 7, scope: !4360)
!4405 = !DILocation(line: 151, column: 12, scope: !4401)
!4406 = !DILocation(line: 151, column: 5, scope: !4401)
!4407 = !DILocalVariable(name: "fp", arg: 1, scope: !4408, file: !292, line: 41, type: !4363)
!4408 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !292, file: !292, line: 41, type: !4409, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !4411)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{null, !4363}
!4411 = !{!4407}
!4412 = !DILocation(line: 0, scope: !4408, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 156, column: 3, scope: !4360)
!4414 = !DILocation(line: 43, column: 11, scope: !4415, inlinedAt: !4413)
!4415 = distinct !DILexicalBlock(scope: !4408, file: !292, line: 43, column: 7)
!4416 = !DILocation(line: 43, column: 18, scope: !4415, inlinedAt: !4413)
!4417 = !DILocation(line: 43, column: 7, scope: !4408, inlinedAt: !4413)
!4418 = !DILocation(line: 45, column: 5, scope: !4415, inlinedAt: !4413)
!4419 = !DILocation(line: 158, column: 10, scope: !4360)
!4420 = !DILocation(line: 158, column: 3, scope: !4360)
!4421 = !DILocation(line: 235, column: 1, scope: !4360)
!4422 = !DISubprogram(name: "fflush", scope: !789, file: !789, line: 218, type: !4423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!85, !4381}
!4425 = distinct !DISubprogram(name: "rpl_fseeko", scope: !294, file: !294, line: 28, type: !4426, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !293, retainedNodes: !4462)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!85, !4428, !1698, !85}
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1107, line: 7, baseType: !4430)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !794, line: 49, size: 1728, elements: !4431)
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4430, file: !794, line: 51, baseType: !85, size: 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4430, file: !794, line: 54, baseType: !81, size: 64, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4430, file: !794, line: 55, baseType: !81, size: 64, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4430, file: !794, line: 56, baseType: !81, size: 64, offset: 192)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4430, file: !794, line: 57, baseType: !81, size: 64, offset: 256)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4430, file: !794, line: 58, baseType: !81, size: 64, offset: 320)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4430, file: !794, line: 59, baseType: !81, size: 64, offset: 384)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4430, file: !794, line: 60, baseType: !81, size: 64, offset: 448)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4430, file: !794, line: 61, baseType: !81, size: 64, offset: 512)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4430, file: !794, line: 64, baseType: !81, size: 64, offset: 576)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4430, file: !794, line: 65, baseType: !81, size: 64, offset: 640)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4430, file: !794, line: 66, baseType: !81, size: 64, offset: 704)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4430, file: !794, line: 68, baseType: !809, size: 64, offset: 768)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4430, file: !794, line: 70, baseType: !4446, size: 64, offset: 832)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4430, file: !794, line: 72, baseType: !85, size: 32, offset: 896)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4430, file: !794, line: 73, baseType: !85, size: 32, offset: 928)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4430, file: !794, line: 74, baseType: !815, size: 64, offset: 960)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4430, file: !794, line: 77, baseType: !86, size: 16, offset: 1024)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4430, file: !794, line: 78, baseType: !820, size: 8, offset: 1040)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4430, file: !794, line: 79, baseType: !822, size: 8, offset: 1048)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4430, file: !794, line: 81, baseType: !826, size: 64, offset: 1088)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4430, file: !794, line: 89, baseType: !829, size: 64, offset: 1152)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4430, file: !794, line: 91, baseType: !831, size: 64, offset: 1216)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4430, file: !794, line: 92, baseType: !834, size: 64, offset: 1280)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4430, file: !794, line: 93, baseType: !4446, size: 64, offset: 1344)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4430, file: !794, line: 94, baseType: !74, size: 64, offset: 1408)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4430, file: !794, line: 95, baseType: !76, size: 64, offset: 1472)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4430, file: !794, line: 96, baseType: !85, size: 32, offset: 1536)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4430, file: !794, line: 98, baseType: !841, size: 160, offset: 1568)
!4462 = !{!4463, !4464, !4465, !4466}
!4463 = !DILocalVariable(name: "fp", arg: 1, scope: !4425, file: !294, line: 28, type: !4428)
!4464 = !DILocalVariable(name: "offset", arg: 2, scope: !4425, file: !294, line: 28, type: !1698)
!4465 = !DILocalVariable(name: "whence", arg: 3, scope: !4425, file: !294, line: 28, type: !85)
!4466 = !DILocalVariable(name: "pos", scope: !4467, file: !294, line: 117, type: !1698)
!4467 = distinct !DILexicalBlock(scope: !4468, file: !294, line: 113, column: 5)
!4468 = distinct !DILexicalBlock(scope: !4425, file: !294, line: 52, column: 7)
!4469 = !DILocation(line: 0, scope: !4425)
!4470 = !DILocation(line: 52, column: 11, scope: !4468)
!4471 = !DILocation(line: 52, column: 31, scope: !4468)
!4472 = !DILocation(line: 52, column: 24, scope: !4468)
!4473 = !DILocation(line: 53, column: 7, scope: !4468)
!4474 = !DILocation(line: 53, column: 14, scope: !4468)
!4475 = !DILocation(line: 53, column: 35, scope: !4468)
!4476 = !{!1164, !711, i64 32}
!4477 = !DILocation(line: 53, column: 28, scope: !4468)
!4478 = !DILocation(line: 54, column: 7, scope: !4468)
!4479 = !DILocation(line: 54, column: 14, scope: !4468)
!4480 = !{!1164, !711, i64 72}
!4481 = !DILocation(line: 54, column: 28, scope: !4468)
!4482 = !DILocation(line: 52, column: 7, scope: !4425)
!4483 = !DILocation(line: 117, column: 26, scope: !4467)
!4484 = !DILocation(line: 117, column: 19, scope: !4467)
!4485 = !DILocation(line: 0, scope: !4467)
!4486 = !DILocation(line: 118, column: 15, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4467, file: !294, line: 118, column: 11)
!4488 = !DILocation(line: 118, column: 11, scope: !4467)
!4489 = !DILocation(line: 129, column: 11, scope: !4467)
!4490 = !DILocation(line: 129, column: 18, scope: !4467)
!4491 = !DILocation(line: 130, column: 11, scope: !4467)
!4492 = !DILocation(line: 130, column: 19, scope: !4467)
!4493 = !{!1164, !890, i64 144}
!4494 = !DILocation(line: 161, column: 7, scope: !4467)
!4495 = !DILocation(line: 163, column: 10, scope: !4425)
!4496 = !DILocation(line: 163, column: 3, scope: !4425)
!4497 = !DILocation(line: 164, column: 1, scope: !4425)
!4498 = !DISubprogram(name: "fseeko", scope: !789, file: !789, line: 712, type: !4499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!85, !4446, !817, !85}
!4501 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !296, file: !296, line: 86, type: !4502, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !295, retainedNodes: !4516)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!76, !4504, !83, !76, !4505}
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2380, line: 6, baseType: !4507)
!4507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2382, line: 21, baseType: !4508)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2382, line: 13, size: 64, elements: !4509)
!4509 = !{!4510, !4511}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4508, file: !2382, line: 15, baseType: !85, size: 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4508, file: !2382, line: 20, baseType: !4512, size: 32, offset: 32)
!4512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4508, file: !2382, line: 16, size: 32, elements: !4513)
!4513 = !{!4514, !4515}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4512, file: !2382, line: 18, baseType: !6, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4512, file: !2382, line: 19, baseType: !2391, size: 32)
!4516 = !{!4517, !4518, !4519, !4520, !4521, !4522, !4523}
!4517 = !DILocalVariable(name: "pwc", arg: 1, scope: !4501, file: !296, line: 86, type: !4504)
!4518 = !DILocalVariable(name: "s", arg: 2, scope: !4501, file: !296, line: 86, type: !83)
!4519 = !DILocalVariable(name: "n", arg: 3, scope: !4501, file: !296, line: 86, type: !76)
!4520 = !DILocalVariable(name: "ps", arg: 4, scope: !4501, file: !296, line: 86, type: !4505)
!4521 = !DILocalVariable(name: "ret", scope: !4501, file: !296, line: 88, type: !76)
!4522 = !DILocalVariable(name: "wc", scope: !4501, file: !296, line: 89, type: !2394)
!4523 = !DILocalVariable(name: "uc", scope: !4524, file: !296, line: 156, type: !87)
!4524 = distinct !DILexicalBlock(scope: !4525, file: !296, line: 155, column: 5)
!4525 = distinct !DILexicalBlock(scope: !4501, file: !296, line: 154, column: 7)
!4526 = !DILocation(line: 0, scope: !4501)
!4527 = !DILocation(line: 89, column: 3, scope: !4501)
!4528 = !DILocation(line: 105, column: 9, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4501, file: !296, line: 105, column: 7)
!4530 = !DILocation(line: 105, column: 7, scope: !4501)
!4531 = !DILocation(line: 145, column: 9, scope: !4501)
!4532 = !DILocation(line: 154, column: 19, scope: !4525)
!4533 = !DILocation(line: 154, column: 26, scope: !4525)
!4534 = !DILocation(line: 154, column: 41, scope: !4525)
!4535 = !DILocation(line: 154, column: 7, scope: !4501)
!4536 = !DILocation(line: 156, column: 26, scope: !4524)
!4537 = !DILocation(line: 0, scope: !4524)
!4538 = !DILocation(line: 157, column: 14, scope: !4524)
!4539 = !DILocation(line: 157, column: 12, scope: !4524)
!4540 = !DILocation(line: 163, column: 1, scope: !4501)
!4541 = !DISubprogram(name: "mbrtowc", scope: !3053, file: !3053, line: 296, type: !4542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!78, !116, !83, !78, !4544}
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4545 = distinct !DISubprogram(name: "close_stream", scope: !299, file: !299, line: 56, type: !4546, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !4582)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!85, !4548}
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1107, line: 7, baseType: !4550)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !794, line: 49, size: 1728, elements: !4551)
!4551 = !{!4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4550, file: !794, line: 51, baseType: !85, size: 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4550, file: !794, line: 54, baseType: !81, size: 64, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4550, file: !794, line: 55, baseType: !81, size: 64, offset: 128)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4550, file: !794, line: 56, baseType: !81, size: 64, offset: 192)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4550, file: !794, line: 57, baseType: !81, size: 64, offset: 256)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4550, file: !794, line: 58, baseType: !81, size: 64, offset: 320)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4550, file: !794, line: 59, baseType: !81, size: 64, offset: 384)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4550, file: !794, line: 60, baseType: !81, size: 64, offset: 448)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4550, file: !794, line: 61, baseType: !81, size: 64, offset: 512)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4550, file: !794, line: 64, baseType: !81, size: 64, offset: 576)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4550, file: !794, line: 65, baseType: !81, size: 64, offset: 640)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4550, file: !794, line: 66, baseType: !81, size: 64, offset: 704)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4550, file: !794, line: 68, baseType: !809, size: 64, offset: 768)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4550, file: !794, line: 70, baseType: !4566, size: 64, offset: 832)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4550, file: !794, line: 72, baseType: !85, size: 32, offset: 896)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4550, file: !794, line: 73, baseType: !85, size: 32, offset: 928)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4550, file: !794, line: 74, baseType: !815, size: 64, offset: 960)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4550, file: !794, line: 77, baseType: !86, size: 16, offset: 1024)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4550, file: !794, line: 78, baseType: !820, size: 8, offset: 1040)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4550, file: !794, line: 79, baseType: !822, size: 8, offset: 1048)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4550, file: !794, line: 81, baseType: !826, size: 64, offset: 1088)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4550, file: !794, line: 89, baseType: !829, size: 64, offset: 1152)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4550, file: !794, line: 91, baseType: !831, size: 64, offset: 1216)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4550, file: !794, line: 92, baseType: !834, size: 64, offset: 1280)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4550, file: !794, line: 93, baseType: !4566, size: 64, offset: 1344)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4550, file: !794, line: 94, baseType: !74, size: 64, offset: 1408)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4550, file: !794, line: 95, baseType: !76, size: 64, offset: 1472)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4550, file: !794, line: 96, baseType: !85, size: 32, offset: 1536)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4550, file: !794, line: 98, baseType: !841, size: 160, offset: 1568)
!4582 = !{!4583, !4584, !4586, !4587}
!4583 = !DILocalVariable(name: "stream", arg: 1, scope: !4545, file: !299, line: 56, type: !4548)
!4584 = !DILocalVariable(name: "some_pending", scope: !4545, file: !299, line: 58, type: !4585)
!4585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!4586 = !DILocalVariable(name: "prev_fail", scope: !4545, file: !299, line: 59, type: !4585)
!4587 = !DILocalVariable(name: "fclose_fail", scope: !4545, file: !299, line: 60, type: !4585)
!4588 = !DILocation(line: 0, scope: !4545)
!4589 = !DILocation(line: 58, column: 30, scope: !4545)
!4590 = !DILocalVariable(name: "__stream", arg: 1, scope: !4591, file: !1156, line: 135, type: !4548)
!4591 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1156, file: !1156, line: 135, type: !4546, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !4592)
!4592 = !{!4590}
!4593 = !DILocation(line: 0, scope: !4591, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 59, column: 27, scope: !4545)
!4595 = !DILocation(line: 137, column: 10, scope: !4591, inlinedAt: !4594)
!4596 = !DILocation(line: 59, column: 43, scope: !4545)
!4597 = !DILocation(line: 60, column: 29, scope: !4545)
!4598 = !DILocation(line: 60, column: 45, scope: !4545)
!4599 = !DILocation(line: 70, column: 17, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4545, file: !299, line: 70, column: 7)
!4601 = !DILocation(line: 58, column: 50, scope: !4545)
!4602 = !DILocation(line: 70, column: 33, scope: !4600)
!4603 = !DILocation(line: 70, column: 53, scope: !4600)
!4604 = !DILocation(line: 70, column: 59, scope: !4600)
!4605 = !DILocation(line: 70, column: 7, scope: !4545)
!4606 = !DILocation(line: 72, column: 11, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4600, file: !299, line: 71, column: 5)
!4608 = !DILocation(line: 73, column: 9, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4607, file: !299, line: 72, column: 11)
!4610 = !DILocation(line: 73, column: 15, scope: !4609)
!4611 = !DILocation(line: 78, column: 1, scope: !4545)
!4612 = distinct !DISubprogram(name: "hard_locale", scope: !301, file: !301, line: 27, type: !1833, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !300, retainedNodes: !4613)
!4613 = !{!4614, !4615}
!4614 = !DILocalVariable(name: "category", arg: 1, scope: !4612, file: !301, line: 27, type: !85)
!4615 = !DILocalVariable(name: "locale", scope: !4612, file: !301, line: 29, type: !4616)
!4616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 2056, elements: !4617)
!4617 = !{!4618}
!4618 = !DISubrange(count: 257)
!4619 = !DILocation(line: 0, scope: !4612)
!4620 = !DILocation(line: 29, column: 3, scope: !4612)
!4621 = !DILocation(line: 29, column: 8, scope: !4612)
!4622 = !DILocation(line: 31, column: 7, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4612, file: !301, line: 31, column: 7)
!4624 = !DILocation(line: 31, column: 7, scope: !4612)
!4625 = !DILocation(line: 34, column: 12, scope: !4612)
!4626 = !DILocation(line: 34, column: 38, scope: !4612)
!4627 = !DILocation(line: 34, column: 41, scope: !4612)
!4628 = !DILocation(line: 34, column: 66, scope: !4612)
!4629 = !DILocation(line: 35, column: 1, scope: !4612)
!4630 = distinct !DISubprogram(name: "locale_charset", scope: !303, file: !303, line: 831, type: !4631, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !302, retainedNodes: !4633)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!83}
!4633 = !{!4634}
!4634 = !DILocalVariable(name: "codeset", scope: !4630, file: !303, line: 833, type: !83)
!4635 = !DILocation(line: 847, column: 13, scope: !4630)
!4636 = !DILocation(line: 0, scope: !4630)
!4637 = !DILocation(line: 911, column: 15, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4630, file: !303, line: 911, column: 7)
!4639 = !DILocation(line: 911, column: 7, scope: !4630)
!4640 = !DILocation(line: 1070, column: 13, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4642, file: !303, line: 1070, column: 13)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !303, line: 1060, column: 7)
!4643 = distinct !DILexicalBlock(scope: !4630, file: !303, line: 1019, column: 3)
!4644 = !DILocation(line: 1070, column: 24, scope: !4641)
!4645 = !DILocation(line: 1070, column: 13, scope: !4642)
!4646 = !DILocation(line: 1158, column: 3, scope: !4630)
!4647 = !DISubprogram(name: "nl_langinfo", scope: !306, file: !306, line: 661, type: !4648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!81, !85}
!4650 = distinct !DISubprogram(name: "setlocale_null_r", scope: !692, file: !692, line: 269, type: !4651, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !4653)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!85, !85, !81, !76}
!4653 = !{!4654, !4655, !4656}
!4654 = !DILocalVariable(name: "category", arg: 1, scope: !4650, file: !692, line: 269, type: !85)
!4655 = !DILocalVariable(name: "buf", arg: 2, scope: !4650, file: !692, line: 269, type: !81)
!4656 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4650, file: !692, line: 269, type: !76)
!4657 = !DILocation(line: 0, scope: !4650)
!4658 = !DILocalVariable(name: "category", arg: 1, scope: !4659, file: !692, line: 91, type: !85)
!4659 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !692, file: !692, line: 91, type: !4651, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !4660)
!4660 = !{!4658, !4661, !4662, !4663, !4664}
!4661 = !DILocalVariable(name: "buf", arg: 2, scope: !4659, file: !692, line: 91, type: !81)
!4662 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4659, file: !692, line: 91, type: !76)
!4663 = !DILocalVariable(name: "result", scope: !4659, file: !692, line: 140, type: !83)
!4664 = !DILocalVariable(name: "length", scope: !4665, file: !692, line: 154, type: !76)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !692, line: 153, column: 5)
!4666 = distinct !DILexicalBlock(scope: !4659, file: !692, line: 142, column: 7)
!4667 = !DILocation(line: 0, scope: !4659, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 274, column: 10, scope: !4650)
!4669 = !DILocalVariable(name: "category", arg: 1, scope: !4670, file: !692, line: 60, type: !85)
!4670 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !692, file: !692, line: 60, type: !4671, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !4673)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!83, !85}
!4673 = !{!4669, !4674}
!4674 = !DILocalVariable(name: "result", scope: !4670, file: !692, line: 62, type: !83)
!4675 = !DILocation(line: 0, scope: !4670, inlinedAt: !4676)
!4676 = distinct !DILocation(line: 140, column: 24, scope: !4659, inlinedAt: !4668)
!4677 = !DILocation(line: 62, column: 24, scope: !4670, inlinedAt: !4676)
!4678 = !DILocation(line: 142, column: 14, scope: !4666, inlinedAt: !4668)
!4679 = !DILocation(line: 142, column: 7, scope: !4659, inlinedAt: !4668)
!4680 = !DILocation(line: 145, column: 19, scope: !4681, inlinedAt: !4668)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !692, line: 145, column: 11)
!4682 = distinct !DILexicalBlock(scope: !4666, file: !692, line: 143, column: 5)
!4683 = !DILocation(line: 145, column: 11, scope: !4682, inlinedAt: !4668)
!4684 = !DILocation(line: 149, column: 16, scope: !4681, inlinedAt: !4668)
!4685 = !DILocation(line: 149, column: 9, scope: !4681, inlinedAt: !4668)
!4686 = !DILocation(line: 154, column: 23, scope: !4665, inlinedAt: !4668)
!4687 = !DILocation(line: 0, scope: !4665, inlinedAt: !4668)
!4688 = !DILocation(line: 155, column: 18, scope: !4689, inlinedAt: !4668)
!4689 = distinct !DILexicalBlock(scope: !4665, file: !692, line: 155, column: 11)
!4690 = !DILocation(line: 155, column: 11, scope: !4665, inlinedAt: !4668)
!4691 = !DILocation(line: 157, column: 39, scope: !4692, inlinedAt: !4668)
!4692 = distinct !DILexicalBlock(scope: !4689, file: !692, line: 156, column: 9)
!4693 = !DILocalVariable(name: "__dest", arg: 1, scope: !4694, file: !1923, line: 26, type: !4040)
!4694 = distinct !DISubprogram(name: "memcpy", scope: !1923, file: !1923, line: 26, type: !4038, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !4695)
!4695 = !{!4693, !4696, !4697}
!4696 = !DILocalVariable(name: "__src", arg: 2, scope: !4694, file: !1923, line: 26, type: !4041)
!4697 = !DILocalVariable(name: "__len", arg: 3, scope: !4694, file: !1923, line: 26, type: !76)
!4698 = !DILocation(line: 0, scope: !4694, inlinedAt: !4699)
!4699 = distinct !DILocation(line: 157, column: 11, scope: !4692, inlinedAt: !4668)
!4700 = !DILocation(line: 29, column: 10, scope: !4694, inlinedAt: !4699)
!4701 = !DILocation(line: 158, column: 11, scope: !4692, inlinedAt: !4668)
!4702 = !DILocation(line: 162, column: 23, scope: !4703, inlinedAt: !4668)
!4703 = distinct !DILexicalBlock(scope: !4704, file: !692, line: 162, column: 15)
!4704 = distinct !DILexicalBlock(scope: !4689, file: !692, line: 161, column: 9)
!4705 = !DILocation(line: 162, column: 15, scope: !4704, inlinedAt: !4668)
!4706 = !DILocation(line: 167, column: 44, scope: !4707, inlinedAt: !4668)
!4707 = distinct !DILexicalBlock(scope: !4703, file: !692, line: 163, column: 13)
!4708 = !DILocation(line: 0, scope: !4694, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 167, column: 15, scope: !4707, inlinedAt: !4668)
!4710 = !DILocation(line: 29, column: 10, scope: !4694, inlinedAt: !4709)
!4711 = !DILocation(line: 168, column: 15, scope: !4707, inlinedAt: !4668)
!4712 = !DILocation(line: 168, column: 32, scope: !4707, inlinedAt: !4668)
!4713 = !DILocation(line: 169, column: 13, scope: !4707, inlinedAt: !4668)
!4714 = !DILocation(line: 0, scope: !4666, inlinedAt: !4668)
!4715 = !DILocation(line: 274, column: 3, scope: !4650)
!4716 = distinct !DISubprogram(name: "setlocale_null", scope: !692, file: !692, line: 301, type: !4671, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !4717)
!4717 = !{!4718}
!4718 = !DILocalVariable(name: "category", arg: 1, scope: !4716, file: !692, line: 301, type: !85)
!4719 = !DILocation(line: 0, scope: !4716)
!4720 = !DILocation(line: 0, scope: !4670, inlinedAt: !4721)
!4721 = distinct !DILocation(line: 304, column: 10, scope: !4716)
!4722 = !DILocation(line: 62, column: 24, scope: !4670, inlinedAt: !4721)
!4723 = !DILocation(line: 304, column: 3, scope: !4716)
