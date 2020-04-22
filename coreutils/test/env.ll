; ModuleID = 'coreutils-8.32/src/env.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.numname = type { i32, [8 x i8] }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__mbstate_t = type { i32, %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Usage: %s [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Set each NAME to VALUE in the environment and run COMMAND.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.37 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [187 x i8] c"  -i, --ignore-environment  start with an empty environment\0A  -0, --null           end each output line with NUL, not newline\0A  -u, --unset=NAME     remove variable from the environment\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"  -C, --chdir=DIR      change working directory to DIR\0A\00", align 1
@.str.5 = private unnamed_addr constant [143 x i8] c"  -S, --split-string=S  process and split S into separate arguments;\0A                        used to pass multiple arguments on shebang lines\0A\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"      --block-signal[=SIG]    block delivery of SIG signal(s) to COMMAND\0A\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"      --default-signal[=SIG]  reset handling of SIG signal(s) to the default\0A\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"      --ignore-signal[=SIG]   set handling of SIG signals(s) to do nothing\0A\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"      --list-signal-handling  list non default signal handling to stderr\0A\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"  -v, --debug          print verbose information for each processing step\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"\0AA mere - implies -i.  If no COMMAND, print the resulting environment.\0A\00", align 1
@.str.14 = private unnamed_addr constant [157 x i8] c"\0ASIG may be a signal name like 'PIPE', or a signal number like '13'.\0AWithout SIG, all known signals are included.  Multiple signals can be\0Acomma-separated.\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.49 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@signals = internal unnamed_addr global i32* null, align 8, !dbg !0
@shortopts = internal constant [13 x i8] c"+C:iS:u:v0 \09\00", align 1, !dbg !375
@longopts = internal constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), i32 2, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i32 2, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i32 2, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i32 1, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !380
@optarg = external local_unnamed_addr global i8*, align 8
@usvars_used = internal unnamed_addr global i64 0, align 8, !dbg !383
@usvars_alloc = internal unnamed_addr global i64 0, align 8, !dbg !385
@usvars = internal unnamed_addr global i8** null, align 8, !dbg !387
@dev_debug = internal unnamed_addr global i1 false, align 1, !dbg !401
@report_signal_handling = internal unnamed_addr global i1 false, align 1, !dbg !402
@optind = external local_unnamed_addr global i32, align 4
@.str.76 = private unnamed_addr constant [12 x i8] c"!(sq && dq)\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"src/env.c\00", align 1
@__PRETTY_FUNCTION__.validate_split_str = private unnamed_addr constant [55 x i8] c"void validate_split_str(const char *, size_t *, int *)\00", align 1
@.str.77 = private unnamed_addr constant [48 x i8] c"'\\c' must not appear in double-quoted -S string\00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"invalid backslash at end of string in -S\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"invalid sequence '\\%c' in -S\00", align 1
@.str.80 = private unnamed_addr constant [53 x i8] c"only ${VARNAME} expansion is supported, error at: %s\00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"no terminating quote in -S string\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"DUMMY\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.escape_char = private unnamed_addr constant [29 x i8] c"char escape_char(const char)\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"expanding ${%s} into %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [34 x i8] c"replacing ${%s} with null string\0A\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"split -S:  %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c" into:    %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"     &    %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"invalid option -- '%c'\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"use -[v]S to pass options in shebang lines\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Assaf Gordon\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"cleaning environ\0A\00", align 1
@main.dummy_environ = internal global [1 x i8*] zeroinitializer, align 8, !dbg !344
@environ = external local_unnamed_addr global i8**, align 8
@.str.84 = private unnamed_addr constant [14 x i8] c"unset:    %s\0A\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"cannot unset %s\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"setenv:   %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"cannot set %s\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"cannot specify --null (-0) with command\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"must specify command with --chdir (-C)\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.86 = private unnamed_addr constant [42 x i8] c"failed to get signal action for signal %d\00", align 1
@.str.87 = private unnamed_addr constant [42 x i8] c"failed to set signal action for signal %d\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c" (failure ignored)\00", align 1
@.str.88 = private unnamed_addr constant [30 x i8] c"Reset signal %s (%d) to %s%s\0A\00", align 1
@sig_mask_changed = internal unnamed_addr global i1 false, align 1, !dbg !403
@.str.92 = private unnamed_addr constant [34 x i8] c"failed to get signal process mask\00", align 1
@block_signals = internal global %struct.__sigset_t zeroinitializer, align 8, !dbg !390
@.str.93 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1
@unblock_signals = internal global %struct.__sigset_t zeroinitializer, align 8, !dbg !394
@.str.94 = private unnamed_addr constant [8 x i8] c"UNBLOCK\00", align 1
@.str.95 = private unnamed_addr constant [31 x i8] c"signal %s (%d) mask set to %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"failed to set signal process mask\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"%-10s (%2d): %s%s%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"chdir:    %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"cannot change directory to %s\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"executing: %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"   arg[%d]= %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"str && *str == '$'\00", align 1
@__PRETTY_FUNCTION__.scan_varname = private unnamed_addr constant [39 x i8] c"const char *scan_varname(const char *)\00", align 1
@vnlen = internal unnamed_addr global i64 0, align 8, !dbg !396
@varname = internal unnamed_addr global i8* null, align 8, !dbg !398
@.str.66 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"ignore-environment\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"default-signal\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"ignore-signal\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"block-signal\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"list-signal-handling\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"split-string\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1.71 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i64 0, i64 0), align 8, !dbg !404
@.str.98 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !409
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !452
@.str.103 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.104 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.105 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !454
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !460
@.str.112 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.113 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.114 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.117, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.118, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.119, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.120, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.121, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.122, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.123, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.124, i32 0, i32 0), i8* null], align 16, !dbg !501
@.str.115 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.117 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.118 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.119 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.120 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.121 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.122 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.123 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.124 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !572
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !578
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !580
@.str.11.125 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.126 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.127 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.128 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.129 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.130 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.131 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !587
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !594
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !582
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !596
@.str.138 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.139 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.140 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.141 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.142 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.143 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.144 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.145 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.146 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.147 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.148 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.149 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.150 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.151 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.152 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.153 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.156 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.157 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.158 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.159 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.160 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.161 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.162 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !602
@.str.1.175 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !610
@.str.183 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.184 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.187 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.1.192 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.195 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.196 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1288 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1291, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i32 %0, metadata !1290, metadata !DIExpression()), !dbg !1311
  %3 = icmp eq i32 %0, 0, !dbg !1312
  br i1 %3, label %9, label %4, !dbg !1313

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1314, !tbaa !1316
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #19, !dbg !1314
  %7 = load i8*, i8** @program_name, align 8, !dbg !1314, !tbaa !1316
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #19, !dbg !1314
  br label %91, !dbg !1314

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 5) #19, !dbg !1320
  %11 = load i8*, i8** @program_name, align 8, !dbg !1320, !tbaa !1316
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #19, !dbg !1320
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #19, !dbg !1321
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1321, !tbaa !1316
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1321
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.37, i64 0, i64 0), i32 5) #19, !dbg !1322
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1322, !tbaa !1316
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #19, !dbg !1322
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.3, i64 0, i64 0), i32 5) #19, !dbg !1325
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1325, !tbaa !1316
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1325
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 5) #19, !dbg !1326
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1326, !tbaa !1316
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1326
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.5, i64 0, i64 0), i32 5) #19, !dbg !1327
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1327, !tbaa !1316
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1327
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i32 5) #19, !dbg !1328
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1328, !tbaa !1316
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1328
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0), i32 5) #19, !dbg !1329
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1329, !tbaa !1316
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1329
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.8, i64 0, i64 0), i32 5) #19, !dbg !1330
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1330, !tbaa !1316
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !1330
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0), i32 5) #19, !dbg !1331
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1331, !tbaa !1316
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !1331
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0), i32 5) #19, !dbg !1332
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1332, !tbaa !1316
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !1332
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 5) #19, !dbg !1333
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1333, !tbaa !1316
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !1333
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i32 5) #19, !dbg !1334
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1334, !tbaa !1316
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !1334
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.13, i64 0, i64 0), i32 5) #19, !dbg !1335
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1335, !tbaa !1316
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !1335
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.14, i64 0, i64 0), i32 5) #19, !dbg !1336
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1336, !tbaa !1316
  %54 = tail call i32 @fputs_unlocked(i8* %52, %struct._IO_FILE* %53), !dbg !1336
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), metadata !1294, metadata !DIExpression()) #19, !dbg !1337
  %55 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1338
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %55) #19, !dbg !1338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %55, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #19, !dbg !1307
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), metadata !1295, metadata !DIExpression()) #19, !dbg !1337
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1296, metadata !DIExpression()) #19, !dbg !1337
  %56 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1339
  call void @llvm.dbg.value(metadata %struct.infomap* %56, metadata !1296, metadata !DIExpression()) #19, !dbg !1337
  br label %57, !dbg !1340

57:                                               ; preds = %62, %9
  %58 = phi i8* [ %65, %62 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %9 ]
  %59 = phi %struct.infomap* [ %63, %62 ], [ %56, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %59, metadata !1296, metadata !DIExpression()) #19, !dbg !1337
  %60 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* nonnull %58) #23, !dbg !1341
  %61 = icmp eq i32 %60, 0, !dbg !1341
  br i1 %61, label %67, label %62, !dbg !1340

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.infomap, %struct.infomap* %59, i64 1, !dbg !1342
  call void @llvm.dbg.value(metadata %struct.infomap* %63, metadata !1296, metadata !DIExpression()) #19, !dbg !1337
  %64 = getelementptr inbounds %struct.infomap, %struct.infomap* %63, i64 0, i32 0, !dbg !1343
  %65 = load i8*, i8** %64, align 8, !dbg !1343, !tbaa !1344
  %66 = icmp eq i8* %65, null, !dbg !1346
  br i1 %66, label %67, label %57, !dbg !1347, !llvm.loop !1348

67:                                               ; preds = %62, %57
  %68 = phi %struct.infomap* [ %63, %62 ], [ %59, %57 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %68, metadata !1296, metadata !DIExpression()) #19, !dbg !1337
  call void @llvm.dbg.value(metadata %struct.infomap* %68, metadata !1296, metadata !DIExpression()) #19, !dbg !1337
  %69 = getelementptr inbounds %struct.infomap, %struct.infomap* %68, i64 0, i32 1, !dbg !1349
  %70 = load i8*, i8** %69, align 8, !dbg !1349, !tbaa !1351
  %71 = icmp eq i8* %70, null, !dbg !1352
  %72 = select i1 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %70, !dbg !1353
  call void @llvm.dbg.value(metadata i8* %72, metadata !1295, metadata !DIExpression()) #19, !dbg !1337
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), i32 5) #19, !dbg !1354
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0)) #19, !dbg !1354
  %75 = tail call i8* @setlocale(i32 5, i8* null) #19, !dbg !1355
  call void @llvm.dbg.value(metadata i8* %75, metadata !1303, metadata !DIExpression()) #19, !dbg !1337
  %76 = icmp eq i8* %75, null, !dbg !1356
  br i1 %76, label %84, label %77, !dbg !1358

77:                                               ; preds = %67
  %78 = tail call i32 @strncmp(i8* nonnull %75, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i64 3) #23, !dbg !1359
  %79 = icmp eq i32 %78, 0, !dbg !1359
  br i1 %79, label %84, label %80, !dbg !1360

80:                                               ; preds = %77
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.49, i64 0, i64 0), i32 5) #19, !dbg !1361
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1361, !tbaa !1316
  %83 = tail call i32 @fputs_unlocked(i8* %81, %struct._IO_FILE* %82) #19, !dbg !1361
  br label %84, !dbg !1363

84:                                               ; preds = %67, %77, %80
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 5) #19, !dbg !1364
  %86 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #19, !dbg !1364
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i64 0, i64 0), i32 5) #19, !dbg !1365
  %88 = icmp eq i8* %72, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1365
  %89 = select i1 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), !dbg !1365
  %90 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %87, i8* %72, i8* %89) #19, !dbg !1365
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %55) #19, !dbg !1366
  br label %91

91:                                               ; preds = %84, %4
  tail call void @exit(i32 %0) #24, !dbg !1367
  unreachable, !dbg !1367
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !67 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !77 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !138 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !346 {
  %3 = alloca %struct.__sigset_t, align 8
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %3, metadata !1368, metadata !DIExpression()), !dbg !1382
  %4 = alloca %struct.sigaction, align 8
  call void @llvm.dbg.declare(metadata %struct.sigaction* %4, metadata !1385, metadata !DIExpression()), !dbg !1398
  %5 = alloca %struct.__sigset_t, align 8
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %5, metadata !1400, metadata !DIExpression()), !dbg !1412
  %6 = alloca [19 x i8], align 16
  call void @llvm.dbg.declare(metadata [19 x i8]* %6, metadata !1374, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.declare(metadata [19 x i8]* %6, metadata !1395, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.declare(metadata [19 x i8]* %6, metadata !1403, metadata !DIExpression()), !dbg !1417
  %7 = alloca %struct.sigaction, align 8
  call void @llvm.dbg.declare(metadata %struct.sigaction* %7, metadata !1406, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %0, metadata !351, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8** %1, metadata !352, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 0, metadata !354, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 0, metadata !356, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* null, metadata !357, metadata !DIExpression()), !dbg !1419
  %8 = load i8*, i8** %1, align 8, !dbg !1420, !tbaa !1316
  tail call void @set_program_name(i8* %8) #19, !dbg !1421
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)) #19, !dbg !1422
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0)) #19, !dbg !1423
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)) #19, !dbg !1424
  call void @llvm.dbg.value(metadata i32 125, metadata !1425, metadata !DIExpression()), !dbg !1428
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !1430, !tbaa !1432
  %12 = tail call i32 @atexit(void ()* nonnull @close_stdout) #19, !dbg !1434
  %13 = tail call noalias i8* @xmalloc(i64 260) #19, !dbg !1435
  store i8* %13, i8** bitcast (i32** @signals to i8**), align 8, !dbg !1441, !tbaa !1316
  call void @llvm.dbg.value(metadata i32 0, metadata !1438, metadata !DIExpression()) #19, !dbg !1442
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(260) %13, i8 0, i64 260, i1 false) #19, !dbg !1443
  call void @llvm.dbg.value(metadata i32 undef, metadata !1438, metadata !DIExpression()) #19, !dbg !1442
  br label %14, !dbg !1445

14:                                               ; preds = %559, %2
  %15 = phi i32 [ %0, %2 ], [ %560, %559 ]
  %16 = phi i8** [ %1, %2 ], [ %561, %559 ]
  %17 = phi i8* [ null, %2 ], [ %562, %559 ], !dbg !1446
  %18 = phi i8 [ 0, %2 ], [ %563, %559 ], !dbg !1447
  %19 = phi i8 [ 0, %2 ], [ %564, %559 ], !dbg !1448
  call void @llvm.dbg.value(metadata i8 %19, metadata !354, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %18, metadata !356, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %17, metadata !357, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  %20 = tail call i32 @getopt_long(i32 %15, i8** %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #19, !dbg !1449
  call void @llvm.dbg.value(metadata i32 %20, metadata !353, metadata !DIExpression()), !dbg !1419
  switch i32 %20, label %572 [
    i32 -1, label %573
    i32 105, label %559
    i32 117, label %21
    i32 118, label %55
    i32 48, label %56
    i32 128, label %57
    i32 129, label %60
    i32 130, label %62
    i32 131, label %64
    i32 67, label %65
    i32 83, label %67
    i32 32, label %565
    i32 9, label %565
    i32 -130, label %568
    i32 -131, label %569
  ], !dbg !1445

21:                                               ; preds = %14
  %22 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !1450, !tbaa !1316
  call void @llvm.dbg.value(metadata i8* undef, metadata !1453, metadata !DIExpression()) #19, !dbg !1456
  %23 = load i64, i64* @usvars_used, align 8, !dbg !1458, !tbaa !1460
  %24 = load i64, i64* @usvars_alloc, align 8, !dbg !1462, !tbaa !1460
  %25 = icmp eq i64 %23, %24, !dbg !1463
  br i1 %25, label %28, label %26, !dbg !1464

26:                                               ; preds = %21
  %27 = load i8**, i8*** @usvars, align 8, !dbg !1465, !tbaa !1316
  br label %49, !dbg !1464

28:                                               ; preds = %21
  %29 = load i8*, i8** bitcast (i8*** @usvars to i8**), align 8, !dbg !1466, !tbaa !1316
  call void @llvm.dbg.value(metadata i8* %29, metadata !45, metadata !DIExpression()) #19, !dbg !1467
  call void @llvm.dbg.value(metadata i64* @usvars_alloc, metadata !46, metadata !DIExpression()) #19, !dbg !1467
  call void @llvm.dbg.value(metadata i64 8, metadata !47, metadata !DIExpression()) #19, !dbg !1467
  call void @llvm.dbg.value(metadata i64 %24, metadata !48, metadata !DIExpression()) #19, !dbg !1467
  %30 = icmp eq i8* %29, null, !dbg !1469
  br i1 %30, label %31, label %36, !dbg !1471

31:                                               ; preds = %28
  %32 = icmp eq i64 %23, 0, !dbg !1472
  br i1 %32, label %43, label %33, !dbg !1475

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %24, metadata !48, metadata !DIExpression()) #19, !dbg !1467
  %34 = icmp ugt i64 %23, 1152921504606846975, !dbg !1476
  br i1 %34, label %35, label %43, !dbg !1478

35:                                               ; preds = %33
  tail call void @xalloc_die() #24, !dbg !1479
  unreachable, !dbg !1479

36:                                               ; preds = %28
  %37 = icmp ult i64 %23, 768614336404564650, !dbg !1480
  br i1 %37, label %39, label %38, !dbg !1483

38:                                               ; preds = %36
  tail call void @xalloc_die() #24, !dbg !1484
  unreachable, !dbg !1484

39:                                               ; preds = %36
  %40 = lshr i64 %23, 1, !dbg !1485
  %41 = add nuw nsw i64 %23, 1, !dbg !1486
  %42 = add nuw nsw i64 %41, %40, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %42, metadata !48, metadata !DIExpression()) #19, !dbg !1467
  br label %43

43:                                               ; preds = %39, %33, %31
  %44 = phi i64 [ %42, %39 ], [ %23, %33 ], [ 16, %31 ], !dbg !1467
  call void @llvm.dbg.value(metadata i64 %44, metadata !48, metadata !DIExpression()) #19, !dbg !1467
  store i64 %44, i64* @usvars_alloc, align 8, !dbg !1488, !tbaa !1460
  %45 = shl nuw nsw i64 %44, 3, !dbg !1489
  %46 = tail call i8* @xrealloc(i8* %29, i64 %45) #19, !dbg !1490
  store i8* %46, i8** bitcast (i8*** @usvars to i8**), align 8, !dbg !1491, !tbaa !1316
  %47 = bitcast i8* %46 to i8**, !dbg !1492
  %48 = load i64, i64* @usvars_used, align 8, !dbg !1493, !tbaa !1460
  br label %49, !dbg !1492

49:                                               ; preds = %26, %43
  %50 = phi i64 [ %23, %26 ], [ %48, %43 ], !dbg !1493
  %51 = phi i8** [ %27, %26 ], [ %47, %43 ], !dbg !1465
  %52 = add i64 %50, 1, !dbg !1493
  store i64 %52, i64* @usvars_used, align 8, !dbg !1493, !tbaa !1460
  %53 = getelementptr inbounds i8*, i8** %51, i64 %50, !dbg !1465
  %54 = bitcast i8** %53 to i64*, !dbg !1494
  store i64 %22, i64* %54, align 8, !dbg !1494, !tbaa !1316
  br label %559, !dbg !1495

55:                                               ; preds = %14
  store i1 true, i1* @dev_debug, align 1, !dbg !1496
  br label %559, !dbg !1497

56:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !356, metadata !DIExpression()), !dbg !1419
  br label %559, !dbg !1498

57:                                               ; preds = %14
  %58 = load i8*, i8** @optarg, align 8, !dbg !1499, !tbaa !1316
  tail call fastcc void @parse_signal_action_params(i8* %58, i1 zeroext true), !dbg !1500
  %59 = load i8*, i8** @optarg, align 8, !dbg !1501, !tbaa !1316
  tail call fastcc void @parse_block_signal_params(i8* %59, i1 zeroext false), !dbg !1502
  br label %559, !dbg !1503

60:                                               ; preds = %14
  %61 = load i8*, i8** @optarg, align 8, !dbg !1504, !tbaa !1316
  tail call fastcc void @parse_signal_action_params(i8* %61, i1 zeroext false), !dbg !1505
  br label %559, !dbg !1506

62:                                               ; preds = %14
  %63 = load i8*, i8** @optarg, align 8, !dbg !1507, !tbaa !1316
  tail call fastcc void @parse_block_signal_params(i8* %63, i1 zeroext true), !dbg !1508
  br label %559, !dbg !1509

64:                                               ; preds = %14
  store i1 true, i1* @report_signal_handling, align 1, !dbg !1510
  br label %559, !dbg !1511

65:                                               ; preds = %14
  %66 = load i8*, i8** @optarg, align 8, !dbg !1512, !tbaa !1316
  call void @llvm.dbg.value(metadata i8* %66, metadata !357, metadata !DIExpression()), !dbg !1419
  br label %559, !dbg !1513

67:                                               ; preds = %14
  %68 = load i8*, i8** @optarg, align 8, !dbg !1514, !tbaa !1316
  call void @llvm.dbg.value(metadata i8* %68, metadata !1515, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i32* @optind, metadata !1521, metadata !DIExpression()) #19, !dbg !1528
  %69 = tail call i16** @__ctype_b_loc() #25, !dbg !1528
  %70 = load i16*, i16** %69, align 8, !dbg !1528, !tbaa !1316
  br label %71, !dbg !1530

71:                                               ; preds = %71, %67
  %72 = phi i8* [ %68, %67 ], [ %79, %71 ]
  call void @llvm.dbg.value(metadata i8* %72, metadata !1515, metadata !DIExpression()) #19, !dbg !1528
  %73 = load i8, i8* %72, align 1, !dbg !1531, !tbaa !1532
  %74 = sext i8 %73 to i64, !dbg !1531
  %75 = getelementptr inbounds i16, i16* %70, i64 %74, !dbg !1531
  %76 = load i16, i16* %75, align 2, !dbg !1531, !tbaa !1533
  %77 = and i16 %76, 8192, !dbg !1531
  %78 = icmp eq i16 %77, 0, !dbg !1530
  %79 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1535
  call void @llvm.dbg.value(metadata i8* %79, metadata !1515, metadata !DIExpression()) #19, !dbg !1528
  br i1 %78, label %80, label %71, !dbg !1530, !llvm.loop !1536

80:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i8* %72, metadata !1515, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %72, metadata !1515, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %72, metadata !1515, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %72, metadata !1515, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %72, metadata !1515, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %72, metadata !1515, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %72, metadata !1515, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %72, metadata !1515, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %72, metadata !1515, metadata !DIExpression()) #19, !dbg !1528
  %81 = icmp eq i8 %73, 0, !dbg !1537
  br i1 %81, label %559, label %82, !dbg !1539

82:                                               ; preds = %80
  %83 = load i32, i32* @optind, align 4, !dbg !1540, !tbaa !1432
  call void @llvm.dbg.value(metadata i8* %72, metadata !1541, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i32 undef, metadata !1546, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 0, metadata !1547, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 0, metadata !1548, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 1, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i32 0, metadata !1553, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i64 0, metadata !1554, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %72, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 1, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 0, metadata !1573, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 0, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 0, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 undef, metadata !1575, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %72, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 1, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 undef, metadata !1573, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 0, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 0, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  %84 = tail call i64 @strlen(i8* nonnull %72) #23, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %84, metadata !1575, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !1579
  %85 = add i64 %84, 1, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %85, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  br label %86, !dbg !1583

86:                                               ; preds = %161, %82
  %87 = phi i16 [ %165, %161 ], [ %76, %82 ], !dbg !1584
  %88 = phi i8 [ %159, %161 ], [ %73, %82 ]
  %89 = phi i8* [ %158, %161 ], [ %72, %82 ]
  %90 = phi i32 [ %156, %161 ], [ 1, %82 ]
  %91 = phi i64 [ %155, %161 ], [ %85, %82 ]
  %92 = phi i32 [ %103, %161 ], [ 0, %82 ]
  %93 = phi i8 [ %154, %161 ], [ 0, %82 ]
  %94 = phi i8 [ %153, %161 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %90, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %91, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %93, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %94, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  %95 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1586
  %96 = load i8, i8* %95, align 1, !dbg !1587, !tbaa !1532
  call void @llvm.dbg.value(metadata i8 %96, metadata !1577, metadata !DIExpression()) #19, !dbg !1588
  %97 = and i16 %87, 8192, !dbg !1584
  %98 = icmp ne i16 %97, 0, !dbg !1584
  %99 = or i8 %94, %93, !dbg !1589
  %100 = and i8 %99, 1, !dbg !1589
  %101 = icmp eq i8 %100, 0, !dbg !1589
  %102 = and i1 %98, %101, !dbg !1589
  %103 = zext i1 %102 to i32, !dbg !1589
  %104 = select i1 %102, i32 0, i32 %92, !dbg !1589
  %105 = add nsw i32 %104, %90, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %105, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 undef, metadata !1573, metadata !DIExpression()) #19, !dbg !1579
  %106 = sext i8 %88 to i32, !dbg !1590
  switch i32 %106, label %152 [
    i32 39, label %107
    i32 34, label %114
    i32 92, label %121
    i32 36, label %138
  ], !dbg !1591

107:                                              ; preds = %86
  %108 = and i8 %93, 1, !dbg !1592
  %109 = and i8 %108, %94, !dbg !1592
  %110 = icmp eq i8 %109, 0, !dbg !1592
  br i1 %110, label %112, label %111, !dbg !1592

111:                                              ; preds = %107
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i32 303, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.validate_split_str, i64 0, i64 0)) #24, !dbg !1592
  unreachable, !dbg !1592

112:                                              ; preds = %107
  %113 = xor i8 %100, 1, !dbg !1596
  call void @llvm.dbg.value(metadata i8 %113, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  br label %152, !dbg !1597

114:                                              ; preds = %86
  %115 = and i8 %93, 1, !dbg !1598
  %116 = and i8 %115, %94, !dbg !1598
  %117 = icmp eq i8 %116, 0, !dbg !1598
  br i1 %117, label %119, label %118, !dbg !1598

118:                                              ; preds = %114
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i32 308, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.validate_split_str, i64 0, i64 0)) #24, !dbg !1598
  unreachable, !dbg !1598

119:                                              ; preds = %114
  %120 = xor i8 %100, 1, !dbg !1601
  call void @llvm.dbg.value(metadata i8 %120, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  br label %152, !dbg !1602

121:                                              ; preds = %86
  %122 = and i8 %94, 1, !dbg !1603
  %123 = icmp ne i8 %122, 0, !dbg !1604
  %124 = icmp eq i8 %96, 99, !dbg !1606
  %125 = and i1 %123, %124, !dbg !1607
  br i1 %125, label %126, label %128, !dbg !1607

126:                                              ; preds = %121
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.77, i64 0, i64 0), i32 5) #19, !dbg !1608
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %127) #19, !dbg !1608
  unreachable, !dbg !1608

128:                                              ; preds = %121
  switch i8 %96, label %131 [
    i8 0, label %129
    i8 99, label %134
    i8 102, label %134
    i8 110, label %134
    i8 114, label %134
    i8 116, label %134
    i8 118, label %134
    i8 35, label %134
    i8 36, label %134
    i8 95, label %134
    i8 34, label %134
    i8 39, label %134
    i8 92, label %134
  ], !dbg !1609

129:                                              ; preds = %128
  %130 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.78, i64 0, i64 0), i32 5) #19, !dbg !1610
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %130) #19, !dbg !1610
  unreachable, !dbg !1610

131:                                              ; preds = %128
  %132 = sext i8 %96 to i32, !dbg !1612
  %133 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.79, i64 0, i64 0), i32 5) #19, !dbg !1613
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %133, i32 %132) #19, !dbg !1613
  unreachable, !dbg !1613

134:                                              ; preds = %128, %128, %128, %128, %128, %128, %128, %128, %128, %128, %128, %128
  %135 = icmp eq i8 %96, 95, !dbg !1615
  %136 = zext i1 %135 to i32, !dbg !1617
  %137 = add nsw i32 %105, %136, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %137, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %95, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  br label %152, !dbg !1618

138:                                              ; preds = %86
  %139 = and i8 %93, 1, !dbg !1619
  %140 = icmp eq i8 %139, 0, !dbg !1619
  br i1 %140, label %141, label %152, !dbg !1620

141:                                              ; preds = %138
  %142 = tail call fastcc i8* @extract_varname(i8* nonnull %89) #19, !dbg !1621
  call void @llvm.dbg.value(metadata i8* %142, metadata !1574, metadata !DIExpression()) #19, !dbg !1579
  %143 = icmp eq i8* %142, null, !dbg !1623
  br i1 %143, label %144, label %146, !dbg !1624

144:                                              ; preds = %141
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %89, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  %145 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.80, i64 0, i64 0), i32 5) #19, !dbg !1625
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %145, i8* nonnull %89) #19, !dbg !1625
  unreachable, !dbg !1625

146:                                              ; preds = %141
  %147 = tail call i8* @getenv(i8* nonnull %142) #19, !dbg !1626
  call void @llvm.dbg.value(metadata i8* %147, metadata !1574, metadata !DIExpression()) #19, !dbg !1579
  %148 = icmp eq i8* %147, null, !dbg !1628
  br i1 %148, label %152, label %149, !dbg !1629

149:                                              ; preds = %146
  %150 = tail call i64 @strlen(i8* nonnull %147) #23, !dbg !1630
  %151 = add i64 %150, %91, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %151, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  br label %152, !dbg !1632

152:                                              ; preds = %149, %146, %138, %134, %119, %112, %86
  %153 = phi i8 [ %94, %86 ], [ %94, %138 ], [ %94, %149 ], [ %94, %146 ], [ %94, %134 ], [ %120, %119 ], [ %94, %112 ], !dbg !1579
  %154 = phi i8 [ %93, %86 ], [ %93, %138 ], [ %93, %149 ], [ %93, %146 ], [ %93, %134 ], [ %93, %119 ], [ %113, %112 ], !dbg !1579
  %155 = phi i64 [ %91, %86 ], [ %91, %138 ], [ %151, %149 ], [ %91, %146 ], [ %91, %134 ], [ %91, %119 ], [ %91, %112 ], !dbg !1579
  %156 = phi i32 [ %105, %86 ], [ %105, %138 ], [ %105, %149 ], [ %105, %146 ], [ %137, %134 ], [ %105, %119 ], [ %105, %112 ], !dbg !1588
  %157 = phi i8* [ %89, %86 ], [ %89, %138 ], [ %89, %149 ], [ %89, %146 ], [ %95, %134 ], [ %89, %119 ], [ %89, %112 ]
  call void @llvm.dbg.value(metadata i8* %157, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  %158 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !1633
  call void @llvm.dbg.value(metadata i8* %158, metadata !1564, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 undef, metadata !1573, metadata !DIExpression()) #19, !dbg !1579
  %159 = load i8, i8* %158, align 1, !dbg !1634, !tbaa !1532
  %160 = icmp eq i8 %159, 0, !dbg !1583
  br i1 %160, label %166, label %161, !dbg !1583, !llvm.loop !1635

161:                                              ; preds = %152
  %162 = load i16*, i16** %69, align 8, !dbg !1584, !tbaa !1316
  %163 = sext i8 %159 to i64, !dbg !1637
  %164 = getelementptr inbounds i16, i16* %162, i64 %163, !dbg !1637
  %165 = load i16, i16* %164, align 2, !dbg !1584, !tbaa !1533
  br label %86, !dbg !1583

166:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %153, metadata !1571, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %154, metadata !1572, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %155, metadata !1575, metadata !DIExpression()) #19, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %156, metadata !1576, metadata !DIExpression()) #19, !dbg !1579
  %167 = or i8 %154, %153, !dbg !1638
  %168 = and i8 %167, 1, !dbg !1638
  %169 = icmp eq i8 %168, 0, !dbg !1638
  br i1 %169, label %172, label %170, !dbg !1638

170:                                              ; preds = %166
  %171 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.81, i64 0, i64 0), i32 5) #19, !dbg !1640
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %171) #19, !dbg !1640
  unreachable, !dbg !1640

172:                                              ; preds = %166
  call void @llvm.dbg.value(metadata i64 %155, metadata !1554, metadata !DIExpression()) #19, !dbg !1562
  %173 = add i64 %155, 7, !dbg !1641
  %174 = tail call noalias i8* @xmalloc(i64 %173) #19, !dbg !1642
  call void @llvm.dbg.value(metadata i8* %174, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i32 %156, metadata !1553, metadata !DIExpression()) #19, !dbg !1562
  %175 = add i32 %15, 2, !dbg !1643
  %176 = sub i32 %175, %83, !dbg !1644
  %177 = add i32 %176, %156, !dbg !1645
  %178 = sext i32 %177 to i64, !dbg !1646
  %179 = shl nsw i64 %178, 3, !dbg !1647
  %180 = tail call noalias i8* @xmalloc(i64 %179) #19, !dbg !1648
  %181 = bitcast i8* %180 to i8**, !dbg !1648
  call void @llvm.dbg.value(metadata i8** %181, metadata !1551, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8** %181, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %174, metadata !1649, metadata !DIExpression()) #19, !dbg !1658
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), metadata !1657, metadata !DIExpression()) #19, !dbg !1658
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %174, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i64 6, i1 false) #19, !dbg !1660
  %182 = getelementptr inbounds i8, i8* %180, i64 8, !dbg !1661
  %183 = bitcast i8* %182 to i8**, !dbg !1661
  call void @llvm.dbg.value(metadata i8** %183, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  store i8* %174, i8** %181, align 8, !dbg !1662, !tbaa !1316
  %184 = getelementptr inbounds i8, i8* %174, i64 6, !dbg !1663
  call void @llvm.dbg.value(metadata i8* %184, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %72, metadata !1541, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8** %183, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 0, metadata !1547, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 1, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 0, metadata !1548, metadata !DIExpression()) #19, !dbg !1562
  %185 = load i8, i8* %72, align 1, !dbg !1664, !tbaa !1532
  %186 = icmp eq i8 %185, 0, !dbg !1665
  br i1 %186, label %320, label %187, !dbg !1665

187:                                              ; preds = %172, %311
  %188 = phi i8 [ %318, %311 ], [ %185, %172 ]
  %189 = phi i8* [ %317, %311 ], [ %72, %172 ]
  %190 = phi i8** [ %316, %311 ], [ %183, %172 ]
  %191 = phi i8 [ %315, %311 ], [ 0, %172 ]
  %192 = phi i8* [ %314, %311 ], [ %184, %172 ]
  %193 = phi i8 [ %313, %311 ], [ 1, %172 ]
  %194 = phi i8 [ %312, %311 ], [ 0, %172 ]
  call void @llvm.dbg.value(metadata i8* %189, metadata !1541, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8** %190, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %191, metadata !1547, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %192, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %193, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %194, metadata !1548, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %188, metadata !1555, metadata !DIExpression()) #19, !dbg !1666
  %195 = sext i8 %188 to i32, !dbg !1667
  switch i32 %195, label %297 [
    i32 39, label %196
    i32 34, label %212
    i32 32, label %228
    i32 9, label %228
    i32 35, label %235
    i32 92, label %238
    i32 36, label %261
  ], !dbg !1668

196:                                              ; preds = %187
  %197 = and i8 %191, 1, !dbg !1669
  %198 = icmp eq i8 %197, 0, !dbg !1669
  br i1 %198, label %199, label %297, !dbg !1671

199:                                              ; preds = %196
  %200 = and i8 %194, 1, !dbg !1672
  %201 = xor i8 %200, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i8 %201, metadata !1548, metadata !DIExpression()) #19, !dbg !1562
  %202 = and i8 %193, 1, !dbg !1674
  %203 = icmp eq i8 %202, 0, !dbg !1674
  br i1 %203, label %207, label %204, !dbg !1677

204:                                              ; preds = %199
  %205 = getelementptr inbounds i8, i8* %192, i64 1, !dbg !1678
  call void @llvm.dbg.value(metadata i8* %205, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  store i8 0, i8* %192, align 1, !dbg !1678, !tbaa !1532
  %206 = getelementptr inbounds i8*, i8** %190, i64 1, !dbg !1678
  call void @llvm.dbg.value(metadata i8** %206, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  store i8* %205, i8** %190, align 8, !dbg !1678, !tbaa !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  br label %207, !dbg !1678

207:                                              ; preds = %204, %199
  %208 = phi i8 [ 0, %204 ], [ %193, %199 ], !dbg !1562
  %209 = phi i8* [ %205, %204 ], [ %192, %199 ], !dbg !1562
  %210 = phi i8** [ %206, %204 ], [ %190, %199 ], !dbg !1562
  call void @llvm.dbg.value(metadata i8** %210, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %209, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %208, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  %211 = getelementptr inbounds i8, i8* %189, i64 1, !dbg !1680
  call void @llvm.dbg.value(metadata i8* %211, metadata !1541, metadata !DIExpression()) #19, !dbg !1562
  br label %311, !dbg !1681, !llvm.loop !1682

212:                                              ; preds = %187
  %213 = and i8 %194, 1, !dbg !1684
  %214 = icmp eq i8 %213, 0, !dbg !1684
  br i1 %214, label %215, label %297, !dbg !1686

215:                                              ; preds = %212
  %216 = and i8 %191, 1, !dbg !1687
  %217 = xor i8 %216, 1, !dbg !1688
  call void @llvm.dbg.value(metadata i8 %217, metadata !1547, metadata !DIExpression()) #19, !dbg !1562
  %218 = and i8 %193, 1, !dbg !1689
  %219 = icmp eq i8 %218, 0, !dbg !1689
  br i1 %219, label %223, label %220, !dbg !1692

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %192, i64 1, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %221, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  store i8 0, i8* %192, align 1, !dbg !1693, !tbaa !1532
  %222 = getelementptr inbounds i8*, i8** %190, i64 1, !dbg !1693
  call void @llvm.dbg.value(metadata i8** %222, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  store i8* %221, i8** %190, align 8, !dbg !1693, !tbaa !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  br label %223, !dbg !1693

223:                                              ; preds = %220, %215
  %224 = phi i8 [ 0, %220 ], [ %193, %215 ], !dbg !1562
  %225 = phi i8* [ %221, %220 ], [ %192, %215 ], !dbg !1562
  %226 = phi i8** [ %222, %220 ], [ %190, %215 ], !dbg !1562
  call void @llvm.dbg.value(metadata i8** %226, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %225, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %224, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  %227 = getelementptr inbounds i8, i8* %189, i64 1, !dbg !1695
  call void @llvm.dbg.value(metadata i8* %227, metadata !1541, metadata !DIExpression()) #19, !dbg !1562
  br label %311, !dbg !1696, !llvm.loop !1697

228:                                              ; preds = %187, %187
  %229 = or i8 %194, %191, !dbg !1698
  %230 = and i8 %229, 1, !dbg !1698
  %231 = icmp eq i8 %230, 0, !dbg !1698
  br i1 %231, label %232, label %297, !dbg !1698

232:                                              ; preds = %228
  call void @llvm.dbg.value(metadata i8 1, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  %233 = tail call i64 @strspn(i8* nonnull %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0)) #23, !dbg !1700
  %234 = getelementptr inbounds i8, i8* %189, i64 %233, !dbg !1701
  call void @llvm.dbg.value(metadata i8* %234, metadata !1541, metadata !DIExpression()) #19, !dbg !1562
  br label %311, !dbg !1702, !llvm.loop !1703

235:                                              ; preds = %187
  %236 = and i8 %193, 1, !dbg !1704
  %237 = icmp eq i8 %236, 0, !dbg !1704
  br i1 %237, label %297, label %320, !dbg !1706

238:                                              ; preds = %187
  %239 = and i8 %194, 1, !dbg !1707
  %240 = icmp eq i8 %239, 0, !dbg !1707
  %241 = getelementptr inbounds i8, i8* %189, i64 1, !dbg !1709
  %242 = load i8, i8* %241, align 1, !dbg !1709, !tbaa !1532
  br i1 %240, label %244, label %243, !dbg !1710

243:                                              ; preds = %238
  switch i8 %242, label %297 [
    i8 92, label %296
    i8 39, label %296
  ], !dbg !1711

244:                                              ; preds = %238
  call void @llvm.dbg.value(metadata i8* %241, metadata !1541, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %242, metadata !1555, metadata !DIExpression()) #19, !dbg !1666
  switch i8 %242, label %250 [
    i8 92, label %296
    i8 39, label %296
    i8 35, label %297
    i8 36, label %297
    i8 34, label %297
    i8 95, label %245
    i8 99, label %320
  ], !dbg !1712

245:                                              ; preds = %244
  %246 = and i8 %191, 1, !dbg !1714
  %247 = icmp eq i8 %246, 0, !dbg !1714
  br i1 %247, label %248, label %297, !dbg !1718

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %189, i64 2, !dbg !1719
  call void @llvm.dbg.value(metadata i8* %249, metadata !1541, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 1, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  br label %311, !dbg !1721, !llvm.loop !1722

250:                                              ; preds = %244
  call void @llvm.dbg.value(metadata i8 %242, metadata !1723, metadata !DIExpression()) #19, !dbg !1728
  %251 = sext i8 %242 to i32, !dbg !1731
  %252 = add nsw i32 %251, -102, !dbg !1732
  %253 = lshr i32 %252, 1, !dbg !1732
  %254 = shl i32 %252, 31, !dbg !1732
  %255 = or i32 %253, %254, !dbg !1732
  switch i32 %255, label %260 [
    i32 0, label %297
    i32 4, label %256
    i32 6, label %257
    i32 7, label %258
    i32 8, label %259
  ], !dbg !1732

256:                                              ; preds = %250
  br label %297, !dbg !1733

257:                                              ; preds = %250
  br label %297, !dbg !1735

258:                                              ; preds = %250
  br label %297, !dbg !1736

259:                                              ; preds = %250
  br label %297, !dbg !1737

260:                                              ; preds = %250
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i32 210, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.escape_char, i64 0, i64 0)) #24, !dbg !1738
  unreachable, !dbg !1738

261:                                              ; preds = %187
  %262 = and i8 %194, 1, !dbg !1741
  %263 = icmp eq i8 %262, 0, !dbg !1741
  br i1 %263, label %264, label %297, !dbg !1743

264:                                              ; preds = %261
  %265 = tail call fastcc i8* @extract_varname(i8* nonnull %189) #19, !dbg !1744
  call void @llvm.dbg.value(metadata i8* %265, metadata !1557, metadata !DIExpression()) #19, !dbg !1745
  %266 = tail call i8* @getenv(i8* %265) #19, !dbg !1746
  call void @llvm.dbg.value(metadata i8* %266, metadata !1560, metadata !DIExpression()) #19, !dbg !1745
  %267 = icmp eq i8* %266, null, !dbg !1747
  br i1 %267, label %285, label %268, !dbg !1749

268:                                              ; preds = %264
  %269 = and i8 %193, 1, !dbg !1750
  %270 = icmp eq i8 %269, 0, !dbg !1750
  br i1 %270, label %274, label %271, !dbg !1754

271:                                              ; preds = %268
  %272 = getelementptr inbounds i8, i8* %192, i64 1, !dbg !1755
  call void @llvm.dbg.value(metadata i8* %272, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  store i8 0, i8* %192, align 1, !dbg !1755, !tbaa !1532
  %273 = getelementptr inbounds i8*, i8** %190, i64 1, !dbg !1755
  call void @llvm.dbg.value(metadata i8** %273, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  store i8* %272, i8** %190, align 8, !dbg !1755, !tbaa !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  br label %274, !dbg !1755

274:                                              ; preds = %271, %268
  %275 = phi i8 [ 0, %271 ], [ %193, %268 ], !dbg !1562
  %276 = phi i8* [ %272, %271 ], [ %192, %268 ], !dbg !1562
  %277 = phi i8** [ %273, %271 ], [ %190, %268 ], !dbg !1562
  call void @llvm.dbg.value(metadata i8** %277, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %276, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %275, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  %278 = load i1, i1* @dev_debug, align 1, !dbg !1757
  br i1 %278, label %279, label %283, !dbg !1760

279:                                              ; preds = %274
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1757, !tbaa !1316
  %281 = tail call i8* @quote(i8* nonnull %266) #19, !dbg !1757
  %282 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %280, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.74, i64 0, i64 0), i8* %265, i8* %281) #19, !dbg !1757
  br label %283, !dbg !1757

283:                                              ; preds = %279, %274
  call void @llvm.dbg.value(metadata i8* %276, metadata !1761, metadata !DIExpression()) #19, !dbg !1765
  call void @llvm.dbg.value(metadata i8* %266, metadata !1764, metadata !DIExpression()) #19, !dbg !1765
  %284 = call i8* @stpcpy(i8* %276, i8* nonnull %266), !dbg !1767
  call void @llvm.dbg.value(metadata i8* %284, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  br label %290, !dbg !1768

285:                                              ; preds = %264
  %286 = load i1, i1* @dev_debug, align 1, !dbg !1769
  br i1 %286, label %287, label %290, !dbg !1772

287:                                              ; preds = %285
  %288 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1769, !tbaa !1316
  %289 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %288, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.75, i64 0, i64 0), i8* %265) #19, !dbg !1769
  br label %290, !dbg !1769

290:                                              ; preds = %287, %285, %283
  %291 = phi i8 [ %275, %283 ], [ %193, %287 ], [ %193, %285 ], !dbg !1562
  %292 = phi i8* [ %284, %283 ], [ %192, %287 ], [ %192, %285 ], !dbg !1562
  %293 = phi i8** [ %277, %283 ], [ %190, %287 ], [ %190, %285 ], !dbg !1562
  call void @llvm.dbg.value(metadata i8** %293, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %292, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %291, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  %294 = tail call i8* @strchr(i8* nonnull %189, i32 125) #23, !dbg !1773
  %295 = getelementptr inbounds i8, i8* %294, i64 1, !dbg !1774
  call void @llvm.dbg.value(metadata i8* %295, metadata !1541, metadata !DIExpression()) #19, !dbg !1562
  br label %311

296:                                              ; preds = %244, %244, %243, %243
  br label %297, !dbg !1775

297:                                              ; preds = %296, %261, %259, %258, %257, %256, %250, %245, %244, %244, %244, %243, %235, %228, %212, %196, %187
  %298 = phi i8 [ %188, %187 ], [ %188, %261 ], [ %188, %235 ], [ %188, %228 ], [ %188, %212 ], [ %188, %196 ], [ %188, %243 ], [ 32, %245 ], [ 11, %259 ], [ 9, %258 ], [ 13, %257 ], [ 10, %256 ], [ 12, %250 ], [ %242, %296 ], [ %242, %244 ], [ %242, %244 ], [ %242, %244 ], !dbg !1666
  %299 = phi i8* [ %189, %187 ], [ %189, %261 ], [ %189, %235 ], [ %189, %228 ], [ %189, %212 ], [ %189, %196 ], [ %189, %243 ], [ %241, %245 ], [ %241, %259 ], [ %241, %258 ], [ %241, %257 ], [ %241, %256 ], [ %241, %250 ], [ %241, %296 ], [ %241, %244 ], [ %241, %244 ], [ %241, %244 ]
  call void @llvm.dbg.value(metadata i8* %299, metadata !1541, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %298, metadata !1555, metadata !DIExpression()) #19, !dbg !1666
  %300 = and i8 %193, 1, !dbg !1775
  %301 = icmp eq i8 %300, 0, !dbg !1775
  br i1 %301, label %305, label %302, !dbg !1778

302:                                              ; preds = %297
  %303 = getelementptr inbounds i8, i8* %192, i64 1, !dbg !1779
  call void @llvm.dbg.value(metadata i8* %303, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  store i8 0, i8* %192, align 1, !dbg !1779, !tbaa !1532
  %304 = getelementptr inbounds i8*, i8** %190, i64 1, !dbg !1779
  call void @llvm.dbg.value(metadata i8** %304, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  store i8* %303, i8** %190, align 8, !dbg !1779, !tbaa !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  br label %305, !dbg !1779

305:                                              ; preds = %302, %297
  %306 = phi i8 [ 0, %302 ], [ %193, %297 ], !dbg !1562
  %307 = phi i8* [ %303, %302 ], [ %192, %297 ], !dbg !1562
  %308 = phi i8** [ %304, %302 ], [ %190, %297 ], !dbg !1562
  call void @llvm.dbg.value(metadata i8** %308, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %307, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %306, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  %309 = getelementptr inbounds i8, i8* %307, i64 1, !dbg !1781
  call void @llvm.dbg.value(metadata i8* %309, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  store i8 %298, i8* %307, align 1, !dbg !1782, !tbaa !1532
  %310 = getelementptr inbounds i8, i8* %299, i64 1, !dbg !1783
  call void @llvm.dbg.value(metadata i8* %310, metadata !1541, metadata !DIExpression()) #19, !dbg !1562
  br label %311, !dbg !1683

311:                                              ; preds = %305, %290, %248, %232, %223, %207
  %312 = phi i8 [ %194, %305 ], [ %194, %290 ], [ %194, %248 ], [ %194, %232 ], [ %194, %223 ], [ %201, %207 ], !dbg !1562
  %313 = phi i8 [ %306, %305 ], [ %291, %290 ], [ 1, %248 ], [ 1, %232 ], [ %224, %223 ], [ %208, %207 ], !dbg !1562
  %314 = phi i8* [ %309, %305 ], [ %292, %290 ], [ %192, %248 ], [ %192, %232 ], [ %225, %223 ], [ %209, %207 ], !dbg !1562
  %315 = phi i8 [ %191, %305 ], [ %191, %290 ], [ %191, %248 ], [ %191, %232 ], [ %217, %223 ], [ %191, %207 ], !dbg !1562
  %316 = phi i8** [ %308, %305 ], [ %293, %290 ], [ %190, %248 ], [ %190, %232 ], [ %226, %223 ], [ %210, %207 ], !dbg !1562
  %317 = phi i8* [ %310, %305 ], [ %295, %290 ], [ %249, %248 ], [ %234, %232 ], [ %227, %223 ], [ %211, %207 ]
  call void @llvm.dbg.value(metadata i8* %317, metadata !1541, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8** %316, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %315, metadata !1547, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %314, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %313, metadata !1549, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %312, metadata !1548, metadata !DIExpression()) #19, !dbg !1562
  %318 = load i8, i8* %317, align 1, !dbg !1664, !tbaa !1532
  %319 = icmp eq i8 %318, 0, !dbg !1665
  br i1 %319, label %320, label %187, !dbg !1665

320:                                              ; preds = %311, %244, %235, %172
  %321 = phi i8* [ %184, %172 ], [ %192, %244 ], [ %314, %311 ], [ %192, %235 ], !dbg !1562
  %322 = phi i8** [ %183, %172 ], [ %190, %244 ], [ %316, %311 ], [ %190, %235 ], !dbg !1562
  call void @llvm.dbg.value(metadata i8* %321, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %321, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %321, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %321, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8** %322, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8** %322, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8** %322, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8** %322, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8** %322, metadata !1552, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %321, metadata !1550, metadata !DIExpression()) #19, !dbg !1562
  call void @llvm.dbg.label(metadata !1561) #19, !dbg !1784
  store i8 0, i8* %321, align 1, !dbg !1785, !tbaa !1532
  store i8* null, i8** %322, align 8, !dbg !1786, !tbaa !1316
  call void @llvm.dbg.value(metadata i8** %181, metadata !1526, metadata !DIExpression()) #19, !dbg !1528
  %323 = bitcast i8** %16 to i64*, !dbg !1787
  %324 = load i64, i64* %323, align 8, !dbg !1788, !tbaa !1316
  %325 = bitcast i8* %180 to i64*, !dbg !1789
  store i64 %324, i64* %325, align 8, !dbg !1789, !tbaa !1316
  call void @llvm.dbg.value(metadata i8** %183, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %326 = load i1, i1* @dev_debug, align 1, !dbg !1790
  br i1 %326, label %328, label %327, !dbg !1792

327:                                              ; preds = %328, %320
  br label %361, !dbg !1793

328:                                              ; preds = %320
  %329 = load i8*, i8** %183, align 8, !dbg !1795, !tbaa !1316
  %330 = icmp eq i8* %329, null, !dbg !1795
  br i1 %330, label %327, label %331, !dbg !1796

331:                                              ; preds = %328
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1797, !tbaa !1316
  %333 = tail call i8* @quote(i8* nonnull %72) #19, !dbg !1797
  %334 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %332, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8* %333) #19, !dbg !1797
  %335 = load i1, i1* @dev_debug, align 1, !dbg !1801
  br i1 %335, label %336, label %343, !dbg !1804

336:                                              ; preds = %331
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1801, !tbaa !1316
  %338 = getelementptr inbounds i8, i8* %180, i64 16, !dbg !1801
  %339 = bitcast i8* %338 to i8**, !dbg !1801
  call void @llvm.dbg.value(metadata i8** %339, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %340 = load i8*, i8** %183, align 8, !dbg !1801, !tbaa !1316
  %341 = tail call i8* @quote(i8* %340) #19, !dbg !1801
  %342 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %337, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i64 0, i64 0), i8* %341) #19, !dbg !1801
  br label %343, !dbg !1801

343:                                              ; preds = %336, %331
  %344 = phi i8** [ %339, %336 ], [ %183, %331 ], !dbg !1528
  call void @llvm.dbg.value(metadata i8** %344, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %345 = load i8*, i8** %344, align 8, !dbg !1805, !tbaa !1316
  %346 = icmp eq i8* %345, null, !dbg !1806
  br i1 %346, label %366, label %347, !dbg !1806

347:                                              ; preds = %343, %357
  %348 = phi i8* [ %358, %357 ], [ %345, %343 ]
  %349 = phi i8** [ %359, %357 ], [ %344, %343 ]
  call void @llvm.dbg.value(metadata i8** %349, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %350 = load i1, i1* @dev_debug, align 1, !dbg !1807
  br i1 %350, label %351, label %357, !dbg !1810

351:                                              ; preds = %347
  %352 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1807, !tbaa !1316
  %353 = getelementptr inbounds i8*, i8** %349, i64 1, !dbg !1807
  call void @llvm.dbg.value(metadata i8** %353, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %354 = tail call i8* @quote(i8* nonnull %348) #19, !dbg !1807
  %355 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %352, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i64 0, i64 0), i8* %354) #19, !dbg !1807
  %356 = load i8*, i8** %353, align 8, !dbg !1805, !tbaa !1316
  br label %357, !dbg !1807

357:                                              ; preds = %351, %347
  %358 = phi i8* [ %356, %351 ], [ %348, %347 ], !dbg !1805
  %359 = phi i8** [ %353, %351 ], [ %349, %347 ], !dbg !1811
  call void @llvm.dbg.value(metadata i8** %359, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %360 = icmp eq i8* %358, null, !dbg !1806
  br i1 %360, label %366, label %347, !dbg !1806, !llvm.loop !1812

361:                                              ; preds = %327, %361
  %362 = phi i8** [ %365, %361 ], [ %183, %327 ], !dbg !1528
  call void @llvm.dbg.value(metadata i8** %362, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %363 = load i8*, i8** %362, align 8, !dbg !1814, !tbaa !1316
  %364 = icmp eq i8* %363, null, !dbg !1793
  %365 = getelementptr inbounds i8*, i8** %362, i64 1, !dbg !1815
  call void @llvm.dbg.value(metadata i8** %365, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  br i1 %364, label %366, label %361, !dbg !1793, !llvm.loop !1816

366:                                              ; preds = %357, %361, %343
  %367 = phi i8** [ %344, %343 ], [ %362, %361 ], [ %359, %357 ], !dbg !1528
  call void @llvm.dbg.value(metadata i8** %367, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %368 = load i32, i32* @optind, align 4, !dbg !1818, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %368, metadata !1524, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i8** %367, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %369 = icmp slt i32 %368, %15, !dbg !1820
  br i1 %369, label %370, label %546, !dbg !1822

370:                                              ; preds = %366
  %371 = sext i32 %368 to i64, !dbg !1822
  %372 = sext i32 %15 to i64, !dbg !1822
  %373 = sub nsw i64 %372, %371, !dbg !1822
  %374 = icmp ult i64 %373, 4, !dbg !1822
  br i1 %374, label %469, label %375, !dbg !1822

375:                                              ; preds = %370
  %376 = sub nsw i64 %372, %371, !dbg !1822
  %377 = getelementptr i8*, i8** %367, i64 %376, !dbg !1822
  %378 = getelementptr i8*, i8** %16, i64 %371, !dbg !1822
  %379 = getelementptr i8*, i8** %16, i64 %372, !dbg !1822
  %380 = icmp ult i8** %367, %379, !dbg !1822
  %381 = icmp ult i8** %378, %377, !dbg !1822
  %382 = and i1 %380, %381, !dbg !1822
  br i1 %382, label %469, label %383, !dbg !1822

383:                                              ; preds = %375
  %384 = and i64 %373, -4, !dbg !1822
  %385 = add nsw i64 %384, %371, !dbg !1822
  %386 = getelementptr i8*, i8** %367, i64 %384, !dbg !1822
  %387 = add nsw i64 %384, -4, !dbg !1822
  %388 = lshr exact i64 %387, 2, !dbg !1822
  %389 = add nuw nsw i64 %388, 1, !dbg !1822
  %390 = and i64 %389, 3, !dbg !1822
  %391 = icmp ult i64 %387, 12, !dbg !1822
  br i1 %391, label %447, label %392, !dbg !1822

392:                                              ; preds = %383
  %393 = sub nsw i64 %389, %390, !dbg !1822
  br label %394, !dbg !1822

394:                                              ; preds = %394, %392
  %395 = phi i64 [ 0, %392 ], [ %444, %394 ]
  %396 = phi i64 [ %393, %392 ], [ %445, %394 ]
  %397 = add i64 %395, %371
  %398 = getelementptr i8*, i8** %367, i64 %395
  %399 = getelementptr inbounds i8*, i8** %16, i64 %397, !dbg !1823
  %400 = bitcast i8** %399 to <2 x i64>*, !dbg !1823
  %401 = load <2 x i64>, <2 x i64>* %400, align 8, !dbg !1823, !tbaa !1316, !alias.scope !1824
  %402 = getelementptr inbounds i8*, i8** %399, i64 2, !dbg !1823
  %403 = bitcast i8** %402 to <2 x i64>*, !dbg !1823
  %404 = load <2 x i64>, <2 x i64>* %403, align 8, !dbg !1823, !tbaa !1316, !alias.scope !1824
  %405 = bitcast i8** %398 to <2 x i64>*, !dbg !1827
  store <2 x i64> %401, <2 x i64>* %405, align 8, !dbg !1827, !tbaa !1316, !alias.scope !1828, !noalias !1824
  %406 = getelementptr i8*, i8** %398, i64 2, !dbg !1827
  %407 = bitcast i8** %406 to <2 x i64>*, !dbg !1827
  store <2 x i64> %404, <2 x i64>* %407, align 8, !dbg !1827, !tbaa !1316, !alias.scope !1828, !noalias !1824
  %408 = or i64 %395, 4
  %409 = add i64 %408, %371
  %410 = getelementptr i8*, i8** %367, i64 %408
  %411 = getelementptr inbounds i8*, i8** %16, i64 %409, !dbg !1823
  %412 = bitcast i8** %411 to <2 x i64>*, !dbg !1823
  %413 = load <2 x i64>, <2 x i64>* %412, align 8, !dbg !1823, !tbaa !1316, !alias.scope !1824
  %414 = getelementptr inbounds i8*, i8** %411, i64 2, !dbg !1823
  %415 = bitcast i8** %414 to <2 x i64>*, !dbg !1823
  %416 = load <2 x i64>, <2 x i64>* %415, align 8, !dbg !1823, !tbaa !1316, !alias.scope !1824
  %417 = bitcast i8** %410 to <2 x i64>*, !dbg !1827
  store <2 x i64> %413, <2 x i64>* %417, align 8, !dbg !1827, !tbaa !1316, !alias.scope !1828, !noalias !1824
  %418 = getelementptr i8*, i8** %410, i64 2, !dbg !1827
  %419 = bitcast i8** %418 to <2 x i64>*, !dbg !1827
  store <2 x i64> %416, <2 x i64>* %419, align 8, !dbg !1827, !tbaa !1316, !alias.scope !1828, !noalias !1824
  %420 = or i64 %395, 8
  %421 = add i64 %420, %371
  %422 = getelementptr i8*, i8** %367, i64 %420
  %423 = getelementptr inbounds i8*, i8** %16, i64 %421, !dbg !1823
  %424 = bitcast i8** %423 to <2 x i64>*, !dbg !1823
  %425 = load <2 x i64>, <2 x i64>* %424, align 8, !dbg !1823, !tbaa !1316, !alias.scope !1824
  %426 = getelementptr inbounds i8*, i8** %423, i64 2, !dbg !1823
  %427 = bitcast i8** %426 to <2 x i64>*, !dbg !1823
  %428 = load <2 x i64>, <2 x i64>* %427, align 8, !dbg !1823, !tbaa !1316, !alias.scope !1824
  %429 = bitcast i8** %422 to <2 x i64>*, !dbg !1827
  store <2 x i64> %425, <2 x i64>* %429, align 8, !dbg !1827, !tbaa !1316, !alias.scope !1828, !noalias !1824
  %430 = getelementptr i8*, i8** %422, i64 2, !dbg !1827
  %431 = bitcast i8** %430 to <2 x i64>*, !dbg !1827
  store <2 x i64> %428, <2 x i64>* %431, align 8, !dbg !1827, !tbaa !1316, !alias.scope !1828, !noalias !1824
  %432 = or i64 %395, 12
  %433 = add i64 %432, %371
  %434 = getelementptr i8*, i8** %367, i64 %432
  %435 = getelementptr inbounds i8*, i8** %16, i64 %433, !dbg !1823
  %436 = bitcast i8** %435 to <2 x i64>*, !dbg !1823
  %437 = load <2 x i64>, <2 x i64>* %436, align 8, !dbg !1823, !tbaa !1316, !alias.scope !1824
  %438 = getelementptr inbounds i8*, i8** %435, i64 2, !dbg !1823
  %439 = bitcast i8** %438 to <2 x i64>*, !dbg !1823
  %440 = load <2 x i64>, <2 x i64>* %439, align 8, !dbg !1823, !tbaa !1316, !alias.scope !1824
  %441 = bitcast i8** %434 to <2 x i64>*, !dbg !1827
  store <2 x i64> %437, <2 x i64>* %441, align 8, !dbg !1827, !tbaa !1316, !alias.scope !1828, !noalias !1824
  %442 = getelementptr i8*, i8** %434, i64 2, !dbg !1827
  %443 = bitcast i8** %442 to <2 x i64>*, !dbg !1827
  store <2 x i64> %440, <2 x i64>* %443, align 8, !dbg !1827, !tbaa !1316, !alias.scope !1828, !noalias !1824
  %444 = add i64 %395, 16
  %445 = add i64 %396, -4
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %394, !llvm.loop !1830

447:                                              ; preds = %394, %383
  %448 = phi i64 [ 0, %383 ], [ %444, %394 ]
  %449 = icmp eq i64 %390, 0
  br i1 %449, label %467, label %450

450:                                              ; preds = %447, %450
  %451 = phi i64 [ %464, %450 ], [ %448, %447 ]
  %452 = phi i64 [ %465, %450 ], [ %390, %447 ]
  %453 = add i64 %451, %371
  %454 = getelementptr i8*, i8** %367, i64 %451
  %455 = getelementptr inbounds i8*, i8** %16, i64 %453, !dbg !1823
  %456 = bitcast i8** %455 to <2 x i64>*, !dbg !1823
  %457 = load <2 x i64>, <2 x i64>* %456, align 8, !dbg !1823, !tbaa !1316, !alias.scope !1824
  %458 = getelementptr inbounds i8*, i8** %455, i64 2, !dbg !1823
  %459 = bitcast i8** %458 to <2 x i64>*, !dbg !1823
  %460 = load <2 x i64>, <2 x i64>* %459, align 8, !dbg !1823, !tbaa !1316, !alias.scope !1824
  %461 = bitcast i8** %454 to <2 x i64>*, !dbg !1827
  store <2 x i64> %457, <2 x i64>* %461, align 8, !dbg !1827, !tbaa !1316, !alias.scope !1828, !noalias !1824
  %462 = getelementptr i8*, i8** %454, i64 2, !dbg !1827
  %463 = bitcast i8** %462 to <2 x i64>*, !dbg !1827
  store <2 x i64> %460, <2 x i64>* %463, align 8, !dbg !1827, !tbaa !1316, !alias.scope !1828, !noalias !1824
  %464 = add i64 %451, 4
  %465 = add i64 %452, -1
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %467, label %450, !llvm.loop !1833

467:                                              ; preds = %450, %447
  %468 = icmp eq i64 %373, %384, !dbg !1822
  br i1 %468, label %546, label %469, !dbg !1822

469:                                              ; preds = %467, %375, %370
  %470 = phi i64 [ %371, %375 ], [ %371, %370 ], [ %385, %467 ]
  %471 = phi i8** [ %367, %375 ], [ %367, %370 ], [ %386, %467 ]
  %472 = sub nsw i64 %372, %470, !dbg !1822
  %473 = xor i64 %470, -1, !dbg !1822
  %474 = add nsw i64 %473, %372, !dbg !1822
  %475 = and i64 %472, 7, !dbg !1822
  %476 = icmp eq i64 %475, 0, !dbg !1822
  br i1 %476, label %489, label %477, !dbg !1822

477:                                              ; preds = %469, %477
  %478 = phi i64 [ %486, %477 ], [ %470, %469 ]
  %479 = phi i8** [ %484, %477 ], [ %471, %469 ]
  %480 = phi i64 [ %487, %477 ], [ %475, %469 ]
  call void @llvm.dbg.value(metadata i8** %479, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %478, metadata !1524, metadata !DIExpression()) #19, !dbg !1528
  %481 = getelementptr inbounds i8*, i8** %16, i64 %478, !dbg !1823
  %482 = bitcast i8** %481 to i64*, !dbg !1823
  %483 = load i64, i64* %482, align 8, !dbg !1823, !tbaa !1316
  %484 = getelementptr inbounds i8*, i8** %479, i64 1, !dbg !1835
  call void @llvm.dbg.value(metadata i8** %484, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %485 = bitcast i8** %479 to i64*, !dbg !1827
  store i64 %483, i64* %485, align 8, !dbg !1827, !tbaa !1316
  %486 = add nsw i64 %478, 1, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %486, metadata !1524, metadata !DIExpression()) #19, !dbg !1528
  %487 = add i64 %480, -1, !dbg !1822
  %488 = icmp eq i64 %487, 0, !dbg !1822
  br i1 %488, label %489, label %477, !dbg !1822, !llvm.loop !1837

489:                                              ; preds = %477, %469
  %490 = phi i8** [ undef, %469 ], [ %484, %477 ]
  %491 = phi i64 [ %470, %469 ], [ %486, %477 ]
  %492 = phi i8** [ %471, %469 ], [ %484, %477 ]
  %493 = icmp ult i64 %474, 7, !dbg !1822
  br i1 %493, label %546, label %494, !dbg !1822

494:                                              ; preds = %489, %494
  %495 = phi i64 [ %544, %494 ], [ %491, %489 ]
  %496 = phi i8** [ %542, %494 ], [ %492, %489 ]
  call void @llvm.dbg.value(metadata i8** %496, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %495, metadata !1524, metadata !DIExpression()) #19, !dbg !1528
  %497 = getelementptr inbounds i8*, i8** %16, i64 %495, !dbg !1823
  %498 = bitcast i8** %497 to i64*, !dbg !1823
  %499 = load i64, i64* %498, align 8, !dbg !1823, !tbaa !1316
  %500 = getelementptr inbounds i8*, i8** %496, i64 1, !dbg !1835
  call void @llvm.dbg.value(metadata i8** %500, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %501 = bitcast i8** %496 to i64*, !dbg !1827
  store i64 %499, i64* %501, align 8, !dbg !1827, !tbaa !1316
  %502 = add nsw i64 %495, 1, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %502, metadata !1524, metadata !DIExpression()) #19, !dbg !1528
  %503 = getelementptr inbounds i8*, i8** %16, i64 %502, !dbg !1823
  %504 = bitcast i8** %503 to i64*, !dbg !1823
  %505 = load i64, i64* %504, align 8, !dbg !1823, !tbaa !1316
  %506 = getelementptr inbounds i8*, i8** %496, i64 2, !dbg !1835
  call void @llvm.dbg.value(metadata i8** %506, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %507 = bitcast i8** %500 to i64*, !dbg !1827
  store i64 %505, i64* %507, align 8, !dbg !1827, !tbaa !1316
  %508 = add nsw i64 %495, 2, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %508, metadata !1524, metadata !DIExpression()) #19, !dbg !1528
  %509 = getelementptr inbounds i8*, i8** %16, i64 %508, !dbg !1823
  %510 = bitcast i8** %509 to i64*, !dbg !1823
  %511 = load i64, i64* %510, align 8, !dbg !1823, !tbaa !1316
  %512 = getelementptr inbounds i8*, i8** %496, i64 3, !dbg !1835
  call void @llvm.dbg.value(metadata i8** %512, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %513 = bitcast i8** %506 to i64*, !dbg !1827
  store i64 %511, i64* %513, align 8, !dbg !1827, !tbaa !1316
  %514 = add nsw i64 %495, 3, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %514, metadata !1524, metadata !DIExpression()) #19, !dbg !1528
  %515 = getelementptr inbounds i8*, i8** %16, i64 %514, !dbg !1823
  %516 = bitcast i8** %515 to i64*, !dbg !1823
  %517 = load i64, i64* %516, align 8, !dbg !1823, !tbaa !1316
  %518 = getelementptr inbounds i8*, i8** %496, i64 4, !dbg !1835
  call void @llvm.dbg.value(metadata i8** %518, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %519 = bitcast i8** %512 to i64*, !dbg !1827
  store i64 %517, i64* %519, align 8, !dbg !1827, !tbaa !1316
  %520 = add nsw i64 %495, 4, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %520, metadata !1524, metadata !DIExpression()) #19, !dbg !1528
  %521 = getelementptr inbounds i8*, i8** %16, i64 %520, !dbg !1823
  %522 = bitcast i8** %521 to i64*, !dbg !1823
  %523 = load i64, i64* %522, align 8, !dbg !1823, !tbaa !1316
  %524 = getelementptr inbounds i8*, i8** %496, i64 5, !dbg !1835
  call void @llvm.dbg.value(metadata i8** %524, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %525 = bitcast i8** %518 to i64*, !dbg !1827
  store i64 %523, i64* %525, align 8, !dbg !1827, !tbaa !1316
  %526 = add nsw i64 %495, 5, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %526, metadata !1524, metadata !DIExpression()) #19, !dbg !1528
  %527 = getelementptr inbounds i8*, i8** %16, i64 %526, !dbg !1823
  %528 = bitcast i8** %527 to i64*, !dbg !1823
  %529 = load i64, i64* %528, align 8, !dbg !1823, !tbaa !1316
  %530 = getelementptr inbounds i8*, i8** %496, i64 6, !dbg !1835
  call void @llvm.dbg.value(metadata i8** %530, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %531 = bitcast i8** %524 to i64*, !dbg !1827
  store i64 %529, i64* %531, align 8, !dbg !1827, !tbaa !1316
  %532 = add nsw i64 %495, 6, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %532, metadata !1524, metadata !DIExpression()) #19, !dbg !1528
  %533 = getelementptr inbounds i8*, i8** %16, i64 %532, !dbg !1823
  %534 = bitcast i8** %533 to i64*, !dbg !1823
  %535 = load i64, i64* %534, align 8, !dbg !1823, !tbaa !1316
  %536 = getelementptr inbounds i8*, i8** %496, i64 7, !dbg !1835
  call void @llvm.dbg.value(metadata i8** %536, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %537 = bitcast i8** %530 to i64*, !dbg !1827
  store i64 %535, i64* %537, align 8, !dbg !1827, !tbaa !1316
  %538 = add nsw i64 %495, 7, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %538, metadata !1524, metadata !DIExpression()) #19, !dbg !1528
  %539 = getelementptr inbounds i8*, i8** %16, i64 %538, !dbg !1823
  %540 = bitcast i8** %539 to i64*, !dbg !1823
  %541 = load i64, i64* %540, align 8, !dbg !1823, !tbaa !1316
  %542 = getelementptr inbounds i8*, i8** %496, i64 8, !dbg !1835
  call void @llvm.dbg.value(metadata i8** %542, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %543 = bitcast i8** %536 to i64*, !dbg !1827
  store i64 %541, i64* %543, align 8, !dbg !1827, !tbaa !1316
  %544 = add nsw i64 %495, 8, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %544, metadata !1524, metadata !DIExpression()) #19, !dbg !1528
  %545 = icmp eq i64 %544, %372, !dbg !1820
  br i1 %545, label %546, label %494, !dbg !1822, !llvm.loop !1838

546:                                              ; preds = %489, %494, %467, %366
  %547 = phi i8** [ %367, %366 ], [ %386, %467 ], [ %490, %489 ], [ %542, %494 ], !dbg !1528
  call void @llvm.dbg.value(metadata i8** %547, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  store i8* null, i8** %547, align 8, !dbg !1839, !tbaa !1316
  call void @llvm.dbg.value(metadata i32 0, metadata !1525, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i8** %181, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %548 = load i8*, i8** %181, align 8, !dbg !1840, !tbaa !1316
  %549 = icmp eq i8* %548, null, !dbg !1843
  br i1 %549, label %557, label %550, !dbg !1843

550:                                              ; preds = %546, %550
  %551 = phi i8** [ %554, %550 ], [ %181, %546 ]
  %552 = phi i32 [ %553, %550 ], [ 0, %546 ]
  call void @llvm.dbg.value(metadata i8** %551, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %552, metadata !1525, metadata !DIExpression()) #19, !dbg !1528
  %553 = add nuw nsw i32 %552, 1, !dbg !1844
  call void @llvm.dbg.value(metadata i32 %553, metadata !1525, metadata !DIExpression()) #19, !dbg !1528
  %554 = getelementptr inbounds i8*, i8** %551, i64 1, !dbg !1845
  call void @llvm.dbg.value(metadata i8** %554, metadata !1527, metadata !DIExpression()) #19, !dbg !1528
  %555 = load i8*, i8** %554, align 8, !dbg !1840, !tbaa !1316
  %556 = icmp eq i8* %555, null, !dbg !1843
  br i1 %556, label %557, label %550, !dbg !1843, !llvm.loop !1846

557:                                              ; preds = %550, %546
  %558 = phi i32 [ 0, %546 ], [ %553, %550 ], !dbg !1528
  call void @llvm.dbg.value(metadata i32 %558, metadata !1525, metadata !DIExpression()) #19, !dbg !1528
  store i32 0, i32* @optind, align 4, !dbg !1848, !tbaa !1432
  br label %559, !dbg !1849

559:                                              ; preds = %557, %80, %14, %65, %64, %62, %60, %57, %56, %55, %49
  %560 = phi i32 [ %15, %65 ], [ %15, %64 ], [ %15, %62 ], [ %15, %60 ], [ %15, %57 ], [ %15, %56 ], [ %15, %55 ], [ %15, %49 ], [ %15, %14 ], [ %15, %80 ], [ %558, %557 ]
  %561 = phi i8** [ %16, %65 ], [ %16, %64 ], [ %16, %62 ], [ %16, %60 ], [ %16, %57 ], [ %16, %56 ], [ %16, %55 ], [ %16, %49 ], [ %16, %14 ], [ %16, %80 ], [ %181, %557 ]
  %562 = phi i8* [ %66, %65 ], [ %17, %64 ], [ %17, %62 ], [ %17, %60 ], [ %17, %57 ], [ %17, %56 ], [ %17, %55 ], [ %17, %49 ], [ %17, %14 ], [ %17, %80 ], [ %17, %557 ]
  %563 = phi i8 [ %18, %65 ], [ %18, %64 ], [ %18, %62 ], [ %18, %60 ], [ %18, %57 ], [ 1, %56 ], [ %18, %55 ], [ %18, %49 ], [ %18, %14 ], [ %18, %80 ], [ %18, %557 ]
  %564 = phi i8 [ %19, %65 ], [ %19, %64 ], [ %19, %62 ], [ %19, %60 ], [ %19, %57 ], [ %19, %56 ], [ %19, %55 ], [ %19, %49 ], [ 1, %14 ], [ %19, %80 ], [ %19, %557 ]
  br label %14, !dbg !1419, !llvm.loop !1850

565:                                              ; preds = %14, %14
  %566 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 5) #19, !dbg !1852
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %566, i32 %20) #19, !dbg !1853
  %567 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0), i32 5) #19, !dbg !1854
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %567) #19, !dbg !1855
  tail call void @usage(i32 125) #26, !dbg !1856
  unreachable, !dbg !1856

568:                                              ; preds = %14
  tail call void @usage(i32 0) #26, !dbg !1857
  unreachable, !dbg !1857

569:                                              ; preds = %14
  %570 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1858, !tbaa !1316
  %571 = load i8*, i8** @Version, align 8, !dbg !1858, !tbaa !1316
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %570, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %571, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* null) #19, !dbg !1858
  tail call void @exit(i32 0) #24, !dbg !1858
  unreachable, !dbg !1858

572:                                              ; preds = %14
  tail call void @usage(i32 125) #26, !dbg !1859
  unreachable, !dbg !1859

573:                                              ; preds = %14
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %17, metadata !357, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %18, metadata !356, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %19, metadata !354, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %17, metadata !357, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %18, metadata !356, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %19, metadata !354, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %17, metadata !357, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %18, metadata !356, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %19, metadata !354, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %17, metadata !357, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %18, metadata !356, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %19, metadata !354, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %17, metadata !357, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %18, metadata !356, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %19, metadata !354, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %17, metadata !357, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %18, metadata !356, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 %19, metadata !354, metadata !DIExpression()), !dbg !1419
  %574 = load i32, i32* @optind, align 4, !dbg !1860, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  %575 = icmp slt i32 %574, %15, !dbg !1862
  br i1 %575, label %576, label %584, !dbg !1863

576:                                              ; preds = %573
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  %577 = sext i32 %574 to i64, !dbg !1864
  %578 = getelementptr inbounds i8*, i8** %16, i64 %577, !dbg !1864
  %579 = load i8*, i8** %578, align 8, !dbg !1864, !tbaa !1316
  %580 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %579, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #23, !dbg !1864
  %581 = icmp eq i32 %580, 0, !dbg !1864
  br i1 %581, label %582, label %584, !dbg !1865

582:                                              ; preds = %576
  call void @llvm.dbg.value(metadata i8 1, metadata !354, metadata !DIExpression()), !dbg !1419
  %583 = add nsw i32 %574, 1, !dbg !1866
  store i32 %583, i32* @optind, align 4, !dbg !1866, !tbaa !1432
  call void @llvm.dbg.value(metadata i8 %19, metadata !354, metadata !DIExpression()), !dbg !1419
  br label %586, !dbg !1868

584:                                              ; preds = %576, %573
  call void @llvm.dbg.value(metadata i8 %19, metadata !354, metadata !DIExpression()), !dbg !1419
  %585 = icmp eq i8 %19, 0, !dbg !1869
  br i1 %585, label %592, label %586, !dbg !1868

586:                                              ; preds = %582, %584
  %587 = load i1, i1* @dev_debug, align 1, !dbg !1871
  br i1 %587, label %588, label %591, !dbg !1875

588:                                              ; preds = %586
  %589 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1871, !tbaa !1316
  %590 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %589, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0)) #19, !dbg !1871
  br label %591, !dbg !1871

591:                                              ; preds = %588, %586
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @main.dummy_environ, i64 0, i64 0), i8*** @environ, align 8, !dbg !1876, !tbaa !1316
  br label %622, !dbg !1877

592:                                              ; preds = %584
  call void @llvm.dbg.value(metadata i64 0, metadata !1878, metadata !DIExpression()) #19, !dbg !1882
  %593 = load i64, i64* @usvars_used, align 8, !dbg !1884, !tbaa !1460
  %594 = icmp eq i64 %593, 0, !dbg !1886
  br i1 %594, label %622, label %595, !dbg !1887

595:                                              ; preds = %592, %618
  %596 = phi i64 [ %619, %618 ], [ 0, %592 ]
  call void @llvm.dbg.value(metadata i64 %596, metadata !1878, metadata !DIExpression()) #19, !dbg !1882
  %597 = load i1, i1* @dev_debug, align 1, !dbg !1888
  br i1 %597, label %598, label %604, !dbg !1892

598:                                              ; preds = %595
  %599 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1888, !tbaa !1316
  %600 = load i8**, i8*** @usvars, align 8, !dbg !1888, !tbaa !1316
  %601 = getelementptr inbounds i8*, i8** %600, i64 %596, !dbg !1888
  %602 = load i8*, i8** %601, align 8, !dbg !1888, !tbaa !1316
  %603 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %599, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i64 0, i64 0), i8* %602) #19, !dbg !1888
  br label %604, !dbg !1888

604:                                              ; preds = %598, %595
  %605 = load i8**, i8*** @usvars, align 8, !dbg !1893, !tbaa !1316
  %606 = getelementptr inbounds i8*, i8** %605, i64 %596, !dbg !1893
  %607 = load i8*, i8** %606, align 8, !dbg !1893, !tbaa !1316
  %608 = tail call i32 @unsetenv(i8* %607) #19, !dbg !1895
  %609 = icmp eq i32 %608, 0, !dbg !1895
  br i1 %609, label %618, label %610, !dbg !1896

610:                                              ; preds = %604
  call void @llvm.dbg.value(metadata i64 %596, metadata !1878, metadata !DIExpression()) #19, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %596, metadata !1878, metadata !DIExpression()) #19, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %596, metadata !1878, metadata !DIExpression()) #19, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %596, metadata !1878, metadata !DIExpression()) #19, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %596, metadata !1878, metadata !DIExpression()) #19, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %596, metadata !1878, metadata !DIExpression()) #19, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %596, metadata !1878, metadata !DIExpression()) #19, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %596, metadata !1878, metadata !DIExpression()) #19, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %596, metadata !1878, metadata !DIExpression()) #19, !dbg !1882
  %611 = tail call i32* @__errno_location() #25, !dbg !1897
  %612 = load i32, i32* %611, align 4, !dbg !1897, !tbaa !1432
  %613 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i64 0, i64 0), i32 5) #19, !dbg !1897
  %614 = load i8**, i8*** @usvars, align 8, !dbg !1897, !tbaa !1316
  %615 = getelementptr inbounds i8*, i8** %614, i64 %596, !dbg !1897
  %616 = load i8*, i8** %615, align 8, !dbg !1897, !tbaa !1316
  %617 = tail call i8* @quote(i8* %616) #19, !dbg !1897
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 %612, i8* %613, i8* %617) #19, !dbg !1897
  unreachable, !dbg !1897

618:                                              ; preds = %604
  %619 = add nuw i64 %596, 1, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %619, metadata !1878, metadata !DIExpression()) #19, !dbg !1882
  %620 = load i64, i64* @usvars_used, align 8, !dbg !1884, !tbaa !1460
  %621 = icmp ult i64 %619, %620, !dbg !1886
  br i1 %621, label %595, label %622, !dbg !1887, !llvm.loop !1899

622:                                              ; preds = %618, %592, %591
  %623 = load i32, i32* @optind, align 4, !dbg !1901, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  %624 = icmp slt i32 %623, %15, !dbg !1902
  br i1 %624, label %625, label %662, !dbg !1903

625:                                              ; preds = %622, %654
  %626 = phi i32 [ %656, %654 ], [ %623, %622 ]
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  %627 = sext i32 %626 to i64, !dbg !1904
  %628 = getelementptr inbounds i8*, i8** %16, i64 %627, !dbg !1904
  %629 = load i8*, i8** %628, align 8, !dbg !1904, !tbaa !1316
  %630 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %629, i32 61) #23, !dbg !1905
  call void @llvm.dbg.value(metadata i8* %630, metadata !358, metadata !DIExpression()), !dbg !1419
  %631 = icmp eq i8* %630, null, !dbg !1903
  br i1 %631, label %658, label %632, !dbg !1906

632:                                              ; preds = %625
  %633 = load i1, i1* @dev_debug, align 1, !dbg !1907
  br i1 %633, label %634, label %641, !dbg !1911

634:                                              ; preds = %632
  %635 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1907, !tbaa !1316
  %636 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %635, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %629) #19, !dbg !1907
  %637 = load i32, i32* @optind, align 4, !dbg !1912, !tbaa !1432
  %638 = sext i32 %637 to i64, !dbg !1914
  %639 = getelementptr inbounds i8*, i8** %16, i64 %638, !dbg !1914
  %640 = load i8*, i8** %639, align 8, !dbg !1915, !tbaa !1316
  br label %641, !dbg !1907

641:                                              ; preds = %634, %632
  %642 = phi i8* [ %640, %634 ], [ %629, %632 ], !dbg !1915
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  %643 = tail call i32 @putenv(i8* %642) #19, !dbg !1916
  %644 = icmp eq i32 %643, 0, !dbg !1916
  br i1 %644, label %654, label %645, !dbg !1917

645:                                              ; preds = %641
  store i8 0, i8* %630, align 1, !dbg !1918, !tbaa !1532
  %646 = tail call i32* @__errno_location() #25, !dbg !1920
  %647 = load i32, i32* %646, align 4, !dbg !1920, !tbaa !1432
  %648 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 5) #19, !dbg !1920
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  %649 = load i32, i32* @optind, align 4, !dbg !1920, !tbaa !1432
  %650 = sext i32 %649 to i64, !dbg !1920
  %651 = getelementptr inbounds i8*, i8** %16, i64 %650, !dbg !1920
  %652 = load i8*, i8** %651, align 8, !dbg !1920, !tbaa !1316
  %653 = tail call i8* @quote(i8* %652) #19, !dbg !1920
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 %647, i8* %648, i8* %653) #19, !dbg !1920
  unreachable, !dbg !1920

654:                                              ; preds = %641
  %655 = load i32, i32* @optind, align 4, !dbg !1921, !tbaa !1432
  %656 = add nsw i32 %655, 1, !dbg !1921
  store i32 %656, i32* @optind, align 4, !dbg !1921, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  %657 = icmp slt i32 %656, %15, !dbg !1902
  br i1 %657, label %625, label %662, !dbg !1903, !llvm.loop !1922

658:                                              ; preds = %625
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  %659 = icmp eq i8 %18, 0, !dbg !1924
  br i1 %659, label %680, label %660, !dbg !1926

660:                                              ; preds = %658
  %661 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i32 5) #19, !dbg !1927
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %661) #19, !dbg !1929
  tail call void @usage(i32 125) #26, !dbg !1930
  unreachable, !dbg !1930

662:                                              ; preds = %654, %622
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i1 false, metadata !359, metadata !DIExpression()), !dbg !1419
  %663 = icmp eq i8 %18, 0, !dbg !1924
  %664 = icmp eq i8* %17, null, !dbg !1931
  br i1 %664, label %667, label %665, !dbg !1933

665:                                              ; preds = %662
  %666 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i32 5) #19, !dbg !1934
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %666) #19, !dbg !1936
  tail call void @usage(i32 125) #26, !dbg !1937
  unreachable, !dbg !1937

667:                                              ; preds = %662
  %668 = load i8**, i8*** @environ, align 8, !dbg !1938, !tbaa !1316
  call void @llvm.dbg.value(metadata i8** %668, metadata !360, metadata !DIExpression()), !dbg !1939
  %669 = load i8*, i8** %668, align 8, !dbg !1940, !tbaa !1316
  %670 = icmp eq i8* %669, null, !dbg !1941
  br i1 %670, label %885, label %671, !dbg !1941

671:                                              ; preds = %667
  %672 = select i1 %663, i32 10, i32 0, !dbg !1939
  br label %673, !dbg !1941

673:                                              ; preds = %671, %673
  %674 = phi i8* [ %669, %671 ], [ %678, %673 ]
  %675 = phi i8** [ %668, %671 ], [ %676, %673 ]
  call void @llvm.dbg.value(metadata i8** %675, metadata !360, metadata !DIExpression()), !dbg !1939
  %676 = getelementptr inbounds i8*, i8** %675, i64 1, !dbg !1942
  call void @llvm.dbg.value(metadata i8** %676, metadata !360, metadata !DIExpression()), !dbg !1939
  %677 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* nonnull %674, i32 %672) #19, !dbg !1942
  %678 = load i8*, i8** %676, align 8, !dbg !1940, !tbaa !1316
  %679 = icmp eq i8* %678, null, !dbg !1941
  br i1 %679, label %885, label %673, !dbg !1941, !llvm.loop !1943

680:                                              ; preds = %658
  %681 = icmp eq i8* %17, null, !dbg !1931
  call void @llvm.dbg.value(metadata i32 1, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  %682 = bitcast %struct.sigaction* %4 to i8*, !dbg !1945
  %683 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 0, i32 0, !dbg !1946
  %684 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0, !dbg !1949
  br label %685, !dbg !1950

685:                                              ; preds = %731, %680
  %686 = phi i64 [ 1, %680 ], [ %732, %731 ]
  call void @llvm.dbg.value(metadata i64 %686, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %682) #19, !dbg !1951
  %687 = load i32*, i32** @signals, align 8, !dbg !1952, !tbaa !1316
  %688 = getelementptr inbounds i32, i32* %687, i64 %686, !dbg !1952
  %689 = load i32, i32* %688, align 4, !dbg !1952, !tbaa !1532
  switch i32 %689, label %690 [
    i32 0, label %731
    i32 2, label %691
    i32 4, label %691
  ], !dbg !1954

690:                                              ; preds = %685
  br label %691, !dbg !1955

691:                                              ; preds = %690, %685, %685
  %692 = phi i1 [ false, %690 ], [ true, %685 ], [ true, %685 ]
  call void @llvm.dbg.value(metadata i1 %692, metadata !1392, metadata !DIExpression()) #19, !dbg !1945
  %693 = add i32 %689, -1, !dbg !1956
  %694 = icmp ult i32 %693, 2, !dbg !1956
  call void @llvm.dbg.value(metadata i1 %694, metadata !1393, metadata !DIExpression()) #19, !dbg !1945
  %695 = trunc i64 %686 to i32, !dbg !1957
  %696 = call i32 @sigaction(i32 %695, %struct.sigaction* null, %struct.sigaction* nonnull %4) #19, !dbg !1957
  call void @llvm.dbg.value(metadata i32 %696, metadata !1394, metadata !DIExpression()) #19, !dbg !1945
  %697 = icmp ne i32 %696, 0, !dbg !1958
  %698 = xor i1 %697, true, !dbg !1960
  %699 = or i1 %692, %698, !dbg !1960
  br i1 %699, label %705, label %700, !dbg !1960

700:                                              ; preds = %691
  call void @llvm.dbg.value(metadata i64 %686, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %686, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %686, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  %701 = trunc i64 %686 to i32, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %686, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  call void @llvm.dbg.value(metadata i32 %701, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  call void @llvm.dbg.value(metadata i32 %701, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  %702 = tail call i32* @__errno_location() #25, !dbg !1961
  %703 = load i32, i32* %702, align 4, !dbg !1961, !tbaa !1432
  %704 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.86, i64 0, i64 0), i32 5) #19, !dbg !1961
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %703, i8* %704, i32 %701) #19, !dbg !1961
  unreachable, !dbg !1961

705:                                              ; preds = %691
  br i1 %697, label %718, label %706, !dbg !1962

706:                                              ; preds = %705
  %707 = select i1 %694, void (i32)* null, void (i32)* inttoptr (i64 1 to void (i32)*), !dbg !1963
  store void (i32)* %707, void (i32)** %683, align 8, !dbg !1964, !tbaa !1532
  %708 = call i32 @sigaction(i32 %695, %struct.sigaction* nonnull %4, %struct.sigaction* null) #19, !dbg !1965
  call void @llvm.dbg.value(metadata i32 %708, metadata !1394, metadata !DIExpression()) #19, !dbg !1945
  %709 = icmp eq i32 %708, 0, !dbg !1967
  %710 = or i1 %692, %709, !dbg !1968
  %711 = xor i1 %709, true, !dbg !1968
  %712 = zext i1 %711 to i32, !dbg !1968
  br i1 %710, label %718, label %713, !dbg !1968

713:                                              ; preds = %706
  call void @llvm.dbg.value(metadata i64 %686, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %686, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %686, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  %714 = trunc i64 %686 to i32, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %686, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  call void @llvm.dbg.value(metadata i32 %714, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  call void @llvm.dbg.value(metadata i32 %714, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  %715 = tail call i32* @__errno_location() #25, !dbg !1969
  %716 = load i32, i32* %715, align 4, !dbg !1969, !tbaa !1432
  %717 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.87, i64 0, i64 0), i32 5) #19, !dbg !1969
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %716, i8* %717, i32 %714) #19, !dbg !1969
  unreachable, !dbg !1969

718:                                              ; preds = %706, %705
  %719 = phi i32 [ %696, %705 ], [ %712, %706 ], !dbg !1945
  call void @llvm.dbg.value(metadata i32 %719, metadata !1394, metadata !DIExpression()) #19, !dbg !1945
  %720 = load i1, i1* @dev_debug, align 1, !dbg !1970
  br i1 %720, label %721, label %731, !dbg !1971

721:                                              ; preds = %718
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %684) #19, !dbg !1972
  %722 = call i32 @sig2str(i32 %695, i8* nonnull %684) #19, !dbg !1973
  %723 = load i1, i1* @dev_debug, align 1, !dbg !1974
  br i1 %723, label %724, label %730, !dbg !1977

724:                                              ; preds = %721
  %725 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1974, !tbaa !1316
  %726 = select i1 %694, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), !dbg !1974
  %727 = icmp eq i32 %719, 0, !dbg !1974
  %728 = select i1 %727, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i64 0, i64 0), !dbg !1974
  %729 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %725, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.88, i64 0, i64 0), i8* nonnull %684, i32 %695, i8* %726, i8* %728) #19, !dbg !1974
  br label %730, !dbg !1974

730:                                              ; preds = %724, %721
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %684) #19, !dbg !1978
  br label %731, !dbg !1979

731:                                              ; preds = %730, %718, %685
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %682) #19, !dbg !1980
  %732 = add nuw nsw i64 %686, 1, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %732, metadata !1391, metadata !DIExpression()) #19, !dbg !1944
  %733 = icmp eq i64 %732, 65, !dbg !1982
  br i1 %733, label %734, label %685, !dbg !1950, !llvm.loop !1983

734:                                              ; preds = %731
  %735 = load i1, i1* @sig_mask_changed, align 1, !dbg !1985
  br i1 %735, label %736, label %777, !dbg !1986

736:                                              ; preds = %734
  %737 = bitcast %struct.__sigset_t* %3 to i8*, !dbg !1987
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %737) #19, !dbg !1987
  %738 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %3) #19, !dbg !1988
  %739 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* null, %struct.__sigset_t* nonnull %3) #19, !dbg !1989
  %740 = icmp eq i32 %739, 0, !dbg !1989
  br i1 %740, label %748, label %741, !dbg !1991

741:                                              ; preds = %736
  %742 = tail call i32* @__errno_location() #25, !dbg !1992
  %743 = load i32, i32* %742, align 4, !dbg !1992, !tbaa !1432
  %744 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.92, i64 0, i64 0), i32 5) #19, !dbg !1992
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %743, i8* %744) #19, !dbg !1992
  unreachable, !dbg !1992

745:                                              ; preds = %769
  %746 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* nonnull %3, %struct.__sigset_t* null) #19, !dbg !1993
  %747 = icmp eq i32 %746, 0, !dbg !1993
  br i1 %747, label %776, label %772, !dbg !1995

748:                                              ; preds = %736, %769
  %749 = phi i32 [ %770, %769 ], [ 1, %736 ]
  call void @llvm.dbg.value(metadata i32 %749, metadata !1372, metadata !DIExpression()) #19, !dbg !1996
  %750 = call i32 @sigismember(%struct.__sigset_t* nonnull @block_signals, i32 %749) #19, !dbg !1997
  %751 = icmp eq i32 %750, 0, !dbg !1997
  br i1 %751, label %754, label %752, !dbg !1999

752:                                              ; preds = %748
  %753 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 %749) #19, !dbg !2000
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), metadata !1371, metadata !DIExpression()) #19, !dbg !2002
  br label %759, !dbg !2003

754:                                              ; preds = %748
  %755 = call i32 @sigismember(%struct.__sigset_t* nonnull @unblock_signals, i32 %749) #19, !dbg !2004
  %756 = icmp eq i32 %755, 0, !dbg !2004
  br i1 %756, label %769, label %757, !dbg !2006

757:                                              ; preds = %754
  %758 = call i32 @sigdelset(%struct.__sigset_t* nonnull %3, i32 %749) #19, !dbg !2007
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i64 0, i64 0), metadata !1371, metadata !DIExpression()) #19, !dbg !2002
  br label %759, !dbg !2009

759:                                              ; preds = %757, %752
  %760 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), %752 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i64 0, i64 0), %757 ], !dbg !2010
  call void @llvm.dbg.value(metadata i8* %760, metadata !1371, metadata !DIExpression()) #19, !dbg !2002
  %761 = load i1, i1* @dev_debug, align 1, !dbg !2011
  br i1 %761, label %762, label %769, !dbg !2012

762:                                              ; preds = %759
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %684) #19, !dbg !2013
  %763 = call i32 @sig2str(i32 %749, i8* nonnull %684) #19, !dbg !2014
  %764 = load i1, i1* @dev_debug, align 1, !dbg !2015
  br i1 %764, label %765, label %768, !dbg !2018

765:                                              ; preds = %762
  %766 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2015, !tbaa !1316
  %767 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %766, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %684, i32 %749, i8* nonnull %760) #19, !dbg !2015
  br label %768, !dbg !2015

768:                                              ; preds = %765, %762
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %684) #19, !dbg !2019
  br label %769, !dbg !2020

769:                                              ; preds = %768, %759, %754
  %770 = add nuw nsw i32 %749, 1, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %770, metadata !1372, metadata !DIExpression()) #19, !dbg !1996
  %771 = icmp eq i32 %770, 65, !dbg !2022
  br i1 %771, label %745, label %748, !dbg !2023, !llvm.loop !2024

772:                                              ; preds = %745
  %773 = tail call i32* @__errno_location() #25, !dbg !2026
  %774 = load i32, i32* %773, align 4, !dbg !2026, !tbaa !1432
  %775 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i64 0, i64 0), i32 5) #19, !dbg !2026
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %774, i8* %775) #19, !dbg !2026
  unreachable, !dbg !2026

776:                                              ; preds = %745
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %737) #19, !dbg !2027
  br label %777, !dbg !2028

777:                                              ; preds = %776, %734
  %778 = load i1, i1* @report_signal_handling, align 1, !dbg !2029
  br i1 %778, label %779, label %818, !dbg !2030

779:                                              ; preds = %777
  %780 = bitcast %struct.__sigset_t* %5 to i8*, !dbg !2031
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %780) #19, !dbg !2031
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %684) #19, !dbg !2032
  %781 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %5) #19, !dbg !2033
  %782 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* null, %struct.__sigset_t* nonnull %5) #19, !dbg !2034
  %783 = icmp eq i32 %782, 0, !dbg !2034
  br i1 %783, label %784, label %787, !dbg !2036

784:                                              ; preds = %779
  call void @llvm.dbg.value(metadata i32 1, metadata !1404, metadata !DIExpression()) #19, !dbg !2037
  %785 = bitcast %struct.sigaction* %7 to i8*, !dbg !2038
  %786 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i64 0, i32 0, i32 0, !dbg !2038
  br label %791, !dbg !2039

787:                                              ; preds = %779
  %788 = tail call i32* @__errno_location() #25, !dbg !2040
  %789 = load i32, i32* %788, align 4, !dbg !2040, !tbaa !1432
  %790 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.92, i64 0, i64 0), i32 5) #19, !dbg !2040
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %789, i8* %790) #19, !dbg !2040
  unreachable, !dbg !2040

791:                                              ; preds = %814, %784
  %792 = phi i32 [ 1, %784 ], [ %815, %814 ]
  call void @llvm.dbg.value(metadata i32 %792, metadata !1404, metadata !DIExpression()) #19, !dbg !2037
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %785) #19, !dbg !2041
  %793 = call i32 @sigaction(i32 %792, %struct.sigaction* null, %struct.sigaction* nonnull %7) #19, !dbg !2042
  %794 = icmp eq i32 %793, 0, !dbg !2042
  br i1 %794, label %795, label %814, !dbg !2044

795:                                              ; preds = %791
  %796 = load void (i32)*, void (i32)** %786, align 8, !dbg !2045, !tbaa !1532
  %797 = icmp eq void (i32)* %796, inttoptr (i64 1 to void (i32)*), !dbg !2046
  %798 = select i1 %797, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), !dbg !2047
  call void @llvm.dbg.value(metadata i8* %798, metadata !1409, metadata !DIExpression()) #19, !dbg !2038
  %799 = call i32 @sigismember(%struct.__sigset_t* nonnull %5, i32 %792) #19, !dbg !2048
  %800 = icmp eq i32 %799, 0, !dbg !2048
  %801 = select i1 %800, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), !dbg !2048
  call void @llvm.dbg.value(metadata i8* %801, metadata !1410, metadata !DIExpression()) #19, !dbg !2038
  %802 = load i8, i8* %798, align 1, !dbg !2049, !tbaa !1532
  %803 = icmp eq i8 %802, 0, !dbg !2049
  %804 = load i8, i8* %801, align 1, !dbg !2038, !tbaa !1532
  %805 = icmp eq i8 %804, 0, !dbg !2038
  br i1 %803, label %808, label %806, !dbg !2050

806:                                              ; preds = %795
  %807 = select i1 %805, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), !dbg !2049
  br label %809, !dbg !2049

808:                                              ; preds = %795
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), metadata !1411, metadata !DIExpression()) #19, !dbg !2038
  br i1 %805, label %814, label %809, !dbg !2051

809:                                              ; preds = %808, %806
  %810 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), %808 ], [ %807, %806 ]
  %811 = call i32 @sig2str(i32 %792, i8* nonnull %684) #19, !dbg !2052
  %812 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2053, !tbaa !1316
  %813 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %812, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i64 0, i64 0), i8* nonnull %684, i32 %792, i8* nonnull %801, i8* nonnull %810, i8* nonnull %798) #19, !dbg !2053
  br label %814, !dbg !2054

814:                                              ; preds = %809, %808, %791
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %785) #19, !dbg !2054
  %815 = add nuw nsw i32 %792, 1, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %815, metadata !1404, metadata !DIExpression()) #19, !dbg !2037
  %816 = icmp eq i32 %815, 65, !dbg !2056
  br i1 %816, label %817, label %791, !dbg !2039, !llvm.loop !2057

817:                                              ; preds = %814
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %684) #19, !dbg !2059
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %780) #19, !dbg !2059
  br label %818, !dbg !2060

818:                                              ; preds = %817, %777
  br i1 %681, label %833, label %819, !dbg !2061

819:                                              ; preds = %818
  %820 = load i1, i1* @dev_debug, align 1, !dbg !2062
  br i1 %820, label %821, label %825, !dbg !2067

821:                                              ; preds = %819
  %822 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2062, !tbaa !1316
  %823 = call i8* @quotearg_style(i32 4, i8* nonnull %17) #19, !dbg !2062
  %824 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %822, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i8* %823) #19, !dbg !2062
  br label %825, !dbg !2062

825:                                              ; preds = %821, %819
  %826 = call i32 @chdir(i8* nonnull %17) #19, !dbg !2068
  %827 = icmp eq i32 %826, 0, !dbg !2070
  br i1 %827, label %833, label %828, !dbg !2071

828:                                              ; preds = %825
  %829 = tail call i32* @__errno_location() #25, !dbg !2072
  %830 = load i32, i32* %829, align 4, !dbg !2072, !tbaa !1432
  %831 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0), i32 5) #19, !dbg !2072
  %832 = call i8* @quotearg_style(i32 4, i8* nonnull %17) #19, !dbg !2072
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %830, i8* %831, i8* %832) #19, !dbg !2072
  unreachable, !dbg !2072

833:                                              ; preds = %818, %825
  %834 = load i1, i1* @dev_debug, align 1, !dbg !2073
  br i1 %834, label %835, label %862, !dbg !2074

835:                                              ; preds = %833
  %836 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2075, !tbaa !1316
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  %837 = load i32, i32* @optind, align 4, !dbg !2075, !tbaa !1432
  %838 = sext i32 %837 to i64, !dbg !2075
  %839 = getelementptr inbounds i8*, i8** %16, i64 %838, !dbg !2075
  %840 = load i8*, i8** %839, align 8, !dbg !2075, !tbaa !1316
  %841 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %836, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* %840) #19, !dbg !2075
  %842 = load i32, i32* @optind, align 4, !dbg !2078, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %842, metadata !363, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  %843 = icmp slt i32 %842, %15, !dbg !2080
  br i1 %843, label %844, label %862, !dbg !2082

844:                                              ; preds = %835
  %845 = sext i32 %842 to i64, !dbg !2082
  br label %846, !dbg !2082

846:                                              ; preds = %858, %844
  %847 = phi i64 [ %845, %844 ], [ %859, %858 ]
  call void @llvm.dbg.value(metadata i64 %847, metadata !363, metadata !DIExpression()), !dbg !2079
  %848 = load i1, i1* @dev_debug, align 1, !dbg !2083
  br i1 %848, label %849, label %858, !dbg !2086

849:                                              ; preds = %846
  %850 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2083, !tbaa !1316
  %851 = load i32, i32* @optind, align 4, !dbg !2083, !tbaa !1432
  %852 = trunc i64 %847 to i32, !dbg !2083
  %853 = sub nsw i32 %852, %851, !dbg !2083
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  %854 = getelementptr inbounds i8*, i8** %16, i64 %847, !dbg !2083
  %855 = load i8*, i8** %854, align 8, !dbg !2083, !tbaa !1316
  %856 = call i8* @quote(i8* %855) #19, !dbg !2083
  %857 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %850, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i32 %853, i8* %856) #19, !dbg !2083
  br label %858, !dbg !2083

858:                                              ; preds = %846, %849
  %859 = add nsw i64 %847, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %859, metadata !363, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %15, metadata !351, metadata !DIExpression()), !dbg !1419
  %860 = trunc i64 %859 to i32, !dbg !2080
  %861 = icmp eq i32 %15, %860, !dbg !2080
  br i1 %861, label %862, label %846, !dbg !2082, !llvm.loop !2088

862:                                              ; preds = %858, %835, %833
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  %863 = load i32, i32* @optind, align 4, !dbg !2090, !tbaa !1432
  %864 = sext i32 %863 to i64, !dbg !2091
  %865 = getelementptr inbounds i8*, i8** %16, i64 %864, !dbg !2091
  %866 = load i8*, i8** %865, align 8, !dbg !2091, !tbaa !1316
  %867 = call i32 @execvp(i8* %866, i8** nonnull %865) #19, !dbg !2092
  %868 = tail call i32* @__errno_location() #25, !dbg !2093
  %869 = load i32, i32* %868, align 4, !dbg !2093, !tbaa !1432
  %870 = icmp eq i32 %869, 2, !dbg !2094
  call void @llvm.dbg.value(metadata i32 undef, metadata !367, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  %871 = load i32, i32* @optind, align 4, !dbg !2095, !tbaa !1432
  %872 = sext i32 %871 to i64, !dbg !2096
  %873 = getelementptr inbounds i8*, i8** %16, i64 %872, !dbg !2096
  %874 = load i8*, i8** %873, align 8, !dbg !2096, !tbaa !1316
  %875 = call i8* @quote(i8* %874) #19, !dbg !2097
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %869, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* %875) #19, !dbg !2098
  br i1 %870, label %876, label %885, !dbg !2099

876:                                              ; preds = %862
  call void @llvm.dbg.value(metadata i8** %16, metadata !352, metadata !DIExpression()), !dbg !1419
  %877 = load i32, i32* @optind, align 4, !dbg !2101, !tbaa !1432
  %878 = sext i32 %877 to i64, !dbg !2102
  %879 = getelementptr inbounds i8*, i8** %16, i64 %878, !dbg !2102
  %880 = load i8*, i8** %879, align 8, !dbg !2102, !tbaa !1316
  %881 = call i8* @strchr(i8* nonnull dereferenceable(1) %880, i32 32) #23, !dbg !2103
  %882 = icmp eq i8* %881, null, !dbg !2103
  br i1 %882, label %885, label %883, !dbg !2104

883:                                              ; preds = %876
  %884 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0), i32 5) #19, !dbg !2105
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %884) #19, !dbg !2106
  br label %885, !dbg !2106

885:                                              ; preds = %673, %667, %862, %883, %876
  %886 = phi i32 [ 127, %876 ], [ 127, %883 ], [ 126, %862 ], [ 0, %667 ], [ 0, %673 ], !dbg !1419
  ret i32 %886, !dbg !2107
}

; Function Attrs: nounwind
declare !dbg !142 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !145 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !148 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare !dbg !155 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parse_signal_action_params(i8* %0, i1 zeroext %1) unnamed_addr #8 !dbg !2108 {
  %3 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !2112, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i1 %1, metadata !2113, metadata !DIExpression()), !dbg !2123
  %4 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i64 0, i64 0, !dbg !2124
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %4) #19, !dbg !2124
  call void @llvm.dbg.declare(metadata [19 x i8]* %3, metadata !2114, metadata !DIExpression()), !dbg !2125
  %5 = icmp eq i8* %0, null, !dbg !2126
  br i1 %5, label %6, label %19, !dbg !2127

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 1, metadata !2117, metadata !DIExpression()), !dbg !2128
  %7 = select i1 %1, i32 2, i32 4, !dbg !2129
  br label %8, !dbg !2132

8:                                                ; preds = %16, %6
  %9 = phi i64 [ 1, %6 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2117, metadata !DIExpression()), !dbg !2128
  %10 = trunc i64 %9 to i32, !dbg !2133
  %11 = call i32 @sig2str(i32 %10, i8* nonnull %4) #19, !dbg !2133
  %12 = icmp eq i32 %11, 0, !dbg !2134
  br i1 %12, label %13, label %16, !dbg !2135

13:                                               ; preds = %8
  %14 = load i32*, i32** @signals, align 8, !dbg !2136, !tbaa !1316
  %15 = getelementptr inbounds i32, i32* %14, i64 %9, !dbg !2136
  store i32 %7, i32* %15, align 4, !dbg !2137, !tbaa !1532
  br label %16, !dbg !2136

16:                                               ; preds = %8, %13
  %17 = add nuw nsw i64 %9, 1, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %17, metadata !2117, metadata !DIExpression()), !dbg !2128
  %18 = icmp eq i64 %17, 65, !dbg !2139
  br i1 %18, label %43, label %8, !dbg !2132, !llvm.loop !2140

19:                                               ; preds = %2
  %20 = tail call noalias i8* @xstrdup(i8* nonnull %0) #19, !dbg !2142
  call void @llvm.dbg.value(metadata i8* %20, metadata !2116, metadata !DIExpression()), !dbg !2123
  %21 = tail call i8* @strtok(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0)) #19, !dbg !2143
  call void @llvm.dbg.value(metadata i8* %21, metadata !2115, metadata !DIExpression()), !dbg !2123
  %22 = icmp eq i8* %21, null, !dbg !2144
  br i1 %22, label %42, label %23, !dbg !2144

23:                                               ; preds = %19
  %24 = select i1 %1, i32 1, i32 3, !dbg !2145
  br label %25, !dbg !2144

25:                                               ; preds = %23, %36
  %26 = phi i8* [ %21, %23 ], [ %40, %36 ]
  call void @llvm.dbg.value(metadata i8* %26, metadata !2115, metadata !DIExpression()), !dbg !2123
  %27 = call i32 @operand2sig(i8* nonnull %26, i8* nonnull %4) #19, !dbg !2146
  call void @llvm.dbg.value(metadata i32 %27, metadata !2121, metadata !DIExpression()), !dbg !2145
  %28 = icmp eq i32 %27, 0, !dbg !2147
  br i1 %28, label %29, label %32, !dbg !2149

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8* %26, metadata !2115, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %26, metadata !2115, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %26, metadata !2115, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %26, metadata !2115, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %26, metadata !2115, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %26, metadata !2115, metadata !DIExpression()), !dbg !2123
  %30 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i64 0, i64 0), i32 5) #19, !dbg !2150
  %31 = call i8* @quote(i8* nonnull %26) #19, !dbg !2151
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %30, i8* %31) #19, !dbg !2152
  br label %34, !dbg !2153

32:                                               ; preds = %25
  %33 = icmp slt i32 %27, 1, !dbg !2154
  br i1 %33, label %34, label %36, !dbg !2153

34:                                               ; preds = %32, %29
  %35 = load volatile i32, i32* @exit_failure, align 4, !dbg !2156, !tbaa !1432
  call void @usage(i32 %35) #26, !dbg !2157
  unreachable, !dbg !2157

36:                                               ; preds = %32
  %37 = load i32*, i32** @signals, align 8, !dbg !2158, !tbaa !1316
  %38 = zext i32 %27 to i64, !dbg !2158
  %39 = getelementptr inbounds i32, i32* %37, i64 %38, !dbg !2158
  store i32 %24, i32* %39, align 4, !dbg !2159, !tbaa !1532
  %40 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0)) #19, !dbg !2160
  call void @llvm.dbg.value(metadata i8* %40, metadata !2115, metadata !DIExpression()), !dbg !2123
  %41 = icmp eq i8* %40, null, !dbg !2144
  br i1 %41, label %42, label %25, !dbg !2144, !llvm.loop !2161

42:                                               ; preds = %36, %19
  call void @free(i8* %20) #19, !dbg !2163
  br label %43, !dbg !2164

43:                                               ; preds = %16, %42
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %4) #19, !dbg !2164
  ret void, !dbg !2164
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parse_block_signal_params(i8* %0, i1 zeroext %1) unnamed_addr #8 !dbg !2165 {
  %3 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !2167, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i1 %1, metadata !2168, metadata !DIExpression()), !dbg !2174
  %4 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i64 0, i64 0, !dbg !2175
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %4) #19, !dbg !2175
  call void @llvm.dbg.declare(metadata [19 x i8]* %3, metadata !2169, metadata !DIExpression()), !dbg !2176
  %5 = icmp eq i8* %0, null, !dbg !2177
  br i1 %5, label %11, label %6, !dbg !2179

6:                                                ; preds = %2
  %7 = load i1, i1* @sig_mask_changed, align 1, !dbg !2180
  br i1 %7, label %16, label %8, !dbg !2182

8:                                                ; preds = %6
  %9 = tail call i32 @sigemptyset(%struct.__sigset_t* nonnull @block_signals) #19, !dbg !2183
  %10 = tail call i32 @sigemptyset(%struct.__sigset_t* nonnull @unblock_signals) #19, !dbg !2185
  br label %16, !dbg !2186

11:                                               ; preds = %2
  %12 = select i1 %1, %struct.__sigset_t* @block_signals, %struct.__sigset_t* @unblock_signals, !dbg !2187
  %13 = tail call i32 @sigfillset(%struct.__sigset_t* nonnull %12) #19, !dbg !2189
  %14 = select i1 %1, %struct.__sigset_t* @unblock_signals, %struct.__sigset_t* @block_signals, !dbg !2190
  %15 = tail call i32 @sigemptyset(%struct.__sigset_t* nonnull %14) #19, !dbg !2191
  store i1 true, i1* @sig_mask_changed, align 1, !dbg !2192
  br label %40, !dbg !2193

16:                                               ; preds = %6, %8
  store i1 true, i1* @sig_mask_changed, align 1, !dbg !2192
  %17 = tail call noalias i8* @xstrdup(i8* nonnull %0) #19, !dbg !2194
  call void @llvm.dbg.value(metadata i8* %17, metadata !2171, metadata !DIExpression()), !dbg !2174
  %18 = tail call i8* @strtok(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0)) #19, !dbg !2195
  call void @llvm.dbg.value(metadata i8* %18, metadata !2170, metadata !DIExpression()), !dbg !2174
  %19 = icmp eq i8* %18, null, !dbg !2196
  br i1 %19, label %39, label %20, !dbg !2196

20:                                               ; preds = %16
  %21 = select i1 %1, %struct.__sigset_t* @block_signals, %struct.__sigset_t* @unblock_signals, !dbg !2197
  %22 = select i1 %1, %struct.__sigset_t* @unblock_signals, %struct.__sigset_t* @block_signals, !dbg !2197
  br label %23, !dbg !2196

23:                                               ; preds = %20, %34
  %24 = phi i8* [ %18, %20 ], [ %37, %34 ]
  call void @llvm.dbg.value(metadata i8* %24, metadata !2170, metadata !DIExpression()), !dbg !2174
  %25 = call i32 @operand2sig(i8* nonnull %24, i8* nonnull %4) #19, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %25, metadata !2172, metadata !DIExpression()), !dbg !2197
  %26 = icmp eq i32 %25, 0, !dbg !2199
  br i1 %26, label %27, label %30, !dbg !2201

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %24, metadata !2170, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8* %24, metadata !2170, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8* %24, metadata !2170, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8* %24, metadata !2170, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8* %24, metadata !2170, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8* %24, metadata !2170, metadata !DIExpression()), !dbg !2174
  %28 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i64 0, i64 0), i32 5) #19, !dbg !2202
  %29 = call i8* @quote(i8* nonnull %24) #19, !dbg !2203
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %28, i8* %29) #19, !dbg !2204
  br label %32, !dbg !2205

30:                                               ; preds = %23
  %31 = icmp slt i32 %25, 1, !dbg !2206
  br i1 %31, label %32, label %34, !dbg !2205

32:                                               ; preds = %30, %27
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !2208, !tbaa !1432
  call void @usage(i32 %33) #26, !dbg !2209
  unreachable, !dbg !2209

34:                                               ; preds = %30
  %35 = call i32 @sigaddset(%struct.__sigset_t* nonnull %21, i32 %25) #19, !dbg !2210
  %36 = call i32 @sigdelset(%struct.__sigset_t* nonnull %22, i32 %25) #19, !dbg !2211
  %37 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0)) #19, !dbg !2212
  call void @llvm.dbg.value(metadata i8* %37, metadata !2170, metadata !DIExpression()), !dbg !2174
  %38 = icmp eq i8* %37, null, !dbg !2196
  br i1 %38, label %39, label %23, !dbg !2196, !llvm.loop !2213

39:                                               ; preds = %34, %16
  call void @free(i8* %17) #19, !dbg !2215
  br label %40, !dbg !2216

40:                                               ; preds = %11, %39
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %4) #19, !dbg !2216
  ret void, !dbg !2216
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

declare !dbg !170 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @extract_varname(i8* %0) unnamed_addr #8 !dbg !2217 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2219, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %0, metadata !2224, metadata !DIExpression()) #19, !dbg !2230
  %2 = icmp eq i8* %0, null, !dbg !2232
  br i1 %2, label %6, label %3, !dbg !2232

3:                                                ; preds = %1
  %4 = load i8, i8* %0, align 1, !dbg !2232, !tbaa !1532
  %5 = icmp eq i8 %4, 36, !dbg !2232
  br i1 %5, label %7, label %6, !dbg !2235

6:                                                ; preds = %3, %1
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i32 221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.scan_varname, i64 0, i64 0)) #24, !dbg !2232
  unreachable, !dbg !2232

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2236
  %9 = load i8, i8* %8, align 1, !dbg !2237, !tbaa !1532
  %10 = icmp eq i8 %9, 123, !dbg !2238
  br i1 %10, label %11, label %45, !dbg !2239

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2240
  %13 = load i8, i8* %12, align 1, !dbg !2241, !tbaa !1532
  %14 = sext i8 %13 to i32, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %14, metadata !2242, metadata !DIExpression()) #19, !dbg !2246
  switch i32 %14, label %15 [
    i32 97, label %17
    i32 98, label %17
    i32 99, label %17
    i32 100, label %17
    i32 101, label %17
    i32 102, label %17
    i32 103, label %17
    i32 104, label %17
    i32 105, label %17
    i32 106, label %17
    i32 107, label %17
    i32 108, label %17
    i32 109, label %17
    i32 110, label %17
    i32 111, label %17
    i32 112, label %17
    i32 113, label %17
    i32 114, label %17
    i32 115, label %17
    i32 116, label %17
    i32 117, label %17
    i32 118, label %17
    i32 119, label %17
    i32 120, label %17
    i32 121, label %17
    i32 122, label %17
    i32 65, label %17
    i32 66, label %17
    i32 67, label %17
    i32 68, label %17
    i32 69, label %17
    i32 70, label %17
    i32 71, label %17
    i32 72, label %17
    i32 73, label %17
    i32 74, label %17
    i32 75, label %17
    i32 76, label %17
    i32 77, label %17
    i32 78, label %17
    i32 79, label %17
    i32 80, label %17
    i32 81, label %17
    i32 82, label %17
    i32 83, label %17
    i32 84, label %17
    i32 85, label %17
    i32 86, label %17
    i32 87, label %17
    i32 88, label %17
    i32 89, label %17
    i32 90, label %17
  ], !dbg !2248

15:                                               ; preds = %11
  %16 = icmp eq i8 %13, 95, !dbg !2249
  br i1 %16, label %17, label %45, !dbg !2250

17:                                               ; preds = %15, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %18 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2251
  call void @llvm.dbg.value(metadata i8* %18, metadata !2227, metadata !DIExpression()) #19, !dbg !2252
  br label %19, !dbg !2253

19:                                               ; preds = %26, %17
  %20 = phi i8* [ %18, %17 ], [ %27, %26 ], !dbg !2252
  call void @llvm.dbg.value(metadata i8* %20, metadata !2227, metadata !DIExpression()) #19, !dbg !2252
  %21 = load i8, i8* %20, align 1, !dbg !2254, !tbaa !1532
  %22 = sext i8 %21 to i32, !dbg !2254
  %23 = tail call zeroext i1 @c_isalnum(i32 %22) #19, !dbg !2255
  br i1 %23, label %26, label %24, !dbg !2256

24:                                               ; preds = %19
  %25 = load i8, i8* %20, align 1, !dbg !2257, !tbaa !1532
  switch i8 %25, label %45 [
    i8 95, label %26
    i8 125, label %28
  ], !dbg !2253

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !2258
  call void @llvm.dbg.value(metadata i8* %27, metadata !2227, metadata !DIExpression()) #19, !dbg !2252
  br label %19, !dbg !2253, !llvm.loop !2259

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %20, metadata !2227, metadata !DIExpression()) #19, !dbg !2252
  call void @llvm.dbg.value(metadata i8* %20, metadata !2227, metadata !DIExpression()) #19, !dbg !2252
  call void @llvm.dbg.value(metadata i8* %20, metadata !2227, metadata !DIExpression()) #19, !dbg !2252
  call void @llvm.dbg.value(metadata i8* %20, metadata !2227, metadata !DIExpression()) #19, !dbg !2252
  call void @llvm.dbg.value(metadata i8* %20, metadata !2227, metadata !DIExpression()) #19, !dbg !2252
  call void @llvm.dbg.value(metadata i8* %20, metadata !2227, metadata !DIExpression()) #19, !dbg !2252
  call void @llvm.dbg.value(metadata i8* %20, metadata !2227, metadata !DIExpression()) #19, !dbg !2252
  call void @llvm.dbg.value(metadata i8* %20, metadata !2222, metadata !DIExpression()), !dbg !2223
  %29 = ptrtoint i8* %20 to i64, !dbg !2261
  %30 = ptrtoint i8* %0 to i64, !dbg !2261
  %31 = sub i64 %29, %30, !dbg !2261
  %32 = add nsw i64 %31, -2, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %32, metadata !2220, metadata !DIExpression()), !dbg !2223
  %33 = load i64, i64* @vnlen, align 8, !dbg !2263, !tbaa !1460
  %34 = icmp ult i64 %32, %33, !dbg !2265
  br i1 %34, label %35, label %37, !dbg !2266

35:                                               ; preds = %28
  %36 = load i8*, i8** @varname, align 8, !dbg !2267, !tbaa !1316
  br label %41, !dbg !2266

37:                                               ; preds = %28
  %38 = add nsw i64 %31, -1, !dbg !2268
  store i64 %38, i64* @vnlen, align 8, !dbg !2270, !tbaa !1460
  %39 = load i8*, i8** @varname, align 8, !dbg !2271, !tbaa !1316
  %40 = tail call i8* @xrealloc(i8* %39, i64 %38) #19, !dbg !2272
  store i8* %40, i8** @varname, align 8, !dbg !2273, !tbaa !1316
  br label %41, !dbg !2274

41:                                               ; preds = %35, %37
  %42 = phi i8* [ %36, %35 ], [ %40, %37 ], !dbg !2267
  call void @llvm.dbg.value(metadata i8* %42, metadata !2275, metadata !DIExpression()) #19, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %12, metadata !2282, metadata !DIExpression()) #19, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %32, metadata !2283, metadata !DIExpression()) #19, !dbg !2284
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %42, i8* nonnull align 1 %12, i64 %32, i1 false) #19, !dbg !2286
  %43 = load i8*, i8** @varname, align 8, !dbg !2287, !tbaa !1316
  %44 = getelementptr inbounds i8, i8* %43, i64 %32, !dbg !2287
  store i8 0, i8* %44, align 1, !dbg !2288, !tbaa !1532
  br label %45, !dbg !2289

45:                                               ; preds = %24, %7, %15, %41
  %46 = phi i8* [ %43, %41 ], [ null, %15 ], [ null, %7 ], [ null, %24 ], !dbg !2223
  ret i8* %46, !dbg !2290
}

; Function Attrs: nofree nounwind readonly
declare !dbg !231 i8* @getenv(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i8* @stpcpy(i8*, i8* nocapture readonly) #11

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nounwind
declare !dbg !232 i32 @unsetenv(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !178 i32 @putenv(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !233 i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !226 i32 @sigemptyset(%struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !335 i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !340 i32 @sigismember(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !227 i32 @sigaddset(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !230 i32 @sigdelset(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !188 i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !192 i32 @execvp(i8*, i8**) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !214 i32 @sigfillset(%struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !211 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @operand2sig(i8* %0, i8* %1) local_unnamed_addr #8 !dbg !2291 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2293, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i8* %1, metadata !2294, metadata !DIExpression()), !dbg !2304
  %5 = bitcast i32* %3 to i8*, !dbg !2305
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #19, !dbg !2305
  %6 = load i8, i8* %0, align 1, !dbg !2306, !tbaa !1532
  %7 = sext i8 %6 to i32, !dbg !2306
  %8 = add nsw i32 %7, -48, !dbg !2306
  %9 = icmp ult i32 %8, 10, !dbg !2306
  br i1 %9, label %10, label %38, !dbg !2307

10:                                               ; preds = %2
  %11 = bitcast i8** %4 to i8*, !dbg !2308
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #19, !dbg !2308
  %12 = tail call i32* @__errno_location() #25, !dbg !2309
  store i32 0, i32* %12, align 4, !dbg !2310, !tbaa !1432
  call void @llvm.dbg.value(metadata i8** %4, metadata !2296, metadata !DIExpression(DW_OP_deref)), !dbg !2311
  %13 = call i64 @strtol(i8* nonnull %0, i8** nonnull %4, i32 10) #19, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %13, metadata !2299, metadata !DIExpression()), !dbg !2311
  %14 = trunc i64 %13 to i32, !dbg !2313
  call void @llvm.dbg.value(metadata i32 %14, metadata !2300, metadata !DIExpression()), !dbg !2311
  %15 = load i8*, i8** %4, align 8, !dbg !2314, !tbaa !1316
  call void @llvm.dbg.value(metadata i8* %15, metadata !2296, metadata !DIExpression()), !dbg !2311
  %16 = icmp eq i8* %15, %0, !dbg !2315
  br i1 %16, label %29, label %17, !dbg !2316

17:                                               ; preds = %10
  %18 = load i8, i8* %15, align 1, !dbg !2317, !tbaa !1532
  %19 = icmp eq i8 %18, 0, !dbg !2317
  br i1 %19, label %20, label %29, !dbg !2318

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4, !dbg !2319, !tbaa !1432
  %22 = icmp ne i32 %21, 0, !dbg !2319
  %23 = add i64 %13, 2147483648, !dbg !2320
  %24 = icmp ugt i64 %23, 4294967295, !dbg !2320
  %25 = or i1 %24, %22, !dbg !2321
  br i1 %25, label %29, label %26, !dbg !2321

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 %14, metadata !2295, metadata !DIExpression()), !dbg !2304
  %27 = icmp eq i32 %14, -1, !dbg !2322
  %28 = icmp slt i32 %14, 255, !dbg !2324
  br i1 %28, label %29, label %32, !dbg !2324

29:                                               ; preds = %20, %10, %17, %26
  %30 = phi i1 [ %27, %26 ], [ true, %20 ], [ true, %17 ], [ true, %10 ]
  %31 = phi i32 [ %14, %26 ], [ -1, %20 ], [ -1, %17 ], [ -1, %10 ]
  br label %32, !dbg !2324

32:                                               ; preds = %26, %29
  %33 = phi i1 [ %30, %29 ], [ %27, %26 ]
  %34 = phi i32 [ %31, %29 ], [ %14, %26 ]
  %35 = phi i32 [ 127, %29 ], [ 255, %26 ]
  %36 = select i1 %33, i32 -1, i32 %35, !dbg !2324
  %37 = and i32 %36, %34, !dbg !2324
  store i32 %37, i32* %3, align 4, !dbg !2311, !tbaa !1432
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #19, !dbg !2325
  br label %75, !dbg !2326

38:                                               ; preds = %2
  %39 = tail call noalias i8* @xstrdup(i8* nonnull %0) #19, !dbg !2327
  call void @llvm.dbg.value(metadata i8* %39, metadata !2301, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8* %39, metadata !2303, metadata !DIExpression()), !dbg !2328
  %40 = load i8, i8* %39, align 1, !dbg !2329, !tbaa !1532
  %41 = icmp eq i8 %40, 0, !dbg !2332
  br i1 %41, label %54, label %42, !dbg !2332

42:                                               ; preds = %38, %50
  %43 = phi i8 [ %52, %50 ], [ %40, %38 ]
  %44 = phi i8* [ %51, %50 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i8* %44, metadata !2303, metadata !DIExpression()), !dbg !2328
  %45 = sext i8 %43 to i32, !dbg !2333
  %46 = tail call i8* @memchr(i8* nonnull dereferenceable(27) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i64 0, i64 0), i32 %45, i64 27), !dbg !2335
  %47 = icmp eq i8* %46, null, !dbg !2335
  br i1 %47, label %50, label %48, !dbg !2336

48:                                               ; preds = %42
  %49 = add i8 %43, -32, !dbg !2337
  store i8 %49, i8* %44, align 1, !dbg !2337, !tbaa !1532
  br label %50, !dbg !2338

50:                                               ; preds = %42, %48
  %51 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !2339
  call void @llvm.dbg.value(metadata i8* %51, metadata !2303, metadata !DIExpression()), !dbg !2328
  %52 = load i8, i8* %51, align 1, !dbg !2329, !tbaa !1532
  %53 = icmp eq i8 %52, 0, !dbg !2332
  br i1 %53, label %54, label %42, !dbg !2332, !llvm.loop !2340

54:                                               ; preds = %50, %38
  call void @llvm.dbg.value(metadata i32* %3, metadata !2295, metadata !DIExpression(DW_OP_deref)), !dbg !2304
  %55 = call i32 @str2sig(i8* nonnull %39, i32* nonnull %3) #19, !dbg !2342
  %56 = icmp eq i32 %55, 0, !dbg !2344
  br i1 %56, label %73, label %57, !dbg !2345

57:                                               ; preds = %54
  %58 = load i8, i8* %39, align 1, !dbg !2346, !tbaa !1532
  %59 = icmp eq i8 %58, 83, !dbg !2347
  br i1 %59, label %60, label %72, !dbg !2348

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !2349
  %62 = load i8, i8* %61, align 1, !dbg !2349, !tbaa !1532
  %63 = icmp eq i8 %62, 73, !dbg !2350
  br i1 %63, label %64, label %72, !dbg !2351

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !2352
  %66 = load i8, i8* %65, align 1, !dbg !2352, !tbaa !1532
  %67 = icmp eq i8 %66, 71, !dbg !2353
  br i1 %67, label %68, label %72, !dbg !2354

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !2355
  call void @llvm.dbg.value(metadata i32* %3, metadata !2295, metadata !DIExpression(DW_OP_deref)), !dbg !2304
  %70 = call i32 @str2sig(i8* nonnull %69, i32* nonnull %3) #19, !dbg !2356
  %71 = icmp eq i32 %70, 0, !dbg !2357
  br i1 %71, label %73, label %72, !dbg !2358

72:                                               ; preds = %68, %64, %60, %57
  call void @llvm.dbg.value(metadata i32 -1, metadata !2295, metadata !DIExpression()), !dbg !2304
  store i32 -1, i32* %3, align 4, !dbg !2359, !tbaa !1432
  br label %73, !dbg !2360

73:                                               ; preds = %72, %68, %54
  call void @free(i8* %39) #19, !dbg !2361
  %74 = load i32, i32* %3, align 4, !dbg !2362, !tbaa !1432
  br label %75

75:                                               ; preds = %73, %32
  %76 = phi i32 [ %74, %73 ], [ %37, %32 ], !dbg !2362
  call void @llvm.dbg.value(metadata i32 %76, metadata !2295, metadata !DIExpression()), !dbg !2304
  %77 = icmp slt i32 %76, 0, !dbg !2364
  br i1 %77, label %81, label %78, !dbg !2365

78:                                               ; preds = %75
  %79 = call i32 @sig2str(i32 %76, i8* %1) #19, !dbg !2366
  %80 = icmp eq i32 %79, 0, !dbg !2367
  br i1 %80, label %84, label %81, !dbg !2368

81:                                               ; preds = %78, %75
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.71, i64 0, i64 0), i32 5) #19, !dbg !2369
  %83 = call i8* @quote(i8* nonnull %0) #19, !dbg !2371
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82, i8* %83) #19, !dbg !2372
  br label %86, !dbg !2373

84:                                               ; preds = %78
  %85 = load i32, i32* %3, align 4, !dbg !2374, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %85, metadata !2295, metadata !DIExpression()), !dbg !2304
  br label %86, !dbg !2375

86:                                               ; preds = %84, %81
  %87 = phi i32 [ -1, %81 ], [ %85, %84 ], !dbg !2304
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #19, !dbg !2376
  ret i32 %87, !dbg !2376
}

; Function Attrs: nofree nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #12

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isalnum(i32 %0) local_unnamed_addr #13 !dbg !2377 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2379, metadata !DIExpression()), !dbg !2380
  switch i32 %0, label %2 [
    i32 48, label %3
    i32 49, label %3
    i32 50, label %3
    i32 51, label %3
    i32 52, label %3
    i32 53, label %3
    i32 54, label %3
    i32 55, label %3
    i32 56, label %3
    i32 57, label %3
    i32 97, label %3
    i32 98, label %3
    i32 99, label %3
    i32 100, label %3
    i32 101, label %3
    i32 102, label %3
    i32 103, label %3
    i32 104, label %3
    i32 105, label %3
    i32 106, label %3
    i32 107, label %3
    i32 108, label %3
    i32 109, label %3
    i32 110, label %3
    i32 111, label %3
    i32 112, label %3
    i32 113, label %3
    i32 114, label %3
    i32 115, label %3
    i32 116, label %3
    i32 117, label %3
    i32 118, label %3
    i32 119, label %3
    i32 120, label %3
    i32 121, label %3
    i32 122, label %3
    i32 65, label %3
    i32 66, label %3
    i32 67, label %3
    i32 68, label %3
    i32 69, label %3
    i32 70, label %3
    i32 71, label %3
    i32 72, label %3
    i32 73, label %3
    i32 74, label %3
    i32 75, label %3
    i32 76, label %3
    i32 77, label %3
    i32 78, label %3
    i32 79, label %3
    i32 80, label %3
    i32 81, label %3
    i32 82, label %3
    i32 83, label %3
    i32 84, label %3
    i32 85, label %3
    i32 86, label %3
    i32 87, label %3
    i32 88, label %3
    i32 89, label %3
    i32 90, label %3
  ], !dbg !2381

2:                                                ; preds = %1
  br label %3, !dbg !2382

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2384
  ret i1 %4, !dbg !2385
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isalpha(i32 %0) local_unnamed_addr #13 !dbg !2386 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2388, metadata !DIExpression()), !dbg !2389
  %2 = add i32 %0, -65, !dbg !2390
  %3 = icmp ult i32 %2, 58, !dbg !2390
  br i1 %3, label %4, label %9, !dbg !2390

4:                                                ; preds = %1
  %5 = zext i32 %2 to i58, !dbg !2390
  %6 = lshr i58 -4227858433, %5, !dbg !2390
  %7 = and i58 %6, 1, !dbg !2390
  %8 = icmp ne i58 %7, 0, !dbg !2390
  ret i1 %8, !dbg !2390

9:                                                ; preds = %1
  ret i1 false, !dbg !2391
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isascii(i32 %0) local_unnamed_addr #13 !dbg !2392 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2394, metadata !DIExpression()), !dbg !2395
  %2 = icmp ult i32 %0, 128, !dbg !2396
  ret i1 %2, !dbg !2397
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isblank(i32 %0) local_unnamed_addr #13 !dbg !2398 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2400, metadata !DIExpression()), !dbg !2401
  %2 = icmp eq i32 %0, 32, !dbg !2402
  %3 = icmp eq i32 %0, 9, !dbg !2403
  %4 = or i1 %2, %3, !dbg !2403
  ret i1 %4, !dbg !2404
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_iscntrl(i32 %0) local_unnamed_addr #13 !dbg !2405 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2408
  switch i32 %0, label %2 [
    i32 7, label %3
    i32 8, label %3
    i32 12, label %3
    i32 10, label %3
    i32 13, label %3
    i32 9, label %3
    i32 11, label %3
    i32 0, label %3
    i32 1, label %3
    i32 2, label %3
    i32 3, label %3
    i32 4, label %3
    i32 5, label %3
    i32 6, label %3
    i32 14, label %3
    i32 15, label %3
    i32 16, label %3
    i32 17, label %3
    i32 18, label %3
    i32 19, label %3
    i32 20, label %3
    i32 21, label %3
    i32 22, label %3
    i32 23, label %3
    i32 24, label %3
    i32 25, label %3
    i32 26, label %3
    i32 27, label %3
    i32 28, label %3
    i32 29, label %3
    i32 30, label %3
    i32 31, label %3
    i32 127, label %3
  ], !dbg !2409

2:                                                ; preds = %1
  br label %3, !dbg !2410

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2412
  ret i1 %4, !dbg !2413
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isdigit(i32 %0) local_unnamed_addr #13 !dbg !2414 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2416, metadata !DIExpression()), !dbg !2417
  %2 = add i32 %0, -48, !dbg !2418
  %3 = icmp ult i32 %2, 10, !dbg !2418
  ret i1 %3, !dbg !2419
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isgraph(i32 %0) local_unnamed_addr #13 !dbg !2420 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2422, metadata !DIExpression()), !dbg !2423
  %2 = add i32 %0, -33, !dbg !2424
  %3 = icmp ult i32 %2, 94, !dbg !2424
  ret i1 %3, !dbg !2425
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_islower(i32 %0) local_unnamed_addr #13 !dbg !2426 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2428, metadata !DIExpression()), !dbg !2429
  %2 = add i32 %0, -97, !dbg !2430
  %3 = icmp ult i32 %2, 26, !dbg !2430
  ret i1 %3, !dbg !2431
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isprint(i32 %0) local_unnamed_addr #13 !dbg !2432 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2434, metadata !DIExpression()), !dbg !2435
  %2 = add i32 %0, -32, !dbg !2436
  %3 = icmp ult i32 %2, 95, !dbg !2436
  ret i1 %3, !dbg !2437
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_ispunct(i32 %0) local_unnamed_addr #13 !dbg !2438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2440, metadata !DIExpression()), !dbg !2441
  switch i32 %0, label %2 [
    i32 33, label %3
    i32 34, label %3
    i32 35, label %3
    i32 36, label %3
    i32 37, label %3
    i32 38, label %3
    i32 39, label %3
    i32 40, label %3
    i32 41, label %3
    i32 42, label %3
    i32 43, label %3
    i32 44, label %3
    i32 45, label %3
    i32 46, label %3
    i32 47, label %3
    i32 58, label %3
    i32 59, label %3
    i32 60, label %3
    i32 61, label %3
    i32 62, label %3
    i32 63, label %3
    i32 64, label %3
    i32 91, label %3
    i32 92, label %3
    i32 93, label %3
    i32 94, label %3
    i32 95, label %3
    i32 96, label %3
    i32 123, label %3
    i32 124, label %3
    i32 125, label %3
    i32 126, label %3
  ], !dbg !2442

2:                                                ; preds = %1
  br label %3, !dbg !2443

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2445
  ret i1 %4, !dbg !2446
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isspace(i32 %0) local_unnamed_addr #13 !dbg !2447 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2449, metadata !DIExpression()), !dbg !2450
  %2 = add i32 %0, -9, !dbg !2451
  %3 = icmp ult i32 %2, 24, !dbg !2451
  br i1 %3, label %4, label %9, !dbg !2451

4:                                                ; preds = %1
  %5 = trunc i32 %2 to i24, !dbg !2451
  %6 = lshr i24 -8388577, %5, !dbg !2451
  %7 = and i24 %6, 1, !dbg !2451
  %8 = icmp ne i24 %7, 0, !dbg !2451
  ret i1 %8, !dbg !2451

9:                                                ; preds = %1
  ret i1 false, !dbg !2452
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isupper(i32 %0) local_unnamed_addr #13 !dbg !2453 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2455, metadata !DIExpression()), !dbg !2456
  %2 = add i32 %0, -65, !dbg !2457
  %3 = icmp ult i32 %2, 26, !dbg !2457
  ret i1 %3, !dbg !2458
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @c_isxdigit(i32 %0) local_unnamed_addr #13 !dbg !2459 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2461, metadata !DIExpression()), !dbg !2462
  %2 = add i32 %0, -48, !dbg !2463
  %3 = icmp ult i32 %2, 55, !dbg !2463
  br i1 %3, label %4, label %9, !dbg !2463

4:                                                ; preds = %1
  %5 = zext i32 %2 to i55, !dbg !2463
  %6 = lshr i55 -562949945162753, %5, !dbg !2463
  %7 = and i55 %6, 1, !dbg !2463
  %8 = icmp ne i55 %7, 0, !dbg !2463
  ret i1 %8, !dbg !2463

9:                                                ; preds = %1
  ret i1 false, !dbg !2464
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local i32 @c_tolower(i32 %0) local_unnamed_addr #13 !dbg !2465 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2469, metadata !DIExpression()), !dbg !2470
  %2 = add i32 %0, -65, !dbg !2471
  %3 = icmp ult i32 %2, 26, !dbg !2471
  %4 = add nsw i32 %0, 32, !dbg !2471
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2471
  ret i32 %5, !dbg !2472
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable
define dso_local i32 @c_toupper(i32 %0) local_unnamed_addr #13 !dbg !2473 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2475, metadata !DIExpression()), !dbg !2476
  %2 = add i32 %0, -97, !dbg !2477
  %3 = icmp ult i32 %2, 26, !dbg !2477
  %4 = add nsw i32 %0, -32, !dbg !2477
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2477
  ret i32 %5, !dbg !2478
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #14 !dbg !2479 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2481, metadata !DIExpression()), !dbg !2482
  store i8* %0, i8** @file_name, align 8, !dbg !2483, !tbaa !1316
  ret void, !dbg !2484
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #14 !dbg !2485 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2489, metadata !DIExpression()), !dbg !2490
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2491, !tbaa !2492
  ret void, !dbg !2494
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2495 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2500, !tbaa !1316
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #19, !dbg !2501
  %3 = icmp eq i32 %2, 0, !dbg !2502
  br i1 %3, label %22, label %4, !dbg !2503

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2504, !tbaa !2492, !range !2505
  %6 = icmp eq i8 %5, 0, !dbg !2504
  br i1 %6, label %11, label %7, !dbg !2506

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !2507
  %9 = load i32, i32* %8, align 4, !dbg !2507, !tbaa !1432
  %10 = icmp eq i32 %9, 32, !dbg !2508
  br i1 %10, label %22, label %11, !dbg !2509

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i64 0, i64 0), i32 5) #19, !dbg !2510
  call void @llvm.dbg.value(metadata i8* %12, metadata !2497, metadata !DIExpression()), !dbg !2511
  %13 = load i8*, i8** @file_name, align 8, !dbg !2512, !tbaa !1316
  %14 = icmp eq i8* %13, null, !dbg !2512
  %15 = tail call i32* @__errno_location() #25, !dbg !2514
  %16 = load i32, i32* %15, align 4, !dbg !2514, !tbaa !1432
  br i1 %14, label %19, label %17, !dbg !2515

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #19, !dbg !2516
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.104, i64 0, i64 0), i8* %18, i8* %12) #19, !dbg !2517
  br label %20, !dbg !2517

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.105, i64 0, i64 0), i8* %12) #19, !dbg !2518
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2519, !tbaa !1432
  tail call void @_exit(i32 %21) #24, !dbg !2520
  unreachable, !dbg !2520

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2521, !tbaa !1316
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #19, !dbg !2523
  %25 = icmp eq i32 %24, 0, !dbg !2524
  br i1 %25, label %28, label %26, !dbg !2525

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2526, !tbaa !1432
  tail call void @_exit(i32 %27) #24, !dbg !2527
  unreachable, !dbg !2527

28:                                               ; preds = %22
  ret void, !dbg !2528
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2529 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2531, metadata !DIExpression()), !dbg !2534
  %2 = icmp eq i8* %0, null, !dbg !2535
  br i1 %2, label %3, label %6, !dbg !2537

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2538, !tbaa !1316
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.112, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #27, !dbg !2540
  tail call void @abort() #24, !dbg !2541
  unreachable, !dbg !2541

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #23, !dbg !2542
  call void @llvm.dbg.value(metadata i8* %7, metadata !2532, metadata !DIExpression()), !dbg !2534
  %8 = icmp eq i8* %7, null, !dbg !2543
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2544
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2544
  call void @llvm.dbg.value(metadata i8* %10, metadata !2533, metadata !DIExpression()), !dbg !2534
  %11 = ptrtoint i8* %10 to i64, !dbg !2545
  %12 = ptrtoint i8* %0 to i64, !dbg !2545
  %13 = sub i64 %11, %12, !dbg !2545
  %14 = icmp sgt i64 %13, 6, !dbg !2547
  br i1 %14, label %15, label %24, !dbg !2548

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2549
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.113, i64 0, i64 0), i64 7) #23, !dbg !2550
  %18 = icmp eq i32 %17, 0, !dbg !2551
  br i1 %18, label %19, label %24, !dbg !2552

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2531, metadata !DIExpression()), !dbg !2534
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.114, i64 0, i64 0), i64 3) #23, !dbg !2553
  %21 = icmp eq i32 %20, 0, !dbg !2556
  br i1 %21, label %22, label %24, !dbg !2557

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2558
  call void @llvm.dbg.value(metadata i8* %23, metadata !2531, metadata !DIExpression()), !dbg !2534
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2560, !tbaa !1316
  br label %24, !dbg !2561

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2531, metadata !DIExpression()), !dbg !2534
  store i8* %25, i8** @program_name, align 8, !dbg !2562, !tbaa !1316
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2563, !tbaa !1316
  ret void, !dbg !2564
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2565 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2570, metadata !DIExpression()), !dbg !2573
  %2 = tail call i32* @__errno_location() #25, !dbg !2574
  %3 = load i32, i32* %2, align 4, !dbg !2574, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %3, metadata !2571, metadata !DIExpression()), !dbg !2573
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2575
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2575
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2575
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #19, !dbg !2576
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2576
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2572, metadata !DIExpression()), !dbg !2573
  store i32 %3, i32* %2, align 4, !dbg !2577, !tbaa !1432
  ret %struct.quoting_options* %8, !dbg !2578
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !2579 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2583, metadata !DIExpression()), !dbg !2584
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2585
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2585
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2586
  %5 = load i32, i32* %4, align 8, !dbg !2586, !tbaa !2587
  ret i32 %5, !dbg !2589
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !2590 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %1, metadata !2595, metadata !DIExpression()), !dbg !2596
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2597
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2597
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2598
  store i32 %1, i32* %5, align 8, !dbg !2599, !tbaa !2587
  ret void, !dbg !2600
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !2601 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2605, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i8 %1, metadata !2606, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %2, metadata !2607, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i8 %1, metadata !2608, metadata !DIExpression()), !dbg !2614
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2615
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2615
  %6 = lshr i8 %1, 5, !dbg !2616
  %7 = zext i8 %6 to i64, !dbg !2616
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2617
  call void @llvm.dbg.value(metadata i32* %8, metadata !2610, metadata !DIExpression()), !dbg !2614
  %9 = and i8 %1, 31, !dbg !2618
  %10 = zext i8 %9 to i32, !dbg !2618
  call void @llvm.dbg.value(metadata i32 %10, metadata !2612, metadata !DIExpression()), !dbg !2614
  %11 = load i32, i32* %8, align 4, !dbg !2619, !tbaa !1432
  %12 = lshr i32 %11, %10, !dbg !2620
  %13 = and i32 %12, 1, !dbg !2621
  call void @llvm.dbg.value(metadata i32 %13, metadata !2613, metadata !DIExpression()), !dbg !2614
  %14 = and i32 %2, 1, !dbg !2622
  %15 = xor i32 %13, %14, !dbg !2623
  %16 = shl i32 %15, %10, !dbg !2624
  %17 = xor i32 %16, %11, !dbg !2625
  store i32 %17, i32* %8, align 4, !dbg !2625, !tbaa !1432
  ret i32 %13, !dbg !2626
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !2627 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2631, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i32 %1, metadata !2632, metadata !DIExpression()), !dbg !2634
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2635
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2637
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2631, metadata !DIExpression()), !dbg !2634
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2638
  %6 = load i32, i32* %5, align 4, !dbg !2638, !tbaa !2639
  call void @llvm.dbg.value(metadata i32 %6, metadata !2633, metadata !DIExpression()), !dbg !2634
  store i32 %1, i32* %5, align 4, !dbg !2640, !tbaa !2639
  ret i32 %6, !dbg !2641
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2642 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2646, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %1, metadata !2647, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %2, metadata !2648, metadata !DIExpression()), !dbg !2649
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2650
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2652
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2646, metadata !DIExpression()), !dbg !2649
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2653
  store i32 10, i32* %6, align 8, !dbg !2654, !tbaa !2587
  %7 = icmp ne i8* %1, null, !dbg !2655
  %8 = icmp ne i8* %2, null, !dbg !2657
  %9 = and i1 %7, %8, !dbg !2658
  br i1 %9, label %11, label %10, !dbg !2658

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !2659
  unreachable, !dbg !2659

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2660
  store i8* %1, i8** %12, align 8, !dbg !2661, !tbaa !2662
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2663
  store i8* %2, i8** %13, align 8, !dbg !2664, !tbaa !2665
  ret void, !dbg !2666
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2667 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2671, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64 %1, metadata !2672, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8* %2, metadata !2673, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64 %3, metadata !2674, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2675, metadata !DIExpression()), !dbg !2679
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2680
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2680
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2676, metadata !DIExpression()), !dbg !2679
  %8 = tail call i32* @__errno_location() #25, !dbg !2681
  %9 = load i32, i32* %8, align 4, !dbg !2681, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %9, metadata !2677, metadata !DIExpression()), !dbg !2679
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2682
  %11 = load i32, i32* %10, align 8, !dbg !2682, !tbaa !2587
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2683
  %13 = load i32, i32* %12, align 4, !dbg !2683, !tbaa !2639
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2684
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2685
  %16 = load i8*, i8** %15, align 8, !dbg !2685, !tbaa !2662
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2686
  %18 = load i8*, i8** %17, align 8, !dbg !2686, !tbaa !2665
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %19, metadata !2678, metadata !DIExpression()), !dbg !2679
  store i32 %9, i32* %8, align 4, !dbg !2688, !tbaa !1432
  ret i64 %19, !dbg !2689
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2690 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2696, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %1, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %2, metadata !2698, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %3, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 %4, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 %5, metadata !2701, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32* %6, metadata !2702, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %7, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %8, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 0, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 0, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* null, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 0, metadata !2709, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2710, metadata !DIExpression()), !dbg !2754
  %13 = tail call i64 @__ctype_get_mb_cur_max() #19, !dbg !2755
  %14 = icmp eq i64 %13, 1, !dbg !2756
  call void @llvm.dbg.value(metadata i1 %14, metadata !2711, metadata !DIExpression()), !dbg !2754
  %15 = lshr i32 %5, 1, !dbg !2757
  %16 = trunc i32 %15 to i8, !dbg !2757
  %17 = and i8 %16, 1, !dbg !2757
  call void @llvm.dbg.value(metadata i8 %17, metadata !2712, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 1, metadata !2715, metadata !DIExpression()), !dbg !2754
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2758
  %19 = and i32 %5, 4, !dbg !2760
  %20 = icmp eq i32 %19, 0, !dbg !2760
  %21 = and i32 %5, 1, !dbg !2763
  %22 = icmp eq i32 %21, 0, !dbg !2763
  %23 = bitcast i64* %10 to i8*, !dbg !2766
  %24 = bitcast i32* %12 to i8*, !dbg !2767
  %25 = icmp eq i32* %6, null, !dbg !2768
  br label %26, !dbg !2770

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2771
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2772
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2773
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2774
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2754
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2775
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2776
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2777
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %38, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %37, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %36, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %35, metadata !2712, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %34, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %33, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %32, metadata !2709, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %31, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %30, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 0, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %29, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %28, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 %27, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.label(metadata !2748), !dbg !2778
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
  ], !dbg !2779

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 1, metadata !2712, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %35, metadata !2712, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 5, metadata !2700, metadata !DIExpression()), !dbg !2754
  br label %92, !dbg !2780

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2712, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 5, metadata !2700, metadata !DIExpression()), !dbg !2754
  %42 = and i8 %35, 1, !dbg !2782
  %43 = icmp eq i8 %42, 0, !dbg !2782
  br i1 %43, label %44, label %92, !dbg !2780

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2784
  br i1 %45, label %92, label %46, !dbg !2787

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2784, !tbaa !1532
  br label %92, !dbg !2784

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.125, i64 0, i64 0), i32 %27), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %48, metadata !2703, metadata !DIExpression()), !dbg !2754
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), i32 %27), !dbg !2792
  call void @llvm.dbg.value(metadata i8* %49, metadata !2704, metadata !DIExpression()), !dbg !2754
  br label %50, !dbg !2793

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %51, metadata !2703, metadata !DIExpression()), !dbg !2754
  %53 = and i8 %35, 1, !dbg !2794
  %54 = icmp eq i8 %53, 0, !dbg !2794
  br i1 %54, label %55, label %70, !dbg !2796

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 0, metadata !2706, metadata !DIExpression()), !dbg !2754
  %56 = load i8, i8* %51, align 1, !dbg !2797, !tbaa !1532
  %57 = icmp eq i8 %56, 0, !dbg !2800
  br i1 %57, label %70, label %58, !dbg !2800

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %61, metadata !2706, metadata !DIExpression()), !dbg !2754
  %62 = icmp ult i64 %61, %39, !dbg !2801
  br i1 %62, label %63, label %65, !dbg !2804

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2801
  store i8 %59, i8* %64, align 1, !dbg !2801, !tbaa !1532
  br label %65, !dbg !2801

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2804
  call void @llvm.dbg.value(metadata i64 %66, metadata !2706, metadata !DIExpression()), !dbg !2754
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2805
  call void @llvm.dbg.value(metadata i8* %67, metadata !2708, metadata !DIExpression()), !dbg !2754
  %68 = load i8, i8* %67, align 1, !dbg !2797, !tbaa !1532
  %69 = icmp eq i8 %68, 0, !dbg !2800
  br i1 %69, label %70, label %58, !dbg !2800, !llvm.loop !2806

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2808
  call void @llvm.dbg.value(metadata i64 %71, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 1, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %52, metadata !2708, metadata !DIExpression()), !dbg !2754
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #23, !dbg !2809
  call void @llvm.dbg.value(metadata i64 %72, metadata !2709, metadata !DIExpression()), !dbg !2754
  br label %92, !dbg !2810

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2710, metadata !DIExpression()), !dbg !2754
  br label %74, !dbg !2811

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2754
  call void @llvm.dbg.value(metadata i8 %75, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 1, metadata !2712, metadata !DIExpression()), !dbg !2754
  br label %76, !dbg !2812

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2774
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2754
  call void @llvm.dbg.value(metadata i8 %78, metadata !2712, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %77, metadata !2710, metadata !DIExpression()), !dbg !2754
  %79 = and i8 %78, 1, !dbg !2813
  %80 = icmp eq i8 %79, 0, !dbg !2813
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2815
  br label %82, !dbg !2815

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2754
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2757
  call void @llvm.dbg.value(metadata i8 %84, metadata !2712, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %83, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 2, metadata !2700, metadata !DIExpression()), !dbg !2754
  %85 = and i8 %84, 1, !dbg !2816
  %86 = icmp eq i8 %85, 0, !dbg !2816
  br i1 %86, label %87, label %92, !dbg !2818

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2819
  br i1 %88, label %92, label %89, !dbg !2822

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2819, !tbaa !1532
  br label %92, !dbg !2819

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2712, metadata !DIExpression()), !dbg !2754
  br label %92, !dbg !2823

91:                                               ; preds = %26
  call void @abort() #24, !dbg !2824
  unreachable, !dbg !2824

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2808
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.127, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.127, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.127, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.127, i64 0, i64 0), %40 ], !dbg !2754
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2754
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2754
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2754
  call void @llvm.dbg.value(metadata i8 %100, metadata !2712, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %99, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %98, metadata !2709, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %96, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 %93, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 0, metadata !2705, metadata !DIExpression()), !dbg !2754
  %101 = and i8 %99, 1, !dbg !2825
  %102 = icmp ne i8 %101, 0, !dbg !2825
  %103 = icmp ne i32 %93, 2, !dbg !2825
  %104 = and i1 %103, %102, !dbg !2825
  %105 = icmp ne i64 %98, 0, !dbg !2825
  %106 = and i1 %105, %104, !dbg !2825
  %107 = icmp ugt i64 %98, 1, !dbg !2825
  %108 = and i8 %100, 1, !dbg !2827
  %109 = icmp eq i8 %108, 0, !dbg !2827
  %110 = icmp eq i32 %93, 2, !dbg !2830
  %111 = or i1 %103, %109, !dbg !2832
  %112 = icmp ne i8 %108, 0, !dbg !2834
  %113 = and i1 %110, %112, !dbg !2834
  %114 = xor i1 %102, true, !dbg !2835
  %115 = xor i1 %104, true, !dbg !2768
  %116 = and i1 %109, %115, !dbg !2768
  %117 = or i1 %25, %116, !dbg !2768
  %118 = and i8 %99, %100, !dbg !2836
  %119 = and i8 %118, 1, !dbg !2836
  %120 = icmp ne i8 %119, 0, !dbg !2836
  %121 = and i1 %120, %105, !dbg !2836
  br label %122, !dbg !2838

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2839
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2808
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2771
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2775
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2776
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2777
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %129, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %128, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %127, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %126, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %123, metadata !2705, metadata !DIExpression()), !dbg !2754
  %131 = icmp eq i64 %126, -1, !dbg !2840
  br i1 %131, label %132, label %136, !dbg !2841

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2842
  %134 = load i8, i8* %133, align 1, !dbg !2842, !tbaa !1532
  %135 = icmp eq i8 %134, 0, !dbg !2843
  br i1 %135, label %581, label %138, !dbg !2844

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2845
  br i1 %137, label %581, label %138, !dbg !2844

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2721, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 0, metadata !2722, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 0, metadata !2723, metadata !DIExpression()), !dbg !2846
  br i1 %106, label %139, label %154, !dbg !2847

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2848
  %141 = and i1 %107, %131, !dbg !2849
  br i1 %141, label %142, label %144, !dbg !2849

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2850
  call void @llvm.dbg.value(metadata i64 %143, metadata !2699, metadata !DIExpression()), !dbg !2754
  br label %144, !dbg !2851

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2699, metadata !DIExpression()), !dbg !2754
  %146 = icmp ugt i64 %140, %145, !dbg !2852
  br i1 %146, label %154, label %147, !dbg !2853

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2854
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2855
  %150 = icmp ne i32 %149, 0, !dbg !2856
  %151 = or i1 %150, %109, !dbg !2857
  %152 = xor i1 %150, true, !dbg !2857
  %153 = zext i1 %152 to i8, !dbg !2857
  br i1 %151, label %154, label %639, !dbg !2857

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2846
  call void @llvm.dbg.value(metadata i8 %156, metadata !2721, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %155, metadata !2699, metadata !DIExpression()), !dbg !2754
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2858
  %158 = load i8, i8* %157, align 1, !dbg !2858, !tbaa !1532
  call void @llvm.dbg.value(metadata i8 %158, metadata !2716, metadata !DIExpression()), !dbg !2846
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
  ], !dbg !2859

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2860

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2861

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2722, metadata !DIExpression()), !dbg !2846
  %162 = and i8 %127, 1, !dbg !2864
  %163 = icmp eq i8 %162, 0, !dbg !2864
  %164 = and i1 %110, %163, !dbg !2864
  br i1 %164, label %165, label %181, !dbg !2864

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2866
  br i1 %166, label %167, label %169, !dbg !2870

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2866
  store i8 39, i8* %168, align 1, !dbg !2866, !tbaa !1532
  br label %169, !dbg !2866

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %170, metadata !2706, metadata !DIExpression()), !dbg !2754
  %171 = icmp ult i64 %170, %130, !dbg !2871
  br i1 %171, label %172, label %174, !dbg !2874

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2871
  store i8 36, i8* %173, align 1, !dbg !2871, !tbaa !1532
  br label %174, !dbg !2871

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2874
  call void @llvm.dbg.value(metadata i64 %175, metadata !2706, metadata !DIExpression()), !dbg !2754
  %176 = icmp ult i64 %175, %130, !dbg !2875
  br i1 %176, label %177, label %179, !dbg !2878

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2875
  store i8 39, i8* %178, align 1, !dbg !2875, !tbaa !1532
  br label %179, !dbg !2875

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2878
  call void @llvm.dbg.value(metadata i64 %180, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 1, metadata !2713, metadata !DIExpression()), !dbg !2754
  br label %181, !dbg !2879

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2754
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2754
  call void @llvm.dbg.value(metadata i8 %183, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %182, metadata !2706, metadata !DIExpression()), !dbg !2754
  %184 = icmp ult i64 %182, %130, !dbg !2880
  br i1 %184, label %185, label %187, !dbg !2883

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2880
  store i8 92, i8* %186, align 1, !dbg !2880, !tbaa !1532
  br label %187, !dbg !2880

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %188, metadata !2706, metadata !DIExpression()), !dbg !2754
  br i1 %103, label %189, label %463, !dbg !2884

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2886
  %191 = icmp ult i64 %190, %155, !dbg !2887
  br i1 %191, label %192, label %463, !dbg !2888

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2889
  %194 = load i8, i8* %193, align 1, !dbg !2889, !tbaa !1532
  %195 = add i8 %194, -48, !dbg !2890
  %196 = icmp ult i8 %195, 10, !dbg !2890
  br i1 %196, label %197, label %463, !dbg !2890

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2891
  br i1 %198, label %199, label %201, !dbg !2895

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2891
  store i8 48, i8* %200, align 1, !dbg !2891, !tbaa !1532
  br label %201, !dbg !2891

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %202, metadata !2706, metadata !DIExpression()), !dbg !2754
  %203 = icmp ult i64 %202, %130, !dbg !2896
  br i1 %203, label %204, label %206, !dbg !2899

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2896
  store i8 48, i8* %205, align 1, !dbg !2896, !tbaa !1532
  br label %206, !dbg !2896

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %207, metadata !2706, metadata !DIExpression()), !dbg !2754
  br label %463, !dbg !2900

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2901

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2902

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2903

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2904

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2905
  %214 = icmp ult i64 %213, %155, !dbg !2906
  br i1 %214, label %215, label %463, !dbg !2907

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2908
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2909
  %218 = load i8, i8* %217, align 1, !dbg !2909, !tbaa !1532
  %219 = icmp eq i8 %218, 63, !dbg !2910
  br i1 %219, label %220, label %463, !dbg !2911

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2912
  %222 = load i8, i8* %221, align 1, !dbg !2912, !tbaa !1532
  %223 = sext i8 %222 to i32, !dbg !2912
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
  ], !dbg !2913

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2914

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2716, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %213, metadata !2705, metadata !DIExpression()), !dbg !2754
  %226 = icmp ult i64 %124, %130, !dbg !2916
  br i1 %226, label %227, label %229, !dbg !2919

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2916
  store i8 63, i8* %228, align 1, !dbg !2916, !tbaa !1532
  br label %229, !dbg !2916

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %230, metadata !2706, metadata !DIExpression()), !dbg !2754
  %231 = icmp ult i64 %230, %130, !dbg !2920
  br i1 %231, label %232, label %234, !dbg !2923

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2920
  store i8 34, i8* %233, align 1, !dbg !2920, !tbaa !1532
  br label %234, !dbg !2920

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2923
  call void @llvm.dbg.value(metadata i64 %235, metadata !2706, metadata !DIExpression()), !dbg !2754
  %236 = icmp ult i64 %235, %130, !dbg !2924
  br i1 %236, label %237, label %239, !dbg !2927

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2924
  store i8 34, i8* %238, align 1, !dbg !2924, !tbaa !1532
  br label %239, !dbg !2924

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2927
  call void @llvm.dbg.value(metadata i64 %240, metadata !2706, metadata !DIExpression()), !dbg !2754
  %241 = icmp ult i64 %240, %130, !dbg !2928
  br i1 %241, label %242, label %244, !dbg !2931

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2928
  store i8 63, i8* %243, align 1, !dbg !2928, !tbaa !1532
  br label %244, !dbg !2928

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2931
  call void @llvm.dbg.value(metadata i64 %245, metadata !2706, metadata !DIExpression()), !dbg !2754
  br label %463, !dbg !2932

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2720, metadata !DIExpression()), !dbg !2846
  br label %256, !dbg !2933

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2720, metadata !DIExpression()), !dbg !2846
  br label %256, !dbg !2934

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2720, metadata !DIExpression()), !dbg !2846
  br label %254, !dbg !2935

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2720, metadata !DIExpression()), !dbg !2846
  br label %254, !dbg !2936

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2720, metadata !DIExpression()), !dbg !2846
  br label %256, !dbg !2937

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2720, metadata !DIExpression()), !dbg !2846
  br i1 %110, label %252, label %253, !dbg !2938

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2939

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2942

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2943
  call void @llvm.dbg.value(metadata i8 %255, metadata !2720, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.label(metadata !2749), !dbg !2944
  br i1 %111, label %256, label %625, !dbg !2945

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2943
  call void @llvm.dbg.value(metadata i8 %257, metadata !2720, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.label(metadata !2750), !dbg !2947
  br i1 %102, label %488, label %463, !dbg !2948

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2949

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2950, !tbaa !1532
  %261 = icmp eq i8 %260, 0, !dbg !2951
  br i1 %261, label %262, label %463, !dbg !2952

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2953
  br i1 %263, label %264, label %463, !dbg !2955

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2723, metadata !DIExpression()), !dbg !2846
  br label %265, !dbg !2956

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2846
  call void @llvm.dbg.value(metadata i8 %266, metadata !2723, metadata !DIExpression()), !dbg !2846
  br i1 %111, label %463, label %625, !dbg !2957

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 1, metadata !2723, metadata !DIExpression()), !dbg !2846
  br i1 %110, label %268, label %463, !dbg !2958

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2959

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2961
  %271 = icmp ne i64 %125, 0, !dbg !2963
  %272 = or i1 %271, %270, !dbg !2964
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2964
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %274, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %273, metadata !2707, metadata !DIExpression()), !dbg !2754
  %275 = icmp ult i64 %124, %274, !dbg !2965
  br i1 %275, label %276, label %278, !dbg !2968

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2965
  store i8 39, i8* %277, align 1, !dbg !2965, !tbaa !1532
  br label %278, !dbg !2965

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2968
  call void @llvm.dbg.value(metadata i64 %279, metadata !2706, metadata !DIExpression()), !dbg !2754
  %280 = icmp ult i64 %279, %274, !dbg !2969
  br i1 %280, label %281, label %283, !dbg !2972

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2969
  store i8 92, i8* %282, align 1, !dbg !2969, !tbaa !1532
  br label %283, !dbg !2969

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %284, metadata !2706, metadata !DIExpression()), !dbg !2754
  %285 = icmp ult i64 %284, %274, !dbg !2973
  br i1 %285, label %286, label %288, !dbg !2976

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2973
  store i8 39, i8* %287, align 1, !dbg !2973, !tbaa !1532
  br label %288, !dbg !2973

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %289, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2713, metadata !DIExpression()), !dbg !2754
  br label %463, !dbg !2977

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2978

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2724, metadata !DIExpression()), !dbg !2979
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !2980
  %293 = load i16*, i16** %292, align 8, !dbg !2980, !tbaa !1316
  %294 = zext i8 %158 to i64, !dbg !2980
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2980
  %296 = load i16, i16* %295, align 2, !dbg !2980, !tbaa !1533
  %297 = lshr i16 %296, 14, !dbg !2982
  %298 = trunc i16 %297 to i8, !dbg !2982
  %299 = and i8 %298, 1, !dbg !2982
  call void @llvm.dbg.value(metadata i8 %299, metadata !2727, metadata !DIExpression()), !dbg !2979
  br label %355, !dbg !2983

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2984
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2728, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8* %23, metadata !2986, metadata !DIExpression()) #19, !dbg !2993
  call void @llvm.dbg.value(metadata i32 0, metadata !2991, metadata !DIExpression()) #19, !dbg !2993
  call void @llvm.dbg.value(metadata i64 8, metadata !2992, metadata !DIExpression()) #19, !dbg !2993
  store i64 0, i64* %10, align 8, !dbg !2995
  call void @llvm.dbg.value(metadata i64 0, metadata !2724, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 1, metadata !2727, metadata !DIExpression()), !dbg !2979
  %301 = icmp eq i64 %155, -1, !dbg !2996
  br i1 %301, label %302, label %304, !dbg !2998

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %303, metadata !2699, metadata !DIExpression()), !dbg !2754
  br label %304, !dbg !3000

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2846
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  br label %306, !dbg !3001

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !3002
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !3003
  call void @llvm.dbg.value(metadata i8 %308, metadata !2727, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %307, metadata !2724, metadata !DIExpression()), !dbg !2979
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #19, !dbg !3004
  %309 = add i64 %307, %123, !dbg !3005
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !3006
  %311 = sub i64 %305, %309, !dbg !3007
  call void @llvm.dbg.value(metadata i32* %12, metadata !2734, metadata !DIExpression(DW_OP_deref)), !dbg !2767
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #19, !dbg !3008
  call void @llvm.dbg.value(metadata i64 %312, metadata !2737, metadata !DIExpression()), !dbg !2767
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !3009

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2724, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %307, metadata !2724, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %307, metadata !2724, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %307, metadata !2724, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %307, metadata !2724, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %307, metadata !2724, metadata !DIExpression()), !dbg !2979
  %314 = icmp ugt i64 %305, %309, !dbg !3010
  br i1 %314, label %315, label %340, !dbg !3012

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !3013
  br label %317, !dbg !3013

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2724, metadata !DIExpression()), !dbg !2979
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !3014
  %321 = load i8, i8* %320, align 1, !dbg !3014, !tbaa !1532
  %322 = icmp eq i8 %321, 0, !dbg !3012
  br i1 %322, label %340, label %323, !dbg !3013

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %324, metadata !2724, metadata !DIExpression()), !dbg !2979
  %325 = add i64 %324, %123, !dbg !3016
  %326 = icmp ult i64 %325, %305, !dbg !3010
  br i1 %326, label %317, label %340, !dbg !3012, !llvm.loop !3017

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !3018
  %329 = and i1 %113, %328, !dbg !3021
  call void @llvm.dbg.value(metadata i64 1, metadata !2738, metadata !DIExpression()), !dbg !3022
  br i1 %329, label %330, label %343, !dbg !3021

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2738, metadata !DIExpression()), !dbg !3022
  %332 = add i64 %331, %309, !dbg !3023
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !3024
  %334 = load i8, i8* %333, align 1, !dbg !3024, !tbaa !1532
  %335 = sext i8 %334 to i32, !dbg !3024
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !3025

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %337, metadata !2738, metadata !DIExpression()), !dbg !3022
  %338 = icmp eq i64 %337, %312, !dbg !3018
  br i1 %338, label %343, label %330, !dbg !3027, !llvm.loop !3028

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2724, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %308, metadata !2727, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %307, metadata !2724, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %308, metadata !2727, metadata !DIExpression()), !dbg !2979
  br label %340, !dbg !3030

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !3030
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !3031, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %344, metadata !2734, metadata !DIExpression()), !dbg !2767
  %345 = call i32 @iswprint(i32 %344) #19, !dbg !3033
  %346 = icmp eq i32 %345, 0, !dbg !3033
  %347 = select i1 %346, i8 0, i8 %308, !dbg !3034
  call void @llvm.dbg.value(metadata i8 %347, metadata !2727, metadata !DIExpression()), !dbg !2979
  %348 = add i64 %312, %307, !dbg !3035
  call void @llvm.dbg.value(metadata i64 %348, metadata !2724, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %347, metadata !2727, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %348, metadata !2724, metadata !DIExpression()), !dbg !2979
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !3030
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #23, !dbg !3036
  %350 = icmp eq i32 %349, 0, !dbg !3037
  br i1 %350, label %306, label %351, !dbg !3038, !llvm.loop !3039

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !3041
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 2, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 2, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 2, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 2, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 2, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %99, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %99, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %99, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %99, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %99, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 2, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 2, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 2, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 2, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 2, metadata !2700, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %99, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %99, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %99, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %99, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %99, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %305, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !3030
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !3041
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2846
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !3042
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !3042
  call void @llvm.dbg.value(metadata i8 %358, metadata !2727, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %357, metadata !2724, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %356, metadata !2699, metadata !DIExpression()), !dbg !2754
  %359 = and i8 %358, 1, !dbg !3043
  %360 = icmp ne i8 %359, 0, !dbg !3043
  call void @llvm.dbg.value(metadata i8 %359, metadata !2723, metadata !DIExpression()), !dbg !2846
  %361 = icmp ult i64 %357, 2, !dbg !3044
  %362 = or i1 %360, %114, !dbg !3045
  %363 = and i1 %361, %362, !dbg !3046
  br i1 %363, label %463, label %364, !dbg !3046

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %365, metadata !2745, metadata !DIExpression()), !dbg !3048
  br label %366, !dbg !3049

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2839
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2754
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2775
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2846
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2846
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !3050
  call void @llvm.dbg.value(metadata i8 %372, metadata !2722, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %371, metadata !2721, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %370, metadata !2716, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %369, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %368, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %367, metadata !2705, metadata !DIExpression()), !dbg !2754
  br i1 %362, label %419, label %373, !dbg !3051

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !3056

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2722, metadata !DIExpression()), !dbg !2846
  %375 = and i8 %369, 1, !dbg !3059
  %376 = icmp eq i8 %375, 0, !dbg !3059
  %377 = and i1 %110, %376, !dbg !3059
  br i1 %377, label %378, label %394, !dbg !3059

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !3061
  br i1 %379, label %380, label %382, !dbg !3065

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3061
  store i8 39, i8* %381, align 1, !dbg !3061, !tbaa !1532
  br label %382, !dbg !3061

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !3065
  call void @llvm.dbg.value(metadata i64 %383, metadata !2706, metadata !DIExpression()), !dbg !2754
  %384 = icmp ult i64 %383, %130, !dbg !3066
  br i1 %384, label %385, label %387, !dbg !3069

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !3066
  store i8 36, i8* %386, align 1, !dbg !3066, !tbaa !1532
  br label %387, !dbg !3066

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %388, metadata !2706, metadata !DIExpression()), !dbg !2754
  %389 = icmp ult i64 %388, %130, !dbg !3070
  br i1 %389, label %390, label %392, !dbg !3073

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !3070
  store i8 39, i8* %391, align 1, !dbg !3070, !tbaa !1532
  br label %392, !dbg !3070

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %393, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 1, metadata !2713, metadata !DIExpression()), !dbg !2754
  br label %394, !dbg !3074

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2754
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2754
  call void @llvm.dbg.value(metadata i8 %396, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %395, metadata !2706, metadata !DIExpression()), !dbg !2754
  %397 = icmp ult i64 %395, %130, !dbg !3075
  br i1 %397, label %398, label %400, !dbg !3078

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !3075
  store i8 92, i8* %399, align 1, !dbg !3075, !tbaa !1532
  br label %400, !dbg !3075

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %401, metadata !2706, metadata !DIExpression()), !dbg !2754
  %402 = icmp ult i64 %401, %130, !dbg !3079
  br i1 %402, label %403, label %407, !dbg !3082

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !3079
  %405 = or i8 %404, 48, !dbg !3079
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3079
  store i8 %405, i8* %406, align 1, !dbg !3079, !tbaa !1532
  br label %407, !dbg !3079

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %408, metadata !2706, metadata !DIExpression()), !dbg !2754
  %409 = icmp ult i64 %408, %130, !dbg !3083
  br i1 %409, label %410, label %415, !dbg !3086

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !3083
  %412 = and i8 %411, 7, !dbg !3083
  %413 = or i8 %412, 48, !dbg !3083
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3083
  store i8 %413, i8* %414, align 1, !dbg !3083, !tbaa !1532
  br label %415, !dbg !3083

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %416, metadata !2706, metadata !DIExpression()), !dbg !2754
  %417 = and i8 %370, 7, !dbg !3087
  %418 = or i8 %417, 48, !dbg !3088
  call void @llvm.dbg.value(metadata i8 %418, metadata !2716, metadata !DIExpression()), !dbg !2846
  br label %428, !dbg !3089

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !3090
  %421 = icmp eq i8 %420, 0, !dbg !3090
  br i1 %421, label %428, label %422, !dbg !3092

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !3093
  br i1 %423, label %424, label %426, !dbg !3097

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3093
  store i8 92, i8* %425, align 1, !dbg !3093, !tbaa !1532
  br label %426, !dbg !3093

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %427, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2721, metadata !DIExpression()), !dbg !2846
  br label %428, !dbg !3098

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2754
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2775
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2846
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2846
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2846
  call void @llvm.dbg.value(metadata i8 %433, metadata !2722, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %432, metadata !2721, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %431, metadata !2716, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %430, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %429, metadata !2706, metadata !DIExpression()), !dbg !2754
  %434 = add i64 %367, 1, !dbg !3099
  %435 = icmp ugt i64 %365, %434, !dbg !3101
  br i1 %435, label %436, label %526, !dbg !3102

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !3103
  %438 = icmp ne i8 %437, 0, !dbg !3103
  %439 = and i8 %433, 1, !dbg !3103
  %440 = icmp eq i8 %439, 0, !dbg !3103
  %441 = and i1 %438, %440, !dbg !3103
  br i1 %441, label %442, label %453, !dbg !3103

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !3106
  br i1 %443, label %444, label %446, !dbg !3110

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !3106
  store i8 39, i8* %445, align 1, !dbg !3106, !tbaa !1532
  br label %446, !dbg !3106

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %447, metadata !2706, metadata !DIExpression()), !dbg !2754
  %448 = icmp ult i64 %447, %130, !dbg !3111
  br i1 %448, label %449, label %451, !dbg !3114

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !3111
  store i8 39, i8* %450, align 1, !dbg !3111, !tbaa !1532
  br label %451, !dbg !3111

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %452, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2713, metadata !DIExpression()), !dbg !2754
  br label %453, !dbg !3115

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !3116
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2754
  call void @llvm.dbg.value(metadata i8 %455, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %454, metadata !2706, metadata !DIExpression()), !dbg !2754
  %456 = icmp ult i64 %454, %130, !dbg !3117
  br i1 %456, label %457, label %459, !dbg !3120

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3117
  store i8 %431, i8* %458, align 1, !dbg !3117, !tbaa !1532
  br label %459, !dbg !3117

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %460, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %434, metadata !2705, metadata !DIExpression()), !dbg !2754
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !3121
  %462 = load i8, i8* %461, align 1, !dbg !3121, !tbaa !1532
  call void @llvm.dbg.value(metadata i8 %462, metadata !2716, metadata !DIExpression()), !dbg !2846
  br label %366, !dbg !3122, !llvm.loop !3123

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2839
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2754
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2771
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !3126
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2754
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2754
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2846
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2846
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2846
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %472, metadata !2723, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %471, metadata !2722, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %156, metadata !2721, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %470, metadata !2716, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %469, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %468, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %467, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %466, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %465, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %464, metadata !2705, metadata !DIExpression()), !dbg !2754
  br i1 %117, label %486, label %474, !dbg !3127

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !3128
  %476 = zext i8 %475 to i64, !dbg !3128
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !3129
  %478 = load i32, i32* %477, align 4, !dbg !3129, !tbaa !1432
  %479 = and i8 %470, 31, !dbg !3130
  %480 = zext i8 %479 to i32, !dbg !3130
  %481 = shl nuw i32 1, %480, !dbg !3131
  %482 = and i32 %478, %481, !dbg !3131
  %483 = icmp eq i32 %482, 0, !dbg !3131
  %484 = icmp eq i8 %156, 0, !dbg !3132
  %485 = and i1 %484, %483, !dbg !3133
  br i1 %485, label %526, label %488, !dbg !3133

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !3132
  br i1 %487, label %526, label %488, !dbg !3134

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !3135
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2754
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2771
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !3126
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2775
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2776
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2846
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2846
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %496, metadata !2723, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %495, metadata !2716, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %494, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %493, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %492, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %491, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %490, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %489, metadata !2705, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.label(metadata !2751), !dbg !3136
  br i1 %109, label %498, label %629, !dbg !3137

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2722, metadata !DIExpression()), !dbg !2846
  %499 = and i8 %493, 1, !dbg !3139
  %500 = icmp eq i8 %499, 0, !dbg !3139
  %501 = and i1 %110, %500, !dbg !3139
  br i1 %501, label %502, label %518, !dbg !3139

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !3141
  br i1 %503, label %504, label %506, !dbg !3145

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !3141
  store i8 39, i8* %505, align 1, !dbg !3141, !tbaa !1532
  br label %506, !dbg !3141

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %507, metadata !2706, metadata !DIExpression()), !dbg !2754
  %508 = icmp ult i64 %507, %497, !dbg !3146
  br i1 %508, label %509, label %511, !dbg !3149

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !3146
  store i8 36, i8* %510, align 1, !dbg !3146, !tbaa !1532
  br label %511, !dbg !3146

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %512, metadata !2706, metadata !DIExpression()), !dbg !2754
  %513 = icmp ult i64 %512, %497, !dbg !3150
  br i1 %513, label %514, label %516, !dbg !3153

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3150
  store i8 39, i8* %515, align 1, !dbg !3150, !tbaa !1532
  br label %516, !dbg !3150

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !3153
  call void @llvm.dbg.value(metadata i64 %517, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 1, metadata !2713, metadata !DIExpression()), !dbg !2754
  br label %518, !dbg !3154

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2846
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2754
  call void @llvm.dbg.value(metadata i8 %520, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %519, metadata !2706, metadata !DIExpression()), !dbg !2754
  %521 = icmp ult i64 %519, %497, !dbg !3155
  br i1 %521, label %522, label %524, !dbg !3158

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3155
  store i8 92, i8* %523, align 1, !dbg !3155, !tbaa !1532
  br label %524, !dbg !3155

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %525, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %536, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %535, metadata !2723, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %534, metadata !2722, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %533, metadata !2716, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %532, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %531, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %530, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %529, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %528, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %527, metadata !2705, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.label(metadata !2752), !dbg !3159
  br label %553, !dbg !3160

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !3135
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2754
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2771
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !3126
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2775
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2776
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !3163
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2846
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2846
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %535, metadata !2723, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %534, metadata !2722, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %533, metadata !2716, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %532, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %531, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %530, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %529, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %528, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %527, metadata !2705, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.label(metadata !2752), !dbg !3159
  %537 = and i8 %531, 1, !dbg !3160
  %538 = icmp ne i8 %537, 0, !dbg !3160
  %539 = and i8 %534, 1, !dbg !3160
  %540 = icmp eq i8 %539, 0, !dbg !3160
  %541 = and i1 %538, %540, !dbg !3160
  br i1 %541, label %542, label %553, !dbg !3160

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !3164
  br i1 %543, label %544, label %546, !dbg !3168

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3164
  store i8 39, i8* %545, align 1, !dbg !3164, !tbaa !1532
  br label %546, !dbg !3164

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %547, metadata !2706, metadata !DIExpression()), !dbg !2754
  %548 = icmp ult i64 %547, %536, !dbg !3169
  br i1 %548, label %549, label %551, !dbg !3172

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !3169
  store i8 39, i8* %550, align 1, !dbg !3169, !tbaa !1532
  br label %551, !dbg !3169

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %552, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2713, metadata !DIExpression()), !dbg !2754
  br label %553, !dbg !3173

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2846
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2754
  call void @llvm.dbg.value(metadata i8 %562, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %561, metadata !2706, metadata !DIExpression()), !dbg !2754
  %563 = icmp ult i64 %561, %554, !dbg !3174
  br i1 %563, label %564, label %566, !dbg !3177

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !3174
  store i8 %556, i8* %565, align 1, !dbg !3174, !tbaa !1532
  br label %566, !dbg !3174

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %567, metadata !2706, metadata !DIExpression()), !dbg !2754
  %568 = and i8 %555, 1, !dbg !3178
  %569 = icmp eq i8 %568, 0, !dbg !3178
  %570 = select i1 %569, i8 0, i8 %129, !dbg !3180
  call void @llvm.dbg.value(metadata i8 %570, metadata !2715, metadata !DIExpression()), !dbg !2754
  br label %571, !dbg !3181

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !3135
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2754
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2771
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !3126
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2775
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2754
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2777
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %578, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %577, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %576, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %575, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %574, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %573, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %572, metadata !2705, metadata !DIExpression()), !dbg !2754
  %580 = add i64 %572, 1, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %580, metadata !2705, metadata !DIExpression()), !dbg !2754
  br label %122, !dbg !3183, !llvm.loop !3184

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %127, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %127, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %128, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %128, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %129, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %129, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %127, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %127, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %128, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %128, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %129, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %129, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %127, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %127, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %128, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %128, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %129, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %129, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %127, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %127, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %128, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %128, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %129, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %129, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %582, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %582, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %127, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %127, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %128, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %128, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %129, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %129, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %582, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %582, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %127, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %127, metadata !2713, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %128, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %128, metadata !2714, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %129, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 %129, metadata !2715, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  %583 = icmp eq i64 %124, 0, !dbg !3186
  %584 = and i1 %110, %583, !dbg !3188
  %585 = xor i1 %584, true, !dbg !3188
  %586 = or i1 %109, %585, !dbg !3188
  br i1 %586, label %587, label %629, !dbg !3188

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !3189
  %589 = xor i1 %588, true, !dbg !3189
  %590 = and i8 %128, 1, !dbg !3191
  %591 = icmp eq i8 %590, 0, !dbg !3191
  %592 = or i1 %591, %589, !dbg !3189
  br i1 %592, label %602, label %593, !dbg !3189

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !3192
  %595 = icmp eq i8 %594, 0, !dbg !3192
  br i1 %595, label %598, label %596, !dbg !3195

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %582, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %582, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %582, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %582, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %94, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %95, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %125, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %582, metadata !2699, metadata !DIExpression()), !dbg !2754
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3196
  br label %645, !dbg !3197

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !3198
  %600 = icmp ne i64 %125, 0, !dbg !3200
  %601 = and i1 %600, %599, !dbg !3201
  br i1 %601, label %26, label %602, !dbg !3201

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %130, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  %603 = icmp ne i8* %97, null, !dbg !3202
  %604 = and i1 %603, %109, !dbg !3204
  br i1 %604, label %605, label %620, !dbg !3204

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %124, metadata !2706, metadata !DIExpression()), !dbg !2754
  %606 = load i8, i8* %97, align 1, !dbg !3205, !tbaa !1532
  %607 = icmp eq i8 %606, 0, !dbg !3208
  br i1 %607, label %620, label %608, !dbg !3208

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %611, metadata !2706, metadata !DIExpression()), !dbg !2754
  %612 = icmp ult i64 %611, %130, !dbg !3209
  br i1 %612, label %613, label %615, !dbg !3212

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !3209
  store i8 %609, i8* %614, align 1, !dbg !3209, !tbaa !1532
  br label %615, !dbg !3209

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %616, metadata !2706, metadata !DIExpression()), !dbg !2754
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %617, metadata !2708, metadata !DIExpression()), !dbg !2754
  %618 = load i8, i8* %617, align 1, !dbg !3205, !tbaa !1532
  %619 = icmp eq i8 %618, 0, !dbg !3208
  br i1 %619, label %620, label %608, !dbg !3208, !llvm.loop !3214

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2808
  call void @llvm.dbg.value(metadata i64 %621, metadata !2706, metadata !DIExpression()), !dbg !2754
  %622 = icmp ult i64 %621, %130, !dbg !3216
  br i1 %622, label %623, label %645, !dbg !3218

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3219
  store i8 0, i8* %624, align 1, !dbg !3220, !tbaa !1532
  br label %645, !dbg !3219

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %630, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.label(metadata !2753), !dbg !3221
  %627 = icmp eq i8 %101, 0, !dbg !3222
  %628 = select i1 %627, i32 2, i32 4, !dbg !3222
  br label %635, !dbg !3222

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %630, metadata !2699, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.label(metadata !2753), !dbg !3221
  %632 = icmp eq i32 %93, 2, !dbg !3224
  %633 = icmp eq i8 %101, 0, !dbg !3222
  %634 = select i1 %633, i32 2, i32 4, !dbg !3222
  br i1 %632, label %635, label %639, !dbg !3222

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !3222

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2700, metadata !DIExpression()), !dbg !2754
  %643 = and i32 %5, -3, !dbg !3225
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !3226
  br label %645, !dbg !3227

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !3228
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3229 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3233, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i32 %1, metadata !3234, metadata !DIExpression()), !dbg !3237
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #19, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %3, metadata !3235, metadata !DIExpression()), !dbg !3237
  %4 = icmp eq i8* %3, %0, !dbg !3239
  br i1 %4, label %5, label %71, !dbg !3241

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #19, !dbg !3242
  call void @llvm.dbg.value(metadata i8* %6, metadata !3236, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8* %6, metadata !3243, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8* undef, metadata !3249, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8 85, metadata !3250, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8 84, metadata !3251, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8 70, metadata !3252, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8 45, metadata !3253, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8 56, metadata !3254, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8 0, metadata !3255, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8 0, metadata !3256, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8 0, metadata !3257, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8 0, metadata !3258, metadata !DIExpression()), !dbg !3259
  %7 = load i8, i8* %6, align 1, !dbg !3262, !tbaa !1532
  %8 = and i8 %7, -33, !dbg !3262
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3262

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3264, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8* undef, metadata !3269, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 84, metadata !3270, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 70, metadata !3271, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 45, metadata !3272, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 56, metadata !3273, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 0, metadata !3274, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 0, metadata !3275, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 0, metadata !3276, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 0, metadata !3277, metadata !DIExpression()), !dbg !3278
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3282
  %11 = load i8, i8* %10, align 1, !dbg !3282, !tbaa !1532
  %12 = and i8 %11, -33, !dbg !3282
  %13 = icmp eq i8 %12, 84, !dbg !3282
  br i1 %13, label %14, label %68, !dbg !3282

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3284, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8* undef, metadata !3289, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 70, metadata !3290, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 45, metadata !3291, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 56, metadata !3292, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 0, metadata !3293, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 0, metadata !3294, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 0, metadata !3295, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 0, metadata !3296, metadata !DIExpression()), !dbg !3297
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3301
  %16 = load i8, i8* %15, align 1, !dbg !3301, !tbaa !1532
  %17 = and i8 %16, -33, !dbg !3301
  %18 = icmp eq i8 %17, 70, !dbg !3301
  br i1 %18, label %19, label %68, !dbg !3301

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3303, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8* undef, metadata !3308, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8 45, metadata !3309, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8 56, metadata !3310, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8 0, metadata !3311, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8 0, metadata !3312, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8 0, metadata !3313, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8 0, metadata !3314, metadata !DIExpression()), !dbg !3315
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3319
  %21 = load i8, i8* %20, align 1, !dbg !3319, !tbaa !1532
  %22 = icmp eq i8 %21, 45, !dbg !3319
  br i1 %22, label %23, label %68, !dbg !3321

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3322, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i8* undef, metadata !3327, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i8 56, metadata !3328, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i8 0, metadata !3329, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i8 0, metadata !3330, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i8 0, metadata !3331, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i8 0, metadata !3332, metadata !DIExpression()), !dbg !3333
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3337
  %25 = load i8, i8* %24, align 1, !dbg !3337, !tbaa !1532
  %26 = icmp eq i8 %25, 56, !dbg !3337
  br i1 %26, label %27, label %68, !dbg !3339

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3340, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8* undef, metadata !3345, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8 0, metadata !3346, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8 0, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8 0, metadata !3348, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8 0, metadata !3349, metadata !DIExpression()), !dbg !3350
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3354
  %29 = load i8, i8* %28, align 1, !dbg !3354, !tbaa !1532
  %30 = icmp eq i8 %29, 0, !dbg !3354
  br i1 %30, label %31, label %68, !dbg !3356

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3357, !tbaa !1532
  %33 = icmp eq i8 %32, 96, !dbg !3358
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.128, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.129, i64 0, i64 0), !dbg !3357
  br label %71, !dbg !3359

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3264, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8* undef, metadata !3269, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 66, metadata !3270, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 49, metadata !3271, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 56, metadata !3272, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 48, metadata !3273, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 51, metadata !3274, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 48, metadata !3275, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 0, metadata !3276, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 0, metadata !3277, metadata !DIExpression()), !dbg !3360
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3364
  %37 = load i8, i8* %36, align 1, !dbg !3364, !tbaa !1532
  %38 = and i8 %37, -33, !dbg !3364
  %39 = icmp eq i8 %38, 66, !dbg !3364
  br i1 %39, label %40, label %68, !dbg !3364

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3284, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8* undef, metadata !3289, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 49, metadata !3290, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 56, metadata !3291, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 48, metadata !3292, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 51, metadata !3293, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 48, metadata !3294, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 0, metadata !3295, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 0, metadata !3296, metadata !DIExpression()), !dbg !3365
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3367
  %42 = load i8, i8* %41, align 1, !dbg !3367, !tbaa !1532
  %43 = icmp eq i8 %42, 49, !dbg !3367
  br i1 %43, label %44, label %68, !dbg !3368

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3303, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8* undef, metadata !3308, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 56, metadata !3309, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 48, metadata !3310, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 51, metadata !3311, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 48, metadata !3312, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 0, metadata !3313, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 0, metadata !3314, metadata !DIExpression()), !dbg !3369
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3371
  %46 = load i8, i8* %45, align 1, !dbg !3371, !tbaa !1532
  %47 = icmp eq i8 %46, 56, !dbg !3371
  br i1 %47, label %48, label %68, !dbg !3372

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3322, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8* undef, metadata !3327, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 48, metadata !3328, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 51, metadata !3329, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 48, metadata !3330, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 0, metadata !3331, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 0, metadata !3332, metadata !DIExpression()), !dbg !3373
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3375
  %50 = load i8, i8* %49, align 1, !dbg !3375, !tbaa !1532
  %51 = icmp eq i8 %50, 48, !dbg !3375
  br i1 %51, label %52, label %68, !dbg !3376

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3340, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* undef, metadata !3345, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 51, metadata !3346, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 48, metadata !3347, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 0, metadata !3348, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 0, metadata !3349, metadata !DIExpression()), !dbg !3377
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3379
  %54 = load i8, i8* %53, align 1, !dbg !3379, !tbaa !1532
  %55 = icmp eq i8 %54, 51, !dbg !3379
  br i1 %55, label %56, label %68, !dbg !3380

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3381, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i8* undef, metadata !3386, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i8 48, metadata !3387, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i8 0, metadata !3388, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i8 0, metadata !3389, metadata !DIExpression()), !dbg !3390
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3394
  %58 = load i8, i8* %57, align 1, !dbg !3394, !tbaa !1532
  %59 = icmp eq i8 %58, 48, !dbg !3394
  br i1 %59, label %60, label %68, !dbg !3396

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3397, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8* undef, metadata !3402, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8 0, metadata !3403, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8 0, metadata !3404, metadata !DIExpression()), !dbg !3405
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3409
  %62 = load i8, i8* %61, align 1, !dbg !3409, !tbaa !1532
  %63 = icmp eq i8 %62, 0, !dbg !3409
  br i1 %63, label %64, label %68, !dbg !3411

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3412, !tbaa !1532
  %66 = icmp eq i8 %65, 96, !dbg !3413
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.130, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.131, i64 0, i64 0), !dbg !3412
  br label %71, !dbg !3414

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3415
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.127, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), !dbg !3416
  br label %71, !dbg !3417

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3237
  ret i8* %72, !dbg !3418
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !553 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !557 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3419 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3423, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 %1, metadata !3424, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3425, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8* %0, metadata !3427, metadata !DIExpression()) #19, !dbg !3440
  call void @llvm.dbg.value(metadata i64 %1, metadata !3432, metadata !DIExpression()) #19, !dbg !3440
  call void @llvm.dbg.value(metadata i64* null, metadata !3433, metadata !DIExpression()) #19, !dbg !3440
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3434, metadata !DIExpression()) #19, !dbg !3440
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3442
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3442
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3435, metadata !DIExpression()) #19, !dbg !3440
  %6 = tail call i32* @__errno_location() #25, !dbg !3443
  %7 = load i32, i32* %6, align 4, !dbg !3443, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %7, metadata !3436, metadata !DIExpression()) #19, !dbg !3440
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3444
  %9 = load i32, i32* %8, align 4, !dbg !3444, !tbaa !2639
  %10 = or i32 %9, 1, !dbg !3445
  call void @llvm.dbg.value(metadata i32 %10, metadata !3437, metadata !DIExpression()) #19, !dbg !3440
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3446
  %12 = load i32, i32* %11, align 8, !dbg !3446, !tbaa !2587
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3447
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3448
  %15 = load i8*, i8** %14, align 8, !dbg !3448, !tbaa !2662
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3449
  %17 = load i8*, i8** %16, align 8, !dbg !3449, !tbaa !2665
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #19, !dbg !3450
  %19 = add i64 %18, 1, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %19, metadata !3438, metadata !DIExpression()) #19, !dbg !3440
  call void @llvm.dbg.value(metadata i64 %19, metadata !3452, metadata !DIExpression()) #19, !dbg !3457
  %20 = tail call noalias i8* @xmalloc(i64 %19) #19, !dbg !3459
  call void @llvm.dbg.value(metadata i8* %20, metadata !3439, metadata !DIExpression()) #19, !dbg !3440
  %21 = load i32, i32* %11, align 8, !dbg !3460, !tbaa !2587
  %22 = load i8*, i8** %14, align 8, !dbg !3461, !tbaa !2662
  %23 = load i8*, i8** %16, align 8, !dbg !3462, !tbaa !2665
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #19, !dbg !3463
  store i32 %7, i32* %6, align 4, !dbg !3464, !tbaa !1432
  ret i8* %20, !dbg !3465
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3428 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3427, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %1, metadata !3432, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* %2, metadata !3433, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3434, metadata !DIExpression()), !dbg !3466
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3467
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3467
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3435, metadata !DIExpression()), !dbg !3466
  %7 = tail call i32* @__errno_location() #25, !dbg !3468
  %8 = load i32, i32* %7, align 4, !dbg !3468, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %8, metadata !3436, metadata !DIExpression()), !dbg !3466
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3469
  %10 = load i32, i32* %9, align 4, !dbg !3469, !tbaa !2639
  %11 = icmp ne i64* %2, null, !dbg !3470
  %12 = xor i1 %11, true, !dbg !3470
  %13 = zext i1 %12 to i32, !dbg !3470
  %14 = or i32 %10, %13, !dbg !3471
  call void @llvm.dbg.value(metadata i32 %14, metadata !3437, metadata !DIExpression()), !dbg !3466
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3472
  %16 = load i32, i32* %15, align 8, !dbg !3472, !tbaa !2587
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3473
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3474
  %19 = load i8*, i8** %18, align 8, !dbg !3474, !tbaa !2662
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3475
  %21 = load i8*, i8** %20, align 8, !dbg !3475, !tbaa !2665
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3476
  %23 = add i64 %22, 1, !dbg !3477
  call void @llvm.dbg.value(metadata i64 %23, metadata !3438, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %23, metadata !3452, metadata !DIExpression()) #19, !dbg !3478
  %24 = tail call noalias i8* @xmalloc(i64 %23) #19, !dbg !3480
  call void @llvm.dbg.value(metadata i8* %24, metadata !3439, metadata !DIExpression()), !dbg !3466
  %25 = load i32, i32* %15, align 8, !dbg !3481, !tbaa !2587
  %26 = load i8*, i8** %18, align 8, !dbg !3482, !tbaa !2662
  %27 = load i8*, i8** %20, align 8, !dbg !3483, !tbaa !2665
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3484
  store i32 %8, i32* %7, align 4, !dbg !3485, !tbaa !1432
  br i1 %11, label %29, label %30, !dbg !3486

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3487, !tbaa !1460
  br label %30, !dbg !3489

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3490
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3491 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3495, !tbaa !1316
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3493, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i32 1, metadata !3494, metadata !DIExpression()), !dbg !3496
  %2 = load i32, i32* @nslots, align 4, !dbg !3497, !tbaa !1432
  %3 = icmp sgt i32 %2, 1, !dbg !3500
  br i1 %3, label %4, label %12, !dbg !3501

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3494, metadata !DIExpression()), !dbg !3496
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3502
  %7 = load i8*, i8** %6, align 8, !dbg !3502, !tbaa !3503
  tail call void @free(i8* %7) #19, !dbg !3505
  %8 = add nuw nsw i64 %5, 1, !dbg !3506
  call void @llvm.dbg.value(metadata i64 %8, metadata !3494, metadata !DIExpression()), !dbg !3496
  %9 = load i32, i32* @nslots, align 4, !dbg !3497, !tbaa !1432
  %10 = sext i32 %9 to i64, !dbg !3500
  %11 = icmp slt i64 %8, %10, !dbg !3500
  br i1 %11, label %4, label %12, !dbg !3501, !llvm.loop !3507

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3509
  %14 = load i8*, i8** %13, align 8, !dbg !3509, !tbaa !3503
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3511
  br i1 %15, label %17, label %16, !dbg !3512

16:                                               ; preds = %12
  tail call void @free(i8* %14) #19, !dbg !3513
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3515, !tbaa !3516
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3517, !tbaa !3503
  br label %17, !dbg !3518

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3519
  br i1 %18, label %21, label %19, !dbg !3521

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3522
  tail call void @free(i8* %20) #19, !dbg !3524
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3525, !tbaa !1316
  br label %21, !dbg !3526

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3527, !tbaa !1432
  ret void, !dbg !3528
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3529 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3531, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8* %1, metadata !3532, metadata !DIExpression()), !dbg !3533
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3534
  ret i8* %3, !dbg !3535
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3536 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3540, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i8* %1, metadata !3541, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i64 %2, metadata !3542, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3543, metadata !DIExpression()), !dbg !3555
  %5 = tail call i32* @__errno_location() #25, !dbg !3556
  %6 = load i32, i32* %5, align 4, !dbg !3556, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %6, metadata !3544, metadata !DIExpression()), !dbg !3555
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3557, !tbaa !1316
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3545, metadata !DIExpression()), !dbg !3555
  %8 = icmp slt i32 %0, 0, !dbg !3558
  br i1 %8, label %9, label %10, !dbg !3560

9:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3561
  unreachable, !dbg !3561

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3562, !tbaa !1432
  %12 = icmp sgt i32 %11, %0, !dbg !3563
  br i1 %12, label %34, label %13, !dbg !3564

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3565
  call void @llvm.dbg.value(metadata i1 %14, metadata !3546, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3549, metadata !DIExpression()), !dbg !3566
  %15 = icmp eq i32 %0, 2147483647, !dbg !3567
  br i1 %15, label %16, label %17, !dbg !3569

16:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3570
  unreachable, !dbg !3570

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3571
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3571
  %20 = add nuw nsw i32 %0, 1, !dbg !3572
  %21 = sext i32 %20 to i64, !dbg !3573
  %22 = shl nuw nsw i64 %21, 4, !dbg !3574
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #19, !dbg !3575
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3575
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3545, metadata !DIExpression()), !dbg !3555
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3576, !tbaa !1316
  br i1 %14, label %25, label %26, !dbg !3577

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3578, !tbaa.struct !3580
  br label %26, !dbg !3581

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3582, !tbaa !1432
  %28 = sext i32 %27 to i64, !dbg !3583
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3583
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3584
  %31 = sub nsw i32 %20, %27, !dbg !3585
  %32 = sext i32 %31 to i64, !dbg !3586
  %33 = shl nsw i64 %32, 4, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %30, metadata !2986, metadata !DIExpression()) #19, !dbg !3588
  call void @llvm.dbg.value(metadata i32 0, metadata !2991, metadata !DIExpression()) #19, !dbg !3588
  call void @llvm.dbg.value(metadata i64 %33, metadata !2992, metadata !DIExpression()) #19, !dbg !3588
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #19, !dbg !3590
  store i32 %20, i32* @nslots, align 4, !dbg !3591, !tbaa !1432
  br label %34, !dbg !3592

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3555
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3545, metadata !DIExpression()), !dbg !3555
  %36 = zext i32 %0 to i64, !dbg !3593
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3594
  %38 = load i64, i64* %37, align 8, !dbg !3594, !tbaa !3516
  call void @llvm.dbg.value(metadata i64 %38, metadata !3550, metadata !DIExpression()), !dbg !3595
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3596
  %40 = load i8*, i8** %39, align 8, !dbg !3596, !tbaa !3503
  call void @llvm.dbg.value(metadata i8* %40, metadata !3552, metadata !DIExpression()), !dbg !3595
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3597
  %42 = load i32, i32* %41, align 4, !dbg !3597, !tbaa !2639
  %43 = or i32 %42, 1, !dbg !3598
  call void @llvm.dbg.value(metadata i32 %43, metadata !3553, metadata !DIExpression()), !dbg !3595
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3599
  %45 = load i32, i32* %44, align 8, !dbg !3599, !tbaa !2587
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3600
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3601
  %48 = load i8*, i8** %47, align 8, !dbg !3601, !tbaa !2662
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3602
  %50 = load i8*, i8** %49, align 8, !dbg !3602, !tbaa !2665
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3603
  call void @llvm.dbg.value(metadata i64 %51, metadata !3554, metadata !DIExpression()), !dbg !3595
  %52 = icmp ugt i64 %38, %51, !dbg !3604
  br i1 %52, label %63, label %53, !dbg !3606

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3607
  call void @llvm.dbg.value(metadata i64 %54, metadata !3550, metadata !DIExpression()), !dbg !3595
  store i64 %54, i64* %37, align 8, !dbg !3609, !tbaa !3516
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3610
  br i1 %55, label %57, label %56, !dbg !3612

56:                                               ; preds = %53
  tail call void @free(i8* %40) #19, !dbg !3613
  br label %57, !dbg !3613

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3452, metadata !DIExpression()) #19, !dbg !3614
  %58 = tail call noalias i8* @xmalloc(i64 %54) #19, !dbg !3616
  call void @llvm.dbg.value(metadata i8* %58, metadata !3552, metadata !DIExpression()), !dbg !3595
  store i8* %58, i8** %39, align 8, !dbg !3617, !tbaa !3503
  %59 = load i32, i32* %44, align 8, !dbg !3618, !tbaa !2587
  %60 = load i8*, i8** %47, align 8, !dbg !3619, !tbaa !2662
  %61 = load i8*, i8** %49, align 8, !dbg !3620, !tbaa !2665
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3621
  br label %63, !dbg !3622

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3595
  call void @llvm.dbg.value(metadata i8* %64, metadata !3552, metadata !DIExpression()), !dbg !3595
  store i32 %6, i32* %5, align 4, !dbg !3623, !tbaa !1432
  ret i8* %64, !dbg !3624
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3625 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i8* %1, metadata !3630, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %2, metadata !3631, metadata !DIExpression()), !dbg !3632
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3633
  ret i8* %4, !dbg !3634
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3635 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3637, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32 0, metadata !3531, metadata !DIExpression()) #19, !dbg !3639
  call void @llvm.dbg.value(metadata i8* %0, metadata !3532, metadata !DIExpression()) #19, !dbg !3639
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !3641
  ret i8* %2, !dbg !3642
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3643 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3647, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %1, metadata !3648, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()) #19, !dbg !3650
  call void @llvm.dbg.value(metadata i8* %0, metadata !3630, metadata !DIExpression()) #19, !dbg !3650
  call void @llvm.dbg.value(metadata i64 %1, metadata !3631, metadata !DIExpression()) #19, !dbg !3650
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !3652
  ret i8* %3, !dbg !3653
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3654 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3658, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 %1, metadata !3659, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8* %2, metadata !3660, metadata !DIExpression()), !dbg !3662
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3663
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3663
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3661, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32 %1, metadata !3665, metadata !DIExpression()) #19, !dbg !3671
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3670, metadata !DIExpression()) #19, !dbg !3673
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !3673, !alias.scope !3674
  %6 = icmp eq i32 %1, 10, !dbg !3677
  br i1 %6, label %7, label %8, !dbg !3679

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3680, !noalias !3674
  unreachable, !dbg !3680

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3681
  store i32 %1, i32* %9, align 8, !dbg !3682, !tbaa !2587, !alias.scope !3674
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3683
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3684
  ret i8* %10, !dbg !3685
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3686 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3690, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i32 %1, metadata !3691, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i8* %2, metadata !3692, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i64 %3, metadata !3693, metadata !DIExpression()), !dbg !3695
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3696
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3696
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3694, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i32 %1, metadata !3665, metadata !DIExpression()) #19, !dbg !3698
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3670, metadata !DIExpression()) #19, !dbg !3700
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #19, !dbg !3700, !alias.scope !3701
  %7 = icmp eq i32 %1, 10, !dbg !3704
  br i1 %7, label %8, label %9, !dbg !3705

8:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3706, !noalias !3701
  unreachable, !dbg !3706

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3707
  store i32 %1, i32* %10, align 8, !dbg !3708, !tbaa !2587, !alias.scope !3701
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3709
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3710
  ret i8* %11, !dbg !3711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3712 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3670, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3661, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i32 %0, metadata !3714, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8* %1, metadata !3715, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32 0, metadata !3658, metadata !DIExpression()) #19, !dbg !3721
  call void @llvm.dbg.value(metadata i32 %0, metadata !3659, metadata !DIExpression()) #19, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %1, metadata !3660, metadata !DIExpression()) #19, !dbg !3721
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3722
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3722
  call void @llvm.dbg.value(metadata i32 %0, metadata !3665, metadata !DIExpression()) #19, !dbg !3723
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #19, !dbg !3716, !alias.scope !3724
  %5 = icmp eq i32 %0, 10, !dbg !3727
  br i1 %5, label %6, label %7, !dbg !3728

6:                                                ; preds = %2
  tail call void @abort() #24, !dbg !3729, !noalias !3724
  unreachable, !dbg !3729

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3730
  store i32 %0, i32* %8, align 8, !dbg !3731, !tbaa !2587, !alias.scope !3724
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !3732
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3733
  ret i8* %9, !dbg !3734
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3735 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3670, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3694, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i32 %0, metadata !3739, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i8* %1, metadata !3740, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i64 %2, metadata !3741, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i32 0, metadata !3690, metadata !DIExpression()) #19, !dbg !3747
  call void @llvm.dbg.value(metadata i32 %0, metadata !3691, metadata !DIExpression()) #19, !dbg !3747
  call void @llvm.dbg.value(metadata i8* %1, metadata !3692, metadata !DIExpression()) #19, !dbg !3747
  call void @llvm.dbg.value(metadata i64 %2, metadata !3693, metadata !DIExpression()) #19, !dbg !3747
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3748
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3748
  call void @llvm.dbg.value(metadata i32 %0, metadata !3665, metadata !DIExpression()) #19, !dbg !3749
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !3742, !alias.scope !3750
  %6 = icmp eq i32 %0, 10, !dbg !3753
  br i1 %6, label %7, label %8, !dbg !3754

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3755, !noalias !3750
  unreachable, !dbg !3755

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3756
  store i32 %0, i32* %9, align 8, !dbg !3757, !tbaa !2587, !alias.scope !3750
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #19, !dbg !3758
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3759
  ret i8* %10, !dbg !3760
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3761 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3765, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i64 %1, metadata !3766, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i8 %2, metadata !3767, metadata !DIExpression()), !dbg !3769
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3770
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3770
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3768, metadata !DIExpression()), !dbg !3771
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3772, !tbaa.struct !3773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2605, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i8 %2, metadata !2606, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 1, metadata !2607, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i8 %2, metadata !2608, metadata !DIExpression()), !dbg !3774
  %6 = lshr i8 %2, 5, !dbg !3776
  %7 = zext i8 %6 to i64, !dbg !3776
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3777
  call void @llvm.dbg.value(metadata i32* %8, metadata !2610, metadata !DIExpression()), !dbg !3774
  %9 = and i8 %2, 31, !dbg !3778
  %10 = zext i8 %9 to i32, !dbg !3778
  call void @llvm.dbg.value(metadata i32 %10, metadata !2612, metadata !DIExpression()), !dbg !3774
  %11 = load i32, i32* %8, align 4, !dbg !3779, !tbaa !1432
  %12 = lshr i32 %11, %10, !dbg !3780
  %13 = and i32 %12, 1, !dbg !3781
  call void @llvm.dbg.value(metadata i32 %13, metadata !2613, metadata !DIExpression()), !dbg !3774
  %14 = xor i32 %13, 1, !dbg !3782
  %15 = shl i32 %14, %10, !dbg !3783
  %16 = xor i32 %15, %11, !dbg !3784
  store i32 %16, i32* %8, align 4, !dbg !3784, !tbaa !1432
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3785
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3786
  ret i8* %17, !dbg !3787
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3788 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3768, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i8* %0, metadata !3792, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i8 %1, metadata !3793, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i8* %0, metadata !3765, metadata !DIExpression()) #19, !dbg !3797
  call void @llvm.dbg.value(metadata i64 -1, metadata !3766, metadata !DIExpression()) #19, !dbg !3797
  call void @llvm.dbg.value(metadata i8 %1, metadata !3767, metadata !DIExpression()) #19, !dbg !3797
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3798
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3798
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3799, !tbaa.struct !3773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2605, metadata !DIExpression()) #19, !dbg !3800
  call void @llvm.dbg.value(metadata i8 %1, metadata !2606, metadata !DIExpression()) #19, !dbg !3800
  call void @llvm.dbg.value(metadata i32 1, metadata !2607, metadata !DIExpression()) #19, !dbg !3800
  call void @llvm.dbg.value(metadata i8 %1, metadata !2608, metadata !DIExpression()) #19, !dbg !3800
  %5 = lshr i8 %1, 5, !dbg !3802
  %6 = zext i8 %5 to i64, !dbg !3802
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3803
  call void @llvm.dbg.value(metadata i32* %7, metadata !2610, metadata !DIExpression()) #19, !dbg !3800
  %8 = and i8 %1, 31, !dbg !3804
  %9 = zext i8 %8 to i32, !dbg !3804
  call void @llvm.dbg.value(metadata i32 %9, metadata !2612, metadata !DIExpression()) #19, !dbg !3800
  %10 = load i32, i32* %7, align 4, !dbg !3805, !tbaa !1432
  %11 = lshr i32 %10, %9, !dbg !3806
  %12 = and i32 %11, 1, !dbg !3807
  call void @llvm.dbg.value(metadata i32 %12, metadata !2613, metadata !DIExpression()) #19, !dbg !3800
  %13 = xor i32 %12, 1, !dbg !3808
  %14 = shl i32 %13, %9, !dbg !3809
  %15 = xor i32 %14, %10, !dbg !3810
  store i32 %15, i32* %7, align 4, !dbg !3810, !tbaa !1432
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !3811
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3812
  ret i8* %16, !dbg !3813
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3814 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3768, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i8* %0, metadata !3816, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8* %0, metadata !3792, metadata !DIExpression()) #19, !dbg !3821
  call void @llvm.dbg.value(metadata i8 58, metadata !3793, metadata !DIExpression()) #19, !dbg !3821
  call void @llvm.dbg.value(metadata i8* %0, metadata !3765, metadata !DIExpression()) #19, !dbg !3822
  call void @llvm.dbg.value(metadata i64 -1, metadata !3766, metadata !DIExpression()) #19, !dbg !3822
  call void @llvm.dbg.value(metadata i8 58, metadata !3767, metadata !DIExpression()) #19, !dbg !3822
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3823
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #19, !dbg !3823
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3824, !tbaa.struct !3773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2605, metadata !DIExpression()) #19, !dbg !3825
  call void @llvm.dbg.value(metadata i8 58, metadata !2606, metadata !DIExpression()) #19, !dbg !3825
  call void @llvm.dbg.value(metadata i32 1, metadata !2607, metadata !DIExpression()) #19, !dbg !3825
  call void @llvm.dbg.value(metadata i8 58, metadata !2608, metadata !DIExpression()) #19, !dbg !3825
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3827
  call void @llvm.dbg.value(metadata i32* %4, metadata !2610, metadata !DIExpression()) #19, !dbg !3825
  call void @llvm.dbg.value(metadata i32 26, metadata !2612, metadata !DIExpression()) #19, !dbg !3825
  %5 = load i32, i32* %4, align 4, !dbg !3828, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %5, metadata !2613, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !3825
  %6 = or i32 %5, 67108864, !dbg !3829
  store i32 %6, i32* %4, align 4, !dbg !3829, !tbaa !1432
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #19, !dbg !3830
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #19, !dbg !3831
  ret i8* %7, !dbg !3832
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3833 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3768, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i8* %0, metadata !3835, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i64 %1, metadata !3836, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i8* %0, metadata !3765, metadata !DIExpression()) #19, !dbg !3840
  call void @llvm.dbg.value(metadata i64 %1, metadata !3766, metadata !DIExpression()) #19, !dbg !3840
  call void @llvm.dbg.value(metadata i8 58, metadata !3767, metadata !DIExpression()) #19, !dbg !3840
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3841
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3841
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3842, !tbaa.struct !3773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2605, metadata !DIExpression()) #19, !dbg !3843
  call void @llvm.dbg.value(metadata i8 58, metadata !2606, metadata !DIExpression()) #19, !dbg !3843
  call void @llvm.dbg.value(metadata i32 1, metadata !2607, metadata !DIExpression()) #19, !dbg !3843
  call void @llvm.dbg.value(metadata i8 58, metadata !2608, metadata !DIExpression()) #19, !dbg !3843
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3845
  call void @llvm.dbg.value(metadata i32* %5, metadata !2610, metadata !DIExpression()) #19, !dbg !3843
  call void @llvm.dbg.value(metadata i32 26, metadata !2612, metadata !DIExpression()) #19, !dbg !3843
  %6 = load i32, i32* %5, align 4, !dbg !3846, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %6, metadata !2613, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !3843
  %7 = or i32 %6, 67108864, !dbg !3847
  store i32 %7, i32* %5, align 4, !dbg !3847, !tbaa !1432
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #19, !dbg !3848
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3849
  ret i8* %8, !dbg !3850
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3851 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3670, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3857
  call void @llvm.dbg.value(metadata i32 %0, metadata !3853, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 %1, metadata !3854, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i8* %2, metadata !3855, metadata !DIExpression()), !dbg !3859
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3860
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3860
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3856, metadata !DIExpression()), !dbg !3861
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3862
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3862
  call void @llvm.dbg.value(metadata i32 %1, metadata !3665, metadata !DIExpression()) #19, !dbg !3863
  call void @llvm.dbg.value(metadata i32 0, metadata !3670, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3863
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3857, !alias.scope !3864
  %8 = icmp eq i32 %1, 10, !dbg !3867
  br i1 %8, label %9, label %10, !dbg !3868

9:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3869, !noalias !3864
  unreachable, !dbg !3869

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3670, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3863
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3862
  store i32 %1, i32* %11, align 8, !dbg !3862, !tbaa.struct !3773
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3862
  %13 = bitcast i32* %12 to i8*, !dbg !3862
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3862, !tbaa.struct !3773
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3862
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2605, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i8 58, metadata !2606, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 1, metadata !2607, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i8 58, metadata !2608, metadata !DIExpression()), !dbg !3870
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3872
  call void @llvm.dbg.value(metadata i32* %14, metadata !2610, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 26, metadata !2612, metadata !DIExpression()), !dbg !3870
  %15 = load i32, i32* %14, align 4, !dbg !3873, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %15, metadata !2613, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3870
  %16 = or i32 %15, 67108864, !dbg !3874
  store i32 %16, i32* %14, align 4, !dbg !3874, !tbaa !1432
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3875
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3876
  ret i8* %17, !dbg !3877
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3878 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3886, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i32 %0, metadata !3882, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8* %1, metadata !3883, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8* %2, metadata !3884, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8* %3, metadata !3885, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i32 %0, metadata !3891, metadata !DIExpression()) #19, !dbg !3899
  call void @llvm.dbg.value(metadata i8* %1, metadata !3892, metadata !DIExpression()) #19, !dbg !3899
  call void @llvm.dbg.value(metadata i8* %2, metadata !3893, metadata !DIExpression()) #19, !dbg !3899
  call void @llvm.dbg.value(metadata i8* %3, metadata !3894, metadata !DIExpression()) #19, !dbg !3899
  call void @llvm.dbg.value(metadata i64 -1, metadata !3895, metadata !DIExpression()) #19, !dbg !3899
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3900
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3900
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3901, !tbaa.struct !3773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2646, metadata !DIExpression()) #19, !dbg !3902
  call void @llvm.dbg.value(metadata i8* %1, metadata !2647, metadata !DIExpression()) #19, !dbg !3902
  call void @llvm.dbg.value(metadata i8* %2, metadata !2648, metadata !DIExpression()) #19, !dbg !3902
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2646, metadata !DIExpression()) #19, !dbg !3902
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3904
  store i32 10, i32* %7, align 8, !dbg !3905, !tbaa !2587
  %8 = icmp ne i8* %1, null, !dbg !3906
  %9 = icmp ne i8* %2, null, !dbg !3907
  %10 = and i1 %8, %9, !dbg !3908
  br i1 %10, label %12, label %11, !dbg !3908

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3909
  unreachable, !dbg !3909

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3910
  store i8* %1, i8** %13, align 8, !dbg !3911, !tbaa !2662
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3912
  store i8* %2, i8** %14, align 8, !dbg !3913, !tbaa !2665
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #19, !dbg !3914
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3915
  ret i8* %15, !dbg !3916
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3887 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3891, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i8* %1, metadata !3892, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i8* %2, metadata !3893, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i8* %3, metadata !3894, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i64 %4, metadata !3895, metadata !DIExpression()), !dbg !3917
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3918
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #19, !dbg !3918
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3886, metadata !DIExpression()), !dbg !3919
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3920, !tbaa.struct !3773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2646, metadata !DIExpression()) #19, !dbg !3921
  call void @llvm.dbg.value(metadata i8* %1, metadata !2647, metadata !DIExpression()) #19, !dbg !3921
  call void @llvm.dbg.value(metadata i8* %2, metadata !2648, metadata !DIExpression()) #19, !dbg !3921
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2646, metadata !DIExpression()) #19, !dbg !3921
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3923
  store i32 10, i32* %8, align 8, !dbg !3924, !tbaa !2587
  %9 = icmp ne i8* %1, null, !dbg !3925
  %10 = icmp ne i8* %2, null, !dbg !3926
  %11 = and i1 %9, %10, !dbg !3927
  br i1 %11, label %13, label %12, !dbg !3927

12:                                               ; preds = %5
  tail call void @abort() #24, !dbg !3928
  unreachable, !dbg !3928

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3929
  store i8* %1, i8** %14, align 8, !dbg !3930, !tbaa !2662
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3931
  store i8* %2, i8** %15, align 8, !dbg !3932, !tbaa !2665
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3933
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #19, !dbg !3934
  ret i8* %16, !dbg !3935
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3936 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3886, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i8* %0, metadata !3940, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i8* %1, metadata !3941, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i8* %2, metadata !3942, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 0, metadata !3882, metadata !DIExpression()) #19, !dbg !3947
  call void @llvm.dbg.value(metadata i8* %0, metadata !3883, metadata !DIExpression()) #19, !dbg !3947
  call void @llvm.dbg.value(metadata i8* %1, metadata !3884, metadata !DIExpression()) #19, !dbg !3947
  call void @llvm.dbg.value(metadata i8* %2, metadata !3885, metadata !DIExpression()) #19, !dbg !3947
  call void @llvm.dbg.value(metadata i32 0, metadata !3891, metadata !DIExpression()) #19, !dbg !3948
  call void @llvm.dbg.value(metadata i8* %0, metadata !3892, metadata !DIExpression()) #19, !dbg !3948
  call void @llvm.dbg.value(metadata i8* %1, metadata !3893, metadata !DIExpression()) #19, !dbg !3948
  call void @llvm.dbg.value(metadata i8* %2, metadata !3894, metadata !DIExpression()) #19, !dbg !3948
  call void @llvm.dbg.value(metadata i64 -1, metadata !3895, metadata !DIExpression()) #19, !dbg !3948
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3949
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3949
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3950, !tbaa.struct !3773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2646, metadata !DIExpression()) #19, !dbg !3951
  call void @llvm.dbg.value(metadata i8* %0, metadata !2647, metadata !DIExpression()) #19, !dbg !3951
  call void @llvm.dbg.value(metadata i8* %1, metadata !2648, metadata !DIExpression()) #19, !dbg !3951
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2646, metadata !DIExpression()) #19, !dbg !3951
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3953
  store i32 10, i32* %6, align 8, !dbg !3954, !tbaa !2587
  %7 = icmp ne i8* %0, null, !dbg !3955
  %8 = icmp ne i8* %1, null, !dbg !3956
  %9 = and i1 %7, %8, !dbg !3957
  br i1 %9, label %11, label %10, !dbg !3957

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !3958
  unreachable, !dbg !3958

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3959
  store i8* %0, i8** %12, align 8, !dbg !3960, !tbaa !2662
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3961
  store i8* %1, i8** %13, align 8, !dbg !3962, !tbaa !2665
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #19, !dbg !3963
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3964
  ret i8* %14, !dbg !3965
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3966 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3886, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i8* %0, metadata !3970, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i8* %1, metadata !3971, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i8* %2, metadata !3972, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i64 %3, metadata !3973, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 0, metadata !3891, metadata !DIExpression()) #19, !dbg !3977
  call void @llvm.dbg.value(metadata i8* %0, metadata !3892, metadata !DIExpression()) #19, !dbg !3977
  call void @llvm.dbg.value(metadata i8* %1, metadata !3893, metadata !DIExpression()) #19, !dbg !3977
  call void @llvm.dbg.value(metadata i8* %2, metadata !3894, metadata !DIExpression()) #19, !dbg !3977
  call void @llvm.dbg.value(metadata i64 %3, metadata !3895, metadata !DIExpression()) #19, !dbg !3977
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3978
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3978
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3979, !tbaa.struct !3773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2646, metadata !DIExpression()) #19, !dbg !3980
  call void @llvm.dbg.value(metadata i8* %0, metadata !2647, metadata !DIExpression()) #19, !dbg !3980
  call void @llvm.dbg.value(metadata i8* %1, metadata !2648, metadata !DIExpression()) #19, !dbg !3980
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2646, metadata !DIExpression()) #19, !dbg !3980
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3982
  store i32 10, i32* %7, align 8, !dbg !3983, !tbaa !2587
  %8 = icmp ne i8* %0, null, !dbg !3984
  %9 = icmp ne i8* %1, null, !dbg !3985
  %10 = and i1 %8, %9, !dbg !3986
  br i1 %10, label %12, label %11, !dbg !3986

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3987
  unreachable, !dbg !3987

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3988
  store i8* %0, i8** %13, align 8, !dbg !3989, !tbaa !2662
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3990
  store i8* %1, i8** %14, align 8, !dbg !3991, !tbaa !2665
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #19, !dbg !3992
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3993
  ret i8* %15, !dbg !3994
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3995 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3999, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i8* %1, metadata !4000, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i64 %2, metadata !4001, metadata !DIExpression()), !dbg !4002
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4003
  ret i8* %4, !dbg !4004
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4005 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4009, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i64 %1, metadata !4010, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i32 0, metadata !3999, metadata !DIExpression()) #19, !dbg !4012
  call void @llvm.dbg.value(metadata i8* %0, metadata !4000, metadata !DIExpression()) #19, !dbg !4012
  call void @llvm.dbg.value(metadata i64 %1, metadata !4001, metadata !DIExpression()) #19, !dbg !4012
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !4014
  ret i8* %3, !dbg !4015
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4016 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4020, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i8* %1, metadata !4021, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i32 %0, metadata !3999, metadata !DIExpression()) #19, !dbg !4023
  call void @llvm.dbg.value(metadata i8* %1, metadata !4000, metadata !DIExpression()) #19, !dbg !4023
  call void @llvm.dbg.value(metadata i64 -1, metadata !4001, metadata !DIExpression()) #19, !dbg !4023
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !4025
  ret i8* %3, !dbg !4026
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !4027 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 0, metadata !4020, metadata !DIExpression()) #19, !dbg !4031
  call void @llvm.dbg.value(metadata i8* %0, metadata !4021, metadata !DIExpression()) #19, !dbg !4031
  call void @llvm.dbg.value(metadata i32 0, metadata !3999, metadata !DIExpression()) #19, !dbg !4033
  call void @llvm.dbg.value(metadata i8* %0, metadata !4000, metadata !DIExpression()) #19, !dbg !4033
  call void @llvm.dbg.value(metadata i64 -1, metadata !4001, metadata !DIExpression()) #19, !dbg !4033
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !4035
  ret i8* %2, !dbg !4036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4037 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4045, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i8* %1, metadata !4046, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i8* %2, metadata !4047, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i8* %3, metadata !4048, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i8** %4, metadata !4049, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 %5, metadata !4050, metadata !DIExpression()), !dbg !4051
  %7 = icmp eq i8* %1, null, !dbg !4052
  br i1 %7, label %10, label %8, !dbg !4054

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.138, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #19, !dbg !4055
  br label %12, !dbg !4055

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.139, i64 0, i64 0), i8* %2, i8* %3) #19, !dbg !4056
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.140, i64 0, i64 0), i32 5) #19, !dbg !4057
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #19, !dbg !4057
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.141, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4058
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.142, i64 0, i64 0), i32 5) #19, !dbg !4059
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.143, i64 0, i64 0)) #19, !dbg !4059
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.141, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4060
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
  ], !dbg !4061

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.144, i64 0, i64 0), i32 5) #19, !dbg !4062
  %21 = load i8*, i8** %4, align 8, !dbg !4062, !tbaa !1316
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #19, !dbg !4062
  br label %147, !dbg !4064

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.145, i64 0, i64 0), i32 5) #19, !dbg !4065
  %25 = load i8*, i8** %4, align 8, !dbg !4065, !tbaa !1316
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4065
  %27 = load i8*, i8** %26, align 8, !dbg !4065, !tbaa !1316
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #19, !dbg !4065
  br label %147, !dbg !4066

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.146, i64 0, i64 0), i32 5) #19, !dbg !4067
  %31 = load i8*, i8** %4, align 8, !dbg !4067, !tbaa !1316
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4067
  %33 = load i8*, i8** %32, align 8, !dbg !4067, !tbaa !1316
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4067
  %35 = load i8*, i8** %34, align 8, !dbg !4067, !tbaa !1316
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #19, !dbg !4067
  br label %147, !dbg !4068

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.147, i64 0, i64 0), i32 5) #19, !dbg !4069
  %39 = load i8*, i8** %4, align 8, !dbg !4069, !tbaa !1316
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4069
  %41 = load i8*, i8** %40, align 8, !dbg !4069, !tbaa !1316
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4069
  %43 = load i8*, i8** %42, align 8, !dbg !4069, !tbaa !1316
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4069
  %45 = load i8*, i8** %44, align 8, !dbg !4069, !tbaa !1316
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #19, !dbg !4069
  br label %147, !dbg !4070

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.148, i64 0, i64 0), i32 5) #19, !dbg !4071
  %49 = load i8*, i8** %4, align 8, !dbg !4071, !tbaa !1316
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4071
  %51 = load i8*, i8** %50, align 8, !dbg !4071, !tbaa !1316
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4071
  %53 = load i8*, i8** %52, align 8, !dbg !4071, !tbaa !1316
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4071
  %55 = load i8*, i8** %54, align 8, !dbg !4071, !tbaa !1316
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4071
  %57 = load i8*, i8** %56, align 8, !dbg !4071, !tbaa !1316
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #19, !dbg !4071
  br label %147, !dbg !4072

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.149, i64 0, i64 0), i32 5) #19, !dbg !4073
  %61 = load i8*, i8** %4, align 8, !dbg !4073, !tbaa !1316
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4073
  %63 = load i8*, i8** %62, align 8, !dbg !4073, !tbaa !1316
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4073
  %65 = load i8*, i8** %64, align 8, !dbg !4073, !tbaa !1316
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4073
  %67 = load i8*, i8** %66, align 8, !dbg !4073, !tbaa !1316
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4073
  %69 = load i8*, i8** %68, align 8, !dbg !4073, !tbaa !1316
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4073
  %71 = load i8*, i8** %70, align 8, !dbg !4073, !tbaa !1316
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #19, !dbg !4073
  br label %147, !dbg !4074

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.150, i64 0, i64 0), i32 5) #19, !dbg !4075
  %75 = load i8*, i8** %4, align 8, !dbg !4075, !tbaa !1316
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4075
  %77 = load i8*, i8** %76, align 8, !dbg !4075, !tbaa !1316
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4075
  %79 = load i8*, i8** %78, align 8, !dbg !4075, !tbaa !1316
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4075
  %81 = load i8*, i8** %80, align 8, !dbg !4075, !tbaa !1316
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4075
  %83 = load i8*, i8** %82, align 8, !dbg !4075, !tbaa !1316
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4075
  %85 = load i8*, i8** %84, align 8, !dbg !4075, !tbaa !1316
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4075
  %87 = load i8*, i8** %86, align 8, !dbg !4075, !tbaa !1316
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #19, !dbg !4075
  br label %147, !dbg !4076

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.151, i64 0, i64 0), i32 5) #19, !dbg !4077
  %91 = load i8*, i8** %4, align 8, !dbg !4077, !tbaa !1316
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4077
  %93 = load i8*, i8** %92, align 8, !dbg !4077, !tbaa !1316
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4077
  %95 = load i8*, i8** %94, align 8, !dbg !4077, !tbaa !1316
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4077
  %97 = load i8*, i8** %96, align 8, !dbg !4077, !tbaa !1316
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4077
  %99 = load i8*, i8** %98, align 8, !dbg !4077, !tbaa !1316
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4077
  %101 = load i8*, i8** %100, align 8, !dbg !4077, !tbaa !1316
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4077
  %103 = load i8*, i8** %102, align 8, !dbg !4077, !tbaa !1316
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4077
  %105 = load i8*, i8** %104, align 8, !dbg !4077, !tbaa !1316
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #19, !dbg !4077
  br label %147, !dbg !4078

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.152, i64 0, i64 0), i32 5) #19, !dbg !4079
  %109 = load i8*, i8** %4, align 8, !dbg !4079, !tbaa !1316
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4079
  %111 = load i8*, i8** %110, align 8, !dbg !4079, !tbaa !1316
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4079
  %113 = load i8*, i8** %112, align 8, !dbg !4079, !tbaa !1316
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4079
  %115 = load i8*, i8** %114, align 8, !dbg !4079, !tbaa !1316
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4079
  %117 = load i8*, i8** %116, align 8, !dbg !4079, !tbaa !1316
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4079
  %119 = load i8*, i8** %118, align 8, !dbg !4079, !tbaa !1316
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4079
  %121 = load i8*, i8** %120, align 8, !dbg !4079, !tbaa !1316
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4079
  %123 = load i8*, i8** %122, align 8, !dbg !4079, !tbaa !1316
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4079
  %125 = load i8*, i8** %124, align 8, !dbg !4079, !tbaa !1316
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #19, !dbg !4079
  br label %147, !dbg !4080

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.153, i64 0, i64 0), i32 5) #19, !dbg !4081
  %129 = load i8*, i8** %4, align 8, !dbg !4081, !tbaa !1316
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4081
  %131 = load i8*, i8** %130, align 8, !dbg !4081, !tbaa !1316
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4081
  %133 = load i8*, i8** %132, align 8, !dbg !4081, !tbaa !1316
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4081
  %135 = load i8*, i8** %134, align 8, !dbg !4081, !tbaa !1316
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4081
  %137 = load i8*, i8** %136, align 8, !dbg !4081, !tbaa !1316
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4081
  %139 = load i8*, i8** %138, align 8, !dbg !4081, !tbaa !1316
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4081
  %141 = load i8*, i8** %140, align 8, !dbg !4081, !tbaa !1316
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4081
  %143 = load i8*, i8** %142, align 8, !dbg !4081, !tbaa !1316
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4081
  %145 = load i8*, i8** %144, align 8, !dbg !4081, !tbaa !1316
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #19, !dbg !4081
  br label %147, !dbg !4082

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4083
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4084 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4088, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i8* %1, metadata !4089, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i8* %2, metadata !4090, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i8* %3, metadata !4091, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i8** %4, metadata !4092, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 0, metadata !4093, metadata !DIExpression()), !dbg !4094
  br label %6, !dbg !4095

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4097
  call void @llvm.dbg.value(metadata i64 %7, metadata !4093, metadata !DIExpression()), !dbg !4094
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4098
  %9 = load i8*, i8** %8, align 8, !dbg !4098, !tbaa !1316
  %10 = icmp eq i8* %9, null, !dbg !4100
  %11 = add i64 %7, 1, !dbg !4101
  call void @llvm.dbg.value(metadata i64 %11, metadata !4093, metadata !DIExpression()), !dbg !4094
  br i1 %10, label %12, label %6, !dbg !4100, !llvm.loop !4102

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4093, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 %7, metadata !4093, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 %7, metadata !4093, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 %7, metadata !4093, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 %7, metadata !4093, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 %7, metadata !4093, metadata !DIExpression()), !dbg !4094
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4104
  ret void, !dbg !4105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4106 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4117, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i8* %1, metadata !4118, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i8* %2, metadata !4119, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i8* %3, metadata !4120, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4121, metadata !DIExpression()), !dbg !4125
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4126
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #19, !dbg !4126
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4123, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i64 0, metadata !4122, metadata !DIExpression()), !dbg !4125
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !4128
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !4128
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !4128
  %11 = load i32, i32* %8, align 8, !dbg !4131
  %12 = icmp ult i32 %11, 41, !dbg !4131
  br i1 %12, label %13, label %18, !dbg !4131

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4131
  %15 = zext i32 %11 to i64, !dbg !4131
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4131
  %17 = add nuw nsw i32 %11, 8, !dbg !4131
  store i32 %17, i32* %8, align 8, !dbg !4131
  br label %21, !dbg !4131

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4131
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4131
  store i8* %20, i8** %9, align 8, !dbg !4131
  br label %21, !dbg !4131

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4131
  %25 = load i8*, i8** %24, align 8, !dbg !4131
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4132
  store i8* %25, i8** %26, align 16, !dbg !4133, !tbaa !1316
  %27 = icmp eq i8* %25, null, !dbg !4134
  br i1 %27, label %30, label %28, !dbg !4135

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4122, metadata !DIExpression()), !dbg !4125
  %29 = icmp ult i32 %22, 41, !dbg !4131
  br i1 %29, label %35, label %32, !dbg !4131

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4136
  call void @llvm.dbg.value(metadata i64 %31, metadata !4122, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 %31, metadata !4122, metadata !DIExpression()), !dbg !4125
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4137
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #19, !dbg !4138
  ret void, !dbg !4138

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4131
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4131
  store i8* %34, i8** %9, align 8, !dbg !4131
  br label %40, !dbg !4131

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4131
  %37 = zext i32 %22 to i64, !dbg !4131
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4131
  %39 = add nuw nsw i32 %22, 8, !dbg !4131
  store i32 %39, i32* %8, align 8, !dbg !4131
  br label %40, !dbg !4131

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4131
  %44 = load i8*, i8** %43, align 8, !dbg !4131
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4132
  store i8* %44, i8** %45, align 8, !dbg !4133, !tbaa !1316
  %46 = icmp eq i8* %44, null, !dbg !4134
  br i1 %46, label %30, label %47, !dbg !4135

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4122, metadata !DIExpression()), !dbg !4125
  %48 = icmp ult i32 %41, 41, !dbg !4131
  br i1 %48, label %52, label %49, !dbg !4131

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4131
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4131
  store i8* %51, i8** %9, align 8, !dbg !4131
  br label %57, !dbg !4131

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4131
  %54 = zext i32 %41 to i64, !dbg !4131
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4131
  %56 = add nuw nsw i32 %41, 8, !dbg !4131
  store i32 %56, i32* %8, align 8, !dbg !4131
  br label %57, !dbg !4131

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4131
  %61 = load i8*, i8** %60, align 8, !dbg !4131
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4132
  store i8* %61, i8** %62, align 16, !dbg !4133, !tbaa !1316
  %63 = icmp eq i8* %61, null, !dbg !4134
  br i1 %63, label %30, label %64, !dbg !4135

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4122, metadata !DIExpression()), !dbg !4125
  %65 = icmp ult i32 %58, 41, !dbg !4131
  br i1 %65, label %69, label %66, !dbg !4131

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4131
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4131
  store i8* %68, i8** %9, align 8, !dbg !4131
  br label %74, !dbg !4131

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4131
  %71 = zext i32 %58 to i64, !dbg !4131
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4131
  %73 = add nuw nsw i32 %58, 8, !dbg !4131
  store i32 %73, i32* %8, align 8, !dbg !4131
  br label %74, !dbg !4131

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4131
  %78 = load i8*, i8** %77, align 8, !dbg !4131
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4132
  store i8* %78, i8** %79, align 8, !dbg !4133, !tbaa !1316
  %80 = icmp eq i8* %78, null, !dbg !4134
  br i1 %80, label %30, label %81, !dbg !4135

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4122, metadata !DIExpression()), !dbg !4125
  %82 = icmp ult i32 %75, 41, !dbg !4131
  br i1 %82, label %86, label %83, !dbg !4131

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4131
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4131
  store i8* %85, i8** %9, align 8, !dbg !4131
  br label %91, !dbg !4131

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4131
  %88 = zext i32 %75 to i64, !dbg !4131
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4131
  %90 = add nuw nsw i32 %75, 8, !dbg !4131
  store i32 %90, i32* %8, align 8, !dbg !4131
  br label %91, !dbg !4131

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4131
  %95 = load i8*, i8** %94, align 8, !dbg !4131
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4132
  store i8* %95, i8** %96, align 16, !dbg !4133, !tbaa !1316
  %97 = icmp eq i8* %95, null, !dbg !4134
  br i1 %97, label %30, label %98, !dbg !4135

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4122, metadata !DIExpression()), !dbg !4125
  %99 = icmp ult i32 %92, 41, !dbg !4131
  br i1 %99, label %103, label %100, !dbg !4131

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4131
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4131
  store i8* %102, i8** %9, align 8, !dbg !4131
  br label %108, !dbg !4131

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4131
  %105 = zext i32 %92 to i64, !dbg !4131
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4131
  %107 = add nuw nsw i32 %92, 8, !dbg !4131
  store i32 %107, i32* %8, align 8, !dbg !4131
  br label %108, !dbg !4131

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4131
  %111 = load i8*, i8** %110, align 8, !dbg !4131
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4132
  store i8* %111, i8** %112, align 8, !dbg !4133, !tbaa !1316
  %113 = icmp eq i8* %111, null, !dbg !4134
  br i1 %113, label %30, label %114, !dbg !4135

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4122, metadata !DIExpression()), !dbg !4125
  %115 = load i8*, i8** %9, align 8, !dbg !4131
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4131
  store i8* %116, i8** %9, align 8, !dbg !4131
  %117 = bitcast i8* %115 to i8**, !dbg !4131
  %118 = load i8*, i8** %117, align 8, !dbg !4131
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4132
  store i8* %118, i8** %119, align 16, !dbg !4133, !tbaa !1316
  %120 = icmp eq i8* %118, null, !dbg !4134
  br i1 %120, label %30, label %121, !dbg !4135

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4122, metadata !DIExpression()), !dbg !4125
  %122 = load i8*, i8** %9, align 8, !dbg !4131
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4131
  store i8* %123, i8** %9, align 8, !dbg !4131
  %124 = bitcast i8* %122 to i8**, !dbg !4131
  %125 = load i8*, i8** %124, align 8, !dbg !4131
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4132
  store i8* %125, i8** %126, align 8, !dbg !4133, !tbaa !1316
  %127 = icmp eq i8* %125, null, !dbg !4134
  br i1 %127, label %30, label %128, !dbg !4135

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4122, metadata !DIExpression()), !dbg !4125
  %129 = load i8*, i8** %9, align 8, !dbg !4131
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4131
  store i8* %130, i8** %9, align 8, !dbg !4131
  %131 = bitcast i8* %129 to i8**, !dbg !4131
  %132 = load i8*, i8** %131, align 8, !dbg !4131
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4132
  store i8* %132, i8** %133, align 16, !dbg !4133, !tbaa !1316
  %134 = icmp eq i8* %132, null, !dbg !4134
  br i1 %134, label %30, label %135, !dbg !4135

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4122, metadata !DIExpression()), !dbg !4125
  %136 = load i8*, i8** %9, align 8, !dbg !4131
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4131
  store i8* %137, i8** %9, align 8, !dbg !4131
  %138 = bitcast i8* %136 to i8**, !dbg !4131
  %139 = load i8*, i8** %138, align 8, !dbg !4131
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4132
  store i8* %139, i8** %140, align 8, !dbg !4133, !tbaa !1316
  %141 = icmp eq i8* %139, null, !dbg !4134
  %142 = select i1 %141, i64 9, i64 10, !dbg !4135
  br label %30, !dbg !4135
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4139 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4143, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i8* %1, metadata !4144, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i8* %2, metadata !4145, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i8* %3, metadata !4146, metadata !DIExpression()), !dbg !4153
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4154
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #19, !dbg !4154
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4147, metadata !DIExpression()), !dbg !4155
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4156
  call void @llvm.va_start(i8* nonnull %6), !dbg !4156
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4157
  call void @llvm.va_end(i8* nonnull %6), !dbg !4158
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #19, !dbg !4159
  ret void, !dbg !4159
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #19

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4160 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4161, !tbaa !1316
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.141, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4161
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.156, i64 0, i64 0), i32 5) #19, !dbg !4162
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.157, i64 0, i64 0)) #19, !dbg !4162
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.158, i64 0, i64 0), i32 5) #19, !dbg !4163
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.159, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.160, i64 0, i64 0)) #19, !dbg !4163
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.161, i64 0, i64 0), i32 5) #19, !dbg !4164
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.162, i64 0, i64 0)) #19, !dbg !4164
  ret void, !dbg !4165
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !4166 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4170, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i64 %1, metadata !4171, metadata !DIExpression()), !dbg !4172
  %3 = udiv i64 9223372036854775807, %1, !dbg !4173
  %4 = icmp ult i64 %3, %0, !dbg !4173
  br i1 %4, label %5, label %6, !dbg !4175

5:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !4176
  unreachable, !dbg !4176

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4177
  call void @llvm.dbg.value(metadata i64 %7, metadata !4178, metadata !DIExpression()) #19, !dbg !4184
  %8 = tail call noalias i8* @malloc(i64 %7) #19, !dbg !4186
  call void @llvm.dbg.value(metadata i8* %8, metadata !4183, metadata !DIExpression()) #19, !dbg !4184
  %9 = icmp eq i8* %8, null, !dbg !4187
  %10 = icmp ne i64 %7, 0, !dbg !4189
  %11 = and i1 %10, %9, !dbg !4190
  br i1 %11, label %12, label %13, !dbg !4190

12:                                               ; preds = %6
  tail call void @xalloc_die() #24, !dbg !4191
  unreachable, !dbg !4191

13:                                               ; preds = %6
  ret i8* %8, !dbg !4192
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4179 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4178, metadata !DIExpression()), !dbg !4193
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !4194
  call void @llvm.dbg.value(metadata i8* %2, metadata !4183, metadata !DIExpression()), !dbg !4193
  %3 = icmp eq i8* %2, null, !dbg !4195
  %4 = icmp ne i64 %0, 0, !dbg !4196
  %5 = and i1 %4, %3, !dbg !4197
  br i1 %5, label %6, label %7, !dbg !4197

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4198
  unreachable, !dbg !4198

7:                                                ; preds = %1
  ret i8* %2, !dbg !4199
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #20 !dbg !4200 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4204, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 %1, metadata !4205, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 %2, metadata !4206, metadata !DIExpression()), !dbg !4207
  %4 = udiv i64 9223372036854775807, %2, !dbg !4208
  %5 = icmp ult i64 %4, %1, !dbg !4208
  br i1 %5, label %6, label %7, !dbg !4210

6:                                                ; preds = %3
  tail call void @xalloc_die() #24, !dbg !4211
  unreachable, !dbg !4211

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4212
  call void @llvm.dbg.value(metadata i8* %0, metadata !4213, metadata !DIExpression()) #19, !dbg !4219
  call void @llvm.dbg.value(metadata i64 %8, metadata !4218, metadata !DIExpression()) #19, !dbg !4219
  %9 = icmp eq i64 %8, 0, !dbg !4221
  %10 = icmp ne i8* %0, null, !dbg !4223
  %11 = and i1 %10, %9, !dbg !4224
  br i1 %11, label %12, label %13, !dbg !4224

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #19, !dbg !4225
  br label %19, !dbg !4227

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #19, !dbg !4228
  call void @llvm.dbg.value(metadata i8* %14, metadata !4213, metadata !DIExpression()) #19, !dbg !4219
  %15 = icmp eq i8* %14, null, !dbg !4229
  %16 = icmp ne i64 %8, 0, !dbg !4231
  %17 = and i1 %16, %15, !dbg !4232
  br i1 %17, label %18, label %19, !dbg !4232

18:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !4233
  unreachable, !dbg !4233

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4219
  ret i8* %20, !dbg !4234
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4214 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4213, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i64 %1, metadata !4218, metadata !DIExpression()), !dbg !4235
  %3 = icmp eq i64 %1, 0, !dbg !4236
  %4 = icmp ne i8* %0, null, !dbg !4237
  %5 = and i1 %4, %3, !dbg !4238
  br i1 %5, label %6, label %7, !dbg !4238

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #19, !dbg !4239
  br label %13, !dbg !4240

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #19, !dbg !4241
  call void @llvm.dbg.value(metadata i8* %8, metadata !4213, metadata !DIExpression()), !dbg !4235
  %9 = icmp eq i8* %8, null, !dbg !4242
  %10 = icmp ne i64 %1, 0, !dbg !4243
  %11 = and i1 %10, %9, !dbg !4244
  br i1 %11, label %12, label %13, !dbg !4244

12:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !4245
  unreachable, !dbg !4245

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4235
  ret i8* %14, !dbg !4246
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #20 !dbg !678 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !680, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64* %1, metadata !681, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %2, metadata !682, metadata !DIExpression()), !dbg !4247
  %4 = load i64, i64* %1, align 8, !dbg !4248, !tbaa !1460
  call void @llvm.dbg.value(metadata i64 %4, metadata !683, metadata !DIExpression()), !dbg !4247
  %5 = icmp eq i8* %0, null, !dbg !4249
  br i1 %5, label %6, label %20, !dbg !4251

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4252
  br i1 %7, label %8, label %13, !dbg !4255

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4256
  call void @llvm.dbg.value(metadata i64 %9, metadata !683, metadata !DIExpression()), !dbg !4247
  %10 = icmp ugt i64 %2, 128, !dbg !4258
  %11 = zext i1 %10 to i64, !dbg !4258
  %12 = add nuw nsw i64 %9, %11, !dbg !4259
  call void @llvm.dbg.value(metadata i64 %12, metadata !683, metadata !DIExpression()), !dbg !4247
  br label %13, !dbg !4260

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4247
  call void @llvm.dbg.value(metadata i64 %14, metadata !683, metadata !DIExpression()), !dbg !4247
  %15 = udiv i64 9223372036854775807, %2, !dbg !4261
  %16 = icmp ult i64 %15, %14, !dbg !4261
  br i1 %16, label %19, label %17, !dbg !4263

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !683, metadata !DIExpression()), !dbg !4247
  store i64 %14, i64* %1, align 8, !dbg !4264, !tbaa !1460
  %18 = mul i64 %14, %2, !dbg !4265
  call void @llvm.dbg.value(metadata i8* %0, metadata !4213, metadata !DIExpression()) #19, !dbg !4266
  call void @llvm.dbg.value(metadata i64 %28, metadata !4218, metadata !DIExpression()) #19, !dbg !4266
  br label %31, !dbg !4268

19:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !4269
  unreachable, !dbg !4269

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4270
  %22 = icmp ugt i64 %21, %4, !dbg !4273
  br i1 %22, label %24, label %23, !dbg !4274

23:                                               ; preds = %20
  tail call void @xalloc_die() #24, !dbg !4275
  unreachable, !dbg !4275

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4276
  %26 = add nuw i64 %4, 1, !dbg !4277
  %27 = add i64 %26, %25, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %27, metadata !683, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %27, metadata !683, metadata !DIExpression()), !dbg !4247
  store i64 %27, i64* %1, align 8, !dbg !4264, !tbaa !1460
  %28 = mul i64 %27, %2, !dbg !4265
  call void @llvm.dbg.value(metadata i8* %0, metadata !4213, metadata !DIExpression()) #19, !dbg !4266
  call void @llvm.dbg.value(metadata i64 %28, metadata !4218, metadata !DIExpression()) #19, !dbg !4266
  %29 = icmp eq i64 %28, 0, !dbg !4279
  br i1 %29, label %30, label %31, !dbg !4268

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #19, !dbg !4280
  br label %38, !dbg !4281

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #19, !dbg !4282
  call void @llvm.dbg.value(metadata i8* %33, metadata !4213, metadata !DIExpression()) #19, !dbg !4266
  %34 = icmp eq i8* %33, null, !dbg !4283
  %35 = icmp ne i64 %32, 0, !dbg !4284
  %36 = and i1 %35, %34, !dbg !4285
  br i1 %36, label %37, label %38, !dbg !4285

37:                                               ; preds = %31
  tail call void @xalloc_die() #24, !dbg !4286
  unreachable, !dbg !4286

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4266
  ret i8* %39, !dbg !4287
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #20 !dbg !4288 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4290, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %0, metadata !4178, metadata !DIExpression()) #19, !dbg !4292
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !4294
  call void @llvm.dbg.value(metadata i8* %2, metadata !4183, metadata !DIExpression()) #19, !dbg !4292
  %3 = icmp eq i8* %2, null, !dbg !4295
  %4 = icmp ne i64 %0, 0, !dbg !4296
  %5 = and i1 %4, %3, !dbg !4297
  br i1 %5, label %6, label %7, !dbg !4297

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4298
  unreachable, !dbg !4298

7:                                                ; preds = %1
  ret i8* %2, !dbg !4299
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4300 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4304, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i64* %1, metadata !4305, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i8* %0, metadata !680, metadata !DIExpression()) #19, !dbg !4307
  call void @llvm.dbg.value(metadata i64* %1, metadata !681, metadata !DIExpression()) #19, !dbg !4307
  call void @llvm.dbg.value(metadata i64 1, metadata !682, metadata !DIExpression()) #19, !dbg !4307
  %3 = load i64, i64* %1, align 8, !dbg !4309, !tbaa !1460
  call void @llvm.dbg.value(metadata i64 %3, metadata !683, metadata !DIExpression()) #19, !dbg !4307
  %4 = icmp eq i8* %0, null, !dbg !4310
  br i1 %4, label %5, label %12, !dbg !4311

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4312
  br i1 %6, label %9, label %7, !dbg !4313

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !683, metadata !DIExpression()) #19, !dbg !4307
  %8 = icmp slt i64 %3, 0, !dbg !4314
  br i1 %8, label %11, label %9, !dbg !4315

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !683, metadata !DIExpression()) #19, !dbg !4307
  store i64 %10, i64* %1, align 8, !dbg !4316, !tbaa !1460
  call void @llvm.dbg.value(metadata i8* %0, metadata !4213, metadata !DIExpression()) #19, !dbg !4317
  call void @llvm.dbg.value(metadata i64 %18, metadata !4218, metadata !DIExpression()) #19, !dbg !4317
  br label %21, !dbg !4319

11:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !4320
  unreachable, !dbg !4320

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4321
  br i1 %13, label %15, label %14, !dbg !4322

14:                                               ; preds = %12
  tail call void @xalloc_die() #24, !dbg !4323
  unreachable, !dbg !4323

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4324
  %17 = add nuw nsw i64 %3, 1, !dbg !4325
  %18 = add nuw nsw i64 %17, %16, !dbg !4326
  call void @llvm.dbg.value(metadata i64 %18, metadata !683, metadata !DIExpression()) #19, !dbg !4307
  call void @llvm.dbg.value(metadata i64 %18, metadata !683, metadata !DIExpression()) #19, !dbg !4307
  store i64 %18, i64* %1, align 8, !dbg !4316, !tbaa !1460
  call void @llvm.dbg.value(metadata i8* %0, metadata !4213, metadata !DIExpression()) #19, !dbg !4317
  call void @llvm.dbg.value(metadata i64 %18, metadata !4218, metadata !DIExpression()) #19, !dbg !4317
  %19 = icmp eq i64 %18, 0, !dbg !4327
  br i1 %19, label %20, label %21, !dbg !4319

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #19, !dbg !4328
  br label %28, !dbg !4329

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #19, !dbg !4330
  call void @llvm.dbg.value(metadata i8* %23, metadata !4213, metadata !DIExpression()) #19, !dbg !4317
  %24 = icmp eq i8* %23, null, !dbg !4331
  %25 = icmp ne i64 %22, 0, !dbg !4332
  %26 = and i1 %25, %24, !dbg !4333
  br i1 %26, label %27, label %28, !dbg !4333

27:                                               ; preds = %21
  tail call void @xalloc_die() #24, !dbg !4334
  unreachable, !dbg !4334

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4317
  ret i8* %29, !dbg !4335
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4336 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4338, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i64 %0, metadata !4340, metadata !DIExpression()) #19, !dbg !4345
  call void @llvm.dbg.value(metadata i64 1, metadata !4343, metadata !DIExpression()) #19, !dbg !4345
  %2 = icmp slt i64 %0, 0, !dbg !4347
  br i1 %2, label %6, label %3, !dbg !4349

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #19, !dbg !4350
  call void @llvm.dbg.value(metadata i8* %4, metadata !4344, metadata !DIExpression()) #19, !dbg !4345
  %5 = icmp eq i8* %4, null, !dbg !4351
  br i1 %5, label %6, label %7, !dbg !4352

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #24, !dbg !4353
  unreachable, !dbg !4353

7:                                                ; preds = %3
  ret i8* %4, !dbg !4354
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4341 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4340, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %1, metadata !4343, metadata !DIExpression()), !dbg !4355
  %3 = udiv i64 9223372036854775807, %1, !dbg !4356
  %4 = icmp ult i64 %3, %0, !dbg !4356
  br i1 %4, label %8, label %5, !dbg !4357

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #19, !dbg !4358
  call void @llvm.dbg.value(metadata i8* %6, metadata !4344, metadata !DIExpression()), !dbg !4355
  %7 = icmp eq i8* %6, null, !dbg !4359
  br i1 %7, label %8, label %9, !dbg !4360

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #24, !dbg !4361
  unreachable, !dbg !4361

9:                                                ; preds = %5
  ret i8* %6, !dbg !4362
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4363 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4367, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %1, metadata !4368, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %1, metadata !4178, metadata !DIExpression()) #19, !dbg !4370
  %3 = tail call noalias i8* @malloc(i64 %1) #19, !dbg !4372
  call void @llvm.dbg.value(metadata i8* %3, metadata !4183, metadata !DIExpression()) #19, !dbg !4370
  %4 = icmp eq i8* %3, null, !dbg !4373
  %5 = icmp ne i64 %1, 0, !dbg !4374
  %6 = and i1 %5, %4, !dbg !4375
  br i1 %6, label %7, label %8, !dbg !4375

7:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !4376
  unreachable, !dbg !4376

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4377, metadata !DIExpression()) #19, !dbg !4382
  call void @llvm.dbg.value(metadata i8* %0, metadata !4380, metadata !DIExpression()) #19, !dbg !4382
  call void @llvm.dbg.value(metadata i64 %1, metadata !4381, metadata !DIExpression()) #19, !dbg !4382
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #19, !dbg !4384
  ret i8* %3, !dbg !4385
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4386 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4388, metadata !DIExpression()), !dbg !4389
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !4390
  %3 = add i64 %2, 1, !dbg !4391
  call void @llvm.dbg.value(metadata i8* %0, metadata !4367, metadata !DIExpression()) #19, !dbg !4392
  call void @llvm.dbg.value(metadata i64 %3, metadata !4368, metadata !DIExpression()) #19, !dbg !4392
  call void @llvm.dbg.value(metadata i64 %3, metadata !4178, metadata !DIExpression()) #19, !dbg !4394
  %4 = tail call noalias i8* @malloc(i64 %3) #19, !dbg !4396
  call void @llvm.dbg.value(metadata i8* %4, metadata !4183, metadata !DIExpression()) #19, !dbg !4394
  %5 = icmp eq i8* %4, null, !dbg !4397
  %6 = icmp ne i64 %3, 0, !dbg !4398
  %7 = and i1 %6, %5, !dbg !4399
  br i1 %7, label %8, label %9, !dbg !4399

8:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4400
  unreachable, !dbg !4400

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4377, metadata !DIExpression()) #19, !dbg !4401
  call void @llvm.dbg.value(metadata i8* %0, metadata !4380, metadata !DIExpression()) #19, !dbg !4401
  call void @llvm.dbg.value(metadata i64 %3, metadata !4381, metadata !DIExpression()) #19, !dbg !4401
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #19, !dbg !4403
  ret i8* %4, !dbg !4404
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4405 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4406, !tbaa !1432
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.175, i64 0, i64 0), i32 5) #19, !dbg !4407
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.176, i64 0, i64 0), i8* %2) #19, !dbg !4408
  tail call void @abort() #24, !dbg !4409
  unreachable, !dbg !4409
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !4410 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4412, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i64 %1, metadata !4413, metadata !DIExpression()), !dbg !4418
  %3 = icmp eq i64 %0, 0, !dbg !4419
  %4 = icmp eq i64 %1, 0, !dbg !4420
  %5 = or i1 %3, %4, !dbg !4421
  br i1 %5, label %11, label %6, !dbg !4421

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4415, metadata !DIExpression()), !dbg !4422
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4423
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4423
  br i1 %8, label %9, label %11, !dbg !4425

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !4426
  store i32 12, i32* %10, align 4, !dbg !4428, !tbaa !1432
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4412, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i64 %12, metadata !4413, metadata !DIExpression()), !dbg !4418
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #19, !dbg !4429
  call void @llvm.dbg.value(metadata i8* %14, metadata !4414, metadata !DIExpression()), !dbg !4418
  br label %15, !dbg !4430

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4418
  ret i8* %16, !dbg !4431
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4432 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4440, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i8* %1, metadata !4441, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i64 %2, metadata !4442, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4443, metadata !DIExpression()), !dbg !4449
  %6 = bitcast i32* %5 to i8*, !dbg !4450
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #19, !dbg !4450
  %7 = icmp eq i32* %0, null, !dbg !4451
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4453
  call void @llvm.dbg.value(metadata i32* %8, metadata !4440, metadata !DIExpression()), !dbg !4449
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #19, !dbg !4454
  call void @llvm.dbg.value(metadata i64 %9, metadata !4444, metadata !DIExpression()), !dbg !4449
  %10 = icmp ugt i64 %9, -3, !dbg !4455
  %11 = icmp ne i64 %2, 0, !dbg !4456
  %12 = and i1 %11, %10, !dbg !4457
  br i1 %12, label %13, label %18, !dbg !4457

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #19, !dbg !4458
  br i1 %14, label %18, label %15, !dbg !4459

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4460, !tbaa !1532
  call void @llvm.dbg.value(metadata i8 %16, metadata !4446, metadata !DIExpression()), !dbg !4461
  %17 = zext i8 %16 to i32, !dbg !4462
  store i32 %17, i32* %8, align 4, !dbg !4463, !tbaa !1432
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4449
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #19, !dbg !4464
  ret i64 %19, !dbg !4464
}

; Function Attrs: nounwind
declare !dbg !699 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @str2sig(i8* %0, i32* nocapture %1) local_unnamed_addr #8 !dbg !4465 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4467, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i32* %1, metadata !4468, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i8* %0, metadata !4470, metadata !DIExpression()) #19, !dbg !4489
  %5 = load i8, i8* %0, align 1, !dbg !4491, !tbaa !1532
  %6 = sext i8 %5 to i32, !dbg !4491
  %7 = add nsw i32 %6, -48, !dbg !4491
  %8 = icmp ult i32 %7, 10, !dbg !4491
  br i1 %8, label %9, label %21, !dbg !4492

9:                                                ; preds = %2
  %10 = bitcast i8** %3 to i8*, !dbg !4493
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #19, !dbg !4493
  call void @llvm.dbg.value(metadata i8** %3, metadata !4473, metadata !DIExpression(DW_OP_deref)) #19, !dbg !4494
  %11 = call i64 @strtol(i8* nonnull %0, i8** nonnull %3, i32 10) #19, !dbg !4495
  call void @llvm.dbg.value(metadata i64 %11, metadata !4476, metadata !DIExpression()) #19, !dbg !4494
  %12 = load i8*, i8** %3, align 8, !dbg !4496, !tbaa !1316
  call void @llvm.dbg.value(metadata i8* %12, metadata !4473, metadata !DIExpression()) #19, !dbg !4494
  %13 = load i8, i8* %12, align 1, !dbg !4498, !tbaa !1532
  %14 = icmp ne i8 %13, 0, !dbg !4498
  %15 = icmp sgt i64 %11, 64, !dbg !4499
  %16 = trunc i64 %11 to i32, !dbg !4500
  %17 = or i1 %15, %14, !dbg !4501
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #19, !dbg !4502
  br i1 %17, label %73, label %74

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %22, 1, !dbg !4503
  call void @llvm.dbg.value(metadata i64 %19, metadata !4477, metadata !DIExpression()) #19, !dbg !4506
  call void @llvm.dbg.value(metadata i64 %19, metadata !4477, metadata !DIExpression()) #19, !dbg !4506
  %20 = icmp eq i64 %19, 35, !dbg !4507
  br i1 %20, label %30, label %21, !dbg !4508, !llvm.loop !4509

21:                                               ; preds = %2, %18
  %22 = phi i64 [ %19, %18 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !4477, metadata !DIExpression()) #19, !dbg !4506
  %23 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 1, i64 0, !dbg !4511
  %24 = tail call i32 @strcmp(i8* nonnull %23, i8* nonnull %0) #23, !dbg !4513
  %25 = icmp eq i32 %24, 0, !dbg !4514
  call void @llvm.dbg.value(metadata i64 %22, metadata !4477, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !4506
  br i1 %25, label %26, label %18, !dbg !4515

26:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 %22, metadata !4477, metadata !DIExpression()) #19, !dbg !4506
  call void @llvm.dbg.value(metadata i64 %22, metadata !4477, metadata !DIExpression()) #19, !dbg !4506
  call void @llvm.dbg.value(metadata i64 %22, metadata !4477, metadata !DIExpression()) #19, !dbg !4506
  call void @llvm.dbg.value(metadata i64 %22, metadata !4477, metadata !DIExpression()) #19, !dbg !4506
  call void @llvm.dbg.value(metadata i64 %22, metadata !4477, metadata !DIExpression()) #19, !dbg !4506
  call void @llvm.dbg.value(metadata i64 %22, metadata !4477, metadata !DIExpression()) #19, !dbg !4506
  call void @llvm.dbg.value(metadata i64 %22, metadata !4477, metadata !DIExpression()) #19, !dbg !4506
  %27 = and i64 %22, 4294967295, !dbg !4516
  call void @llvm.dbg.value(metadata i64 %22, metadata !4477, metadata !DIExpression()) #19, !dbg !4506
  %28 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %27, i32 0, !dbg !4517
  %29 = load i32, i32* %28, align 4, !dbg !4517, !tbaa !4518
  br label %74

30:                                               ; preds = %18
  %31 = bitcast i8** %4 to i8*, !dbg !4520
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #19, !dbg !4520
  %32 = tail call i32 @__libc_current_sigrtmin() #19, !dbg !4521
  call void @llvm.dbg.value(metadata i32 %32, metadata !4481, metadata !DIExpression()) #19, !dbg !4522
  %33 = tail call i32 @__libc_current_sigrtmax() #19, !dbg !4523
  call void @llvm.dbg.value(metadata i32 %33, metadata !4482, metadata !DIExpression()) #19, !dbg !4522
  %34 = icmp sgt i32 %32, 0, !dbg !4524
  br i1 %34, label %35, label %50, !dbg !4525

35:                                               ; preds = %30
  %36 = tail call i32 @strncmp(i8* nonnull %0, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.183, i64 0, i64 0), i64 5) #23, !dbg !4526
  %37 = icmp eq i32 %36, 0, !dbg !4527
  br i1 %37, label %38, label %50, !dbg !4528

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !4529
  call void @llvm.dbg.value(metadata i8** %4, metadata !4479, metadata !DIExpression(DW_OP_deref)) #19, !dbg !4522
  %40 = call i64 @strtol(i8* nonnull %39, i8** nonnull %4, i32 10) #19, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %40, metadata !4483, metadata !DIExpression()) #19, !dbg !4531
  %41 = load i8*, i8** %4, align 8, !dbg !4532, !tbaa !1316
  call void @llvm.dbg.value(metadata i8* %41, metadata !4479, metadata !DIExpression()) #19, !dbg !4522
  %42 = load i8, i8* %41, align 1, !dbg !4534, !tbaa !1532
  %43 = icmp eq i8 %42, 0, !dbg !4534
  %44 = icmp sgt i64 %40, -1, !dbg !4535
  %45 = and i1 %44, %43, !dbg !4536
  br i1 %45, label %46, label %67, !dbg !4536

46:                                               ; preds = %38
  %47 = sub nsw i32 %33, %32, !dbg !4537
  %48 = sext i32 %47 to i64, !dbg !4538
  %49 = icmp sgt i64 %40, %48, !dbg !4539
  br i1 %49, label %67, label %68, !dbg !4540

50:                                               ; preds = %35, %30
  %51 = icmp sgt i32 %33, 0, !dbg !4541
  br i1 %51, label %52, label %67, !dbg !4542

52:                                               ; preds = %50
  %53 = tail call i32 @strncmp(i8* nonnull %0, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i64 0, i64 0), i64 5) #23, !dbg !4543
  %54 = icmp eq i32 %53, 0, !dbg !4544
  br i1 %54, label %55, label %67, !dbg !4545

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !4546
  call void @llvm.dbg.value(metadata i8** %4, metadata !4479, metadata !DIExpression(DW_OP_deref)) #19, !dbg !4522
  %57 = call i64 @strtol(i8* nonnull %56, i8** nonnull %4, i32 10) #19, !dbg !4547
  call void @llvm.dbg.value(metadata i64 %57, metadata !4486, metadata !DIExpression()) #19, !dbg !4548
  %58 = load i8*, i8** %4, align 8, !dbg !4549, !tbaa !1316
  call void @llvm.dbg.value(metadata i8* %58, metadata !4479, metadata !DIExpression()) #19, !dbg !4522
  %59 = load i8, i8* %58, align 1, !dbg !4551, !tbaa !1532
  %60 = icmp eq i8 %59, 0, !dbg !4551
  br i1 %60, label %61, label %67, !dbg !4552

61:                                               ; preds = %55
  %62 = sub nsw i32 %32, %33, !dbg !4553
  %63 = sext i32 %62 to i64, !dbg !4554
  %64 = icmp sge i64 %57, %63, !dbg !4555
  %65 = icmp slt i64 %57, 1, !dbg !4556
  %66 = and i1 %64, %65, !dbg !4557
  br i1 %66, label %68, label %67, !dbg !4557

67:                                               ; preds = %61, %55, %52, %50, %46, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #19, !dbg !4558
  br label %73

68:                                               ; preds = %61, %46
  %69 = phi i64 [ %40, %46 ], [ %57, %61 ]
  %70 = phi i32 [ %32, %46 ], [ %33, %61 ]
  %71 = trunc i64 %69 to i32, !dbg !4559
  %72 = add i32 %70, %71, !dbg !4559
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #19, !dbg !4558
  br label %74

73:                                               ; preds = %67, %9
  br label %74, !dbg !4560

74:                                               ; preds = %9, %26, %68, %73
  %75 = phi i32 [ -1, %73 ], [ %16, %9 ], [ %72, %68 ], [ %29, %26 ], !dbg !4489
  store i32 %75, i32* %1, align 4, !dbg !4561, !tbaa !1432
  %76 = ashr i32 %75, 31, !dbg !4562
  ret i32 %76, !dbg !4563
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @sig2str(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4564 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4566, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i8* %1, metadata !4567, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i32 0, metadata !4568, metadata !DIExpression()), !dbg !4574
  br label %8, !dbg !4575

3:                                                ; preds = %8
  %4 = add nuw nsw i64 %9, 1, !dbg !4577
  call void @llvm.dbg.value(metadata i64 %4, metadata !4568, metadata !DIExpression()), !dbg !4574
  %5 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %4, i32 0, !dbg !4579
  %6 = load i32, i32* %5, align 4, !dbg !4579, !tbaa !4518
  %7 = icmp eq i32 %6, %0, !dbg !4581
  call void @llvm.dbg.value(metadata i64 %4, metadata !4568, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4574
  br i1 %7, label %13, label %40, !dbg !4582

8:                                                ; preds = %55, %2
  %9 = phi i64 [ 0, %2 ], [ %56, %55 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !4568, metadata !DIExpression()), !dbg !4574
  %10 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %9, i32 0, !dbg !4579
  %11 = load i32, i32* %10, align 4, !dbg !4579, !tbaa !4518
  %12 = icmp eq i32 %11, %0, !dbg !4581
  call void @llvm.dbg.value(metadata i64 %9, metadata !4568, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4574
  br i1 %12, label %13, label %3, !dbg !4582

13:                                               ; preds = %50, %45, %40, %3, %8
  %14 = phi i64 [ %9, %8 ], [ %4, %3 ], [ %41, %40 ], [ %46, %45 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4568, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 %14, metadata !4568, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 %14, metadata !4568, metadata !DIExpression()), !dbg !4574
  %15 = and i64 %14, 4294967295, !dbg !4583
  call void @llvm.dbg.value(metadata i64 %14, metadata !4568, metadata !DIExpression()), !dbg !4574
  %16 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %15, i32 1, i64 0, !dbg !4584
  call void @llvm.dbg.value(metadata i8* %1, metadata !4586, metadata !DIExpression()) #19, !dbg !4590
  call void @llvm.dbg.value(metadata i8* %16, metadata !4589, metadata !DIExpression()) #19, !dbg !4590
  %17 = call i8* @strcpy(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(1) %16), !dbg !4592
  br label %38, !dbg !4593

18:                                               ; preds = %55
  %19 = tail call i32 @__libc_current_sigrtmin() #19, !dbg !4594
  call void @llvm.dbg.value(metadata i32 %19, metadata !4569, metadata !DIExpression()), !dbg !4595
  %20 = tail call i32 @__libc_current_sigrtmax() #19, !dbg !4596
  call void @llvm.dbg.value(metadata i32 %20, metadata !4571, metadata !DIExpression()), !dbg !4595
  %21 = icmp sgt i32 %19, %0, !dbg !4597
  %22 = icmp slt i32 %20, %0, !dbg !4599
  %23 = or i1 %21, %22, !dbg !4600
  br i1 %23, label %38, label %24, !dbg !4600

24:                                               ; preds = %18
  %25 = sub nsw i32 %20, %19, !dbg !4601
  %26 = sdiv i32 %25, 2, !dbg !4603
  %27 = add nsw i32 %26, %19, !dbg !4604
  %28 = icmp slt i32 %27, %0, !dbg !4605
  call void @llvm.dbg.value(metadata i8* %1, metadata !4586, metadata !DIExpression()) #19, !dbg !4606
  call void @llvm.dbg.value(metadata i8* %1, metadata !4586, metadata !DIExpression()) #19, !dbg !4609
  br i1 %28, label %30, label %29, !dbg !4612

29:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.183, i64 0, i64 0), metadata !4589, metadata !DIExpression()) #19, !dbg !4609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.183, i64 0, i64 0), i64 6, i1 false), !dbg !4613
  call void @llvm.dbg.value(metadata i32 %19, metadata !4572, metadata !DIExpression()), !dbg !4595
  br label %31, !dbg !4614

30:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i64 0, i64 0), metadata !4589, metadata !DIExpression()) #19, !dbg !4606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i64 0, i64 0), i64 6, i1 false), !dbg !4615
  call void @llvm.dbg.value(metadata i32 %20, metadata !4572, metadata !DIExpression()), !dbg !4595
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i32 [ %19, %29 ], [ %20, %30 ], !dbg !4616
  call void @llvm.dbg.value(metadata i32 %32, metadata !4572, metadata !DIExpression()), !dbg !4595
  %33 = sub nsw i32 %0, %32, !dbg !4617
  call void @llvm.dbg.value(metadata i32 %33, metadata !4573, metadata !DIExpression()), !dbg !4595
  %34 = icmp eq i32 %33, 0, !dbg !4618
  br i1 %34, label %38, label %35, !dbg !4620

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !4621
  %37 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %36, i32 1, i64 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.187, i64 0, i64 0), i32 %33) #19, !dbg !4621
  br label %38, !dbg !4621

38:                                               ; preds = %18, %31, %35, %13
  %39 = phi i32 [ 0, %13 ], [ -1, %18 ], [ 0, %31 ], [ 0, %35 ], !dbg !4574
  ret i32 %39, !dbg !4622

40:                                               ; preds = %3
  %41 = add nuw nsw i64 %9, 2, !dbg !4577
  call void @llvm.dbg.value(metadata i64 %41, metadata !4568, metadata !DIExpression()), !dbg !4574
  %42 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %41, i32 0, !dbg !4579
  %43 = load i32, i32* %42, align 4, !dbg !4579, !tbaa !4518
  %44 = icmp eq i32 %43, %0, !dbg !4581
  call void @llvm.dbg.value(metadata i64 %41, metadata !4568, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4574
  br i1 %44, label %13, label %45, !dbg !4582

45:                                               ; preds = %40
  %46 = add nuw nsw i64 %9, 3, !dbg !4577
  call void @llvm.dbg.value(metadata i64 %46, metadata !4568, metadata !DIExpression()), !dbg !4574
  %47 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %46, i32 0, !dbg !4579
  %48 = load i32, i32* %47, align 4, !dbg !4579, !tbaa !4518
  %49 = icmp eq i32 %48, %0, !dbg !4581
  call void @llvm.dbg.value(metadata i64 %46, metadata !4568, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4574
  br i1 %49, label %13, label %50, !dbg !4582

50:                                               ; preds = %45
  %51 = add nuw nsw i64 %9, 4, !dbg !4577
  call void @llvm.dbg.value(metadata i64 %51, metadata !4568, metadata !DIExpression()), !dbg !4574
  %52 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %51, i32 0, !dbg !4579
  %53 = load i32, i32* %52, align 4, !dbg !4579, !tbaa !4518
  %54 = icmp eq i32 %53, %0, !dbg !4581
  call void @llvm.dbg.value(metadata i64 %51, metadata !4568, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4574
  br i1 %54, label %13, label %55, !dbg !4582

55:                                               ; preds = %50
  %56 = add nuw nsw i64 %9, 5, !dbg !4577
  call void @llvm.dbg.value(metadata i64 %56, metadata !4568, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 %56, metadata !4568, metadata !DIExpression()), !dbg !4574
  %57 = icmp eq i64 %56, 35, !dbg !4623
  br i1 %57, label %18, label %8, !dbg !4575, !llvm.loop !4624
}

; Function Attrs: nofree nounwind
declare i8* @strcpy(i8* noalias returned, i8* noalias nocapture readonly) #11

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4626 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4632, metadata !DIExpression()), !dbg !4637
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #19, !dbg !4638
  call void @llvm.dbg.value(metadata i1 undef, metadata !4633, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4639, metadata !DIExpression()), !dbg !4643
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4645
  %4 = load i32, i32* %3, align 8, !dbg !4645, !tbaa !4646
  %5 = and i32 %4, 32, !dbg !4645
  %6 = icmp eq i32 %5, 0, !dbg !4648
  call void @llvm.dbg.value(metadata i1 %6, metadata !4635, metadata !DIExpression()), !dbg !4637
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #19, !dbg !4649
  %8 = icmp ne i32 %7, 0, !dbg !4650
  call void @llvm.dbg.value(metadata i1 %8, metadata !4636, metadata !DIExpression()), !dbg !4637
  br i1 %6, label %9, label %19, !dbg !4651

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %10, metadata !4633, metadata !DIExpression()), !dbg !4637
  %11 = xor i1 %8, true, !dbg !4654
  %12 = or i1 %10, %11, !dbg !4654
  %13 = sext i1 %8 to i32, !dbg !4654
  br i1 %12, label %22, label %14, !dbg !4654

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !4655
  %16 = load i32, i32* %15, align 4, !dbg !4655, !tbaa !1432
  %17 = icmp ne i32 %16, 9, !dbg !4656
  %18 = sext i1 %17 to i32, !dbg !4657
  br label %22, !dbg !4657

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4658

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !4660
  store i32 0, i32* %21, align 4, !dbg !4662, !tbaa !1432
  br label %22, !dbg !4660

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4637
  ret i32 %23, !dbg !4663
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4664 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4666, metadata !DIExpression()), !dbg !4671
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4672
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #19, !dbg !4672
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4667, metadata !DIExpression()), !dbg !4673
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #19, !dbg !4674
  %5 = icmp eq i32 %4, 0, !dbg !4674
  br i1 %5, label %6, label %13, !dbg !4676

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4677
  %8 = load i16, i16* %7, align 16, !dbg !4677
  %9 = icmp eq i16 %8, 67, !dbg !4677
  br i1 %9, label %13, label %10, !dbg !4678

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.192, i64 0, i64 0), i64 6), !dbg !4679
  %12 = icmp ne i32 %11, 0, !dbg !4680
  br label %13, !dbg !4678

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4671
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #19, !dbg !4681
  ret i1 %14, !dbg !4681
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4682 {
  %1 = tail call i8* @nl_langinfo(i32 14) #19, !dbg !4685
  call void @llvm.dbg.value(metadata i8* %1, metadata !4684, metadata !DIExpression()), !dbg !4686
  %2 = icmp eq i8* %1, null, !dbg !4687
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.195, i64 0, i64 0), i8* %1, !dbg !4689
  call void @llvm.dbg.value(metadata i8* %3, metadata !4684, metadata !DIExpression()), !dbg !4686
  %4 = load i8, i8* %3, align 1, !dbg !4690, !tbaa !1532
  %5 = icmp eq i8 %4, 0, !dbg !4694
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.196, i64 0, i64 0), i8* %3, !dbg !4695
  call void @llvm.dbg.value(metadata i8* %6, metadata !4684, metadata !DIExpression()), !dbg !4686
  ret i8* %6, !dbg !4696
}

; Function Attrs: nounwind
declare !dbg !1151 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4697 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4701, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata i8* %1, metadata !4702, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata i64 %2, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata i32 %0, metadata !4705, metadata !DIExpression()) #19, !dbg !4714
  call void @llvm.dbg.value(metadata i8* %1, metadata !4708, metadata !DIExpression()) #19, !dbg !4714
  call void @llvm.dbg.value(metadata i64 %2, metadata !4709, metadata !DIExpression()) #19, !dbg !4714
  call void @llvm.dbg.value(metadata i32 %0, metadata !4716, metadata !DIExpression()) #19, !dbg !4722
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !4724
  call void @llvm.dbg.value(metadata i8* %4, metadata !4721, metadata !DIExpression()) #19, !dbg !4722
  call void @llvm.dbg.value(metadata i8* %4, metadata !4710, metadata !DIExpression()) #19, !dbg !4714
  %5 = icmp eq i8* %4, null, !dbg !4725
  br i1 %5, label %6, label %9, !dbg !4726

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4727
  br i1 %7, label %19, label %8, !dbg !4730

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4731, !tbaa !1532
  br label %19, !dbg !4732

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #23, !dbg !4733
  call void @llvm.dbg.value(metadata i64 %10, metadata !4711, metadata !DIExpression()) #19, !dbg !4734
  %11 = icmp ult i64 %10, %2, !dbg !4735
  br i1 %11, label %12, label %14, !dbg !4737

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4738
  call void @llvm.dbg.value(metadata i8* %1, metadata !4740, metadata !DIExpression()) #19, !dbg !4745
  call void @llvm.dbg.value(metadata i8* %4, metadata !4743, metadata !DIExpression()) #19, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %13, metadata !4744, metadata !DIExpression()) #19, !dbg !4745
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #19, !dbg !4747
  br label %19, !dbg !4748

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4749
  br i1 %15, label %19, label %16, !dbg !4752

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4753
  call void @llvm.dbg.value(metadata i8* %1, metadata !4740, metadata !DIExpression()) #19, !dbg !4755
  call void @llvm.dbg.value(metadata i8* %4, metadata !4743, metadata !DIExpression()) #19, !dbg !4755
  call void @llvm.dbg.value(metadata i64 %17, metadata !4744, metadata !DIExpression()) #19, !dbg !4755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #19, !dbg !4757
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4758
  store i8 0, i8* %18, align 1, !dbg !4759, !tbaa !1532
  br label %19, !dbg !4760

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4761
  ret i32 %20, !dbg !4762
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4763 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4765, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.value(metadata i32 %0, metadata !4716, metadata !DIExpression()) #19, !dbg !4767
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !4769
  call void @llvm.dbg.value(metadata i8* %2, metadata !4721, metadata !DIExpression()) #19, !dbg !4767
  ret i8* %2, !dbg !4770
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4771 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4777, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i32 0, metadata !4778, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i32 0, metadata !4780, metadata !DIExpression()), !dbg !4781
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4782
  call void @llvm.dbg.value(metadata i32 %2, metadata !4779, metadata !DIExpression()), !dbg !4781
  %3 = icmp slt i32 %2, 0, !dbg !4783
  br i1 %3, label %4, label %6, !dbg !4785

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4786
  br label %24, !dbg !4787

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4788
  %8 = icmp eq i32 %7, 0, !dbg !4788
  br i1 %8, label %13, label %9, !dbg !4790

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4791
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #19, !dbg !4792
  %12 = icmp eq i64 %11, -1, !dbg !4793
  br i1 %12, label %16, label %13, !dbg !4794

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #19, !dbg !4795
  %15 = icmp eq i32 %14, 0, !dbg !4795
  br i1 %15, label %16, label %18, !dbg !4796

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4778, metadata !DIExpression()), !dbg !4781
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4797
  call void @llvm.dbg.value(metadata i32 %21, metadata !4780, metadata !DIExpression()), !dbg !4781
  br label %24, !dbg !4798

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !4799
  %20 = load i32, i32* %19, align 4, !dbg !4799, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %20, metadata !4778, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i32 %20, metadata !4778, metadata !DIExpression()), !dbg !4781
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4797
  call void @llvm.dbg.value(metadata i32 %21, metadata !4780, metadata !DIExpression()), !dbg !4781
  %22 = icmp eq i32 %20, 0, !dbg !4800
  br i1 %22, label %24, label %23, !dbg !4798

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4802, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 -1, metadata !4780, metadata !DIExpression()), !dbg !4781
  br label %24, !dbg !4804

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4781
  ret i32 %25, !dbg !4805
}

; Function Attrs: nofree nounwind
declare !dbg !1160 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1195 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1196 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4806 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4812, metadata !DIExpression()), !dbg !4813
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4814
  br i1 %2, label %6, label %3, !dbg !4816

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4817
  %5 = icmp eq i32 %4, 0, !dbg !4817
  br i1 %5, label %6, label %8, !dbg !4818

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4819
  br label %17, !dbg !4820

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4821, metadata !DIExpression()) #19, !dbg !4826
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4828
  %10 = load i32, i32* %9, align 8, !dbg !4828, !tbaa !4646
  %11 = and i32 %10, 256, !dbg !4830
  %12 = icmp eq i32 %11, 0, !dbg !4830
  br i1 %12, label %15, label %13, !dbg !4831

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #19, !dbg !4832
  br label %15, !dbg !4832

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4833
  br label %17, !dbg !4834

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4813
  ret i32 %18, !dbg !4835
}

; Function Attrs: nofree nounwind
declare !dbg !1203 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4836 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4843, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i64 %1, metadata !4844, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i32 %2, metadata !4845, metadata !DIExpression()), !dbg !4849
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4850
  %5 = load i8*, i8** %4, align 8, !dbg !4850, !tbaa !4851
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4852
  %7 = load i8*, i8** %6, align 8, !dbg !4852, !tbaa !4853
  %8 = icmp eq i8* %5, %7, !dbg !4854
  br i1 %8, label %9, label %28, !dbg !4855

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4856
  %11 = load i8*, i8** %10, align 8, !dbg !4856, !tbaa !4857
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4858
  %13 = load i8*, i8** %12, align 8, !dbg !4858, !tbaa !4859
  %14 = icmp eq i8* %11, %13, !dbg !4860
  br i1 %14, label %15, label %28, !dbg !4861

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4862
  %17 = load i8*, i8** %16, align 8, !dbg !4862, !tbaa !4863
  %18 = icmp eq i8* %17, null, !dbg !4864
  br i1 %18, label %19, label %28, !dbg !4865

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4866
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #19, !dbg !4867
  call void @llvm.dbg.value(metadata i64 %21, metadata !4846, metadata !DIExpression()), !dbg !4868
  %22 = icmp eq i64 %21, -1, !dbg !4869
  br i1 %22, label %30, label %23, !dbg !4871

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4872
  %25 = load i32, i32* %24, align 8, !dbg !4873, !tbaa !4646
  %26 = and i32 %25, -17, !dbg !4873
  store i32 %26, i32* %24, align 8, !dbg !4873, !tbaa !4646
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4874
  store i64 %21, i64* %27, align 8, !dbg !4875, !tbaa !4876
  br label %30, !dbg !4877

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4878
  br label %30, !dbg !4879

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4849
  ret i32 %31, !dbg !4880
}

; Function Attrs: nofree nounwind
declare !dbg !1279 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #10 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { inlinehint norecurse nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind }
attributes #20 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nounwind readonly }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind readnone }
attributes #26 = { noreturn }
attributes #27 = { cold }

!llvm.dbg.cu = !{!2, !624, !406, !630, !411, !456, !462, !503, !632, !604, !674, !690, !693, !696, !612, !715, !754, !761, !1154, !1157, !1200, !1241}
!llvm.ident = !{!1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282, !1282}
!llvm.module.flags = !{!1283, !1284, !1285, !1286, !1287}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "signals", scope: !2, file: !3, line: 62, type: !400, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !66, globals: !343, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/env.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !13, !27, !34, !51}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !14, line: 32, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "SIGNAL_MODE", file: !3, line: 55, baseType: !7, size: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "UNCHANGED", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "DEFAULT", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "DEFAULT_NOERR", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "IGNORE", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "IGNORE_NOERR", value: 4, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !36, file: !35, line: 186, baseType: !7, size: 32, elements: !49)
!35 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!36 = distinct !DISubprogram(name: "x2nrealloc", scope: !35, file: !35, line: 174, type: !37, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !44)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !39, !40, !41}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!43 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!44 = !{!45, !46, !47, !48}
!45 = !DILocalVariable(name: "p", arg: 1, scope: !36, file: !35, line: 174, type: !39)
!46 = !DILocalVariable(name: "pn", arg: 2, scope: !36, file: !35, line: 174, type: !40)
!47 = !DILocalVariable(name: "s", arg: 3, scope: !36, file: !35, line: 174, type: !41)
!48 = !DILocalVariable(name: "n", scope: !36, file: !35, line: 176, type: !41)
!49 = !{!50}
!50 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 46, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!54 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!55 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!56 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!57 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!58 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!59 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!60 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!61 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!62 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!64 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!65 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!66 = !{!67, !77, !134, !138, !142, !145, !148, !155, !170, !71, !39, !174, !178, !181, !185, !188, !192, !195, !41, !198, !199, !202, !206, !207, !211, !214, !226, !227, !230, !75, !108, !231, !232, !233, !245, !335, !340}
!67 = !DISubprogram(name: "dcgettext", scope: !68, file: !68, line: 51, type: !69, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!68 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !73, !73, !75}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !{}
!77 = !DISubprogram(name: "fputs_unlocked", scope: !78, file: !78, line: 662, type: !79, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!78 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!79 = !DISubroutineType(types: !80)
!80 = !{!75, !73, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !83, line: 49, size: 1728, elements: !84)
!83 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !100, !101, !102, !103, !107, !109, !111, !115, !118, !120, !123, !126, !127, !128, !129, !130}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !82, file: !83, line: 51, baseType: !75, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !82, file: !83, line: 54, baseType: !71, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !82, file: !83, line: 55, baseType: !71, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !82, file: !83, line: 56, baseType: !71, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !82, file: !83, line: 57, baseType: !71, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !82, file: !83, line: 58, baseType: !71, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !82, file: !83, line: 59, baseType: !71, size: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !82, file: !83, line: 60, baseType: !71, size: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !82, file: !83, line: 61, baseType: !71, size: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !82, file: !83, line: 64, baseType: !71, size: 64, offset: 576)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !82, file: !83, line: 65, baseType: !71, size: 64, offset: 640)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !82, file: !83, line: 66, baseType: !71, size: 64, offset: 704)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !82, file: !83, line: 68, baseType: !98, size: 64, offset: 768)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !83, line: 36, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !82, file: !83, line: 70, baseType: !81, size: 64, offset: 832)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !82, file: !83, line: 72, baseType: !75, size: 32, offset: 896)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !82, file: !83, line: 73, baseType: !75, size: 32, offset: 928)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !82, file: !83, line: 74, baseType: !104, size: 64, offset: 960)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !105, line: 152, baseType: !106)
!105 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!106 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !82, file: !83, line: 77, baseType: !108, size: 16, offset: 1024)
!108 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !82, file: !83, line: 78, baseType: !110, size: 8, offset: 1040)
!110 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !82, file: !83, line: 79, baseType: !112, size: 8, offset: 1048)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 8, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 1)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !82, file: !83, line: 81, baseType: !116, size: 64, offset: 1088)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !83, line: 43, baseType: null)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !82, file: !83, line: 89, baseType: !119, size: 64, offset: 1152)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !105, line: 153, baseType: !106)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !82, file: !83, line: 91, baseType: !121, size: 64, offset: 1216)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !83, line: 37, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !82, file: !83, line: 92, baseType: !124, size: 64, offset: 1280)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !83, line: 38, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !82, file: !83, line: 93, baseType: !81, size: 64, offset: 1344)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !82, file: !83, line: 94, baseType: !39, size: 64, offset: 1408)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !82, file: !83, line: 95, baseType: !41, size: 64, offset: 1472)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !82, file: !83, line: 96, baseType: !75, size: 32, offset: 1536)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !82, file: !83, line: 98, baseType: !131, size: 160, offset: 1568)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 160, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 20)
!134 = !DISubprogram(name: "set_program_name", scope: !135, file: !135, line: 37, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!135 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!136 = !DISubroutineType(types: !137)
!137 = !{null, !73}
!138 = !DISubprogram(name: "setlocale", scope: !139, file: !139, line: 122, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!139 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!140 = !DISubroutineType(types: !141)
!141 = !{!71, !75, !73}
!142 = !DISubprogram(name: "bindtextdomain", scope: !68, file: !68, line: 86, type: !143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!143 = !DISubroutineType(types: !144)
!144 = !{!71, !73, !73}
!145 = !DISubprogram(name: "textdomain", scope: !68, file: !68, line: 82, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!146 = !DISubroutineType(types: !147)
!147 = !{!71, !73}
!148 = !DISubprogram(name: "atexit", scope: !149, file: !149, line: 595, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!149 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!150 = !DISubroutineType(types: !151)
!151 = !{!75, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{null}
!155 = !DISubprogram(name: "getopt_long", scope: !156, file: !156, line: 66, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!156 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!157 = !DISubroutineType(types: !158)
!158 = !{!75, !75, !159, !73, !161, !168}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !156, line: 50, size: 256, elements: !164)
!164 = !{!165, !166, !167, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !156, line: 52, baseType: !73, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !163, file: !156, line: 55, baseType: !75, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !163, file: !156, line: 56, baseType: !168, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !163, file: !156, line: 57, baseType: !75, size: 32, offset: 192)
!170 = !DISubprogram(name: "error", scope: !171, file: !171, line: 52, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!171 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!172 = !DISubroutineType(types: !173)
!173 = !{null, !75, !75, !73, null}
!174 = !DISubprogram(name: "version_etc", scope: !175, file: !175, line: 69, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!175 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = !DISubroutineType(types: !177)
!177 = !{null, !81, !73, !73, !73, null}
!178 = !DISubprogram(name: "putenv", scope: !149, file: !149, line: 647, type: !179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!179 = !DISubroutineType(types: !180)
!180 = !{!75, !71}
!181 = !DISubprogram(name: "quote", scope: !182, file: !182, line: 44, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!182 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = !DISubroutineType(types: !184)
!184 = !{!73, !73}
!185 = !DISubprogram(name: "quotearg_style", scope: !14, file: !14, line: 377, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!186 = !DISubroutineType(types: !187)
!187 = !{!71, !13, !73}
!188 = !DISubprogram(name: "chdir", scope: !189, file: !189, line: 497, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!189 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!190 = !DISubroutineType(types: !191)
!191 = !{!75, !73}
!192 = !DISubprogram(name: "execvp", scope: !189, file: !189, line: 578, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!193 = !DISubroutineType(types: !194)
!194 = !{!75, !73, !159}
!195 = !DISubprogram(name: "xmalloc", scope: !35, file: !35, line: 53, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!196 = !DISubroutineType(types: !197)
!197 = !{!39, !43}
!198 = !DISubprogram(name: "xalloc_die", scope: !35, file: !35, line: 51, type: !153, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !76)
!199 = !DISubprogram(name: "xrealloc", scope: !35, file: !35, line: 59, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!200 = !DISubroutineType(types: !201)
!201 = !{!39, !39, !43}
!202 = !DISubprogram(name: "sig2str", scope: !203, file: !203, line: 34, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!203 = !DIFile(filename: "./lib/sig2str.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!204 = !DISubroutineType(types: !205)
!205 = !{!75, !75, !71}
!206 = !DISubprogram(name: "xstrdup", scope: !35, file: !35, line: 64, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!207 = !DISubprogram(name: "operand2sig", scope: !208, file: !208, line: 18, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!208 = !DIFile(filename: "src/operand2sig.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!209 = !DISubroutineType(types: !210)
!210 = !{!75, !73, !71}
!211 = !DISubprogram(name: "free", scope: !149, file: !149, line: 565, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !39}
!214 = !DISubprogram(name: "sigfillset", scope: !215, file: !215, line: 199, type: !216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!215 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!216 = !DISubroutineType(types: !217)
!217 = !{!75, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 5, size: 1024, elements: !221)
!220 = !DIFile(filename: "/usr/include/bits/types/__sigset_t.h", directory: "")
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !219, file: !220, line: 7, baseType: !223, size: 1024)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1024, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 16)
!226 = !DISubprogram(name: "sigemptyset", scope: !215, file: !215, line: 196, type: !216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!227 = !DISubprogram(name: "sigaddset", scope: !215, file: !215, line: 202, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!228 = !DISubroutineType(types: !229)
!229 = !{!75, !218, !75}
!230 = !DISubprogram(name: "sigdelset", scope: !215, file: !215, line: 205, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!231 = !DISubprogram(name: "getenv", scope: !149, file: !149, line: 634, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!232 = !DISubprogram(name: "unsetenv", scope: !149, file: !149, line: 657, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!233 = !DISubprogram(name: "sigaction", scope: !215, file: !215, line: 240, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!234 = !DISubroutineType(types: !235)
!235 = !{!75, !75, !236, !334}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !239, line: 27, size: 1216, elements: !240)
!239 = !DIFile(filename: "/usr/include/bits/sigaction.h", directory: "")
!240 = !{!241, !330, !332, !333}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !238, file: !239, line: 38, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !239, line: 31, size: 64, elements: !243)
!243 = !{!244, !249}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !242, file: !239, line: 34, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !215, line: 72, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !75}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !242, file: !239, line: 36, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !75, !253, !39}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !255, line: 124, baseType: !256)
!255 = !DIFile(filename: "/usr/include/bits/types/siginfo_t.h", directory: "")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 36, size: 1024, elements: !257)
!257 = !{!258, !259, !260, !261, !262}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !256, file: !255, line: 38, baseType: !75, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !256, file: !255, line: 40, baseType: !75, size: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !256, file: !255, line: 42, baseType: !75, size: 32, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !256, file: !255, line: 48, baseType: !75, size: 32, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !256, file: !255, line: 123, baseType: !263, size: 896, offset: 128)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !255, line: 51, size: 896, elements: !264)
!264 = !{!265, !269, !276, !288, !294, !303, !319, !324}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !263, file: !255, line: 53, baseType: !266, size: 896)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 896, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 28)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !263, file: !255, line: 60, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !255, line: 56, size: 64, elements: !271)
!271 = !{!272, !274}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !270, file: !255, line: 58, baseType: !273, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !105, line: 154, baseType: !75)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !270, file: !255, line: 59, baseType: !275, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !105, line: 146, baseType: !7)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !263, file: !255, line: 68, baseType: !277, size: 128)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !255, line: 63, size: 128, elements: !278)
!278 = !{!279, !280, !281}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !277, file: !255, line: 65, baseType: !75, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !277, file: !255, line: 66, baseType: !75, size: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !277, file: !255, line: 67, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !283, line: 30, baseType: !284)
!283 = !DIFile(filename: "/usr/include/bits/types/__sigval_t.h", directory: "")
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !283, line: 24, size: 64, elements: !285)
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !284, file: !283, line: 26, baseType: !75, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !284, file: !283, line: 27, baseType: !39, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !263, file: !255, line: 76, baseType: !289, size: 128)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !255, line: 71, size: 128, elements: !290)
!290 = !{!291, !292, !293}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !289, file: !255, line: 73, baseType: !273, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !289, file: !255, line: 74, baseType: !275, size: 32, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !289, file: !255, line: 75, baseType: !282, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !263, file: !255, line: 86, baseType: !295, size: 256)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !255, line: 79, size: 256, elements: !296)
!296 = !{!297, !298, !299, !300, !302}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !295, file: !255, line: 81, baseType: !273, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !295, file: !255, line: 82, baseType: !275, size: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !295, file: !255, line: 83, baseType: !75, size: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !295, file: !255, line: 84, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !105, line: 156, baseType: !106)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !295, file: !255, line: 85, baseType: !301, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !263, file: !255, line: 105, baseType: !304, size: 256)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !255, line: 89, size: 256, elements: !305)
!305 = !{!306, !307, !309}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !304, file: !255, line: 91, baseType: !39, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !304, file: !255, line: 93, baseType: !308, size: 16, offset: 64)
!308 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !304, file: !255, line: 104, baseType: !310, size: 128, offset: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !255, line: 94, size: 128, elements: !311)
!311 = !{!312, !317}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !310, file: !255, line: 101, baseType: !313, size: 128)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !310, file: !255, line: 97, size: 128, elements: !314)
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !313, file: !255, line: 99, baseType: !39, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !313, file: !255, line: 100, baseType: !39, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !310, file: !255, line: 103, baseType: !318, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !105, line: 42, baseType: !7)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !263, file: !255, line: 112, baseType: !320, size: 128)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !255, line: 108, size: 128, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !320, file: !255, line: 110, baseType: !106, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !320, file: !255, line: 111, baseType: !75, size: 32, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !263, file: !255, line: 121, baseType: !325, size: 128)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !255, line: 116, size: 128, elements: !326)
!326 = !{!327, !328, !329}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !325, file: !255, line: 118, baseType: !39, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !325, file: !255, line: 119, baseType: !75, size: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !325, file: !255, line: 120, baseType: !7, size: 32, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !238, file: !239, line: 46, baseType: !331, size: 1024, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !220, line: 8, baseType: !219)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !238, file: !239, line: 49, baseType: !75, size: 32, offset: 1088)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !238, file: !239, line: 52, baseType: !152, size: 64, offset: 1152)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!335 = !DISubprogram(name: "sigprocmask", scope: !215, file: !215, line: 229, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!336 = !DISubroutineType(types: !337)
!337 = !{!75, !75, !338, !218}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!340 = !DISubprogram(name: "sigismember", scope: !215, file: !215, line: 208, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!341 = !DISubroutineType(types: !342)
!342 = !{!75, !338, !75}
!343 = !{!344, !369, !371, !373, !0, !375, !380, !383, !385, !387, !390, !394, !396, !398}
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "dummy_environ", scope: !346, file: !3, line: 877, type: !368, isLocal: true, isDefinition: true)
!346 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 798, type: !347, scopeLine: 799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !350)
!347 = !DISubroutineType(types: !348)
!348 = !{!75, !75, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!350 = !{!351, !352, !353, !354, !356, !357, !358, !359, !360, !363, !367}
!351 = !DILocalVariable(name: "argc", arg: 1, scope: !346, file: !3, line: 798, type: !75)
!352 = !DILocalVariable(name: "argv", arg: 2, scope: !346, file: !3, line: 798, type: !349)
!353 = !DILocalVariable(name: "optc", scope: !346, file: !3, line: 800, type: !75)
!354 = !DILocalVariable(name: "ignore_environment", scope: !346, file: !3, line: 801, type: !355)
!355 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!356 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !346, file: !3, line: 802, type: !355)
!357 = !DILocalVariable(name: "newdir", scope: !346, file: !3, line: 803, type: !73)
!358 = !DILocalVariable(name: "eq", scope: !346, file: !3, line: 883, type: !71)
!359 = !DILocalVariable(name: "program_specified", scope: !346, file: !3, line: 897, type: !355)
!360 = !DILocalVariable(name: "e", scope: !361, file: !3, line: 914, type: !159)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 912, column: 5)
!362 = distinct !DILexicalBlock(scope: !346, file: !3, line: 911, column: 7)
!363 = !DILocalVariable(name: "i", scope: !364, file: !3, line: 939, type: !75)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 939, column: 7)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 937, column: 5)
!366 = distinct !DILexicalBlock(scope: !346, file: !3, line: 936, column: 7)
!367 = !DILocalVariable(name: "exit_status", scope: !346, file: !3, line: 945, type: !75)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !113)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "dev_debug", scope: !2, file: !3, line: 48, type: !355, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "sig_mask_changed", scope: !2, file: !3, line: 71, type: !355, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "report_signal_handling", scope: !2, file: !3, line: 74, type: !355, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 76, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 104, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 13)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 88, type: !382, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 3328, elements: !378)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "usvars_used", scope: !2, file: !3, line: 45, type: !41, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "usvars_alloc", scope: !2, file: !3, line: 44, type: !41, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "usvars", scope: !2, file: !3, line: 43, type: !389, isLocal: true, isDefinition: true)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "block_signals", scope: !2, file: !3, line: 65, type: !392, isLocal: true, isDefinition: true)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !393, line: 7, baseType: !331)
!393 = !DIFile(filename: "/usr/include/bits/types/sigset_t.h", directory: "")
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "unblock_signals", scope: !2, file: !3, line: 68, type: !392, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "vnlen", scope: !2, file: !3, line: 52, type: !41, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "varname", scope: !2, file: !3, line: 51, type: !71, isLocal: true, isDefinition: true)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!401 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!402 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!403 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "Version", scope: !406, file: !407, line: 2, type: !73, isLocal: false, isDefinition: true)
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, globals: !408, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!408 = !{!404}
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "file_name", scope: !411, file: !412, line: 46, type: !73, isLocal: true, isDefinition: true)
!411 = distinct !DICompileUnit(language: DW_LANG_C99, file: !412, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !413, globals: !451, splitDebugInlining: false, nameTableKind: None)
!412 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!413 = !{!414, !67, !450, !170}
!414 = !DISubprogram(name: "close_stream", scope: !415, file: !415, line: 2, type: !416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!415 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!416 = !DISubroutineType(types: !417)
!417 = !{!75, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !83, line: 49, size: 1728, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !419, file: !83, line: 51, baseType: !75, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !419, file: !83, line: 54, baseType: !71, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !419, file: !83, line: 55, baseType: !71, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !419, file: !83, line: 56, baseType: !71, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !419, file: !83, line: 57, baseType: !71, size: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !419, file: !83, line: 58, baseType: !71, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !419, file: !83, line: 59, baseType: !71, size: 64, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !419, file: !83, line: 60, baseType: !71, size: 64, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !419, file: !83, line: 61, baseType: !71, size: 64, offset: 512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !419, file: !83, line: 64, baseType: !71, size: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !419, file: !83, line: 65, baseType: !71, size: 64, offset: 640)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !419, file: !83, line: 66, baseType: !71, size: 64, offset: 704)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !419, file: !83, line: 68, baseType: !98, size: 64, offset: 768)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !419, file: !83, line: 70, baseType: !418, size: 64, offset: 832)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !419, file: !83, line: 72, baseType: !75, size: 32, offset: 896)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !419, file: !83, line: 73, baseType: !75, size: 32, offset: 928)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !419, file: !83, line: 74, baseType: !104, size: 64, offset: 960)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !419, file: !83, line: 77, baseType: !108, size: 16, offset: 1024)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !419, file: !83, line: 78, baseType: !110, size: 8, offset: 1040)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !419, file: !83, line: 79, baseType: !112, size: 8, offset: 1048)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !419, file: !83, line: 81, baseType: !116, size: 64, offset: 1088)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !419, file: !83, line: 89, baseType: !119, size: 64, offset: 1152)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !419, file: !83, line: 91, baseType: !121, size: 64, offset: 1216)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !419, file: !83, line: 92, baseType: !124, size: 64, offset: 1280)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !419, file: !83, line: 93, baseType: !418, size: 64, offset: 1344)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !419, file: !83, line: 94, baseType: !39, size: 64, offset: 1408)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !419, file: !83, line: 95, baseType: !41, size: 64, offset: 1472)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !419, file: !83, line: 96, baseType: !75, size: 32, offset: 1536)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !419, file: !83, line: 98, baseType: !131, size: 160, offset: 1568)
!450 = !DISubprogram(name: "quotearg_colon", scope: !14, file: !14, line: 391, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!451 = !{!409, !452}
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !411, file: !412, line: 56, type: !355, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "exit_failure", scope: !456, file: !457, line: 24, type: !459, isLocal: false, isDefinition: true)
!456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !457, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, globals: !458, splitDebugInlining: false, nameTableKind: None)
!457 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!458 = !{!454}
!459 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !75)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(name: "program_name", scope: !462, file: !463, line: 33, type: !73, isLocal: false, isDefinition: true)
!462 = distinct !DICompileUnit(language: DW_LANG_C99, file: !463, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !464, globals: !500, splitDebugInlining: false, nameTableKind: None)
!463 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!464 = !{!39, !465, !71}
!465 = !DISubprogram(name: "fputs", scope: !78, file: !78, line: 626, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!466 = !DISubroutineType(types: !467)
!467 = !{!75, !73, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !83, line: 49, size: 1728, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !469, file: !83, line: 51, baseType: !75, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !469, file: !83, line: 54, baseType: !71, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !469, file: !83, line: 55, baseType: !71, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !469, file: !83, line: 56, baseType: !71, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !469, file: !83, line: 57, baseType: !71, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !469, file: !83, line: 58, baseType: !71, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !469, file: !83, line: 59, baseType: !71, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !469, file: !83, line: 60, baseType: !71, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !469, file: !83, line: 61, baseType: !71, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !469, file: !83, line: 64, baseType: !71, size: 64, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !469, file: !83, line: 65, baseType: !71, size: 64, offset: 640)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !469, file: !83, line: 66, baseType: !71, size: 64, offset: 704)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !469, file: !83, line: 68, baseType: !98, size: 64, offset: 768)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !469, file: !83, line: 70, baseType: !468, size: 64, offset: 832)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !469, file: !83, line: 72, baseType: !75, size: 32, offset: 896)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !469, file: !83, line: 73, baseType: !75, size: 32, offset: 928)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !469, file: !83, line: 74, baseType: !104, size: 64, offset: 960)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !469, file: !83, line: 77, baseType: !108, size: 16, offset: 1024)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !469, file: !83, line: 78, baseType: !110, size: 8, offset: 1040)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !469, file: !83, line: 79, baseType: !112, size: 8, offset: 1048)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !469, file: !83, line: 81, baseType: !116, size: 64, offset: 1088)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !469, file: !83, line: 89, baseType: !119, size: 64, offset: 1152)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !469, file: !83, line: 91, baseType: !121, size: 64, offset: 1216)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !469, file: !83, line: 92, baseType: !124, size: 64, offset: 1280)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !469, file: !83, line: 93, baseType: !468, size: 64, offset: 1344)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !469, file: !83, line: 94, baseType: !39, size: 64, offset: 1408)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !469, file: !83, line: 95, baseType: !41, size: 64, offset: 1472)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !469, file: !83, line: 96, baseType: !75, size: 32, offset: 1536)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !469, file: !83, line: 98, baseType: !131, size: 160, offset: 1568)
!500 = !{!460}
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !503, file: !504, line: 85, type: !598, isLocal: false, isDefinition: true)
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !505, retainedTypes: !511, globals: !571, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!505 = !{!13, !506, !51}
!506 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !14, line: 242, baseType: !7, size: 32, elements: !507)
!507 = !{!508, !509, !510}
!508 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!509 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!510 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!511 = !{!512, !517, !211, !533, !75, !108, !536, !41, !553, !557, !67, !563, !567, !71, !195, !198, !199}
!512 = !DISubprogram(name: "xmemdup", scope: !35, file: !35, line: 62, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!513 = !DISubroutineType(types: !514)
!514 = !{!39, !515, !43}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!517 = !DISubprogram(name: "quotearg_alloc_mem", scope: !14, file: !14, line: 342, type: !518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!518 = !DISubroutineType(types: !519)
!519 = !{!71, !73, !43, !520, !521}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !504, line: 65, size: 448, elements: !524)
!524 = !{!525, !526, !527, !531, !532}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !523, file: !504, line: 68, baseType: !13, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !504, line: 71, baseType: !75, size: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !523, file: !504, line: 75, baseType: !528, size: 256, offset: 64)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 8)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !523, file: !504, line: 78, baseType: !73, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !523, file: !504, line: 81, baseType: !73, size: 64, offset: 384)
!533 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !14, file: !14, line: 408, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!534 = !DISubroutineType(types: !535)
!535 = !{!71, !75, !73, !73, !73, !43}
!536 = !DISubprogram(name: "rpl_mbrtowc", scope: !537, file: !537, line: 717, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!537 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!538 = !DISubroutineType(types: !539)
!539 = !{!43, !168, !73, !43, !540}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 13, size: 64, elements: !543)
!542 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !541, file: !542, line: 15, baseType: !75, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !541, file: !542, line: 20, baseType: !546, size: 32, offset: 32)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !542, line: 16, size: 32, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !546, file: !542, line: 18, baseType: !7, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !546, file: !542, line: 19, baseType: !550, size: 32)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 4)
!553 = !DISubprogram(name: "iswprint", scope: !554, file: !554, line: 120, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!554 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!555 = !DISubroutineType(types: !556)
!556 = !{!75, !7}
!557 = !DISubprogram(name: "mbsinit", scope: !558, file: !558, line: 292, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!558 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!559 = !DISubroutineType(types: !560)
!560 = !{!75, !561}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!563 = !DISubprogram(name: "locale_charset", scope: !564, file: !564, line: 35, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!564 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!565 = !DISubroutineType(types: !566)
!566 = !{!73}
!567 = !DISubprogram(name: "c_strcasecmp", scope: !568, file: !568, line: 42, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!568 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!569 = !DISubroutineType(types: !570)
!570 = !{!75, !73, !73}
!571 = !{!501, !572, !578, !580, !582, !587, !594, !596}
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !503, file: !504, line: 101, type: !574, isLocal: false, isDefinition: true)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 320, elements: !576)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!576 = !{!577}
!577 = !DISubrange(count: 10)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !503, file: !504, line: 1052, type: !523, isLocal: false, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !503, file: !504, line: 116, type: !523, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "slot0", scope: !503, file: !504, line: 842, type: !584, isLocal: true, isDefinition: true)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 2048, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 256)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "slotvec", scope: !503, file: !504, line: 845, type: !589, isLocal: true, isDefinition: true)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !504, line: 834, size: 128, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !590, file: !504, line: 836, baseType: !41, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !590, file: !504, line: 837, baseType: !71, size: 64, offset: 64)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "nslots", scope: !503, file: !504, line: 843, type: !75, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(name: "slotvec0", scope: !503, file: !504, line: 844, type: !590, isLocal: true, isDefinition: true)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 704, elements: !600)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!600 = !{!601}
!601 = !DISubrange(count: 11)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !604, file: !605, line: 26, type: !607, isLocal: false, isDefinition: true)
!604 = distinct !DICompileUnit(language: DW_LANG_C99, file: !605, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, globals: !606, splitDebugInlining: false, nameTableKind: None)
!605 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!606 = !{!602}
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 376, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 47)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "numname_table", scope: !612, file: !613, line: 41, type: !616, isLocal: true, isDefinition: true)
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !614, globals: !615, splitDebugInlining: false, nameTableKind: None)
!613 = !DIFile(filename: "lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!614 = !{!7}
!615 = !{!610}
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 3360, elements: !622)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !613, line: 41, size: 96, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !617, file: !613, line: 41, baseType: !75, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !617, file: !613, line: 41, baseType: !621, size: 64, offset: 32)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, elements: !529)
!622 = !{!623}
!623 = !DISubrange(count: 35)
!624 = distinct !DICompileUnit(language: DW_LANG_C99, file: !625, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !626, splitDebugInlining: false, nameTableKind: None)
!625 = !DIFile(filename: "src/operand2sig.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!626 = !{!7, !206, !627, !211, !202, !67, !181, !170}
!627 = !DISubprogram(name: "str2sig", scope: !203, file: !203, line: 35, type: !628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!628 = !DISubroutineType(types: !629)
!629 = !{!75, !73, !168}
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, splitDebugInlining: false, nameTableKind: None)
!631 = !DIFile(filename: "lib/c-ctype.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!632 = distinct !DICompileUnit(language: DW_LANG_C99, file: !633, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !634, retainedTypes: !638, splitDebugInlining: false, nameTableKind: None)
!633 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!634 = !{!635}
!635 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !633, line: 40, baseType: !7, size: 32, elements: !636)
!636 = !{!637}
!637 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!638 = !{!67, !639, !39}
!639 = !DISubprogram(name: "fputs_unlocked", scope: !78, file: !78, line: 662, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!640 = !DISubroutineType(types: !641)
!641 = !{!75, !73, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !83, line: 49, size: 1728, elements: !644)
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !643, file: !83, line: 51, baseType: !75, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !643, file: !83, line: 54, baseType: !71, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !643, file: !83, line: 55, baseType: !71, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !643, file: !83, line: 56, baseType: !71, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !643, file: !83, line: 57, baseType: !71, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !643, file: !83, line: 58, baseType: !71, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !643, file: !83, line: 59, baseType: !71, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !643, file: !83, line: 60, baseType: !71, size: 64, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !643, file: !83, line: 61, baseType: !71, size: 64, offset: 512)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !643, file: !83, line: 64, baseType: !71, size: 64, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !643, file: !83, line: 65, baseType: !71, size: 64, offset: 640)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !643, file: !83, line: 66, baseType: !71, size: 64, offset: 704)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !643, file: !83, line: 68, baseType: !98, size: 64, offset: 768)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !643, file: !83, line: 70, baseType: !642, size: 64, offset: 832)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !643, file: !83, line: 72, baseType: !75, size: 32, offset: 896)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !643, file: !83, line: 73, baseType: !75, size: 32, offset: 928)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !643, file: !83, line: 74, baseType: !104, size: 64, offset: 960)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !643, file: !83, line: 77, baseType: !108, size: 16, offset: 1024)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !643, file: !83, line: 78, baseType: !110, size: 8, offset: 1040)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !643, file: !83, line: 79, baseType: !112, size: 8, offset: 1048)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !643, file: !83, line: 81, baseType: !116, size: 64, offset: 1088)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !643, file: !83, line: 89, baseType: !119, size: 64, offset: 1152)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !643, file: !83, line: 91, baseType: !121, size: 64, offset: 1216)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !643, file: !83, line: 92, baseType: !124, size: 64, offset: 1280)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !643, file: !83, line: 93, baseType: !642, size: 64, offset: 1344)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !643, file: !83, line: 94, baseType: !39, size: 64, offset: 1408)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !643, file: !83, line: 95, baseType: !41, size: 64, offset: 1472)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !643, file: !83, line: 96, baseType: !75, size: 32, offset: 1536)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !643, file: !83, line: 98, baseType: !131, size: 160, offset: 1568)
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !676, retainedTypes: !684, splitDebugInlining: false, nameTableKind: None)
!675 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!676 = !{!677}
!677 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !678, file: !35, line: 186, baseType: !7, size: 32, elements: !49)
!678 = distinct !DISubprogram(name: "x2nrealloc", scope: !35, file: !35, line: 174, type: !37, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !679)
!679 = !{!680, !681, !682, !683}
!680 = !DILocalVariable(name: "p", arg: 1, scope: !678, file: !35, line: 174, type: !39)
!681 = !DILocalVariable(name: "pn", arg: 2, scope: !678, file: !35, line: 174, type: !40)
!682 = !DILocalVariable(name: "s", arg: 3, scope: !678, file: !35, line: 174, type: !41)
!683 = !DILocalVariable(name: "n", scope: !678, file: !35, line: 176, type: !41)
!684 = !{!41, !198, !195, !199, !71, !211, !39, !685, !688}
!685 = !DISubprogram(name: "xcalloc", scope: !35, file: !35, line: 57, type: !686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!686 = !DISubroutineType(types: !687)
!687 = !{!39, !43, !43}
!688 = !DISubprogram(name: "rpl_calloc", scope: !689, file: !689, line: 688, type: !686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!689 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!690 = distinct !DICompileUnit(language: DW_LANG_C99, file: !691, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !692, splitDebugInlining: false, nameTableKind: None)
!691 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!692 = !{!67, !170}
!693 = distinct !DICompileUnit(language: DW_LANG_C99, file: !694, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !695, splitDebugInlining: false, nameTableKind: None)
!694 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!695 = !{!39}
!696 = distinct !DICompileUnit(language: DW_LANG_C99, file: !697, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !698, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!698 = !{!699, !41, !711}
!699 = !DISubprogram(name: "mbrtowc", scope: !558, file: !558, line: 296, type: !700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!700 = !DISubroutineType(types: !701)
!701 = !{!43, !168, !73, !43, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 13, size: 64, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !703, file: !542, line: 15, baseType: !75, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !703, file: !542, line: 20, baseType: !707, size: 32, offset: 32)
!707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !542, line: 16, size: 32, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !707, file: !542, line: 18, baseType: !7, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !707, file: !542, line: 19, baseType: !550, size: 32)
!711 = !DISubprogram(name: "hard_locale", scope: !712, file: !712, line: 26, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!712 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!713 = !DISubroutineType(types: !714)
!714 = !{!355, !75}
!715 = distinct !DICompileUnit(language: DW_LANG_C99, file: !716, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !717, splitDebugInlining: false, nameTableKind: None)
!716 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!717 = !{!718}
!718 = !DISubprogram(name: "rpl_fclose", scope: !719, file: !719, line: 672, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!719 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!720 = !DISubroutineType(types: !721)
!721 = !{!75, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !83, line: 49, size: 1728, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !723, file: !83, line: 51, baseType: !75, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !723, file: !83, line: 54, baseType: !71, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !723, file: !83, line: 55, baseType: !71, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !723, file: !83, line: 56, baseType: !71, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !723, file: !83, line: 57, baseType: !71, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !723, file: !83, line: 58, baseType: !71, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !723, file: !83, line: 59, baseType: !71, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !723, file: !83, line: 60, baseType: !71, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !723, file: !83, line: 61, baseType: !71, size: 64, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !723, file: !83, line: 64, baseType: !71, size: 64, offset: 576)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !723, file: !83, line: 65, baseType: !71, size: 64, offset: 640)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !723, file: !83, line: 66, baseType: !71, size: 64, offset: 704)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !723, file: !83, line: 68, baseType: !98, size: 64, offset: 768)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !723, file: !83, line: 70, baseType: !722, size: 64, offset: 832)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !723, file: !83, line: 72, baseType: !75, size: 32, offset: 896)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !723, file: !83, line: 73, baseType: !75, size: 32, offset: 928)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !723, file: !83, line: 74, baseType: !104, size: 64, offset: 960)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !723, file: !83, line: 77, baseType: !108, size: 16, offset: 1024)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !723, file: !83, line: 78, baseType: !110, size: 8, offset: 1040)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !723, file: !83, line: 79, baseType: !112, size: 8, offset: 1048)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !723, file: !83, line: 81, baseType: !116, size: 64, offset: 1088)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !723, file: !83, line: 89, baseType: !119, size: 64, offset: 1152)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !723, file: !83, line: 91, baseType: !121, size: 64, offset: 1216)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !723, file: !83, line: 92, baseType: !124, size: 64, offset: 1280)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !723, file: !83, line: 93, baseType: !722, size: 64, offset: 1344)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !723, file: !83, line: 94, baseType: !39, size: 64, offset: 1408)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !723, file: !83, line: 95, baseType: !41, size: 64, offset: 1472)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !723, file: !83, line: 96, baseType: !75, size: 32, offset: 1536)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !723, file: !83, line: 98, baseType: !131, size: 160, offset: 1568)
!754 = distinct !DICompileUnit(language: DW_LANG_C99, file: !755, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !756, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!756 = !{!757}
!757 = !DISubprogram(name: "setlocale_null_r", scope: !758, file: !758, line: 64, type: !759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!758 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!759 = !DISubroutineType(types: !760)
!760 = !{!75, !75, !71, !43}
!761 = distinct !DICompileUnit(language: DW_LANG_C99, file: !762, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !763, retainedTypes: !1150, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!763 = !{!764}
!764 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !765, line: 41, baseType: !7, size: 32, elements: !766)
!765 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149}
!767 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!768 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!769 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!770 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!771 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!772 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!773 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!774 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!775 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!776 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!777 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!778 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!779 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!780 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!781 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!782 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!783 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!784 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!785 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!786 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!787 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!788 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!789 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!790 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!791 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!792 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!793 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!794 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!795 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!796 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!797 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!798 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!799 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!800 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!801 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!802 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!803 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!804 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!805 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!806 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!807 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!808 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!809 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!810 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!811 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!812 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!813 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!814 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!815 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!816 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!875 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!878 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!879 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!880 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!881 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!882 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!883 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!884 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!885 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!886 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!887 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!888 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!889 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!962 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1035 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1036 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1037 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1038 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1039 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1040 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1041 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1042 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1043 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1044 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1045 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1046 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1047 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1048 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1049 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1051 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1052 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1053 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1054 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1055 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1056 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1082 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1083 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1084 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1085 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1086 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1091 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1092 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1093 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1094 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1150 = !{!1151, !39}
!1151 = !DISubprogram(name: "nl_langinfo", scope: !765, file: !765, line: 661, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!71, !75}
!1154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1155, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !1156, splitDebugInlining: false, nameTableKind: None)
!1155 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1156 = !{!39, !138}
!1157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1158, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !1159, splitDebugInlining: false, nameTableKind: None)
!1158 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1159 = !{!1160, !1195, !1196, !1199}
!1160 = !DISubprogram(name: "fileno", scope: !78, file: !78, line: 786, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!75, !1163}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !83, line: 49, size: 1728, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1164, file: !83, line: 51, baseType: !75, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1164, file: !83, line: 54, baseType: !71, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1164, file: !83, line: 55, baseType: !71, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1164, file: !83, line: 56, baseType: !71, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1164, file: !83, line: 57, baseType: !71, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1164, file: !83, line: 58, baseType: !71, size: 64, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1164, file: !83, line: 59, baseType: !71, size: 64, offset: 384)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1164, file: !83, line: 60, baseType: !71, size: 64, offset: 448)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1164, file: !83, line: 61, baseType: !71, size: 64, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1164, file: !83, line: 64, baseType: !71, size: 64, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1164, file: !83, line: 65, baseType: !71, size: 64, offset: 640)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1164, file: !83, line: 66, baseType: !71, size: 64, offset: 704)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1164, file: !83, line: 68, baseType: !98, size: 64, offset: 768)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1164, file: !83, line: 70, baseType: !1163, size: 64, offset: 832)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1164, file: !83, line: 72, baseType: !75, size: 32, offset: 896)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1164, file: !83, line: 73, baseType: !75, size: 32, offset: 928)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1164, file: !83, line: 74, baseType: !104, size: 64, offset: 960)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1164, file: !83, line: 77, baseType: !108, size: 16, offset: 1024)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1164, file: !83, line: 78, baseType: !110, size: 8, offset: 1040)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1164, file: !83, line: 79, baseType: !112, size: 8, offset: 1048)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1164, file: !83, line: 81, baseType: !116, size: 64, offset: 1088)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1164, file: !83, line: 89, baseType: !119, size: 64, offset: 1152)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1164, file: !83, line: 91, baseType: !121, size: 64, offset: 1216)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1164, file: !83, line: 92, baseType: !124, size: 64, offset: 1280)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1164, file: !83, line: 93, baseType: !1163, size: 64, offset: 1344)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1164, file: !83, line: 94, baseType: !39, size: 64, offset: 1408)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1164, file: !83, line: 95, baseType: !41, size: 64, offset: 1472)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1164, file: !83, line: 96, baseType: !75, size: 32, offset: 1536)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1164, file: !83, line: 98, baseType: !131, size: 160, offset: 1568)
!1195 = !DISubprogram(name: "fclose", scope: !78, file: !78, line: 213, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!1196 = !DISubprogram(name: "lseek", scope: !189, file: !189, line: 334, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!106, !75, !106, !75}
!1199 = !DISubprogram(name: "rpl_fflush", scope: !719, file: !719, line: 718, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!1200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1201, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !1202, splitDebugInlining: false, nameTableKind: None)
!1201 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1202 = !{!39, !1203, !1238}
!1203 = !DISubprogram(name: "fflush", scope: !78, file: !78, line: 218, type: !1204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!75, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !83, line: 49, size: 1728, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1207, file: !83, line: 51, baseType: !75, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1207, file: !83, line: 54, baseType: !71, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1207, file: !83, line: 55, baseType: !71, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1207, file: !83, line: 56, baseType: !71, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1207, file: !83, line: 57, baseType: !71, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1207, file: !83, line: 58, baseType: !71, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1207, file: !83, line: 59, baseType: !71, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1207, file: !83, line: 60, baseType: !71, size: 64, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1207, file: !83, line: 61, baseType: !71, size: 64, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1207, file: !83, line: 64, baseType: !71, size: 64, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1207, file: !83, line: 65, baseType: !71, size: 64, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1207, file: !83, line: 66, baseType: !71, size: 64, offset: 704)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1207, file: !83, line: 68, baseType: !98, size: 64, offset: 768)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1207, file: !83, line: 70, baseType: !1206, size: 64, offset: 832)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1207, file: !83, line: 72, baseType: !75, size: 32, offset: 896)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1207, file: !83, line: 73, baseType: !75, size: 32, offset: 928)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1207, file: !83, line: 74, baseType: !104, size: 64, offset: 960)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1207, file: !83, line: 77, baseType: !108, size: 16, offset: 1024)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1207, file: !83, line: 78, baseType: !110, size: 8, offset: 1040)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1207, file: !83, line: 79, baseType: !112, size: 8, offset: 1048)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1207, file: !83, line: 81, baseType: !116, size: 64, offset: 1088)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1207, file: !83, line: 89, baseType: !119, size: 64, offset: 1152)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1207, file: !83, line: 91, baseType: !121, size: 64, offset: 1216)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1207, file: !83, line: 92, baseType: !124, size: 64, offset: 1280)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1207, file: !83, line: 93, baseType: !1206, size: 64, offset: 1344)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1207, file: !83, line: 94, baseType: !39, size: 64, offset: 1408)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1207, file: !83, line: 95, baseType: !41, size: 64, offset: 1472)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1207, file: !83, line: 96, baseType: !75, size: 32, offset: 1536)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1207, file: !83, line: 98, baseType: !131, size: 160, offset: 1568)
!1238 = !DISubprogram(name: "rpl_fseeko", scope: !719, file: !719, line: 1034, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!75, !1206, !106, !75}
!1241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1242, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !1243, splitDebugInlining: false, nameTableKind: None)
!1242 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1243 = !{!39, !1244, !1196, !1279}
!1244 = !DISubprogram(name: "fileno", scope: !78, file: !78, line: 786, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!75, !1247}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !83, line: 49, size: 1728, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1248, file: !83, line: 51, baseType: !75, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1248, file: !83, line: 54, baseType: !71, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1248, file: !83, line: 55, baseType: !71, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1248, file: !83, line: 56, baseType: !71, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1248, file: !83, line: 57, baseType: !71, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1248, file: !83, line: 58, baseType: !71, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1248, file: !83, line: 59, baseType: !71, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1248, file: !83, line: 60, baseType: !71, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1248, file: !83, line: 61, baseType: !71, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1248, file: !83, line: 64, baseType: !71, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1248, file: !83, line: 65, baseType: !71, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1248, file: !83, line: 66, baseType: !71, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1248, file: !83, line: 68, baseType: !98, size: 64, offset: 768)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1248, file: !83, line: 70, baseType: !1247, size: 64, offset: 832)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1248, file: !83, line: 72, baseType: !75, size: 32, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1248, file: !83, line: 73, baseType: !75, size: 32, offset: 928)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1248, file: !83, line: 74, baseType: !104, size: 64, offset: 960)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1248, file: !83, line: 77, baseType: !108, size: 16, offset: 1024)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1248, file: !83, line: 78, baseType: !110, size: 8, offset: 1040)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1248, file: !83, line: 79, baseType: !112, size: 8, offset: 1048)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1248, file: !83, line: 81, baseType: !116, size: 64, offset: 1088)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1248, file: !83, line: 89, baseType: !119, size: 64, offset: 1152)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1248, file: !83, line: 91, baseType: !121, size: 64, offset: 1216)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1248, file: !83, line: 92, baseType: !124, size: 64, offset: 1280)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1248, file: !83, line: 93, baseType: !1247, size: 64, offset: 1344)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1248, file: !83, line: 94, baseType: !39, size: 64, offset: 1408)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1248, file: !83, line: 95, baseType: !41, size: 64, offset: 1472)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1248, file: !83, line: 96, baseType: !75, size: 32, offset: 1536)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1248, file: !83, line: 98, baseType: !131, size: 160, offset: 1568)
!1279 = !DISubprogram(name: "fseeko", scope: !78, file: !78, line: 707, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !76)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!75, !1247, !106, !75}
!1282 = !{!"clang version 10.0.0 "}
!1283 = !{i32 7, !"Dwarf Version", i32 4}
!1284 = !{i32 2, !"Debug Info Version", i32 3}
!1285 = !{i32 1, !"wchar_size", i32 4}
!1286 = !{i32 7, !"PIC Level", i32 2}
!1287 = !{i32 7, !"PIE Level", i32 2}
!1288 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 106, type: !247, scopeLine: 107, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1289)
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "status", arg: 1, scope: !1288, file: !3, line: 106, type: !75)
!1291 = !DILocalVariable(name: "infomap", scope: !1292, file: !6, line: 636, type: !1304)
!1292 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 634, type: !136, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1293)
!1293 = !{!1294, !1291, !1295, !1296, !1303}
!1294 = !DILocalVariable(name: "program", arg: 1, scope: !1292, file: !6, line: 634, type: !73)
!1295 = !DILocalVariable(name: "node", scope: !1292, file: !6, line: 646, type: !73)
!1296 = !DILocalVariable(name: "map_prog", scope: !1292, file: !6, line: 647, type: !1297)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1292, file: !6, line: 636, size: 128, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1299, file: !6, line: 636, baseType: !73, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1299, file: !6, line: 636, baseType: !73, size: 64, offset: 64)
!1303 = !DILocalVariable(name: "lc_messages", scope: !1292, file: !6, line: 659, type: !73)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1298, size: 896, elements: !1305)
!1305 = !{!1306}
!1306 = !DISubrange(count: 7)
!1307 = !DILocation(line: 636, column: 67, scope: !1292, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 160, column: 7, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 111, column: 5)
!1310 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 108, column: 7)
!1311 = !DILocation(line: 0, scope: !1288)
!1312 = !DILocation(line: 108, column: 14, scope: !1310)
!1313 = !DILocation(line: 108, column: 7, scope: !1288)
!1314 = !DILocation(line: 109, column: 5, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 109, column: 5)
!1316 = !{!1317, !1317, i64 0}
!1317 = !{!"any pointer", !1318, i64 0}
!1318 = !{!"omnipotent char", !1319, i64 0}
!1319 = !{!"Simple C/C++ TBAA"}
!1320 = !DILocation(line: 112, column: 7, scope: !1309)
!1321 = !DILocation(line: 115, column: 7, scope: !1309)
!1322 = !DILocation(line: 590, column: 3, scope: !1323, inlinedAt: !1324)
!1323 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 588, type: !153, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !76)
!1324 = distinct !DILocation(line: 119, column: 7, scope: !1309)
!1325 = !DILocation(line: 121, column: 7, scope: !1309)
!1326 = !DILocation(line: 126, column: 7, scope: !1309)
!1327 = !DILocation(line: 129, column: 7, scope: !1309)
!1328 = !DILocation(line: 133, column: 7, scope: !1309)
!1329 = !DILocation(line: 136, column: 7, scope: !1309)
!1330 = !DILocation(line: 139, column: 7, scope: !1309)
!1331 = !DILocation(line: 142, column: 7, scope: !1309)
!1332 = !DILocation(line: 145, column: 7, scope: !1309)
!1333 = !DILocation(line: 148, column: 7, scope: !1309)
!1334 = !DILocation(line: 149, column: 7, scope: !1309)
!1335 = !DILocation(line: 150, column: 7, scope: !1309)
!1336 = !DILocation(line: 154, column: 7, scope: !1309)
!1337 = !DILocation(line: 0, scope: !1292, inlinedAt: !1308)
!1338 = !DILocation(line: 636, column: 3, scope: !1292, inlinedAt: !1308)
!1339 = !DILocation(line: 647, column: 36, scope: !1292, inlinedAt: !1308)
!1340 = !DILocation(line: 649, column: 3, scope: !1292, inlinedAt: !1308)
!1341 = !DILocation(line: 649, column: 33, scope: !1292, inlinedAt: !1308)
!1342 = !DILocation(line: 650, column: 13, scope: !1292, inlinedAt: !1308)
!1343 = !DILocation(line: 649, column: 20, scope: !1292, inlinedAt: !1308)
!1344 = !{!1345, !1317, i64 0}
!1345 = !{!"infomap", !1317, i64 0, !1317, i64 8}
!1346 = !DILocation(line: 649, column: 10, scope: !1292, inlinedAt: !1308)
!1347 = !DILocation(line: 649, column: 28, scope: !1292, inlinedAt: !1308)
!1348 = distinct !{!1348, !1340, !1342}
!1349 = !DILocation(line: 652, column: 17, scope: !1350, inlinedAt: !1308)
!1350 = distinct !DILexicalBlock(scope: !1292, file: !6, line: 652, column: 7)
!1351 = !{!1345, !1317, i64 8}
!1352 = !DILocation(line: 652, column: 7, scope: !1350, inlinedAt: !1308)
!1353 = !DILocation(line: 652, column: 7, scope: !1292, inlinedAt: !1308)
!1354 = !DILocation(line: 655, column: 3, scope: !1292, inlinedAt: !1308)
!1355 = !DILocation(line: 659, column: 29, scope: !1292, inlinedAt: !1308)
!1356 = !DILocation(line: 660, column: 7, scope: !1357, inlinedAt: !1308)
!1357 = distinct !DILexicalBlock(scope: !1292, file: !6, line: 660, column: 7)
!1358 = !DILocation(line: 660, column: 19, scope: !1357, inlinedAt: !1308)
!1359 = !DILocation(line: 660, column: 22, scope: !1357, inlinedAt: !1308)
!1360 = !DILocation(line: 660, column: 7, scope: !1292, inlinedAt: !1308)
!1361 = !DILocation(line: 666, column: 7, scope: !1362, inlinedAt: !1308)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !6, line: 661, column: 5)
!1363 = !DILocation(line: 668, column: 5, scope: !1362, inlinedAt: !1308)
!1364 = !DILocation(line: 669, column: 3, scope: !1292, inlinedAt: !1308)
!1365 = !DILocation(line: 671, column: 3, scope: !1292, inlinedAt: !1308)
!1366 = !DILocation(line: 673, column: 1, scope: !1292, inlinedAt: !1308)
!1367 = !DILocation(line: 162, column: 3, scope: !1288)
!1368 = !DILocalVariable(name: "set", scope: !1369, file: !3, line: 719, type: !392)
!1369 = distinct !DISubprogram(name: "set_signal_proc_mask", scope: !3, file: !3, line: 716, type: !153, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1370)
!1370 = !{!1368, !1371, !1372, !1374}
!1371 = !DILocalVariable(name: "debug_act", scope: !1369, file: !3, line: 720, type: !73)
!1372 = !DILocalVariable(name: "i", scope: !1373, file: !3, line: 727, type: !75)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 727, column: 3)
!1374 = !DILocalVariable(name: "signame", scope: !1375, file: !3, line: 746, type: !1379)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 745, column: 9)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 744, column: 11)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 728, column: 5)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 727, column: 3)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 152, elements: !1380)
!1380 = !{!1381}
!1381 = !DISubrange(count: 19)
!1382 = !DILocation(line: 719, column: 12, scope: !1369, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 922, column: 5, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !346, file: !3, line: 921, column: 7)
!1385 = !DILocalVariable(name: "act", scope: !1386, file: !3, line: 630, type: !238)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 629, column: 5)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 628, column: 3)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 628, column: 3)
!1389 = distinct !DISubprogram(name: "reset_signal_handlers", scope: !3, file: !3, line: 626, type: !153, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1390)
!1390 = !{!1391, !1385, !1392, !1393, !1394, !1395}
!1391 = !DILocalVariable(name: "i", scope: !1388, file: !3, line: 628, type: !75)
!1392 = !DILocalVariable(name: "ignore_errors", scope: !1386, file: !3, line: 635, type: !355)
!1393 = !DILocalVariable(name: "set_to_default", scope: !1386, file: !3, line: 638, type: !355)
!1394 = !DILocalVariable(name: "sig_err", scope: !1386, file: !3, line: 641, type: !75)
!1395 = !DILocalVariable(name: "signame", scope: !1396, file: !3, line: 658, type: !1379)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 657, column: 9)
!1397 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 656, column: 11)
!1398 = !DILocation(line: 630, column: 24, scope: !1386, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 920, column: 3, scope: !346)
!1400 = !DILocalVariable(name: "set", scope: !1401, file: !3, line: 760, type: !392)
!1401 = distinct !DISubprogram(name: "list_signal_handling", scope: !3, file: !3, line: 758, type: !153, scopeLine: 759, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1402)
!1402 = !{!1400, !1403, !1404, !1406, !1409, !1410, !1411}
!1403 = !DILocalVariable(name: "signame", scope: !1401, file: !3, line: 761, type: !1379)
!1404 = !DILocalVariable(name: "i", scope: !1405, file: !3, line: 767, type: !75)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 767, column: 3)
!1406 = !DILocalVariable(name: "act", scope: !1407, file: !3, line: 769, type: !238)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 768, column: 5)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 767, column: 3)
!1409 = !DILocalVariable(name: "ignored", scope: !1407, file: !3, line: 773, type: !73)
!1410 = !DILocalVariable(name: "blocked", scope: !1407, file: !3, line: 774, type: !73)
!1411 = !DILocalVariable(name: "connect", scope: !1407, file: !3, line: 775, type: !73)
!1412 = !DILocation(line: 760, column: 12, scope: !1401, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 925, column: 5, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !346, file: !3, line: 924, column: 7)
!1415 = !DILocation(line: 746, column: 16, scope: !1375, inlinedAt: !1383)
!1416 = !DILocation(line: 658, column: 16, scope: !1396, inlinedAt: !1399)
!1417 = !DILocation(line: 761, column: 8, scope: !1401, inlinedAt: !1413)
!1418 = !DILocation(line: 769, column: 24, scope: !1407, inlinedAt: !1413)
!1419 = !DILocation(line: 0, scope: !346)
!1420 = !DILocation(line: 806, column: 21, scope: !346)
!1421 = !DILocation(line: 806, column: 3, scope: !346)
!1422 = !DILocation(line: 807, column: 3, scope: !346)
!1423 = !DILocation(line: 808, column: 3, scope: !346)
!1424 = !DILocation(line: 809, column: 3, scope: !346)
!1425 = !DILocalVariable(name: "status", arg: 1, scope: !1426, file: !6, line: 99, type: !75)
!1426 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !247, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1427)
!1427 = !{!1425}
!1428 = !DILocation(line: 0, scope: !1426, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 811, column: 3, scope: !346)
!1430 = !DILocation(line: 102, column: 18, scope: !1431, inlinedAt: !1429)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !6, line: 101, column: 7)
!1432 = !{!1433, !1433, i64 0}
!1433 = !{!"int", !1318, i64 0}
!1434 = !DILocation(line: 812, column: 3, scope: !346)
!1435 = !DILocation(line: 789, column: 13, scope: !1436, inlinedAt: !1440)
!1436 = distinct !DISubprogram(name: "initialize_signals", scope: !3, file: !3, line: 787, type: !153, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1437)
!1437 = !{!1438}
!1438 = !DILocalVariable(name: "i", scope: !1439, file: !3, line: 791, type: !75)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 791, column: 3)
!1440 = distinct !DILocation(line: 814, column: 3, scope: !346)
!1441 = !DILocation(line: 789, column: 11, scope: !1436, inlinedAt: !1440)
!1442 = !DILocation(line: 0, scope: !1439, inlinedAt: !1440)
!1443 = !DILocation(line: 792, column: 16, scope: !1444, inlinedAt: !1440)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 791, column: 3)
!1445 = !DILocation(line: 816, column: 3, scope: !346)
!1446 = !DILocation(line: 803, column: 15, scope: !346)
!1447 = !DILocation(line: 802, column: 8, scope: !346)
!1448 = !DILocation(line: 801, column: 8, scope: !346)
!1449 = !DILocation(line: 816, column: 18, scope: !346)
!1450 = !DILocation(line: 824, column: 29, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 819, column: 9)
!1452 = distinct !DILexicalBlock(scope: !346, file: !3, line: 817, column: 5)
!1453 = !DILocalVariable(name: "var", arg: 1, scope: !1454, file: !3, line: 166, type: !73)
!1454 = distinct !DISubprogram(name: "append_unset_var", scope: !3, file: !3, line: 166, type: !136, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1455)
!1455 = !{!1453}
!1456 = !DILocation(line: 0, scope: !1454, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 824, column: 11, scope: !1451)
!1458 = !DILocation(line: 168, column: 7, scope: !1459, inlinedAt: !1457)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 168, column: 7)
!1460 = !{!1461, !1461, i64 0}
!1461 = !{!"long", !1318, i64 0}
!1462 = !DILocation(line: 168, column: 22, scope: !1459, inlinedAt: !1457)
!1463 = !DILocation(line: 168, column: 19, scope: !1459, inlinedAt: !1457)
!1464 = !DILocation(line: 168, column: 7, scope: !1454, inlinedAt: !1457)
!1465 = !DILocation(line: 170, column: 3, scope: !1454, inlinedAt: !1457)
!1466 = !DILocation(line: 169, column: 26, scope: !1459, inlinedAt: !1457)
!1467 = !DILocation(line: 0, scope: !36, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 169, column: 14, scope: !1459, inlinedAt: !1457)
!1469 = !DILocation(line: 178, column: 9, scope: !1470, inlinedAt: !1468)
!1470 = distinct !DILexicalBlock(scope: !36, file: !35, line: 178, column: 7)
!1471 = !DILocation(line: 178, column: 7, scope: !36, inlinedAt: !1468)
!1472 = !DILocation(line: 180, column: 13, scope: !1473, inlinedAt: !1468)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !35, line: 180, column: 11)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !35, line: 179, column: 5)
!1475 = !DILocation(line: 180, column: 11, scope: !1474, inlinedAt: !1468)
!1476 = !DILocation(line: 191, column: 11, scope: !1477, inlinedAt: !1468)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !35, line: 191, column: 11)
!1478 = !DILocation(line: 191, column: 11, scope: !1474, inlinedAt: !1468)
!1479 = !DILocation(line: 192, column: 9, scope: !1477, inlinedAt: !1468)
!1480 = !DILocation(line: 201, column: 11, scope: !1481, inlinedAt: !1468)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !35, line: 200, column: 11)
!1482 = distinct !DILexicalBlock(scope: !1470, file: !35, line: 195, column: 5)
!1483 = !DILocation(line: 200, column: 11, scope: !1482, inlinedAt: !1468)
!1484 = !DILocation(line: 202, column: 9, scope: !1481, inlinedAt: !1468)
!1485 = !DILocation(line: 203, column: 14, scope: !1482, inlinedAt: !1468)
!1486 = !DILocation(line: 203, column: 18, scope: !1482, inlinedAt: !1468)
!1487 = !DILocation(line: 203, column: 9, scope: !1482, inlinedAt: !1468)
!1488 = !DILocation(line: 206, column: 7, scope: !36, inlinedAt: !1468)
!1489 = !DILocation(line: 207, column: 25, scope: !36, inlinedAt: !1468)
!1490 = !DILocation(line: 207, column: 10, scope: !36, inlinedAt: !1468)
!1491 = !DILocation(line: 169, column: 12, scope: !1459, inlinedAt: !1457)
!1492 = !DILocation(line: 169, column: 5, scope: !1459, inlinedAt: !1457)
!1493 = !DILocation(line: 170, column: 21, scope: !1454, inlinedAt: !1457)
!1494 = !DILocation(line: 170, column: 25, scope: !1454, inlinedAt: !1457)
!1495 = !DILocation(line: 825, column: 11, scope: !1451)
!1496 = !DILocation(line: 827, column: 21, scope: !1451)
!1497 = !DILocation(line: 828, column: 11, scope: !1451)
!1498 = !DILocation(line: 831, column: 11, scope: !1451)
!1499 = !DILocation(line: 833, column: 39, scope: !1451)
!1500 = !DILocation(line: 833, column: 11, scope: !1451)
!1501 = !DILocation(line: 834, column: 38, scope: !1451)
!1502 = !DILocation(line: 834, column: 11, scope: !1451)
!1503 = !DILocation(line: 835, column: 11, scope: !1451)
!1504 = !DILocation(line: 837, column: 39, scope: !1451)
!1505 = !DILocation(line: 837, column: 11, scope: !1451)
!1506 = !DILocation(line: 838, column: 11, scope: !1451)
!1507 = !DILocation(line: 840, column: 38, scope: !1451)
!1508 = !DILocation(line: 840, column: 11, scope: !1451)
!1509 = !DILocation(line: 841, column: 11, scope: !1451)
!1510 = !DILocation(line: 843, column: 34, scope: !1451)
!1511 = !DILocation(line: 844, column: 11, scope: !1451)
!1512 = !DILocation(line: 846, column: 20, scope: !1451)
!1513 = !DILocation(line: 847, column: 11, scope: !1451)
!1514 = !DILocation(line: 849, column: 31, scope: !1451)
!1515 = !DILocalVariable(name: "str", arg: 1, scope: !1516, file: !3, line: 536, type: !73)
!1516 = distinct !DISubprogram(name: "parse_split_string", scope: !3, file: !3, line: 536, type: !1517, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1520)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !73, !168, !168, !1519}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!1520 = !{!1515, !1521, !1522, !1523, !1524, !1525, !1526, !1527}
!1521 = !DILocalVariable(name: "orig_optind", arg: 2, scope: !1516, file: !3, line: 536, type: !168)
!1522 = !DILocalVariable(name: "orig_argc", arg: 3, scope: !1516, file: !3, line: 537, type: !168)
!1523 = !DILocalVariable(name: "orig_argv", arg: 4, scope: !1516, file: !3, line: 537, type: !1519)
!1524 = !DILocalVariable(name: "i", scope: !1516, file: !3, line: 539, type: !75)
!1525 = !DILocalVariable(name: "newargc", scope: !1516, file: !3, line: 539, type: !75)
!1526 = !DILocalVariable(name: "newargv", scope: !1516, file: !3, line: 540, type: !349)
!1527 = !DILocalVariable(name: "nextargv", scope: !1516, file: !3, line: 540, type: !349)
!1528 = !DILocation(line: 0, scope: !1516, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 849, column: 11, scope: !1451)
!1530 = !DILocation(line: 543, column: 3, scope: !1516, inlinedAt: !1529)
!1531 = !DILocation(line: 543, column: 10, scope: !1516, inlinedAt: !1529)
!1532 = !{!1318, !1318, i64 0}
!1533 = !{!1534, !1534, i64 0}
!1534 = !{!"short", !1318, i64 0}
!1535 = !DILocation(line: 544, column: 8, scope: !1516, inlinedAt: !1529)
!1536 = distinct !{!1536, !1530, !1535}
!1537 = !DILocation(line: 545, column: 12, scope: !1538, inlinedAt: !1529)
!1538 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 545, column: 7)
!1539 = !DILocation(line: 545, column: 7, scope: !1516, inlinedAt: !1529)
!1540 = !DILocation(line: 548, column: 43, scope: !1516, inlinedAt: !1529)
!1541 = !DILocalVariable(name: "str", arg: 1, scope: !1542, file: !3, line: 373, type: !73)
!1542 = distinct !DISubprogram(name: "build_argv", scope: !3, file: !3, line: 373, type: !1543, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1545)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!349, !73, !75}
!1545 = !{!1541, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1557, !1560, !1561}
!1546 = !DILocalVariable(name: "extra_argc", arg: 2, scope: !1542, file: !3, line: 373, type: !75)
!1547 = !DILocalVariable(name: "dq", scope: !1542, file: !3, line: 375, type: !355)
!1548 = !DILocalVariable(name: "sq", scope: !1542, file: !3, line: 375, type: !355)
!1549 = !DILocalVariable(name: "sep", scope: !1542, file: !3, line: 375, type: !355)
!1550 = !DILocalVariable(name: "dest", scope: !1542, file: !3, line: 376, type: !71)
!1551 = !DILocalVariable(name: "newargv", scope: !1542, file: !3, line: 378, type: !349)
!1552 = !DILocalVariable(name: "nextargv", scope: !1542, file: !3, line: 378, type: !349)
!1553 = !DILocalVariable(name: "newargc", scope: !1542, file: !3, line: 379, type: !75)
!1554 = !DILocalVariable(name: "buflen", scope: !1542, file: !3, line: 380, type: !41)
!1555 = !DILocalVariable(name: "newc", scope: !1556, file: !3, line: 416, type: !72)
!1556 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 415, column: 5)
!1557 = !DILocalVariable(name: "n", scope: !1558, file: !3, line: 487, type: !71)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 486, column: 11)
!1559 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 419, column: 9)
!1560 = !DILocalVariable(name: "v", scope: !1558, file: !3, line: 488, type: !71)
!1561 = !DILabel(scope: !1542, name: "eos", file: !3, line: 509)
!1562 = !DILocation(line: 0, scope: !1542, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 548, column: 13, scope: !1516, inlinedAt: !1529)
!1564 = !DILocalVariable(name: "str", arg: 1, scope: !1565, file: !3, line: 272, type: !73)
!1565 = distinct !DISubprogram(name: "validate_split_str", scope: !3, file: !3, line: 272, type: !1566, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1568)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !73, !40, !168}
!1568 = !{!1564, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577}
!1569 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1565, file: !3, line: 272, type: !40)
!1570 = !DILocalVariable(name: "maxargc", arg: 3, scope: !1565, file: !3, line: 273, type: !168)
!1571 = !DILocalVariable(name: "dq", scope: !1565, file: !3, line: 275, type: !355)
!1572 = !DILocalVariable(name: "sq", scope: !1565, file: !3, line: 275, type: !355)
!1573 = !DILocalVariable(name: "sp", scope: !1565, file: !3, line: 275, type: !355)
!1574 = !DILocalVariable(name: "pch", scope: !1565, file: !3, line: 276, type: !73)
!1575 = !DILocalVariable(name: "buflen", scope: !1565, file: !3, line: 277, type: !41)
!1576 = !DILocalVariable(name: "cnt", scope: !1565, file: !3, line: 278, type: !75)
!1577 = !DILocalVariable(name: "next", scope: !1578, file: !3, line: 287, type: !74)
!1578 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 286, column: 5)
!1579 = !DILocation(line: 0, scope: !1565, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 397, column: 3, scope: !1542, inlinedAt: !1563)
!1581 = !DILocation(line: 283, column: 12, scope: !1565, inlinedAt: !1580)
!1582 = !DILocation(line: 283, column: 24, scope: !1565, inlinedAt: !1580)
!1583 = !DILocation(line: 285, column: 3, scope: !1565, inlinedAt: !1580)
!1584 = !DILocation(line: 289, column: 11, scope: !1585, inlinedAt: !1580)
!1585 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 289, column: 11)
!1586 = !DILocation(line: 287, column: 30, scope: !1578, inlinedAt: !1580)
!1587 = !DILocation(line: 287, column: 25, scope: !1578, inlinedAt: !1580)
!1588 = !DILocation(line: 0, scope: !1578, inlinedAt: !1580)
!1589 = !DILocation(line: 289, column: 26, scope: !1585, inlinedAt: !1580)
!1590 = !DILocation(line: 300, column: 15, scope: !1578, inlinedAt: !1580)
!1591 = !DILocation(line: 300, column: 7, scope: !1578, inlinedAt: !1580)
!1592 = !DILocation(line: 303, column: 11, scope: !1593, inlinedAt: !1580)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 303, column: 11)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 303, column: 11)
!1595 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 301, column: 9)
!1596 = !DILocation(line: 304, column: 14, scope: !1595, inlinedAt: !1580)
!1597 = !DILocation(line: 305, column: 11, scope: !1595, inlinedAt: !1580)
!1598 = !DILocation(line: 308, column: 11, scope: !1599, inlinedAt: !1580)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 308, column: 11)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 308, column: 11)
!1601 = !DILocation(line: 309, column: 14, scope: !1595, inlinedAt: !1580)
!1602 = !DILocation(line: 310, column: 11, scope: !1595, inlinedAt: !1580)
!1603 = !DILocation(line: 289, column: 30, scope: !1585, inlinedAt: !1580)
!1604 = !DILocation(line: 313, column: 15, scope: !1605, inlinedAt: !1580)
!1605 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 313, column: 15)
!1606 = !DILocation(line: 313, column: 26, scope: !1605, inlinedAt: !1580)
!1607 = !DILocation(line: 313, column: 18, scope: !1605, inlinedAt: !1580)
!1608 = !DILocation(line: 314, column: 13, scope: !1605, inlinedAt: !1580)
!1609 = !DILocation(line: 317, column: 15, scope: !1595, inlinedAt: !1580)
!1610 = !DILocation(line: 318, column: 13, scope: !1611, inlinedAt: !1580)
!1611 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 317, column: 15)
!1612 = !DILocation(line: 317, column: 15, scope: !1611, inlinedAt: !1580)
!1613 = !DILocation(line: 322, column: 13, scope: !1614, inlinedAt: !1580)
!1614 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 321, column: 15)
!1615 = !DILocation(line: 324, column: 20, scope: !1616, inlinedAt: !1580)
!1616 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 324, column: 15)
!1617 = !DILocation(line: 324, column: 15, scope: !1595, inlinedAt: !1580)
!1618 = !DILocation(line: 328, column: 11, scope: !1595, inlinedAt: !1580)
!1619 = !DILocation(line: 289, column: 37, scope: !1585, inlinedAt: !1580)
!1620 = !DILocation(line: 332, column: 15, scope: !1595, inlinedAt: !1580)
!1621 = !DILocation(line: 335, column: 23, scope: !1622, inlinedAt: !1580)
!1622 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 335, column: 15)
!1623 = !DILocation(line: 335, column: 21, scope: !1622, inlinedAt: !1580)
!1624 = !DILocation(line: 335, column: 15, scope: !1595, inlinedAt: !1580)
!1625 = !DILocation(line: 336, column: 13, scope: !1622, inlinedAt: !1580)
!1626 = !DILocation(line: 339, column: 22, scope: !1627, inlinedAt: !1580)
!1627 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 339, column: 15)
!1628 = !DILocation(line: 339, column: 20, scope: !1627, inlinedAt: !1580)
!1629 = !DILocation(line: 339, column: 15, scope: !1595, inlinedAt: !1580)
!1630 = !DILocation(line: 340, column: 23, scope: !1627, inlinedAt: !1580)
!1631 = !DILocation(line: 340, column: 20, scope: !1627, inlinedAt: !1580)
!1632 = !DILocation(line: 340, column: 13, scope: !1627, inlinedAt: !1580)
!1633 = !DILocation(line: 343, column: 7, scope: !1578, inlinedAt: !1580)
!1634 = !DILocation(line: 285, column: 10, scope: !1565, inlinedAt: !1580)
!1635 = distinct !{!1635, !1583, !1636}
!1636 = !DILocation(line: 344, column: 5, scope: !1565, inlinedAt: !1580)
!1637 = !DILocation(line: 0, scope: !1585, inlinedAt: !1580)
!1638 = !DILocation(line: 346, column: 10, scope: !1639, inlinedAt: !1580)
!1639 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 346, column: 7)
!1640 = !DILocation(line: 347, column: 5, scope: !1639, inlinedAt: !1580)
!1641 = !DILocation(line: 400, column: 30, scope: !1542, inlinedAt: !1563)
!1642 = !DILocation(line: 400, column: 10, scope: !1542, inlinedAt: !1563)
!1643 = !DILocation(line: 548, column: 41, scope: !1516, inlinedAt: !1529)
!1644 = !DILocation(line: 404, column: 42, scope: !1542, inlinedAt: !1563)
!1645 = !DILocation(line: 404, column: 55, scope: !1542, inlinedAt: !1563)
!1646 = !DILocation(line: 404, column: 33, scope: !1542, inlinedAt: !1563)
!1647 = !DILocation(line: 404, column: 60, scope: !1542, inlinedAt: !1563)
!1648 = !DILocation(line: 404, column: 24, scope: !1542, inlinedAt: !1563)
!1649 = !DILocalVariable(name: "__dest", arg: 1, scope: !1650, file: !1651, line: 88, type: !1654)
!1650 = distinct !DISubprogram(name: "strcpy", scope: !1651, file: !1651, line: 88, type: !1652, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1656)
!1651 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!71, !1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!1655 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!1656 = !{!1649, !1657}
!1657 = !DILocalVariable(name: "__src", arg: 2, scope: !1650, file: !1651, line: 88, type: !1655)
!1658 = !DILocation(line: 0, scope: !1650, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 407, column: 3, scope: !1542, inlinedAt: !1563)
!1660 = !DILocation(line: 90, column: 10, scope: !1650, inlinedAt: !1659)
!1661 = !DILocation(line: 408, column: 12, scope: !1542, inlinedAt: !1563)
!1662 = !DILocation(line: 408, column: 15, scope: !1542, inlinedAt: !1563)
!1663 = !DILocation(line: 409, column: 8, scope: !1542, inlinedAt: !1563)
!1664 = !DILocation(line: 414, column: 10, scope: !1542, inlinedAt: !1563)
!1665 = !DILocation(line: 414, column: 3, scope: !1542, inlinedAt: !1563)
!1666 = !DILocation(line: 0, scope: !1556, inlinedAt: !1563)
!1667 = !DILocation(line: 418, column: 15, scope: !1556, inlinedAt: !1563)
!1668 = !DILocation(line: 418, column: 7, scope: !1556, inlinedAt: !1563)
!1669 = !DILocation(line: 421, column: 15, scope: !1670, inlinedAt: !1563)
!1670 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 421, column: 15)
!1671 = !DILocation(line: 421, column: 15, scope: !1559, inlinedAt: !1563)
!1672 = !DILocation(line: 423, column: 17, scope: !1559, inlinedAt: !1563)
!1673 = !DILocation(line: 423, column: 14, scope: !1559, inlinedAt: !1563)
!1674 = !DILocation(line: 424, column: 11, scope: !1675, inlinedAt: !1563)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 424, column: 11)
!1676 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 424, column: 11)
!1677 = !DILocation(line: 424, column: 11, scope: !1676, inlinedAt: !1563)
!1678 = !DILocation(line: 424, column: 11, scope: !1679, inlinedAt: !1563)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 424, column: 11)
!1680 = !DILocation(line: 425, column: 11, scope: !1559, inlinedAt: !1563)
!1681 = !DILocation(line: 426, column: 11, scope: !1559, inlinedAt: !1563)
!1682 = distinct !{!1682, !1665, !1683}
!1683 = !DILocation(line: 507, column: 5, scope: !1542, inlinedAt: !1563)
!1684 = !DILocation(line: 429, column: 15, scope: !1685, inlinedAt: !1563)
!1685 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 429, column: 15)
!1686 = !DILocation(line: 429, column: 15, scope: !1559, inlinedAt: !1563)
!1687 = !DILocation(line: 431, column: 17, scope: !1559, inlinedAt: !1563)
!1688 = !DILocation(line: 431, column: 14, scope: !1559, inlinedAt: !1563)
!1689 = !DILocation(line: 432, column: 11, scope: !1690, inlinedAt: !1563)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 432, column: 11)
!1691 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 432, column: 11)
!1692 = !DILocation(line: 432, column: 11, scope: !1691, inlinedAt: !1563)
!1693 = !DILocation(line: 432, column: 11, scope: !1694, inlinedAt: !1563)
!1694 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 432, column: 11)
!1695 = !DILocation(line: 433, column: 11, scope: !1559, inlinedAt: !1563)
!1696 = !DILocation(line: 434, column: 11, scope: !1559, inlinedAt: !1563)
!1697 = distinct !{!1697, !1665, !1683}
!1698 = !DILocation(line: 439, column: 18, scope: !1699, inlinedAt: !1563)
!1699 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 439, column: 15)
!1700 = !DILocation(line: 442, column: 18, scope: !1559, inlinedAt: !1563)
!1701 = !DILocation(line: 442, column: 15, scope: !1559, inlinedAt: !1563)
!1702 = !DILocation(line: 443, column: 11, scope: !1559, inlinedAt: !1563)
!1703 = distinct !{!1703, !1665, !1683}
!1704 = !DILocation(line: 446, column: 16, scope: !1705, inlinedAt: !1563)
!1705 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 446, column: 15)
!1706 = !DILocation(line: 446, column: 15, scope: !1559, inlinedAt: !1563)
!1707 = !DILocation(line: 452, column: 15, scope: !1708, inlinedAt: !1563)
!1708 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 452, column: 15)
!1709 = !DILocation(line: 0, scope: !1559, inlinedAt: !1563)
!1710 = !DILocation(line: 452, column: 18, scope: !1708, inlinedAt: !1563)
!1711 = !DILocation(line: 452, column: 38, scope: !1708, inlinedAt: !1563)
!1712 = !DILocation(line: 457, column: 29, scope: !1713, inlinedAt: !1563)
!1713 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 457, column: 15)
!1714 = !DILocation(line: 464, column: 20, scope: !1715, inlinedAt: !1563)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 464, column: 19)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 463, column: 13)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 462, column: 20)
!1718 = !DILocation(line: 464, column: 19, scope: !1716, inlinedAt: !1563)
!1719 = !DILocation(line: 466, column: 19, scope: !1720, inlinedAt: !1563)
!1720 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 465, column: 17)
!1721 = !DILocation(line: 468, column: 19, scope: !1720, inlinedAt: !1563)
!1722 = distinct !{!1722, !1665, !1683}
!1723 = !DILocalVariable(name: "c", arg: 1, scope: !1724, file: !3, line: 200, type: !74)
!1724 = distinct !DISubprogram(name: "escape_char", scope: !3, file: !3, line: 200, type: !1725, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1727)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!72, !74}
!1727 = !{!1723}
!1728 = !DILocation(line: 0, scope: !1724, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 476, column: 22, scope: !1730, inlinedAt: !1563)
!1730 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 473, column: 20)
!1731 = !DILocation(line: 202, column: 11, scope: !1724, inlinedAt: !1729)
!1732 = !DILocation(line: 202, column: 3, scope: !1724, inlinedAt: !1729)
!1733 = !DILocation(line: 206, column: 15, scope: !1734, inlinedAt: !1729)
!1734 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 203, column: 5)
!1735 = !DILocation(line: 207, column: 15, scope: !1734, inlinedAt: !1729)
!1736 = !DILocation(line: 208, column: 15, scope: !1734, inlinedAt: !1729)
!1737 = !DILocation(line: 209, column: 15, scope: !1734, inlinedAt: !1729)
!1738 = !DILocation(line: 210, column: 15, scope: !1739, inlinedAt: !1729)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 210, column: 15)
!1740 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 210, column: 15)
!1741 = !DILocation(line: 481, column: 15, scope: !1742, inlinedAt: !1563)
!1742 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 481, column: 15)
!1743 = !DILocation(line: 481, column: 15, scope: !1559, inlinedAt: !1563)
!1744 = !DILocation(line: 487, column: 23, scope: !1558, inlinedAt: !1563)
!1745 = !DILocation(line: 0, scope: !1558, inlinedAt: !1563)
!1746 = !DILocation(line: 488, column: 23, scope: !1558, inlinedAt: !1563)
!1747 = !DILocation(line: 489, column: 17, scope: !1748, inlinedAt: !1563)
!1748 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 489, column: 17)
!1749 = !DILocation(line: 489, column: 17, scope: !1558, inlinedAt: !1563)
!1750 = !DILocation(line: 491, column: 17, scope: !1751, inlinedAt: !1563)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 491, column: 17)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 491, column: 17)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 490, column: 15)
!1754 = !DILocation(line: 491, column: 17, scope: !1752, inlinedAt: !1563)
!1755 = !DILocation(line: 491, column: 17, scope: !1756, inlinedAt: !1563)
!1756 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 491, column: 17)
!1757 = !DILocation(line: 492, column: 17, scope: !1758, inlinedAt: !1563)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 492, column: 17)
!1759 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 492, column: 17)
!1760 = !DILocation(line: 492, column: 17, scope: !1759, inlinedAt: !1563)
!1761 = !DILocalVariable(name: "__dest", arg: 1, scope: !1762, file: !1651, line: 95, type: !1654)
!1762 = distinct !DISubprogram(name: "stpcpy", scope: !1651, file: !1651, line: 95, type: !1652, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1763)
!1763 = !{!1761, !1764}
!1764 = !DILocalVariable(name: "__src", arg: 2, scope: !1762, file: !1651, line: 95, type: !1655)
!1765 = !DILocation(line: 0, scope: !1762, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 493, column: 24, scope: !1753, inlinedAt: !1563)
!1767 = !DILocation(line: 97, column: 10, scope: !1762, inlinedAt: !1766)
!1768 = !DILocation(line: 494, column: 15, scope: !1753, inlinedAt: !1563)
!1769 = !DILocation(line: 496, column: 15, scope: !1770, inlinedAt: !1563)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 496, column: 15)
!1771 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 496, column: 15)
!1772 = !DILocation(line: 496, column: 15, scope: !1771, inlinedAt: !1563)
!1773 = !DILocation(line: 498, column: 19, scope: !1558, inlinedAt: !1563)
!1774 = !DILocation(line: 498, column: 37, scope: !1558, inlinedAt: !1563)
!1775 = !DILocation(line: 504, column: 7, scope: !1776, inlinedAt: !1563)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 504, column: 7)
!1777 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 504, column: 7)
!1778 = !DILocation(line: 504, column: 7, scope: !1777, inlinedAt: !1563)
!1779 = !DILocation(line: 504, column: 7, scope: !1780, inlinedAt: !1563)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 504, column: 7)
!1781 = !DILocation(line: 505, column: 12, scope: !1556, inlinedAt: !1563)
!1782 = !DILocation(line: 505, column: 15, scope: !1556, inlinedAt: !1563)
!1783 = !DILocation(line: 506, column: 7, scope: !1556, inlinedAt: !1563)
!1784 = !DILocation(line: 509, column: 2, scope: !1542, inlinedAt: !1563)
!1785 = !DILocation(line: 510, column: 9, scope: !1542, inlinedAt: !1563)
!1786 = !DILocation(line: 511, column: 13, scope: !1542, inlinedAt: !1563)
!1787 = !DILocation(line: 551, column: 15, scope: !1516, inlinedAt: !1529)
!1788 = !DILocation(line: 551, column: 14, scope: !1516, inlinedAt: !1529)
!1789 = !DILocation(line: 551, column: 12, scope: !1516, inlinedAt: !1529)
!1790 = !DILocation(line: 557, column: 7, scope: !1791, inlinedAt: !1529)
!1791 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 557, column: 7)
!1792 = !DILocation(line: 557, column: 17, scope: !1791, inlinedAt: !1529)
!1793 = !DILocation(line: 567, column: 7, scope: !1794, inlinedAt: !1529)
!1794 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 565, column: 5)
!1795 = !DILocation(line: 557, column: 20, scope: !1791, inlinedAt: !1529)
!1796 = !DILocation(line: 557, column: 7, scope: !1516, inlinedAt: !1529)
!1797 = !DILocation(line: 559, column: 7, scope: !1798, inlinedAt: !1529)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 559, column: 7)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 559, column: 7)
!1800 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 558, column: 5)
!1801 = !DILocation(line: 560, column: 7, scope: !1802, inlinedAt: !1529)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 560, column: 7)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 560, column: 7)
!1804 = !DILocation(line: 560, column: 7, scope: !1803, inlinedAt: !1529)
!1805 = !DILocation(line: 561, column: 14, scope: !1800, inlinedAt: !1529)
!1806 = !DILocation(line: 561, column: 7, scope: !1800, inlinedAt: !1529)
!1807 = !DILocation(line: 562, column: 9, scope: !1808, inlinedAt: !1529)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 562, column: 9)
!1809 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 562, column: 9)
!1810 = !DILocation(line: 562, column: 9, scope: !1809, inlinedAt: !1529)
!1811 = !DILocation(line: 0, scope: !1800, inlinedAt: !1529)
!1812 = distinct !{!1812, !1806, !1813}
!1813 = !DILocation(line: 562, column: 9, scope: !1800, inlinedAt: !1529)
!1814 = !DILocation(line: 567, column: 14, scope: !1794, inlinedAt: !1529)
!1815 = !DILocation(line: 568, column: 9, scope: !1794, inlinedAt: !1529)
!1816 = distinct !{!1816, !1793, !1817}
!1817 = !DILocation(line: 568, column: 11, scope: !1794, inlinedAt: !1529)
!1818 = !DILocation(line: 572, column: 12, scope: !1819, inlinedAt: !1529)
!1819 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 572, column: 3)
!1820 = !DILocation(line: 572, column: 28, scope: !1821, inlinedAt: !1529)
!1821 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 572, column: 3)
!1822 = !DILocation(line: 572, column: 3, scope: !1819, inlinedAt: !1529)
!1823 = !DILocation(line: 573, column: 19, scope: !1821, inlinedAt: !1529)
!1824 = !{!1825}
!1825 = distinct !{!1825, !1826}
!1826 = distinct !{!1826, !"LVerDomain"}
!1827 = !DILocation(line: 573, column: 17, scope: !1821, inlinedAt: !1529)
!1828 = !{!1829}
!1829 = distinct !{!1829, !1826}
!1830 = distinct !{!1830, !1822, !1831, !1832}
!1831 = !DILocation(line: 573, column: 33, scope: !1819, inlinedAt: !1529)
!1832 = !{!"llvm.loop.isvectorized", i32 1}
!1833 = distinct !{!1833, !1834}
!1834 = !{!"llvm.loop.unroll.disable"}
!1835 = !DILocation(line: 573, column: 14, scope: !1821, inlinedAt: !1529)
!1836 = !DILocation(line: 572, column: 42, scope: !1821, inlinedAt: !1529)
!1837 = distinct !{!1837, !1834}
!1838 = distinct !{!1838, !1822, !1831, !1832}
!1839 = !DILocation(line: 574, column: 13, scope: !1516, inlinedAt: !1529)
!1840 = !DILocation(line: 578, column: 28, scope: !1841, inlinedAt: !1529)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 578, column: 3)
!1842 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 578, column: 3)
!1843 = !DILocation(line: 578, column: 3, scope: !1842, inlinedAt: !1529)
!1844 = !DILocation(line: 579, column: 5, scope: !1841, inlinedAt: !1529)
!1845 = !DILocation(line: 578, column: 39, scope: !1841, inlinedAt: !1529)
!1846 = distinct !{!1846, !1843, !1847}
!1847 = !DILocation(line: 579, column: 7, scope: !1842, inlinedAt: !1529)
!1848 = !DILocation(line: 584, column: 16, scope: !1516, inlinedAt: !1529)
!1849 = !DILocation(line: 585, column: 1, scope: !1516, inlinedAt: !1529)
!1850 = distinct !{!1850, !1445, !1851}
!1851 = !DILocation(line: 866, column: 5, scope: !346)
!1852 = !DILocation(line: 857, column: 24, scope: !1451)
!1853 = !DILocation(line: 857, column: 11, scope: !1451)
!1854 = !DILocation(line: 858, column: 24, scope: !1451)
!1855 = !DILocation(line: 858, column: 11, scope: !1451)
!1856 = !DILocation(line: 859, column: 11, scope: !1451)
!1857 = !DILocation(line: 861, column: 9, scope: !1451)
!1858 = !DILocation(line: 862, column: 9, scope: !1451)
!1859 = !DILocation(line: 864, column: 11, scope: !1451)
!1860 = !DILocation(line: 868, column: 7, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !346, file: !3, line: 868, column: 7)
!1862 = !DILocation(line: 868, column: 14, scope: !1861)
!1863 = !DILocation(line: 868, column: 21, scope: !1861)
!1864 = !DILocation(line: 868, column: 24, scope: !1861)
!1865 = !DILocation(line: 868, column: 7, scope: !346)
!1866 = !DILocation(line: 871, column: 7, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 869, column: 5)
!1868 = !DILocation(line: 874, column: 7, scope: !346)
!1869 = !DILocation(line: 874, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !346, file: !3, line: 874, column: 7)
!1871 = !DILocation(line: 876, column: 7, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 876, column: 7)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 876, column: 7)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 875, column: 5)
!1875 = !DILocation(line: 876, column: 7, scope: !1873)
!1876 = !DILocation(line: 878, column: 15, scope: !1874)
!1877 = !DILocation(line: 879, column: 5, scope: !1874)
!1878 = !DILocalVariable(name: "i", scope: !1879, file: !3, line: 176, type: !41)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 176, column: 3)
!1880 = distinct !DISubprogram(name: "unset_envvars", scope: !3, file: !3, line: 174, type: !153, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1881)
!1881 = !{!1878}
!1882 = !DILocation(line: 0, scope: !1879, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 881, column: 5, scope: !1870)
!1884 = !DILocation(line: 176, column: 26, scope: !1885, inlinedAt: !1883)
!1885 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 176, column: 3)
!1886 = !DILocation(line: 176, column: 24, scope: !1885, inlinedAt: !1883)
!1887 = !DILocation(line: 176, column: 3, scope: !1879, inlinedAt: !1883)
!1888 = !DILocation(line: 178, column: 7, scope: !1889, inlinedAt: !1883)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 178, column: 7)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 178, column: 7)
!1891 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 177, column: 5)
!1892 = !DILocation(line: 178, column: 7, scope: !1890, inlinedAt: !1883)
!1893 = !DILocation(line: 180, column: 21, scope: !1894, inlinedAt: !1883)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 180, column: 11)
!1895 = !DILocation(line: 180, column: 11, scope: !1894, inlinedAt: !1883)
!1896 = !DILocation(line: 180, column: 11, scope: !1891, inlinedAt: !1883)
!1897 = !DILocation(line: 181, column: 9, scope: !1894, inlinedAt: !1883)
!1898 = !DILocation(line: 176, column: 39, scope: !1885, inlinedAt: !1883)
!1899 = distinct !{!1899, !1887, !1900}
!1900 = !DILocation(line: 183, column: 5, scope: !1879, inlinedAt: !1883)
!1901 = !DILocation(line: 884, column: 10, scope: !346)
!1902 = !DILocation(line: 884, column: 17, scope: !346)
!1903 = !DILocation(line: 884, column: 24, scope: !346)
!1904 = !DILocation(line: 884, column: 41, scope: !346)
!1905 = !DILocation(line: 884, column: 33, scope: !346)
!1906 = !DILocation(line: 884, column: 3, scope: !346)
!1907 = !DILocation(line: 886, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 886, column: 7)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 886, column: 7)
!1910 = distinct !DILexicalBlock(scope: !346, file: !3, line: 885, column: 5)
!1911 = !DILocation(line: 886, column: 7, scope: !1909)
!1912 = !DILocation(line: 888, column: 24, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 888, column: 11)
!1914 = !DILocation(line: 0, scope: !1913)
!1915 = !DILocation(line: 888, column: 19, scope: !1913)
!1916 = !DILocation(line: 888, column: 11, scope: !1913)
!1917 = !DILocation(line: 888, column: 11, scope: !1910)
!1918 = !DILocation(line: 890, column: 15, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 889, column: 9)
!1920 = !DILocation(line: 891, column: 11, scope: !1919)
!1921 = !DILocation(line: 894, column: 13, scope: !1910)
!1922 = distinct !{!1922, !1906, !1923}
!1923 = !DILocation(line: 895, column: 5, scope: !346)
!1924 = !DILocation(line: 899, column: 7, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !346, file: !3, line: 899, column: 7)
!1926 = !DILocation(line: 899, column: 32, scope: !1925)
!1927 = !DILocation(line: 901, column: 20, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 900, column: 5)
!1929 = !DILocation(line: 901, column: 7, scope: !1928)
!1930 = !DILocation(line: 902, column: 7, scope: !1928)
!1931 = !DILocation(line: 905, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !346, file: !3, line: 905, column: 7)
!1933 = !DILocation(line: 905, column: 14, scope: !1932)
!1934 = !DILocation(line: 907, column: 20, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 906, column: 5)
!1936 = !DILocation(line: 907, column: 7, scope: !1935)
!1937 = !DILocation(line: 908, column: 7, scope: !1935)
!1938 = !DILocation(line: 914, column: 24, scope: !361)
!1939 = !DILocation(line: 0, scope: !361)
!1940 = !DILocation(line: 915, column: 14, scope: !361)
!1941 = !DILocation(line: 915, column: 7, scope: !361)
!1942 = !DILocation(line: 916, column: 9, scope: !361)
!1943 = distinct !{!1943, !1941, !1942}
!1944 = !DILocation(line: 0, scope: !1388, inlinedAt: !1399)
!1945 = !DILocation(line: 0, scope: !1386, inlinedAt: !1399)
!1946 = !DILocation(line: 0, scope: !1947, inlinedAt: !1399)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 648, column: 9)
!1948 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 647, column: 11)
!1949 = !DILocation(line: 0, scope: !1396, inlinedAt: !1399)
!1950 = !DILocation(line: 628, column: 3, scope: !1388, inlinedAt: !1399)
!1951 = !DILocation(line: 630, column: 7, scope: !1386, inlinedAt: !1399)
!1952 = !DILocation(line: 632, column: 11, scope: !1953, inlinedAt: !1399)
!1953 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 632, column: 11)
!1954 = !DILocation(line: 632, column: 11, scope: !1386, inlinedAt: !1399)
!1955 = !DILocation(line: 636, column: 29, scope: !1386, inlinedAt: !1399)
!1956 = !DILocation(line: 639, column: 30, scope: !1386, inlinedAt: !1399)
!1957 = !DILocation(line: 641, column: 21, scope: !1386, inlinedAt: !1399)
!1958 = !DILocation(line: 643, column: 11, scope: !1959, inlinedAt: !1399)
!1959 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 643, column: 11)
!1960 = !DILocation(line: 643, column: 19, scope: !1959, inlinedAt: !1399)
!1961 = !DILocation(line: 644, column: 9, scope: !1959, inlinedAt: !1399)
!1962 = !DILocation(line: 647, column: 11, scope: !1386, inlinedAt: !1399)
!1963 = !DILocation(line: 649, column: 28, scope: !1947, inlinedAt: !1399)
!1964 = !DILocation(line: 649, column: 26, scope: !1947, inlinedAt: !1399)
!1965 = !DILocation(line: 651, column: 26, scope: !1966, inlinedAt: !1399)
!1966 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 651, column: 15)
!1967 = !DILocation(line: 651, column: 24, scope: !1966, inlinedAt: !1399)
!1968 = !DILocation(line: 651, column: 53, scope: !1966, inlinedAt: !1399)
!1969 = !DILocation(line: 652, column: 13, scope: !1966, inlinedAt: !1399)
!1970 = !DILocation(line: 656, column: 11, scope: !1397, inlinedAt: !1399)
!1971 = !DILocation(line: 656, column: 11, scope: !1386, inlinedAt: !1399)
!1972 = !DILocation(line: 658, column: 11, scope: !1396, inlinedAt: !1399)
!1973 = !DILocation(line: 659, column: 11, scope: !1396, inlinedAt: !1399)
!1974 = !DILocation(line: 660, column: 11, scope: !1975, inlinedAt: !1399)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 660, column: 11)
!1976 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 660, column: 11)
!1977 = !DILocation(line: 660, column: 11, scope: !1976, inlinedAt: !1399)
!1978 = !DILocation(line: 664, column: 9, scope: !1397, inlinedAt: !1399)
!1979 = !DILocation(line: 664, column: 9, scope: !1396, inlinedAt: !1399)
!1980 = !DILocation(line: 665, column: 5, scope: !1387, inlinedAt: !1399)
!1981 = !DILocation(line: 628, column: 39, scope: !1387, inlinedAt: !1399)
!1982 = !DILocation(line: 628, column: 21, scope: !1387, inlinedAt: !1399)
!1983 = distinct !{!1983, !1950, !1984}
!1984 = !DILocation(line: 665, column: 5, scope: !1388, inlinedAt: !1399)
!1985 = !DILocation(line: 921, column: 7, scope: !1384)
!1986 = !DILocation(line: 921, column: 7, scope: !346)
!1987 = !DILocation(line: 719, column: 3, scope: !1369, inlinedAt: !1383)
!1988 = !DILocation(line: 722, column: 3, scope: !1369, inlinedAt: !1383)
!1989 = !DILocation(line: 724, column: 7, scope: !1990, inlinedAt: !1383)
!1990 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 724, column: 7)
!1991 = !DILocation(line: 724, column: 7, scope: !1369, inlinedAt: !1383)
!1992 = !DILocation(line: 725, column: 5, scope: !1990, inlinedAt: !1383)
!1993 = !DILocation(line: 753, column: 7, scope: !1994, inlinedAt: !1383)
!1994 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 753, column: 7)
!1995 = !DILocation(line: 753, column: 7, scope: !1369, inlinedAt: !1383)
!1996 = !DILocation(line: 0, scope: !1373, inlinedAt: !1383)
!1997 = !DILocation(line: 729, column: 11, scope: !1998, inlinedAt: !1383)
!1998 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 729, column: 11)
!1999 = !DILocation(line: 729, column: 11, scope: !1377, inlinedAt: !1383)
!2000 = !DILocation(line: 731, column: 11, scope: !2001, inlinedAt: !1383)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 730, column: 9)
!2002 = !DILocation(line: 0, scope: !1369, inlinedAt: !1383)
!2003 = !DILocation(line: 733, column: 9, scope: !2001, inlinedAt: !1383)
!2004 = !DILocation(line: 734, column: 16, scope: !2005, inlinedAt: !1383)
!2005 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 734, column: 16)
!2006 = !DILocation(line: 734, column: 16, scope: !1998, inlinedAt: !1383)
!2007 = !DILocation(line: 736, column: 11, scope: !2008, inlinedAt: !1383)
!2008 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 735, column: 9)
!2009 = !DILocation(line: 738, column: 9, scope: !2008, inlinedAt: !1383)
!2010 = !DILocation(line: 0, scope: !1998, inlinedAt: !1383)
!2011 = !DILocation(line: 744, column: 11, scope: !1376, inlinedAt: !1383)
!2012 = !DILocation(line: 744, column: 21, scope: !1376, inlinedAt: !1383)
!2013 = !DILocation(line: 746, column: 11, scope: !1375, inlinedAt: !1383)
!2014 = !DILocation(line: 747, column: 11, scope: !1375, inlinedAt: !1383)
!2015 = !DILocation(line: 748, column: 11, scope: !2016, inlinedAt: !1383)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 748, column: 11)
!2017 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 748, column: 11)
!2018 = !DILocation(line: 748, column: 11, scope: !2017, inlinedAt: !1383)
!2019 = !DILocation(line: 750, column: 9, scope: !1376, inlinedAt: !1383)
!2020 = !DILocation(line: 750, column: 9, scope: !1375, inlinedAt: !1383)
!2021 = !DILocation(line: 727, column: 39, scope: !1378, inlinedAt: !1383)
!2022 = !DILocation(line: 727, column: 21, scope: !1378, inlinedAt: !1383)
!2023 = !DILocation(line: 727, column: 3, scope: !1373, inlinedAt: !1383)
!2024 = distinct !{!2024, !2023, !2025}
!2025 = !DILocation(line: 751, column: 5, scope: !1373, inlinedAt: !1383)
!2026 = !DILocation(line: 754, column: 5, scope: !1994, inlinedAt: !1383)
!2027 = !DILocation(line: 755, column: 1, scope: !1369, inlinedAt: !1383)
!2028 = !DILocation(line: 922, column: 5, scope: !1384)
!2029 = !DILocation(line: 924, column: 7, scope: !1414)
!2030 = !DILocation(line: 924, column: 7, scope: !346)
!2031 = !DILocation(line: 760, column: 3, scope: !1401, inlinedAt: !1413)
!2032 = !DILocation(line: 761, column: 3, scope: !1401, inlinedAt: !1413)
!2033 = !DILocation(line: 763, column: 3, scope: !1401, inlinedAt: !1413)
!2034 = !DILocation(line: 764, column: 7, scope: !2035, inlinedAt: !1413)
!2035 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 764, column: 7)
!2036 = !DILocation(line: 764, column: 7, scope: !1401, inlinedAt: !1413)
!2037 = !DILocation(line: 0, scope: !1405, inlinedAt: !1413)
!2038 = !DILocation(line: 0, scope: !1407, inlinedAt: !1413)
!2039 = !DILocation(line: 767, column: 3, scope: !1405, inlinedAt: !1413)
!2040 = !DILocation(line: 765, column: 5, scope: !2035, inlinedAt: !1413)
!2041 = !DILocation(line: 769, column: 7, scope: !1407, inlinedAt: !1413)
!2042 = !DILocation(line: 770, column: 11, scope: !2043, inlinedAt: !1413)
!2043 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 770, column: 11)
!2044 = !DILocation(line: 770, column: 11, scope: !1407, inlinedAt: !1413)
!2045 = !DILocation(line: 773, column: 33, scope: !1407, inlinedAt: !1413)
!2046 = !DILocation(line: 773, column: 44, scope: !1407, inlinedAt: !1413)
!2047 = !DILocation(line: 773, column: 29, scope: !1407, inlinedAt: !1413)
!2048 = !DILocation(line: 774, column: 29, scope: !1407, inlinedAt: !1413)
!2049 = !DILocation(line: 775, column: 29, scope: !1407, inlinedAt: !1413)
!2050 = !DILocation(line: 775, column: 38, scope: !1407, inlinedAt: !1413)
!2051 = !DILocation(line: 777, column: 11, scope: !1407, inlinedAt: !1413)
!2052 = !DILocation(line: 780, column: 7, scope: !1407, inlinedAt: !1413)
!2053 = !DILocation(line: 781, column: 7, scope: !1407, inlinedAt: !1413)
!2054 = !DILocation(line: 783, column: 5, scope: !1408, inlinedAt: !1413)
!2055 = !DILocation(line: 767, column: 39, scope: !1408, inlinedAt: !1413)
!2056 = !DILocation(line: 767, column: 21, scope: !1408, inlinedAt: !1413)
!2057 = distinct !{!2057, !2039, !2058}
!2058 = !DILocation(line: 783, column: 5, scope: !1405, inlinedAt: !1413)
!2059 = !DILocation(line: 784, column: 1, scope: !1401, inlinedAt: !1413)
!2060 = !DILocation(line: 925, column: 5, scope: !1414)
!2061 = !DILocation(line: 927, column: 7, scope: !346)
!2062 = !DILocation(line: 929, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 929, column: 7)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 929, column: 7)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 928, column: 5)
!2066 = distinct !DILexicalBlock(scope: !346, file: !3, line: 927, column: 7)
!2067 = !DILocation(line: 929, column: 7, scope: !2064)
!2068 = !DILocation(line: 931, column: 11, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 931, column: 11)
!2070 = !DILocation(line: 931, column: 26, scope: !2069)
!2071 = !DILocation(line: 931, column: 11, scope: !2065)
!2072 = !DILocation(line: 932, column: 9, scope: !2069)
!2073 = !DILocation(line: 936, column: 7, scope: !366)
!2074 = !DILocation(line: 936, column: 7, scope: !346)
!2075 = !DILocation(line: 938, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 938, column: 7)
!2077 = distinct !DILexicalBlock(scope: !365, file: !3, line: 938, column: 7)
!2078 = !DILocation(line: 939, column: 18, scope: !364)
!2079 = !DILocation(line: 0, scope: !364)
!2080 = !DILocation(line: 939, column: 27, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !364, file: !3, line: 939, column: 7)
!2082 = !DILocation(line: 939, column: 7, scope: !364)
!2083 = !DILocation(line: 940, column: 9, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 940, column: 9)
!2085 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 940, column: 9)
!2086 = !DILocation(line: 940, column: 9, scope: !2085)
!2087 = !DILocation(line: 939, column: 34, scope: !2081)
!2088 = distinct !{!2088, !2082, !2089}
!2089 = !DILocation(line: 940, column: 9, scope: !364)
!2090 = !DILocation(line: 943, column: 16, scope: !346)
!2091 = !DILocation(line: 943, column: 11, scope: !346)
!2092 = !DILocation(line: 943, column: 3, scope: !346)
!2093 = !DILocation(line: 945, column: 21, scope: !346)
!2094 = !DILocation(line: 945, column: 27, scope: !346)
!2095 = !DILocation(line: 946, column: 38, scope: !346)
!2096 = !DILocation(line: 946, column: 33, scope: !346)
!2097 = !DILocation(line: 946, column: 26, scope: !346)
!2098 = !DILocation(line: 946, column: 3, scope: !346)
!2099 = !DILocation(line: 948, column: 34, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !346, file: !3, line: 948, column: 7)
!2101 = !DILocation(line: 948, column: 50, scope: !2100)
!2102 = !DILocation(line: 948, column: 45, scope: !2100)
!2103 = !DILocation(line: 948, column: 37, scope: !2100)
!2104 = !DILocation(line: 948, column: 7, scope: !346)
!2105 = !DILocation(line: 949, column: 18, scope: !2100)
!2106 = !DILocation(line: 949, column: 5, scope: !2100)
!2107 = !DILocation(line: 952, column: 1, scope: !346)
!2108 = distinct !DISubprogram(name: "parse_signal_action_params", scope: !3, file: !3, line: 588, type: !2109, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2111)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{null, !73, !355}
!2111 = !{!2112, !2113, !2114, !2115, !2116, !2117, !2121}
!2112 = !DILocalVariable(name: "optarg", arg: 1, scope: !2108, file: !3, line: 588, type: !73)
!2113 = !DILocalVariable(name: "set_default", arg: 2, scope: !2108, file: !3, line: 588, type: !355)
!2114 = !DILocalVariable(name: "signame", scope: !2108, file: !3, line: 590, type: !1379)
!2115 = !DILocalVariable(name: "opt_sig", scope: !2108, file: !3, line: 591, type: !71)
!2116 = !DILocalVariable(name: "optarg_writable", scope: !2108, file: !3, line: 592, type: !71)
!2117 = !DILocalVariable(name: "i", scope: !2118, file: !3, line: 599, type: !75)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 599, column: 7)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 595, column: 5)
!2120 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 594, column: 7)
!2121 = !DILocalVariable(name: "signum", scope: !2122, file: !3, line: 610, type: !75)
!2122 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 609, column: 5)
!2123 = !DILocation(line: 0, scope: !2108)
!2124 = !DILocation(line: 590, column: 3, scope: !2108)
!2125 = !DILocation(line: 590, column: 8, scope: !2108)
!2126 = !DILocation(line: 594, column: 9, scope: !2120)
!2127 = !DILocation(line: 594, column: 7, scope: !2108)
!2128 = !DILocation(line: 0, scope: !2118)
!2129 = !DILocation(line: 0, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 600, column: 13)
!2131 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 599, column: 7)
!2132 = !DILocation(line: 599, column: 7, scope: !2118)
!2133 = !DILocation(line: 600, column: 13, scope: !2130)
!2134 = !DILocation(line: 600, column: 34, scope: !2130)
!2135 = !DILocation(line: 600, column: 13, scope: !2131)
!2136 = !DILocation(line: 601, column: 11, scope: !2130)
!2137 = !DILocation(line: 601, column: 22, scope: !2130)
!2138 = !DILocation(line: 599, column: 44, scope: !2131)
!2139 = !DILocation(line: 599, column: 26, scope: !2131)
!2140 = distinct !{!2140, !2132, !2141}
!2141 = !DILocation(line: 601, column: 54, scope: !2118)
!2142 = !DILocation(line: 605, column: 21, scope: !2108)
!2143 = !DILocation(line: 607, column: 13, scope: !2108)
!2144 = !DILocation(line: 608, column: 3, scope: !2108)
!2145 = !DILocation(line: 0, scope: !2122)
!2146 = !DILocation(line: 610, column: 20, scope: !2122)
!2147 = !DILocation(line: 612, column: 18, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 612, column: 11)
!2149 = !DILocation(line: 612, column: 11, scope: !2122)
!2150 = !DILocation(line: 613, column: 22, scope: !2148)
!2151 = !DILocation(line: 613, column: 47, scope: !2148)
!2152 = !DILocation(line: 613, column: 9, scope: !2148)
!2153 = !DILocation(line: 614, column: 11, scope: !2122)
!2154 = !DILocation(line: 614, column: 18, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 614, column: 11)
!2156 = !DILocation(line: 615, column: 16, scope: !2155)
!2157 = !DILocation(line: 615, column: 9, scope: !2155)
!2158 = !DILocation(line: 617, column: 7, scope: !2122)
!2159 = !DILocation(line: 617, column: 23, scope: !2122)
!2160 = !DILocation(line: 619, column: 17, scope: !2122)
!2161 = distinct !{!2161, !2144, !2162}
!2162 = !DILocation(line: 620, column: 5, scope: !2108)
!2163 = !DILocation(line: 622, column: 3, scope: !2108)
!2164 = !DILocation(line: 623, column: 1, scope: !2108)
!2165 = distinct !DISubprogram(name: "parse_block_signal_params", scope: !3, file: !3, line: 670, type: !2109, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2166 = !{!2167, !2168, !2169, !2170, !2171, !2172}
!2167 = !DILocalVariable(name: "optarg", arg: 1, scope: !2165, file: !3, line: 670, type: !73)
!2168 = !DILocalVariable(name: "block", arg: 2, scope: !2165, file: !3, line: 670, type: !355)
!2169 = !DILocalVariable(name: "signame", scope: !2165, file: !3, line: 672, type: !1379)
!2170 = !DILocalVariable(name: "opt_sig", scope: !2165, file: !3, line: 673, type: !71)
!2171 = !DILocalVariable(name: "optarg_writable", scope: !2165, file: !3, line: 674, type: !71)
!2172 = !DILocalVariable(name: "signum", scope: !2173, file: !3, line: 699, type: !75)
!2173 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 698, column: 5)
!2174 = !DILocation(line: 0, scope: !2165)
!2175 = !DILocation(line: 672, column: 3, scope: !2165)
!2176 = !DILocation(line: 672, column: 8, scope: !2165)
!2177 = !DILocation(line: 676, column: 9, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 676, column: 7)
!2179 = !DILocation(line: 676, column: 7, scope: !2165)
!2180 = !DILocation(line: 682, column: 14, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 682, column: 12)
!2182 = !DILocation(line: 682, column: 12, scope: !2178)
!2183 = !DILocation(line: 685, column: 7, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 683, column: 5)
!2185 = !DILocation(line: 686, column: 7, scope: !2184)
!2186 = !DILocation(line: 687, column: 5, scope: !2184)
!2187 = !DILocation(line: 679, column: 19, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 677, column: 5)
!2189 = !DILocation(line: 679, column: 7, scope: !2188)
!2190 = !DILocation(line: 680, column: 20, scope: !2188)
!2191 = !DILocation(line: 680, column: 7, scope: !2188)
!2192 = !DILocation(line: 689, column: 20, scope: !2165)
!2193 = !DILocation(line: 691, column: 7, scope: !2165)
!2194 = !DILocation(line: 694, column: 21, scope: !2165)
!2195 = !DILocation(line: 696, column: 13, scope: !2165)
!2196 = !DILocation(line: 697, column: 3, scope: !2165)
!2197 = !DILocation(line: 0, scope: !2173)
!2198 = !DILocation(line: 699, column: 20, scope: !2173)
!2199 = !DILocation(line: 701, column: 18, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 701, column: 11)
!2201 = !DILocation(line: 701, column: 11, scope: !2173)
!2202 = !DILocation(line: 702, column: 22, scope: !2200)
!2203 = !DILocation(line: 702, column: 47, scope: !2200)
!2204 = !DILocation(line: 702, column: 9, scope: !2200)
!2205 = !DILocation(line: 703, column: 11, scope: !2173)
!2206 = !DILocation(line: 703, column: 18, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 703, column: 11)
!2208 = !DILocation(line: 704, column: 16, scope: !2207)
!2209 = !DILocation(line: 704, column: 9, scope: !2207)
!2210 = !DILocation(line: 706, column: 7, scope: !2173)
!2211 = !DILocation(line: 707, column: 7, scope: !2173)
!2212 = !DILocation(line: 709, column: 17, scope: !2173)
!2213 = distinct !{!2213, !2196, !2214}
!2214 = !DILocation(line: 710, column: 5, scope: !2165)
!2215 = !DILocation(line: 712, column: 3, scope: !2165)
!2216 = !DILocation(line: 713, column: 1, scope: !2165)
!2217 = distinct !DISubprogram(name: "extract_varname", scope: !3, file: !3, line: 240, type: !146, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2218)
!2218 = !{!2219, !2220, !2222}
!2219 = !DILocalVariable(name: "str", arg: 1, scope: !2217, file: !3, line: 240, type: !73)
!2220 = !DILocalVariable(name: "i", scope: !2217, file: !3, line: 242, type: !2221)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !42, line: 35, baseType: !106)
!2222 = !DILocalVariable(name: "p", scope: !2217, file: !3, line: 243, type: !73)
!2223 = !DILocation(line: 0, scope: !2217)
!2224 = !DILocalVariable(name: "str", arg: 1, scope: !2225, file: !3, line: 219, type: !73)
!2225 = distinct !DISubprogram(name: "scan_varname", scope: !3, file: !3, line: 219, type: !183, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2226)
!2226 = !{!2224, !2227}
!2227 = !DILocalVariable(name: "end", scope: !2228, file: !3, line: 224, type: !73)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 223, column: 5)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 222, column: 8)
!2230 = !DILocation(line: 0, scope: !2225, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 245, column: 7, scope: !2217)
!2232 = !DILocation(line: 221, column: 3, scope: !2233, inlinedAt: !2231)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 221, column: 3)
!2234 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 221, column: 3)
!2235 = !DILocation(line: 221, column: 3, scope: !2234, inlinedAt: !2231)
!2236 = !DILocation(line: 222, column: 13, scope: !2229, inlinedAt: !2231)
!2237 = !DILocation(line: 222, column: 8, scope: !2229, inlinedAt: !2231)
!2238 = !DILocation(line: 222, column: 17, scope: !2229, inlinedAt: !2231)
!2239 = !DILocation(line: 222, column: 24, scope: !2229, inlinedAt: !2231)
!2240 = !DILocation(line: 222, column: 44, scope: !2229, inlinedAt: !2231)
!2241 = !DILocation(line: 222, column: 39, scope: !2229, inlinedAt: !2231)
!2242 = !DILocalVariable(name: "c", arg: 1, scope: !2243, file: !2244, line: 183, type: !75)
!2243 = distinct !DISubprogram(name: "c_isalpha", scope: !2244, file: !2244, line: 183, type: !713, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2245)
!2244 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2245 = !{!2242}
!2246 = !DILocation(line: 0, scope: !2243, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 222, column: 28, scope: !2229, inlinedAt: !2231)
!2248 = !DILocation(line: 185, column: 3, scope: !2243, inlinedAt: !2247)
!2249 = !DILocation(line: 222, column: 61, scope: !2229, inlinedAt: !2231)
!2250 = !DILocation(line: 222, column: 8, scope: !2225, inlinedAt: !2231)
!2251 = !DILocation(line: 224, column: 28, scope: !2228, inlinedAt: !2231)
!2252 = !DILocation(line: 0, scope: !2228, inlinedAt: !2231)
!2253 = !DILocation(line: 225, column: 7, scope: !2228, inlinedAt: !2231)
!2254 = !DILocation(line: 225, column: 25, scope: !2228, inlinedAt: !2231)
!2255 = !DILocation(line: 225, column: 14, scope: !2228, inlinedAt: !2231)
!2256 = !DILocation(line: 225, column: 31, scope: !2228, inlinedAt: !2231)
!2257 = !DILocation(line: 225, column: 34, scope: !2228, inlinedAt: !2231)
!2258 = !DILocation(line: 226, column: 9, scope: !2228, inlinedAt: !2231)
!2259 = distinct !{!2259, !2253, !2260}
!2260 = !DILocation(line: 226, column: 11, scope: !2228, inlinedAt: !2231)
!2261 = !DILocation(line: 250, column: 9, scope: !2217)
!2262 = !DILocation(line: 250, column: 15, scope: !2217)
!2263 = !DILocation(line: 252, column: 12, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 252, column: 7)
!2265 = !DILocation(line: 252, column: 9, scope: !2264)
!2266 = !DILocation(line: 252, column: 7, scope: !2217)
!2267 = !DILocation(line: 258, column: 11, scope: !2217)
!2268 = !DILocation(line: 254, column: 17, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 253, column: 5)
!2270 = !DILocation(line: 254, column: 13, scope: !2269)
!2271 = !DILocation(line: 255, column: 27, scope: !2269)
!2272 = !DILocation(line: 255, column: 17, scope: !2269)
!2273 = !DILocation(line: 255, column: 15, scope: !2269)
!2274 = !DILocation(line: 256, column: 5, scope: !2269)
!2275 = !DILocalVariable(name: "__dest", arg: 1, scope: !2276, file: !1651, line: 31, type: !2279)
!2276 = distinct !DISubprogram(name: "memcpy", scope: !1651, file: !1651, line: 31, type: !2277, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2281)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!39, !2279, !2280, !41}
!2279 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!2280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !515)
!2281 = !{!2275, !2282, !2283}
!2282 = !DILocalVariable(name: "__src", arg: 2, scope: !2276, file: !1651, line: 31, type: !2280)
!2283 = !DILocalVariable(name: "__len", arg: 3, scope: !2276, file: !1651, line: 31, type: !41)
!2284 = !DILocation(line: 0, scope: !2276, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 258, column: 3, scope: !2217)
!2286 = !DILocation(line: 34, column: 10, scope: !2276, inlinedAt: !2285)
!2287 = !DILocation(line: 259, column: 3, scope: !2217)
!2288 = !DILocation(line: 259, column: 13, scope: !2217)
!2289 = !DILocation(line: 261, column: 3, scope: !2217)
!2290 = !DILocation(line: 262, column: 1, scope: !2217)
!2291 = distinct !DISubprogram(name: "operand2sig", scope: !625, file: !625, line: 36, type: !209, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !2292)
!2292 = !{!2293, !2294, !2295, !2296, !2299, !2300, !2301, !2303}
!2293 = !DILocalVariable(name: "operand", arg: 1, scope: !2291, file: !625, line: 36, type: !73)
!2294 = !DILocalVariable(name: "signame", arg: 2, scope: !2291, file: !625, line: 36, type: !71)
!2295 = !DILocalVariable(name: "signum", scope: !2291, file: !625, line: 38, type: !75)
!2296 = !DILocalVariable(name: "endp", scope: !2297, file: !625, line: 53, type: !71)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !625, line: 41, column: 5)
!2298 = distinct !DILexicalBlock(scope: !2291, file: !625, line: 40, column: 7)
!2299 = !DILocalVariable(name: "l", scope: !2297, file: !625, line: 54, type: !106)
!2300 = !DILocalVariable(name: "i", scope: !2297, file: !625, line: 55, type: !75)
!2301 = !DILocalVariable(name: "upcased", scope: !2302, file: !625, line: 70, type: !71)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !625, line: 67, column: 5)
!2303 = !DILocalVariable(name: "p", scope: !2302, file: !625, line: 71, type: !71)
!2304 = !DILocation(line: 0, scope: !2291)
!2305 = !DILocation(line: 38, column: 3, scope: !2291)
!2306 = !DILocation(line: 40, column: 7, scope: !2298)
!2307 = !DILocation(line: 40, column: 7, scope: !2291)
!2308 = !DILocation(line: 53, column: 7, scope: !2297)
!2309 = !DILocation(line: 54, column: 21, scope: !2297)
!2310 = !DILocation(line: 54, column: 27, scope: !2297)
!2311 = !DILocation(line: 0, scope: !2297)
!2312 = !DILocation(line: 54, column: 32, scope: !2297)
!2313 = !DILocation(line: 55, column: 15, scope: !2297)
!2314 = !DILocation(line: 56, column: 28, scope: !2297)
!2315 = !DILocation(line: 56, column: 25, scope: !2297)
!2316 = !DILocation(line: 56, column: 33, scope: !2297)
!2317 = !DILocation(line: 56, column: 36, scope: !2297)
!2318 = !DILocation(line: 56, column: 42, scope: !2297)
!2319 = !DILocation(line: 56, column: 45, scope: !2297)
!2320 = !DILocation(line: 56, column: 56, scope: !2297)
!2321 = !DILocation(line: 56, column: 51, scope: !2297)
!2322 = !DILocation(line: 58, column: 18, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2297, file: !625, line: 58, column: 11)
!2324 = !DILocation(line: 58, column: 11, scope: !2297)
!2325 = !DILocation(line: 65, column: 5, scope: !2298)
!2326 = !DILocation(line: 65, column: 5, scope: !2297)
!2327 = !DILocation(line: 70, column: 23, scope: !2302)
!2328 = !DILocation(line: 0, scope: !2302)
!2329 = !DILocation(line: 72, column: 25, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !625, line: 72, column: 7)
!2331 = distinct !DILexicalBlock(scope: !2302, file: !625, line: 72, column: 7)
!2332 = !DILocation(line: 72, column: 7, scope: !2331)
!2333 = !DILocation(line: 73, column: 51, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !625, line: 73, column: 13)
!2335 = !DILocation(line: 73, column: 13, scope: !2334)
!2336 = !DILocation(line: 73, column: 13, scope: !2330)
!2337 = !DILocation(line: 74, column: 14, scope: !2334)
!2338 = !DILocation(line: 74, column: 11, scope: !2334)
!2339 = !DILocation(line: 72, column: 30, scope: !2330)
!2340 = distinct !{!2340, !2332, !2341}
!2341 = !DILocation(line: 74, column: 23, scope: !2331)
!2342 = !DILocation(line: 78, column: 13, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2302, file: !625, line: 78, column: 11)
!2344 = !DILocation(line: 78, column: 40, scope: !2343)
!2345 = !DILocation(line: 79, column: 13, scope: !2343)
!2346 = !DILocation(line: 79, column: 17, scope: !2343)
!2347 = !DILocation(line: 79, column: 28, scope: !2343)
!2348 = !DILocation(line: 79, column: 35, scope: !2343)
!2349 = !DILocation(line: 79, column: 38, scope: !2343)
!2350 = !DILocation(line: 79, column: 49, scope: !2343)
!2351 = !DILocation(line: 79, column: 56, scope: !2343)
!2352 = !DILocation(line: 79, column: 59, scope: !2343)
!2353 = !DILocation(line: 79, column: 70, scope: !2343)
!2354 = !DILocation(line: 80, column: 17, scope: !2343)
!2355 = !DILocation(line: 80, column: 37, scope: !2343)
!2356 = !DILocation(line: 80, column: 20, scope: !2343)
!2357 = !DILocation(line: 80, column: 51, scope: !2343)
!2358 = !DILocation(line: 78, column: 11, scope: !2302)
!2359 = !DILocation(line: 81, column: 16, scope: !2343)
!2360 = !DILocation(line: 81, column: 9, scope: !2343)
!2361 = !DILocation(line: 83, column: 7, scope: !2302)
!2362 = !DILocation(line: 86, column: 7, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2291, file: !625, line: 86, column: 7)
!2364 = !DILocation(line: 86, column: 14, scope: !2363)
!2365 = !DILocation(line: 86, column: 18, scope: !2363)
!2366 = !DILocation(line: 86, column: 21, scope: !2363)
!2367 = !DILocation(line: 86, column: 47, scope: !2363)
!2368 = !DILocation(line: 86, column: 7, scope: !2291)
!2369 = !DILocation(line: 88, column: 20, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2363, file: !625, line: 87, column: 5)
!2371 = !DILocation(line: 88, column: 45, scope: !2370)
!2372 = !DILocation(line: 88, column: 7, scope: !2370)
!2373 = !DILocation(line: 89, column: 7, scope: !2370)
!2374 = !DILocation(line: 92, column: 10, scope: !2291)
!2375 = !DILocation(line: 92, column: 3, scope: !2291)
!2376 = !DILocation(line: 93, column: 1, scope: !2291)
!2377 = distinct !DISubprogram(name: "c_isalnum", scope: !2244, file: !2244, line: 169, type: !713, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2378)
!2378 = !{!2379}
!2379 = !DILocalVariable(name: "c", arg: 1, scope: !2377, file: !2244, line: 169, type: !75)
!2380 = !DILocation(line: 0, scope: !2377)
!2381 = !DILocation(line: 171, column: 3, scope: !2377)
!2382 = !DILocation(line: 178, column: 7, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2377, file: !2244, line: 172, column: 5)
!2384 = !DILocation(line: 0, scope: !2383)
!2385 = !DILocation(line: 180, column: 1, scope: !2377)
!2386 = distinct !DISubprogram(name: "c_isalpha", scope: !2244, file: !2244, line: 183, type: !713, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2387)
!2387 = !{!2388}
!2388 = !DILocalVariable(name: "c", arg: 1, scope: !2386, file: !2244, line: 183, type: !75)
!2389 = !DILocation(line: 0, scope: !2386)
!2390 = !DILocation(line: 185, column: 3, scope: !2386)
!2391 = !DILocation(line: 193, column: 1, scope: !2386)
!2392 = distinct !DISubprogram(name: "c_isascii", scope: !2244, file: !2244, line: 198, type: !713, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2393)
!2393 = !{!2394}
!2394 = !DILocalVariable(name: "c", arg: 1, scope: !2392, file: !2244, line: 198, type: !75)
!2395 = !DILocation(line: 0, scope: !2392)
!2396 = !DILocation(line: 200, column: 3, scope: !2392)
!2397 = !DILocation(line: 212, column: 1, scope: !2392)
!2398 = distinct !DISubprogram(name: "c_isblank", scope: !2244, file: !2244, line: 215, type: !713, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2399)
!2399 = !{!2400}
!2400 = !DILocalVariable(name: "c", arg: 1, scope: !2398, file: !2244, line: 215, type: !75)
!2401 = !DILocation(line: 0, scope: !2398)
!2402 = !DILocation(line: 217, column: 12, scope: !2398)
!2403 = !DILocation(line: 217, column: 19, scope: !2398)
!2404 = !DILocation(line: 217, column: 3, scope: !2398)
!2405 = distinct !DISubprogram(name: "c_iscntrl", scope: !2244, file: !2244, line: 221, type: !713, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2406)
!2406 = !{!2407}
!2407 = !DILocalVariable(name: "c", arg: 1, scope: !2405, file: !2244, line: 221, type: !75)
!2408 = !DILocation(line: 0, scope: !2405)
!2409 = !DILocation(line: 223, column: 3, scope: !2405)
!2410 = !DILocation(line: 228, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2405, file: !2244, line: 224, column: 5)
!2412 = !DILocation(line: 0, scope: !2411)
!2413 = !DILocation(line: 230, column: 1, scope: !2405)
!2414 = distinct !DISubprogram(name: "c_isdigit", scope: !2244, file: !2244, line: 233, type: !713, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2415)
!2415 = !{!2416}
!2416 = !DILocalVariable(name: "c", arg: 1, scope: !2414, file: !2244, line: 233, type: !75)
!2417 = !DILocation(line: 0, scope: !2414)
!2418 = !DILocation(line: 235, column: 3, scope: !2414)
!2419 = !DILocation(line: 242, column: 1, scope: !2414)
!2420 = distinct !DISubprogram(name: "c_isgraph", scope: !2244, file: !2244, line: 245, type: !713, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2421)
!2421 = !{!2422}
!2422 = !DILocalVariable(name: "c", arg: 1, scope: !2420, file: !2244, line: 245, type: !75)
!2423 = !DILocation(line: 0, scope: !2420)
!2424 = !DILocation(line: 247, column: 3, scope: !2420)
!2425 = !DILocation(line: 257, column: 1, scope: !2420)
!2426 = distinct !DISubprogram(name: "c_islower", scope: !2244, file: !2244, line: 260, type: !713, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2427)
!2427 = !{!2428}
!2428 = !DILocalVariable(name: "c", arg: 1, scope: !2426, file: !2244, line: 260, type: !75)
!2429 = !DILocation(line: 0, scope: !2426)
!2430 = !DILocation(line: 262, column: 3, scope: !2426)
!2431 = !DILocation(line: 269, column: 1, scope: !2426)
!2432 = distinct !DISubprogram(name: "c_isprint", scope: !2244, file: !2244, line: 272, type: !713, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2433)
!2433 = !{!2434}
!2434 = !DILocalVariable(name: "c", arg: 1, scope: !2432, file: !2244, line: 272, type: !75)
!2435 = !DILocation(line: 0, scope: !2432)
!2436 = !DILocation(line: 274, column: 3, scope: !2432)
!2437 = !DILocation(line: 285, column: 1, scope: !2432)
!2438 = distinct !DISubprogram(name: "c_ispunct", scope: !2244, file: !2244, line: 288, type: !713, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2439)
!2439 = !{!2440}
!2440 = !DILocalVariable(name: "c", arg: 1, scope: !2438, file: !2244, line: 288, type: !75)
!2441 = !DILocation(line: 0, scope: !2438)
!2442 = !DILocation(line: 290, column: 3, scope: !2438)
!2443 = !DILocation(line: 295, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2438, file: !2244, line: 291, column: 5)
!2445 = !DILocation(line: 0, scope: !2444)
!2446 = !DILocation(line: 297, column: 1, scope: !2438)
!2447 = distinct !DISubprogram(name: "c_isspace", scope: !2244, file: !2244, line: 300, type: !713, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2448)
!2448 = !{!2449}
!2449 = !DILocalVariable(name: "c", arg: 1, scope: !2447, file: !2244, line: 300, type: !75)
!2450 = !DILocation(line: 0, scope: !2447)
!2451 = !DILocation(line: 302, column: 3, scope: !2447)
!2452 = !DILocation(line: 309, column: 1, scope: !2447)
!2453 = distinct !DISubprogram(name: "c_isupper", scope: !2244, file: !2244, line: 312, type: !713, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2454)
!2454 = !{!2455}
!2455 = !DILocalVariable(name: "c", arg: 1, scope: !2453, file: !2244, line: 312, type: !75)
!2456 = !DILocation(line: 0, scope: !2453)
!2457 = !DILocation(line: 314, column: 3, scope: !2453)
!2458 = !DILocation(line: 321, column: 1, scope: !2453)
!2459 = distinct !DISubprogram(name: "c_isxdigit", scope: !2244, file: !2244, line: 324, type: !713, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2460)
!2460 = !{!2461}
!2461 = !DILocalVariable(name: "c", arg: 1, scope: !2459, file: !2244, line: 324, type: !75)
!2462 = !DILocation(line: 0, scope: !2459)
!2463 = !DILocation(line: 326, column: 3, scope: !2459)
!2464 = !DILocation(line: 334, column: 1, scope: !2459)
!2465 = distinct !DISubprogram(name: "c_tolower", scope: !2244, file: !2244, line: 337, type: !2466, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!75, !75}
!2468 = !{!2469}
!2469 = !DILocalVariable(name: "c", arg: 1, scope: !2465, file: !2244, line: 337, type: !75)
!2470 = !DILocation(line: 0, scope: !2465)
!2471 = !DILocation(line: 339, column: 3, scope: !2465)
!2472 = !DILocation(line: 346, column: 1, scope: !2465)
!2473 = distinct !DISubprogram(name: "c_toupper", scope: !2244, file: !2244, line: 349, type: !2466, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !2474)
!2474 = !{!2475}
!2475 = !DILocalVariable(name: "c", arg: 1, scope: !2473, file: !2244, line: 349, type: !75)
!2476 = !DILocation(line: 0, scope: !2473)
!2477 = !DILocation(line: 351, column: 3, scope: !2473)
!2478 = !DILocation(line: 358, column: 1, scope: !2473)
!2479 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !412, file: !412, line: 51, type: !136, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !2480)
!2480 = !{!2481}
!2481 = !DILocalVariable(name: "file", arg: 1, scope: !2479, file: !412, line: 51, type: !73)
!2482 = !DILocation(line: 0, scope: !2479)
!2483 = !DILocation(line: 53, column: 13, scope: !2479)
!2484 = !DILocation(line: 54, column: 1, scope: !2479)
!2485 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !412, file: !412, line: 88, type: !2486, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{null, !355}
!2488 = !{!2489}
!2489 = !DILocalVariable(name: "ignore", arg: 1, scope: !2485, file: !412, line: 88, type: !355)
!2490 = !DILocation(line: 0, scope: !2485)
!2491 = !DILocation(line: 90, column: 16, scope: !2485)
!2492 = !{!2493, !2493, i64 0}
!2493 = !{!"_Bool", !1318, i64 0}
!2494 = !DILocation(line: 91, column: 1, scope: !2485)
!2495 = distinct !DISubprogram(name: "close_stdout", scope: !412, file: !412, line: 117, type: !153, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !2496)
!2496 = !{!2497}
!2497 = !DILocalVariable(name: "write_error", scope: !2498, file: !412, line: 122, type: !73)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !412, line: 121, column: 5)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !412, line: 119, column: 7)
!2500 = !DILocation(line: 119, column: 21, scope: !2499)
!2501 = !DILocation(line: 119, column: 7, scope: !2499)
!2502 = !DILocation(line: 119, column: 29, scope: !2499)
!2503 = !DILocation(line: 120, column: 7, scope: !2499)
!2504 = !DILocation(line: 120, column: 12, scope: !2499)
!2505 = !{i8 0, i8 2}
!2506 = !DILocation(line: 120, column: 25, scope: !2499)
!2507 = !DILocation(line: 120, column: 28, scope: !2499)
!2508 = !DILocation(line: 120, column: 34, scope: !2499)
!2509 = !DILocation(line: 119, column: 7, scope: !2495)
!2510 = !DILocation(line: 122, column: 33, scope: !2498)
!2511 = !DILocation(line: 0, scope: !2498)
!2512 = !DILocation(line: 123, column: 11, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2498, file: !412, line: 123, column: 11)
!2514 = !DILocation(line: 0, scope: !2513)
!2515 = !DILocation(line: 123, column: 11, scope: !2498)
!2516 = !DILocation(line: 124, column: 36, scope: !2513)
!2517 = !DILocation(line: 124, column: 9, scope: !2513)
!2518 = !DILocation(line: 127, column: 9, scope: !2513)
!2519 = !DILocation(line: 129, column: 14, scope: !2498)
!2520 = !DILocation(line: 129, column: 7, scope: !2498)
!2521 = !DILocation(line: 134, column: 42, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2495, file: !412, line: 134, column: 7)
!2523 = !DILocation(line: 134, column: 28, scope: !2522)
!2524 = !DILocation(line: 134, column: 50, scope: !2522)
!2525 = !DILocation(line: 134, column: 7, scope: !2495)
!2526 = !DILocation(line: 135, column: 12, scope: !2522)
!2527 = !DILocation(line: 135, column: 5, scope: !2522)
!2528 = !DILocation(line: 136, column: 1, scope: !2495)
!2529 = distinct !DISubprogram(name: "set_program_name", scope: !463, file: !463, line: 39, type: !136, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !2530)
!2530 = !{!2531, !2532, !2533}
!2531 = !DILocalVariable(name: "argv0", arg: 1, scope: !2529, file: !463, line: 39, type: !73)
!2532 = !DILocalVariable(name: "slash", scope: !2529, file: !463, line: 46, type: !73)
!2533 = !DILocalVariable(name: "base", scope: !2529, file: !463, line: 47, type: !73)
!2534 = !DILocation(line: 0, scope: !2529)
!2535 = !DILocation(line: 51, column: 13, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2529, file: !463, line: 51, column: 7)
!2537 = !DILocation(line: 51, column: 7, scope: !2529)
!2538 = !DILocation(line: 55, column: 14, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2536, file: !463, line: 52, column: 5)
!2540 = !DILocation(line: 54, column: 7, scope: !2539)
!2541 = !DILocation(line: 56, column: 7, scope: !2539)
!2542 = !DILocation(line: 59, column: 11, scope: !2529)
!2543 = !DILocation(line: 60, column: 17, scope: !2529)
!2544 = !DILocation(line: 60, column: 11, scope: !2529)
!2545 = !DILocation(line: 61, column: 12, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2529, file: !463, line: 61, column: 7)
!2547 = !DILocation(line: 61, column: 20, scope: !2546)
!2548 = !DILocation(line: 61, column: 25, scope: !2546)
!2549 = !DILocation(line: 61, column: 42, scope: !2546)
!2550 = !DILocation(line: 61, column: 28, scope: !2546)
!2551 = !DILocation(line: 61, column: 61, scope: !2546)
!2552 = !DILocation(line: 61, column: 7, scope: !2529)
!2553 = !DILocation(line: 64, column: 11, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !463, line: 64, column: 11)
!2555 = distinct !DILexicalBlock(scope: !2546, file: !463, line: 62, column: 5)
!2556 = !DILocation(line: 64, column: 36, scope: !2554)
!2557 = !DILocation(line: 64, column: 11, scope: !2555)
!2558 = !DILocation(line: 66, column: 24, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2554, file: !463, line: 65, column: 9)
!2560 = !DILocation(line: 70, column: 41, scope: !2559)
!2561 = !DILocation(line: 72, column: 9, scope: !2559)
!2562 = !DILocation(line: 84, column: 16, scope: !2529)
!2563 = !DILocation(line: 90, column: 27, scope: !2529)
!2564 = !DILocation(line: 92, column: 1, scope: !2529)
!2565 = distinct !DISubprogram(name: "clone_quoting_options", scope: !504, file: !504, line: 122, type: !2566, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2569)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!2568, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!2569 = !{!2570, !2571, !2572}
!2570 = !DILocalVariable(name: "o", arg: 1, scope: !2565, file: !504, line: 122, type: !2568)
!2571 = !DILocalVariable(name: "e", scope: !2565, file: !504, line: 124, type: !75)
!2572 = !DILocalVariable(name: "p", scope: !2565, file: !504, line: 125, type: !2568)
!2573 = !DILocation(line: 0, scope: !2565)
!2574 = !DILocation(line: 124, column: 11, scope: !2565)
!2575 = !DILocation(line: 125, column: 40, scope: !2565)
!2576 = !DILocation(line: 125, column: 31, scope: !2565)
!2577 = !DILocation(line: 127, column: 9, scope: !2565)
!2578 = !DILocation(line: 128, column: 3, scope: !2565)
!2579 = distinct !DISubprogram(name: "get_quoting_style", scope: !504, file: !504, line: 133, type: !2580, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2582)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!13, !521}
!2582 = !{!2583}
!2583 = !DILocalVariable(name: "o", arg: 1, scope: !2579, file: !504, line: 133, type: !521)
!2584 = !DILocation(line: 0, scope: !2579)
!2585 = !DILocation(line: 135, column: 11, scope: !2579)
!2586 = !DILocation(line: 135, column: 46, scope: !2579)
!2587 = !{!2588, !1318, i64 0}
!2588 = !{!"quoting_options", !1318, i64 0, !1433, i64 4, !1318, i64 8, !1317, i64 40, !1317, i64 48}
!2589 = !DILocation(line: 135, column: 3, scope: !2579)
!2590 = distinct !DISubprogram(name: "set_quoting_style", scope: !504, file: !504, line: 141, type: !2591, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2593)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{null, !2568, !13}
!2593 = !{!2594, !2595}
!2594 = !DILocalVariable(name: "o", arg: 1, scope: !2590, file: !504, line: 141, type: !2568)
!2595 = !DILocalVariable(name: "s", arg: 2, scope: !2590, file: !504, line: 141, type: !13)
!2596 = !DILocation(line: 0, scope: !2590)
!2597 = !DILocation(line: 143, column: 4, scope: !2590)
!2598 = !DILocation(line: 143, column: 39, scope: !2590)
!2599 = !DILocation(line: 143, column: 45, scope: !2590)
!2600 = !DILocation(line: 144, column: 1, scope: !2590)
!2601 = distinct !DISubprogram(name: "set_char_quoting", scope: !504, file: !504, line: 152, type: !2602, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!75, !2568, !72, !75}
!2604 = !{!2605, !2606, !2607, !2608, !2610, !2612, !2613}
!2605 = !DILocalVariable(name: "o", arg: 1, scope: !2601, file: !504, line: 152, type: !2568)
!2606 = !DILocalVariable(name: "c", arg: 2, scope: !2601, file: !504, line: 152, type: !72)
!2607 = !DILocalVariable(name: "i", arg: 3, scope: !2601, file: !504, line: 152, type: !75)
!2608 = !DILocalVariable(name: "uc", scope: !2601, file: !504, line: 154, type: !2609)
!2609 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!2610 = !DILocalVariable(name: "p", scope: !2601, file: !504, line: 155, type: !2611)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2612 = !DILocalVariable(name: "shift", scope: !2601, file: !504, line: 157, type: !75)
!2613 = !DILocalVariable(name: "r", scope: !2601, file: !504, line: 158, type: !75)
!2614 = !DILocation(line: 0, scope: !2601)
!2615 = !DILocation(line: 156, column: 6, scope: !2601)
!2616 = !DILocation(line: 156, column: 62, scope: !2601)
!2617 = !DILocation(line: 156, column: 57, scope: !2601)
!2618 = !DILocation(line: 157, column: 15, scope: !2601)
!2619 = !DILocation(line: 158, column: 12, scope: !2601)
!2620 = !DILocation(line: 158, column: 15, scope: !2601)
!2621 = !DILocation(line: 158, column: 25, scope: !2601)
!2622 = !DILocation(line: 159, column: 13, scope: !2601)
!2623 = !DILocation(line: 159, column: 18, scope: !2601)
!2624 = !DILocation(line: 159, column: 23, scope: !2601)
!2625 = !DILocation(line: 159, column: 6, scope: !2601)
!2626 = !DILocation(line: 160, column: 3, scope: !2601)
!2627 = distinct !DISubprogram(name: "set_quoting_flags", scope: !504, file: !504, line: 168, type: !2628, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!75, !2568, !75}
!2630 = !{!2631, !2632, !2633}
!2631 = !DILocalVariable(name: "o", arg: 1, scope: !2627, file: !504, line: 168, type: !2568)
!2632 = !DILocalVariable(name: "i", arg: 2, scope: !2627, file: !504, line: 168, type: !75)
!2633 = !DILocalVariable(name: "r", scope: !2627, file: !504, line: 170, type: !75)
!2634 = !DILocation(line: 0, scope: !2627)
!2635 = !DILocation(line: 171, column: 8, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2627, file: !504, line: 171, column: 7)
!2637 = !DILocation(line: 171, column: 7, scope: !2627)
!2638 = !DILocation(line: 173, column: 10, scope: !2627)
!2639 = !{!2588, !1433, i64 4}
!2640 = !DILocation(line: 174, column: 12, scope: !2627)
!2641 = !DILocation(line: 175, column: 3, scope: !2627)
!2642 = distinct !DISubprogram(name: "set_custom_quoting", scope: !504, file: !504, line: 179, type: !2643, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{null, !2568, !73, !73}
!2645 = !{!2646, !2647, !2648}
!2646 = !DILocalVariable(name: "o", arg: 1, scope: !2642, file: !504, line: 179, type: !2568)
!2647 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2642, file: !504, line: 180, type: !73)
!2648 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2642, file: !504, line: 180, type: !73)
!2649 = !DILocation(line: 0, scope: !2642)
!2650 = !DILocation(line: 182, column: 8, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2642, file: !504, line: 182, column: 7)
!2652 = !DILocation(line: 182, column: 7, scope: !2642)
!2653 = !DILocation(line: 184, column: 6, scope: !2642)
!2654 = !DILocation(line: 184, column: 12, scope: !2642)
!2655 = !DILocation(line: 185, column: 8, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2642, file: !504, line: 185, column: 7)
!2657 = !DILocation(line: 185, column: 23, scope: !2656)
!2658 = !DILocation(line: 185, column: 19, scope: !2656)
!2659 = !DILocation(line: 186, column: 5, scope: !2656)
!2660 = !DILocation(line: 187, column: 6, scope: !2642)
!2661 = !DILocation(line: 187, column: 17, scope: !2642)
!2662 = !{!2588, !1317, i64 40}
!2663 = !DILocation(line: 188, column: 6, scope: !2642)
!2664 = !DILocation(line: 188, column: 18, scope: !2642)
!2665 = !{!2588, !1317, i64 48}
!2666 = !DILocation(line: 189, column: 1, scope: !2642)
!2667 = distinct !DISubprogram(name: "quotearg_buffer", scope: !504, file: !504, line: 784, type: !2668, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!41, !71, !41, !73, !41, !521}
!2670 = !{!2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678}
!2671 = !DILocalVariable(name: "buffer", arg: 1, scope: !2667, file: !504, line: 784, type: !71)
!2672 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2667, file: !504, line: 784, type: !41)
!2673 = !DILocalVariable(name: "arg", arg: 3, scope: !2667, file: !504, line: 785, type: !73)
!2674 = !DILocalVariable(name: "argsize", arg: 4, scope: !2667, file: !504, line: 785, type: !41)
!2675 = !DILocalVariable(name: "o", arg: 5, scope: !2667, file: !504, line: 786, type: !521)
!2676 = !DILocalVariable(name: "p", scope: !2667, file: !504, line: 788, type: !521)
!2677 = !DILocalVariable(name: "e", scope: !2667, file: !504, line: 789, type: !75)
!2678 = !DILocalVariable(name: "r", scope: !2667, file: !504, line: 790, type: !41)
!2679 = !DILocation(line: 0, scope: !2667)
!2680 = !DILocation(line: 788, column: 37, scope: !2667)
!2681 = !DILocation(line: 789, column: 11, scope: !2667)
!2682 = !DILocation(line: 791, column: 43, scope: !2667)
!2683 = !DILocation(line: 791, column: 53, scope: !2667)
!2684 = !DILocation(line: 791, column: 60, scope: !2667)
!2685 = !DILocation(line: 792, column: 43, scope: !2667)
!2686 = !DILocation(line: 792, column: 58, scope: !2667)
!2687 = !DILocation(line: 790, column: 14, scope: !2667)
!2688 = !DILocation(line: 793, column: 9, scope: !2667)
!2689 = !DILocation(line: 794, column: 3, scope: !2667)
!2690 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !504, file: !504, line: 256, type: !2691, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2695)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!41, !71, !41, !73, !41, !13, !75, !2693, !73, !73}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2695 = !{!2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2720, !2721, !2722, !2723, !2724, !2727, !2728, !2734, !2737, !2738, !2745, !2748, !2749, !2750, !2751, !2752, !2753}
!2696 = !DILocalVariable(name: "buffer", arg: 1, scope: !2690, file: !504, line: 256, type: !71)
!2697 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2690, file: !504, line: 256, type: !41)
!2698 = !DILocalVariable(name: "arg", arg: 3, scope: !2690, file: !504, line: 257, type: !73)
!2699 = !DILocalVariable(name: "argsize", arg: 4, scope: !2690, file: !504, line: 257, type: !41)
!2700 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2690, file: !504, line: 258, type: !13)
!2701 = !DILocalVariable(name: "flags", arg: 6, scope: !2690, file: !504, line: 258, type: !75)
!2702 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2690, file: !504, line: 259, type: !2693)
!2703 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2690, file: !504, line: 260, type: !73)
!2704 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2690, file: !504, line: 261, type: !73)
!2705 = !DILocalVariable(name: "i", scope: !2690, file: !504, line: 263, type: !41)
!2706 = !DILocalVariable(name: "len", scope: !2690, file: !504, line: 264, type: !41)
!2707 = !DILocalVariable(name: "orig_buffersize", scope: !2690, file: !504, line: 265, type: !41)
!2708 = !DILocalVariable(name: "quote_string", scope: !2690, file: !504, line: 266, type: !73)
!2709 = !DILocalVariable(name: "quote_string_len", scope: !2690, file: !504, line: 267, type: !41)
!2710 = !DILocalVariable(name: "backslash_escapes", scope: !2690, file: !504, line: 268, type: !355)
!2711 = !DILocalVariable(name: "unibyte_locale", scope: !2690, file: !504, line: 269, type: !355)
!2712 = !DILocalVariable(name: "elide_outer_quotes", scope: !2690, file: !504, line: 270, type: !355)
!2713 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2690, file: !504, line: 271, type: !355)
!2714 = !DILocalVariable(name: "encountered_single_quote", scope: !2690, file: !504, line: 272, type: !355)
!2715 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2690, file: !504, line: 273, type: !355)
!2716 = !DILocalVariable(name: "c", scope: !2717, file: !504, line: 402, type: !2609)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !504, line: 401, column: 5)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !504, line: 400, column: 3)
!2719 = distinct !DILexicalBlock(scope: !2690, file: !504, line: 400, column: 3)
!2720 = !DILocalVariable(name: "esc", scope: !2717, file: !504, line: 403, type: !2609)
!2721 = !DILocalVariable(name: "is_right_quote", scope: !2717, file: !504, line: 404, type: !355)
!2722 = !DILocalVariable(name: "escaping", scope: !2717, file: !504, line: 405, type: !355)
!2723 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2717, file: !504, line: 406, type: !355)
!2724 = !DILocalVariable(name: "m", scope: !2725, file: !504, line: 610, type: !41)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !504, line: 608, column: 11)
!2726 = distinct !DILexicalBlock(scope: !2717, file: !504, line: 426, column: 9)
!2727 = !DILocalVariable(name: "printable", scope: !2725, file: !504, line: 612, type: !355)
!2728 = !DILocalVariable(name: "mbstate", scope: !2729, file: !504, line: 621, type: !2731)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !504, line: 620, column: 15)
!2730 = distinct !DILexicalBlock(scope: !2725, file: !504, line: 614, column: 17)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2732, line: 6, baseType: !2733)
!2732 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !542, line: 21, baseType: !541)
!2734 = !DILocalVariable(name: "w", scope: !2735, file: !504, line: 631, type: !2736)
!2735 = distinct !DILexicalBlock(scope: !2729, file: !504, line: 630, column: 19)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !42, line: 74, baseType: !75)
!2737 = !DILocalVariable(name: "bytes", scope: !2735, file: !504, line: 632, type: !41)
!2738 = !DILocalVariable(name: "j", scope: !2739, file: !504, line: 657, type: !41)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !504, line: 656, column: 27)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !504, line: 654, column: 29)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !504, line: 649, column: 23)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !504, line: 641, column: 30)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !504, line: 636, column: 30)
!2744 = distinct !DILexicalBlock(scope: !2735, file: !504, line: 634, column: 25)
!2745 = !DILocalVariable(name: "ilim", scope: !2746, file: !504, line: 684, type: !41)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !504, line: 681, column: 15)
!2747 = distinct !DILexicalBlock(scope: !2725, file: !504, line: 680, column: 17)
!2748 = !DILabel(scope: !2690, name: "process_input", file: !504, line: 314)
!2749 = !DILabel(scope: !2726, name: "c_and_shell_escape", file: !504, line: 512)
!2750 = !DILabel(scope: !2726, name: "c_escape", file: !504, line: 517)
!2751 = !DILabel(scope: !2717, name: "store_escape", file: !504, line: 719)
!2752 = !DILabel(scope: !2717, name: "store_c", file: !504, line: 722)
!2753 = !DILabel(scope: !2690, name: "force_outer_quoting_style", file: !504, line: 763)
!2754 = !DILocation(line: 0, scope: !2690)
!2755 = !DILocation(line: 269, column: 25, scope: !2690)
!2756 = !DILocation(line: 269, column: 36, scope: !2690)
!2757 = !DILocation(line: 270, column: 8, scope: !2690)
!2758 = !DILocation(line: 0, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2726, file: !504, line: 526, column: 15)
!2760 = !DILocation(line: 0, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !504, line: 462, column: 19)
!2762 = distinct !DILexicalBlock(scope: !2726, file: !504, line: 455, column: 13)
!2763 = !DILocation(line: 0, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !504, line: 449, column: 20)
!2765 = distinct !DILexicalBlock(scope: !2726, file: !504, line: 428, column: 15)
!2766 = !DILocation(line: 0, scope: !2729)
!2767 = !DILocation(line: 0, scope: !2735)
!2768 = !DILocation(line: 0, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2717, file: !504, line: 712, column: 11)
!2770 = !DILocation(line: 273, column: 3, scope: !2690)
!2771 = !DILocation(line: 265, column: 10, scope: !2690)
!2772 = !DILocation(line: 266, column: 15, scope: !2690)
!2773 = !DILocation(line: 267, column: 10, scope: !2690)
!2774 = !DILocation(line: 268, column: 8, scope: !2690)
!2775 = !DILocation(line: 271, column: 8, scope: !2690)
!2776 = !DILocation(line: 272, column: 8, scope: !2690)
!2777 = !DILocation(line: 273, column: 8, scope: !2690)
!2778 = !DILocation(line: 314, column: 2, scope: !2690)
!2779 = !DILocation(line: 316, column: 3, scope: !2690)
!2780 = !DILocation(line: 323, column: 11, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2690, file: !504, line: 317, column: 5)
!2782 = !DILocation(line: 323, column: 12, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2781, file: !504, line: 323, column: 11)
!2784 = !DILocation(line: 324, column: 9, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !504, line: 324, column: 9)
!2786 = distinct !DILexicalBlock(scope: !2783, file: !504, line: 324, column: 9)
!2787 = !DILocation(line: 324, column: 9, scope: !2786)
!2788 = !DILocation(line: 362, column: 26, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !504, line: 340, column: 11)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !504, line: 339, column: 13)
!2791 = distinct !DILexicalBlock(scope: !2781, file: !504, line: 338, column: 7)
!2792 = !DILocation(line: 363, column: 27, scope: !2789)
!2793 = !DILocation(line: 364, column: 11, scope: !2789)
!2794 = !DILocation(line: 365, column: 14, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2791, file: !504, line: 365, column: 13)
!2796 = !DILocation(line: 365, column: 13, scope: !2791)
!2797 = !DILocation(line: 366, column: 43, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !504, line: 366, column: 11)
!2799 = distinct !DILexicalBlock(scope: !2795, file: !504, line: 366, column: 11)
!2800 = !DILocation(line: 366, column: 11, scope: !2799)
!2801 = !DILocation(line: 367, column: 13, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !504, line: 367, column: 13)
!2803 = distinct !DILexicalBlock(scope: !2798, file: !504, line: 367, column: 13)
!2804 = !DILocation(line: 367, column: 13, scope: !2803)
!2805 = !DILocation(line: 366, column: 70, scope: !2798)
!2806 = distinct !{!2806, !2800, !2807}
!2807 = !DILocation(line: 367, column: 13, scope: !2799)
!2808 = !DILocation(line: 264, column: 10, scope: !2690)
!2809 = !DILocation(line: 370, column: 28, scope: !2791)
!2810 = !DILocation(line: 372, column: 7, scope: !2781)
!2811 = !DILocation(line: 376, column: 7, scope: !2781)
!2812 = !DILocation(line: 379, column: 7, scope: !2781)
!2813 = !DILocation(line: 381, column: 12, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2781, file: !504, line: 381, column: 11)
!2815 = !DILocation(line: 381, column: 11, scope: !2781)
!2816 = !DILocation(line: 386, column: 12, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2781, file: !504, line: 386, column: 11)
!2818 = !DILocation(line: 386, column: 11, scope: !2781)
!2819 = !DILocation(line: 387, column: 9, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !504, line: 387, column: 9)
!2821 = distinct !DILexicalBlock(scope: !2817, file: !504, line: 387, column: 9)
!2822 = !DILocation(line: 387, column: 9, scope: !2821)
!2823 = !DILocation(line: 394, column: 7, scope: !2781)
!2824 = !DILocation(line: 397, column: 7, scope: !2781)
!2825 = !DILocation(line: 0, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2717, file: !504, line: 408, column: 11)
!2827 = !DILocation(line: 0, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !504, line: 419, column: 15)
!2829 = distinct !DILexicalBlock(scope: !2826, file: !504, line: 418, column: 9)
!2830 = !DILocation(line: 0, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2726, file: !504, line: 556, column: 15)
!2832 = !DILocation(line: 0, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2726, file: !504, line: 548, column: 15)
!2834 = !DILocation(line: 0, scope: !2740)
!2835 = !DILocation(line: 0, scope: !2747)
!2836 = !DILocation(line: 0, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2726, file: !504, line: 509, column: 15)
!2838 = !DILocation(line: 400, column: 8, scope: !2719)
!2839 = !DILocation(line: 0, scope: !2719)
!2840 = !DILocation(line: 400, column: 27, scope: !2718)
!2841 = !DILocation(line: 400, column: 19, scope: !2718)
!2842 = !DILocation(line: 400, column: 41, scope: !2718)
!2843 = !DILocation(line: 400, column: 48, scope: !2718)
!2844 = !DILocation(line: 400, column: 3, scope: !2719)
!2845 = !DILocation(line: 400, column: 60, scope: !2718)
!2846 = !DILocation(line: 0, scope: !2717)
!2847 = !DILocation(line: 409, column: 11, scope: !2826)
!2848 = !DILocation(line: 411, column: 17, scope: !2826)
!2849 = !DILocation(line: 412, column: 39, scope: !2826)
!2850 = !DILocation(line: 416, column: 32, scope: !2826)
!2851 = !DILocation(line: 412, column: 19, scope: !2826)
!2852 = !DILocation(line: 412, column: 15, scope: !2826)
!2853 = !DILocation(line: 417, column: 11, scope: !2826)
!2854 = !DILocation(line: 417, column: 26, scope: !2826)
!2855 = !DILocation(line: 417, column: 14, scope: !2826)
!2856 = !DILocation(line: 417, column: 63, scope: !2826)
!2857 = !DILocation(line: 408, column: 11, scope: !2717)
!2858 = !DILocation(line: 424, column: 11, scope: !2717)
!2859 = !DILocation(line: 425, column: 7, scope: !2717)
!2860 = !DILocation(line: 428, column: 15, scope: !2726)
!2861 = !DILocation(line: 430, column: 15, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !504, line: 430, column: 15)
!2863 = distinct !DILexicalBlock(scope: !2765, file: !504, line: 429, column: 13)
!2864 = !DILocation(line: 430, column: 15, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !504, line: 430, column: 15)
!2866 = !DILocation(line: 430, column: 15, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !504, line: 430, column: 15)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !504, line: 430, column: 15)
!2869 = distinct !DILexicalBlock(scope: !2865, file: !504, line: 430, column: 15)
!2870 = !DILocation(line: 430, column: 15, scope: !2868)
!2871 = !DILocation(line: 430, column: 15, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !504, line: 430, column: 15)
!2873 = distinct !DILexicalBlock(scope: !2869, file: !504, line: 430, column: 15)
!2874 = !DILocation(line: 430, column: 15, scope: !2873)
!2875 = !DILocation(line: 430, column: 15, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !504, line: 430, column: 15)
!2877 = distinct !DILexicalBlock(scope: !2869, file: !504, line: 430, column: 15)
!2878 = !DILocation(line: 430, column: 15, scope: !2877)
!2879 = !DILocation(line: 430, column: 15, scope: !2869)
!2880 = !DILocation(line: 430, column: 15, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !504, line: 430, column: 15)
!2882 = distinct !DILexicalBlock(scope: !2862, file: !504, line: 430, column: 15)
!2883 = !DILocation(line: 430, column: 15, scope: !2882)
!2884 = !DILocation(line: 438, column: 19, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2863, file: !504, line: 437, column: 19)
!2886 = !DILocation(line: 438, column: 24, scope: !2885)
!2887 = !DILocation(line: 438, column: 28, scope: !2885)
!2888 = !DILocation(line: 438, column: 38, scope: !2885)
!2889 = !DILocation(line: 438, column: 48, scope: !2885)
!2890 = !DILocation(line: 438, column: 59, scope: !2885)
!2891 = !DILocation(line: 440, column: 19, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !504, line: 440, column: 19)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !504, line: 440, column: 19)
!2894 = distinct !DILexicalBlock(scope: !2885, file: !504, line: 439, column: 17)
!2895 = !DILocation(line: 440, column: 19, scope: !2893)
!2896 = !DILocation(line: 441, column: 19, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !504, line: 441, column: 19)
!2898 = distinct !DILexicalBlock(scope: !2894, file: !504, line: 441, column: 19)
!2899 = !DILocation(line: 441, column: 19, scope: !2898)
!2900 = !DILocation(line: 442, column: 17, scope: !2894)
!2901 = !DILocation(line: 449, column: 20, scope: !2765)
!2902 = !DILocation(line: 454, column: 11, scope: !2726)
!2903 = !DILocation(line: 457, column: 19, scope: !2762)
!2904 = !DILocation(line: 463, column: 19, scope: !2761)
!2905 = !DILocation(line: 463, column: 24, scope: !2761)
!2906 = !DILocation(line: 463, column: 28, scope: !2761)
!2907 = !DILocation(line: 463, column: 38, scope: !2761)
!2908 = !DILocation(line: 463, column: 47, scope: !2761)
!2909 = !DILocation(line: 463, column: 41, scope: !2761)
!2910 = !DILocation(line: 463, column: 52, scope: !2761)
!2911 = !DILocation(line: 462, column: 19, scope: !2762)
!2912 = !DILocation(line: 464, column: 25, scope: !2761)
!2913 = !DILocation(line: 464, column: 17, scope: !2761)
!2914 = !DILocation(line: 471, column: 25, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2761, file: !504, line: 465, column: 19)
!2916 = !DILocation(line: 475, column: 21, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !504, line: 475, column: 21)
!2918 = distinct !DILexicalBlock(scope: !2915, file: !504, line: 475, column: 21)
!2919 = !DILocation(line: 475, column: 21, scope: !2918)
!2920 = !DILocation(line: 476, column: 21, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !504, line: 476, column: 21)
!2922 = distinct !DILexicalBlock(scope: !2915, file: !504, line: 476, column: 21)
!2923 = !DILocation(line: 476, column: 21, scope: !2922)
!2924 = !DILocation(line: 477, column: 21, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !504, line: 477, column: 21)
!2926 = distinct !DILexicalBlock(scope: !2915, file: !504, line: 477, column: 21)
!2927 = !DILocation(line: 477, column: 21, scope: !2926)
!2928 = !DILocation(line: 478, column: 21, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !504, line: 478, column: 21)
!2930 = distinct !DILexicalBlock(scope: !2915, file: !504, line: 478, column: 21)
!2931 = !DILocation(line: 478, column: 21, scope: !2930)
!2932 = !DILocation(line: 479, column: 21, scope: !2915)
!2933 = !DILocation(line: 492, column: 31, scope: !2726)
!2934 = !DILocation(line: 493, column: 31, scope: !2726)
!2935 = !DILocation(line: 495, column: 31, scope: !2726)
!2936 = !DILocation(line: 496, column: 31, scope: !2726)
!2937 = !DILocation(line: 497, column: 31, scope: !2726)
!2938 = !DILocation(line: 500, column: 15, scope: !2726)
!2939 = !DILocation(line: 502, column: 19, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !504, line: 501, column: 13)
!2941 = distinct !DILexicalBlock(scope: !2726, file: !504, line: 500, column: 15)
!2942 = !DILocation(line: 509, column: 33, scope: !2837)
!2943 = !DILocation(line: 0, scope: !2726)
!2944 = !DILocation(line: 512, column: 9, scope: !2726)
!2945 = !DILocation(line: 514, column: 15, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2726, file: !504, line: 513, column: 15)
!2947 = !DILocation(line: 517, column: 9, scope: !2726)
!2948 = !DILocation(line: 518, column: 15, scope: !2726)
!2949 = !DILocation(line: 526, column: 15, scope: !2726)
!2950 = !DILocation(line: 526, column: 40, scope: !2759)
!2951 = !DILocation(line: 526, column: 47, scope: !2759)
!2952 = !DILocation(line: 526, column: 18, scope: !2759)
!2953 = !DILocation(line: 530, column: 17, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2726, file: !504, line: 530, column: 15)
!2955 = !DILocation(line: 530, column: 15, scope: !2726)
!2956 = !DILocation(line: 535, column: 11, scope: !2726)
!2957 = !DILocation(line: 549, column: 15, scope: !2833)
!2958 = !DILocation(line: 556, column: 15, scope: !2726)
!2959 = !DILocation(line: 558, column: 19, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2831, file: !504, line: 557, column: 13)
!2961 = !DILocation(line: 561, column: 19, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2960, file: !504, line: 561, column: 19)
!2963 = !DILocation(line: 561, column: 35, scope: !2962)
!2964 = !DILocation(line: 561, column: 30, scope: !2962)
!2965 = !DILocation(line: 570, column: 15, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !504, line: 570, column: 15)
!2967 = distinct !DILexicalBlock(scope: !2960, file: !504, line: 570, column: 15)
!2968 = !DILocation(line: 570, column: 15, scope: !2967)
!2969 = !DILocation(line: 571, column: 15, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !504, line: 571, column: 15)
!2971 = distinct !DILexicalBlock(scope: !2960, file: !504, line: 571, column: 15)
!2972 = !DILocation(line: 571, column: 15, scope: !2971)
!2973 = !DILocation(line: 572, column: 15, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !504, line: 572, column: 15)
!2975 = distinct !DILexicalBlock(scope: !2960, file: !504, line: 572, column: 15)
!2976 = !DILocation(line: 572, column: 15, scope: !2975)
!2977 = !DILocation(line: 574, column: 13, scope: !2960)
!2978 = !DILocation(line: 614, column: 17, scope: !2725)
!2979 = !DILocation(line: 0, scope: !2725)
!2980 = !DILocation(line: 617, column: 29, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2730, file: !504, line: 615, column: 15)
!2982 = !DILocation(line: 617, column: 27, scope: !2981)
!2983 = !DILocation(line: 618, column: 15, scope: !2981)
!2984 = !DILocation(line: 621, column: 17, scope: !2729)
!2985 = !DILocation(line: 621, column: 27, scope: !2729)
!2986 = !DILocalVariable(name: "__dest", arg: 1, scope: !2987, file: !1651, line: 59, type: !39)
!2987 = distinct !DISubprogram(name: "memset", scope: !1651, file: !1651, line: 59, type: !2988, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2990)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!39, !39, !75, !41}
!2990 = !{!2986, !2991, !2992}
!2991 = !DILocalVariable(name: "__ch", arg: 2, scope: !2987, file: !1651, line: 59, type: !75)
!2992 = !DILocalVariable(name: "__len", arg: 3, scope: !2987, file: !1651, line: 59, type: !41)
!2993 = !DILocation(line: 0, scope: !2987, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 622, column: 17, scope: !2729)
!2995 = !DILocation(line: 71, column: 10, scope: !2987, inlinedAt: !2994)
!2996 = !DILocation(line: 626, column: 29, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2729, file: !504, line: 626, column: 21)
!2998 = !DILocation(line: 626, column: 21, scope: !2729)
!2999 = !DILocation(line: 627, column: 29, scope: !2997)
!3000 = !DILocation(line: 627, column: 19, scope: !2997)
!3001 = !DILocation(line: 629, column: 17, scope: !2729)
!3002 = !DILocation(line: 624, column: 19, scope: !2729)
!3003 = !DILocation(line: 625, column: 27, scope: !2729)
!3004 = !DILocation(line: 631, column: 21, scope: !2735)
!3005 = !DILocation(line: 632, column: 56, scope: !2735)
!3006 = !DILocation(line: 632, column: 50, scope: !2735)
!3007 = !DILocation(line: 633, column: 53, scope: !2735)
!3008 = !DILocation(line: 632, column: 36, scope: !2735)
!3009 = !DILocation(line: 634, column: 25, scope: !2735)
!3010 = !DILocation(line: 644, column: 38, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2742, file: !504, line: 642, column: 23)
!3012 = !DILocation(line: 644, column: 48, scope: !3011)
!3013 = !DILocation(line: 644, column: 25, scope: !3011)
!3014 = !DILocation(line: 644, column: 51, scope: !3011)
!3015 = !DILocation(line: 645, column: 28, scope: !3011)
!3016 = !DILocation(line: 644, column: 34, scope: !3011)
!3017 = distinct !{!3017, !3013, !3015}
!3018 = !DILocation(line: 658, column: 43, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !504, line: 658, column: 29)
!3020 = distinct !DILexicalBlock(scope: !2739, file: !504, line: 658, column: 29)
!3021 = !DILocation(line: 655, column: 29, scope: !2740)
!3022 = !DILocation(line: 0, scope: !2739)
!3023 = !DILocation(line: 659, column: 49, scope: !3019)
!3024 = !DILocation(line: 659, column: 39, scope: !3019)
!3025 = !DILocation(line: 659, column: 31, scope: !3019)
!3026 = !DILocation(line: 658, column: 53, scope: !3019)
!3027 = !DILocation(line: 658, column: 29, scope: !3020)
!3028 = distinct !{!3028, !3027, !3029}
!3029 = !DILocation(line: 667, column: 33, scope: !3020)
!3030 = !DILocation(line: 674, column: 19, scope: !2729)
!3031 = !DILocation(line: 670, column: 41, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2741, file: !504, line: 670, column: 29)
!3033 = !DILocation(line: 670, column: 31, scope: !3032)
!3034 = !DILocation(line: 670, column: 29, scope: !2741)
!3035 = !DILocation(line: 672, column: 27, scope: !2741)
!3036 = !DILocation(line: 675, column: 26, scope: !2729)
!3037 = !DILocation(line: 675, column: 24, scope: !2729)
!3038 = !DILocation(line: 674, column: 19, scope: !2735)
!3039 = distinct !{!3039, !3001, !3040}
!3040 = !DILocation(line: 675, column: 44, scope: !2729)
!3041 = !DILocation(line: 676, column: 15, scope: !2730)
!3042 = !DILocation(line: 0, scope: !2730)
!3043 = !DILocation(line: 678, column: 40, scope: !2725)
!3044 = !DILocation(line: 680, column: 19, scope: !2747)
!3045 = !DILocation(line: 680, column: 45, scope: !2747)
!3046 = !DILocation(line: 680, column: 23, scope: !2747)
!3047 = !DILocation(line: 684, column: 33, scope: !2746)
!3048 = !DILocation(line: 0, scope: !2746)
!3049 = !DILocation(line: 686, column: 17, scope: !2746)
!3050 = !DILocation(line: 405, column: 12, scope: !2717)
!3051 = !DILocation(line: 688, column: 43, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !504, line: 688, column: 25)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !504, line: 687, column: 19)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !504, line: 686, column: 17)
!3055 = distinct !DILexicalBlock(scope: !2746, file: !504, line: 686, column: 17)
!3056 = !DILocation(line: 690, column: 25, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !504, line: 690, column: 25)
!3058 = distinct !DILexicalBlock(scope: !3052, file: !504, line: 689, column: 23)
!3059 = !DILocation(line: 690, column: 25, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3057, file: !504, line: 690, column: 25)
!3061 = !DILocation(line: 690, column: 25, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !504, line: 690, column: 25)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !504, line: 690, column: 25)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !504, line: 690, column: 25)
!3065 = !DILocation(line: 690, column: 25, scope: !3063)
!3066 = !DILocation(line: 690, column: 25, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !504, line: 690, column: 25)
!3068 = distinct !DILexicalBlock(scope: !3064, file: !504, line: 690, column: 25)
!3069 = !DILocation(line: 690, column: 25, scope: !3068)
!3070 = !DILocation(line: 690, column: 25, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !504, line: 690, column: 25)
!3072 = distinct !DILexicalBlock(scope: !3064, file: !504, line: 690, column: 25)
!3073 = !DILocation(line: 690, column: 25, scope: !3072)
!3074 = !DILocation(line: 690, column: 25, scope: !3064)
!3075 = !DILocation(line: 690, column: 25, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !504, line: 690, column: 25)
!3077 = distinct !DILexicalBlock(scope: !3057, file: !504, line: 690, column: 25)
!3078 = !DILocation(line: 690, column: 25, scope: !3077)
!3079 = !DILocation(line: 691, column: 25, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !504, line: 691, column: 25)
!3081 = distinct !DILexicalBlock(scope: !3058, file: !504, line: 691, column: 25)
!3082 = !DILocation(line: 691, column: 25, scope: !3081)
!3083 = !DILocation(line: 692, column: 25, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !504, line: 692, column: 25)
!3085 = distinct !DILexicalBlock(scope: !3058, file: !504, line: 692, column: 25)
!3086 = !DILocation(line: 692, column: 25, scope: !3085)
!3087 = !DILocation(line: 693, column: 38, scope: !3058)
!3088 = !DILocation(line: 693, column: 33, scope: !3058)
!3089 = !DILocation(line: 694, column: 23, scope: !3058)
!3090 = !DILocation(line: 695, column: 30, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3052, file: !504, line: 695, column: 30)
!3092 = !DILocation(line: 695, column: 30, scope: !3052)
!3093 = !DILocation(line: 697, column: 25, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !504, line: 697, column: 25)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !504, line: 697, column: 25)
!3096 = distinct !DILexicalBlock(scope: !3091, file: !504, line: 696, column: 23)
!3097 = !DILocation(line: 697, column: 25, scope: !3095)
!3098 = !DILocation(line: 699, column: 23, scope: !3096)
!3099 = !DILocation(line: 700, column: 35, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3053, file: !504, line: 700, column: 25)
!3101 = !DILocation(line: 700, column: 30, scope: !3100)
!3102 = !DILocation(line: 700, column: 25, scope: !3053)
!3103 = !DILocation(line: 702, column: 21, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !504, line: 702, column: 21)
!3105 = distinct !DILexicalBlock(scope: !3053, file: !504, line: 702, column: 21)
!3106 = !DILocation(line: 702, column: 21, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !504, line: 702, column: 21)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !504, line: 702, column: 21)
!3109 = distinct !DILexicalBlock(scope: !3104, file: !504, line: 702, column: 21)
!3110 = !DILocation(line: 702, column: 21, scope: !3108)
!3111 = !DILocation(line: 702, column: 21, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !504, line: 702, column: 21)
!3113 = distinct !DILexicalBlock(scope: !3109, file: !504, line: 702, column: 21)
!3114 = !DILocation(line: 702, column: 21, scope: !3113)
!3115 = !DILocation(line: 702, column: 21, scope: !3109)
!3116 = !DILocation(line: 0, scope: !3053)
!3117 = !DILocation(line: 703, column: 21, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !504, line: 703, column: 21)
!3119 = distinct !DILexicalBlock(scope: !3053, file: !504, line: 703, column: 21)
!3120 = !DILocation(line: 703, column: 21, scope: !3119)
!3121 = !DILocation(line: 704, column: 25, scope: !3053)
!3122 = !DILocation(line: 686, column: 17, scope: !3054)
!3123 = distinct !{!3123, !3124, !3125}
!3124 = !DILocation(line: 686, column: 17, scope: !3055)
!3125 = !DILocation(line: 705, column: 19, scope: !3055)
!3126 = !DILocation(line: 416, column: 30, scope: !2826)
!3127 = !DILocation(line: 712, column: 34, scope: !2769)
!3128 = !DILocation(line: 715, column: 35, scope: !2769)
!3129 = !DILocation(line: 715, column: 17, scope: !2769)
!3130 = !DILocation(line: 715, column: 47, scope: !2769)
!3131 = !DILocation(line: 715, column: 65, scope: !2769)
!3132 = !DILocation(line: 716, column: 15, scope: !2769)
!3133 = !DILocation(line: 716, column: 11, scope: !2769)
!3134 = !DILocation(line: 712, column: 11, scope: !2717)
!3135 = !DILocation(line: 400, column: 10, scope: !2719)
!3136 = !DILocation(line: 719, column: 5, scope: !2717)
!3137 = !DILocation(line: 720, column: 7, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !2717, file: !504, line: 720, column: 7)
!3139 = !DILocation(line: 720, column: 7, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3138, file: !504, line: 720, column: 7)
!3141 = !DILocation(line: 720, column: 7, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !504, line: 720, column: 7)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !504, line: 720, column: 7)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !504, line: 720, column: 7)
!3145 = !DILocation(line: 720, column: 7, scope: !3143)
!3146 = !DILocation(line: 720, column: 7, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !504, line: 720, column: 7)
!3148 = distinct !DILexicalBlock(scope: !3144, file: !504, line: 720, column: 7)
!3149 = !DILocation(line: 720, column: 7, scope: !3148)
!3150 = !DILocation(line: 720, column: 7, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !504, line: 720, column: 7)
!3152 = distinct !DILexicalBlock(scope: !3144, file: !504, line: 720, column: 7)
!3153 = !DILocation(line: 720, column: 7, scope: !3152)
!3154 = !DILocation(line: 720, column: 7, scope: !3144)
!3155 = !DILocation(line: 720, column: 7, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !504, line: 720, column: 7)
!3157 = distinct !DILexicalBlock(scope: !3138, file: !504, line: 720, column: 7)
!3158 = !DILocation(line: 720, column: 7, scope: !3157)
!3159 = !DILocation(line: 722, column: 5, scope: !2717)
!3160 = !DILocation(line: 723, column: 7, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !504, line: 723, column: 7)
!3162 = distinct !DILexicalBlock(scope: !2717, file: !504, line: 723, column: 7)
!3163 = !DILocation(line: 424, column: 9, scope: !2717)
!3164 = !DILocation(line: 723, column: 7, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !504, line: 723, column: 7)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !504, line: 723, column: 7)
!3167 = distinct !DILexicalBlock(scope: !3161, file: !504, line: 723, column: 7)
!3168 = !DILocation(line: 723, column: 7, scope: !3166)
!3169 = !DILocation(line: 723, column: 7, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !504, line: 723, column: 7)
!3171 = distinct !DILexicalBlock(scope: !3167, file: !504, line: 723, column: 7)
!3172 = !DILocation(line: 723, column: 7, scope: !3171)
!3173 = !DILocation(line: 723, column: 7, scope: !3167)
!3174 = !DILocation(line: 724, column: 7, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !504, line: 724, column: 7)
!3176 = distinct !DILexicalBlock(scope: !2717, file: !504, line: 724, column: 7)
!3177 = !DILocation(line: 724, column: 7, scope: !3176)
!3178 = !DILocation(line: 726, column: 13, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !2717, file: !504, line: 726, column: 11)
!3180 = !DILocation(line: 726, column: 11, scope: !2717)
!3181 = !DILocation(line: 728, column: 5, scope: !2718)
!3182 = !DILocation(line: 400, column: 75, scope: !2718)
!3183 = !DILocation(line: 400, column: 3, scope: !2718)
!3184 = distinct !{!3184, !2844, !3185}
!3185 = !DILocation(line: 728, column: 5, scope: !2719)
!3186 = !DILocation(line: 730, column: 11, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !2690, file: !504, line: 730, column: 7)
!3188 = !DILocation(line: 730, column: 16, scope: !3187)
!3189 = !DILocation(line: 738, column: 51, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !2690, file: !504, line: 738, column: 7)
!3191 = !DILocation(line: 739, column: 10, scope: !3190)
!3192 = !DILocation(line: 741, column: 11, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !504, line: 741, column: 11)
!3194 = distinct !DILexicalBlock(scope: !3190, file: !504, line: 740, column: 5)
!3195 = !DILocation(line: 741, column: 11, scope: !3194)
!3196 = !DILocation(line: 742, column: 16, scope: !3193)
!3197 = !DILocation(line: 742, column: 9, scope: !3193)
!3198 = !DILocation(line: 746, column: 18, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3193, file: !504, line: 746, column: 16)
!3200 = !DILocation(line: 746, column: 32, scope: !3199)
!3201 = !DILocation(line: 746, column: 29, scope: !3199)
!3202 = !DILocation(line: 755, column: 7, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !2690, file: !504, line: 755, column: 7)
!3204 = !DILocation(line: 755, column: 20, scope: !3203)
!3205 = !DILocation(line: 756, column: 12, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !504, line: 756, column: 5)
!3207 = distinct !DILexicalBlock(scope: !3203, file: !504, line: 756, column: 5)
!3208 = !DILocation(line: 756, column: 5, scope: !3207)
!3209 = !DILocation(line: 757, column: 7, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !504, line: 757, column: 7)
!3211 = distinct !DILexicalBlock(scope: !3206, file: !504, line: 757, column: 7)
!3212 = !DILocation(line: 757, column: 7, scope: !3211)
!3213 = !DILocation(line: 756, column: 39, scope: !3206)
!3214 = distinct !{!3214, !3208, !3215}
!3215 = !DILocation(line: 757, column: 7, scope: !3207)
!3216 = !DILocation(line: 759, column: 11, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !2690, file: !504, line: 759, column: 7)
!3218 = !DILocation(line: 759, column: 7, scope: !2690)
!3219 = !DILocation(line: 760, column: 5, scope: !3217)
!3220 = !DILocation(line: 760, column: 17, scope: !3217)
!3221 = !DILocation(line: 763, column: 2, scope: !2690)
!3222 = !DILocation(line: 766, column: 51, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !2690, file: !504, line: 766, column: 7)
!3224 = !DILocation(line: 766, column: 21, scope: !3223)
!3225 = !DILocation(line: 770, column: 42, scope: !2690)
!3226 = !DILocation(line: 768, column: 10, scope: !2690)
!3227 = !DILocation(line: 768, column: 3, scope: !2690)
!3228 = !DILocation(line: 772, column: 1, scope: !2690)
!3229 = distinct !DISubprogram(name: "gettext_quote", scope: !504, file: !504, line: 207, type: !3230, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3232)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!73, !73, !13}
!3232 = !{!3233, !3234, !3235, !3236}
!3233 = !DILocalVariable(name: "msgid", arg: 1, scope: !3229, file: !504, line: 207, type: !73)
!3234 = !DILocalVariable(name: "s", arg: 2, scope: !3229, file: !504, line: 207, type: !13)
!3235 = !DILocalVariable(name: "translation", scope: !3229, file: !504, line: 209, type: !73)
!3236 = !DILocalVariable(name: "locale_code", scope: !3229, file: !504, line: 210, type: !73)
!3237 = !DILocation(line: 0, scope: !3229)
!3238 = !DILocation(line: 209, column: 29, scope: !3229)
!3239 = !DILocation(line: 212, column: 19, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3229, file: !504, line: 212, column: 7)
!3241 = !DILocation(line: 212, column: 7, scope: !3229)
!3242 = !DILocation(line: 233, column: 17, scope: !3229)
!3243 = !DILocalVariable(name: "s1", arg: 1, scope: !3244, file: !3245, line: 160, type: !73)
!3244 = distinct !DISubprogram(name: "strcaseeq0", scope: !3245, file: !3245, line: 160, type: !3246, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3248)
!3245 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!75, !73, !73, !72, !72, !72, !72, !72, !72, !72, !72, !72}
!3248 = !{!3243, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258}
!3249 = !DILocalVariable(name: "s2", arg: 2, scope: !3244, file: !3245, line: 160, type: !73)
!3250 = !DILocalVariable(name: "s20", arg: 3, scope: !3244, file: !3245, line: 160, type: !72)
!3251 = !DILocalVariable(name: "s21", arg: 4, scope: !3244, file: !3245, line: 160, type: !72)
!3252 = !DILocalVariable(name: "s22", arg: 5, scope: !3244, file: !3245, line: 160, type: !72)
!3253 = !DILocalVariable(name: "s23", arg: 6, scope: !3244, file: !3245, line: 160, type: !72)
!3254 = !DILocalVariable(name: "s24", arg: 7, scope: !3244, file: !3245, line: 160, type: !72)
!3255 = !DILocalVariable(name: "s25", arg: 8, scope: !3244, file: !3245, line: 160, type: !72)
!3256 = !DILocalVariable(name: "s26", arg: 9, scope: !3244, file: !3245, line: 160, type: !72)
!3257 = !DILocalVariable(name: "s27", arg: 10, scope: !3244, file: !3245, line: 160, type: !72)
!3258 = !DILocalVariable(name: "s28", arg: 11, scope: !3244, file: !3245, line: 160, type: !72)
!3259 = !DILocation(line: 0, scope: !3244, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 234, column: 7, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3229, file: !504, line: 234, column: 7)
!3262 = !DILocation(line: 162, column: 7, scope: !3263, inlinedAt: !3260)
!3263 = distinct !DILexicalBlock(scope: !3244, file: !3245, line: 162, column: 7)
!3264 = !DILocalVariable(name: "s1", arg: 1, scope: !3265, file: !3245, line: 146, type: !73)
!3265 = distinct !DISubprogram(name: "strcaseeq1", scope: !3245, file: !3245, line: 146, type: !3266, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!75, !73, !73, !72, !72, !72, !72, !72, !72, !72, !72}
!3268 = !{!3264, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277}
!3269 = !DILocalVariable(name: "s2", arg: 2, scope: !3265, file: !3245, line: 146, type: !73)
!3270 = !DILocalVariable(name: "s21", arg: 3, scope: !3265, file: !3245, line: 146, type: !72)
!3271 = !DILocalVariable(name: "s22", arg: 4, scope: !3265, file: !3245, line: 146, type: !72)
!3272 = !DILocalVariable(name: "s23", arg: 5, scope: !3265, file: !3245, line: 146, type: !72)
!3273 = !DILocalVariable(name: "s24", arg: 6, scope: !3265, file: !3245, line: 146, type: !72)
!3274 = !DILocalVariable(name: "s25", arg: 7, scope: !3265, file: !3245, line: 146, type: !72)
!3275 = !DILocalVariable(name: "s26", arg: 8, scope: !3265, file: !3245, line: 146, type: !72)
!3276 = !DILocalVariable(name: "s27", arg: 9, scope: !3265, file: !3245, line: 146, type: !72)
!3277 = !DILocalVariable(name: "s28", arg: 10, scope: !3265, file: !3245, line: 146, type: !72)
!3278 = !DILocation(line: 0, scope: !3265, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 167, column: 16, scope: !3280, inlinedAt: !3260)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !3245, line: 164, column: 11)
!3281 = distinct !DILexicalBlock(scope: !3263, file: !3245, line: 163, column: 5)
!3282 = !DILocation(line: 148, column: 7, scope: !3283, inlinedAt: !3279)
!3283 = distinct !DILexicalBlock(scope: !3265, file: !3245, line: 148, column: 7)
!3284 = !DILocalVariable(name: "s1", arg: 1, scope: !3285, file: !3245, line: 132, type: !73)
!3285 = distinct !DISubprogram(name: "strcaseeq2", scope: !3245, file: !3245, line: 132, type: !3286, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!75, !73, !73, !72, !72, !72, !72, !72, !72, !72}
!3288 = !{!3284, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296}
!3289 = !DILocalVariable(name: "s2", arg: 2, scope: !3285, file: !3245, line: 132, type: !73)
!3290 = !DILocalVariable(name: "s22", arg: 3, scope: !3285, file: !3245, line: 132, type: !72)
!3291 = !DILocalVariable(name: "s23", arg: 4, scope: !3285, file: !3245, line: 132, type: !72)
!3292 = !DILocalVariable(name: "s24", arg: 5, scope: !3285, file: !3245, line: 132, type: !72)
!3293 = !DILocalVariable(name: "s25", arg: 6, scope: !3285, file: !3245, line: 132, type: !72)
!3294 = !DILocalVariable(name: "s26", arg: 7, scope: !3285, file: !3245, line: 132, type: !72)
!3295 = !DILocalVariable(name: "s27", arg: 8, scope: !3285, file: !3245, line: 132, type: !72)
!3296 = !DILocalVariable(name: "s28", arg: 9, scope: !3285, file: !3245, line: 132, type: !72)
!3297 = !DILocation(line: 0, scope: !3285, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 153, column: 16, scope: !3299, inlinedAt: !3279)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !3245, line: 150, column: 11)
!3300 = distinct !DILexicalBlock(scope: !3283, file: !3245, line: 149, column: 5)
!3301 = !DILocation(line: 134, column: 7, scope: !3302, inlinedAt: !3298)
!3302 = distinct !DILexicalBlock(scope: !3285, file: !3245, line: 134, column: 7)
!3303 = !DILocalVariable(name: "s1", arg: 1, scope: !3304, file: !3245, line: 118, type: !73)
!3304 = distinct !DISubprogram(name: "strcaseeq3", scope: !3245, file: !3245, line: 118, type: !3305, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!75, !73, !73, !72, !72, !72, !72, !72, !72}
!3307 = !{!3303, !3308, !3309, !3310, !3311, !3312, !3313, !3314}
!3308 = !DILocalVariable(name: "s2", arg: 2, scope: !3304, file: !3245, line: 118, type: !73)
!3309 = !DILocalVariable(name: "s23", arg: 3, scope: !3304, file: !3245, line: 118, type: !72)
!3310 = !DILocalVariable(name: "s24", arg: 4, scope: !3304, file: !3245, line: 118, type: !72)
!3311 = !DILocalVariable(name: "s25", arg: 5, scope: !3304, file: !3245, line: 118, type: !72)
!3312 = !DILocalVariable(name: "s26", arg: 6, scope: !3304, file: !3245, line: 118, type: !72)
!3313 = !DILocalVariable(name: "s27", arg: 7, scope: !3304, file: !3245, line: 118, type: !72)
!3314 = !DILocalVariable(name: "s28", arg: 8, scope: !3304, file: !3245, line: 118, type: !72)
!3315 = !DILocation(line: 0, scope: !3304, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 139, column: 16, scope: !3317, inlinedAt: !3298)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !3245, line: 136, column: 11)
!3318 = distinct !DILexicalBlock(scope: !3302, file: !3245, line: 135, column: 5)
!3319 = !DILocation(line: 120, column: 7, scope: !3320, inlinedAt: !3316)
!3320 = distinct !DILexicalBlock(scope: !3304, file: !3245, line: 120, column: 7)
!3321 = !DILocation(line: 120, column: 7, scope: !3304, inlinedAt: !3316)
!3322 = !DILocalVariable(name: "s1", arg: 1, scope: !3323, file: !3245, line: 104, type: !73)
!3323 = distinct !DISubprogram(name: "strcaseeq4", scope: !3245, file: !3245, line: 104, type: !3324, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3326)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!75, !73, !73, !72, !72, !72, !72, !72}
!3326 = !{!3322, !3327, !3328, !3329, !3330, !3331, !3332}
!3327 = !DILocalVariable(name: "s2", arg: 2, scope: !3323, file: !3245, line: 104, type: !73)
!3328 = !DILocalVariable(name: "s24", arg: 3, scope: !3323, file: !3245, line: 104, type: !72)
!3329 = !DILocalVariable(name: "s25", arg: 4, scope: !3323, file: !3245, line: 104, type: !72)
!3330 = !DILocalVariable(name: "s26", arg: 5, scope: !3323, file: !3245, line: 104, type: !72)
!3331 = !DILocalVariable(name: "s27", arg: 6, scope: !3323, file: !3245, line: 104, type: !72)
!3332 = !DILocalVariable(name: "s28", arg: 7, scope: !3323, file: !3245, line: 104, type: !72)
!3333 = !DILocation(line: 0, scope: !3323, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 125, column: 16, scope: !3335, inlinedAt: !3316)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !3245, line: 122, column: 11)
!3336 = distinct !DILexicalBlock(scope: !3320, file: !3245, line: 121, column: 5)
!3337 = !DILocation(line: 106, column: 7, scope: !3338, inlinedAt: !3334)
!3338 = distinct !DILexicalBlock(scope: !3323, file: !3245, line: 106, column: 7)
!3339 = !DILocation(line: 106, column: 7, scope: !3323, inlinedAt: !3334)
!3340 = !DILocalVariable(name: "s1", arg: 1, scope: !3341, file: !3245, line: 90, type: !73)
!3341 = distinct !DISubprogram(name: "strcaseeq5", scope: !3245, file: !3245, line: 90, type: !3342, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3344)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!75, !73, !73, !72, !72, !72, !72}
!3344 = !{!3340, !3345, !3346, !3347, !3348, !3349}
!3345 = !DILocalVariable(name: "s2", arg: 2, scope: !3341, file: !3245, line: 90, type: !73)
!3346 = !DILocalVariable(name: "s25", arg: 3, scope: !3341, file: !3245, line: 90, type: !72)
!3347 = !DILocalVariable(name: "s26", arg: 4, scope: !3341, file: !3245, line: 90, type: !72)
!3348 = !DILocalVariable(name: "s27", arg: 5, scope: !3341, file: !3245, line: 90, type: !72)
!3349 = !DILocalVariable(name: "s28", arg: 6, scope: !3341, file: !3245, line: 90, type: !72)
!3350 = !DILocation(line: 0, scope: !3341, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 111, column: 16, scope: !3352, inlinedAt: !3334)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !3245, line: 108, column: 11)
!3353 = distinct !DILexicalBlock(scope: !3338, file: !3245, line: 107, column: 5)
!3354 = !DILocation(line: 92, column: 7, scope: !3355, inlinedAt: !3351)
!3355 = distinct !DILexicalBlock(scope: !3341, file: !3245, line: 92, column: 7)
!3356 = !DILocation(line: 92, column: 7, scope: !3341, inlinedAt: !3351)
!3357 = !DILocation(line: 235, column: 12, scope: !3261)
!3358 = !DILocation(line: 235, column: 21, scope: !3261)
!3359 = !DILocation(line: 235, column: 5, scope: !3261)
!3360 = !DILocation(line: 0, scope: !3265, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 167, column: 16, scope: !3280, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 236, column: 7, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3229, file: !504, line: 236, column: 7)
!3364 = !DILocation(line: 148, column: 7, scope: !3283, inlinedAt: !3361)
!3365 = !DILocation(line: 0, scope: !3285, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 153, column: 16, scope: !3299, inlinedAt: !3361)
!3367 = !DILocation(line: 134, column: 7, scope: !3302, inlinedAt: !3366)
!3368 = !DILocation(line: 134, column: 7, scope: !3285, inlinedAt: !3366)
!3369 = !DILocation(line: 0, scope: !3304, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 139, column: 16, scope: !3317, inlinedAt: !3366)
!3371 = !DILocation(line: 120, column: 7, scope: !3320, inlinedAt: !3370)
!3372 = !DILocation(line: 120, column: 7, scope: !3304, inlinedAt: !3370)
!3373 = !DILocation(line: 0, scope: !3323, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 125, column: 16, scope: !3335, inlinedAt: !3370)
!3375 = !DILocation(line: 106, column: 7, scope: !3338, inlinedAt: !3374)
!3376 = !DILocation(line: 106, column: 7, scope: !3323, inlinedAt: !3374)
!3377 = !DILocation(line: 0, scope: !3341, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 111, column: 16, scope: !3352, inlinedAt: !3374)
!3379 = !DILocation(line: 92, column: 7, scope: !3355, inlinedAt: !3378)
!3380 = !DILocation(line: 92, column: 7, scope: !3341, inlinedAt: !3378)
!3381 = !DILocalVariable(name: "s1", arg: 1, scope: !3382, file: !3245, line: 76, type: !73)
!3382 = distinct !DISubprogram(name: "strcaseeq6", scope: !3245, file: !3245, line: 76, type: !3383, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!75, !73, !73, !72, !72, !72}
!3385 = !{!3381, !3386, !3387, !3388, !3389}
!3386 = !DILocalVariable(name: "s2", arg: 2, scope: !3382, file: !3245, line: 76, type: !73)
!3387 = !DILocalVariable(name: "s26", arg: 3, scope: !3382, file: !3245, line: 76, type: !72)
!3388 = !DILocalVariable(name: "s27", arg: 4, scope: !3382, file: !3245, line: 76, type: !72)
!3389 = !DILocalVariable(name: "s28", arg: 5, scope: !3382, file: !3245, line: 76, type: !72)
!3390 = !DILocation(line: 0, scope: !3382, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 97, column: 16, scope: !3392, inlinedAt: !3378)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !3245, line: 94, column: 11)
!3393 = distinct !DILexicalBlock(scope: !3355, file: !3245, line: 93, column: 5)
!3394 = !DILocation(line: 78, column: 7, scope: !3395, inlinedAt: !3391)
!3395 = distinct !DILexicalBlock(scope: !3382, file: !3245, line: 78, column: 7)
!3396 = !DILocation(line: 78, column: 7, scope: !3382, inlinedAt: !3391)
!3397 = !DILocalVariable(name: "s1", arg: 1, scope: !3398, file: !3245, line: 62, type: !73)
!3398 = distinct !DISubprogram(name: "strcaseeq7", scope: !3245, file: !3245, line: 62, type: !3399, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3401)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!75, !73, !73, !72, !72}
!3401 = !{!3397, !3402, !3403, !3404}
!3402 = !DILocalVariable(name: "s2", arg: 2, scope: !3398, file: !3245, line: 62, type: !73)
!3403 = !DILocalVariable(name: "s27", arg: 3, scope: !3398, file: !3245, line: 62, type: !72)
!3404 = !DILocalVariable(name: "s28", arg: 4, scope: !3398, file: !3245, line: 62, type: !72)
!3405 = !DILocation(line: 0, scope: !3398, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 83, column: 16, scope: !3407, inlinedAt: !3391)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !3245, line: 80, column: 11)
!3408 = distinct !DILexicalBlock(scope: !3395, file: !3245, line: 79, column: 5)
!3409 = !DILocation(line: 64, column: 7, scope: !3410, inlinedAt: !3406)
!3410 = distinct !DILexicalBlock(scope: !3398, file: !3245, line: 64, column: 7)
!3411 = !DILocation(line: 236, column: 7, scope: !3229)
!3412 = !DILocation(line: 237, column: 12, scope: !3363)
!3413 = !DILocation(line: 237, column: 21, scope: !3363)
!3414 = !DILocation(line: 237, column: 5, scope: !3363)
!3415 = !DILocation(line: 239, column: 13, scope: !3229)
!3416 = !DILocation(line: 239, column: 11, scope: !3229)
!3417 = !DILocation(line: 239, column: 3, scope: !3229)
!3418 = !DILocation(line: 240, column: 1, scope: !3229)
!3419 = distinct !DISubprogram(name: "quotearg_alloc", scope: !504, file: !504, line: 799, type: !3420, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3422)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!71, !73, !41, !521}
!3422 = !{!3423, !3424, !3425}
!3423 = !DILocalVariable(name: "arg", arg: 1, scope: !3419, file: !504, line: 799, type: !73)
!3424 = !DILocalVariable(name: "argsize", arg: 2, scope: !3419, file: !504, line: 799, type: !41)
!3425 = !DILocalVariable(name: "o", arg: 3, scope: !3419, file: !504, line: 800, type: !521)
!3426 = !DILocation(line: 0, scope: !3419)
!3427 = !DILocalVariable(name: "arg", arg: 1, scope: !3428, file: !504, line: 812, type: !73)
!3428 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !504, file: !504, line: 812, type: !3429, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!71, !73, !41, !40, !521}
!3431 = !{!3427, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439}
!3432 = !DILocalVariable(name: "argsize", arg: 2, scope: !3428, file: !504, line: 812, type: !41)
!3433 = !DILocalVariable(name: "size", arg: 3, scope: !3428, file: !504, line: 812, type: !40)
!3434 = !DILocalVariable(name: "o", arg: 4, scope: !3428, file: !504, line: 813, type: !521)
!3435 = !DILocalVariable(name: "p", scope: !3428, file: !504, line: 815, type: !521)
!3436 = !DILocalVariable(name: "e", scope: !3428, file: !504, line: 816, type: !75)
!3437 = !DILocalVariable(name: "flags", scope: !3428, file: !504, line: 818, type: !75)
!3438 = !DILocalVariable(name: "bufsize", scope: !3428, file: !504, line: 819, type: !41)
!3439 = !DILocalVariable(name: "buf", scope: !3428, file: !504, line: 823, type: !71)
!3440 = !DILocation(line: 0, scope: !3428, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 802, column: 10, scope: !3419)
!3442 = !DILocation(line: 815, column: 37, scope: !3428, inlinedAt: !3441)
!3443 = !DILocation(line: 816, column: 11, scope: !3428, inlinedAt: !3441)
!3444 = !DILocation(line: 818, column: 18, scope: !3428, inlinedAt: !3441)
!3445 = !DILocation(line: 818, column: 24, scope: !3428, inlinedAt: !3441)
!3446 = !DILocation(line: 819, column: 69, scope: !3428, inlinedAt: !3441)
!3447 = !DILocation(line: 820, column: 53, scope: !3428, inlinedAt: !3441)
!3448 = !DILocation(line: 821, column: 49, scope: !3428, inlinedAt: !3441)
!3449 = !DILocation(line: 822, column: 49, scope: !3428, inlinedAt: !3441)
!3450 = !DILocation(line: 819, column: 20, scope: !3428, inlinedAt: !3441)
!3451 = !DILocation(line: 822, column: 62, scope: !3428, inlinedAt: !3441)
!3452 = !DILocalVariable(name: "n", arg: 1, scope: !3453, file: !35, line: 216, type: !41)
!3453 = distinct !DISubprogram(name: "xcharalloc", scope: !35, file: !35, line: 216, type: !3454, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!71, !41}
!3456 = !{!3452}
!3457 = !DILocation(line: 0, scope: !3453, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 823, column: 15, scope: !3428, inlinedAt: !3441)
!3459 = !DILocation(line: 218, column: 10, scope: !3453, inlinedAt: !3458)
!3460 = !DILocation(line: 824, column: 60, scope: !3428, inlinedAt: !3441)
!3461 = !DILocation(line: 826, column: 32, scope: !3428, inlinedAt: !3441)
!3462 = !DILocation(line: 826, column: 47, scope: !3428, inlinedAt: !3441)
!3463 = !DILocation(line: 824, column: 3, scope: !3428, inlinedAt: !3441)
!3464 = !DILocation(line: 827, column: 9, scope: !3428, inlinedAt: !3441)
!3465 = !DILocation(line: 802, column: 3, scope: !3419)
!3466 = !DILocation(line: 0, scope: !3428)
!3467 = !DILocation(line: 815, column: 37, scope: !3428)
!3468 = !DILocation(line: 816, column: 11, scope: !3428)
!3469 = !DILocation(line: 818, column: 18, scope: !3428)
!3470 = !DILocation(line: 818, column: 27, scope: !3428)
!3471 = !DILocation(line: 818, column: 24, scope: !3428)
!3472 = !DILocation(line: 819, column: 69, scope: !3428)
!3473 = !DILocation(line: 820, column: 53, scope: !3428)
!3474 = !DILocation(line: 821, column: 49, scope: !3428)
!3475 = !DILocation(line: 822, column: 49, scope: !3428)
!3476 = !DILocation(line: 819, column: 20, scope: !3428)
!3477 = !DILocation(line: 822, column: 62, scope: !3428)
!3478 = !DILocation(line: 0, scope: !3453, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 823, column: 15, scope: !3428)
!3480 = !DILocation(line: 218, column: 10, scope: !3453, inlinedAt: !3479)
!3481 = !DILocation(line: 824, column: 60, scope: !3428)
!3482 = !DILocation(line: 826, column: 32, scope: !3428)
!3483 = !DILocation(line: 826, column: 47, scope: !3428)
!3484 = !DILocation(line: 824, column: 3, scope: !3428)
!3485 = !DILocation(line: 827, column: 9, scope: !3428)
!3486 = !DILocation(line: 828, column: 7, scope: !3428)
!3487 = !DILocation(line: 829, column: 11, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3428, file: !504, line: 828, column: 7)
!3489 = !DILocation(line: 829, column: 5, scope: !3488)
!3490 = !DILocation(line: 830, column: 3, scope: !3428)
!3491 = distinct !DISubprogram(name: "quotearg_free", scope: !504, file: !504, line: 848, type: !153, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3492)
!3492 = !{!3493, !3494}
!3493 = !DILocalVariable(name: "sv", scope: !3491, file: !504, line: 850, type: !589)
!3494 = !DILocalVariable(name: "i", scope: !3491, file: !504, line: 851, type: !75)
!3495 = !DILocation(line: 850, column: 24, scope: !3491)
!3496 = !DILocation(line: 0, scope: !3491)
!3497 = !DILocation(line: 852, column: 19, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !504, line: 852, column: 3)
!3499 = distinct !DILexicalBlock(scope: !3491, file: !504, line: 852, column: 3)
!3500 = !DILocation(line: 852, column: 17, scope: !3498)
!3501 = !DILocation(line: 852, column: 3, scope: !3499)
!3502 = !DILocation(line: 853, column: 17, scope: !3498)
!3503 = !{!3504, !1317, i64 8}
!3504 = !{!"slotvec", !1461, i64 0, !1317, i64 8}
!3505 = !DILocation(line: 853, column: 5, scope: !3498)
!3506 = !DILocation(line: 852, column: 28, scope: !3498)
!3507 = distinct !{!3507, !3501, !3508}
!3508 = !DILocation(line: 853, column: 20, scope: !3499)
!3509 = !DILocation(line: 854, column: 13, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3491, file: !504, line: 854, column: 7)
!3511 = !DILocation(line: 854, column: 17, scope: !3510)
!3512 = !DILocation(line: 854, column: 7, scope: !3491)
!3513 = !DILocation(line: 856, column: 7, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3510, file: !504, line: 855, column: 5)
!3515 = !DILocation(line: 857, column: 21, scope: !3514)
!3516 = !{!3504, !1461, i64 0}
!3517 = !DILocation(line: 858, column: 20, scope: !3514)
!3518 = !DILocation(line: 859, column: 5, scope: !3514)
!3519 = !DILocation(line: 860, column: 10, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3491, file: !504, line: 860, column: 7)
!3521 = !DILocation(line: 860, column: 7, scope: !3491)
!3522 = !DILocation(line: 862, column: 13, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3520, file: !504, line: 861, column: 5)
!3524 = !DILocation(line: 862, column: 7, scope: !3523)
!3525 = !DILocation(line: 863, column: 15, scope: !3523)
!3526 = !DILocation(line: 864, column: 5, scope: !3523)
!3527 = !DILocation(line: 865, column: 10, scope: !3491)
!3528 = !DILocation(line: 866, column: 1, scope: !3491)
!3529 = distinct !DISubprogram(name: "quotearg_n", scope: !504, file: !504, line: 931, type: !140, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3530)
!3530 = !{!3531, !3532}
!3531 = !DILocalVariable(name: "n", arg: 1, scope: !3529, file: !504, line: 931, type: !75)
!3532 = !DILocalVariable(name: "arg", arg: 2, scope: !3529, file: !504, line: 931, type: !73)
!3533 = !DILocation(line: 0, scope: !3529)
!3534 = !DILocation(line: 933, column: 10, scope: !3529)
!3535 = !DILocation(line: 933, column: 3, scope: !3529)
!3536 = distinct !DISubprogram(name: "quotearg_n_options", scope: !504, file: !504, line: 877, type: !3537, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3539)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!71, !75, !73, !41, !521}
!3539 = !{!3540, !3541, !3542, !3543, !3544, !3545, !3546, !3549, !3550, !3552, !3553, !3554}
!3540 = !DILocalVariable(name: "n", arg: 1, scope: !3536, file: !504, line: 877, type: !75)
!3541 = !DILocalVariable(name: "arg", arg: 2, scope: !3536, file: !504, line: 877, type: !73)
!3542 = !DILocalVariable(name: "argsize", arg: 3, scope: !3536, file: !504, line: 877, type: !41)
!3543 = !DILocalVariable(name: "options", arg: 4, scope: !3536, file: !504, line: 878, type: !521)
!3544 = !DILocalVariable(name: "e", scope: !3536, file: !504, line: 880, type: !75)
!3545 = !DILocalVariable(name: "sv", scope: !3536, file: !504, line: 882, type: !589)
!3546 = !DILocalVariable(name: "preallocated", scope: !3547, file: !504, line: 889, type: !355)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !504, line: 888, column: 5)
!3548 = distinct !DILexicalBlock(scope: !3536, file: !504, line: 887, column: 7)
!3549 = !DILocalVariable(name: "nmax", scope: !3547, file: !504, line: 890, type: !75)
!3550 = !DILocalVariable(name: "size", scope: !3551, file: !504, line: 903, type: !41)
!3551 = distinct !DILexicalBlock(scope: !3536, file: !504, line: 902, column: 3)
!3552 = !DILocalVariable(name: "val", scope: !3551, file: !504, line: 904, type: !71)
!3553 = !DILocalVariable(name: "flags", scope: !3551, file: !504, line: 906, type: !75)
!3554 = !DILocalVariable(name: "qsize", scope: !3551, file: !504, line: 907, type: !41)
!3555 = !DILocation(line: 0, scope: !3536)
!3556 = !DILocation(line: 880, column: 11, scope: !3536)
!3557 = !DILocation(line: 882, column: 24, scope: !3536)
!3558 = !DILocation(line: 884, column: 9, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3536, file: !504, line: 884, column: 7)
!3560 = !DILocation(line: 884, column: 7, scope: !3536)
!3561 = !DILocation(line: 885, column: 5, scope: !3559)
!3562 = !DILocation(line: 887, column: 7, scope: !3548)
!3563 = !DILocation(line: 887, column: 14, scope: !3548)
!3564 = !DILocation(line: 887, column: 7, scope: !3536)
!3565 = !DILocation(line: 889, column: 31, scope: !3547)
!3566 = !DILocation(line: 0, scope: !3547)
!3567 = !DILocation(line: 892, column: 16, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3547, file: !504, line: 892, column: 11)
!3569 = !DILocation(line: 892, column: 11, scope: !3547)
!3570 = !DILocation(line: 893, column: 9, scope: !3568)
!3571 = !DILocation(line: 895, column: 32, scope: !3547)
!3572 = !DILocation(line: 895, column: 61, scope: !3547)
!3573 = !DILocation(line: 895, column: 58, scope: !3547)
!3574 = !DILocation(line: 895, column: 66, scope: !3547)
!3575 = !DILocation(line: 895, column: 22, scope: !3547)
!3576 = !DILocation(line: 895, column: 15, scope: !3547)
!3577 = !DILocation(line: 896, column: 11, scope: !3547)
!3578 = !DILocation(line: 897, column: 15, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3547, file: !504, line: 896, column: 11)
!3580 = !{i64 0, i64 8, !1460, i64 8, i64 8, !1316}
!3581 = !DILocation(line: 897, column: 9, scope: !3579)
!3582 = !DILocation(line: 898, column: 20, scope: !3547)
!3583 = !DILocation(line: 898, column: 18, scope: !3547)
!3584 = !DILocation(line: 898, column: 15, scope: !3547)
!3585 = !DILocation(line: 898, column: 38, scope: !3547)
!3586 = !DILocation(line: 898, column: 31, scope: !3547)
!3587 = !DILocation(line: 898, column: 48, scope: !3547)
!3588 = !DILocation(line: 0, scope: !2987, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 898, column: 7, scope: !3547)
!3590 = !DILocation(line: 71, column: 10, scope: !2987, inlinedAt: !3589)
!3591 = !DILocation(line: 899, column: 14, scope: !3547)
!3592 = !DILocation(line: 900, column: 5, scope: !3547)
!3593 = !DILocation(line: 903, column: 19, scope: !3551)
!3594 = !DILocation(line: 903, column: 25, scope: !3551)
!3595 = !DILocation(line: 0, scope: !3551)
!3596 = !DILocation(line: 904, column: 23, scope: !3551)
!3597 = !DILocation(line: 906, column: 26, scope: !3551)
!3598 = !DILocation(line: 906, column: 32, scope: !3551)
!3599 = !DILocation(line: 908, column: 55, scope: !3551)
!3600 = !DILocation(line: 909, column: 46, scope: !3551)
!3601 = !DILocation(line: 910, column: 55, scope: !3551)
!3602 = !DILocation(line: 911, column: 55, scope: !3551)
!3603 = !DILocation(line: 907, column: 20, scope: !3551)
!3604 = !DILocation(line: 913, column: 14, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3551, file: !504, line: 913, column: 9)
!3606 = !DILocation(line: 913, column: 9, scope: !3551)
!3607 = !DILocation(line: 915, column: 35, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3605, file: !504, line: 914, column: 7)
!3609 = !DILocation(line: 915, column: 20, scope: !3608)
!3610 = !DILocation(line: 916, column: 17, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3608, file: !504, line: 916, column: 13)
!3612 = !DILocation(line: 916, column: 13, scope: !3608)
!3613 = !DILocation(line: 917, column: 11, scope: !3611)
!3614 = !DILocation(line: 0, scope: !3453, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 918, column: 27, scope: !3608)
!3616 = !DILocation(line: 218, column: 10, scope: !3453, inlinedAt: !3615)
!3617 = !DILocation(line: 918, column: 19, scope: !3608)
!3618 = !DILocation(line: 919, column: 69, scope: !3608)
!3619 = !DILocation(line: 921, column: 44, scope: !3608)
!3620 = !DILocation(line: 922, column: 44, scope: !3608)
!3621 = !DILocation(line: 919, column: 9, scope: !3608)
!3622 = !DILocation(line: 923, column: 7, scope: !3608)
!3623 = !DILocation(line: 925, column: 11, scope: !3551)
!3624 = !DILocation(line: 926, column: 5, scope: !3551)
!3625 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !504, file: !504, line: 937, type: !3626, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3628)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!71, !75, !73, !41}
!3628 = !{!3629, !3630, !3631}
!3629 = !DILocalVariable(name: "n", arg: 1, scope: !3625, file: !504, line: 937, type: !75)
!3630 = !DILocalVariable(name: "arg", arg: 2, scope: !3625, file: !504, line: 937, type: !73)
!3631 = !DILocalVariable(name: "argsize", arg: 3, scope: !3625, file: !504, line: 937, type: !41)
!3632 = !DILocation(line: 0, scope: !3625)
!3633 = !DILocation(line: 939, column: 10, scope: !3625)
!3634 = !DILocation(line: 939, column: 3, scope: !3625)
!3635 = distinct !DISubprogram(name: "quotearg", scope: !504, file: !504, line: 943, type: !146, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3636)
!3636 = !{!3637}
!3637 = !DILocalVariable(name: "arg", arg: 1, scope: !3635, file: !504, line: 943, type: !73)
!3638 = !DILocation(line: 0, scope: !3635)
!3639 = !DILocation(line: 0, scope: !3529, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 945, column: 10, scope: !3635)
!3641 = !DILocation(line: 933, column: 10, scope: !3529, inlinedAt: !3640)
!3642 = !DILocation(line: 945, column: 3, scope: !3635)
!3643 = distinct !DISubprogram(name: "quotearg_mem", scope: !504, file: !504, line: 949, type: !3644, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3646)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!71, !73, !41}
!3646 = !{!3647, !3648}
!3647 = !DILocalVariable(name: "arg", arg: 1, scope: !3643, file: !504, line: 949, type: !73)
!3648 = !DILocalVariable(name: "argsize", arg: 2, scope: !3643, file: !504, line: 949, type: !41)
!3649 = !DILocation(line: 0, scope: !3643)
!3650 = !DILocation(line: 0, scope: !3625, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 951, column: 10, scope: !3643)
!3652 = !DILocation(line: 939, column: 10, scope: !3625, inlinedAt: !3651)
!3653 = !DILocation(line: 951, column: 3, scope: !3643)
!3654 = distinct !DISubprogram(name: "quotearg_n_style", scope: !504, file: !504, line: 955, type: !3655, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!71, !75, !13, !73}
!3657 = !{!3658, !3659, !3660, !3661}
!3658 = !DILocalVariable(name: "n", arg: 1, scope: !3654, file: !504, line: 955, type: !75)
!3659 = !DILocalVariable(name: "s", arg: 2, scope: !3654, file: !504, line: 955, type: !13)
!3660 = !DILocalVariable(name: "arg", arg: 3, scope: !3654, file: !504, line: 955, type: !73)
!3661 = !DILocalVariable(name: "o", scope: !3654, file: !504, line: 957, type: !522)
!3662 = !DILocation(line: 0, scope: !3654)
!3663 = !DILocation(line: 957, column: 3, scope: !3654)
!3664 = !DILocation(line: 957, column: 32, scope: !3654)
!3665 = !DILocalVariable(name: "style", arg: 1, scope: !3666, file: !504, line: 193, type: !13)
!3666 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !504, file: !504, line: 193, type: !3667, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!523, !13}
!3669 = !{!3665, !3670}
!3670 = !DILocalVariable(name: "o", scope: !3666, file: !504, line: 195, type: !523)
!3671 = !DILocation(line: 0, scope: !3666, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 957, column: 36, scope: !3654)
!3673 = !DILocation(line: 195, column: 26, scope: !3666, inlinedAt: !3672)
!3674 = !{!3675}
!3675 = distinct !{!3675, !3676, !"quoting_options_from_style: argument 0"}
!3676 = distinct !{!3676, !"quoting_options_from_style"}
!3677 = !DILocation(line: 196, column: 13, scope: !3678, inlinedAt: !3672)
!3678 = distinct !DILexicalBlock(scope: !3666, file: !504, line: 196, column: 7)
!3679 = !DILocation(line: 196, column: 7, scope: !3666, inlinedAt: !3672)
!3680 = !DILocation(line: 197, column: 5, scope: !3678, inlinedAt: !3672)
!3681 = !DILocation(line: 198, column: 5, scope: !3666, inlinedAt: !3672)
!3682 = !DILocation(line: 198, column: 11, scope: !3666, inlinedAt: !3672)
!3683 = !DILocation(line: 958, column: 10, scope: !3654)
!3684 = !DILocation(line: 959, column: 1, scope: !3654)
!3685 = !DILocation(line: 958, column: 3, scope: !3654)
!3686 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !504, file: !504, line: 962, type: !3687, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3689)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!71, !75, !13, !73, !41}
!3689 = !{!3690, !3691, !3692, !3693, !3694}
!3690 = !DILocalVariable(name: "n", arg: 1, scope: !3686, file: !504, line: 962, type: !75)
!3691 = !DILocalVariable(name: "s", arg: 2, scope: !3686, file: !504, line: 962, type: !13)
!3692 = !DILocalVariable(name: "arg", arg: 3, scope: !3686, file: !504, line: 963, type: !73)
!3693 = !DILocalVariable(name: "argsize", arg: 4, scope: !3686, file: !504, line: 963, type: !41)
!3694 = !DILocalVariable(name: "o", scope: !3686, file: !504, line: 965, type: !522)
!3695 = !DILocation(line: 0, scope: !3686)
!3696 = !DILocation(line: 965, column: 3, scope: !3686)
!3697 = !DILocation(line: 965, column: 32, scope: !3686)
!3698 = !DILocation(line: 0, scope: !3666, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 965, column: 36, scope: !3686)
!3700 = !DILocation(line: 195, column: 26, scope: !3666, inlinedAt: !3699)
!3701 = !{!3702}
!3702 = distinct !{!3702, !3703, !"quoting_options_from_style: argument 0"}
!3703 = distinct !{!3703, !"quoting_options_from_style"}
!3704 = !DILocation(line: 196, column: 13, scope: !3678, inlinedAt: !3699)
!3705 = !DILocation(line: 196, column: 7, scope: !3666, inlinedAt: !3699)
!3706 = !DILocation(line: 197, column: 5, scope: !3678, inlinedAt: !3699)
!3707 = !DILocation(line: 198, column: 5, scope: !3666, inlinedAt: !3699)
!3708 = !DILocation(line: 198, column: 11, scope: !3666, inlinedAt: !3699)
!3709 = !DILocation(line: 966, column: 10, scope: !3686)
!3710 = !DILocation(line: 967, column: 1, scope: !3686)
!3711 = !DILocation(line: 966, column: 3, scope: !3686)
!3712 = distinct !DISubprogram(name: "quotearg_style", scope: !504, file: !504, line: 970, type: !186, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3713)
!3713 = !{!3714, !3715}
!3714 = !DILocalVariable(name: "s", arg: 1, scope: !3712, file: !504, line: 970, type: !13)
!3715 = !DILocalVariable(name: "arg", arg: 2, scope: !3712, file: !504, line: 970, type: !73)
!3716 = !DILocation(line: 195, column: 26, scope: !3666, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 957, column: 36, scope: !3654, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 972, column: 10, scope: !3712)
!3719 = !DILocation(line: 957, column: 32, scope: !3654, inlinedAt: !3718)
!3720 = !DILocation(line: 0, scope: !3712)
!3721 = !DILocation(line: 0, scope: !3654, inlinedAt: !3718)
!3722 = !DILocation(line: 957, column: 3, scope: !3654, inlinedAt: !3718)
!3723 = !DILocation(line: 0, scope: !3666, inlinedAt: !3717)
!3724 = !{!3725}
!3725 = distinct !{!3725, !3726, !"quoting_options_from_style: argument 0"}
!3726 = distinct !{!3726, !"quoting_options_from_style"}
!3727 = !DILocation(line: 196, column: 13, scope: !3678, inlinedAt: !3717)
!3728 = !DILocation(line: 196, column: 7, scope: !3666, inlinedAt: !3717)
!3729 = !DILocation(line: 197, column: 5, scope: !3678, inlinedAt: !3717)
!3730 = !DILocation(line: 198, column: 5, scope: !3666, inlinedAt: !3717)
!3731 = !DILocation(line: 198, column: 11, scope: !3666, inlinedAt: !3717)
!3732 = !DILocation(line: 958, column: 10, scope: !3654, inlinedAt: !3718)
!3733 = !DILocation(line: 959, column: 1, scope: !3654, inlinedAt: !3718)
!3734 = !DILocation(line: 972, column: 3, scope: !3712)
!3735 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !504, file: !504, line: 976, type: !3736, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!71, !13, !73, !41}
!3738 = !{!3739, !3740, !3741}
!3739 = !DILocalVariable(name: "s", arg: 1, scope: !3735, file: !504, line: 976, type: !13)
!3740 = !DILocalVariable(name: "arg", arg: 2, scope: !3735, file: !504, line: 976, type: !73)
!3741 = !DILocalVariable(name: "argsize", arg: 3, scope: !3735, file: !504, line: 976, type: !41)
!3742 = !DILocation(line: 195, column: 26, scope: !3666, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 965, column: 36, scope: !3686, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 978, column: 10, scope: !3735)
!3745 = !DILocation(line: 965, column: 32, scope: !3686, inlinedAt: !3744)
!3746 = !DILocation(line: 0, scope: !3735)
!3747 = !DILocation(line: 0, scope: !3686, inlinedAt: !3744)
!3748 = !DILocation(line: 965, column: 3, scope: !3686, inlinedAt: !3744)
!3749 = !DILocation(line: 0, scope: !3666, inlinedAt: !3743)
!3750 = !{!3751}
!3751 = distinct !{!3751, !3752, !"quoting_options_from_style: argument 0"}
!3752 = distinct !{!3752, !"quoting_options_from_style"}
!3753 = !DILocation(line: 196, column: 13, scope: !3678, inlinedAt: !3743)
!3754 = !DILocation(line: 196, column: 7, scope: !3666, inlinedAt: !3743)
!3755 = !DILocation(line: 197, column: 5, scope: !3678, inlinedAt: !3743)
!3756 = !DILocation(line: 198, column: 5, scope: !3666, inlinedAt: !3743)
!3757 = !DILocation(line: 198, column: 11, scope: !3666, inlinedAt: !3743)
!3758 = !DILocation(line: 966, column: 10, scope: !3686, inlinedAt: !3744)
!3759 = !DILocation(line: 967, column: 1, scope: !3686, inlinedAt: !3744)
!3760 = !DILocation(line: 978, column: 3, scope: !3735)
!3761 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !504, file: !504, line: 982, type: !3762, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3764)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!71, !73, !41, !72}
!3764 = !{!3765, !3766, !3767, !3768}
!3765 = !DILocalVariable(name: "arg", arg: 1, scope: !3761, file: !504, line: 982, type: !73)
!3766 = !DILocalVariable(name: "argsize", arg: 2, scope: !3761, file: !504, line: 982, type: !41)
!3767 = !DILocalVariable(name: "ch", arg: 3, scope: !3761, file: !504, line: 982, type: !72)
!3768 = !DILocalVariable(name: "options", scope: !3761, file: !504, line: 984, type: !523)
!3769 = !DILocation(line: 0, scope: !3761)
!3770 = !DILocation(line: 984, column: 3, scope: !3761)
!3771 = !DILocation(line: 984, column: 26, scope: !3761)
!3772 = !DILocation(line: 985, column: 13, scope: !3761)
!3773 = !{i64 0, i64 4, !1532, i64 4, i64 4, !1432, i64 8, i64 32, !1532, i64 40, i64 8, !1316, i64 48, i64 8, !1316}
!3774 = !DILocation(line: 0, scope: !2601, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 986, column: 3, scope: !3761)
!3776 = !DILocation(line: 156, column: 62, scope: !2601, inlinedAt: !3775)
!3777 = !DILocation(line: 156, column: 57, scope: !2601, inlinedAt: !3775)
!3778 = !DILocation(line: 157, column: 15, scope: !2601, inlinedAt: !3775)
!3779 = !DILocation(line: 158, column: 12, scope: !2601, inlinedAt: !3775)
!3780 = !DILocation(line: 158, column: 15, scope: !2601, inlinedAt: !3775)
!3781 = !DILocation(line: 158, column: 25, scope: !2601, inlinedAt: !3775)
!3782 = !DILocation(line: 159, column: 18, scope: !2601, inlinedAt: !3775)
!3783 = !DILocation(line: 159, column: 23, scope: !2601, inlinedAt: !3775)
!3784 = !DILocation(line: 159, column: 6, scope: !2601, inlinedAt: !3775)
!3785 = !DILocation(line: 987, column: 10, scope: !3761)
!3786 = !DILocation(line: 988, column: 1, scope: !3761)
!3787 = !DILocation(line: 987, column: 3, scope: !3761)
!3788 = distinct !DISubprogram(name: "quotearg_char", scope: !504, file: !504, line: 991, type: !3789, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!71, !73, !72}
!3791 = !{!3792, !3793}
!3792 = !DILocalVariable(name: "arg", arg: 1, scope: !3788, file: !504, line: 991, type: !73)
!3793 = !DILocalVariable(name: "ch", arg: 2, scope: !3788, file: !504, line: 991, type: !72)
!3794 = !DILocation(line: 984, column: 26, scope: !3761, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 993, column: 10, scope: !3788)
!3796 = !DILocation(line: 0, scope: !3788)
!3797 = !DILocation(line: 0, scope: !3761, inlinedAt: !3795)
!3798 = !DILocation(line: 984, column: 3, scope: !3761, inlinedAt: !3795)
!3799 = !DILocation(line: 985, column: 13, scope: !3761, inlinedAt: !3795)
!3800 = !DILocation(line: 0, scope: !2601, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 986, column: 3, scope: !3761, inlinedAt: !3795)
!3802 = !DILocation(line: 156, column: 62, scope: !2601, inlinedAt: !3801)
!3803 = !DILocation(line: 156, column: 57, scope: !2601, inlinedAt: !3801)
!3804 = !DILocation(line: 157, column: 15, scope: !2601, inlinedAt: !3801)
!3805 = !DILocation(line: 158, column: 12, scope: !2601, inlinedAt: !3801)
!3806 = !DILocation(line: 158, column: 15, scope: !2601, inlinedAt: !3801)
!3807 = !DILocation(line: 158, column: 25, scope: !2601, inlinedAt: !3801)
!3808 = !DILocation(line: 159, column: 18, scope: !2601, inlinedAt: !3801)
!3809 = !DILocation(line: 159, column: 23, scope: !2601, inlinedAt: !3801)
!3810 = !DILocation(line: 159, column: 6, scope: !2601, inlinedAt: !3801)
!3811 = !DILocation(line: 987, column: 10, scope: !3761, inlinedAt: !3795)
!3812 = !DILocation(line: 988, column: 1, scope: !3761, inlinedAt: !3795)
!3813 = !DILocation(line: 993, column: 3, scope: !3788)
!3814 = distinct !DISubprogram(name: "quotearg_colon", scope: !504, file: !504, line: 997, type: !146, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3815)
!3815 = !{!3816}
!3816 = !DILocalVariable(name: "arg", arg: 1, scope: !3814, file: !504, line: 997, type: !73)
!3817 = !DILocation(line: 984, column: 26, scope: !3761, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 993, column: 10, scope: !3788, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 999, column: 10, scope: !3814)
!3820 = !DILocation(line: 0, scope: !3814)
!3821 = !DILocation(line: 0, scope: !3788, inlinedAt: !3819)
!3822 = !DILocation(line: 0, scope: !3761, inlinedAt: !3818)
!3823 = !DILocation(line: 984, column: 3, scope: !3761, inlinedAt: !3818)
!3824 = !DILocation(line: 985, column: 13, scope: !3761, inlinedAt: !3818)
!3825 = !DILocation(line: 0, scope: !2601, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 986, column: 3, scope: !3761, inlinedAt: !3818)
!3827 = !DILocation(line: 156, column: 57, scope: !2601, inlinedAt: !3826)
!3828 = !DILocation(line: 158, column: 12, scope: !2601, inlinedAt: !3826)
!3829 = !DILocation(line: 159, column: 6, scope: !2601, inlinedAt: !3826)
!3830 = !DILocation(line: 987, column: 10, scope: !3761, inlinedAt: !3818)
!3831 = !DILocation(line: 988, column: 1, scope: !3761, inlinedAt: !3818)
!3832 = !DILocation(line: 999, column: 3, scope: !3814)
!3833 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !504, file: !504, line: 1003, type: !3644, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3834)
!3834 = !{!3835, !3836}
!3835 = !DILocalVariable(name: "arg", arg: 1, scope: !3833, file: !504, line: 1003, type: !73)
!3836 = !DILocalVariable(name: "argsize", arg: 2, scope: !3833, file: !504, line: 1003, type: !41)
!3837 = !DILocation(line: 984, column: 26, scope: !3761, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 1005, column: 10, scope: !3833)
!3839 = !DILocation(line: 0, scope: !3833)
!3840 = !DILocation(line: 0, scope: !3761, inlinedAt: !3838)
!3841 = !DILocation(line: 984, column: 3, scope: !3761, inlinedAt: !3838)
!3842 = !DILocation(line: 985, column: 13, scope: !3761, inlinedAt: !3838)
!3843 = !DILocation(line: 0, scope: !2601, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 986, column: 3, scope: !3761, inlinedAt: !3838)
!3845 = !DILocation(line: 156, column: 57, scope: !2601, inlinedAt: !3844)
!3846 = !DILocation(line: 158, column: 12, scope: !2601, inlinedAt: !3844)
!3847 = !DILocation(line: 159, column: 6, scope: !2601, inlinedAt: !3844)
!3848 = !DILocation(line: 987, column: 10, scope: !3761, inlinedAt: !3838)
!3849 = !DILocation(line: 988, column: 1, scope: !3761, inlinedAt: !3838)
!3850 = !DILocation(line: 1005, column: 3, scope: !3833)
!3851 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !504, file: !504, line: 1009, type: !3655, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3852)
!3852 = !{!3853, !3854, !3855, !3856}
!3853 = !DILocalVariable(name: "n", arg: 1, scope: !3851, file: !504, line: 1009, type: !75)
!3854 = !DILocalVariable(name: "s", arg: 2, scope: !3851, file: !504, line: 1009, type: !13)
!3855 = !DILocalVariable(name: "arg", arg: 3, scope: !3851, file: !504, line: 1009, type: !73)
!3856 = !DILocalVariable(name: "options", scope: !3851, file: !504, line: 1011, type: !523)
!3857 = !DILocation(line: 195, column: 26, scope: !3666, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 1012, column: 13, scope: !3851)
!3859 = !DILocation(line: 0, scope: !3851)
!3860 = !DILocation(line: 1011, column: 3, scope: !3851)
!3861 = !DILocation(line: 1011, column: 26, scope: !3851)
!3862 = !DILocation(line: 1012, column: 13, scope: !3851)
!3863 = !DILocation(line: 0, scope: !3666, inlinedAt: !3858)
!3864 = !{!3865}
!3865 = distinct !{!3865, !3866, !"quoting_options_from_style: argument 0"}
!3866 = distinct !{!3866, !"quoting_options_from_style"}
!3867 = !DILocation(line: 196, column: 13, scope: !3678, inlinedAt: !3858)
!3868 = !DILocation(line: 196, column: 7, scope: !3666, inlinedAt: !3858)
!3869 = !DILocation(line: 197, column: 5, scope: !3678, inlinedAt: !3858)
!3870 = !DILocation(line: 0, scope: !2601, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 1013, column: 3, scope: !3851)
!3872 = !DILocation(line: 156, column: 57, scope: !2601, inlinedAt: !3871)
!3873 = !DILocation(line: 158, column: 12, scope: !2601, inlinedAt: !3871)
!3874 = !DILocation(line: 159, column: 6, scope: !2601, inlinedAt: !3871)
!3875 = !DILocation(line: 1014, column: 10, scope: !3851)
!3876 = !DILocation(line: 1015, column: 1, scope: !3851)
!3877 = !DILocation(line: 1014, column: 3, scope: !3851)
!3878 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !504, file: !504, line: 1018, type: !3879, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3881)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!71, !75, !73, !73, !73}
!3881 = !{!3882, !3883, !3884, !3885}
!3882 = !DILocalVariable(name: "n", arg: 1, scope: !3878, file: !504, line: 1018, type: !75)
!3883 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3878, file: !504, line: 1018, type: !73)
!3884 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3878, file: !504, line: 1019, type: !73)
!3885 = !DILocalVariable(name: "arg", arg: 4, scope: !3878, file: !504, line: 1019, type: !73)
!3886 = !DILocalVariable(name: "o", scope: !3887, file: !504, line: 1030, type: !523)
!3887 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !504, file: !504, line: 1026, type: !3888, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3890)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!71, !75, !73, !73, !73, !41}
!3890 = !{!3891, !3892, !3893, !3894, !3895, !3886}
!3891 = !DILocalVariable(name: "n", arg: 1, scope: !3887, file: !504, line: 1026, type: !75)
!3892 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3887, file: !504, line: 1026, type: !73)
!3893 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3887, file: !504, line: 1027, type: !73)
!3894 = !DILocalVariable(name: "arg", arg: 4, scope: !3887, file: !504, line: 1028, type: !73)
!3895 = !DILocalVariable(name: "argsize", arg: 5, scope: !3887, file: !504, line: 1028, type: !41)
!3896 = !DILocation(line: 1030, column: 26, scope: !3887, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 1021, column: 10, scope: !3878)
!3898 = !DILocation(line: 0, scope: !3878)
!3899 = !DILocation(line: 0, scope: !3887, inlinedAt: !3897)
!3900 = !DILocation(line: 1030, column: 3, scope: !3887, inlinedAt: !3897)
!3901 = !DILocation(line: 1030, column: 30, scope: !3887, inlinedAt: !3897)
!3902 = !DILocation(line: 0, scope: !2642, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 1031, column: 3, scope: !3887, inlinedAt: !3897)
!3904 = !DILocation(line: 184, column: 6, scope: !2642, inlinedAt: !3903)
!3905 = !DILocation(line: 184, column: 12, scope: !2642, inlinedAt: !3903)
!3906 = !DILocation(line: 185, column: 8, scope: !2656, inlinedAt: !3903)
!3907 = !DILocation(line: 185, column: 23, scope: !2656, inlinedAt: !3903)
!3908 = !DILocation(line: 185, column: 19, scope: !2656, inlinedAt: !3903)
!3909 = !DILocation(line: 186, column: 5, scope: !2656, inlinedAt: !3903)
!3910 = !DILocation(line: 187, column: 6, scope: !2642, inlinedAt: !3903)
!3911 = !DILocation(line: 187, column: 17, scope: !2642, inlinedAt: !3903)
!3912 = !DILocation(line: 188, column: 6, scope: !2642, inlinedAt: !3903)
!3913 = !DILocation(line: 188, column: 18, scope: !2642, inlinedAt: !3903)
!3914 = !DILocation(line: 1032, column: 10, scope: !3887, inlinedAt: !3897)
!3915 = !DILocation(line: 1033, column: 1, scope: !3887, inlinedAt: !3897)
!3916 = !DILocation(line: 1021, column: 3, scope: !3878)
!3917 = !DILocation(line: 0, scope: !3887)
!3918 = !DILocation(line: 1030, column: 3, scope: !3887)
!3919 = !DILocation(line: 1030, column: 26, scope: !3887)
!3920 = !DILocation(line: 1030, column: 30, scope: !3887)
!3921 = !DILocation(line: 0, scope: !2642, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 1031, column: 3, scope: !3887)
!3923 = !DILocation(line: 184, column: 6, scope: !2642, inlinedAt: !3922)
!3924 = !DILocation(line: 184, column: 12, scope: !2642, inlinedAt: !3922)
!3925 = !DILocation(line: 185, column: 8, scope: !2656, inlinedAt: !3922)
!3926 = !DILocation(line: 185, column: 23, scope: !2656, inlinedAt: !3922)
!3927 = !DILocation(line: 185, column: 19, scope: !2656, inlinedAt: !3922)
!3928 = !DILocation(line: 186, column: 5, scope: !2656, inlinedAt: !3922)
!3929 = !DILocation(line: 187, column: 6, scope: !2642, inlinedAt: !3922)
!3930 = !DILocation(line: 187, column: 17, scope: !2642, inlinedAt: !3922)
!3931 = !DILocation(line: 188, column: 6, scope: !2642, inlinedAt: !3922)
!3932 = !DILocation(line: 188, column: 18, scope: !2642, inlinedAt: !3922)
!3933 = !DILocation(line: 1032, column: 10, scope: !3887)
!3934 = !DILocation(line: 1033, column: 1, scope: !3887)
!3935 = !DILocation(line: 1032, column: 3, scope: !3887)
!3936 = distinct !DISubprogram(name: "quotearg_custom", scope: !504, file: !504, line: 1036, type: !3937, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3939)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!71, !73, !73, !73}
!3939 = !{!3940, !3941, !3942}
!3940 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3936, file: !504, line: 1036, type: !73)
!3941 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3936, file: !504, line: 1036, type: !73)
!3942 = !DILocalVariable(name: "arg", arg: 3, scope: !3936, file: !504, line: 1037, type: !73)
!3943 = !DILocation(line: 1030, column: 26, scope: !3887, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 1021, column: 10, scope: !3878, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 1039, column: 10, scope: !3936)
!3946 = !DILocation(line: 0, scope: !3936)
!3947 = !DILocation(line: 0, scope: !3878, inlinedAt: !3945)
!3948 = !DILocation(line: 0, scope: !3887, inlinedAt: !3944)
!3949 = !DILocation(line: 1030, column: 3, scope: !3887, inlinedAt: !3944)
!3950 = !DILocation(line: 1030, column: 30, scope: !3887, inlinedAt: !3944)
!3951 = !DILocation(line: 0, scope: !2642, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 1031, column: 3, scope: !3887, inlinedAt: !3944)
!3953 = !DILocation(line: 184, column: 6, scope: !2642, inlinedAt: !3952)
!3954 = !DILocation(line: 184, column: 12, scope: !2642, inlinedAt: !3952)
!3955 = !DILocation(line: 185, column: 8, scope: !2656, inlinedAt: !3952)
!3956 = !DILocation(line: 185, column: 23, scope: !2656, inlinedAt: !3952)
!3957 = !DILocation(line: 185, column: 19, scope: !2656, inlinedAt: !3952)
!3958 = !DILocation(line: 186, column: 5, scope: !2656, inlinedAt: !3952)
!3959 = !DILocation(line: 187, column: 6, scope: !2642, inlinedAt: !3952)
!3960 = !DILocation(line: 187, column: 17, scope: !2642, inlinedAt: !3952)
!3961 = !DILocation(line: 188, column: 6, scope: !2642, inlinedAt: !3952)
!3962 = !DILocation(line: 188, column: 18, scope: !2642, inlinedAt: !3952)
!3963 = !DILocation(line: 1032, column: 10, scope: !3887, inlinedAt: !3944)
!3964 = !DILocation(line: 1033, column: 1, scope: !3887, inlinedAt: !3944)
!3965 = !DILocation(line: 1039, column: 3, scope: !3936)
!3966 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !504, file: !504, line: 1043, type: !3967, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3969)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!71, !73, !73, !73, !41}
!3969 = !{!3970, !3971, !3972, !3973}
!3970 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3966, file: !504, line: 1043, type: !73)
!3971 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3966, file: !504, line: 1043, type: !73)
!3972 = !DILocalVariable(name: "arg", arg: 3, scope: !3966, file: !504, line: 1044, type: !73)
!3973 = !DILocalVariable(name: "argsize", arg: 4, scope: !3966, file: !504, line: 1044, type: !41)
!3974 = !DILocation(line: 1030, column: 26, scope: !3887, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 1046, column: 10, scope: !3966)
!3976 = !DILocation(line: 0, scope: !3966)
!3977 = !DILocation(line: 0, scope: !3887, inlinedAt: !3975)
!3978 = !DILocation(line: 1030, column: 3, scope: !3887, inlinedAt: !3975)
!3979 = !DILocation(line: 1030, column: 30, scope: !3887, inlinedAt: !3975)
!3980 = !DILocation(line: 0, scope: !2642, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 1031, column: 3, scope: !3887, inlinedAt: !3975)
!3982 = !DILocation(line: 184, column: 6, scope: !2642, inlinedAt: !3981)
!3983 = !DILocation(line: 184, column: 12, scope: !2642, inlinedAt: !3981)
!3984 = !DILocation(line: 185, column: 8, scope: !2656, inlinedAt: !3981)
!3985 = !DILocation(line: 185, column: 23, scope: !2656, inlinedAt: !3981)
!3986 = !DILocation(line: 185, column: 19, scope: !2656, inlinedAt: !3981)
!3987 = !DILocation(line: 186, column: 5, scope: !2656, inlinedAt: !3981)
!3988 = !DILocation(line: 187, column: 6, scope: !2642, inlinedAt: !3981)
!3989 = !DILocation(line: 187, column: 17, scope: !2642, inlinedAt: !3981)
!3990 = !DILocation(line: 188, column: 6, scope: !2642, inlinedAt: !3981)
!3991 = !DILocation(line: 188, column: 18, scope: !2642, inlinedAt: !3981)
!3992 = !DILocation(line: 1032, column: 10, scope: !3887, inlinedAt: !3975)
!3993 = !DILocation(line: 1033, column: 1, scope: !3887, inlinedAt: !3975)
!3994 = !DILocation(line: 1046, column: 3, scope: !3966)
!3995 = distinct !DISubprogram(name: "quote_n_mem", scope: !504, file: !504, line: 1061, type: !3996, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3998)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!73, !75, !73, !41}
!3998 = !{!3999, !4000, !4001}
!3999 = !DILocalVariable(name: "n", arg: 1, scope: !3995, file: !504, line: 1061, type: !75)
!4000 = !DILocalVariable(name: "arg", arg: 2, scope: !3995, file: !504, line: 1061, type: !73)
!4001 = !DILocalVariable(name: "argsize", arg: 3, scope: !3995, file: !504, line: 1061, type: !41)
!4002 = !DILocation(line: 0, scope: !3995)
!4003 = !DILocation(line: 1063, column: 10, scope: !3995)
!4004 = !DILocation(line: 1063, column: 3, scope: !3995)
!4005 = distinct !DISubprogram(name: "quote_mem", scope: !504, file: !504, line: 1067, type: !4006, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!73, !73, !41}
!4008 = !{!4009, !4010}
!4009 = !DILocalVariable(name: "arg", arg: 1, scope: !4005, file: !504, line: 1067, type: !73)
!4010 = !DILocalVariable(name: "argsize", arg: 2, scope: !4005, file: !504, line: 1067, type: !41)
!4011 = !DILocation(line: 0, scope: !4005)
!4012 = !DILocation(line: 0, scope: !3995, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 1069, column: 10, scope: !4005)
!4014 = !DILocation(line: 1063, column: 10, scope: !3995, inlinedAt: !4013)
!4015 = !DILocation(line: 1069, column: 3, scope: !4005)
!4016 = distinct !DISubprogram(name: "quote_n", scope: !504, file: !504, line: 1073, type: !4017, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4019)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!73, !75, !73}
!4019 = !{!4020, !4021}
!4020 = !DILocalVariable(name: "n", arg: 1, scope: !4016, file: !504, line: 1073, type: !75)
!4021 = !DILocalVariable(name: "arg", arg: 2, scope: !4016, file: !504, line: 1073, type: !73)
!4022 = !DILocation(line: 0, scope: !4016)
!4023 = !DILocation(line: 0, scope: !3995, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 1075, column: 10, scope: !4016)
!4025 = !DILocation(line: 1063, column: 10, scope: !3995, inlinedAt: !4024)
!4026 = !DILocation(line: 1075, column: 3, scope: !4016)
!4027 = distinct !DISubprogram(name: "quote", scope: !504, file: !504, line: 1079, type: !183, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4028)
!4028 = !{!4029}
!4029 = !DILocalVariable(name: "arg", arg: 1, scope: !4027, file: !504, line: 1079, type: !73)
!4030 = !DILocation(line: 0, scope: !4027)
!4031 = !DILocation(line: 0, scope: !4016, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 1081, column: 10, scope: !4027)
!4033 = !DILocation(line: 0, scope: !3995, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 1075, column: 10, scope: !4016, inlinedAt: !4032)
!4035 = !DILocation(line: 1063, column: 10, scope: !3995, inlinedAt: !4034)
!4036 = !DILocation(line: 1081, column: 3, scope: !4027)
!4037 = distinct !DISubprogram(name: "version_etc_arn", scope: !633, file: !633, line: 61, type: !4038, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !4044)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !4040, !73, !73, !73, !4043, !41}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4042, line: 7, baseType: !643)
!4042 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4050}
!4045 = !DILocalVariable(name: "stream", arg: 1, scope: !4037, file: !633, line: 61, type: !4040)
!4046 = !DILocalVariable(name: "command_name", arg: 2, scope: !4037, file: !633, line: 62, type: !73)
!4047 = !DILocalVariable(name: "package", arg: 3, scope: !4037, file: !633, line: 62, type: !73)
!4048 = !DILocalVariable(name: "version", arg: 4, scope: !4037, file: !633, line: 63, type: !73)
!4049 = !DILocalVariable(name: "authors", arg: 5, scope: !4037, file: !633, line: 64, type: !4043)
!4050 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4037, file: !633, line: 64, type: !41)
!4051 = !DILocation(line: 0, scope: !4037)
!4052 = !DILocation(line: 66, column: 7, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4037, file: !633, line: 66, column: 7)
!4054 = !DILocation(line: 66, column: 7, scope: !4037)
!4055 = !DILocation(line: 67, column: 5, scope: !4053)
!4056 = !DILocation(line: 69, column: 5, scope: !4053)
!4057 = !DILocation(line: 83, column: 3, scope: !4037)
!4058 = !DILocation(line: 85, column: 3, scope: !4037)
!4059 = !DILocation(line: 88, column: 3, scope: !4037)
!4060 = !DILocation(line: 95, column: 3, scope: !4037)
!4061 = !DILocation(line: 97, column: 3, scope: !4037)
!4062 = !DILocation(line: 105, column: 7, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4037, file: !633, line: 98, column: 5)
!4064 = !DILocation(line: 106, column: 7, scope: !4063)
!4065 = !DILocation(line: 109, column: 7, scope: !4063)
!4066 = !DILocation(line: 110, column: 7, scope: !4063)
!4067 = !DILocation(line: 113, column: 7, scope: !4063)
!4068 = !DILocation(line: 115, column: 7, scope: !4063)
!4069 = !DILocation(line: 120, column: 7, scope: !4063)
!4070 = !DILocation(line: 122, column: 7, scope: !4063)
!4071 = !DILocation(line: 127, column: 7, scope: !4063)
!4072 = !DILocation(line: 129, column: 7, scope: !4063)
!4073 = !DILocation(line: 134, column: 7, scope: !4063)
!4074 = !DILocation(line: 137, column: 7, scope: !4063)
!4075 = !DILocation(line: 142, column: 7, scope: !4063)
!4076 = !DILocation(line: 145, column: 7, scope: !4063)
!4077 = !DILocation(line: 150, column: 7, scope: !4063)
!4078 = !DILocation(line: 154, column: 7, scope: !4063)
!4079 = !DILocation(line: 159, column: 7, scope: !4063)
!4080 = !DILocation(line: 163, column: 7, scope: !4063)
!4081 = !DILocation(line: 170, column: 7, scope: !4063)
!4082 = !DILocation(line: 174, column: 7, scope: !4063)
!4083 = !DILocation(line: 176, column: 1, scope: !4037)
!4084 = distinct !DISubprogram(name: "version_etc_ar", scope: !633, file: !633, line: 183, type: !4085, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !4087)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{null, !4040, !73, !73, !73, !4043}
!4087 = !{!4088, !4089, !4090, !4091, !4092, !4093}
!4088 = !DILocalVariable(name: "stream", arg: 1, scope: !4084, file: !633, line: 183, type: !4040)
!4089 = !DILocalVariable(name: "command_name", arg: 2, scope: !4084, file: !633, line: 184, type: !73)
!4090 = !DILocalVariable(name: "package", arg: 3, scope: !4084, file: !633, line: 184, type: !73)
!4091 = !DILocalVariable(name: "version", arg: 4, scope: !4084, file: !633, line: 185, type: !73)
!4092 = !DILocalVariable(name: "authors", arg: 5, scope: !4084, file: !633, line: 185, type: !4043)
!4093 = !DILocalVariable(name: "n_authors", scope: !4084, file: !633, line: 187, type: !41)
!4094 = !DILocation(line: 0, scope: !4084)
!4095 = !DILocation(line: 189, column: 8, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4084, file: !633, line: 189, column: 3)
!4097 = !DILocation(line: 0, scope: !4096)
!4098 = !DILocation(line: 189, column: 23, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4096, file: !633, line: 189, column: 3)
!4100 = !DILocation(line: 189, column: 3, scope: !4096)
!4101 = !DILocation(line: 189, column: 52, scope: !4099)
!4102 = distinct !{!4102, !4100, !4103}
!4103 = !DILocation(line: 190, column: 5, scope: !4096)
!4104 = !DILocation(line: 191, column: 3, scope: !4084)
!4105 = !DILocation(line: 192, column: 1, scope: !4084)
!4106 = distinct !DISubprogram(name: "version_etc_va", scope: !633, file: !633, line: 199, type: !4107, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !4116)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{null, !4040, !73, !73, !73, !4109}
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !633, line: 192, size: 192, elements: !4111)
!4111 = !{!4112, !4113, !4114, !4115}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4110, file: !633, line: 192, baseType: !7, size: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4110, file: !633, line: 192, baseType: !7, size: 32, offset: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4110, file: !633, line: 192, baseType: !39, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4110, file: !633, line: 192, baseType: !39, size: 64, offset: 128)
!4116 = !{!4117, !4118, !4119, !4120, !4121, !4122, !4123}
!4117 = !DILocalVariable(name: "stream", arg: 1, scope: !4106, file: !633, line: 199, type: !4040)
!4118 = !DILocalVariable(name: "command_name", arg: 2, scope: !4106, file: !633, line: 200, type: !73)
!4119 = !DILocalVariable(name: "package", arg: 3, scope: !4106, file: !633, line: 200, type: !73)
!4120 = !DILocalVariable(name: "version", arg: 4, scope: !4106, file: !633, line: 201, type: !73)
!4121 = !DILocalVariable(name: "authors", arg: 5, scope: !4106, file: !633, line: 201, type: !4109)
!4122 = !DILocalVariable(name: "n_authors", scope: !4106, file: !633, line: 203, type: !41)
!4123 = !DILocalVariable(name: "authtab", scope: !4106, file: !633, line: 204, type: !4124)
!4124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 640, elements: !576)
!4125 = !DILocation(line: 0, scope: !4106)
!4126 = !DILocation(line: 204, column: 3, scope: !4106)
!4127 = !DILocation(line: 204, column: 15, scope: !4106)
!4128 = !DILocation(line: 0, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !633, line: 206, column: 3)
!4130 = distinct !DILexicalBlock(scope: !4106, file: !633, line: 206, column: 3)
!4131 = !DILocation(line: 208, column: 35, scope: !4129)
!4132 = !DILocation(line: 208, column: 14, scope: !4129)
!4133 = !DILocation(line: 208, column: 33, scope: !4129)
!4134 = !DILocation(line: 208, column: 67, scope: !4129)
!4135 = !DILocation(line: 206, column: 3, scope: !4130)
!4136 = !DILocation(line: 0, scope: !4130)
!4137 = !DILocation(line: 211, column: 3, scope: !4106)
!4138 = !DILocation(line: 213, column: 1, scope: !4106)
!4139 = distinct !DISubprogram(name: "version_etc", scope: !633, file: !633, line: 230, type: !4140, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !4142)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{null, !4040, !73, !73, !73, null}
!4142 = !{!4143, !4144, !4145, !4146, !4147}
!4143 = !DILocalVariable(name: "stream", arg: 1, scope: !4139, file: !633, line: 230, type: !4040)
!4144 = !DILocalVariable(name: "command_name", arg: 2, scope: !4139, file: !633, line: 231, type: !73)
!4145 = !DILocalVariable(name: "package", arg: 3, scope: !4139, file: !633, line: 231, type: !73)
!4146 = !DILocalVariable(name: "version", arg: 4, scope: !4139, file: !633, line: 232, type: !73)
!4147 = !DILocalVariable(name: "authors", scope: !4139, file: !633, line: 234, type: !4148)
!4148 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !78, line: 52, baseType: !4149)
!4149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4150, line: 32, baseType: !4151)
!4150 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!4151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !633, line: 234, baseType: !4152)
!4152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4110, size: 192, elements: !113)
!4153 = !DILocation(line: 0, scope: !4139)
!4154 = !DILocation(line: 234, column: 3, scope: !4139)
!4155 = !DILocation(line: 234, column: 11, scope: !4139)
!4156 = !DILocation(line: 236, column: 3, scope: !4139)
!4157 = !DILocation(line: 237, column: 3, scope: !4139)
!4158 = !DILocation(line: 238, column: 3, scope: !4139)
!4159 = !DILocation(line: 239, column: 1, scope: !4139)
!4160 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !633, file: !633, line: 242, type: !153, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !76)
!4161 = !DILocation(line: 244, column: 3, scope: !4160)
!4162 = !DILocation(line: 249, column: 3, scope: !4160)
!4163 = !DILocation(line: 255, column: 3, scope: !4160)
!4164 = !DILocation(line: 260, column: 3, scope: !4160)
!4165 = !DILocation(line: 262, column: 1, scope: !4160)
!4166 = distinct !DISubprogram(name: "xnmalloc", scope: !35, file: !35, line: 99, type: !4167, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4169)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!39, !41, !41}
!4169 = !{!4170, !4171}
!4170 = !DILocalVariable(name: "n", arg: 1, scope: !4166, file: !35, line: 99, type: !41)
!4171 = !DILocalVariable(name: "s", arg: 2, scope: !4166, file: !35, line: 99, type: !41)
!4172 = !DILocation(line: 0, scope: !4166)
!4173 = !DILocation(line: 101, column: 7, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4166, file: !35, line: 101, column: 7)
!4175 = !DILocation(line: 101, column: 7, scope: !4166)
!4176 = !DILocation(line: 102, column: 5, scope: !4174)
!4177 = !DILocation(line: 103, column: 21, scope: !4166)
!4178 = !DILocalVariable(name: "n", arg: 1, scope: !4179, file: !675, line: 39, type: !41)
!4179 = distinct !DISubprogram(name: "xmalloc", scope: !675, file: !675, line: 39, type: !4180, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4182)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!39, !41}
!4182 = !{!4178, !4183}
!4183 = !DILocalVariable(name: "p", scope: !4179, file: !675, line: 41, type: !39)
!4184 = !DILocation(line: 0, scope: !4179, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 103, column: 10, scope: !4166)
!4186 = !DILocation(line: 41, column: 13, scope: !4179, inlinedAt: !4185)
!4187 = !DILocation(line: 42, column: 8, scope: !4188, inlinedAt: !4185)
!4188 = distinct !DILexicalBlock(scope: !4179, file: !675, line: 42, column: 7)
!4189 = !DILocation(line: 42, column: 15, scope: !4188, inlinedAt: !4185)
!4190 = !DILocation(line: 42, column: 10, scope: !4188, inlinedAt: !4185)
!4191 = !DILocation(line: 43, column: 5, scope: !4188, inlinedAt: !4185)
!4192 = !DILocation(line: 103, column: 3, scope: !4166)
!4193 = !DILocation(line: 0, scope: !4179)
!4194 = !DILocation(line: 41, column: 13, scope: !4179)
!4195 = !DILocation(line: 42, column: 8, scope: !4188)
!4196 = !DILocation(line: 42, column: 15, scope: !4188)
!4197 = !DILocation(line: 42, column: 10, scope: !4188)
!4198 = !DILocation(line: 43, column: 5, scope: !4188)
!4199 = !DILocation(line: 44, column: 3, scope: !4179)
!4200 = distinct !DISubprogram(name: "xnrealloc", scope: !35, file: !35, line: 112, type: !4201, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4203)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!39, !39, !41, !41}
!4203 = !{!4204, !4205, !4206}
!4204 = !DILocalVariable(name: "p", arg: 1, scope: !4200, file: !35, line: 112, type: !39)
!4205 = !DILocalVariable(name: "n", arg: 2, scope: !4200, file: !35, line: 112, type: !41)
!4206 = !DILocalVariable(name: "s", arg: 3, scope: !4200, file: !35, line: 112, type: !41)
!4207 = !DILocation(line: 0, scope: !4200)
!4208 = !DILocation(line: 114, column: 7, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4200, file: !35, line: 114, column: 7)
!4210 = !DILocation(line: 114, column: 7, scope: !4200)
!4211 = !DILocation(line: 115, column: 5, scope: !4209)
!4212 = !DILocation(line: 116, column: 25, scope: !4200)
!4213 = !DILocalVariable(name: "p", arg: 1, scope: !4214, file: !675, line: 51, type: !39)
!4214 = distinct !DISubprogram(name: "xrealloc", scope: !675, file: !675, line: 51, type: !4215, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!39, !39, !41}
!4217 = !{!4213, !4218}
!4218 = !DILocalVariable(name: "n", arg: 2, scope: !4214, file: !675, line: 51, type: !41)
!4219 = !DILocation(line: 0, scope: !4214, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 116, column: 10, scope: !4200)
!4221 = !DILocation(line: 53, column: 8, scope: !4222, inlinedAt: !4220)
!4222 = distinct !DILexicalBlock(scope: !4214, file: !675, line: 53, column: 7)
!4223 = !DILocation(line: 53, column: 13, scope: !4222, inlinedAt: !4220)
!4224 = !DILocation(line: 53, column: 10, scope: !4222, inlinedAt: !4220)
!4225 = !DILocation(line: 57, column: 7, scope: !4226, inlinedAt: !4220)
!4226 = distinct !DILexicalBlock(scope: !4222, file: !675, line: 54, column: 5)
!4227 = !DILocation(line: 58, column: 7, scope: !4226, inlinedAt: !4220)
!4228 = !DILocation(line: 61, column: 7, scope: !4214, inlinedAt: !4220)
!4229 = !DILocation(line: 62, column: 8, scope: !4230, inlinedAt: !4220)
!4230 = distinct !DILexicalBlock(scope: !4214, file: !675, line: 62, column: 7)
!4231 = !DILocation(line: 62, column: 13, scope: !4230, inlinedAt: !4220)
!4232 = !DILocation(line: 62, column: 10, scope: !4230, inlinedAt: !4220)
!4233 = !DILocation(line: 63, column: 5, scope: !4230, inlinedAt: !4220)
!4234 = !DILocation(line: 116, column: 3, scope: !4200)
!4235 = !DILocation(line: 0, scope: !4214)
!4236 = !DILocation(line: 53, column: 8, scope: !4222)
!4237 = !DILocation(line: 53, column: 13, scope: !4222)
!4238 = !DILocation(line: 53, column: 10, scope: !4222)
!4239 = !DILocation(line: 57, column: 7, scope: !4226)
!4240 = !DILocation(line: 58, column: 7, scope: !4226)
!4241 = !DILocation(line: 61, column: 7, scope: !4214)
!4242 = !DILocation(line: 62, column: 8, scope: !4230)
!4243 = !DILocation(line: 62, column: 13, scope: !4230)
!4244 = !DILocation(line: 62, column: 10, scope: !4230)
!4245 = !DILocation(line: 63, column: 5, scope: !4230)
!4246 = !DILocation(line: 65, column: 1, scope: !4214)
!4247 = !DILocation(line: 0, scope: !678)
!4248 = !DILocation(line: 176, column: 14, scope: !678)
!4249 = !DILocation(line: 178, column: 9, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !678, file: !35, line: 178, column: 7)
!4251 = !DILocation(line: 178, column: 7, scope: !678)
!4252 = !DILocation(line: 180, column: 13, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !35, line: 180, column: 11)
!4254 = distinct !DILexicalBlock(scope: !4250, file: !35, line: 179, column: 5)
!4255 = !DILocation(line: 180, column: 11, scope: !4254)
!4256 = !DILocation(line: 188, column: 30, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4253, file: !35, line: 181, column: 9)
!4258 = !DILocation(line: 189, column: 16, scope: !4257)
!4259 = !DILocation(line: 189, column: 13, scope: !4257)
!4260 = !DILocation(line: 190, column: 9, scope: !4257)
!4261 = !DILocation(line: 191, column: 11, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4254, file: !35, line: 191, column: 11)
!4263 = !DILocation(line: 191, column: 11, scope: !4254)
!4264 = !DILocation(line: 206, column: 7, scope: !678)
!4265 = !DILocation(line: 207, column: 25, scope: !678)
!4266 = !DILocation(line: 0, scope: !4214, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 207, column: 10, scope: !678)
!4268 = !DILocation(line: 53, column: 10, scope: !4222, inlinedAt: !4267)
!4269 = !DILocation(line: 192, column: 9, scope: !4262)
!4270 = !DILocation(line: 200, column: 69, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4272, file: !35, line: 200, column: 11)
!4272 = distinct !DILexicalBlock(scope: !4250, file: !35, line: 195, column: 5)
!4273 = !DILocation(line: 201, column: 11, scope: !4271)
!4274 = !DILocation(line: 200, column: 11, scope: !4272)
!4275 = !DILocation(line: 202, column: 9, scope: !4271)
!4276 = !DILocation(line: 203, column: 14, scope: !4272)
!4277 = !DILocation(line: 203, column: 18, scope: !4272)
!4278 = !DILocation(line: 203, column: 9, scope: !4272)
!4279 = !DILocation(line: 53, column: 8, scope: !4222, inlinedAt: !4267)
!4280 = !DILocation(line: 57, column: 7, scope: !4226, inlinedAt: !4267)
!4281 = !DILocation(line: 58, column: 7, scope: !4226, inlinedAt: !4267)
!4282 = !DILocation(line: 61, column: 7, scope: !4214, inlinedAt: !4267)
!4283 = !DILocation(line: 62, column: 8, scope: !4230, inlinedAt: !4267)
!4284 = !DILocation(line: 62, column: 13, scope: !4230, inlinedAt: !4267)
!4285 = !DILocation(line: 62, column: 10, scope: !4230, inlinedAt: !4267)
!4286 = !DILocation(line: 63, column: 5, scope: !4230, inlinedAt: !4267)
!4287 = !DILocation(line: 207, column: 3, scope: !678)
!4288 = distinct !DISubprogram(name: "xcharalloc", scope: !35, file: !35, line: 216, type: !3454, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4289)
!4289 = !{!4290}
!4290 = !DILocalVariable(name: "n", arg: 1, scope: !4288, file: !35, line: 216, type: !41)
!4291 = !DILocation(line: 0, scope: !4288)
!4292 = !DILocation(line: 0, scope: !4179, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 218, column: 10, scope: !4288)
!4294 = !DILocation(line: 41, column: 13, scope: !4179, inlinedAt: !4293)
!4295 = !DILocation(line: 42, column: 8, scope: !4188, inlinedAt: !4293)
!4296 = !DILocation(line: 42, column: 15, scope: !4188, inlinedAt: !4293)
!4297 = !DILocation(line: 42, column: 10, scope: !4188, inlinedAt: !4293)
!4298 = !DILocation(line: 43, column: 5, scope: !4188, inlinedAt: !4293)
!4299 = !DILocation(line: 218, column: 3, scope: !4288)
!4300 = distinct !DISubprogram(name: "x2realloc", scope: !675, file: !675, line: 74, type: !4301, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4303)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!39, !39, !40}
!4303 = !{!4304, !4305}
!4304 = !DILocalVariable(name: "p", arg: 1, scope: !4300, file: !675, line: 74, type: !39)
!4305 = !DILocalVariable(name: "pn", arg: 2, scope: !4300, file: !675, line: 74, type: !40)
!4306 = !DILocation(line: 0, scope: !4300)
!4307 = !DILocation(line: 0, scope: !678, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 76, column: 10, scope: !4300)
!4309 = !DILocation(line: 176, column: 14, scope: !678, inlinedAt: !4308)
!4310 = !DILocation(line: 178, column: 9, scope: !4250, inlinedAt: !4308)
!4311 = !DILocation(line: 178, column: 7, scope: !678, inlinedAt: !4308)
!4312 = !DILocation(line: 180, column: 13, scope: !4253, inlinedAt: !4308)
!4313 = !DILocation(line: 180, column: 11, scope: !4254, inlinedAt: !4308)
!4314 = !DILocation(line: 191, column: 11, scope: !4262, inlinedAt: !4308)
!4315 = !DILocation(line: 191, column: 11, scope: !4254, inlinedAt: !4308)
!4316 = !DILocation(line: 206, column: 7, scope: !678, inlinedAt: !4308)
!4317 = !DILocation(line: 0, scope: !4214, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 207, column: 10, scope: !678, inlinedAt: !4308)
!4319 = !DILocation(line: 53, column: 10, scope: !4222, inlinedAt: !4318)
!4320 = !DILocation(line: 192, column: 9, scope: !4262, inlinedAt: !4308)
!4321 = !DILocation(line: 201, column: 11, scope: !4271, inlinedAt: !4308)
!4322 = !DILocation(line: 200, column: 11, scope: !4272, inlinedAt: !4308)
!4323 = !DILocation(line: 202, column: 9, scope: !4271, inlinedAt: !4308)
!4324 = !DILocation(line: 203, column: 14, scope: !4272, inlinedAt: !4308)
!4325 = !DILocation(line: 203, column: 18, scope: !4272, inlinedAt: !4308)
!4326 = !DILocation(line: 203, column: 9, scope: !4272, inlinedAt: !4308)
!4327 = !DILocation(line: 53, column: 8, scope: !4222, inlinedAt: !4318)
!4328 = !DILocation(line: 57, column: 7, scope: !4226, inlinedAt: !4318)
!4329 = !DILocation(line: 58, column: 7, scope: !4226, inlinedAt: !4318)
!4330 = !DILocation(line: 61, column: 7, scope: !4214, inlinedAt: !4318)
!4331 = !DILocation(line: 62, column: 8, scope: !4230, inlinedAt: !4318)
!4332 = !DILocation(line: 62, column: 13, scope: !4230, inlinedAt: !4318)
!4333 = !DILocation(line: 62, column: 10, scope: !4230, inlinedAt: !4318)
!4334 = !DILocation(line: 63, column: 5, scope: !4230, inlinedAt: !4318)
!4335 = !DILocation(line: 76, column: 3, scope: !4300)
!4336 = distinct !DISubprogram(name: "xzalloc", scope: !675, file: !675, line: 84, type: !4180, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4337)
!4337 = !{!4338}
!4338 = !DILocalVariable(name: "n", arg: 1, scope: !4336, file: !675, line: 84, type: !41)
!4339 = !DILocation(line: 0, scope: !4336)
!4340 = !DILocalVariable(name: "n", arg: 1, scope: !4341, file: !675, line: 93, type: !41)
!4341 = distinct !DISubprogram(name: "xcalloc", scope: !675, file: !675, line: 93, type: !4167, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4342)
!4342 = !{!4340, !4343, !4344}
!4343 = !DILocalVariable(name: "s", arg: 2, scope: !4341, file: !675, line: 93, type: !41)
!4344 = !DILocalVariable(name: "p", scope: !4341, file: !675, line: 95, type: !39)
!4345 = !DILocation(line: 0, scope: !4341, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 86, column: 10, scope: !4336)
!4347 = !DILocation(line: 100, column: 7, scope: !4348, inlinedAt: !4346)
!4348 = distinct !DILexicalBlock(scope: !4341, file: !675, line: 100, column: 7)
!4349 = !DILocation(line: 101, column: 7, scope: !4348, inlinedAt: !4346)
!4350 = !DILocation(line: 101, column: 18, scope: !4348, inlinedAt: !4346)
!4351 = !DILocation(line: 101, column: 16, scope: !4348, inlinedAt: !4346)
!4352 = !DILocation(line: 100, column: 7, scope: !4341, inlinedAt: !4346)
!4353 = !DILocation(line: 102, column: 5, scope: !4348, inlinedAt: !4346)
!4354 = !DILocation(line: 86, column: 3, scope: !4336)
!4355 = !DILocation(line: 0, scope: !4341)
!4356 = !DILocation(line: 100, column: 7, scope: !4348)
!4357 = !DILocation(line: 101, column: 7, scope: !4348)
!4358 = !DILocation(line: 101, column: 18, scope: !4348)
!4359 = !DILocation(line: 101, column: 16, scope: !4348)
!4360 = !DILocation(line: 100, column: 7, scope: !4341)
!4361 = !DILocation(line: 102, column: 5, scope: !4348)
!4362 = !DILocation(line: 103, column: 3, scope: !4341)
!4363 = distinct !DISubprogram(name: "xmemdup", scope: !675, file: !675, line: 111, type: !4364, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4366)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!39, !515, !41}
!4366 = !{!4367, !4368}
!4367 = !DILocalVariable(name: "p", arg: 1, scope: !4363, file: !675, line: 111, type: !515)
!4368 = !DILocalVariable(name: "s", arg: 2, scope: !4363, file: !675, line: 111, type: !41)
!4369 = !DILocation(line: 0, scope: !4363)
!4370 = !DILocation(line: 0, scope: !4179, inlinedAt: !4371)
!4371 = distinct !DILocation(line: 113, column: 18, scope: !4363)
!4372 = !DILocation(line: 41, column: 13, scope: !4179, inlinedAt: !4371)
!4373 = !DILocation(line: 42, column: 8, scope: !4188, inlinedAt: !4371)
!4374 = !DILocation(line: 42, column: 15, scope: !4188, inlinedAt: !4371)
!4375 = !DILocation(line: 42, column: 10, scope: !4188, inlinedAt: !4371)
!4376 = !DILocation(line: 43, column: 5, scope: !4188, inlinedAt: !4371)
!4377 = !DILocalVariable(name: "__dest", arg: 1, scope: !4378, file: !1651, line: 31, type: !2279)
!4378 = distinct !DISubprogram(name: "memcpy", scope: !1651, file: !1651, line: 31, type: !2277, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4379)
!4379 = !{!4377, !4380, !4381}
!4380 = !DILocalVariable(name: "__src", arg: 2, scope: !4378, file: !1651, line: 31, type: !2280)
!4381 = !DILocalVariable(name: "__len", arg: 3, scope: !4378, file: !1651, line: 31, type: !41)
!4382 = !DILocation(line: 0, scope: !4378, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 113, column: 10, scope: !4363)
!4384 = !DILocation(line: 34, column: 10, scope: !4378, inlinedAt: !4383)
!4385 = !DILocation(line: 113, column: 3, scope: !4363)
!4386 = distinct !DISubprogram(name: "xstrdup", scope: !675, file: !675, line: 119, type: !146, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4387)
!4387 = !{!4388}
!4388 = !DILocalVariable(name: "string", arg: 1, scope: !4386, file: !675, line: 119, type: !73)
!4389 = !DILocation(line: 0, scope: !4386)
!4390 = !DILocation(line: 121, column: 27, scope: !4386)
!4391 = !DILocation(line: 121, column: 43, scope: !4386)
!4392 = !DILocation(line: 0, scope: !4363, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 121, column: 10, scope: !4386)
!4394 = !DILocation(line: 0, scope: !4179, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 113, column: 18, scope: !4363, inlinedAt: !4393)
!4396 = !DILocation(line: 41, column: 13, scope: !4179, inlinedAt: !4395)
!4397 = !DILocation(line: 42, column: 8, scope: !4188, inlinedAt: !4395)
!4398 = !DILocation(line: 42, column: 15, scope: !4188, inlinedAt: !4395)
!4399 = !DILocation(line: 42, column: 10, scope: !4188, inlinedAt: !4395)
!4400 = !DILocation(line: 43, column: 5, scope: !4188, inlinedAt: !4395)
!4401 = !DILocation(line: 0, scope: !4378, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 113, column: 10, scope: !4363, inlinedAt: !4393)
!4403 = !DILocation(line: 34, column: 10, scope: !4378, inlinedAt: !4402)
!4404 = !DILocation(line: 121, column: 3, scope: !4386)
!4405 = distinct !DISubprogram(name: "xalloc_die", scope: !691, file: !691, line: 32, type: !153, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !76)
!4406 = !DILocation(line: 34, column: 10, scope: !4405)
!4407 = !DILocation(line: 34, column: 33, scope: !4405)
!4408 = !DILocation(line: 34, column: 3, scope: !4405)
!4409 = !DILocation(line: 40, column: 3, scope: !4405)
!4410 = distinct !DISubprogram(name: "rpl_calloc", scope: !694, file: !694, line: 42, type: !4167, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !4411)
!4411 = !{!4412, !4413, !4414, !4415}
!4412 = !DILocalVariable(name: "n", arg: 1, scope: !4410, file: !694, line: 42, type: !41)
!4413 = !DILocalVariable(name: "s", arg: 2, scope: !4410, file: !694, line: 42, type: !41)
!4414 = !DILocalVariable(name: "result", scope: !4410, file: !694, line: 44, type: !39)
!4415 = !DILocalVariable(name: "bytes", scope: !4416, file: !694, line: 56, type: !41)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !694, line: 53, column: 5)
!4417 = distinct !DILexicalBlock(scope: !4410, file: !694, line: 47, column: 7)
!4418 = !DILocation(line: 0, scope: !4410)
!4419 = !DILocation(line: 47, column: 9, scope: !4417)
!4420 = !DILocation(line: 47, column: 19, scope: !4417)
!4421 = !DILocation(line: 47, column: 14, scope: !4417)
!4422 = !DILocation(line: 0, scope: !4416)
!4423 = !DILocation(line: 57, column: 21, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4416, file: !694, line: 57, column: 11)
!4425 = !DILocation(line: 57, column: 11, scope: !4416)
!4426 = !DILocation(line: 59, column: 11, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4424, file: !694, line: 58, column: 9)
!4428 = !DILocation(line: 59, column: 17, scope: !4427)
!4429 = !DILocation(line: 65, column: 12, scope: !4410)
!4430 = !DILocation(line: 72, column: 3, scope: !4410)
!4431 = !DILocation(line: 73, column: 1, scope: !4410)
!4432 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !697, file: !697, line: 86, type: !4433, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4439)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!41, !4435, !73, !41, !4436}
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2732, line: 6, baseType: !4438)
!4438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !542, line: 21, baseType: !703)
!4439 = !{!4440, !4441, !4442, !4443, !4444, !4445, !4446}
!4440 = !DILocalVariable(name: "pwc", arg: 1, scope: !4432, file: !697, line: 86, type: !4435)
!4441 = !DILocalVariable(name: "s", arg: 2, scope: !4432, file: !697, line: 86, type: !73)
!4442 = !DILocalVariable(name: "n", arg: 3, scope: !4432, file: !697, line: 86, type: !41)
!4443 = !DILocalVariable(name: "ps", arg: 4, scope: !4432, file: !697, line: 86, type: !4436)
!4444 = !DILocalVariable(name: "ret", scope: !4432, file: !697, line: 88, type: !41)
!4445 = !DILocalVariable(name: "wc", scope: !4432, file: !697, line: 89, type: !2736)
!4446 = !DILocalVariable(name: "uc", scope: !4447, file: !697, line: 156, type: !2609)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !697, line: 155, column: 5)
!4448 = distinct !DILexicalBlock(scope: !4432, file: !697, line: 154, column: 7)
!4449 = !DILocation(line: 0, scope: !4432)
!4450 = !DILocation(line: 89, column: 3, scope: !4432)
!4451 = !DILocation(line: 105, column: 9, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4432, file: !697, line: 105, column: 7)
!4453 = !DILocation(line: 105, column: 7, scope: !4432)
!4454 = !DILocation(line: 145, column: 9, scope: !4432)
!4455 = !DILocation(line: 154, column: 19, scope: !4448)
!4456 = !DILocation(line: 154, column: 31, scope: !4448)
!4457 = !DILocation(line: 154, column: 26, scope: !4448)
!4458 = !DILocation(line: 154, column: 41, scope: !4448)
!4459 = !DILocation(line: 154, column: 7, scope: !4432)
!4460 = !DILocation(line: 156, column: 26, scope: !4447)
!4461 = !DILocation(line: 0, scope: !4447)
!4462 = !DILocation(line: 157, column: 14, scope: !4447)
!4463 = !DILocation(line: 157, column: 12, scope: !4447)
!4464 = !DILocation(line: 163, column: 1, scope: !4432)
!4465 = distinct !DISubprogram(name: "str2sig", scope: !613, file: !613, line: 304, type: !628, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4466)
!4466 = !{!4467, !4468}
!4467 = !DILocalVariable(name: "signame", arg: 1, scope: !4465, file: !613, line: 304, type: !73)
!4468 = !DILocalVariable(name: "signum", arg: 2, scope: !4465, file: !613, line: 304, type: !168)
!4469 = !DILocation(line: 0, scope: !4465)
!4470 = !DILocalVariable(name: "signame", arg: 1, scope: !4471, file: !613, line: 261, type: !73)
!4471 = distinct !DISubprogram(name: "str2signum", scope: !613, file: !613, line: 261, type: !190, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4472)
!4472 = !{!4470, !4473, !4476, !4477, !4479, !4481, !4482, !4483, !4486}
!4473 = !DILocalVariable(name: "endp", scope: !4474, file: !613, line: 265, type: !71)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !613, line: 264, column: 5)
!4475 = distinct !DILexicalBlock(scope: !4471, file: !613, line: 263, column: 7)
!4476 = !DILocalVariable(name: "n", scope: !4474, file: !613, line: 266, type: !106)
!4477 = !DILocalVariable(name: "i", scope: !4478, file: !613, line: 272, type: !7)
!4478 = distinct !DILexicalBlock(scope: !4475, file: !613, line: 271, column: 5)
!4479 = !DILocalVariable(name: "endp", scope: !4480, file: !613, line: 278, type: !71)
!4480 = distinct !DILexicalBlock(scope: !4478, file: !613, line: 277, column: 7)
!4481 = !DILocalVariable(name: "rtmin", scope: !4480, file: !613, line: 279, type: !75)
!4482 = !DILocalVariable(name: "rtmax", scope: !4480, file: !613, line: 280, type: !75)
!4483 = !DILocalVariable(name: "n", scope: !4484, file: !613, line: 284, type: !106)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !613, line: 283, column: 11)
!4485 = distinct !DILexicalBlock(scope: !4480, file: !613, line: 282, column: 13)
!4486 = !DILocalVariable(name: "n", scope: !4487, file: !613, line: 290, type: !106)
!4487 = distinct !DILexicalBlock(scope: !4488, file: !613, line: 289, column: 11)
!4488 = distinct !DILexicalBlock(scope: !4485, file: !613, line: 288, column: 18)
!4489 = !DILocation(line: 0, scope: !4471, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 306, column: 13, scope: !4465)
!4491 = !DILocation(line: 263, column: 7, scope: !4475, inlinedAt: !4490)
!4492 = !DILocation(line: 263, column: 7, scope: !4471, inlinedAt: !4490)
!4493 = !DILocation(line: 265, column: 7, scope: !4474, inlinedAt: !4490)
!4494 = !DILocation(line: 0, scope: !4474, inlinedAt: !4490)
!4495 = !DILocation(line: 266, column: 20, scope: !4474, inlinedAt: !4490)
!4496 = !DILocation(line: 267, column: 14, scope: !4497, inlinedAt: !4490)
!4497 = distinct !DILexicalBlock(scope: !4474, file: !613, line: 267, column: 11)
!4498 = !DILocation(line: 267, column: 13, scope: !4497, inlinedAt: !4490)
!4499 = !DILocation(line: 267, column: 24, scope: !4497, inlinedAt: !4490)
!4500 = !DILocation(line: 268, column: 16, scope: !4497, inlinedAt: !4490)
!4501 = !DILocation(line: 267, column: 19, scope: !4497, inlinedAt: !4490)
!4502 = !DILocation(line: 269, column: 5, scope: !4475, inlinedAt: !4490)
!4503 = !DILocation(line: 273, column: 41, scope: !4504, inlinedAt: !4490)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !613, line: 273, column: 7)
!4505 = distinct !DILexicalBlock(scope: !4478, file: !613, line: 273, column: 7)
!4506 = !DILocation(line: 0, scope: !4478, inlinedAt: !4490)
!4507 = !DILocation(line: 273, column: 21, scope: !4504, inlinedAt: !4490)
!4508 = !DILocation(line: 273, column: 7, scope: !4505, inlinedAt: !4490)
!4509 = distinct !{!4509, !4508, !4510}
!4510 = !DILocation(line: 275, column: 35, scope: !4505, inlinedAt: !4490)
!4511 = !DILocation(line: 274, column: 21, scope: !4512, inlinedAt: !4490)
!4512 = distinct !DILexicalBlock(scope: !4504, file: !613, line: 274, column: 13)
!4513 = !DILocation(line: 274, column: 13, scope: !4512, inlinedAt: !4490)
!4514 = !DILocation(line: 274, column: 53, scope: !4512, inlinedAt: !4490)
!4515 = !DILocation(line: 274, column: 13, scope: !4504, inlinedAt: !4490)
!4516 = !DILocation(line: 273, column: 19, scope: !4504, inlinedAt: !4490)
!4517 = !DILocation(line: 275, column: 35, scope: !4512, inlinedAt: !4490)
!4518 = !{!4519, !1433, i64 0}
!4519 = !{!"numname", !1433, i64 0, !1318, i64 4}
!4520 = !DILocation(line: 278, column: 9, scope: !4480, inlinedAt: !4490)
!4521 = !DILocation(line: 279, column: 21, scope: !4480, inlinedAt: !4490)
!4522 = !DILocation(line: 0, scope: !4480, inlinedAt: !4490)
!4523 = !DILocation(line: 280, column: 21, scope: !4480, inlinedAt: !4490)
!4524 = !DILocation(line: 282, column: 15, scope: !4485, inlinedAt: !4490)
!4525 = !DILocation(line: 282, column: 23, scope: !4485, inlinedAt: !4490)
!4526 = !DILocation(line: 282, column: 26, scope: !4485, inlinedAt: !4490)
!4527 = !DILocation(line: 282, column: 56, scope: !4485, inlinedAt: !4490)
!4528 = !DILocation(line: 282, column: 13, scope: !4480, inlinedAt: !4490)
!4529 = !DILocation(line: 284, column: 42, scope: !4484, inlinedAt: !4490)
!4530 = !DILocation(line: 284, column: 26, scope: !4484, inlinedAt: !4490)
!4531 = !DILocation(line: 0, scope: !4484, inlinedAt: !4490)
!4532 = !DILocation(line: 285, column: 20, scope: !4533, inlinedAt: !4490)
!4533 = distinct !DILexicalBlock(scope: !4484, file: !613, line: 285, column: 17)
!4534 = !DILocation(line: 285, column: 19, scope: !4533, inlinedAt: !4490)
!4535 = !DILocation(line: 285, column: 30, scope: !4533, inlinedAt: !4490)
!4536 = !DILocation(line: 285, column: 25, scope: !4533, inlinedAt: !4490)
!4537 = !DILocation(line: 285, column: 49, scope: !4533, inlinedAt: !4490)
!4538 = !DILocation(line: 285, column: 43, scope: !4533, inlinedAt: !4490)
!4539 = !DILocation(line: 285, column: 40, scope: !4533, inlinedAt: !4490)
!4540 = !DILocation(line: 285, column: 17, scope: !4484, inlinedAt: !4490)
!4541 = !DILocation(line: 288, column: 20, scope: !4488, inlinedAt: !4490)
!4542 = !DILocation(line: 288, column: 28, scope: !4488, inlinedAt: !4490)
!4543 = !DILocation(line: 288, column: 31, scope: !4488, inlinedAt: !4490)
!4544 = !DILocation(line: 288, column: 61, scope: !4488, inlinedAt: !4490)
!4545 = !DILocation(line: 288, column: 18, scope: !4485, inlinedAt: !4490)
!4546 = !DILocation(line: 290, column: 42, scope: !4487, inlinedAt: !4490)
!4547 = !DILocation(line: 290, column: 26, scope: !4487, inlinedAt: !4490)
!4548 = !DILocation(line: 0, scope: !4487, inlinedAt: !4490)
!4549 = !DILocation(line: 291, column: 20, scope: !4550, inlinedAt: !4490)
!4550 = distinct !DILexicalBlock(scope: !4487, file: !613, line: 291, column: 17)
!4551 = !DILocation(line: 291, column: 19, scope: !4550, inlinedAt: !4490)
!4552 = !DILocation(line: 291, column: 25, scope: !4550, inlinedAt: !4490)
!4553 = !DILocation(line: 291, column: 34, scope: !4550, inlinedAt: !4490)
!4554 = !DILocation(line: 291, column: 28, scope: !4550, inlinedAt: !4490)
!4555 = !DILocation(line: 291, column: 42, scope: !4550, inlinedAt: !4490)
!4556 = !DILocation(line: 291, column: 52, scope: !4550, inlinedAt: !4490)
!4557 = !DILocation(line: 291, column: 47, scope: !4550, inlinedAt: !4490)
!4558 = !DILocation(line: 294, column: 7, scope: !4478, inlinedAt: !4490)
!4559 = !DILocation(line: 0, scope: !4485, inlinedAt: !4490)
!4560 = !DILocation(line: 297, column: 3, scope: !4471, inlinedAt: !4490)
!4561 = !DILocation(line: 306, column: 11, scope: !4465)
!4562 = !DILocation(line: 307, column: 10, scope: !4465)
!4563 = !DILocation(line: 307, column: 3, scope: !4465)
!4564 = distinct !DISubprogram(name: "sig2str", scope: !613, file: !613, line: 315, type: !204, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4565)
!4565 = !{!4566, !4567, !4568, !4569, !4571, !4572, !4573}
!4566 = !DILocalVariable(name: "signum", arg: 1, scope: !4564, file: !613, line: 315, type: !75)
!4567 = !DILocalVariable(name: "signame", arg: 2, scope: !4564, file: !613, line: 315, type: !71)
!4568 = !DILocalVariable(name: "i", scope: !4564, file: !613, line: 317, type: !7)
!4569 = !DILocalVariable(name: "rtmin", scope: !4570, file: !613, line: 326, type: !75)
!4570 = distinct !DILexicalBlock(scope: !4564, file: !613, line: 325, column: 3)
!4571 = !DILocalVariable(name: "rtmax", scope: !4570, file: !613, line: 327, type: !75)
!4572 = !DILocalVariable(name: "base", scope: !4570, file: !613, line: 328, type: !75)
!4573 = !DILocalVariable(name: "delta", scope: !4570, file: !613, line: 328, type: !75)
!4574 = !DILocation(line: 0, scope: !4564)
!4575 = !DILocation(line: 318, column: 3, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4564, file: !613, line: 318, column: 3)
!4577 = !DILocation(line: 318, column: 37, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4576, file: !613, line: 318, column: 3)
!4579 = !DILocation(line: 319, column: 26, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4578, file: !613, line: 319, column: 9)
!4581 = !DILocation(line: 319, column: 30, scope: !4580)
!4582 = !DILocation(line: 319, column: 9, scope: !4578)
!4583 = !DILocation(line: 318, column: 15, scope: !4578)
!4584 = !DILocation(line: 321, column: 26, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4580, file: !613, line: 320, column: 7)
!4586 = !DILocalVariable(name: "__dest", arg: 1, scope: !4587, file: !1651, line: 88, type: !1654)
!4587 = distinct !DISubprogram(name: "strcpy", scope: !1651, file: !1651, line: 88, type: !1652, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4588)
!4588 = !{!4586, !4589}
!4589 = !DILocalVariable(name: "__src", arg: 2, scope: !4587, file: !1651, line: 88, type: !1655)
!4590 = !DILocation(line: 0, scope: !4587, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 321, column: 9, scope: !4585)
!4592 = !DILocation(line: 90, column: 10, scope: !4587, inlinedAt: !4591)
!4593 = !DILocation(line: 322, column: 9, scope: !4585)
!4594 = !DILocation(line: 326, column: 17, scope: !4570)
!4595 = !DILocation(line: 0, scope: !4570)
!4596 = !DILocation(line: 327, column: 17, scope: !4570)
!4597 = !DILocation(line: 330, column: 18, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4570, file: !613, line: 330, column: 9)
!4599 = !DILocation(line: 330, column: 38, scope: !4598)
!4600 = !DILocation(line: 330, column: 28, scope: !4598)
!4601 = !DILocation(line: 333, column: 34, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4570, file: !613, line: 333, column: 9)
!4603 = !DILocation(line: 333, column: 43, scope: !4602)
!4604 = !DILocation(line: 333, column: 25, scope: !4602)
!4605 = !DILocation(line: 333, column: 16, scope: !4602)
!4606 = !DILocation(line: 0, scope: !4587, inlinedAt: !4607)
!4607 = distinct !DILocation(line: 340, column: 9, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4602, file: !613, line: 339, column: 7)
!4609 = !DILocation(line: 0, scope: !4587, inlinedAt: !4610)
!4610 = distinct !DILocation(line: 335, column: 9, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4602, file: !613, line: 334, column: 7)
!4612 = !DILocation(line: 333, column: 9, scope: !4570)
!4613 = !DILocation(line: 90, column: 10, scope: !4587, inlinedAt: !4610)
!4614 = !DILocation(line: 337, column: 7, scope: !4611)
!4615 = !DILocation(line: 90, column: 10, scope: !4587, inlinedAt: !4607)
!4616 = !DILocation(line: 0, scope: !4602)
!4617 = !DILocation(line: 344, column: 20, scope: !4570)
!4618 = !DILocation(line: 345, column: 15, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4570, file: !613, line: 345, column: 9)
!4620 = !DILocation(line: 345, column: 9, scope: !4570)
!4621 = !DILocation(line: 346, column: 7, scope: !4619)
!4622 = !DILocation(line: 349, column: 1, scope: !4564)
!4623 = !DILocation(line: 318, column: 17, scope: !4578)
!4624 = distinct !{!4624, !4575, !4625}
!4625 = !DILocation(line: 323, column: 7, scope: !4576)
!4626 = distinct !DISubprogram(name: "close_stream", scope: !716, file: !716, line: 56, type: !4627, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !4631)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!75, !4629}
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4042, line: 7, baseType: !723)
!4631 = !{!4632, !4633, !4635, !4636}
!4632 = !DILocalVariable(name: "stream", arg: 1, scope: !4626, file: !716, line: 56, type: !4629)
!4633 = !DILocalVariable(name: "some_pending", scope: !4626, file: !716, line: 58, type: !4634)
!4634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!4635 = !DILocalVariable(name: "prev_fail", scope: !4626, file: !716, line: 59, type: !4634)
!4636 = !DILocalVariable(name: "fclose_fail", scope: !4626, file: !716, line: 60, type: !4634)
!4637 = !DILocation(line: 0, scope: !4626)
!4638 = !DILocation(line: 58, column: 30, scope: !4626)
!4639 = !DILocalVariable(name: "__stream", arg: 1, scope: !4640, file: !4641, line: 135, type: !4629)
!4640 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4641, file: !4641, line: 135, type: !4627, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !4642)
!4641 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4642 = !{!4639}
!4643 = !DILocation(line: 0, scope: !4640, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 59, column: 27, scope: !4626)
!4645 = !DILocation(line: 137, column: 10, scope: !4640, inlinedAt: !4644)
!4646 = !{!4647, !1433, i64 0}
!4647 = !{!"_IO_FILE", !1433, i64 0, !1317, i64 8, !1317, i64 16, !1317, i64 24, !1317, i64 32, !1317, i64 40, !1317, i64 48, !1317, i64 56, !1317, i64 64, !1317, i64 72, !1317, i64 80, !1317, i64 88, !1317, i64 96, !1317, i64 104, !1433, i64 112, !1433, i64 116, !1461, i64 120, !1534, i64 128, !1318, i64 130, !1318, i64 131, !1317, i64 136, !1461, i64 144, !1317, i64 152, !1317, i64 160, !1317, i64 168, !1317, i64 176, !1461, i64 184, !1433, i64 192, !1318, i64 196}
!4648 = !DILocation(line: 59, column: 43, scope: !4626)
!4649 = !DILocation(line: 60, column: 29, scope: !4626)
!4650 = !DILocation(line: 60, column: 45, scope: !4626)
!4651 = !DILocation(line: 70, column: 17, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4626, file: !716, line: 70, column: 7)
!4653 = !DILocation(line: 58, column: 50, scope: !4626)
!4654 = !DILocation(line: 70, column: 33, scope: !4652)
!4655 = !DILocation(line: 70, column: 53, scope: !4652)
!4656 = !DILocation(line: 70, column: 59, scope: !4652)
!4657 = !DILocation(line: 70, column: 7, scope: !4626)
!4658 = !DILocation(line: 72, column: 11, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4652, file: !716, line: 71, column: 5)
!4660 = !DILocation(line: 73, column: 9, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4659, file: !716, line: 72, column: 11)
!4662 = !DILocation(line: 73, column: 15, scope: !4661)
!4663 = !DILocation(line: 78, column: 1, scope: !4626)
!4664 = distinct !DISubprogram(name: "hard_locale", scope: !755, file: !755, line: 27, type: !713, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !4665)
!4665 = !{!4666, !4667}
!4666 = !DILocalVariable(name: "category", arg: 1, scope: !4664, file: !755, line: 27, type: !75)
!4667 = !DILocalVariable(name: "locale", scope: !4664, file: !755, line: 29, type: !4668)
!4668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 2056, elements: !4669)
!4669 = !{!4670}
!4670 = !DISubrange(count: 257)
!4671 = !DILocation(line: 0, scope: !4664)
!4672 = !DILocation(line: 29, column: 3, scope: !4664)
!4673 = !DILocation(line: 29, column: 8, scope: !4664)
!4674 = !DILocation(line: 31, column: 7, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4664, file: !755, line: 31, column: 7)
!4676 = !DILocation(line: 31, column: 7, scope: !4664)
!4677 = !DILocation(line: 34, column: 12, scope: !4664)
!4678 = !DILocation(line: 34, column: 38, scope: !4664)
!4679 = !DILocation(line: 34, column: 41, scope: !4664)
!4680 = !DILocation(line: 34, column: 66, scope: !4664)
!4681 = !DILocation(line: 35, column: 1, scope: !4664)
!4682 = distinct !DISubprogram(name: "locale_charset", scope: !762, file: !762, line: 831, type: !565, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !4683)
!4683 = !{!4684}
!4684 = !DILocalVariable(name: "codeset", scope: !4682, file: !762, line: 833, type: !73)
!4685 = !DILocation(line: 847, column: 13, scope: !4682)
!4686 = !DILocation(line: 0, scope: !4682)
!4687 = !DILocation(line: 911, column: 15, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4682, file: !762, line: 911, column: 7)
!4689 = !DILocation(line: 911, column: 7, scope: !4682)
!4690 = !DILocation(line: 1070, column: 13, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4692, file: !762, line: 1070, column: 13)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !762, line: 1060, column: 7)
!4693 = distinct !DILexicalBlock(scope: !4682, file: !762, line: 1019, column: 3)
!4694 = !DILocation(line: 1070, column: 24, scope: !4691)
!4695 = !DILocation(line: 1070, column: 13, scope: !4692)
!4696 = !DILocation(line: 1158, column: 3, scope: !4682)
!4697 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1155, file: !1155, line: 269, type: !4698, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1154, retainedNodes: !4700)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!75, !75, !71, !41}
!4700 = !{!4701, !4702, !4703}
!4701 = !DILocalVariable(name: "category", arg: 1, scope: !4697, file: !1155, line: 269, type: !75)
!4702 = !DILocalVariable(name: "buf", arg: 2, scope: !4697, file: !1155, line: 269, type: !71)
!4703 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4697, file: !1155, line: 269, type: !41)
!4704 = !DILocation(line: 0, scope: !4697)
!4705 = !DILocalVariable(name: "category", arg: 1, scope: !4706, file: !1155, line: 91, type: !75)
!4706 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1155, file: !1155, line: 91, type: !4698, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1154, retainedNodes: !4707)
!4707 = !{!4705, !4708, !4709, !4710, !4711}
!4708 = !DILocalVariable(name: "buf", arg: 2, scope: !4706, file: !1155, line: 91, type: !71)
!4709 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4706, file: !1155, line: 91, type: !41)
!4710 = !DILocalVariable(name: "result", scope: !4706, file: !1155, line: 140, type: !73)
!4711 = !DILocalVariable(name: "length", scope: !4712, file: !1155, line: 154, type: !41)
!4712 = distinct !DILexicalBlock(scope: !4713, file: !1155, line: 153, column: 5)
!4713 = distinct !DILexicalBlock(scope: !4706, file: !1155, line: 142, column: 7)
!4714 = !DILocation(line: 0, scope: !4706, inlinedAt: !4715)
!4715 = distinct !DILocation(line: 274, column: 10, scope: !4697)
!4716 = !DILocalVariable(name: "category", arg: 1, scope: !4717, file: !1155, line: 60, type: !75)
!4717 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1155, file: !1155, line: 60, type: !4718, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1154, retainedNodes: !4720)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!73, !75}
!4720 = !{!4716, !4721}
!4721 = !DILocalVariable(name: "result", scope: !4717, file: !1155, line: 62, type: !73)
!4722 = !DILocation(line: 0, scope: !4717, inlinedAt: !4723)
!4723 = distinct !DILocation(line: 140, column: 24, scope: !4706, inlinedAt: !4715)
!4724 = !DILocation(line: 62, column: 24, scope: !4717, inlinedAt: !4723)
!4725 = !DILocation(line: 142, column: 14, scope: !4713, inlinedAt: !4715)
!4726 = !DILocation(line: 142, column: 7, scope: !4706, inlinedAt: !4715)
!4727 = !DILocation(line: 145, column: 19, scope: !4728, inlinedAt: !4715)
!4728 = distinct !DILexicalBlock(scope: !4729, file: !1155, line: 145, column: 11)
!4729 = distinct !DILexicalBlock(scope: !4713, file: !1155, line: 143, column: 5)
!4730 = !DILocation(line: 145, column: 11, scope: !4729, inlinedAt: !4715)
!4731 = !DILocation(line: 149, column: 16, scope: !4728, inlinedAt: !4715)
!4732 = !DILocation(line: 149, column: 9, scope: !4728, inlinedAt: !4715)
!4733 = !DILocation(line: 154, column: 23, scope: !4712, inlinedAt: !4715)
!4734 = !DILocation(line: 0, scope: !4712, inlinedAt: !4715)
!4735 = !DILocation(line: 155, column: 18, scope: !4736, inlinedAt: !4715)
!4736 = distinct !DILexicalBlock(scope: !4712, file: !1155, line: 155, column: 11)
!4737 = !DILocation(line: 155, column: 11, scope: !4712, inlinedAt: !4715)
!4738 = !DILocation(line: 157, column: 39, scope: !4739, inlinedAt: !4715)
!4739 = distinct !DILexicalBlock(scope: !4736, file: !1155, line: 156, column: 9)
!4740 = !DILocalVariable(name: "__dest", arg: 1, scope: !4741, file: !1651, line: 31, type: !2279)
!4741 = distinct !DISubprogram(name: "memcpy", scope: !1651, file: !1651, line: 31, type: !2277, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1154, retainedNodes: !4742)
!4742 = !{!4740, !4743, !4744}
!4743 = !DILocalVariable(name: "__src", arg: 2, scope: !4741, file: !1651, line: 31, type: !2280)
!4744 = !DILocalVariable(name: "__len", arg: 3, scope: !4741, file: !1651, line: 31, type: !41)
!4745 = !DILocation(line: 0, scope: !4741, inlinedAt: !4746)
!4746 = distinct !DILocation(line: 157, column: 11, scope: !4739, inlinedAt: !4715)
!4747 = !DILocation(line: 34, column: 10, scope: !4741, inlinedAt: !4746)
!4748 = !DILocation(line: 158, column: 11, scope: !4739, inlinedAt: !4715)
!4749 = !DILocation(line: 162, column: 23, scope: !4750, inlinedAt: !4715)
!4750 = distinct !DILexicalBlock(scope: !4751, file: !1155, line: 162, column: 15)
!4751 = distinct !DILexicalBlock(scope: !4736, file: !1155, line: 161, column: 9)
!4752 = !DILocation(line: 162, column: 15, scope: !4751, inlinedAt: !4715)
!4753 = !DILocation(line: 167, column: 44, scope: !4754, inlinedAt: !4715)
!4754 = distinct !DILexicalBlock(scope: !4750, file: !1155, line: 163, column: 13)
!4755 = !DILocation(line: 0, scope: !4741, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 167, column: 15, scope: !4754, inlinedAt: !4715)
!4757 = !DILocation(line: 34, column: 10, scope: !4741, inlinedAt: !4756)
!4758 = !DILocation(line: 168, column: 15, scope: !4754, inlinedAt: !4715)
!4759 = !DILocation(line: 168, column: 32, scope: !4754, inlinedAt: !4715)
!4760 = !DILocation(line: 169, column: 13, scope: !4754, inlinedAt: !4715)
!4761 = !DILocation(line: 0, scope: !4713, inlinedAt: !4715)
!4762 = !DILocation(line: 274, column: 3, scope: !4697)
!4763 = distinct !DISubprogram(name: "setlocale_null", scope: !1155, file: !1155, line: 301, type: !4718, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1154, retainedNodes: !4764)
!4764 = !{!4765}
!4765 = !DILocalVariable(name: "category", arg: 1, scope: !4763, file: !1155, line: 301, type: !75)
!4766 = !DILocation(line: 0, scope: !4763)
!4767 = !DILocation(line: 0, scope: !4717, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 304, column: 10, scope: !4763)
!4769 = !DILocation(line: 62, column: 24, scope: !4717, inlinedAt: !4768)
!4770 = !DILocation(line: 304, column: 3, scope: !4763)
!4771 = distinct !DISubprogram(name: "rpl_fclose", scope: !1158, file: !1158, line: 58, type: !4772, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1157, retainedNodes: !4776)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!75, !4774}
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4042, line: 7, baseType: !1164)
!4776 = !{!4777, !4778, !4779, !4780}
!4777 = !DILocalVariable(name: "fp", arg: 1, scope: !4771, file: !1158, line: 58, type: !4774)
!4778 = !DILocalVariable(name: "saved_errno", scope: !4771, file: !1158, line: 60, type: !75)
!4779 = !DILocalVariable(name: "fd", scope: !4771, file: !1158, line: 61, type: !75)
!4780 = !DILocalVariable(name: "result", scope: !4771, file: !1158, line: 62, type: !75)
!4781 = !DILocation(line: 0, scope: !4771)
!4782 = !DILocation(line: 65, column: 8, scope: !4771)
!4783 = !DILocation(line: 66, column: 10, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4771, file: !1158, line: 66, column: 7)
!4785 = !DILocation(line: 66, column: 7, scope: !4771)
!4786 = !DILocation(line: 67, column: 12, scope: !4784)
!4787 = !DILocation(line: 67, column: 5, scope: !4784)
!4788 = !DILocation(line: 72, column: 9, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4771, file: !1158, line: 72, column: 7)
!4790 = !DILocation(line: 72, column: 23, scope: !4789)
!4791 = !DILocation(line: 72, column: 33, scope: !4789)
!4792 = !DILocation(line: 72, column: 26, scope: !4789)
!4793 = !DILocation(line: 72, column: 59, scope: !4789)
!4794 = !DILocation(line: 73, column: 7, scope: !4789)
!4795 = !DILocation(line: 73, column: 10, scope: !4789)
!4796 = !DILocation(line: 72, column: 7, scope: !4771)
!4797 = !DILocation(line: 100, column: 12, scope: !4771)
!4798 = !DILocation(line: 105, column: 7, scope: !4771)
!4799 = !DILocation(line: 74, column: 19, scope: !4789)
!4800 = !DILocation(line: 105, column: 19, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4771, file: !1158, line: 105, column: 7)
!4802 = !DILocation(line: 107, column: 13, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4801, file: !1158, line: 106, column: 5)
!4804 = !DILocation(line: 109, column: 5, scope: !4803)
!4805 = !DILocation(line: 112, column: 1, scope: !4771)
!4806 = distinct !DISubprogram(name: "rpl_fflush", scope: !1201, file: !1201, line: 129, type: !4807, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1200, retainedNodes: !4811)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!75, !4809}
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4042, line: 7, baseType: !1207)
!4811 = !{!4812}
!4812 = !DILocalVariable(name: "stream", arg: 1, scope: !4806, file: !1201, line: 129, type: !4809)
!4813 = !DILocation(line: 0, scope: !4806)
!4814 = !DILocation(line: 150, column: 14, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4806, file: !1201, line: 150, column: 7)
!4816 = !DILocation(line: 150, column: 22, scope: !4815)
!4817 = !DILocation(line: 150, column: 27, scope: !4815)
!4818 = !DILocation(line: 150, column: 7, scope: !4806)
!4819 = !DILocation(line: 151, column: 12, scope: !4815)
!4820 = !DILocation(line: 151, column: 5, scope: !4815)
!4821 = !DILocalVariable(name: "fp", arg: 1, scope: !4822, file: !1201, line: 41, type: !4809)
!4822 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1201, file: !1201, line: 41, type: !4823, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1200, retainedNodes: !4825)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{null, !4809}
!4825 = !{!4821}
!4826 = !DILocation(line: 0, scope: !4822, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 156, column: 3, scope: !4806)
!4828 = !DILocation(line: 43, column: 11, scope: !4829, inlinedAt: !4827)
!4829 = distinct !DILexicalBlock(scope: !4822, file: !1201, line: 43, column: 7)
!4830 = !DILocation(line: 43, column: 18, scope: !4829, inlinedAt: !4827)
!4831 = !DILocation(line: 43, column: 7, scope: !4822, inlinedAt: !4827)
!4832 = !DILocation(line: 45, column: 5, scope: !4829, inlinedAt: !4827)
!4833 = !DILocation(line: 158, column: 10, scope: !4806)
!4834 = !DILocation(line: 158, column: 3, scope: !4806)
!4835 = !DILocation(line: 235, column: 1, scope: !4806)
!4836 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1242, file: !1242, line: 28, type: !4837, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1241, retainedNodes: !4842)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!75, !4839, !4841, !75}
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4042, line: 7, baseType: !1248)
!4841 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !78, line: 63, baseType: !104)
!4842 = !{!4843, !4844, !4845, !4846}
!4843 = !DILocalVariable(name: "fp", arg: 1, scope: !4836, file: !1242, line: 28, type: !4839)
!4844 = !DILocalVariable(name: "offset", arg: 2, scope: !4836, file: !1242, line: 28, type: !4841)
!4845 = !DILocalVariable(name: "whence", arg: 3, scope: !4836, file: !1242, line: 28, type: !75)
!4846 = !DILocalVariable(name: "pos", scope: !4847, file: !1242, line: 117, type: !4841)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !1242, line: 113, column: 5)
!4848 = distinct !DILexicalBlock(scope: !4836, file: !1242, line: 52, column: 7)
!4849 = !DILocation(line: 0, scope: !4836)
!4850 = !DILocation(line: 52, column: 11, scope: !4848)
!4851 = !{!4647, !1317, i64 16}
!4852 = !DILocation(line: 52, column: 31, scope: !4848)
!4853 = !{!4647, !1317, i64 8}
!4854 = !DILocation(line: 52, column: 24, scope: !4848)
!4855 = !DILocation(line: 53, column: 7, scope: !4848)
!4856 = !DILocation(line: 53, column: 14, scope: !4848)
!4857 = !{!4647, !1317, i64 40}
!4858 = !DILocation(line: 53, column: 35, scope: !4848)
!4859 = !{!4647, !1317, i64 32}
!4860 = !DILocation(line: 53, column: 28, scope: !4848)
!4861 = !DILocation(line: 54, column: 7, scope: !4848)
!4862 = !DILocation(line: 54, column: 14, scope: !4848)
!4863 = !{!4647, !1317, i64 72}
!4864 = !DILocation(line: 54, column: 28, scope: !4848)
!4865 = !DILocation(line: 52, column: 7, scope: !4836)
!4866 = !DILocation(line: 117, column: 26, scope: !4847)
!4867 = !DILocation(line: 117, column: 19, scope: !4847)
!4868 = !DILocation(line: 0, scope: !4847)
!4869 = !DILocation(line: 118, column: 15, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4847, file: !1242, line: 118, column: 11)
!4871 = !DILocation(line: 118, column: 11, scope: !4847)
!4872 = !DILocation(line: 129, column: 11, scope: !4847)
!4873 = !DILocation(line: 129, column: 18, scope: !4847)
!4874 = !DILocation(line: 130, column: 11, scope: !4847)
!4875 = !DILocation(line: 130, column: 19, scope: !4847)
!4876 = !{!4647, !1461, i64 144}
!4877 = !DILocation(line: 161, column: 7, scope: !4847)
!4878 = !DILocation(line: 163, column: 10, scope: !4836)
!4879 = !DILocation(line: 163, column: 3, scope: !4836)
!4880 = !DILocation(line: 164, column: 1, scope: !4836)
