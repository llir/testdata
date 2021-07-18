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
@shortopts = internal constant [13 x i8] c"+C:iS:u:v0 \09\00", align 1, !dbg !114
@longopts = internal constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), i32 2, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i32 2, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i32 2, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i32 1, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !119
@optarg = external local_unnamed_addr global i8*, align 8
@usvars_used = internal unnamed_addr global i64 0, align 8, !dbg !131
@usvars_alloc = internal unnamed_addr global i64 0, align 8, !dbg !133
@usvars = internal unnamed_addr global i8** null, align 8, !dbg !135
@dev_debug = internal unnamed_addr global i1 false, align 1, !dbg !157
@report_signal_handling = internal unnamed_addr global i1 false, align 1, !dbg !158
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
@main.dummy_environ = internal global [1 x i8*] zeroinitializer, align 8, !dbg !77
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
@sig_mask_changed = internal unnamed_addr global i1 false, align 1, !dbg !159
@.str.92 = private unnamed_addr constant [34 x i8] c"failed to get signal process mask\00", align 1
@block_signals = internal global %struct.__sigset_t zeroinitializer, align 8, !dbg !138
@.str.93 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1
@unblock_signals = internal global %struct.__sigset_t zeroinitializer, align 8, !dbg !150
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
@vnlen = internal unnamed_addr global i64 0, align 8, !dbg !152
@varname = internal unnamed_addr global i8* null, align 8, !dbg !154
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i64 0, i64 0), align 8, !dbg !160
@.str.98 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !166
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !171
@.str.103 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.104 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.105 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !173
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !179
@.str.112 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.113 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.114 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.117, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.118, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.119, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.120, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.121, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.122, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.123, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.124, i32 0, i32 0), i8* null], align 16, !dbg !185
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !197
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !203
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !215
@.str.11.125 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.126 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.127 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.128 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.129 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.130 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.131 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !222
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !229
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !217
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !231
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !237
@.str.1.175 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !245
@.str.183 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.184 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.187 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.1.192 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.195 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.196 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !695 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !697, metadata !DIExpression()), !dbg !698
  %3 = icmp eq i32 %0, 0, !dbg !699
  br i1 %3, label %9, label %4, !dbg !701

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !702, !tbaa !704
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #29, !dbg !702
  %7 = load i8*, i8** @program_name, align 8, !dbg !702, !tbaa !704
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #29, !dbg !702
  br label %91, !dbg !702

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 5) #29, !dbg !708
  %11 = load i8*, i8** @program_name, align 8, !dbg !708, !tbaa !704
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #29, !dbg !708
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #29, !dbg !710
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !704
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !710
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.37, i64 0, i64 0), i32 5) #29, !dbg !711
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !711, !tbaa !704
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #29, !dbg !711
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.3, i64 0, i64 0), i32 5) #29, !dbg !716
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !716, !tbaa !704
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !716
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 5) #29, !dbg !717
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !717, !tbaa !704
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !717
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.5, i64 0, i64 0), i32 5) #29, !dbg !718
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !718, !tbaa !704
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !718
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i32 5) #29, !dbg !719
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !719, !tbaa !704
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !719
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0), i32 5) #29, !dbg !720
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !720, !tbaa !704
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !720
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.8, i64 0, i64 0), i32 5) #29, !dbg !721
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !721, !tbaa !704
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !721
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0), i32 5) #29, !dbg !722
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !722, !tbaa !704
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !722
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0), i32 5) #29, !dbg !723
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !723, !tbaa !704
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !723
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 5) #29, !dbg !724
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !704
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !724
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i32 5) #29, !dbg !725
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !725, !tbaa !704
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !725
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.13, i64 0, i64 0), i32 5) #29, !dbg !726
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !726, !tbaa !704
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !726
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.14, i64 0, i64 0), i32 5) #29, !dbg !727
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !727, !tbaa !704
  %54 = tail call i32 @fputs_unlocked(i8* %52, %struct._IO_FILE* %53), !dbg !727
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), metadata !728, metadata !DIExpression()) #29, !dbg !746
  %55 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !748
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %55) #29, !dbg !748
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !733, metadata !DIExpression()) #29, !dbg !749
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %55, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #29, !dbg !749
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), metadata !742, metadata !DIExpression()) #29, !dbg !746
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !743, metadata !DIExpression()) #29, !dbg !746
  %56 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !750
  call void @llvm.dbg.value(metadata %struct.infomap* %56, metadata !743, metadata !DIExpression()) #29, !dbg !746
  br label %57, !dbg !751

57:                                               ; preds = %62, %9
  %58 = phi i8* [ %65, %62 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %9 ]
  %59 = phi %struct.infomap* [ %63, %62 ], [ %56, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %59, metadata !743, metadata !DIExpression()) #29, !dbg !746
  %60 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* nonnull %58) #30, !dbg !752
  %61 = icmp eq i32 %60, 0, !dbg !752
  br i1 %61, label %67, label %62, !dbg !751

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.infomap, %struct.infomap* %59, i64 1, !dbg !753
  call void @llvm.dbg.value(metadata %struct.infomap* %63, metadata !743, metadata !DIExpression()) #29, !dbg !746
  %64 = getelementptr inbounds %struct.infomap, %struct.infomap* %63, i64 0, i32 0, !dbg !754
  %65 = load i8*, i8** %64, align 8, !dbg !754, !tbaa !755
  %66 = icmp eq i8* %65, null, !dbg !757
  br i1 %66, label %67, label %57, !dbg !758, !llvm.loop !759

67:                                               ; preds = %62, %57
  %68 = phi %struct.infomap* [ %59, %57 ], [ %63, %62 ]
  %69 = getelementptr inbounds %struct.infomap, %struct.infomap* %68, i64 0, i32 1, !dbg !761
  %70 = load i8*, i8** %69, align 8, !dbg !761, !tbaa !763
  %71 = icmp eq i8* %70, null, !dbg !764
  %72 = select i1 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %70, !dbg !765
  call void @llvm.dbg.value(metadata i8* %72, metadata !742, metadata !DIExpression()) #29, !dbg !746
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), i32 5) #29, !dbg !766
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0)) #29, !dbg !766
  %75 = tail call i8* @setlocale(i32 5, i8* null) #29, !dbg !767
  call void @llvm.dbg.value(metadata i8* %75, metadata !745, metadata !DIExpression()) #29, !dbg !746
  %76 = icmp eq i8* %75, null, !dbg !768
  br i1 %76, label %84, label %77, !dbg !770

77:                                               ; preds = %67
  %78 = tail call i32 @strncmp(i8* nonnull %75, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i64 3) #30, !dbg !771
  %79 = icmp eq i32 %78, 0, !dbg !771
  br i1 %79, label %84, label %80, !dbg !772

80:                                               ; preds = %77
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.49, i64 0, i64 0), i32 5) #29, !dbg !773
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !773, !tbaa !704
  %83 = tail call i32 @fputs_unlocked(i8* %81, %struct._IO_FILE* %82) #29, !dbg !773
  br label %84, !dbg !775

84:                                               ; preds = %67, %77, %80
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 5) #29, !dbg !776
  %86 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #29, !dbg !776
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i64 0, i64 0), i32 5) #29, !dbg !777
  %88 = icmp eq i8* %72, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !777
  %89 = select i1 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), !dbg !777
  %90 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %87, i8* %72, i8* %89) #29, !dbg !777
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %55) #29, !dbg !778
  br label %91

91:                                               ; preds = %84, %4
  tail call void @exit(i32 %0) #31, !dbg !779
  unreachable, !dbg !779
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !780 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !784 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !838 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !79 {
  %3 = alloca %struct.__sigset_t, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.__sigset_t, align 8
  %6 = alloca [19 x i8], align 16
  call void @llvm.dbg.declare(metadata [19 x i8]* %6, metadata !842, metadata !DIExpression()) #29, !dbg !856
  call void @llvm.dbg.declare(metadata [19 x i8]* %6, metadata !859, metadata !DIExpression()) #29, !dbg !964
  %7 = alloca %struct.sigaction, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !84, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i8** %1, metadata !85, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i8 0, metadata !87, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i8 0, metadata !89, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i8* null, metadata !90, metadata !DIExpression()), !dbg !966
  %8 = load i8*, i8** %1, align 8, !dbg !967, !tbaa !704
  tail call void @set_program_name(i8* %8) #29, !dbg !968
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)) #29, !dbg !969
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0)) #29, !dbg !970
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)) #29, !dbg !971
  call void @llvm.dbg.value(metadata i32 125, metadata !972, metadata !DIExpression()), !dbg !975
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !977, !tbaa !979
  %12 = tail call i32 @atexit(void ()* nonnull @close_stdout) #29, !dbg !981
  %13 = tail call noalias i8* @xmalloc(i64 260) #29, !dbg !982
  store i8* %13, i8** bitcast (i32** @signals to i8**), align 8, !dbg !988, !tbaa !704
  call void @llvm.dbg.value(metadata i32 0, metadata !985, metadata !DIExpression()) #29, !dbg !989
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(260) %13, i8 0, i64 260, i1 false) #29, !dbg !990
  call void @llvm.dbg.value(metadata i32 undef, metadata !985, metadata !DIExpression()) #29, !dbg !989
  call void @llvm.dbg.value(metadata i32 undef, metadata !985, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #29, !dbg !989
  br label %14, !dbg !992

14:                                               ; preds = %539, %2
  %15 = phi i32 [ %0, %2 ], [ %540, %539 ]
  %16 = phi i8** [ %1, %2 ], [ %541, %539 ]
  %17 = phi i8* [ null, %2 ], [ %542, %539 ], !dbg !993
  %18 = phi i8 [ 0, %2 ], [ %543, %539 ], !dbg !994
  %19 = phi i8 [ 0, %2 ], [ %544, %539 ], !dbg !995
  call void @llvm.dbg.value(metadata i8 %19, metadata !87, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i8 %18, metadata !89, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i8* %17, metadata !90, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 %15, metadata !84, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i8** %16, metadata !85, metadata !DIExpression()), !dbg !966
  %20 = tail call i32 @getopt_long(i32 %15, i8** nonnull %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #29, !dbg !996
  call void @llvm.dbg.value(metadata i32 %20, metadata !86, metadata !DIExpression()), !dbg !966
  switch i32 %20, label %552 [
    i32 -1, label %553
    i32 105, label %539
    i32 117, label %21
    i32 118, label %54
    i32 48, label %55
    i32 128, label %56
    i32 129, label %59
    i32 130, label %61
    i32 131, label %63
    i32 67, label %64
    i32 83, label %66
    i32 32, label %545
    i32 9, label %545
    i32 -130, label %548
    i32 -131, label %549
  ], !dbg !992

21:                                               ; preds = %14
  %22 = load i8*, i8** @optarg, align 8, !dbg !997, !tbaa !704
  call void @llvm.dbg.value(metadata i8* %22, metadata !1000, metadata !DIExpression()) #29, !dbg !1003
  %23 = load i64, i64* @usvars_used, align 8, !dbg !1005, !tbaa !1007
  %24 = load i64, i64* @usvars_alloc, align 8, !dbg !1009, !tbaa !1007
  %25 = icmp eq i64 %23, %24, !dbg !1010
  br i1 %25, label %28, label %26, !dbg !1011

26:                                               ; preds = %21
  %27 = load i8**, i8*** @usvars, align 8, !dbg !1012, !tbaa !704
  br label %49, !dbg !1011

28:                                               ; preds = %21
  %29 = load i8*, i8** bitcast (i8*** @usvars to i8**), align 8, !dbg !1013, !tbaa !704
  call void @llvm.dbg.value(metadata i8* %29, metadata !45, metadata !DIExpression()) #29, !dbg !1014
  call void @llvm.dbg.value(metadata i64* @usvars_alloc, metadata !46, metadata !DIExpression()) #29, !dbg !1014
  call void @llvm.dbg.value(metadata i64 8, metadata !47, metadata !DIExpression()) #29, !dbg !1014
  call void @llvm.dbg.value(metadata i64 %24, metadata !48, metadata !DIExpression()) #29, !dbg !1014
  %30 = icmp eq i8* %29, null, !dbg !1016
  br i1 %30, label %31, label %36, !dbg !1018

31:                                               ; preds = %28
  %32 = icmp eq i64 %23, 0, !dbg !1019
  br i1 %32, label %43, label %33, !dbg !1022

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %24, metadata !48, metadata !DIExpression()) #29, !dbg !1014
  %34 = icmp ugt i64 %23, 1152921504606846975, !dbg !1023
  br i1 %34, label %35, label %43, !dbg !1025

35:                                               ; preds = %33
  tail call void @xalloc_die() #31, !dbg !1026
  unreachable, !dbg !1026

36:                                               ; preds = %28
  %37 = icmp ult i64 %23, 768614336404564650, !dbg !1027
  br i1 %37, label %39, label %38, !dbg !1030

38:                                               ; preds = %36
  tail call void @xalloc_die() #31, !dbg !1031
  unreachable, !dbg !1031

39:                                               ; preds = %36
  %40 = lshr i64 %23, 1, !dbg !1032
  %41 = add nuw nsw i64 %23, 1, !dbg !1033
  %42 = add nuw nsw i64 %41, %40, !dbg !1034
  call void @llvm.dbg.value(metadata i64 %42, metadata !48, metadata !DIExpression()) #29, !dbg !1014
  br label %43

43:                                               ; preds = %39, %33, %31
  %44 = phi i64 [ %42, %39 ], [ %23, %33 ], [ 16, %31 ], !dbg !1014
  call void @llvm.dbg.value(metadata i64 %44, metadata !48, metadata !DIExpression()) #29, !dbg !1014
  store i64 %44, i64* @usvars_alloc, align 8, !dbg !1035, !tbaa !1007
  %45 = shl nuw nsw i64 %44, 3, !dbg !1036
  %46 = tail call i8* @xrealloc(i8* %29, i64 %45) #29, !dbg !1037
  store i8* %46, i8** bitcast (i8*** @usvars to i8**), align 8, !dbg !1038, !tbaa !704
  %47 = bitcast i8* %46 to i8**, !dbg !1039
  %48 = load i64, i64* @usvars_used, align 8, !dbg !1040, !tbaa !1007
  br label %49, !dbg !1039

49:                                               ; preds = %26, %43
  %50 = phi i64 [ %23, %26 ], [ %48, %43 ], !dbg !1040
  %51 = phi i8** [ %27, %26 ], [ %47, %43 ], !dbg !1012
  %52 = add i64 %50, 1, !dbg !1040
  store i64 %52, i64* @usvars_used, align 8, !dbg !1040, !tbaa !1007
  %53 = getelementptr inbounds i8*, i8** %51, i64 %50, !dbg !1012
  store i8* %22, i8** %53, align 8, !dbg !1041, !tbaa !704
  br label %539, !dbg !1042

54:                                               ; preds = %14
  store i1 true, i1* @dev_debug, align 1, !dbg !1043
  br label %539, !dbg !1044

55:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !89, metadata !DIExpression()), !dbg !966
  br label %539, !dbg !1045

56:                                               ; preds = %14
  %57 = load i8*, i8** @optarg, align 8, !dbg !1046, !tbaa !704
  tail call fastcc void @parse_signal_action_params(i8* %57, i1 zeroext true), !dbg !1047
  %58 = load i8*, i8** @optarg, align 8, !dbg !1048, !tbaa !704
  tail call fastcc void @parse_block_signal_params(i8* %58, i1 zeroext false), !dbg !1049
  br label %539, !dbg !1050

59:                                               ; preds = %14
  %60 = load i8*, i8** @optarg, align 8, !dbg !1051, !tbaa !704
  tail call fastcc void @parse_signal_action_params(i8* %60, i1 zeroext false), !dbg !1052
  br label %539, !dbg !1053

61:                                               ; preds = %14
  %62 = load i8*, i8** @optarg, align 8, !dbg !1054, !tbaa !704
  tail call fastcc void @parse_block_signal_params(i8* %62, i1 zeroext true), !dbg !1055
  br label %539, !dbg !1056

63:                                               ; preds = %14
  store i1 true, i1* @report_signal_handling, align 1, !dbg !1057
  br label %539, !dbg !1058

64:                                               ; preds = %14
  %65 = load i8*, i8** @optarg, align 8, !dbg !1059, !tbaa !704
  call void @llvm.dbg.value(metadata i8* %65, metadata !90, metadata !DIExpression()), !dbg !966
  br label %539, !dbg !1060

66:                                               ; preds = %14
  %67 = load i8*, i8** @optarg, align 8, !dbg !1061, !tbaa !704
  call void @llvm.dbg.value(metadata i8* %67, metadata !1062, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i32* @optind, metadata !1068, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i32* undef, metadata !1069, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i8*** undef, metadata !1070, metadata !DIExpression()) #29, !dbg !1075
  %68 = tail call i16** @__ctype_b_loc() #32, !dbg !1075
  %69 = load i16*, i16** %68, align 8, !tbaa !704
  br label %70, !dbg !1077

70:                                               ; preds = %70, %66
  %71 = phi i8* [ %67, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %71, metadata !1062, metadata !DIExpression()) #29, !dbg !1075
  %72 = load i8, i8* %71, align 1, !dbg !1078, !tbaa !1079
  %73 = sext i8 %72 to i64, !dbg !1078
  %74 = getelementptr inbounds i16, i16* %69, i64 %73, !dbg !1078
  %75 = load i16, i16* %74, align 2, !dbg !1078, !tbaa !1080
  %76 = and i16 %75, 8192, !dbg !1078
  %77 = icmp eq i16 %76, 0, !dbg !1077
  %78 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1082
  call void @llvm.dbg.value(metadata i8* %78, metadata !1062, metadata !DIExpression()) #29, !dbg !1075
  br i1 %77, label %79, label %70, !dbg !1077, !llvm.loop !1083

79:                                               ; preds = %70
  %80 = icmp eq i8 %72, 0, !dbg !1084
  br i1 %80, label %539, label %81, !dbg !1086

81:                                               ; preds = %79
  %82 = load i32, i32* @optind, align 4, !dbg !1087, !tbaa !979
  call void @llvm.dbg.value(metadata i8* %71, metadata !1088, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i32 undef, metadata !1093, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, metadata !1094, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, metadata !1095, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i32 0, metadata !1100, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i64 0, metadata !1101, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i64* undef, metadata !1111, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i32* undef, metadata !1117, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i64 undef, metadata !1122, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %71, metadata !1116, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i32 1, metadata !1123, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i8 undef, metadata !1120, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i8 0, metadata !1119, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i8 0, metadata !1118, metadata !DIExpression()) #29, !dbg !1126
  %83 = tail call i64 @strlen(i8* nonnull %71) #30, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %83, metadata !1122, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #29, !dbg !1126
  %84 = add i64 %83, 1, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %84, metadata !1122, metadata !DIExpression()) #29, !dbg !1126
  br label %85, !dbg !1130

85:                                               ; preds = %160, %81
  %86 = phi i16 [ %164, %160 ], [ %75, %81 ], !dbg !1131
  %87 = phi i8 [ %158, %160 ], [ %72, %81 ]
  %88 = phi i8* [ %157, %160 ], [ %71, %81 ]
  %89 = phi i32 [ %155, %160 ], [ 1, %81 ]
  %90 = phi i64 [ %154, %160 ], [ %84, %81 ]
  %91 = phi i32 [ %102, %160 ], [ 0, %81 ]
  %92 = phi i8 [ %153, %160 ], [ 0, %81 ]
  %93 = phi i8 [ %152, %160 ], [ 0, %81 ]
  call void @llvm.dbg.value(metadata i8* %88, metadata !1116, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %89, metadata !1123, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %90, metadata !1122, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i8 %92, metadata !1119, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i8 %93, metadata !1118, metadata !DIExpression()) #29, !dbg !1126
  %94 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1133
  %95 = load i8, i8* %94, align 1, !dbg !1134, !tbaa !1079
  call void @llvm.dbg.value(metadata i8 %95, metadata !1124, metadata !DIExpression()) #29, !dbg !1135
  %96 = and i16 %86, 8192, !dbg !1131
  %97 = icmp ne i16 %96, 0, !dbg !1131
  %98 = or i8 %93, %92, !dbg !1136
  %99 = and i8 %98, 1, !dbg !1136
  %100 = icmp eq i8 %99, 0, !dbg !1136
  %101 = and i1 %97, %100, !dbg !1136
  %102 = zext i1 %101 to i32, !dbg !1136
  %103 = select i1 %101, i32 0, i32 %91, !dbg !1136
  %104 = add nsw i32 %103, %89, !dbg !1136
  call void @llvm.dbg.value(metadata i32 %104, metadata !1123, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i8 undef, metadata !1120, metadata !DIExpression()) #29, !dbg !1126
  %105 = sext i8 %87 to i32, !dbg !1137
  switch i32 %105, label %151 [
    i32 39, label %106
    i32 34, label %113
    i32 92, label %120
    i32 36, label %137
  ], !dbg !1138

106:                                              ; preds = %85
  %107 = and i8 %92, 1, !dbg !1139
  %108 = and i8 %107, %93, !dbg !1139
  %109 = icmp eq i8 %108, 0, !dbg !1139
  br i1 %109, label %111, label %110, !dbg !1139

110:                                              ; preds = %106
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i32 303, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.validate_split_str, i64 0, i64 0)) #31, !dbg !1139
  unreachable, !dbg !1139

111:                                              ; preds = %106
  %112 = xor i8 %99, 1, !dbg !1143
  call void @llvm.dbg.value(metadata i8 %112, metadata !1119, metadata !DIExpression()) #29, !dbg !1126
  br label %151, !dbg !1144

113:                                              ; preds = %85
  %114 = and i8 %92, 1, !dbg !1145
  %115 = and i8 %114, %93, !dbg !1145
  %116 = icmp eq i8 %115, 0, !dbg !1145
  br i1 %116, label %118, label %117, !dbg !1145

117:                                              ; preds = %113
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i32 308, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.validate_split_str, i64 0, i64 0)) #31, !dbg !1145
  unreachable, !dbg !1145

118:                                              ; preds = %113
  %119 = xor i8 %99, 1, !dbg !1148
  call void @llvm.dbg.value(metadata i8 %119, metadata !1118, metadata !DIExpression()) #29, !dbg !1126
  br label %151, !dbg !1149

120:                                              ; preds = %85
  %121 = and i8 %93, 1
  %122 = icmp ne i8 %121, 0, !dbg !1150
  %123 = icmp eq i8 %95, 99
  %124 = and i1 %122, %123, !dbg !1152
  br i1 %124, label %125, label %127, !dbg !1152

125:                                              ; preds = %120
  %126 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.77, i64 0, i64 0), i32 5) #29, !dbg !1153
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %126) #29, !dbg !1153
  unreachable, !dbg !1153

127:                                              ; preds = %120
  switch i8 %95, label %130 [
    i8 0, label %128
    i8 99, label %133
    i8 102, label %133
    i8 110, label %133
    i8 114, label %133
    i8 116, label %133
    i8 118, label %133
    i8 35, label %133
    i8 36, label %133
    i8 95, label %133
    i8 34, label %133
    i8 39, label %133
    i8 92, label %133
  ], !dbg !1154

128:                                              ; preds = %127
  %129 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.78, i64 0, i64 0), i32 5) #29, !dbg !1155
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %129) #29, !dbg !1155
  unreachable, !dbg !1155

130:                                              ; preds = %127
  %131 = sext i8 %95 to i32, !dbg !1157
  %132 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.79, i64 0, i64 0), i32 5) #29, !dbg !1158
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %132, i32 %131) #29, !dbg !1158
  unreachable, !dbg !1158

133:                                              ; preds = %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127
  %134 = icmp eq i8 %95, 95, !dbg !1160
  %135 = zext i1 %134 to i32, !dbg !1162
  %136 = add nsw i32 %104, %135, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %136, metadata !1123, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %94, metadata !1116, metadata !DIExpression()) #29, !dbg !1126
  br label %151, !dbg !1163

137:                                              ; preds = %85
  %138 = and i8 %92, 1
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %151, !dbg !1164

140:                                              ; preds = %137
  %141 = tail call fastcc i8* @extract_varname(i8* nonnull %88) #29, !dbg !1165
  call void @llvm.dbg.value(metadata i8* %141, metadata !1121, metadata !DIExpression()) #29, !dbg !1126
  %142 = icmp eq i8* %141, null, !dbg !1167
  br i1 %142, label %143, label %145, !dbg !1168

143:                                              ; preds = %140
  %144 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.80, i64 0, i64 0), i32 5) #29, !dbg !1169
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %144, i8* nonnull %88) #29, !dbg !1169
  unreachable, !dbg !1169

145:                                              ; preds = %140
  %146 = tail call i8* @getenv(i8* nonnull %141) #29, !dbg !1170
  call void @llvm.dbg.value(metadata i8* %146, metadata !1121, metadata !DIExpression()) #29, !dbg !1126
  %147 = icmp eq i8* %146, null, !dbg !1172
  br i1 %147, label %151, label %148, !dbg !1173

148:                                              ; preds = %145
  %149 = tail call i64 @strlen(i8* nonnull %146) #30, !dbg !1174
  %150 = add i64 %149, %90, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %150, metadata !1122, metadata !DIExpression()) #29, !dbg !1126
  br label %151, !dbg !1176

151:                                              ; preds = %148, %145, %137, %133, %118, %111, %85
  %152 = phi i8 [ %93, %85 ], [ %93, %137 ], [ %93, %148 ], [ %93, %145 ], [ %93, %133 ], [ %119, %118 ], [ %93, %111 ], !dbg !1126
  %153 = phi i8 [ %92, %85 ], [ %92, %137 ], [ %92, %148 ], [ %92, %145 ], [ %92, %133 ], [ %92, %118 ], [ %112, %111 ], !dbg !1126
  %154 = phi i64 [ %90, %85 ], [ %90, %137 ], [ %150, %148 ], [ %90, %145 ], [ %90, %133 ], [ %90, %118 ], [ %90, %111 ], !dbg !1126
  %155 = phi i32 [ %104, %85 ], [ %104, %137 ], [ %104, %148 ], [ %104, %145 ], [ %136, %133 ], [ %104, %118 ], [ %104, %111 ], !dbg !1135
  %156 = phi i8* [ %88, %85 ], [ %88, %137 ], [ %88, %148 ], [ %88, %145 ], [ %94, %133 ], [ %88, %118 ], [ %88, %111 ]
  call void @llvm.dbg.value(metadata i8* %156, metadata !1116, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %155, metadata !1123, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %154, metadata !1122, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i8 %153, metadata !1119, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i8 %152, metadata !1118, metadata !DIExpression()) #29, !dbg !1126
  %157 = getelementptr inbounds i8, i8* %156, i64 1, !dbg !1177
  call void @llvm.dbg.value(metadata i8* %157, metadata !1116, metadata !DIExpression()) #29, !dbg !1126
  call void @llvm.dbg.value(metadata i8 undef, metadata !1120, metadata !DIExpression()) #29, !dbg !1126
  %158 = load i8, i8* %157, align 1, !dbg !1178, !tbaa !1079
  %159 = icmp eq i8 %158, 0, !dbg !1130
  br i1 %159, label %165, label %160, !dbg !1130, !llvm.loop !1179

160:                                              ; preds = %151
  %161 = load i16*, i16** %68, align 8, !dbg !1131, !tbaa !704
  %162 = sext i8 %158 to i64
  %163 = getelementptr inbounds i16, i16* %161, i64 %162
  %164 = load i16, i16* %163, align 2, !dbg !1131, !tbaa !1080
  br label %85, !dbg !1130

165:                                              ; preds = %151
  %166 = or i8 %153, %152, !dbg !1181
  %167 = and i8 %166, 1, !dbg !1181
  %168 = icmp eq i8 %167, 0, !dbg !1181
  br i1 %168, label %171, label %169, !dbg !1181

169:                                              ; preds = %165
  %170 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.81, i64 0, i64 0), i32 5) #29, !dbg !1183
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %170) #29, !dbg !1183
  unreachable, !dbg !1183

171:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i64 %154, metadata !1101, metadata !DIExpression()) #29, !dbg !1109
  %172 = add i64 %154, 7, !dbg !1184
  %173 = tail call noalias i8* @xmalloc(i64 %172) #29, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %173, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %155, metadata !1100, metadata !DIExpression()) #29, !dbg !1109
  %174 = add i32 %15, 2, !dbg !1186
  %175 = sub i32 %174, %82, !dbg !1187
  %176 = add i32 %175, %155, !dbg !1188
  %177 = sext i32 %176 to i64, !dbg !1189
  %178 = shl nsw i64 %177, 3, !dbg !1190
  %179 = tail call noalias i8* @xmalloc(i64 %178) #29, !dbg !1191
  %180 = bitcast i8* %179 to i8**, !dbg !1191
  call void @llvm.dbg.value(metadata i8** %180, metadata !1098, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8** %180, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %173, metadata !1192, metadata !DIExpression()) #29, !dbg !1201
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), metadata !1200, metadata !DIExpression()) #29, !dbg !1201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %173, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i64 6, i1 false) #29, !dbg !1203
  %181 = getelementptr inbounds i8, i8* %179, i64 8, !dbg !1204
  %182 = bitcast i8* %181 to i8**, !dbg !1204
  call void @llvm.dbg.value(metadata i8** %182, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  store i8* %173, i8** %180, align 8, !dbg !1205, !tbaa !704
  %183 = getelementptr inbounds i8, i8* %173, i64 6, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %183, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %71, metadata !1088, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, metadata !1094, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, metadata !1095, metadata !DIExpression()) #29, !dbg !1109
  %184 = load i8, i8* %71, align 1, !dbg !1207, !tbaa !1079
  %185 = icmp eq i8 %184, 0, !dbg !1208
  br i1 %185, label %320, label %186, !dbg !1208

186:                                              ; preds = %171, %311
  %187 = phi i8 [ %318, %311 ], [ %184, %171 ]
  %188 = phi i8* [ %317, %311 ], [ %71, %171 ]
  %189 = phi i8** [ %316, %311 ], [ %182, %171 ]
  %190 = phi i8 [ %315, %311 ], [ 0, %171 ]
  %191 = phi i8* [ %314, %311 ], [ %183, %171 ]
  %192 = phi i8 [ %313, %311 ], [ 1, %171 ]
  %193 = phi i8 [ %312, %311 ], [ 0, %171 ]
  call void @llvm.dbg.value(metadata i8* %188, metadata !1088, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8** %189, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %190, metadata !1094, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %191, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %192, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %193, metadata !1095, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %187, metadata !1102, metadata !DIExpression()) #29, !dbg !1209
  %194 = sext i8 %187 to i32, !dbg !1210
  switch i32 %194, label %297 [
    i32 39, label %195
    i32 34, label %211
    i32 32, label %227
    i32 9, label %227
    i32 35, label %234
    i32 92, label %237
    i32 36, label %262
  ], !dbg !1211

195:                                              ; preds = %186
  %196 = and i8 %190, 1, !dbg !1212
  %197 = icmp eq i8 %196, 0, !dbg !1212
  br i1 %197, label %198, label %297, !dbg !1214

198:                                              ; preds = %195
  %199 = and i8 %193, 1, !dbg !1215
  %200 = xor i8 %199, 1, !dbg !1216
  call void @llvm.dbg.value(metadata i8 %200, metadata !1095, metadata !DIExpression()) #29, !dbg !1109
  %201 = and i8 %192, 1, !dbg !1217
  %202 = icmp eq i8 %201, 0, !dbg !1217
  br i1 %202, label %206, label %203, !dbg !1220

203:                                              ; preds = %198
  %204 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1221
  call void @llvm.dbg.value(metadata i8* %204, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  store i8 0, i8* %191, align 1, !dbg !1221, !tbaa !1079
  %205 = getelementptr inbounds i8*, i8** %189, i64 1, !dbg !1221
  call void @llvm.dbg.value(metadata i8** %205, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  store i8* %204, i8** %189, align 8, !dbg !1221, !tbaa !704
  call void @llvm.dbg.value(metadata i8 0, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  br label %206, !dbg !1221

206:                                              ; preds = %203, %198
  %207 = phi i8 [ 0, %203 ], [ %192, %198 ], !dbg !1109
  %208 = phi i8* [ %204, %203 ], [ %191, %198 ], !dbg !1109
  %209 = phi i8** [ %205, %203 ], [ %189, %198 ], !dbg !1109
  call void @llvm.dbg.value(metadata i8** %209, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %208, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %207, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  %210 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !1223
  call void @llvm.dbg.value(metadata i8* %210, metadata !1088, metadata !DIExpression()) #29, !dbg !1109
  br label %311, !dbg !1224, !llvm.loop !1225

211:                                              ; preds = %186
  %212 = and i8 %193, 1, !dbg !1227
  %213 = icmp eq i8 %212, 0, !dbg !1227
  br i1 %213, label %214, label %297, !dbg !1229

214:                                              ; preds = %211
  %215 = and i8 %190, 1, !dbg !1230
  %216 = xor i8 %215, 1, !dbg !1231
  call void @llvm.dbg.value(metadata i8 %216, metadata !1094, metadata !DIExpression()) #29, !dbg !1109
  %217 = and i8 %192, 1, !dbg !1232
  %218 = icmp eq i8 %217, 0, !dbg !1232
  br i1 %218, label %222, label %219, !dbg !1235

219:                                              ; preds = %214
  %220 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1236
  call void @llvm.dbg.value(metadata i8* %220, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  store i8 0, i8* %191, align 1, !dbg !1236, !tbaa !1079
  %221 = getelementptr inbounds i8*, i8** %189, i64 1, !dbg !1236
  call void @llvm.dbg.value(metadata i8** %221, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  store i8* %220, i8** %189, align 8, !dbg !1236, !tbaa !704
  call void @llvm.dbg.value(metadata i8 0, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  br label %222, !dbg !1236

222:                                              ; preds = %219, %214
  %223 = phi i8 [ 0, %219 ], [ %192, %214 ], !dbg !1109
  %224 = phi i8* [ %220, %219 ], [ %191, %214 ], !dbg !1109
  %225 = phi i8** [ %221, %219 ], [ %189, %214 ], !dbg !1109
  call void @llvm.dbg.value(metadata i8** %225, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %224, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %223, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  %226 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %226, metadata !1088, metadata !DIExpression()) #29, !dbg !1109
  br label %311, !dbg !1239, !llvm.loop !1240

227:                                              ; preds = %186, %186
  %228 = or i8 %193, %190, !dbg !1241
  %229 = and i8 %228, 1, !dbg !1241
  %230 = icmp eq i8 %229, 0, !dbg !1241
  br i1 %230, label %231, label %297, !dbg !1241

231:                                              ; preds = %227
  call void @llvm.dbg.value(metadata i8 1, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  %232 = tail call i64 @strspn(i8* nonnull %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0)) #30, !dbg !1243
  %233 = getelementptr inbounds i8, i8* %188, i64 %232, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %233, metadata !1088, metadata !DIExpression()) #29, !dbg !1109
  br label %311, !dbg !1245, !llvm.loop !1246

234:                                              ; preds = %186
  %235 = and i8 %192, 1, !dbg !1247
  %236 = icmp eq i8 %235, 0, !dbg !1247
  br i1 %236, label %297, label %320, !dbg !1249

237:                                              ; preds = %186
  %238 = and i8 %193, 1, !dbg !1250
  %239 = icmp eq i8 %238, 0, !dbg !1250
  %240 = getelementptr inbounds i8, i8* %188, i64 1
  %241 = load i8, i8* %240, align 1, !dbg !1252, !tbaa !1079
  br i1 %239, label %243, label %242, !dbg !1253

242:                                              ; preds = %237
  switch i8 %241, label %297 [
    i8 92, label %243
    i8 39, label %243
  ], !dbg !1254

243:                                              ; preds = %237, %242, %242
  %244 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !1255
  call void @llvm.dbg.value(metadata i8* %244, metadata !1088, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %241, metadata !1102, metadata !DIExpression()) #29, !dbg !1209
  switch i8 %241, label %245 [
    i8 92, label %297
    i8 39, label %297
  ], !dbg !1256

245:                                              ; preds = %243
  br i1 %239, label %246, label %247, !dbg !1258

246:                                              ; preds = %245
  switch i8 %241, label %253 [
    i8 35, label %297
    i8 36, label %297
    i8 34, label %297
    i8 95, label %248
    i8 99, label %320
  ], !dbg !1259

247:                                              ; preds = %245
  switch i8 %241, label %253 [
    i8 95, label %248
    i8 99, label %320
  ], !dbg !1260

248:                                              ; preds = %247, %246
  %249 = and i8 %190, 1, !dbg !1261
  %250 = icmp eq i8 %249, 0, !dbg !1261
  br i1 %250, label %251, label %297, !dbg !1265

251:                                              ; preds = %248
  %252 = getelementptr inbounds i8, i8* %188, i64 2, !dbg !1266
  call void @llvm.dbg.value(metadata i8* %252, metadata !1088, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  br label %311, !dbg !1268, !llvm.loop !1269

253:                                              ; preds = %247, %246
  call void @llvm.dbg.value(metadata i8 %241, metadata !1270, metadata !DIExpression()) #29, !dbg !1275
  %254 = sext i8 %241 to i32, !dbg !1278
  %255 = add nsw i32 %254, -102, !dbg !1279
  %256 = tail call i32 @llvm.fshl.i32(i32 %255, i32 %255, i32 31) #29, !dbg !1279
  switch i32 %256, label %261 [
    i32 0, label %297
    i32 4, label %257
    i32 6, label %258
    i32 7, label %259
    i32 8, label %260
  ], !dbg !1279

257:                                              ; preds = %253
  br label %297, !dbg !1280

258:                                              ; preds = %253
  br label %297, !dbg !1282

259:                                              ; preds = %253
  br label %297, !dbg !1283

260:                                              ; preds = %253
  br label %297, !dbg !1284

261:                                              ; preds = %253
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i32 210, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.escape_char, i64 0, i64 0)) #31, !dbg !1285
  unreachable, !dbg !1285

262:                                              ; preds = %186
  %263 = and i8 %193, 1, !dbg !1288
  %264 = icmp eq i8 %263, 0, !dbg !1288
  br i1 %264, label %265, label %297, !dbg !1290

265:                                              ; preds = %262
  %266 = tail call fastcc i8* @extract_varname(i8* nonnull %188) #29, !dbg !1291
  call void @llvm.dbg.value(metadata i8* %266, metadata !1104, metadata !DIExpression()) #29, !dbg !1292
  %267 = tail call i8* @getenv(i8* %266) #29, !dbg !1293
  call void @llvm.dbg.value(metadata i8* %267, metadata !1107, metadata !DIExpression()) #29, !dbg !1292
  %268 = icmp eq i8* %267, null, !dbg !1294
  br i1 %268, label %286, label %269, !dbg !1296

269:                                              ; preds = %265
  %270 = and i8 %192, 1, !dbg !1297
  %271 = icmp eq i8 %270, 0, !dbg !1297
  br i1 %271, label %275, label %272, !dbg !1301

272:                                              ; preds = %269
  %273 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1302
  call void @llvm.dbg.value(metadata i8* %273, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  store i8 0, i8* %191, align 1, !dbg !1302, !tbaa !1079
  %274 = getelementptr inbounds i8*, i8** %189, i64 1, !dbg !1302
  call void @llvm.dbg.value(metadata i8** %274, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  store i8* %273, i8** %189, align 8, !dbg !1302, !tbaa !704
  call void @llvm.dbg.value(metadata i8 0, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  br label %275, !dbg !1302

275:                                              ; preds = %272, %269
  %276 = phi i8 [ 0, %272 ], [ %192, %269 ], !dbg !1109
  %277 = phi i8* [ %273, %272 ], [ %191, %269 ], !dbg !1109
  %278 = phi i8** [ %274, %272 ], [ %189, %269 ], !dbg !1109
  call void @llvm.dbg.value(metadata i8** %278, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %277, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %276, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  %279 = load i1, i1* @dev_debug, align 1, !dbg !1304
  br i1 %279, label %280, label %284, !dbg !1307

280:                                              ; preds = %275
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1304, !tbaa !704
  %282 = tail call i8* @quote(i8* nonnull %267) #29, !dbg !1304
  %283 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %281, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.74, i64 0, i64 0), i8* %266, i8* %282) #29, !dbg !1304
  br label %284, !dbg !1304

284:                                              ; preds = %280, %275
  call void @llvm.dbg.value(metadata i8* %277, metadata !1308, metadata !DIExpression()) #29, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %267, metadata !1311, metadata !DIExpression()) #29, !dbg !1312
  %285 = call i8* @stpcpy(i8* %277, i8* nonnull %267), !dbg !1314
  call void @llvm.dbg.value(metadata i8* %285, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  br label %291, !dbg !1315

286:                                              ; preds = %265
  %287 = load i1, i1* @dev_debug, align 1, !dbg !1316
  br i1 %287, label %288, label %291, !dbg !1319

288:                                              ; preds = %286
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1316, !tbaa !704
  %290 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %289, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.75, i64 0, i64 0), i8* %266) #29, !dbg !1316
  br label %291, !dbg !1316

291:                                              ; preds = %288, %286, %284
  %292 = phi i8 [ %276, %284 ], [ %192, %288 ], [ %192, %286 ], !dbg !1109
  %293 = phi i8* [ %285, %284 ], [ %191, %288 ], [ %191, %286 ], !dbg !1109
  %294 = phi i8** [ %278, %284 ], [ %189, %288 ], [ %189, %286 ], !dbg !1109
  call void @llvm.dbg.value(metadata i8** %294, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %293, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %292, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  %295 = tail call i8* @strchr(i8* nonnull %188, i32 125) #30, !dbg !1320
  %296 = getelementptr inbounds i8, i8* %295, i64 1, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %296, metadata !1088, metadata !DIExpression()) #29, !dbg !1109
  br label %311

297:                                              ; preds = %262, %260, %259, %258, %257, %253, %248, %246, %246, %246, %243, %243, %242, %234, %227, %211, %195, %186
  %298 = phi i8 [ %187, %186 ], [ %187, %262 ], [ %241, %243 ], [ %241, %246 ], [ %187, %234 ], [ %187, %227 ], [ %187, %211 ], [ %187, %195 ], [ %187, %242 ], [ %241, %243 ], [ %241, %246 ], [ %241, %246 ], [ 32, %248 ], [ 11, %260 ], [ 9, %259 ], [ 13, %258 ], [ 10, %257 ], [ 12, %253 ], !dbg !1209
  %299 = phi i8* [ %188, %186 ], [ %188, %262 ], [ %244, %243 ], [ %244, %246 ], [ %188, %234 ], [ %188, %227 ], [ %188, %211 ], [ %188, %195 ], [ %188, %242 ], [ %244, %243 ], [ %244, %246 ], [ %244, %246 ], [ %244, %248 ], [ %244, %260 ], [ %244, %259 ], [ %244, %258 ], [ %244, %257 ], [ %244, %253 ]
  call void @llvm.dbg.value(metadata i8* %299, metadata !1088, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %298, metadata !1102, metadata !DIExpression()) #29, !dbg !1209
  %300 = and i8 %192, 1, !dbg !1322
  %301 = icmp eq i8 %300, 0, !dbg !1322
  br i1 %301, label %305, label %302, !dbg !1325

302:                                              ; preds = %297
  %303 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %303, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  store i8 0, i8* %191, align 1, !dbg !1326, !tbaa !1079
  %304 = getelementptr inbounds i8*, i8** %189, i64 1, !dbg !1326
  call void @llvm.dbg.value(metadata i8** %304, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  store i8* %303, i8** %189, align 8, !dbg !1326, !tbaa !704
  call void @llvm.dbg.value(metadata i8 0, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  br label %305, !dbg !1326

305:                                              ; preds = %302, %297
  %306 = phi i8 [ 0, %302 ], [ %192, %297 ], !dbg !1109
  %307 = phi i8* [ %303, %302 ], [ %191, %297 ], !dbg !1109
  %308 = phi i8** [ %304, %302 ], [ %189, %297 ], !dbg !1109
  call void @llvm.dbg.value(metadata i8** %308, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %307, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %306, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  %309 = getelementptr inbounds i8, i8* %307, i64 1, !dbg !1328
  call void @llvm.dbg.value(metadata i8* %309, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  store i8 %298, i8* %307, align 1, !dbg !1329, !tbaa !1079
  %310 = getelementptr inbounds i8, i8* %299, i64 1, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %310, metadata !1088, metadata !DIExpression()) #29, !dbg !1109
  br label %311, !dbg !1226

311:                                              ; preds = %305, %291, %251, %231, %222, %206
  %312 = phi i8 [ %193, %305 ], [ %193, %291 ], [ %193, %251 ], [ %193, %231 ], [ %193, %222 ], [ %200, %206 ], !dbg !1109
  %313 = phi i8 [ %306, %305 ], [ %292, %291 ], [ 1, %251 ], [ 1, %231 ], [ %223, %222 ], [ %207, %206 ], !dbg !1109
  %314 = phi i8* [ %309, %305 ], [ %293, %291 ], [ %191, %251 ], [ %191, %231 ], [ %224, %222 ], [ %208, %206 ], !dbg !1109
  %315 = phi i8 [ %190, %305 ], [ %190, %291 ], [ %190, %251 ], [ %190, %231 ], [ %216, %222 ], [ %190, %206 ], !dbg !1109
  %316 = phi i8** [ %308, %305 ], [ %294, %291 ], [ %189, %251 ], [ %189, %231 ], [ %225, %222 ], [ %209, %206 ], !dbg !1109
  %317 = phi i8* [ %310, %305 ], [ %296, %291 ], [ %252, %251 ], [ %233, %231 ], [ %226, %222 ], [ %210, %206 ]
  call void @llvm.dbg.value(metadata i8* %317, metadata !1088, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8** %316, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %315, metadata !1094, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %314, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %313, metadata !1096, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %312, metadata !1095, metadata !DIExpression()) #29, !dbg !1109
  %318 = load i8, i8* %317, align 1, !dbg !1207, !tbaa !1079
  %319 = icmp eq i8 %318, 0, !dbg !1208
  br i1 %319, label %320, label %186, !dbg !1208

320:                                              ; preds = %311, %247, %246, %234, %171
  %321 = phi i8* [ %183, %171 ], [ %191, %247 ], [ %191, %246 ], [ %191, %234 ], [ %314, %311 ], !dbg !1109
  %322 = phi i8** [ %182, %171 ], [ %189, %247 ], [ %189, %246 ], [ %189, %234 ], [ %316, %311 ], !dbg !1109
  call void @llvm.dbg.value(metadata i8** %322, metadata !1099, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %321, metadata !1097, metadata !DIExpression()) #29, !dbg !1109
  call void @llvm.dbg.label(metadata !1108) #29, !dbg !1331
  store i8 0, i8* %321, align 1, !dbg !1332, !tbaa !1079
  store i8* null, i8** %322, align 8, !dbg !1333, !tbaa !704
  call void @llvm.dbg.value(metadata i8** %180, metadata !1073, metadata !DIExpression()) #29, !dbg !1075
  %323 = load i8*, i8** %16, align 8, !dbg !1334, !tbaa !704
  store i8* %323, i8** %180, align 8, !dbg !1335, !tbaa !704
  call void @llvm.dbg.value(metadata i8** %182, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  %324 = load i1, i1* @dev_debug, align 1, !dbg !1336
  br i1 %324, label %326, label %325, !dbg !1338

325:                                              ; preds = %326, %320
  br label %359, !dbg !1339

326:                                              ; preds = %320
  %327 = load i8*, i8** %182, align 8, !dbg !1341, !tbaa !704
  %328 = icmp eq i8* %327, null, !dbg !1341
  br i1 %328, label %325, label %329, !dbg !1342

329:                                              ; preds = %326
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1343, !tbaa !704
  %331 = tail call i8* @quote(i8* nonnull %71) #29, !dbg !1343
  %332 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %330, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8* %331) #29, !dbg !1343
  %333 = load i1, i1* @dev_debug, align 1, !dbg !1347
  br i1 %333, label %334, label %341, !dbg !1350

334:                                              ; preds = %329
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1347, !tbaa !704
  %336 = getelementptr inbounds i8, i8* %179, i64 16, !dbg !1347
  %337 = bitcast i8* %336 to i8**, !dbg !1347
  call void @llvm.dbg.value(metadata i8** %337, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  %338 = load i8*, i8** %182, align 8, !dbg !1347, !tbaa !704
  %339 = tail call i8* @quote(i8* %338) #29, !dbg !1347
  %340 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %335, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i64 0, i64 0), i8* %339) #29, !dbg !1347
  br label %341, !dbg !1347

341:                                              ; preds = %334, %329
  %342 = phi i8** [ %337, %334 ], [ %182, %329 ], !dbg !1075
  call void @llvm.dbg.value(metadata i8** %342, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  %343 = load i8*, i8** %342, align 8, !dbg !1351, !tbaa !704
  %344 = icmp eq i8* %343, null, !dbg !1352
  br i1 %344, label %364, label %345, !dbg !1352

345:                                              ; preds = %341, %355
  %346 = phi i8* [ %356, %355 ], [ %343, %341 ]
  %347 = phi i8** [ %357, %355 ], [ %342, %341 ]
  call void @llvm.dbg.value(metadata i8** %347, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  %348 = load i1, i1* @dev_debug, align 1, !dbg !1353
  br i1 %348, label %349, label %355, !dbg !1356

349:                                              ; preds = %345
  %350 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1353, !tbaa !704
  %351 = getelementptr inbounds i8*, i8** %347, i64 1, !dbg !1353
  call void @llvm.dbg.value(metadata i8** %351, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  %352 = tail call i8* @quote(i8* nonnull %346) #29, !dbg !1353
  %353 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %350, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i64 0, i64 0), i8* %352) #29, !dbg !1353
  %354 = load i8*, i8** %351, align 8, !dbg !1351, !tbaa !704
  br label %355, !dbg !1353

355:                                              ; preds = %349, %345
  %356 = phi i8* [ %354, %349 ], [ %346, %345 ], !dbg !1351
  %357 = phi i8** [ %351, %349 ], [ %347, %345 ], !dbg !1357
  call void @llvm.dbg.value(metadata i8** %357, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  %358 = icmp eq i8* %356, null, !dbg !1352
  br i1 %358, label %364, label %345, !dbg !1352, !llvm.loop !1358

359:                                              ; preds = %325, %359
  %360 = phi i8** [ %363, %359 ], [ %182, %325 ], !dbg !1075
  call void @llvm.dbg.value(metadata i8** %360, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  %361 = load i8*, i8** %360, align 8, !dbg !1360, !tbaa !704
  %362 = icmp eq i8* %361, null, !dbg !1339
  %363 = getelementptr inbounds i8*, i8** %360, i64 1, !dbg !1361
  call void @llvm.dbg.value(metadata i8** %363, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  br i1 %362, label %364, label %359, !dbg !1339, !llvm.loop !1362

364:                                              ; preds = %355, %359, %341
  %365 = phi i8** [ %342, %341 ], [ %360, %359 ], [ %357, %355 ], !dbg !1075
  call void @llvm.dbg.value(metadata i8** %365, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  %366 = load i32, i32* @optind, align 4, !dbg !1364, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %366, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  %367 = icmp slt i32 %366, %15, !dbg !1366
  br i1 %367, label %368, label %526, !dbg !1368

368:                                              ; preds = %364
  %369 = sext i32 %366 to i64, !dbg !1368
  %370 = sext i32 %15 to i64, !dbg !1368
  %371 = sub nsw i64 %370, %369, !dbg !1368
  %372 = icmp ult i64 %371, 4, !dbg !1368
  br i1 %372, label %467, label %373, !dbg !1368

373:                                              ; preds = %368
  %374 = sub nsw i64 %370, %369, !dbg !1368
  %375 = getelementptr i8*, i8** %365, i64 %374, !dbg !1368
  %376 = getelementptr i8*, i8** %16, i64 %369, !dbg !1368
  %377 = getelementptr i8*, i8** %16, i64 %370, !dbg !1368
  %378 = icmp ult i8** %365, %377, !dbg !1368
  %379 = icmp ult i8** %376, %375, !dbg !1368
  %380 = and i1 %378, %379, !dbg !1368
  br i1 %380, label %467, label %381, !dbg !1368

381:                                              ; preds = %373
  %382 = and i64 %371, -4, !dbg !1368
  %383 = add nsw i64 %382, %369, !dbg !1368
  %384 = getelementptr i8*, i8** %365, i64 %382, !dbg !1368
  %385 = add nsw i64 %382, -4, !dbg !1368
  %386 = lshr exact i64 %385, 2, !dbg !1368
  %387 = add nuw nsw i64 %386, 1, !dbg !1368
  %388 = and i64 %387, 3, !dbg !1368
  %389 = icmp ult i64 %385, 12, !dbg !1368
  br i1 %389, label %445, label %390, !dbg !1368

390:                                              ; preds = %381
  %391 = and i64 %387, 9223372036854775804, !dbg !1368
  br label %392, !dbg !1368

392:                                              ; preds = %392, %390
  %393 = phi i64 [ 0, %390 ], [ %442, %392 ]
  %394 = phi i64 [ %391, %390 ], [ %443, %392 ]
  %395 = add i64 %393, %369
  %396 = getelementptr i8*, i8** %365, i64 %393
  %397 = getelementptr inbounds i8*, i8** %16, i64 %395, !dbg !1369
  %398 = bitcast i8** %397 to <2 x i8*>*, !dbg !1369
  %399 = load <2 x i8*>, <2 x i8*>* %398, align 8, !dbg !1369, !tbaa !704, !alias.scope !1370
  %400 = getelementptr inbounds i8*, i8** %397, i64 2, !dbg !1369
  %401 = bitcast i8** %400 to <2 x i8*>*, !dbg !1369
  %402 = load <2 x i8*>, <2 x i8*>* %401, align 8, !dbg !1369, !tbaa !704, !alias.scope !1370
  %403 = bitcast i8** %396 to <2 x i8*>*, !dbg !1373
  store <2 x i8*> %399, <2 x i8*>* %403, align 8, !dbg !1373, !tbaa !704, !alias.scope !1374, !noalias !1370
  %404 = getelementptr i8*, i8** %396, i64 2, !dbg !1373
  %405 = bitcast i8** %404 to <2 x i8*>*, !dbg !1373
  store <2 x i8*> %402, <2 x i8*>* %405, align 8, !dbg !1373, !tbaa !704, !alias.scope !1374, !noalias !1370
  %406 = or i64 %393, 4
  %407 = add i64 %406, %369
  %408 = getelementptr i8*, i8** %365, i64 %406
  %409 = getelementptr inbounds i8*, i8** %16, i64 %407, !dbg !1369
  %410 = bitcast i8** %409 to <2 x i8*>*, !dbg !1369
  %411 = load <2 x i8*>, <2 x i8*>* %410, align 8, !dbg !1369, !tbaa !704, !alias.scope !1370
  %412 = getelementptr inbounds i8*, i8** %409, i64 2, !dbg !1369
  %413 = bitcast i8** %412 to <2 x i8*>*, !dbg !1369
  %414 = load <2 x i8*>, <2 x i8*>* %413, align 8, !dbg !1369, !tbaa !704, !alias.scope !1370
  %415 = bitcast i8** %408 to <2 x i8*>*, !dbg !1373
  store <2 x i8*> %411, <2 x i8*>* %415, align 8, !dbg !1373, !tbaa !704, !alias.scope !1374, !noalias !1370
  %416 = getelementptr i8*, i8** %408, i64 2, !dbg !1373
  %417 = bitcast i8** %416 to <2 x i8*>*, !dbg !1373
  store <2 x i8*> %414, <2 x i8*>* %417, align 8, !dbg !1373, !tbaa !704, !alias.scope !1374, !noalias !1370
  %418 = or i64 %393, 8
  %419 = add i64 %418, %369
  %420 = getelementptr i8*, i8** %365, i64 %418
  %421 = getelementptr inbounds i8*, i8** %16, i64 %419, !dbg !1369
  %422 = bitcast i8** %421 to <2 x i8*>*, !dbg !1369
  %423 = load <2 x i8*>, <2 x i8*>* %422, align 8, !dbg !1369, !tbaa !704, !alias.scope !1370
  %424 = getelementptr inbounds i8*, i8** %421, i64 2, !dbg !1369
  %425 = bitcast i8** %424 to <2 x i8*>*, !dbg !1369
  %426 = load <2 x i8*>, <2 x i8*>* %425, align 8, !dbg !1369, !tbaa !704, !alias.scope !1370
  %427 = bitcast i8** %420 to <2 x i8*>*, !dbg !1373
  store <2 x i8*> %423, <2 x i8*>* %427, align 8, !dbg !1373, !tbaa !704, !alias.scope !1374, !noalias !1370
  %428 = getelementptr i8*, i8** %420, i64 2, !dbg !1373
  %429 = bitcast i8** %428 to <2 x i8*>*, !dbg !1373
  store <2 x i8*> %426, <2 x i8*>* %429, align 8, !dbg !1373, !tbaa !704, !alias.scope !1374, !noalias !1370
  %430 = or i64 %393, 12
  %431 = add i64 %430, %369
  %432 = getelementptr i8*, i8** %365, i64 %430
  %433 = getelementptr inbounds i8*, i8** %16, i64 %431, !dbg !1369
  %434 = bitcast i8** %433 to <2 x i8*>*, !dbg !1369
  %435 = load <2 x i8*>, <2 x i8*>* %434, align 8, !dbg !1369, !tbaa !704, !alias.scope !1370
  %436 = getelementptr inbounds i8*, i8** %433, i64 2, !dbg !1369
  %437 = bitcast i8** %436 to <2 x i8*>*, !dbg !1369
  %438 = load <2 x i8*>, <2 x i8*>* %437, align 8, !dbg !1369, !tbaa !704, !alias.scope !1370
  %439 = bitcast i8** %432 to <2 x i8*>*, !dbg !1373
  store <2 x i8*> %435, <2 x i8*>* %439, align 8, !dbg !1373, !tbaa !704, !alias.scope !1374, !noalias !1370
  %440 = getelementptr i8*, i8** %432, i64 2, !dbg !1373
  %441 = bitcast i8** %440 to <2 x i8*>*, !dbg !1373
  store <2 x i8*> %438, <2 x i8*>* %441, align 8, !dbg !1373, !tbaa !704, !alias.scope !1374, !noalias !1370
  %442 = add i64 %393, 16
  %443 = add i64 %394, -4
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %445, label %392, !llvm.loop !1376

445:                                              ; preds = %392, %381
  %446 = phi i64 [ 0, %381 ], [ %442, %392 ]
  %447 = icmp eq i64 %388, 0
  br i1 %447, label %465, label %448

448:                                              ; preds = %445, %448
  %449 = phi i64 [ %462, %448 ], [ %446, %445 ]
  %450 = phi i64 [ %463, %448 ], [ %388, %445 ]
  %451 = add i64 %449, %369
  %452 = getelementptr i8*, i8** %365, i64 %449
  %453 = getelementptr inbounds i8*, i8** %16, i64 %451, !dbg !1369
  %454 = bitcast i8** %453 to <2 x i8*>*, !dbg !1369
  %455 = load <2 x i8*>, <2 x i8*>* %454, align 8, !dbg !1369, !tbaa !704, !alias.scope !1370
  %456 = getelementptr inbounds i8*, i8** %453, i64 2, !dbg !1369
  %457 = bitcast i8** %456 to <2 x i8*>*, !dbg !1369
  %458 = load <2 x i8*>, <2 x i8*>* %457, align 8, !dbg !1369, !tbaa !704, !alias.scope !1370
  %459 = bitcast i8** %452 to <2 x i8*>*, !dbg !1373
  store <2 x i8*> %455, <2 x i8*>* %459, align 8, !dbg !1373, !tbaa !704, !alias.scope !1374, !noalias !1370
  %460 = getelementptr i8*, i8** %452, i64 2, !dbg !1373
  %461 = bitcast i8** %460 to <2 x i8*>*, !dbg !1373
  store <2 x i8*> %458, <2 x i8*>* %461, align 8, !dbg !1373, !tbaa !704, !alias.scope !1374, !noalias !1370
  %462 = add i64 %449, 4
  %463 = add i64 %450, -1
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %465, label %448, !llvm.loop !1379

465:                                              ; preds = %448, %445
  %466 = icmp eq i64 %371, %382, !dbg !1368
  br i1 %466, label %526, label %467, !dbg !1368

467:                                              ; preds = %373, %368, %465
  %468 = phi i64 [ %369, %373 ], [ %369, %368 ], [ %383, %465 ]
  %469 = phi i8** [ %365, %373 ], [ %365, %368 ], [ %384, %465 ]
  %470 = sub nsw i64 %370, %468, !dbg !1368
  %471 = xor i64 %468, -1, !dbg !1368
  %472 = add nsw i64 %471, %370, !dbg !1368
  %473 = and i64 %470, 7, !dbg !1368
  %474 = icmp eq i64 %473, 0, !dbg !1368
  br i1 %474, label %485, label %475, !dbg !1368

475:                                              ; preds = %467, %475
  %476 = phi i64 [ %482, %475 ], [ %468, %467 ]
  %477 = phi i8** [ %481, %475 ], [ %469, %467 ]
  %478 = phi i64 [ %483, %475 ], [ %473, %467 ]
  call void @llvm.dbg.value(metadata i8** %477, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %476, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  %479 = getelementptr inbounds i8*, i8** %16, i64 %476, !dbg !1369
  %480 = load i8*, i8** %479, align 8, !dbg !1369, !tbaa !704
  %481 = getelementptr inbounds i8*, i8** %477, i64 1, !dbg !1381
  call void @llvm.dbg.value(metadata i8** %481, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  store i8* %480, i8** %477, align 8, !dbg !1373, !tbaa !704
  %482 = add nsw i64 %476, 1, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %482, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  %483 = add i64 %478, -1, !dbg !1368
  %484 = icmp eq i64 %483, 0, !dbg !1368
  br i1 %484, label %485, label %475, !dbg !1368, !llvm.loop !1383

485:                                              ; preds = %475, %467
  %486 = phi i8** [ undef, %467 ], [ %481, %475 ]
  %487 = phi i64 [ %468, %467 ], [ %482, %475 ]
  %488 = phi i8** [ %469, %467 ], [ %481, %475 ]
  %489 = icmp ult i64 %472, 7, !dbg !1368
  br i1 %489, label %526, label %490, !dbg !1368

490:                                              ; preds = %485, %490
  %491 = phi i64 [ %524, %490 ], [ %487, %485 ]
  %492 = phi i8** [ %523, %490 ], [ %488, %485 ]
  call void @llvm.dbg.value(metadata i8** %492, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %491, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  %493 = getelementptr inbounds i8*, i8** %16, i64 %491, !dbg !1369
  %494 = load i8*, i8** %493, align 8, !dbg !1369, !tbaa !704
  %495 = getelementptr inbounds i8*, i8** %492, i64 1, !dbg !1381
  call void @llvm.dbg.value(metadata i8** %495, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  store i8* %494, i8** %492, align 8, !dbg !1373, !tbaa !704
  %496 = add nsw i64 %491, 1, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %496, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i8** %495, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %496, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  %497 = getelementptr inbounds i8*, i8** %16, i64 %496, !dbg !1369
  %498 = load i8*, i8** %497, align 8, !dbg !1369, !tbaa !704
  %499 = getelementptr inbounds i8*, i8** %492, i64 2, !dbg !1381
  call void @llvm.dbg.value(metadata i8** %499, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  store i8* %498, i8** %495, align 8, !dbg !1373, !tbaa !704
  %500 = add nsw i64 %491, 2, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %500, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i8** %499, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %500, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  %501 = getelementptr inbounds i8*, i8** %16, i64 %500, !dbg !1369
  %502 = load i8*, i8** %501, align 8, !dbg !1369, !tbaa !704
  %503 = getelementptr inbounds i8*, i8** %492, i64 3, !dbg !1381
  call void @llvm.dbg.value(metadata i8** %503, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  store i8* %502, i8** %499, align 8, !dbg !1373, !tbaa !704
  %504 = add nsw i64 %491, 3, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %504, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i8** %503, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %504, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  %505 = getelementptr inbounds i8*, i8** %16, i64 %504, !dbg !1369
  %506 = load i8*, i8** %505, align 8, !dbg !1369, !tbaa !704
  %507 = getelementptr inbounds i8*, i8** %492, i64 4, !dbg !1381
  call void @llvm.dbg.value(metadata i8** %507, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  store i8* %506, i8** %503, align 8, !dbg !1373, !tbaa !704
  %508 = add nsw i64 %491, 4, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %508, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i8** %507, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %508, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  %509 = getelementptr inbounds i8*, i8** %16, i64 %508, !dbg !1369
  %510 = load i8*, i8** %509, align 8, !dbg !1369, !tbaa !704
  %511 = getelementptr inbounds i8*, i8** %492, i64 5, !dbg !1381
  call void @llvm.dbg.value(metadata i8** %511, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  store i8* %510, i8** %507, align 8, !dbg !1373, !tbaa !704
  %512 = add nsw i64 %491, 5, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %512, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i8** %511, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %512, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  %513 = getelementptr inbounds i8*, i8** %16, i64 %512, !dbg !1369
  %514 = load i8*, i8** %513, align 8, !dbg !1369, !tbaa !704
  %515 = getelementptr inbounds i8*, i8** %492, i64 6, !dbg !1381
  call void @llvm.dbg.value(metadata i8** %515, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  store i8* %514, i8** %511, align 8, !dbg !1373, !tbaa !704
  %516 = add nsw i64 %491, 6, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %516, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i8** %515, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %516, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  %517 = getelementptr inbounds i8*, i8** %16, i64 %516, !dbg !1369
  %518 = load i8*, i8** %517, align 8, !dbg !1369, !tbaa !704
  %519 = getelementptr inbounds i8*, i8** %492, i64 7, !dbg !1381
  call void @llvm.dbg.value(metadata i8** %519, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  store i8* %518, i8** %515, align 8, !dbg !1373, !tbaa !704
  %520 = add nsw i64 %491, 7, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %520, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i8** %519, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %520, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  %521 = getelementptr inbounds i8*, i8** %16, i64 %520, !dbg !1369
  %522 = load i8*, i8** %521, align 8, !dbg !1369, !tbaa !704
  %523 = getelementptr inbounds i8*, i8** %492, i64 8, !dbg !1381
  call void @llvm.dbg.value(metadata i8** %523, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  store i8* %522, i8** %519, align 8, !dbg !1373, !tbaa !704
  %524 = add nsw i64 %491, 8, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %524, metadata !1071, metadata !DIExpression()) #29, !dbg !1075
  %525 = icmp eq i64 %524, %370, !dbg !1366
  br i1 %525, label %526, label %490, !dbg !1368, !llvm.loop !1384

526:                                              ; preds = %485, %490, %465, %364
  %527 = phi i8** [ %365, %364 ], [ %384, %465 ], [ %486, %485 ], [ %523, %490 ], !dbg !1075
  store i8* null, i8** %527, align 8, !dbg !1385, !tbaa !704
  call void @llvm.dbg.value(metadata i32 0, metadata !1072, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i8** %180, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  %528 = load i8*, i8** %180, align 8, !dbg !1386, !tbaa !704
  %529 = icmp eq i8* %528, null, !dbg !1389
  br i1 %529, label %537, label %530, !dbg !1389

530:                                              ; preds = %526, %530
  %531 = phi i8** [ %534, %530 ], [ %180, %526 ]
  %532 = phi i32 [ %533, %530 ], [ 0, %526 ]
  call void @llvm.dbg.value(metadata i8** %531, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %532, metadata !1072, metadata !DIExpression()) #29, !dbg !1075
  %533 = add nuw nsw i32 %532, 1, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %533, metadata !1072, metadata !DIExpression()) #29, !dbg !1075
  %534 = getelementptr inbounds i8*, i8** %531, i64 1, !dbg !1391
  call void @llvm.dbg.value(metadata i8** %534, metadata !1074, metadata !DIExpression()) #29, !dbg !1075
  %535 = load i8*, i8** %534, align 8, !dbg !1386, !tbaa !704
  %536 = icmp eq i8* %535, null, !dbg !1389
  br i1 %536, label %537, label %530, !dbg !1389, !llvm.loop !1392

537:                                              ; preds = %530, %526
  %538 = phi i32 [ 0, %526 ], [ %533, %530 ], !dbg !1075
  store i32 0, i32* @optind, align 4, !dbg !1394, !tbaa !979
  br label %539, !dbg !1395

539:                                              ; preds = %537, %79, %14, %64, %63, %61, %59, %56, %55, %54, %49
  %540 = phi i32 [ %15, %64 ], [ %15, %63 ], [ %15, %61 ], [ %15, %59 ], [ %15, %56 ], [ %15, %55 ], [ %15, %54 ], [ %15, %49 ], [ %15, %14 ], [ %15, %79 ], [ %538, %537 ]
  %541 = phi i8** [ %16, %64 ], [ %16, %63 ], [ %16, %61 ], [ %16, %59 ], [ %16, %56 ], [ %16, %55 ], [ %16, %54 ], [ %16, %49 ], [ %16, %14 ], [ %16, %79 ], [ %180, %537 ]
  %542 = phi i8* [ %65, %64 ], [ %17, %63 ], [ %17, %61 ], [ %17, %59 ], [ %17, %56 ], [ %17, %55 ], [ %17, %54 ], [ %17, %49 ], [ %17, %14 ], [ %17, %79 ], [ %17, %537 ]
  %543 = phi i8 [ %18, %64 ], [ %18, %63 ], [ %18, %61 ], [ %18, %59 ], [ %18, %56 ], [ 1, %55 ], [ %18, %54 ], [ %18, %49 ], [ %18, %14 ], [ %18, %79 ], [ %18, %537 ]
  %544 = phi i8 [ %19, %64 ], [ %19, %63 ], [ %19, %61 ], [ %19, %59 ], [ %19, %56 ], [ %19, %55 ], [ %19, %54 ], [ %19, %49 ], [ 1, %14 ], [ %19, %79 ], [ %19, %537 ]
  br label %14, !dbg !966, !llvm.loop !1396

545:                                              ; preds = %14, %14
  %546 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 5) #29, !dbg !1398
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %546, i32 %20) #29, !dbg !1399
  %547 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0), i32 5) #29, !dbg !1400
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %547) #29, !dbg !1401
  tail call void @usage(i32 125) #33, !dbg !1402
  unreachable, !dbg !1402

548:                                              ; preds = %14
  tail call void @usage(i32 0) #33, !dbg !1403
  unreachable, !dbg !1403

549:                                              ; preds = %14
  %550 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1404, !tbaa !704
  %551 = load i8*, i8** @Version, align 8, !dbg !1404, !tbaa !704
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %550, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %551, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* null) #29, !dbg !1404
  tail call void @exit(i32 0) #31, !dbg !1404
  unreachable, !dbg !1404

552:                                              ; preds = %14
  tail call void @usage(i32 125) #33, !dbg !1405
  unreachable, !dbg !1405

553:                                              ; preds = %14
  %554 = load i32, i32* @optind, align 4, !dbg !1406, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %15, metadata !84, metadata !DIExpression()), !dbg !966
  %555 = icmp slt i32 %554, %15, !dbg !1408
  br i1 %555, label %556, label %564, !dbg !1409

556:                                              ; preds = %553
  call void @llvm.dbg.value(metadata i8** %16, metadata !85, metadata !DIExpression()), !dbg !966
  %557 = sext i32 %554 to i64, !dbg !1410
  %558 = getelementptr inbounds i8*, i8** %16, i64 %557, !dbg !1410
  %559 = load i8*, i8** %558, align 8, !dbg !1410, !tbaa !704
  %560 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %559, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #30, !dbg !1410
  %561 = icmp eq i32 %560, 0, !dbg !1410
  br i1 %561, label %562, label %564, !dbg !1411

562:                                              ; preds = %556
  call void @llvm.dbg.value(metadata i8 1, metadata !87, metadata !DIExpression()), !dbg !966
  %563 = add nsw i32 %554, 1, !dbg !1412
  store i32 %563, i32* @optind, align 4, !dbg !1412, !tbaa !979
  call void @llvm.dbg.value(metadata i8 %19, metadata !87, metadata !DIExpression()), !dbg !966
  br label %566, !dbg !1414

564:                                              ; preds = %556, %553
  call void @llvm.dbg.value(metadata i8 %19, metadata !87, metadata !DIExpression()), !dbg !966
  %565 = icmp eq i8 %19, 0, !dbg !1415
  br i1 %565, label %572, label %566, !dbg !1414

566:                                              ; preds = %562, %564
  %567 = load i1, i1* @dev_debug, align 1, !dbg !1417
  br i1 %567, label %568, label %571, !dbg !1421

568:                                              ; preds = %566
  %569 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1417, !tbaa !704
  %570 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %569, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0)) #29, !dbg !1417
  br label %571, !dbg !1417

571:                                              ; preds = %568, %566
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @main.dummy_environ, i64 0, i64 0), i8*** @environ, align 8, !dbg !1422, !tbaa !704
  br label %602, !dbg !1423

572:                                              ; preds = %564
  call void @llvm.dbg.value(metadata i64 0, metadata !1424, metadata !DIExpression()) #29, !dbg !1428
  %573 = load i64, i64* @usvars_used, align 8, !dbg !1430, !tbaa !1007
  %574 = icmp eq i64 %573, 0, !dbg !1432
  br i1 %574, label %602, label %575, !dbg !1433

575:                                              ; preds = %572, %598
  %576 = phi i64 [ %599, %598 ], [ 0, %572 ]
  call void @llvm.dbg.value(metadata i64 %576, metadata !1424, metadata !DIExpression()) #29, !dbg !1428
  %577 = load i1, i1* @dev_debug, align 1, !dbg !1434
  br i1 %577, label %578, label %584, !dbg !1438

578:                                              ; preds = %575
  %579 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1434, !tbaa !704
  %580 = load i8**, i8*** @usvars, align 8, !dbg !1434, !tbaa !704
  %581 = getelementptr inbounds i8*, i8** %580, i64 %576, !dbg !1434
  %582 = load i8*, i8** %581, align 8, !dbg !1434, !tbaa !704
  %583 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %579, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i64 0, i64 0), i8* %582) #29, !dbg !1434
  br label %584, !dbg !1434

584:                                              ; preds = %578, %575
  %585 = load i8**, i8*** @usvars, align 8, !dbg !1439, !tbaa !704
  %586 = getelementptr inbounds i8*, i8** %585, i64 %576, !dbg !1439
  %587 = load i8*, i8** %586, align 8, !dbg !1439, !tbaa !704
  %588 = tail call i32 @unsetenv(i8* %587) #29, !dbg !1441
  %589 = icmp eq i32 %588, 0, !dbg !1441
  br i1 %589, label %598, label %590, !dbg !1442

590:                                              ; preds = %584
  %591 = tail call i32* @__errno_location() #32, !dbg !1443
  %592 = load i32, i32* %591, align 4, !dbg !1443, !tbaa !979
  %593 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i64 0, i64 0), i32 5) #29, !dbg !1443
  %594 = load i8**, i8*** @usvars, align 8, !dbg !1443, !tbaa !704
  %595 = getelementptr inbounds i8*, i8** %594, i64 %576, !dbg !1443
  %596 = load i8*, i8** %595, align 8, !dbg !1443, !tbaa !704
  %597 = tail call i8* @quote(i8* %596) #29, !dbg !1443
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 %592, i8* %593, i8* %597) #29, !dbg !1443
  unreachable, !dbg !1443

598:                                              ; preds = %584
  %599 = add nuw i64 %576, 1, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %599, metadata !1424, metadata !DIExpression()) #29, !dbg !1428
  %600 = load i64, i64* @usvars_used, align 8, !dbg !1430, !tbaa !1007
  %601 = icmp ult i64 %599, %600, !dbg !1432
  br i1 %601, label %575, label %602, !dbg !1433, !llvm.loop !1445

602:                                              ; preds = %598, %572, %571
  %603 = load i32, i32* @optind, align 4, !dbg !1447, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %15, metadata !84, metadata !DIExpression()), !dbg !966
  %604 = icmp slt i32 %603, %15, !dbg !1448
  br i1 %604, label %605, label %642, !dbg !1449

605:                                              ; preds = %602, %634
  %606 = phi i32 [ %636, %634 ], [ %603, %602 ]
  call void @llvm.dbg.value(metadata i8** %16, metadata !85, metadata !DIExpression()), !dbg !966
  %607 = sext i32 %606 to i64, !dbg !1450
  %608 = getelementptr inbounds i8*, i8** %16, i64 %607, !dbg !1450
  %609 = load i8*, i8** %608, align 8, !dbg !1450, !tbaa !704
  %610 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %609, i32 61) #30, !dbg !1451
  call void @llvm.dbg.value(metadata i8* %610, metadata !93, metadata !DIExpression()), !dbg !966
  %611 = icmp eq i8* %610, null, !dbg !1449
  br i1 %611, label %638, label %612, !dbg !1452

612:                                              ; preds = %605
  %613 = load i1, i1* @dev_debug, align 1, !dbg !1453
  br i1 %613, label %614, label %621, !dbg !1457

614:                                              ; preds = %612
  %615 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1453, !tbaa !704
  %616 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %615, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %609) #29, !dbg !1453
  %617 = load i32, i32* @optind, align 4, !dbg !1458, !tbaa !979
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i8*, i8** %16, i64 %618
  %620 = load i8*, i8** %619, align 8, !dbg !1460, !tbaa !704
  br label %621, !dbg !1453

621:                                              ; preds = %614, %612
  %622 = phi i8* [ %620, %614 ], [ %609, %612 ], !dbg !1460
  call void @llvm.dbg.value(metadata i8** %16, metadata !85, metadata !DIExpression()), !dbg !966
  %623 = tail call i32 @putenv(i8* %622) #29, !dbg !1461
  %624 = icmp eq i32 %623, 0, !dbg !1461
  br i1 %624, label %634, label %625, !dbg !1462

625:                                              ; preds = %621
  store i8 0, i8* %610, align 1, !dbg !1463, !tbaa !1079
  %626 = tail call i32* @__errno_location() #32, !dbg !1465
  %627 = load i32, i32* %626, align 4, !dbg !1465, !tbaa !979
  %628 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 5) #29, !dbg !1465
  call void @llvm.dbg.value(metadata i8** %16, metadata !85, metadata !DIExpression()), !dbg !966
  %629 = load i32, i32* @optind, align 4, !dbg !1465, !tbaa !979
  %630 = sext i32 %629 to i64, !dbg !1465
  %631 = getelementptr inbounds i8*, i8** %16, i64 %630, !dbg !1465
  %632 = load i8*, i8** %631, align 8, !dbg !1465, !tbaa !704
  %633 = tail call i8* @quote(i8* %632) #29, !dbg !1465
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 %627, i8* %628, i8* %633) #29, !dbg !1465
  unreachable, !dbg !1465

634:                                              ; preds = %621
  %635 = load i32, i32* @optind, align 4, !dbg !1466, !tbaa !979
  %636 = add nsw i32 %635, 1, !dbg !1466
  store i32 %636, i32* @optind, align 4, !dbg !1466, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %15, metadata !84, metadata !DIExpression()), !dbg !966
  %637 = icmp slt i32 %636, %15, !dbg !1448
  br i1 %637, label %605, label %642, !dbg !1449, !llvm.loop !1467

638:                                              ; preds = %605
  call void @llvm.dbg.value(metadata i32 %15, metadata !84, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i1 true, metadata !94, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !966
  %639 = icmp eq i8 %18, 0, !dbg !1469
  br i1 %639, label %660, label %640, !dbg !1471

640:                                              ; preds = %638
  %641 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i32 5) #29, !dbg !1472
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %641) #29, !dbg !1474
  tail call void @usage(i32 125) #33, !dbg !1475
  unreachable, !dbg !1475

642:                                              ; preds = %634, %602
  call void @llvm.dbg.value(metadata i32 %15, metadata !84, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i1 false, metadata !94, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !966
  %643 = icmp eq i8 %18, 0, !dbg !1469
  %644 = icmp eq i8* %17, null, !dbg !1476
  br i1 %644, label %647, label %645, !dbg !1478

645:                                              ; preds = %642
  %646 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i32 5) #29, !dbg !1479
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %646) #29, !dbg !1481
  tail call void @usage(i32 125) #33, !dbg !1482
  unreachable, !dbg !1482

647:                                              ; preds = %642
  %648 = load i8**, i8*** @environ, align 8, !dbg !1483, !tbaa !704
  call void @llvm.dbg.value(metadata i8** %648, metadata !95, metadata !DIExpression()), !dbg !1484
  %649 = load i8*, i8** %648, align 8, !dbg !1485, !tbaa !704
  %650 = icmp eq i8* %649, null, !dbg !1486
  br i1 %650, label %864, label %651, !dbg !1486

651:                                              ; preds = %647
  %652 = select i1 %643, i32 10, i32 0
  br label %653, !dbg !1486

653:                                              ; preds = %651, %653
  %654 = phi i8* [ %649, %651 ], [ %658, %653 ]
  %655 = phi i8** [ %648, %651 ], [ %656, %653 ]
  call void @llvm.dbg.value(metadata i8** %655, metadata !95, metadata !DIExpression()), !dbg !1484
  %656 = getelementptr inbounds i8*, i8** %655, i64 1, !dbg !1487
  call void @llvm.dbg.value(metadata i8** %656, metadata !95, metadata !DIExpression()), !dbg !1484
  %657 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* nonnull %654, i32 %652) #29, !dbg !1487
  %658 = load i8*, i8** %656, align 8, !dbg !1485, !tbaa !704
  %659 = icmp eq i8* %658, null, !dbg !1486
  br i1 %659, label %864, label %653, !dbg !1486, !llvm.loop !1488

660:                                              ; preds = %638
  %661 = icmp eq i8* %17, null, !dbg !1476
  call void @llvm.dbg.value(metadata i32 1, metadata !867, metadata !DIExpression()) #29, !dbg !1489
  %662 = bitcast %struct.sigaction* %4 to i8*
  %663 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 0, i32 0
  %664 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  br label %665, !dbg !1490

665:                                              ; preds = %710, %660
  %666 = phi i64 [ 1, %660 ], [ %711, %710 ]
  call void @llvm.dbg.value(metadata i64 %666, metadata !867, metadata !DIExpression()) #29, !dbg !1489
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %662) #29, !dbg !1491
  call void @llvm.dbg.declare(metadata %struct.sigaction* %4, metadata !868, metadata !DIExpression()) #29, !dbg !1492
  %667 = load i32*, i32** @signals, align 8, !dbg !1493, !tbaa !704
  %668 = getelementptr inbounds i32, i32* %667, i64 %666, !dbg !1493
  %669 = load i32, i32* %668, align 4, !dbg !1493, !tbaa !1079
  switch i32 %669, label %670 [
    i32 0, label %710
    i32 2, label %671
    i32 4, label %671
  ], !dbg !1495

670:                                              ; preds = %665
  br label %671, !dbg !1496

671:                                              ; preds = %670, %665, %665
  %672 = phi i1 [ false, %670 ], [ true, %665 ], [ true, %665 ]
  call void @llvm.dbg.value(metadata i1 %672, metadata !961, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !1497
  %673 = add i32 %669, -1, !dbg !1498
  %674 = icmp ult i32 %673, 2, !dbg !1498
  call void @llvm.dbg.value(metadata i1 %674, metadata !962, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !1497
  %675 = trunc i64 %666 to i32, !dbg !1499
  %676 = call i32 @sigaction(i32 %675, %struct.sigaction* null, %struct.sigaction* nonnull %4) #29, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %676, metadata !963, metadata !DIExpression()) #29, !dbg !1497
  %677 = icmp eq i32 %676, 0, !dbg !1500
  %678 = or i1 %672, %677, !dbg !1502
  br i1 %678, label %684, label %679, !dbg !1502

679:                                              ; preds = %671
  %680 = trunc i64 %666 to i32, !dbg !1499
  %681 = tail call i32* @__errno_location() #32, !dbg !1503
  %682 = load i32, i32* %681, align 4, !dbg !1503, !tbaa !979
  %683 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.86, i64 0, i64 0), i32 5) #29, !dbg !1503
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %682, i8* %683, i32 %680) #29, !dbg !1503
  unreachable, !dbg !1503

684:                                              ; preds = %671
  br i1 %677, label %685, label %697, !dbg !1504

685:                                              ; preds = %684
  %686 = select i1 %674, void (i32)* null, void (i32)* inttoptr (i64 1 to void (i32)*), !dbg !1505
  store void (i32)* %686, void (i32)** %663, align 8, !dbg !1508, !tbaa !1079
  %687 = call i32 @sigaction(i32 %675, %struct.sigaction* nonnull %4, %struct.sigaction* null) #29, !dbg !1509
  call void @llvm.dbg.value(metadata i32 %687, metadata !963, metadata !DIExpression()) #29, !dbg !1497
  %688 = icmp eq i32 %687, 0, !dbg !1511
  %689 = or i1 %672, %688, !dbg !1512
  %690 = xor i1 %688, true, !dbg !1512
  %691 = zext i1 %690 to i32, !dbg !1512
  br i1 %689, label %697, label %692, !dbg !1512

692:                                              ; preds = %685
  %693 = trunc i64 %666 to i32, !dbg !1499
  %694 = tail call i32* @__errno_location() #32, !dbg !1513
  %695 = load i32, i32* %694, align 4, !dbg !1513, !tbaa !979
  %696 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.87, i64 0, i64 0), i32 5) #29, !dbg !1513
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %695, i8* %696, i32 %693) #29, !dbg !1513
  unreachable, !dbg !1513

697:                                              ; preds = %685, %684
  %698 = phi i32 [ %676, %684 ], [ %691, %685 ], !dbg !1497
  call void @llvm.dbg.value(metadata i32 %698, metadata !963, metadata !DIExpression()) #29, !dbg !1497
  %699 = load i1, i1* @dev_debug, align 1, !dbg !1514
  br i1 %699, label %700, label %710, !dbg !1515

700:                                              ; preds = %697
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %664) #29, !dbg !1516
  %701 = call i32 @sig2str(i32 %675, i8* nonnull %664) #29, !dbg !1517
  %702 = load i1, i1* @dev_debug, align 1, !dbg !1518
  br i1 %702, label %703, label %709, !dbg !1521

703:                                              ; preds = %700
  %704 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1518, !tbaa !704
  %705 = select i1 %674, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), !dbg !1518
  %706 = icmp eq i32 %698, 0, !dbg !1518
  %707 = select i1 %706, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i64 0, i64 0), !dbg !1518
  %708 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %704, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.88, i64 0, i64 0), i8* nonnull %664, i32 %675, i8* %705, i8* %707) #29, !dbg !1518
  br label %709, !dbg !1518

709:                                              ; preds = %703, %700
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %664) #29, !dbg !1522
  br label %710, !dbg !1523

710:                                              ; preds = %709, %697, %665
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %662) #29, !dbg !1524
  %711 = add nuw nsw i64 %666, 1, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %711, metadata !867, metadata !DIExpression()) #29, !dbg !1489
  %712 = icmp eq i64 %711, 65, !dbg !1526
  br i1 %712, label %713, label %665, !dbg !1490, !llvm.loop !1527

713:                                              ; preds = %710
  %714 = load i1, i1* @sig_mask_changed, align 1, !dbg !1529
  br i1 %714, label %715, label %756, !dbg !1530

715:                                              ; preds = %713
  %716 = bitcast %struct.__sigset_t* %3 to i8*, !dbg !1531
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %716) #29, !dbg !1531
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %3, metadata !850, metadata !DIExpression()) #29, !dbg !1532
  %717 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %3) #29, !dbg !1533
  %718 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* null, %struct.__sigset_t* nonnull %3) #29, !dbg !1534
  %719 = icmp eq i32 %718, 0, !dbg !1534
  br i1 %719, label %727, label %720, !dbg !1536

720:                                              ; preds = %715
  %721 = tail call i32* @__errno_location() #32, !dbg !1537
  %722 = load i32, i32* %721, align 4, !dbg !1537, !tbaa !979
  %723 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.92, i64 0, i64 0), i32 5) #29, !dbg !1537
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %722, i8* %723) #29, !dbg !1537
  unreachable, !dbg !1537

724:                                              ; preds = %748
  %725 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* nonnull %3, %struct.__sigset_t* null) #29, !dbg !1538
  %726 = icmp eq i32 %725, 0, !dbg !1538
  br i1 %726, label %755, label %751, !dbg !1540

727:                                              ; preds = %715, %748
  %728 = phi i32 [ %749, %748 ], [ 1, %715 ]
  call void @llvm.dbg.value(metadata i32 %728, metadata !852, metadata !DIExpression()) #29, !dbg !1541
  %729 = call i32 @sigismember(%struct.__sigset_t* nonnull @block_signals, i32 %728) #29, !dbg !1542
  %730 = icmp eq i32 %729, 0, !dbg !1542
  br i1 %730, label %733, label %731, !dbg !1544

731:                                              ; preds = %727
  %732 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 %728) #29, !dbg !1545
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), metadata !851, metadata !DIExpression()) #29, !dbg !1547
  br label %738, !dbg !1548

733:                                              ; preds = %727
  %734 = call i32 @sigismember(%struct.__sigset_t* nonnull @unblock_signals, i32 %728) #29, !dbg !1549
  %735 = icmp eq i32 %734, 0, !dbg !1549
  br i1 %735, label %748, label %736, !dbg !1551

736:                                              ; preds = %733
  %737 = call i32 @sigdelset(%struct.__sigset_t* nonnull %3, i32 %728) #29, !dbg !1552
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i64 0, i64 0), metadata !851, metadata !DIExpression()) #29, !dbg !1547
  br label %738, !dbg !1554

738:                                              ; preds = %736, %731
  %739 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i64 0, i64 0), %736 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), %731 ], !dbg !1555
  call void @llvm.dbg.value(metadata i8* %739, metadata !851, metadata !DIExpression()) #29, !dbg !1547
  %740 = load i1, i1* @dev_debug, align 1, !dbg !1556
  br i1 %740, label %741, label %748, !dbg !1557

741:                                              ; preds = %738
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %664) #29, !dbg !1558
  %742 = call i32 @sig2str(i32 %728, i8* nonnull %664) #29, !dbg !1559
  %743 = load i1, i1* @dev_debug, align 1, !dbg !1560
  br i1 %743, label %744, label %747, !dbg !1563

744:                                              ; preds = %741
  %745 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1560, !tbaa !704
  %746 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %745, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %664, i32 %728, i8* %739) #29, !dbg !1560
  br label %747, !dbg !1560

747:                                              ; preds = %744, %741
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %664) #29, !dbg !1564
  br label %748, !dbg !1565

748:                                              ; preds = %747, %738, %733
  %749 = add nuw nsw i32 %728, 1, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %749, metadata !852, metadata !DIExpression()) #29, !dbg !1541
  %750 = icmp eq i32 %749, 65, !dbg !1567
  br i1 %750, label %724, label %727, !dbg !1568, !llvm.loop !1569

751:                                              ; preds = %724
  %752 = tail call i32* @__errno_location() #32, !dbg !1571
  %753 = load i32, i32* %752, align 4, !dbg !1571, !tbaa !979
  %754 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i64 0, i64 0), i32 5) #29, !dbg !1571
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %753, i8* %754) #29, !dbg !1571
  unreachable, !dbg !1571

755:                                              ; preds = %724
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %716) #29, !dbg !1572
  br label %756, !dbg !1573

756:                                              ; preds = %755, %713
  %757 = load i1, i1* @report_signal_handling, align 1, !dbg !1574
  br i1 %757, label %758, label %797, !dbg !1576

758:                                              ; preds = %756
  %759 = bitcast %struct.__sigset_t* %5 to i8*, !dbg !1577
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %759) #29, !dbg !1577
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %5, metadata !1580, metadata !DIExpression()) #29, !dbg !1591
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %664) #29, !dbg !1592
  call void @llvm.dbg.declare(metadata [19 x i8]* %6, metadata !1581, metadata !DIExpression()) #29, !dbg !1593
  %760 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %5) #29, !dbg !1594
  %761 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* null, %struct.__sigset_t* nonnull %5) #29, !dbg !1595
  %762 = icmp eq i32 %761, 0, !dbg !1595
  br i1 %762, label %763, label %766, !dbg !1597

763:                                              ; preds = %758
  call void @llvm.dbg.value(metadata i32 1, metadata !1582, metadata !DIExpression()) #29, !dbg !1598
  %764 = bitcast %struct.sigaction* %7 to i8*
  %765 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i64 0, i32 0, i32 0
  br label %770, !dbg !1599

766:                                              ; preds = %758
  %767 = tail call i32* @__errno_location() #32, !dbg !1600
  %768 = load i32, i32* %767, align 4, !dbg !1600, !tbaa !979
  %769 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.92, i64 0, i64 0), i32 5) #29, !dbg !1600
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %768, i8* %769) #29, !dbg !1600
  unreachable, !dbg !1600

770:                                              ; preds = %793, %763
  %771 = phi i32 [ 1, %763 ], [ %794, %793 ]
  call void @llvm.dbg.value(metadata i32 %771, metadata !1582, metadata !DIExpression()) #29, !dbg !1598
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %764) #29, !dbg !1601
  call void @llvm.dbg.declare(metadata %struct.sigaction* %7, metadata !1584, metadata !DIExpression()) #29, !dbg !1602
  %772 = call i32 @sigaction(i32 %771, %struct.sigaction* null, %struct.sigaction* nonnull %7) #29, !dbg !1603
  %773 = icmp eq i32 %772, 0, !dbg !1603
  br i1 %773, label %774, label %793, !dbg !1605

774:                                              ; preds = %770
  %775 = load void (i32)*, void (i32)** %765, align 8, !dbg !1606, !tbaa !1079
  %776 = icmp eq void (i32)* %775, inttoptr (i64 1 to void (i32)*), !dbg !1607
  %777 = select i1 %776, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), !dbg !1608
  call void @llvm.dbg.value(metadata i8* %777, metadata !1587, metadata !DIExpression()) #29, !dbg !1609
  %778 = call i32 @sigismember(%struct.__sigset_t* nonnull %5, i32 %771) #29, !dbg !1610
  %779 = icmp eq i32 %778, 0, !dbg !1610
  %780 = select i1 %779, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), !dbg !1610
  call void @llvm.dbg.value(metadata i8* %780, metadata !1588, metadata !DIExpression()) #29, !dbg !1609
  %781 = load i8, i8* %777, align 1, !dbg !1611, !tbaa !1079
  %782 = icmp eq i8 %781, 0, !dbg !1611
  %783 = load i8, i8* %780, align 1, !dbg !1609, !tbaa !1079
  %784 = icmp eq i8 %783, 0, !dbg !1609
  br i1 %782, label %787, label %785, !dbg !1612

785:                                              ; preds = %774
  %786 = select i1 %784, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), !dbg !1611
  br label %788, !dbg !1611

787:                                              ; preds = %774
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), metadata !1589, metadata !DIExpression()) #29, !dbg !1609
  br i1 %784, label %793, label %788, !dbg !1613

788:                                              ; preds = %787, %785
  %789 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), %787 ], [ %786, %785 ]
  %790 = call i32 @sig2str(i32 %771, i8* nonnull %664) #29, !dbg !1614
  %791 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1615, !tbaa !704
  %792 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %791, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i64 0, i64 0), i8* nonnull %664, i32 %771, i8* nonnull %780, i8* nonnull %789, i8* nonnull %777) #29, !dbg !1615
  br label %793, !dbg !1616

793:                                              ; preds = %788, %787, %770
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %764) #29, !dbg !1616
  %794 = add nuw nsw i32 %771, 1, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %794, metadata !1582, metadata !DIExpression()) #29, !dbg !1598
  %795 = icmp eq i32 %794, 65, !dbg !1618
  br i1 %795, label %796, label %770, !dbg !1599, !llvm.loop !1619

796:                                              ; preds = %793
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %664) #29, !dbg !1621
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %759) #29, !dbg !1621
  br label %797, !dbg !1622

797:                                              ; preds = %796, %756
  br i1 %661, label %812, label %798, !dbg !1623

798:                                              ; preds = %797
  %799 = load i1, i1* @dev_debug, align 1, !dbg !1624
  br i1 %799, label %800, label %804, !dbg !1629

800:                                              ; preds = %798
  %801 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1624, !tbaa !704
  %802 = call i8* @quotearg_style(i32 4, i8* nonnull %17) #29, !dbg !1624
  %803 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %801, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i8* %802) #29, !dbg !1624
  br label %804, !dbg !1624

804:                                              ; preds = %800, %798
  %805 = call i32 @chdir(i8* nonnull %17) #29, !dbg !1630
  %806 = icmp eq i32 %805, 0, !dbg !1632
  br i1 %806, label %812, label %807, !dbg !1633

807:                                              ; preds = %804
  %808 = tail call i32* @__errno_location() #32, !dbg !1634
  %809 = load i32, i32* %808, align 4, !dbg !1634, !tbaa !979
  %810 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0), i32 5) #29, !dbg !1634
  %811 = call i8* @quotearg_style(i32 4, i8* nonnull %17) #29, !dbg !1634
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %809, i8* %810, i8* %811) #29, !dbg !1634
  unreachable, !dbg !1634

812:                                              ; preds = %804, %797
  %813 = load i1, i1* @dev_debug, align 1, !dbg !1635
  br i1 %813, label %814, label %841, !dbg !1636

814:                                              ; preds = %812
  %815 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1637, !tbaa !704
  call void @llvm.dbg.value(metadata i8** %16, metadata !85, metadata !DIExpression()), !dbg !966
  %816 = load i32, i32* @optind, align 4, !dbg !1637, !tbaa !979
  %817 = sext i32 %816 to i64, !dbg !1637
  %818 = getelementptr inbounds i8*, i8** %16, i64 %817, !dbg !1637
  %819 = load i8*, i8** %818, align 8, !dbg !1637, !tbaa !704
  %820 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %815, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* %819) #29, !dbg !1637
  %821 = load i32, i32* @optind, align 4, !dbg !1640, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %821, metadata !100, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i32 %15, metadata !84, metadata !DIExpression()), !dbg !966
  %822 = icmp slt i32 %821, %15, !dbg !1642
  br i1 %822, label %823, label %841, !dbg !1644

823:                                              ; preds = %814
  %824 = sext i32 %821 to i64, !dbg !1644
  br label %825, !dbg !1644

825:                                              ; preds = %823, %837
  %826 = phi i64 [ %824, %823 ], [ %838, %837 ]
  call void @llvm.dbg.value(metadata i64 %826, metadata !100, metadata !DIExpression()), !dbg !1641
  %827 = load i1, i1* @dev_debug, align 1, !dbg !1645
  br i1 %827, label %828, label %837, !dbg !1648

828:                                              ; preds = %825
  %829 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1645, !tbaa !704
  %830 = load i32, i32* @optind, align 4, !dbg !1645, !tbaa !979
  %831 = trunc i64 %826 to i32, !dbg !1645
  %832 = sub nsw i32 %831, %830, !dbg !1645
  call void @llvm.dbg.value(metadata i8** %16, metadata !85, metadata !DIExpression()), !dbg !966
  %833 = getelementptr inbounds i8*, i8** %16, i64 %826, !dbg !1645
  %834 = load i8*, i8** %833, align 8, !dbg !1645, !tbaa !704
  %835 = call i8* @quote(i8* %834) #29, !dbg !1645
  %836 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %829, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i32 %832, i8* %835) #29, !dbg !1645
  br label %837, !dbg !1645

837:                                              ; preds = %825, %828
  %838 = add nsw i64 %826, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %838, metadata !100, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i32 %15, metadata !84, metadata !DIExpression()), !dbg !966
  %839 = trunc i64 %838 to i32, !dbg !1642
  %840 = icmp eq i32 %15, %839, !dbg !1642
  br i1 %840, label %841, label %825, !dbg !1644, !llvm.loop !1650

841:                                              ; preds = %837, %814, %812
  call void @llvm.dbg.value(metadata i8** %16, metadata !85, metadata !DIExpression()), !dbg !966
  %842 = load i32, i32* @optind, align 4, !dbg !1652, !tbaa !979
  %843 = sext i32 %842 to i64, !dbg !1653
  %844 = getelementptr inbounds i8*, i8** %16, i64 %843, !dbg !1653
  %845 = load i8*, i8** %844, align 8, !dbg !1653, !tbaa !704
  %846 = call i32 @execvp(i8* %845, i8** nonnull %844) #29, !dbg !1654
  %847 = tail call i32* @__errno_location() #32, !dbg !1655
  %848 = load i32, i32* %847, align 4, !dbg !1655, !tbaa !979
  %849 = icmp eq i32 %848, 2, !dbg !1656
  call void @llvm.dbg.value(metadata i32 undef, metadata !104, metadata !DIExpression()), !dbg !966
  %850 = load i32, i32* @optind, align 4, !dbg !1657, !tbaa !979
  %851 = sext i32 %850 to i64, !dbg !1658
  %852 = getelementptr inbounds i8*, i8** %16, i64 %851, !dbg !1658
  %853 = load i8*, i8** %852, align 8, !dbg !1658, !tbaa !704
  %854 = call i8* @quote(i8* %853) #29, !dbg !1659
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %848, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* %854) #29, !dbg !1660
  br i1 %849, label %855, label %864, !dbg !1661

855:                                              ; preds = %841
  call void @llvm.dbg.value(metadata i8** %16, metadata !85, metadata !DIExpression()), !dbg !966
  %856 = load i32, i32* @optind, align 4, !dbg !1663, !tbaa !979
  %857 = sext i32 %856 to i64, !dbg !1664
  %858 = getelementptr inbounds i8*, i8** %16, i64 %857, !dbg !1664
  %859 = load i8*, i8** %858, align 8, !dbg !1664, !tbaa !704
  %860 = call i8* @strchr(i8* nonnull dereferenceable(1) %859, i32 32) #30, !dbg !1665
  %861 = icmp eq i8* %860, null, !dbg !1665
  br i1 %861, label %864, label %862, !dbg !1666

862:                                              ; preds = %855
  %863 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0), i32 5) #29, !dbg !1667
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %863) #29, !dbg !1668
  br label %864, !dbg !1668

864:                                              ; preds = %653, %647, %841, %855, %862
  %865 = phi i32 [ 127, %862 ], [ 127, %855 ], [ 126, %841 ], [ 0, %647 ], [ 0, %653 ], !dbg !966
  ret i32 %865, !dbg !1669
}

; Function Attrs: nounwind
declare !dbg !1670 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1673 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1676 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nounwind
declare !dbg !1680 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parse_signal_action_params(i8* %0, i1 zeroext %1) unnamed_addr #8 !dbg !1684 {
  %3 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1688, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i1 %1, metadata !1689, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1699
  %4 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i64 0, i64 0, !dbg !1700
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %4) #29, !dbg !1700
  call void @llvm.dbg.declare(metadata [19 x i8]* %3, metadata !1690, metadata !DIExpression()), !dbg !1701
  %5 = icmp eq i8* %0, null, !dbg !1702
  br i1 %5, label %6, label %19, !dbg !1703

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 1, metadata !1693, metadata !DIExpression()), !dbg !1704
  %7 = select i1 %1, i32 2, i32 4
  br label %8, !dbg !1705

8:                                                ; preds = %6, %16
  %9 = phi i64 [ 1, %6 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !1693, metadata !DIExpression()), !dbg !1704
  %10 = trunc i64 %9 to i32, !dbg !1706
  %11 = call i32 @sig2str(i32 %10, i8* nonnull %4) #29, !dbg !1706
  %12 = icmp eq i32 %11, 0, !dbg !1709
  br i1 %12, label %13, label %16, !dbg !1710

13:                                               ; preds = %8
  %14 = load i32*, i32** @signals, align 8, !dbg !1711, !tbaa !704
  %15 = getelementptr inbounds i32, i32* %14, i64 %9, !dbg !1711
  store i32 %7, i32* %15, align 4, !dbg !1712, !tbaa !1079
  br label %16, !dbg !1711

16:                                               ; preds = %8, %13
  %17 = add nuw nsw i64 %9, 1, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %17, metadata !1693, metadata !DIExpression()), !dbg !1704
  %18 = icmp eq i64 %17, 65, !dbg !1714
  br i1 %18, label %43, label %8, !dbg !1705, !llvm.loop !1715

19:                                               ; preds = %2
  %20 = tail call noalias i8* @xstrdup(i8* nonnull %0) #29, !dbg !1717
  call void @llvm.dbg.value(metadata i8* %20, metadata !1692, metadata !DIExpression()), !dbg !1699
  %21 = tail call i8* @strtok(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0)) #29, !dbg !1718
  call void @llvm.dbg.value(metadata i8* %21, metadata !1691, metadata !DIExpression()), !dbg !1699
  %22 = icmp eq i8* %21, null, !dbg !1719
  br i1 %22, label %42, label %23, !dbg !1719

23:                                               ; preds = %19
  %24 = select i1 %1, i32 1, i32 3
  br label %25, !dbg !1719

25:                                               ; preds = %23, %36
  %26 = phi i8* [ %21, %23 ], [ %40, %36 ]
  call void @llvm.dbg.value(metadata i8* %26, metadata !1691, metadata !DIExpression()), !dbg !1699
  %27 = call i32 @operand2sig(i8* nonnull %26, i8* nonnull %4) #29, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %27, metadata !1697, metadata !DIExpression()), !dbg !1721
  %28 = icmp eq i32 %27, 0, !dbg !1722
  br i1 %28, label %29, label %32, !dbg !1724

29:                                               ; preds = %25
  %30 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i64 0, i64 0), i32 5) #29, !dbg !1725
  %31 = call i8* @quote(i8* nonnull %26) #29, !dbg !1726
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %30, i8* %31) #29, !dbg !1727
  br label %34, !dbg !1728

32:                                               ; preds = %25
  %33 = icmp slt i32 %27, 1, !dbg !1729
  br i1 %33, label %34, label %36, !dbg !1728

34:                                               ; preds = %32, %29
  %35 = load volatile i32, i32* @exit_failure, align 4, !dbg !1731, !tbaa !979
  call void @usage(i32 %35) #33, !dbg !1732
  unreachable, !dbg !1732

36:                                               ; preds = %32
  %37 = load i32*, i32** @signals, align 8, !dbg !1733, !tbaa !704
  %38 = zext i32 %27 to i64, !dbg !1733
  %39 = getelementptr inbounds i32, i32* %37, i64 %38, !dbg !1733
  store i32 %24, i32* %39, align 4, !dbg !1734, !tbaa !1079
  %40 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0)) #29, !dbg !1735
  call void @llvm.dbg.value(metadata i8* %40, metadata !1691, metadata !DIExpression()), !dbg !1699
  %41 = icmp eq i8* %40, null, !dbg !1719
  br i1 %41, label %42, label %25, !dbg !1719, !llvm.loop !1736

42:                                               ; preds = %36, %19
  call void @free(i8* %20) #29, !dbg !1738
  br label %43, !dbg !1739

43:                                               ; preds = %16, %42
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %4) #29, !dbg !1739
  ret void, !dbg !1739
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parse_block_signal_params(i8* %0, i1 zeroext %1) unnamed_addr #8 !dbg !1740 {
  %3 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1742, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i1 %1, metadata !1743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1749
  %4 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i64 0, i64 0, !dbg !1750
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %4) #29, !dbg !1750
  call void @llvm.dbg.declare(metadata [19 x i8]* %3, metadata !1744, metadata !DIExpression()), !dbg !1751
  %5 = icmp eq i8* %0, null, !dbg !1752
  br i1 %5, label %11, label %6, !dbg !1754

6:                                                ; preds = %2
  %7 = load i1, i1* @sig_mask_changed, align 1, !dbg !1755
  br i1 %7, label %16, label %8, !dbg !1757

8:                                                ; preds = %6
  %9 = tail call i32 @sigemptyset(%struct.__sigset_t* nonnull @block_signals) #29, !dbg !1758
  %10 = tail call i32 @sigemptyset(%struct.__sigset_t* nonnull @unblock_signals) #29, !dbg !1760
  br label %16, !dbg !1761

11:                                               ; preds = %2
  %12 = select i1 %1, %struct.__sigset_t* @block_signals, %struct.__sigset_t* @unblock_signals, !dbg !1762
  %13 = tail call i32 @sigfillset(%struct.__sigset_t* nonnull %12) #29, !dbg !1764
  %14 = select i1 %1, %struct.__sigset_t* @unblock_signals, %struct.__sigset_t* @block_signals, !dbg !1765
  %15 = tail call i32 @sigemptyset(%struct.__sigset_t* nonnull %14) #29, !dbg !1766
  store i1 true, i1* @sig_mask_changed, align 1, !dbg !1767
  br label %40, !dbg !1768

16:                                               ; preds = %6, %8
  store i1 true, i1* @sig_mask_changed, align 1, !dbg !1767
  %17 = tail call noalias i8* @xstrdup(i8* nonnull %0) #29, !dbg !1769
  call void @llvm.dbg.value(metadata i8* %17, metadata !1746, metadata !DIExpression()), !dbg !1749
  %18 = tail call i8* @strtok(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0)) #29, !dbg !1770
  call void @llvm.dbg.value(metadata i8* %18, metadata !1745, metadata !DIExpression()), !dbg !1749
  %19 = icmp eq i8* %18, null, !dbg !1771
  br i1 %19, label %39, label %20, !dbg !1771

20:                                               ; preds = %16
  %21 = select i1 %1, %struct.__sigset_t* @block_signals, %struct.__sigset_t* @unblock_signals
  %22 = select i1 %1, %struct.__sigset_t* @unblock_signals, %struct.__sigset_t* @block_signals
  br label %23, !dbg !1771

23:                                               ; preds = %20, %34
  %24 = phi i8* [ %18, %20 ], [ %37, %34 ]
  call void @llvm.dbg.value(metadata i8* %24, metadata !1745, metadata !DIExpression()), !dbg !1749
  %25 = call i32 @operand2sig(i8* nonnull %24, i8* nonnull %4) #29, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %25, metadata !1747, metadata !DIExpression()), !dbg !1773
  %26 = icmp eq i32 %25, 0, !dbg !1774
  br i1 %26, label %27, label %30, !dbg !1776

27:                                               ; preds = %23
  %28 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i64 0, i64 0), i32 5) #29, !dbg !1777
  %29 = call i8* @quote(i8* nonnull %24) #29, !dbg !1778
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %28, i8* %29) #29, !dbg !1779
  br label %32, !dbg !1780

30:                                               ; preds = %23
  %31 = icmp slt i32 %25, 1, !dbg !1781
  br i1 %31, label %32, label %34, !dbg !1780

32:                                               ; preds = %30, %27
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !1783, !tbaa !979
  call void @usage(i32 %33) #33, !dbg !1784
  unreachable, !dbg !1784

34:                                               ; preds = %30
  %35 = call i32 @sigaddset(%struct.__sigset_t* nonnull %21, i32 %25) #29, !dbg !1785
  %36 = call i32 @sigdelset(%struct.__sigset_t* nonnull %22, i32 %25) #29, !dbg !1786
  %37 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0)) #29, !dbg !1787
  call void @llvm.dbg.value(metadata i8* %37, metadata !1745, metadata !DIExpression()), !dbg !1749
  %38 = icmp eq i8* %37, null, !dbg !1771
  br i1 %38, label %39, label %23, !dbg !1771, !llvm.loop !1788

39:                                               ; preds = %34, %16
  call void @free(i8* %17) #29, !dbg !1790
  br label %40, !dbg !1791

40:                                               ; preds = %11, %39
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %4) #29, !dbg !1791
  ret void, !dbg !1791
}

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

declare !dbg !1792 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @extract_varname(i8* %0) unnamed_addr #8 !dbg !1796 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1798, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8* %0, metadata !1803, metadata !DIExpression()) #29, !dbg !1811
  %2 = icmp eq i8* %0, null, !dbg !1813
  br i1 %2, label %6, label %3, !dbg !1813

3:                                                ; preds = %1
  %4 = load i8, i8* %0, align 1, !dbg !1813, !tbaa !1079
  %5 = icmp eq i8 %4, 36, !dbg !1813
  br i1 %5, label %7, label %6, !dbg !1816

6:                                                ; preds = %3, %1
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i32 221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.scan_varname, i64 0, i64 0)) #31, !dbg !1813
  unreachable, !dbg !1813

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1817
  %9 = load i8, i8* %8, align 1, !dbg !1818, !tbaa !1079
  %10 = icmp eq i8 %9, 123, !dbg !1819
  br i1 %10, label %11, label %45, !dbg !1820

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1821
  %13 = load i8, i8* %12, align 1, !dbg !1822, !tbaa !1079
  %14 = sext i8 %13 to i32, !dbg !1822
  call void @llvm.dbg.value(metadata i32 %14, metadata !1823, metadata !DIExpression()) #29, !dbg !1829
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
  ], !dbg !1831

15:                                               ; preds = %11
  %16 = icmp eq i8 %13, 95, !dbg !1832
  br i1 %16, label %17, label %45, !dbg !1833

17:                                               ; preds = %15, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %18 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1834
  call void @llvm.dbg.value(metadata i8* %18, metadata !1808, metadata !DIExpression()) #29, !dbg !1835
  br label %19, !dbg !1836

19:                                               ; preds = %26, %17
  %20 = phi i8* [ %18, %17 ], [ %27, %26 ], !dbg !1835
  call void @llvm.dbg.value(metadata i8* %20, metadata !1808, metadata !DIExpression()) #29, !dbg !1835
  %21 = load i8, i8* %20, align 1, !dbg !1837, !tbaa !1079
  %22 = sext i8 %21 to i32, !dbg !1837
  %23 = tail call zeroext i1 @c_isalnum(i32 %22) #29, !dbg !1838
  br i1 %23, label %26, label %24, !dbg !1839

24:                                               ; preds = %19
  %25 = load i8, i8* %20, align 1, !dbg !1840, !tbaa !1079
  switch i8 %25, label %45 [
    i8 95, label %26
    i8 125, label %28
  ], !dbg !1836

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1841
  call void @llvm.dbg.value(metadata i8* %27, metadata !1808, metadata !DIExpression()) #29, !dbg !1835
  br label %19, !dbg !1836, !llvm.loop !1842

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %20, metadata !1801, metadata !DIExpression()), !dbg !1802
  %29 = ptrtoint i8* %20 to i64, !dbg !1844
  %30 = ptrtoint i8* %0 to i64, !dbg !1844
  %31 = sub i64 %29, %30, !dbg !1844
  %32 = add nsw i64 %31, -2, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %32, metadata !1799, metadata !DIExpression()), !dbg !1802
  %33 = load i64, i64* @vnlen, align 8, !dbg !1846, !tbaa !1007
  %34 = icmp ult i64 %32, %33, !dbg !1848
  br i1 %34, label %35, label %37, !dbg !1849

35:                                               ; preds = %28
  %36 = load i8*, i8** @varname, align 8, !dbg !1850, !tbaa !704
  br label %41, !dbg !1849

37:                                               ; preds = %28
  %38 = add nsw i64 %31, -1, !dbg !1851
  store i64 %38, i64* @vnlen, align 8, !dbg !1853, !tbaa !1007
  %39 = load i8*, i8** @varname, align 8, !dbg !1854, !tbaa !704
  %40 = tail call i8* @xrealloc(i8* %39, i64 %38) #29, !dbg !1855
  store i8* %40, i8** @varname, align 8, !dbg !1856, !tbaa !704
  br label %41, !dbg !1857

41:                                               ; preds = %35, %37
  %42 = phi i8* [ %36, %35 ], [ %40, %37 ], !dbg !1850
  call void @llvm.dbg.value(metadata i8* %42, metadata !1858, metadata !DIExpression()) #29, !dbg !1869
  call void @llvm.dbg.value(metadata i8* %12, metadata !1867, metadata !DIExpression()) #29, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %32, metadata !1868, metadata !DIExpression()) #29, !dbg !1869
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %42, i8* nonnull align 1 %12, i64 %32, i1 false) #29, !dbg !1871
  %43 = load i8*, i8** @varname, align 8, !dbg !1872, !tbaa !704
  %44 = getelementptr inbounds i8, i8* %43, i64 %32, !dbg !1872
  store i8 0, i8* %44, align 1, !dbg !1873, !tbaa !1079
  br label %45, !dbg !1874

45:                                               ; preds = %24, %7, %15, %41
  %46 = phi i8* [ %43, %41 ], [ null, %15 ], [ null, %7 ], [ null, %24 ], !dbg !1802
  ret i8* %46, !dbg !1875
}

; Function Attrs: nofree nounwind readonly
declare !dbg !1876 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @stpcpy(i8* noalias writeonly, i8* noalias nocapture readonly) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nounwind
declare !dbg !1877 noundef i32 @unsetenv(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !1880 i32 @putenv(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1883 i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1889 i32 @sigemptyset(%struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1893 i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1898 i32 @sigismember(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1901 i32 @sigaddset(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1904 i32 @sigdelset(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1905 i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1907 i32 @execvp(i8*, i8**) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1910 i32 @sigfillset(%struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #13

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @operand2sig(i8* %0, i8* %1) local_unnamed_addr #8 !dbg !1911 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1915, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8* %1, metadata !1916, metadata !DIExpression()), !dbg !1926
  %5 = bitcast i32* %3 to i8*, !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #29, !dbg !1927
  %6 = load i8, i8* %0, align 1, !dbg !1928, !tbaa !1079
  %7 = sext i8 %6 to i32, !dbg !1928
  %8 = add nsw i32 %7, -48, !dbg !1928
  %9 = icmp ult i32 %8, 10, !dbg !1928
  br i1 %9, label %10, label %38, !dbg !1929

10:                                               ; preds = %2
  %11 = bitcast i8** %4 to i8*, !dbg !1930
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #29, !dbg !1930
  %12 = tail call i32* @__errno_location() #32, !dbg !1931
  store i32 0, i32* %12, align 4, !dbg !1932, !tbaa !979
  call void @llvm.dbg.value(metadata i8** %4, metadata !1918, metadata !DIExpression(DW_OP_deref)), !dbg !1933
  %13 = call i64 @strtol(i8* nonnull %0, i8** nonnull %4, i32 10) #29, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %13, metadata !1921, metadata !DIExpression()), !dbg !1933
  %14 = trunc i64 %13 to i32, !dbg !1935
  call void @llvm.dbg.value(metadata i32 %14, metadata !1922, metadata !DIExpression()), !dbg !1933
  %15 = load i8*, i8** %4, align 8, !dbg !1936, !tbaa !704
  call void @llvm.dbg.value(metadata i8* %15, metadata !1918, metadata !DIExpression()), !dbg !1933
  %16 = icmp eq i8* %15, %0, !dbg !1937
  br i1 %16, label %29, label %17, !dbg !1938

17:                                               ; preds = %10
  %18 = load i8, i8* %15, align 1, !dbg !1939, !tbaa !1079
  %19 = icmp eq i8 %18, 0, !dbg !1939
  br i1 %19, label %20, label %29, !dbg !1940

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4, !dbg !1941, !tbaa !979
  %22 = icmp eq i32 %21, 0, !dbg !1941
  %23 = add i64 %13, 2147483648
  %24 = icmp ult i64 %23, 4294967296
  %25 = and i1 %24, %22, !dbg !1942
  br i1 %25, label %26, label %29, !dbg !1942

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 %14, metadata !1917, metadata !DIExpression()), !dbg !1926
  %27 = icmp eq i32 %14, -1, !dbg !1943
  %28 = icmp slt i32 %14, 255, !dbg !1945
  br i1 %28, label %29, label %32, !dbg !1945

29:                                               ; preds = %10, %17, %20, %26
  %30 = phi i1 [ %27, %26 ], [ true, %20 ], [ true, %17 ], [ true, %10 ]
  %31 = phi i32 [ %14, %26 ], [ -1, %20 ], [ -1, %17 ], [ -1, %10 ]
  br label %32, !dbg !1945

32:                                               ; preds = %26, %29
  %33 = phi i1 [ %30, %29 ], [ %27, %26 ]
  %34 = phi i32 [ %31, %29 ], [ %14, %26 ]
  %35 = phi i32 [ 127, %29 ], [ 255, %26 ]
  %36 = select i1 %33, i32 -1, i32 %35, !dbg !1945
  %37 = and i32 %36, %34, !dbg !1945
  store i32 %37, i32* %3, align 4, !dbg !1933, !tbaa !979
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #29, !dbg !1946
  br label %75, !dbg !1947

38:                                               ; preds = %2
  %39 = tail call noalias i8* @xstrdup(i8* nonnull %0) #29, !dbg !1948
  call void @llvm.dbg.value(metadata i8* %39, metadata !1923, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %39, metadata !1925, metadata !DIExpression()), !dbg !1949
  %40 = load i8, i8* %39, align 1, !dbg !1950, !tbaa !1079
  %41 = icmp eq i8 %40, 0, !dbg !1953
  br i1 %41, label %54, label %42, !dbg !1953

42:                                               ; preds = %38, %50
  %43 = phi i8 [ %52, %50 ], [ %40, %38 ]
  %44 = phi i8* [ %51, %50 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i8* %44, metadata !1925, metadata !DIExpression()), !dbg !1949
  %45 = sext i8 %43 to i32, !dbg !1954
  %46 = tail call i8* @memchr(i8* nonnull dereferenceable(27) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i64 0, i64 0), i32 %45, i64 27), !dbg !1956
  %47 = icmp eq i8* %46, null, !dbg !1956
  br i1 %47, label %50, label %48, !dbg !1957

48:                                               ; preds = %42
  %49 = add i8 %43, -32, !dbg !1958
  store i8 %49, i8* %44, align 1, !dbg !1958, !tbaa !1079
  br label %50, !dbg !1959

50:                                               ; preds = %42, %48
  %51 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1960
  call void @llvm.dbg.value(metadata i8* %51, metadata !1925, metadata !DIExpression()), !dbg !1949
  %52 = load i8, i8* %51, align 1, !dbg !1950, !tbaa !1079
  %53 = icmp eq i8 %52, 0, !dbg !1953
  br i1 %53, label %54, label %42, !dbg !1953, !llvm.loop !1961

54:                                               ; preds = %50, %38
  call void @llvm.dbg.value(metadata i32* %3, metadata !1917, metadata !DIExpression(DW_OP_deref)), !dbg !1926
  %55 = call i32 @str2sig(i8* nonnull %39, i32* nonnull %3) #29, !dbg !1963
  %56 = icmp eq i32 %55, 0, !dbg !1965
  br i1 %56, label %73, label %57, !dbg !1966

57:                                               ; preds = %54
  %58 = load i8, i8* %39, align 1, !dbg !1967, !tbaa !1079
  %59 = icmp eq i8 %58, 83, !dbg !1968
  br i1 %59, label %60, label %72, !dbg !1969

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1970
  %62 = load i8, i8* %61, align 1, !dbg !1970, !tbaa !1079
  %63 = icmp eq i8 %62, 73, !dbg !1971
  br i1 %63, label %64, label %72, !dbg !1972

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !1973
  %66 = load i8, i8* %65, align 1, !dbg !1973, !tbaa !1079
  %67 = icmp eq i8 %66, 71, !dbg !1974
  br i1 %67, label %68, label %72, !dbg !1975

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !1976
  call void @llvm.dbg.value(metadata i32* %3, metadata !1917, metadata !DIExpression(DW_OP_deref)), !dbg !1926
  %70 = call i32 @str2sig(i8* nonnull %69, i32* nonnull %3) #29, !dbg !1977
  %71 = icmp eq i32 %70, 0, !dbg !1978
  br i1 %71, label %73, label %72, !dbg !1979

72:                                               ; preds = %68, %64, %60, %57
  call void @llvm.dbg.value(metadata i32 -1, metadata !1917, metadata !DIExpression()), !dbg !1926
  store i32 -1, i32* %3, align 4, !dbg !1980, !tbaa !979
  br label %73, !dbg !1981

73:                                               ; preds = %72, %68, %54
  call void @free(i8* %39) #29, !dbg !1982
  %74 = load i32, i32* %3, align 4, !dbg !1983, !tbaa !979
  br label %75

75:                                               ; preds = %73, %32
  %76 = phi i32 [ %74, %73 ], [ %37, %32 ], !dbg !1983
  call void @llvm.dbg.value(metadata i32 %76, metadata !1917, metadata !DIExpression()), !dbg !1926
  %77 = icmp slt i32 %76, 0, !dbg !1985
  br i1 %77, label %81, label %78, !dbg !1986

78:                                               ; preds = %75
  %79 = call i32 @sig2str(i32 %76, i8* %1) #29, !dbg !1987
  %80 = icmp eq i32 %79, 0, !dbg !1988
  br i1 %80, label %84, label %81, !dbg !1989

81:                                               ; preds = %78, %75
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.71, i64 0, i64 0), i32 5) #29, !dbg !1990
  %83 = call i8* @quote(i8* nonnull %0) #29, !dbg !1992
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82, i8* %83) #29, !dbg !1993
  br label %86, !dbg !1994

84:                                               ; preds = %78
  %85 = load i32, i32* %3, align 4, !dbg !1995, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %85, metadata !1917, metadata !DIExpression()), !dbg !1926
  br label %86, !dbg !1996

86:                                               ; preds = %84, %81
  %87 = phi i32 [ -1, %81 ], [ %85, %84 ], !dbg !1926
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #29, !dbg !1997
  ret i32 %87, !dbg !1997
}

; Function Attrs: nofree nounwind willreturn
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #15

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @c_isalnum(i32 %0) local_unnamed_addr #16 !dbg !1998 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2000, metadata !DIExpression()), !dbg !2001
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
  ], !dbg !2002

2:                                                ; preds = %1
  br label %3, !dbg !2003

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2005
  ret i1 %4, !dbg !2006
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @c_isalpha(i32 %0) local_unnamed_addr #16 !dbg !2007 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2009, metadata !DIExpression()), !dbg !2010
  %2 = add i32 %0, -65, !dbg !2011
  %3 = icmp ult i32 %2, 58, !dbg !2011
  br i1 %3, label %4, label %9, !dbg !2011

4:                                                ; preds = %1
  %5 = zext i32 %2 to i58, !dbg !2011
  %6 = lshr i58 -4227858433, %5, !dbg !2011
  %7 = and i58 %6, 1, !dbg !2011
  %8 = icmp ne i58 %7, 0, !dbg !2011
  ret i1 %8, !dbg !2011

9:                                                ; preds = %1
  ret i1 false, !dbg !2012
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @c_isascii(i32 %0) local_unnamed_addr #16 !dbg !2013 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2015, metadata !DIExpression()), !dbg !2016
  %2 = icmp ult i32 %0, 128, !dbg !2017
  ret i1 %2, !dbg !2018
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @c_isblank(i32 %0) local_unnamed_addr #16 !dbg !2019 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2021, metadata !DIExpression()), !dbg !2022
  %2 = icmp eq i32 %0, 32, !dbg !2023
  %3 = icmp eq i32 %0, 9, !dbg !2024
  %4 = or i1 %2, %3, !dbg !2024
  ret i1 %4, !dbg !2025
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @c_iscntrl(i32 %0) local_unnamed_addr #16 !dbg !2026 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2028, metadata !DIExpression()), !dbg !2029
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
  ], !dbg !2030

2:                                                ; preds = %1
  br label %3, !dbg !2031

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2033
  ret i1 %4, !dbg !2034
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @c_isdigit(i32 %0) local_unnamed_addr #16 !dbg !2035 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2037, metadata !DIExpression()), !dbg !2038
  %2 = add i32 %0, -48, !dbg !2039
  %3 = icmp ult i32 %2, 10, !dbg !2039
  ret i1 %3, !dbg !2040
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @c_isgraph(i32 %0) local_unnamed_addr #16 !dbg !2041 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2043, metadata !DIExpression()), !dbg !2044
  %2 = add i32 %0, -33, !dbg !2045
  %3 = icmp ult i32 %2, 94, !dbg !2045
  ret i1 %3, !dbg !2046
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @c_islower(i32 %0) local_unnamed_addr #16 !dbg !2047 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2049, metadata !DIExpression()), !dbg !2050
  %2 = add i32 %0, -97, !dbg !2051
  %3 = icmp ult i32 %2, 26, !dbg !2051
  ret i1 %3, !dbg !2052
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @c_isprint(i32 %0) local_unnamed_addr #16 !dbg !2053 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2055, metadata !DIExpression()), !dbg !2056
  %2 = add i32 %0, -32, !dbg !2057
  %3 = icmp ult i32 %2, 95, !dbg !2057
  ret i1 %3, !dbg !2058
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @c_ispunct(i32 %0) local_unnamed_addr #16 !dbg !2059 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2061, metadata !DIExpression()), !dbg !2062
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
  ], !dbg !2063

2:                                                ; preds = %1
  br label %3, !dbg !2064

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2066
  ret i1 %4, !dbg !2067
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @c_isspace(i32 %0) local_unnamed_addr #16 !dbg !2068 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2070, metadata !DIExpression()), !dbg !2071
  %2 = add i32 %0, -9, !dbg !2072
  %3 = icmp ult i32 %2, 24, !dbg !2072
  br i1 %3, label %4, label %9, !dbg !2072

4:                                                ; preds = %1
  %5 = trunc i32 %2 to i24, !dbg !2072
  %6 = lshr i24 -8388577, %5, !dbg !2072
  %7 = and i24 %6, 1, !dbg !2072
  %8 = icmp ne i24 %7, 0, !dbg !2072
  ret i1 %8, !dbg !2072

9:                                                ; preds = %1
  ret i1 false, !dbg !2073
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @c_isupper(i32 %0) local_unnamed_addr #16 !dbg !2074 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2076, metadata !DIExpression()), !dbg !2077
  %2 = add i32 %0, -65, !dbg !2078
  %3 = icmp ult i32 %2, 26, !dbg !2078
  ret i1 %3, !dbg !2079
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @c_isxdigit(i32 %0) local_unnamed_addr #16 !dbg !2080 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2082, metadata !DIExpression()), !dbg !2083
  %2 = add i32 %0, -48, !dbg !2084
  %3 = icmp ult i32 %2, 55, !dbg !2084
  br i1 %3, label %4, label %9, !dbg !2084

4:                                                ; preds = %1
  %5 = zext i32 %2 to i55, !dbg !2084
  %6 = lshr i55 -562949945162753, %5, !dbg !2084
  %7 = and i55 %6, 1, !dbg !2084
  %8 = icmp ne i55 %7, 0, !dbg !2084
  ret i1 %8, !dbg !2084

9:                                                ; preds = %1
  ret i1 false, !dbg !2085
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local i32 @c_tolower(i32 %0) local_unnamed_addr #16 !dbg !2086 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2090, metadata !DIExpression()), !dbg !2091
  %2 = add i32 %0, -65, !dbg !2092
  %3 = icmp ult i32 %2, 26, !dbg !2092
  %4 = add nsw i32 %0, 32, !dbg !2092
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2092
  ret i32 %5, !dbg !2093
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local i32 @c_toupper(i32 %0) local_unnamed_addr #16 !dbg !2094 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2096, metadata !DIExpression()), !dbg !2097
  %2 = add i32 %0, -97, !dbg !2098
  %3 = icmp ult i32 %2, 26, !dbg !2098
  %4 = add nsw i32 %0, -32, !dbg !2098
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2098
  ret i32 %5, !dbg !2099
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #17 !dbg !2100 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2102, metadata !DIExpression()), !dbg !2103
  store i8* %0, i8** @file_name, align 8, !dbg !2104, !tbaa !704
  ret void, !dbg !2105
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #17 !dbg !2106 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2110, metadata !DIExpression()), !dbg !2111
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2112, !tbaa !2113
  ret void, !dbg !2115
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2116 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2121, !tbaa !704
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #29, !dbg !2122
  %3 = icmp eq i32 %2, 0, !dbg !2123
  br i1 %3, label %22, label %4, !dbg !2124

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2125, !tbaa !2113, !range !2126
  %6 = icmp eq i8 %5, 0, !dbg !2125
  br i1 %6, label %11, label %7, !dbg !2127

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #32, !dbg !2128
  %9 = load i32, i32* %8, align 4, !dbg !2128, !tbaa !979
  %10 = icmp eq i32 %9, 32, !dbg !2129
  br i1 %10, label %22, label %11, !dbg !2130

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i64 0, i64 0), i32 5) #29, !dbg !2131
  call void @llvm.dbg.value(metadata i8* %12, metadata !2118, metadata !DIExpression()), !dbg !2132
  %13 = load i8*, i8** @file_name, align 8, !dbg !2133, !tbaa !704
  %14 = icmp eq i8* %13, null, !dbg !2133
  %15 = tail call i32* @__errno_location() #32, !dbg !2135
  %16 = load i32, i32* %15, align 4, !dbg !2135, !tbaa !979
  br i1 %14, label %19, label %17, !dbg !2136

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #29, !dbg !2137
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.104, i64 0, i64 0), i8* %18, i8* %12) #29, !dbg !2138
  br label %20, !dbg !2138

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.105, i64 0, i64 0), i8* %12) #29, !dbg !2139
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2140, !tbaa !979
  tail call void @_exit(i32 %21) #31, !dbg !2141
  unreachable, !dbg !2141

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2142, !tbaa !704
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #29, !dbg !2144
  %25 = icmp eq i32 %24, 0, !dbg !2145
  br i1 %25, label %28, label %26, !dbg !2146

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2147, !tbaa !979
  tail call void @_exit(i32 %27) #31, !dbg !2148
  unreachable, !dbg !2148

28:                                               ; preds = %22
  ret void, !dbg !2149
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2150 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2152, metadata !DIExpression()), !dbg !2155
  %2 = icmp eq i8* %0, null, !dbg !2156
  br i1 %2, label %3, label %6, !dbg !2158

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2159, !tbaa !704
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.112, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #34, !dbg !2161
  tail call void @abort() #31, !dbg !2162
  unreachable, !dbg !2162

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #30, !dbg !2163
  call void @llvm.dbg.value(metadata i8* %7, metadata !2153, metadata !DIExpression()), !dbg !2155
  %8 = icmp eq i8* %7, null, !dbg !2164
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2165
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2165
  call void @llvm.dbg.value(metadata i8* %10, metadata !2154, metadata !DIExpression()), !dbg !2155
  %11 = ptrtoint i8* %10 to i64, !dbg !2166
  %12 = ptrtoint i8* %0 to i64, !dbg !2166
  %13 = sub i64 %11, %12, !dbg !2166
  %14 = icmp sgt i64 %13, 6, !dbg !2168
  br i1 %14, label %15, label %24, !dbg !2169

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2170
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.113, i64 0, i64 0), i64 7) #30, !dbg !2171
  %18 = icmp eq i32 %17, 0, !dbg !2172
  br i1 %18, label %19, label %24, !dbg !2173

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2152, metadata !DIExpression()), !dbg !2155
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.114, i64 0, i64 0), i64 3) #30, !dbg !2174
  %21 = icmp eq i32 %20, 0, !dbg !2177
  br i1 %21, label %22, label %24, !dbg !2178

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2179
  call void @llvm.dbg.value(metadata i8* %23, metadata !2152, metadata !DIExpression()), !dbg !2155
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2181, !tbaa !704
  br label %24, !dbg !2182

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2152, metadata !DIExpression()), !dbg !2155
  store i8* %25, i8** @program_name, align 8, !dbg !2183, !tbaa !704
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2184, !tbaa !704
  ret void, !dbg !2185
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #19

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2186 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2191, metadata !DIExpression()), !dbg !2194
  %2 = tail call i32* @__errno_location() #32, !dbg !2195
  %3 = load i32, i32* %2, align 4, !dbg !2195, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %3, metadata !2192, metadata !DIExpression()), !dbg !2194
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2196
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2196
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2196
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #29, !dbg !2197
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2197
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2193, metadata !DIExpression()), !dbg !2194
  store i32 %3, i32* %2, align 4, !dbg !2198, !tbaa !979
  ret %struct.quoting_options* %8, !dbg !2199
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #20 !dbg !2200 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2206, metadata !DIExpression()), !dbg !2207
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2208
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2208
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2209
  %5 = load i32, i32* %4, align 8, !dbg !2209, !tbaa !2210
  ret i32 %5, !dbg !2212
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !2213 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2217, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i32 %1, metadata !2218, metadata !DIExpression()), !dbg !2219
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2220
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2220
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2221
  store i32 %1, i32* %5, align 8, !dbg !2222, !tbaa !2210
  ret void, !dbg !2223
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #21 !dbg !2224 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2228, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8 %1, metadata !2229, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 %2, metadata !2230, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8 %1, metadata !2231, metadata !DIExpression()), !dbg !2237
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2238
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2238
  %6 = lshr i8 %1, 5, !dbg !2239
  %7 = zext i8 %6 to i64, !dbg !2239
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2240
  call void @llvm.dbg.value(metadata i32* %8, metadata !2233, metadata !DIExpression()), !dbg !2237
  %9 = and i8 %1, 31, !dbg !2241
  %10 = zext i8 %9 to i32, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %10, metadata !2235, metadata !DIExpression()), !dbg !2237
  %11 = load i32, i32* %8, align 4, !dbg !2242, !tbaa !979
  %12 = lshr i32 %11, %10, !dbg !2243
  %13 = and i32 %12, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i32 %13, metadata !2236, metadata !DIExpression()), !dbg !2237
  %14 = and i32 %2, 1, !dbg !2245
  %15 = xor i32 %13, %14, !dbg !2246
  %16 = shl i32 %15, %10, !dbg !2247
  %17 = xor i32 %16, %11, !dbg !2248
  store i32 %17, i32* %8, align 4, !dbg !2248, !tbaa !979
  ret i32 %13, !dbg !2249
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #21 !dbg !2250 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2254, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 %1, metadata !2255, metadata !DIExpression()), !dbg !2257
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2258
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2254, metadata !DIExpression()), !dbg !2257
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2261
  %6 = load i32, i32* %5, align 4, !dbg !2261, !tbaa !2262
  call void @llvm.dbg.value(metadata i32 %6, metadata !2256, metadata !DIExpression()), !dbg !2257
  store i32 %1, i32* %5, align 4, !dbg !2263, !tbaa !2262
  ret i32 %6, !dbg !2264
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2265 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2269, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8* %1, metadata !2270, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8* %2, metadata !2271, metadata !DIExpression()), !dbg !2272
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2273
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2275
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2269, metadata !DIExpression()), !dbg !2272
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2276
  store i32 10, i32* %6, align 8, !dbg !2277, !tbaa !2210
  %7 = icmp ne i8* %1, null, !dbg !2278
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2280
  br i1 %9, label %11, label %10, !dbg !2280

10:                                               ; preds = %3
  tail call void @abort() #31, !dbg !2281
  unreachable, !dbg !2281

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2282
  store i8* %1, i8** %12, align 8, !dbg !2283, !tbaa !2284
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2285
  store i8* %2, i8** %13, align 8, !dbg !2286, !tbaa !2287
  ret void, !dbg !2288
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2289 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2293, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 %1, metadata !2294, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8* %2, metadata !2295, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 %3, metadata !2296, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2297, metadata !DIExpression()), !dbg !2301
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2302
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2302
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2298, metadata !DIExpression()), !dbg !2301
  %8 = tail call i32* @__errno_location() #32, !dbg !2303
  %9 = load i32, i32* %8, align 4, !dbg !2303, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %9, metadata !2299, metadata !DIExpression()), !dbg !2301
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2304
  %11 = load i32, i32* %10, align 8, !dbg !2304, !tbaa !2210
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2305
  %13 = load i32, i32* %12, align 4, !dbg !2305, !tbaa !2262
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2306
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2307
  %16 = load i8*, i8** %15, align 8, !dbg !2307, !tbaa !2284
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2308
  %18 = load i8*, i8** %17, align 8, !dbg !2308, !tbaa !2287
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %19, metadata !2300, metadata !DIExpression()), !dbg !2301
  store i32 %9, i32* %8, align 4, !dbg !2310, !tbaa !979
  ret i64 %19, !dbg !2311
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2312 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2318, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %1, metadata !2319, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %2, metadata !2320, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %3, metadata !2321, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 %4, metadata !2322, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 %5, metadata !2323, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32* %6, metadata !2324, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %7, metadata !2325, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %8, metadata !2326, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 0, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 0, metadata !2329, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* null, metadata !2330, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 0, metadata !2331, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2332, metadata !DIExpression()), !dbg !2388
  %13 = tail call i64 @__ctype_get_mb_cur_max() #29, !dbg !2389
  %14 = icmp eq i64 %13, 1, !dbg !2390
  call void @llvm.dbg.value(metadata i1 %14, metadata !2333, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2388
  %15 = lshr i32 %5, 1, !dbg !2391
  %16 = trunc i32 %15 to i8, !dbg !2391
  %17 = and i8 %16, 1, !dbg !2391
  call void @llvm.dbg.value(metadata i8 %17, metadata !2334, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2336, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 1, metadata !2337, metadata !DIExpression()), !dbg !2388
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2392

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2393
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2394
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2395
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2396
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2388
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2397
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2398
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2399
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2319, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %38, metadata !2337, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %37, metadata !2336, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %36, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %35, metadata !2334, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %34, metadata !2321, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %33, metadata !2332, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %32, metadata !2331, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %31, metadata !2330, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %30, metadata !2329, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 0, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %29, metadata !2326, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %28, metadata !2325, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 %27, metadata !2322, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.label(metadata !2382), !dbg !2400
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
  ], !dbg !2401

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2334, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 5, metadata !2322, metadata !DIExpression()), !dbg !2388
  br label %92, !dbg !2402

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2334, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 5, metadata !2322, metadata !DIExpression()), !dbg !2388
  %42 = and i8 %35, 1, !dbg !2404
  %43 = icmp eq i8 %42, 0, !dbg !2404
  br i1 %43, label %44, label %92, !dbg !2402

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2406
  br i1 %45, label %92, label %46, !dbg !2409

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2406, !tbaa !1079
  br label %92, !dbg !2406

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.125, i64 0, i64 0), i32 %27), !dbg !2410
  call void @llvm.dbg.value(metadata i8* %48, metadata !2325, metadata !DIExpression()), !dbg !2388
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), i32 %27), !dbg !2414
  call void @llvm.dbg.value(metadata i8* %49, metadata !2326, metadata !DIExpression()), !dbg !2388
  br label %50, !dbg !2415

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2326, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %51, metadata !2325, metadata !DIExpression()), !dbg !2388
  %53 = and i8 %35, 1, !dbg !2416
  %54 = icmp eq i8 %53, 0, !dbg !2416
  br i1 %54, label %55, label %70, !dbg !2418

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2330, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 0, metadata !2328, metadata !DIExpression()), !dbg !2388
  %56 = load i8, i8* %51, align 1, !dbg !2419, !tbaa !1079
  %57 = icmp eq i8 %56, 0, !dbg !2422
  br i1 %57, label %70, label %58, !dbg !2422

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2330, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %61, metadata !2328, metadata !DIExpression()), !dbg !2388
  %62 = icmp ult i64 %61, %39, !dbg !2423
  br i1 %62, label %63, label %65, !dbg !2426

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2423
  store i8 %59, i8* %64, align 1, !dbg !2423, !tbaa !1079
  br label %65, !dbg !2423

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %66, metadata !2328, metadata !DIExpression()), !dbg !2388
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2427
  call void @llvm.dbg.value(metadata i8* %67, metadata !2330, metadata !DIExpression()), !dbg !2388
  %68 = load i8, i8* %67, align 1, !dbg !2419, !tbaa !1079
  %69 = icmp eq i8 %68, 0, !dbg !2422
  br i1 %69, label %70, label %58, !dbg !2422, !llvm.loop !2428

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2430
  call void @llvm.dbg.value(metadata i64 %71, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 1, metadata !2332, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %52, metadata !2330, metadata !DIExpression()), !dbg !2388
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #30, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %72, metadata !2331, metadata !DIExpression()), !dbg !2388
  br label %92, !dbg !2432

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2332, metadata !DIExpression()), !dbg !2388
  br label %74, !dbg !2433

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2388
  call void @llvm.dbg.value(metadata i8 %75, metadata !2332, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 1, metadata !2334, metadata !DIExpression()), !dbg !2388
  br label %76, !dbg !2434

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2396
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2388
  call void @llvm.dbg.value(metadata i8 %78, metadata !2334, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %77, metadata !2332, metadata !DIExpression()), !dbg !2388
  %79 = and i8 %78, 1, !dbg !2435
  %80 = icmp eq i8 %79, 0, !dbg !2435
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2437
  br label %82, !dbg !2437

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2388
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2391
  call void @llvm.dbg.value(metadata i8 %84, metadata !2334, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %83, metadata !2332, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 2, metadata !2322, metadata !DIExpression()), !dbg !2388
  %85 = and i8 %84, 1, !dbg !2438
  %86 = icmp eq i8 %85, 0, !dbg !2438
  br i1 %86, label %87, label %92, !dbg !2440

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2441
  br i1 %88, label %92, label %89, !dbg !2444

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2441, !tbaa !1079
  br label %92, !dbg !2441

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2334, metadata !DIExpression()), !dbg !2388
  br label %92, !dbg !2445

91:                                               ; preds = %26
  call void @abort() #31, !dbg !2446
  unreachable, !dbg !2446

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2430
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.127, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.127, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.127, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.127, i64 0, i64 0), %40 ], !dbg !2388
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2388
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2388
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2388
  call void @llvm.dbg.value(metadata i8 %100, metadata !2334, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %99, metadata !2332, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %98, metadata !2331, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %97, metadata !2330, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %96, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %95, metadata !2326, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %94, metadata !2325, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 %93, metadata !2322, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 0, metadata !2327, metadata !DIExpression()), !dbg !2388
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
  br label %121, !dbg !2447

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2448
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2430
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2393
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2397
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2398
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2399
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2319, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %128, metadata !2337, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %127, metadata !2336, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %126, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %125, metadata !2321, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %124, metadata !2329, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %122, metadata !2327, metadata !DIExpression()), !dbg !2388
  %130 = icmp eq i64 %125, -1, !dbg !2449
  br i1 %130, label %131, label %135, !dbg !2450

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2451
  %133 = load i8, i8* %132, align 1, !dbg !2451, !tbaa !1079
  %134 = icmp eq i8 %133, 0, !dbg !2452
  br i1 %134, label %587, label %137, !dbg !2453

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2454
  br i1 %136, label %587, label %137, !dbg !2453

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 0, metadata !2345, metadata !DIExpression()), !dbg !2455
  br i1 %106, label %138, label %153, !dbg !2456

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2458
  %140 = and i1 %107, %130, !dbg !2459
  br i1 %140, label %141, label %143, !dbg !2459

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #30, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %142, metadata !2321, metadata !DIExpression()), !dbg !2388
  br label %143, !dbg !2461

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2461
  call void @llvm.dbg.value(metadata i64 %144, metadata !2321, metadata !DIExpression()), !dbg !2388
  %145 = icmp ugt i64 %139, %144, !dbg !2462
  br i1 %145, label %153, label %146, !dbg !2463

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2464
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2465
  %149 = icmp ne i32 %148, 0, !dbg !2466
  %150 = or i1 %149, %109, !dbg !2467
  %151 = xor i1 %149, true, !dbg !2467
  %152 = zext i1 %151 to i8, !dbg !2467
  br i1 %150, label %153, label %646, !dbg !2467

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2455
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2455
  call void @llvm.dbg.value(metadata i8 %156, metadata !2343, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i64 %154, metadata !2321, metadata !DIExpression()), !dbg !2388
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2468
  %158 = load i8, i8* %157, align 1, !dbg !2468, !tbaa !1079
  call void @llvm.dbg.value(metadata i8 %158, metadata !2338, metadata !DIExpression()), !dbg !2455
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
  ], !dbg !2469

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2470

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2471

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2344, metadata !DIExpression()), !dbg !2455
  %162 = and i8 %126, 1, !dbg !2475
  %163 = icmp eq i8 %162, 0, !dbg !2475
  %164 = and i1 %110, %163, !dbg !2475
  br i1 %164, label %165, label %181, !dbg !2475

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2477
  br i1 %166, label %167, label %169, !dbg !2481

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2477
  store i8 39, i8* %168, align 1, !dbg !2477, !tbaa !1079
  br label %169, !dbg !2477

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2481
  call void @llvm.dbg.value(metadata i64 %170, metadata !2328, metadata !DIExpression()), !dbg !2388
  %171 = icmp ult i64 %170, %129, !dbg !2482
  br i1 %171, label %172, label %174, !dbg !2485

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2482
  store i8 36, i8* %173, align 1, !dbg !2482, !tbaa !1079
  br label %174, !dbg !2482

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %175, metadata !2328, metadata !DIExpression()), !dbg !2388
  %176 = icmp ult i64 %175, %129, !dbg !2486
  br i1 %176, label %177, label %179, !dbg !2489

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2486
  store i8 39, i8* %178, align 1, !dbg !2486, !tbaa !1079
  br label %179, !dbg !2486

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2489
  call void @llvm.dbg.value(metadata i64 %180, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 1, metadata !2335, metadata !DIExpression()), !dbg !2388
  br label %181, !dbg !2490

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2388
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2388
  call void @llvm.dbg.value(metadata i8 %183, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %182, metadata !2328, metadata !DIExpression()), !dbg !2388
  %184 = icmp ult i64 %182, %129, !dbg !2491
  br i1 %184, label %185, label %187, !dbg !2494

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2491
  store i8 92, i8* %186, align 1, !dbg !2491, !tbaa !1079
  br label %187, !dbg !2491

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2494
  call void @llvm.dbg.value(metadata i64 %188, metadata !2328, metadata !DIExpression()), !dbg !2388
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2495
  br i1 %191, label %192, label %473, !dbg !2495

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2497
  %194 = load i8, i8* %193, align 1, !dbg !2497, !tbaa !1079
  %195 = add i8 %194, -48, !dbg !2498
  %196 = icmp ult i8 %195, 10, !dbg !2498
  br i1 %196, label %197, label %473, !dbg !2498

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2499
  br i1 %198, label %199, label %201, !dbg !2503

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2499
  store i8 48, i8* %200, align 1, !dbg !2499, !tbaa !1079
  br label %201, !dbg !2499

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %202, metadata !2328, metadata !DIExpression()), !dbg !2388
  %203 = icmp ult i64 %202, %129, !dbg !2504
  br i1 %203, label %204, label %206, !dbg !2507

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2504
  store i8 48, i8* %205, align 1, !dbg !2504, !tbaa !1079
  br label %206, !dbg !2504

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %207, metadata !2328, metadata !DIExpression()), !dbg !2388
  br label %473, !dbg !2508

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2509

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2510

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2511

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2513
  br i1 %214, label %215, label %473, !dbg !2513

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2515
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2516
  %218 = load i8, i8* %217, align 1, !dbg !2516, !tbaa !1079
  %219 = icmp eq i8 %218, 63, !dbg !2517
  br i1 %219, label %220, label %473, !dbg !2518

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2519
  %222 = load i8, i8* %221, align 1, !dbg !2519, !tbaa !1079
  %223 = sext i8 %222 to i32, !dbg !2519
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
  ], !dbg !2520

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2521

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2338, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i64 undef, metadata !2327, metadata !DIExpression()), !dbg !2388
  %226 = icmp ult i64 %123, %129, !dbg !2523
  br i1 %226, label %227, label %229, !dbg !2526

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2523
  store i8 63, i8* %228, align 1, !dbg !2523, !tbaa !1079
  br label %229, !dbg !2523

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %230, metadata !2328, metadata !DIExpression()), !dbg !2388
  %231 = icmp ult i64 %230, %129, !dbg !2527
  br i1 %231, label %232, label %234, !dbg !2530

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2527
  store i8 34, i8* %233, align 1, !dbg !2527, !tbaa !1079
  br label %234, !dbg !2527

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %235, metadata !2328, metadata !DIExpression()), !dbg !2388
  %236 = icmp ult i64 %235, %129, !dbg !2531
  br i1 %236, label %237, label %239, !dbg !2534

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2531
  store i8 34, i8* %238, align 1, !dbg !2531, !tbaa !1079
  br label %239, !dbg !2531

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %240, metadata !2328, metadata !DIExpression()), !dbg !2388
  %241 = icmp ult i64 %240, %129, !dbg !2535
  br i1 %241, label %242, label %244, !dbg !2538

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2535
  store i8 63, i8* %243, align 1, !dbg !2535, !tbaa !1079
  br label %244, !dbg !2535

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %245, metadata !2328, metadata !DIExpression()), !dbg !2388
  br label %473, !dbg !2539

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2342, metadata !DIExpression()), !dbg !2455
  br label %256, !dbg !2540

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2342, metadata !DIExpression()), !dbg !2455
  br label %256, !dbg !2541

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2342, metadata !DIExpression()), !dbg !2455
  br label %254, !dbg !2542

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2342, metadata !DIExpression()), !dbg !2455
  br label %254, !dbg !2543

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2342, metadata !DIExpression()), !dbg !2455
  br label %256, !dbg !2544

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2342, metadata !DIExpression()), !dbg !2455
  br i1 %110, label %252, label %253, !dbg !2545

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2546

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2549

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2551
  call void @llvm.dbg.value(metadata i8 %255, metadata !2342, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.label(metadata !2383), !dbg !2552
  br i1 %111, label %256, label %631, !dbg !2553

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2551
  call void @llvm.dbg.value(metadata i8 %257, metadata !2342, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.label(metadata !2384), !dbg !2555
  br i1 %102, label %495, label %473, !dbg !2556

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2557

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2558, !tbaa !1079
  %261 = icmp eq i8 %260, 0, !dbg !2560
  br i1 %261, label %262, label %473, !dbg !2561

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2562
  br i1 %263, label %264, label %473, !dbg !2564

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2345, metadata !DIExpression()), !dbg !2455
  br label %265, !dbg !2565

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2455
  call void @llvm.dbg.value(metadata i8 %266, metadata !2345, metadata !DIExpression()), !dbg !2455
  br i1 %111, label %473, label %631, !dbg !2566

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2336, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 1, metadata !2345, metadata !DIExpression()), !dbg !2455
  br i1 %110, label %268, label %473, !dbg !2568

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2569

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2572
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2574
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2574
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2574
  call void @llvm.dbg.value(metadata i64 %274, metadata !2319, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %273, metadata !2329, metadata !DIExpression()), !dbg !2388
  %275 = icmp ult i64 %123, %274, !dbg !2575
  br i1 %275, label %276, label %278, !dbg !2578

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2575
  store i8 39, i8* %277, align 1, !dbg !2575, !tbaa !1079
  br label %278, !dbg !2575

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %279, metadata !2328, metadata !DIExpression()), !dbg !2388
  %280 = icmp ult i64 %279, %274, !dbg !2579
  br i1 %280, label %281, label %283, !dbg !2582

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2579
  store i8 92, i8* %282, align 1, !dbg !2579, !tbaa !1079
  br label %283, !dbg !2579

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %284, metadata !2328, metadata !DIExpression()), !dbg !2388
  %285 = icmp ult i64 %284, %274, !dbg !2583
  br i1 %285, label %286, label %288, !dbg !2586

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2583
  store i8 39, i8* %287, align 1, !dbg !2583, !tbaa !1079
  br label %288, !dbg !2583

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %289, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2335, metadata !DIExpression()), !dbg !2388
  br label %473, !dbg !2587

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2588

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2346, metadata !DIExpression()), !dbg !2589
  %292 = tail call i16** @__ctype_b_loc() #32, !dbg !2590
  %293 = load i16*, i16** %292, align 8, !dbg !2590, !tbaa !704
  %294 = zext i8 %158 to i64, !dbg !2590
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2590
  %296 = load i16, i16* %295, align 2, !dbg !2590, !tbaa !1080
  %297 = lshr i16 %296, 14, !dbg !2592
  %298 = trunc i16 %297 to i8, !dbg !2592
  %299 = and i8 %298, 1, !dbg !2592
  call void @llvm.dbg.value(metadata i8 %354, metadata !2349, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %355, metadata !2346, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %306, metadata !2321, metadata !DIExpression()), !dbg !2388
  %300 = icmp eq i8 %299, 0, !dbg !2593
  call void @llvm.dbg.value(metadata i1 %357, metadata !2345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2455
  br label %359, !dbg !2594

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #29, !dbg !2595
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2350, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8* %23, metadata !2597, metadata !DIExpression()) #29, !dbg !2604
  call void @llvm.dbg.value(metadata i32 0, metadata !2602, metadata !DIExpression()) #29, !dbg !2604
  call void @llvm.dbg.value(metadata i64 8, metadata !2603, metadata !DIExpression()) #29, !dbg !2604
  store i64 0, i64* %10, align 8, !dbg !2606
  call void @llvm.dbg.value(metadata i64 0, metadata !2346, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 1, metadata !2349, metadata !DIExpression()), !dbg !2589
  %302 = icmp eq i64 %154, -1, !dbg !2607
  br i1 %302, label %303, label %305, !dbg !2609

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #30, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %304, metadata !2321, metadata !DIExpression()), !dbg !2388
  br label %305, !dbg !2611

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2455
  call void @llvm.dbg.value(metadata i64 %306, metadata !2321, metadata !DIExpression()), !dbg !2388
  br label %307, !dbg !2612

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2613
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2614
  call void @llvm.dbg.value(metadata i8 %309, metadata !2349, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %308, metadata !2346, metadata !DIExpression()), !dbg !2589
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2615
  %310 = add i64 %308, %122, !dbg !2616
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2617
  %312 = sub i64 %306, %310, !dbg !2618
  call void @llvm.dbg.value(metadata i32* %12, metadata !2368, metadata !DIExpression(DW_OP_deref)), !dbg !2619
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #29, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %313, metadata !2371, metadata !DIExpression()), !dbg !2619
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2621

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2346, metadata !DIExpression()), !dbg !2589
  %315 = icmp ugt i64 %306, %310, !dbg !2622
  br i1 %315, label %316, label %341, !dbg !2624

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2625
  br label %318, !dbg !2625

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2346, metadata !DIExpression()), !dbg !2589
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2626
  %322 = load i8, i8* %321, align 1, !dbg !2626, !tbaa !1079
  %323 = icmp eq i8 %322, 0, !dbg !2624
  br i1 %323, label %341, label %324, !dbg !2625

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2627
  call void @llvm.dbg.value(metadata i64 %325, metadata !2346, metadata !DIExpression()), !dbg !2589
  %326 = add i64 %325, %122, !dbg !2628
  %327 = icmp ult i64 %326, %306, !dbg !2622
  br i1 %327, label %318, label %341, !dbg !2624, !llvm.loop !2629

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2630
  call void @llvm.dbg.value(metadata i64 1, metadata !2372, metadata !DIExpression()), !dbg !2631
  br i1 %330, label %331, label %344, !dbg !2630

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2372, metadata !DIExpression()), !dbg !2631
  %333 = add i64 %332, %310, !dbg !2632
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2635
  %335 = load i8, i8* %334, align 1, !dbg !2635, !tbaa !1079
  %336 = sext i8 %335 to i32, !dbg !2635
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2636

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %338, metadata !2372, metadata !DIExpression()), !dbg !2631
  %339 = icmp eq i64 %338, %313, !dbg !2638
  br i1 %339, label %344, label %331, !dbg !2639, !llvm.loop !2640

340:                                              ; preds = %307
  br label %341, !dbg !2642

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2349, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 undef, metadata !2346, metadata !DIExpression()), !dbg !2589
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2642
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2643, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %345, metadata !2368, metadata !DIExpression()), !dbg !2619
  %346 = call i32 @iswprint(i32 %345) #29, !dbg !2645
  %347 = icmp eq i32 %346, 0, !dbg !2645
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2646
  call void @llvm.dbg.value(metadata i8 %348, metadata !2349, metadata !DIExpression()), !dbg !2589
  %349 = add i64 %313, %308, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %349, metadata !2346, metadata !DIExpression()), !dbg !2589
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2642
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #30, !dbg !2648
  %351 = icmp eq i32 %350, 0, !dbg !2649
  br i1 %351, label %307, label %353, !dbg !2650, !llvm.loop !2651

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2349, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 undef, metadata !2346, metadata !DIExpression()), !dbg !2589
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2642
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #29, !dbg !2653
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #29, !dbg !2653
  call void @llvm.dbg.value(metadata i8 %354, metadata !2349, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %355, metadata !2346, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %306, metadata !2321, metadata !DIExpression()), !dbg !2388
  %356 = and i8 %354, 1, !dbg !2593
  %357 = icmp eq i8 %356, 0, !dbg !2593
  call void @llvm.dbg.value(metadata i1 %357, metadata !2345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2455
  %358 = icmp ugt i64 %355, 1, !dbg !2654
  br i1 %358, label %367, label %359, !dbg !2594

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2655
  br i1 %364, label %367, label %365, !dbg !2655

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2455
  call void @llvm.dbg.value(metadata i8 %472, metadata !2345, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %441, metadata !2344, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %440, metadata !2343, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %439, metadata !2338, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %438, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %371, metadata !2321, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %437, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %375, metadata !2327, metadata !DIExpression()), !dbg !2388
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %372, metadata !2379, metadata !DIExpression()), !dbg !2657
  %373 = and i1 %102, %368
  br label %374, !dbg !2658

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2448
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2388
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2397
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2455
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2455
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2659
  call void @llvm.dbg.value(metadata i8 %380, metadata !2344, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %379, metadata !2343, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %378, metadata !2338, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %377, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %376, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %375, metadata !2327, metadata !DIExpression()), !dbg !2388
  br i1 %373, label %381, label %427, !dbg !2660

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2665

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2344, metadata !DIExpression()), !dbg !2455
  %383 = and i8 %377, 1, !dbg !2668
  %384 = icmp eq i8 %383, 0, !dbg !2668
  %385 = and i1 %110, %384, !dbg !2668
  br i1 %385, label %386, label %402, !dbg !2668

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2670
  br i1 %387, label %388, label %390, !dbg !2674

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2670
  store i8 39, i8* %389, align 1, !dbg !2670, !tbaa !1079
  br label %390, !dbg !2670

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %391, metadata !2328, metadata !DIExpression()), !dbg !2388
  %392 = icmp ult i64 %391, %129, !dbg !2675
  br i1 %392, label %393, label %395, !dbg !2678

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2675
  store i8 36, i8* %394, align 1, !dbg !2675, !tbaa !1079
  br label %395, !dbg !2675

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %396, metadata !2328, metadata !DIExpression()), !dbg !2388
  %397 = icmp ult i64 %396, %129, !dbg !2679
  br i1 %397, label %398, label %400, !dbg !2682

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2679
  store i8 39, i8* %399, align 1, !dbg !2679, !tbaa !1079
  br label %400, !dbg !2679

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2682
  call void @llvm.dbg.value(metadata i64 %401, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 1, metadata !2335, metadata !DIExpression()), !dbg !2388
  br label %402, !dbg !2683

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2388
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2388
  call void @llvm.dbg.value(metadata i8 %404, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %403, metadata !2328, metadata !DIExpression()), !dbg !2388
  %405 = icmp ult i64 %403, %129, !dbg !2684
  br i1 %405, label %406, label %408, !dbg !2687

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2684
  store i8 92, i8* %407, align 1, !dbg !2684, !tbaa !1079
  br label %408, !dbg !2684

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2687
  call void @llvm.dbg.value(metadata i64 %409, metadata !2328, metadata !DIExpression()), !dbg !2388
  %410 = icmp ult i64 %409, %129, !dbg !2688
  br i1 %410, label %411, label %415, !dbg !2691

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2688
  %413 = or i8 %412, 48, !dbg !2688
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2688
  store i8 %413, i8* %414, align 1, !dbg !2688, !tbaa !1079
  br label %415, !dbg !2688

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %416, metadata !2328, metadata !DIExpression()), !dbg !2388
  %417 = icmp ult i64 %416, %129, !dbg !2692
  br i1 %417, label %418, label %423, !dbg !2695

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2692
  %420 = and i8 %419, 7, !dbg !2692
  %421 = or i8 %420, 48, !dbg !2692
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2692
  store i8 %421, i8* %422, align 1, !dbg !2692, !tbaa !1079
  br label %423, !dbg !2692

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %424, metadata !2328, metadata !DIExpression()), !dbg !2388
  %425 = and i8 %378, 7, !dbg !2696
  %426 = or i8 %425, 48, !dbg !2697
  call void @llvm.dbg.value(metadata i8 %426, metadata !2338, metadata !DIExpression()), !dbg !2455
  br label %436, !dbg !2698

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2699
  %429 = icmp eq i8 %428, 0, !dbg !2699
  br i1 %429, label %436, label %430, !dbg !2701

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2702
  br i1 %431, label %432, label %434, !dbg !2706

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2702
  store i8 92, i8* %433, align 1, !dbg !2702, !tbaa !1079
  br label %434, !dbg !2702

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2706
  call void @llvm.dbg.value(metadata i64 %435, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2455
  br label %436, !dbg !2707

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2388
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2397
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2455
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2455
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2455
  call void @llvm.dbg.value(metadata i8 %441, metadata !2344, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %440, metadata !2343, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %439, metadata !2338, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %438, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %437, metadata !2328, metadata !DIExpression()), !dbg !2388
  %442 = add i64 %375, 1, !dbg !2708
  %443 = icmp ugt i64 %372, %442, !dbg !2710
  br i1 %443, label %444, label %471, !dbg !2711

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2712
  %446 = icmp ne i8 %445, 0, !dbg !2712
  %447 = and i8 %441, 1, !dbg !2712
  %448 = icmp eq i8 %447, 0, !dbg !2712
  %449 = and i1 %446, %448, !dbg !2712
  br i1 %449, label %450, label %461, !dbg !2712

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2715
  br i1 %451, label %452, label %454, !dbg !2719

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2715
  store i8 39, i8* %453, align 1, !dbg !2715, !tbaa !1079
  br label %454, !dbg !2715

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2719
  call void @llvm.dbg.value(metadata i64 %455, metadata !2328, metadata !DIExpression()), !dbg !2388
  %456 = icmp ult i64 %455, %129, !dbg !2720
  br i1 %456, label %457, label %459, !dbg !2723

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2720
  store i8 39, i8* %458, align 1, !dbg !2720, !tbaa !1079
  br label %459, !dbg !2720

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %460, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2335, metadata !DIExpression()), !dbg !2388
  br label %461, !dbg !2724

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2725
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2388
  call void @llvm.dbg.value(metadata i8 %463, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %462, metadata !2328, metadata !DIExpression()), !dbg !2388
  %464 = icmp ult i64 %462, %129, !dbg !2726
  br i1 %464, label %465, label %467, !dbg !2729

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2726
  store i8 %439, i8* %466, align 1, !dbg !2726, !tbaa !1079
  br label %467, !dbg !2726

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2729
  call void @llvm.dbg.value(metadata i64 %468, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %442, metadata !2327, metadata !DIExpression()), !dbg !2388
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2730
  %470 = load i8, i8* %469, align 1, !dbg !2730, !tbaa !1079
  call void @llvm.dbg.value(metadata i8 %470, metadata !2338, metadata !DIExpression()), !dbg !2455
  br label %374, !dbg !2731, !llvm.loop !2732

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2455
  call void @llvm.dbg.value(metadata i8 %472, metadata !2345, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %441, metadata !2344, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %440, metadata !2343, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %439, metadata !2338, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %438, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %371, metadata !2321, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %437, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %375, metadata !2327, metadata !DIExpression()), !dbg !2388
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2448
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2388
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2393
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2735
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2388
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2388
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2455
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2455
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2455
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2319, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %482, metadata !2345, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %481, metadata !2344, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %156, metadata !2343, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %480, metadata !2338, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %479, metadata !2336, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %478, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %477, metadata !2321, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %476, metadata !2329, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %475, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %474, metadata !2327, metadata !DIExpression()), !dbg !2388
  br i1 %116, label %494, label %484, !dbg !2736

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2738
  %486 = zext i8 %485 to i64, !dbg !2738
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2739
  %488 = load i32, i32* %487, align 4, !dbg !2739, !tbaa !979
  %489 = and i8 %480, 31, !dbg !2740
  %490 = zext i8 %489 to i32, !dbg !2740
  %491 = shl nuw i32 1, %490, !dbg !2741
  %492 = and i32 %488, %491, !dbg !2741
  %493 = icmp eq i32 %492, 0, !dbg !2741
  br i1 %493, label %494, label %495, !dbg !2742

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2743

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2744
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2388
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2393
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2735
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2397
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2398
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2455
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2455
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2319, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %503, metadata !2345, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %502, metadata !2338, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %501, metadata !2336, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %500, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %499, metadata !2321, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %498, metadata !2329, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %497, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %496, metadata !2327, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.label(metadata !2385), !dbg !2745
  br i1 %109, label %505, label %635, !dbg !2746

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2344, metadata !DIExpression()), !dbg !2455
  %506 = and i8 %500, 1, !dbg !2748
  %507 = icmp eq i8 %506, 0, !dbg !2748
  %508 = and i1 %110, %507, !dbg !2748
  br i1 %508, label %509, label %525, !dbg !2748

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2750
  br i1 %510, label %511, label %513, !dbg !2754

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2750
  store i8 39, i8* %512, align 1, !dbg !2750, !tbaa !1079
  br label %513, !dbg !2750

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2754
  call void @llvm.dbg.value(metadata i64 %514, metadata !2328, metadata !DIExpression()), !dbg !2388
  %515 = icmp ult i64 %514, %504, !dbg !2755
  br i1 %515, label %516, label %518, !dbg !2758

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2755
  store i8 36, i8* %517, align 1, !dbg !2755, !tbaa !1079
  br label %518, !dbg !2755

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %519, metadata !2328, metadata !DIExpression()), !dbg !2388
  %520 = icmp ult i64 %519, %504, !dbg !2759
  br i1 %520, label %521, label %523, !dbg !2762

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2759
  store i8 39, i8* %522, align 1, !dbg !2759, !tbaa !1079
  br label %523, !dbg !2759

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2762
  call void @llvm.dbg.value(metadata i64 %524, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 1, metadata !2335, metadata !DIExpression()), !dbg !2388
  br label %525, !dbg !2763

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2455
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2388
  call void @llvm.dbg.value(metadata i8 %527, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %526, metadata !2328, metadata !DIExpression()), !dbg !2388
  %528 = icmp ult i64 %526, %504, !dbg !2764
  br i1 %528, label %529, label %531, !dbg !2767

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2764
  store i8 92, i8* %530, align 1, !dbg !2764, !tbaa !1079
  br label %531, !dbg !2764

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2767
  call void @llvm.dbg.value(metadata i64 %543, metadata !2319, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %542, metadata !2345, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %541, metadata !2344, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %540, metadata !2338, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %539, metadata !2336, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %538, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %537, metadata !2321, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %536, metadata !2329, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %535, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %534, metadata !2327, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.label(metadata !2386), !dbg !2768
  br label %560, !dbg !2769

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2744
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2388
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2393
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2735
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2397
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2398
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2772
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2455
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2455
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2319, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %542, metadata !2345, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %541, metadata !2344, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %540, metadata !2338, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 %539, metadata !2336, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %538, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %537, metadata !2321, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %536, metadata !2329, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %535, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %534, metadata !2327, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.label(metadata !2386), !dbg !2768
  %544 = and i8 %538, 1, !dbg !2769
  %545 = icmp ne i8 %544, 0, !dbg !2769
  %546 = and i8 %541, 1, !dbg !2769
  %547 = icmp eq i8 %546, 0, !dbg !2769
  %548 = and i1 %545, %547, !dbg !2769
  br i1 %548, label %549, label %560, !dbg !2769

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2773
  br i1 %550, label %551, label %553, !dbg !2777

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2773
  store i8 39, i8* %552, align 1, !dbg !2773, !tbaa !1079
  br label %553, !dbg !2773

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %554, metadata !2328, metadata !DIExpression()), !dbg !2388
  %555 = icmp ult i64 %554, %543, !dbg !2778
  br i1 %555, label %556, label %558, !dbg !2781

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2778
  store i8 39, i8* %557, align 1, !dbg !2778, !tbaa !1079
  br label %558, !dbg !2778

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %559, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2335, metadata !DIExpression()), !dbg !2388
  br label %560, !dbg !2782

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2455
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2388
  call void @llvm.dbg.value(metadata i8 %569, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %568, metadata !2328, metadata !DIExpression()), !dbg !2388
  %570 = icmp ult i64 %568, %561, !dbg !2783
  br i1 %570, label %571, label %573, !dbg !2786

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2783
  store i8 %563, i8* %572, align 1, !dbg !2783, !tbaa !1079
  br label %573, !dbg !2783

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2786
  call void @llvm.dbg.value(metadata i64 %574, metadata !2328, metadata !DIExpression()), !dbg !2388
  %575 = icmp eq i8 %562, 0, !dbg !2787
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2789
  call void @llvm.dbg.value(metadata i8 %576, metadata !2337, metadata !DIExpression()), !dbg !2388
  br label %577, !dbg !2790

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2744
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2388
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2393
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2735
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2397
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2388
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2399
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2319, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %584, metadata !2337, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %583, metadata !2336, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %582, metadata !2335, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %581, metadata !2321, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %580, metadata !2329, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %579, metadata !2328, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %578, metadata !2327, metadata !DIExpression()), !dbg !2388
  %586 = add i64 %578, 1, !dbg !2791
  call void @llvm.dbg.value(metadata i64 %586, metadata !2327, metadata !DIExpression()), !dbg !2388
  br label %121, !dbg !2792, !llvm.loop !2793

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2795
  %590 = and i1 %110, %589, !dbg !2797
  %591 = xor i1 %590, true, !dbg !2797
  %592 = or i1 %109, %591, !dbg !2797
  br i1 %592, label %593, label %635, !dbg !2797

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2798
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2798
  br i1 %597, label %598, label %607, !dbg !2798

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2800
  %600 = icmp eq i8 %599, 0, !dbg !2800
  br i1 %600, label %603, label %601, !dbg !2803

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2804
  br label %652, !dbg !2805

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2806
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2808
  br i1 %606, label %26, label %607, !dbg !2808

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2809
  %610 = and i1 %609, %608, !dbg !2811
  br i1 %610, label %611, label %626, !dbg !2811

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2330, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %123, metadata !2328, metadata !DIExpression()), !dbg !2388
  %612 = load i8, i8* %97, align 1, !dbg !2812, !tbaa !1079
  %613 = icmp eq i8 %612, 0, !dbg !2815
  br i1 %613, label %626, label %614, !dbg !2815

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2330, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %617, metadata !2328, metadata !DIExpression()), !dbg !2388
  %618 = icmp ult i64 %617, %129, !dbg !2816
  br i1 %618, label %619, label %621, !dbg !2819

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2816
  store i8 %615, i8* %620, align 1, !dbg !2816, !tbaa !1079
  br label %621, !dbg !2816

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2819
  call void @llvm.dbg.value(metadata i64 %622, metadata !2328, metadata !DIExpression()), !dbg !2388
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2820
  call void @llvm.dbg.value(metadata i8* %623, metadata !2330, metadata !DIExpression()), !dbg !2388
  %624 = load i8, i8* %623, align 1, !dbg !2812, !tbaa !1079
  %625 = icmp eq i8 %624, 0, !dbg !2815
  br i1 %625, label %626, label %614, !dbg !2815, !llvm.loop !2821

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2430
  call void @llvm.dbg.value(metadata i64 %627, metadata !2328, metadata !DIExpression()), !dbg !2388
  %628 = icmp ult i64 %627, %129, !dbg !2823
  br i1 %628, label %629, label %652, !dbg !2825

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2826
  store i8 0, i8* %630, align 1, !dbg !2827, !tbaa !1079
  br label %652, !dbg !2826

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2319, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %637, metadata !2321, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.label(metadata !2387), !dbg !2828
  %633 = icmp eq i8 %101, 0, !dbg !2829
  %634 = select i1 %633, i32 2, i32 4, !dbg !2829
  br label %642, !dbg !2829

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2319, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %637, metadata !2321, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.label(metadata !2387), !dbg !2828
  %639 = icmp eq i32 %93, 2, !dbg !2831
  %640 = icmp eq i8 %636, 0, !dbg !2829
  %641 = select i1 %640, i32 2, i32 4, !dbg !2829
  br i1 %639, label %642, label %646, !dbg !2829

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2829

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2322, metadata !DIExpression()), !dbg !2388
  %650 = and i32 %5, -3, !dbg !2832
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2833
  br label %652, !dbg !2834

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2835
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2836 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2840, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i32 %1, metadata !2841, metadata !DIExpression()), !dbg !2844
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #29, !dbg !2845
  call void @llvm.dbg.value(metadata i8* %3, metadata !2842, metadata !DIExpression()), !dbg !2844
  %4 = icmp eq i8* %3, %0, !dbg !2846
  br i1 %4, label %5, label %72, !dbg !2848

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #29, !dbg !2849
  call void @llvm.dbg.value(metadata i8* %6, metadata !2843, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %6, metadata !2850, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8* undef, metadata !2856, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 85, metadata !2857, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 84, metadata !2858, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 70, metadata !2859, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 45, metadata !2860, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 56, metadata !2861, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 0, metadata !2862, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 0, metadata !2863, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 0, metadata !2864, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 0, metadata !2865, metadata !DIExpression()), !dbg !2866
  %7 = load i8, i8* %6, align 1, !dbg !2869, !tbaa !1079
  %8 = and i8 %7, -33, !dbg !2869
  %9 = sext i8 %8 to i32, !dbg !2869
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2869

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2871, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8* undef, metadata !2876, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 84, metadata !2877, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 70, metadata !2878, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 45, metadata !2879, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 56, metadata !2880, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 0, metadata !2881, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 0, metadata !2882, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 0, metadata !2883, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 0, metadata !2884, metadata !DIExpression()), !dbg !2885
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2889
  %12 = load i8, i8* %11, align 1, !dbg !2889, !tbaa !1079
  %13 = and i8 %12, -33, !dbg !2889
  %14 = icmp eq i8 %13, 84, !dbg !2889
  br i1 %14, label %15, label %69, !dbg !2889

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2891, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8* undef, metadata !2896, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8 70, metadata !2897, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8 45, metadata !2898, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8 56, metadata !2899, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8 0, metadata !2900, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8 0, metadata !2901, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8 0, metadata !2902, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8 0, metadata !2903, metadata !DIExpression()), !dbg !2904
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2908
  %17 = load i8, i8* %16, align 1, !dbg !2908, !tbaa !1079
  %18 = and i8 %17, -33, !dbg !2908
  %19 = icmp eq i8 %18, 70, !dbg !2908
  br i1 %19, label %20, label %69, !dbg !2908

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2910, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8* undef, metadata !2915, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 45, metadata !2916, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 56, metadata !2917, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 0, metadata !2918, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 0, metadata !2919, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 0, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 0, metadata !2921, metadata !DIExpression()), !dbg !2922
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2926
  %22 = load i8, i8* %21, align 1, !dbg !2926, !tbaa !1079
  %23 = icmp eq i8 %22, 45, !dbg !2926
  br i1 %23, label %24, label %69, !dbg !2928

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2929, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8* undef, metadata !2934, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8 56, metadata !2935, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8 0, metadata !2936, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8 0, metadata !2937, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8 0, metadata !2938, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8 0, metadata !2939, metadata !DIExpression()), !dbg !2940
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2944
  %26 = load i8, i8* %25, align 1, !dbg !2944, !tbaa !1079
  %27 = icmp eq i8 %26, 56, !dbg !2944
  br i1 %27, label %28, label %69, !dbg !2946

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2947, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i8* undef, metadata !2952, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i8 0, metadata !2953, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i8 0, metadata !2954, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i8 0, metadata !2955, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i8 0, metadata !2956, metadata !DIExpression()), !dbg !2957
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2961
  %30 = load i8, i8* %29, align 1, !dbg !2961, !tbaa !1079
  %31 = icmp eq i8 %30, 0, !dbg !2961
  br i1 %31, label %32, label %69, !dbg !2963

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2964, !tbaa !1079
  %34 = icmp eq i8 %33, 96, !dbg !2965
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.128, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.129, i64 0, i64 0), !dbg !2964
  br label %72, !dbg !2966

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2871, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8* undef, metadata !2876, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 66, metadata !2877, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 49, metadata !2878, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 56, metadata !2879, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 48, metadata !2880, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 51, metadata !2881, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 48, metadata !2882, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 0, metadata !2883, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 0, metadata !2884, metadata !DIExpression()), !dbg !2967
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2971
  %38 = load i8, i8* %37, align 1, !dbg !2971, !tbaa !1079
  %39 = and i8 %38, -33, !dbg !2971
  %40 = icmp eq i8 %39, 66, !dbg !2971
  br i1 %40, label %41, label %69, !dbg !2971

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2891, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* undef, metadata !2896, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 49, metadata !2897, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 56, metadata !2898, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 48, metadata !2899, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 51, metadata !2900, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 48, metadata !2901, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 0, metadata !2902, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 0, metadata !2903, metadata !DIExpression()), !dbg !2972
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2974
  %43 = load i8, i8* %42, align 1, !dbg !2974, !tbaa !1079
  %44 = icmp eq i8 %43, 49, !dbg !2974
  br i1 %44, label %45, label %69, !dbg !2975

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2910, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8* undef, metadata !2915, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 56, metadata !2916, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 48, metadata !2917, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 51, metadata !2918, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 48, metadata !2919, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 0, metadata !2920, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 0, metadata !2921, metadata !DIExpression()), !dbg !2976
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2978
  %47 = load i8, i8* %46, align 1, !dbg !2978, !tbaa !1079
  %48 = icmp eq i8 %47, 56, !dbg !2978
  br i1 %48, label %49, label %69, !dbg !2979

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2929, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i8* undef, metadata !2934, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i8 48, metadata !2935, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i8 51, metadata !2936, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i8 48, metadata !2937, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i8 0, metadata !2938, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i8 0, metadata !2939, metadata !DIExpression()), !dbg !2980
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2982
  %51 = load i8, i8* %50, align 1, !dbg !2982, !tbaa !1079
  %52 = icmp eq i8 %51, 48, !dbg !2982
  br i1 %52, label %53, label %69, !dbg !2983

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2947, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8* undef, metadata !2952, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 51, metadata !2953, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 48, metadata !2954, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 0, metadata !2955, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 0, metadata !2956, metadata !DIExpression()), !dbg !2984
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2986
  %55 = load i8, i8* %54, align 1, !dbg !2986, !tbaa !1079
  %56 = icmp eq i8 %55, 51, !dbg !2986
  br i1 %56, label %57, label %69, !dbg !2987

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2988, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8* undef, metadata !2993, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 48, metadata !2994, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 0, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 0, metadata !2996, metadata !DIExpression()), !dbg !2997
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3001
  %59 = load i8, i8* %58, align 1, !dbg !3001, !tbaa !1079
  %60 = icmp eq i8 %59, 48, !dbg !3001
  br i1 %60, label %61, label %69, !dbg !3003

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !3004, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* undef, metadata !3009, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8 0, metadata !3010, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8 0, metadata !3011, metadata !DIExpression()), !dbg !3012
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3016
  %63 = load i8, i8* %62, align 1, !dbg !3016, !tbaa !1079
  %64 = icmp eq i8 %63, 0, !dbg !3016
  br i1 %64, label %65, label %69, !dbg !3018

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !3019, !tbaa !1079
  %67 = icmp eq i8 %66, 96, !dbg !3020
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.130, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.131, i64 0, i64 0), !dbg !3019
  br label %72, !dbg !3021

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !3022
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.127, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), !dbg !3023
  br label %72, !dbg !3024

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2844
  ret i8* %73, !dbg !3025
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: nounwind
declare !dbg !3026 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !3030 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3036 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %1, metadata !3041, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3042, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8* %0, metadata !3044, metadata !DIExpression()) #29, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %1, metadata !3049, metadata !DIExpression()) #29, !dbg !3057
  call void @llvm.dbg.value(metadata i64* null, metadata !3050, metadata !DIExpression()) #29, !dbg !3057
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3051, metadata !DIExpression()) #29, !dbg !3057
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3059
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3059
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3052, metadata !DIExpression()) #29, !dbg !3057
  %6 = tail call i32* @__errno_location() #32, !dbg !3060
  %7 = load i32, i32* %6, align 4, !dbg !3060, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %7, metadata !3053, metadata !DIExpression()) #29, !dbg !3057
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3061
  %9 = load i32, i32* %8, align 4, !dbg !3061, !tbaa !2262
  %10 = or i32 %9, 1, !dbg !3062
  call void @llvm.dbg.value(metadata i32 %10, metadata !3054, metadata !DIExpression()) #29, !dbg !3057
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3063
  %12 = load i32, i32* %11, align 8, !dbg !3063, !tbaa !2210
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3064
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3065
  %15 = load i8*, i8** %14, align 8, !dbg !3065, !tbaa !2284
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3066
  %17 = load i8*, i8** %16, align 8, !dbg !3066, !tbaa !2287
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #29, !dbg !3067
  %19 = add i64 %18, 1, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %19, metadata !3055, metadata !DIExpression()) #29, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %19, metadata !3069, metadata !DIExpression()) #29, !dbg !3074
  %20 = tail call noalias i8* @xmalloc(i64 %19) #29, !dbg !3076
  call void @llvm.dbg.value(metadata i8* %20, metadata !3056, metadata !DIExpression()) #29, !dbg !3057
  %21 = load i32, i32* %11, align 8, !dbg !3077, !tbaa !2210
  %22 = load i8*, i8** %14, align 8, !dbg !3078, !tbaa !2284
  %23 = load i8*, i8** %16, align 8, !dbg !3079, !tbaa !2287
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #29, !dbg !3080
  store i32 %7, i32* %6, align 4, !dbg !3081, !tbaa !979
  ret i8* %20, !dbg !3082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3045 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3044, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %1, metadata !3049, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64* %2, metadata !3050, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3051, metadata !DIExpression()), !dbg !3083
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3084
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3084
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3052, metadata !DIExpression()), !dbg !3083
  %7 = tail call i32* @__errno_location() #32, !dbg !3085
  %8 = load i32, i32* %7, align 4, !dbg !3085, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %8, metadata !3053, metadata !DIExpression()), !dbg !3083
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3086
  %10 = load i32, i32* %9, align 4, !dbg !3086, !tbaa !2262
  %11 = icmp eq i64* %2, null, !dbg !3087
  %12 = zext i1 %11 to i32, !dbg !3087
  %13 = or i32 %10, %12, !dbg !3088
  call void @llvm.dbg.value(metadata i32 %13, metadata !3054, metadata !DIExpression()), !dbg !3083
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3089
  %15 = load i32, i32* %14, align 8, !dbg !3089, !tbaa !2210
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3090
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3091
  %18 = load i8*, i8** %17, align 8, !dbg !3091, !tbaa !2284
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3092
  %20 = load i8*, i8** %19, align 8, !dbg !3092, !tbaa !2287
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !3093
  %22 = add i64 %21, 1, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %22, metadata !3055, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %22, metadata !3069, metadata !DIExpression()) #29, !dbg !3095
  %23 = tail call noalias i8* @xmalloc(i64 %22) #29, !dbg !3097
  call void @llvm.dbg.value(metadata i8* %23, metadata !3056, metadata !DIExpression()), !dbg !3083
  %24 = load i32, i32* %14, align 8, !dbg !3098, !tbaa !2210
  %25 = load i8*, i8** %17, align 8, !dbg !3099, !tbaa !2284
  %26 = load i8*, i8** %19, align 8, !dbg !3100, !tbaa !2287
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !3101
  store i32 %8, i32* %7, align 4, !dbg !3102, !tbaa !979
  br i1 %11, label %29, label %28, !dbg !3103

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3104, !tbaa !1007
  br label %29, !dbg !3106

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3107
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3108 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3112, !tbaa !704
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3110, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i32 1, metadata !3111, metadata !DIExpression()), !dbg !3113
  %2 = load i32, i32* @nslots, align 4, !dbg !3114, !tbaa !979
  %3 = icmp sgt i32 %2, 1, !dbg !3117
  br i1 %3, label %4, label %12, !dbg !3118

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3117
  br label %6, !dbg !3118

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !3111, metadata !DIExpression()), !dbg !3113
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !3119
  %9 = load i8*, i8** %8, align 8, !dbg !3119, !tbaa !3120
  tail call void @free(i8* %9) #29, !dbg !3122
  %10 = add nuw nsw i64 %7, 1, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %10, metadata !3111, metadata !DIExpression()), !dbg !3113
  %11 = icmp eq i64 %10, %5, !dbg !3117
  br i1 %11, label %12, label %6, !dbg !3118, !llvm.loop !3124

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3126
  %14 = load i8*, i8** %13, align 8, !dbg !3126, !tbaa !3120
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3128
  br i1 %15, label %17, label %16, !dbg !3129

16:                                               ; preds = %12
  tail call void @free(i8* %14) #29, !dbg !3130
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3132, !tbaa !3133
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3134, !tbaa !3120
  br label %17, !dbg !3135

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3136
  br i1 %18, label %21, label %19, !dbg !3138

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3139
  tail call void @free(i8* %20) #29, !dbg !3141
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3142, !tbaa !704
  br label %21, !dbg !3143

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3144, !tbaa !979
  ret void, !dbg !3145
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3146 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3148, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i8* %1, metadata !3149, metadata !DIExpression()), !dbg !3150
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3151
  ret i8* %3, !dbg !3152
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3153 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3157, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8* %1, metadata !3158, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i64 %2, metadata !3159, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3160, metadata !DIExpression()), !dbg !3172
  %5 = tail call i32* @__errno_location() #32, !dbg !3173
  %6 = load i32, i32* %5, align 4, !dbg !3173, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %6, metadata !3161, metadata !DIExpression()), !dbg !3172
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3174, !tbaa !704
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3162, metadata !DIExpression()), !dbg !3172
  %8 = icmp slt i32 %0, 0, !dbg !3175
  br i1 %8, label %9, label %10, !dbg !3177

9:                                                ; preds = %4
  tail call void @abort() #31, !dbg !3178
  unreachable, !dbg !3178

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3179, !tbaa !979
  %12 = icmp sgt i32 %11, %0, !dbg !3180
  br i1 %12, label %34, label %13, !dbg !3181

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3182
  call void @llvm.dbg.value(metadata i1 %14, metadata !3163, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3183
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3166, metadata !DIExpression()), !dbg !3183
  %15 = icmp eq i32 %0, 2147483647, !dbg !3184
  br i1 %15, label %16, label %17, !dbg !3186

16:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !3187
  unreachable, !dbg !3187

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3188
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3188
  %20 = add nuw nsw i32 %0, 1, !dbg !3189
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !3190
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #29, !dbg !3191
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3191
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3162, metadata !DIExpression()), !dbg !3172
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3192, !tbaa !704
  br i1 %14, label %25, label %26, !dbg !3193

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3194, !tbaa.struct !3196
  br label %26, !dbg !3197

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3198, !tbaa !979
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3199
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3200
  %31 = sub nsw i32 %20, %27, !dbg !3201
  %32 = sext i32 %31 to i64, !dbg !3202
  %33 = shl nsw i64 %32, 4, !dbg !3203
  call void @llvm.dbg.value(metadata i8* %30, metadata !2597, metadata !DIExpression()) #29, !dbg !3204
  call void @llvm.dbg.value(metadata i32 0, metadata !2602, metadata !DIExpression()) #29, !dbg !3204
  call void @llvm.dbg.value(metadata i64 %33, metadata !2603, metadata !DIExpression()) #29, !dbg !3204
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #29, !dbg !3206
  store i32 %20, i32* @nslots, align 4, !dbg !3207, !tbaa !979
  br label %34, !dbg !3208

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3172
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3162, metadata !DIExpression()), !dbg !3172
  %36 = zext i32 %0 to i64, !dbg !3209
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3210
  %38 = load i64, i64* %37, align 8, !dbg !3210, !tbaa !3133
  call void @llvm.dbg.value(metadata i64 %38, metadata !3167, metadata !DIExpression()), !dbg !3211
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3212
  %40 = load i8*, i8** %39, align 8, !dbg !3212, !tbaa !3120
  call void @llvm.dbg.value(metadata i8* %40, metadata !3169, metadata !DIExpression()), !dbg !3211
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3213
  %42 = load i32, i32* %41, align 4, !dbg !3213, !tbaa !2262
  %43 = or i32 %42, 1, !dbg !3214
  call void @llvm.dbg.value(metadata i32 %43, metadata !3170, metadata !DIExpression()), !dbg !3211
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3215
  %45 = load i32, i32* %44, align 8, !dbg !3215, !tbaa !2210
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3216
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3217
  %48 = load i8*, i8** %47, align 8, !dbg !3217, !tbaa !2284
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3218
  %50 = load i8*, i8** %49, align 8, !dbg !3218, !tbaa !2287
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %51, metadata !3171, metadata !DIExpression()), !dbg !3211
  %52 = icmp ugt i64 %38, %51, !dbg !3220
  br i1 %52, label %63, label %53, !dbg !3222

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3223
  call void @llvm.dbg.value(metadata i64 %54, metadata !3167, metadata !DIExpression()), !dbg !3211
  store i64 %54, i64* %37, align 8, !dbg !3225, !tbaa !3133
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3226
  br i1 %55, label %57, label %56, !dbg !3228

56:                                               ; preds = %53
  tail call void @free(i8* %40) #29, !dbg !3229
  br label %57, !dbg !3229

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !3069, metadata !DIExpression()) #29, !dbg !3230
  %58 = tail call noalias i8* @xmalloc(i64 %54) #29, !dbg !3232
  call void @llvm.dbg.value(metadata i8* %58, metadata !3169, metadata !DIExpression()), !dbg !3211
  store i8* %58, i8** %39, align 8, !dbg !3233, !tbaa !3120
  %59 = load i32, i32* %44, align 8, !dbg !3234, !tbaa !2210
  %60 = load i8*, i8** %47, align 8, !dbg !3235, !tbaa !2284
  %61 = load i8*, i8** %49, align 8, !dbg !3236, !tbaa !2287
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3237
  br label %63, !dbg !3238

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3211
  call void @llvm.dbg.value(metadata i8* %64, metadata !3169, metadata !DIExpression()), !dbg !3211
  store i32 %6, i32* %5, align 4, !dbg !3239, !tbaa !979
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
  call void @llvm.dbg.value(metadata i32 0, metadata !3148, metadata !DIExpression()) #29, !dbg !3255
  call void @llvm.dbg.value(metadata i8* %0, metadata !3149, metadata !DIExpression()) #29, !dbg !3255
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #29, !dbg !3257
  ret i8* %2, !dbg !3258
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3259 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3263, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3264, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 0, metadata !3245, metadata !DIExpression()) #29, !dbg !3266
  call void @llvm.dbg.value(metadata i8* %0, metadata !3246, metadata !DIExpression()) #29, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()) #29, !dbg !3266
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #29, !dbg !3268
  ret i8* %3, !dbg !3269
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3270 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3274, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i32 %1, metadata !3275, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8* %2, metadata !3276, metadata !DIExpression()), !dbg !3278
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3279
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3279
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3277, metadata !DIExpression()), !dbg !3280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3281), !dbg !3284
  call void @llvm.dbg.value(metadata i32 %1, metadata !3285, metadata !DIExpression()) #29, !dbg !3291
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3290, metadata !DIExpression()) #29, !dbg !3293
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #29, !dbg !3293, !alias.scope !3281
  %6 = icmp eq i32 %1, 10, !dbg !3294
  br i1 %6, label %7, label %8, !dbg !3296

7:                                                ; preds = %3
  tail call void @abort() #31, !dbg !3297, !noalias !3281
  unreachable, !dbg !3297

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3298
  store i32 %1, i32* %9, align 8, !dbg !3299, !tbaa !2210, !alias.scope !3281
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3300
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3301
  ret i8* %10, !dbg !3302
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3303 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3307, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %1, metadata !3308, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8* %2, metadata !3309, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %3, metadata !3310, metadata !DIExpression()), !dbg !3312
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3313
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3313
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3311, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3315), !dbg !3318
  call void @llvm.dbg.value(metadata i32 %1, metadata !3285, metadata !DIExpression()) #29, !dbg !3319
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3290, metadata !DIExpression()) #29, !dbg !3321
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #29, !dbg !3321, !alias.scope !3315
  %7 = icmp eq i32 %1, 10, !dbg !3322
  br i1 %7, label %8, label %9, !dbg !3323

8:                                                ; preds = %4
  tail call void @abort() #31, !dbg !3324, !noalias !3315
  unreachable, !dbg !3324

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3325
  store i32 %1, i32* %10, align 8, !dbg !3326, !tbaa !2210, !alias.scope !3315
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3327
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3328
  ret i8* %11, !dbg !3329
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3330 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3334, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i8* %1, metadata !3335, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 0, metadata !3274, metadata !DIExpression()) #29, !dbg !3337
  call void @llvm.dbg.value(metadata i32 %0, metadata !3275, metadata !DIExpression()) #29, !dbg !3337
  call void @llvm.dbg.value(metadata i8* %1, metadata !3276, metadata !DIExpression()) #29, !dbg !3337
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3339
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3339
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3277, metadata !DIExpression()) #29, !dbg !3340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3341) #29, !dbg !3344
  call void @llvm.dbg.value(metadata i32 %0, metadata !3285, metadata !DIExpression()) #29, !dbg !3345
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3290, metadata !DIExpression()) #29, !dbg !3347
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #29, !dbg !3347, !alias.scope !3341
  %5 = icmp eq i32 %0, 10, !dbg !3348
  br i1 %5, label %6, label %7, !dbg !3349

6:                                                ; preds = %2
  tail call void @abort() #31, !dbg !3350, !noalias !3341
  unreachable, !dbg !3350

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3351
  store i32 %0, i32* %8, align 8, !dbg !3352, !tbaa !2210, !alias.scope !3341
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #29, !dbg !3353
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3354
  ret i8* %9, !dbg !3355
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3356 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3360, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8* %1, metadata !3361, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %2, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i32 0, metadata !3307, metadata !DIExpression()) #29, !dbg !3364
  call void @llvm.dbg.value(metadata i32 %0, metadata !3308, metadata !DIExpression()) #29, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %1, metadata !3309, metadata !DIExpression()) #29, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %2, metadata !3310, metadata !DIExpression()) #29, !dbg !3364
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3366
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3366
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3311, metadata !DIExpression()) #29, !dbg !3367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3368) #29, !dbg !3371
  call void @llvm.dbg.value(metadata i32 %0, metadata !3285, metadata !DIExpression()) #29, !dbg !3372
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3290, metadata !DIExpression()) #29, !dbg !3374
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #29, !dbg !3374, !alias.scope !3368
  %6 = icmp eq i32 %0, 10, !dbg !3375
  br i1 %6, label %7, label %8, !dbg !3376

7:                                                ; preds = %3
  tail call void @abort() #31, !dbg !3377, !noalias !3368
  unreachable, !dbg !3377

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3378
  store i32 %0, i32* %9, align 8, !dbg !3379, !tbaa !2210, !alias.scope !3368
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #29, !dbg !3380
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3381
  ret i8* %10, !dbg !3382
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3383 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3387, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %1, metadata !3388, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i8 %2, metadata !3389, metadata !DIExpression()), !dbg !3391
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3392
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3392
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3390, metadata !DIExpression()), !dbg !3393
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3394, !tbaa.struct !3395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2228, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i8 %2, metadata !2229, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i8 %2, metadata !2231, metadata !DIExpression()), !dbg !3396
  %6 = lshr i8 %2, 5, !dbg !3398
  %7 = zext i8 %6 to i64, !dbg !3398
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3399
  call void @llvm.dbg.value(metadata i32* %8, metadata !2233, metadata !DIExpression()), !dbg !3396
  %9 = and i8 %2, 31, !dbg !3400
  %10 = zext i8 %9 to i32, !dbg !3400
  call void @llvm.dbg.value(metadata i32 %10, metadata !2235, metadata !DIExpression()), !dbg !3396
  %11 = load i32, i32* %8, align 4, !dbg !3401, !tbaa !979
  %12 = lshr i32 %11, %10, !dbg !3402
  %13 = and i32 %12, 1, !dbg !3403
  call void @llvm.dbg.value(metadata i32 %13, metadata !2236, metadata !DIExpression()), !dbg !3396
  %14 = xor i32 %13, 1, !dbg !3404
  %15 = shl i32 %14, %10, !dbg !3405
  %16 = xor i32 %15, %11, !dbg !3406
  store i32 %16, i32* %8, align 4, !dbg !3406, !tbaa !979
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3407
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3408
  ret i8* %17, !dbg !3409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3410 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3414, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8 %1, metadata !3415, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %0, metadata !3387, metadata !DIExpression()) #29, !dbg !3417
  call void @llvm.dbg.value(metadata i64 -1, metadata !3388, metadata !DIExpression()) #29, !dbg !3417
  call void @llvm.dbg.value(metadata i8 %1, metadata !3389, metadata !DIExpression()) #29, !dbg !3417
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3419
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3419
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3390, metadata !DIExpression()) #29, !dbg !3420
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !3421, !tbaa.struct !3395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2228, metadata !DIExpression()) #29, !dbg !3422
  call void @llvm.dbg.value(metadata i8 %1, metadata !2229, metadata !DIExpression()) #29, !dbg !3422
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()) #29, !dbg !3422
  call void @llvm.dbg.value(metadata i8 %1, metadata !2231, metadata !DIExpression()) #29, !dbg !3422
  %5 = lshr i8 %1, 5, !dbg !3424
  %6 = zext i8 %5 to i64, !dbg !3424
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3425
  call void @llvm.dbg.value(metadata i32* %7, metadata !2233, metadata !DIExpression()) #29, !dbg !3422
  %8 = and i8 %1, 31, !dbg !3426
  %9 = zext i8 %8 to i32, !dbg !3426
  call void @llvm.dbg.value(metadata i32 %9, metadata !2235, metadata !DIExpression()) #29, !dbg !3422
  %10 = load i32, i32* %7, align 4, !dbg !3427, !tbaa !979
  %11 = lshr i32 %10, %9, !dbg !3428
  %12 = and i32 %11, 1, !dbg !3429
  call void @llvm.dbg.value(metadata i32 %12, metadata !2236, metadata !DIExpression()) #29, !dbg !3422
  %13 = xor i32 %12, 1, !dbg !3430
  %14 = shl i32 %13, %9, !dbg !3431
  %15 = xor i32 %14, %10, !dbg !3432
  store i32 %15, i32* %7, align 4, !dbg !3432, !tbaa !979
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #29, !dbg !3433
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3434
  ret i8* %16, !dbg !3435
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3436 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3438, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i8* %0, metadata !3414, metadata !DIExpression()) #29, !dbg !3440
  call void @llvm.dbg.value(metadata i8 58, metadata !3415, metadata !DIExpression()) #29, !dbg !3440
  call void @llvm.dbg.value(metadata i8* %0, metadata !3387, metadata !DIExpression()) #29, !dbg !3442
  call void @llvm.dbg.value(metadata i64 -1, metadata !3388, metadata !DIExpression()) #29, !dbg !3442
  call void @llvm.dbg.value(metadata i8 58, metadata !3389, metadata !DIExpression()) #29, !dbg !3442
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3444
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #29, !dbg !3444
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3390, metadata !DIExpression()) #29, !dbg !3445
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !3446, !tbaa.struct !3395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2228, metadata !DIExpression()) #29, !dbg !3447
  call void @llvm.dbg.value(metadata i8 58, metadata !2229, metadata !DIExpression()) #29, !dbg !3447
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()) #29, !dbg !3447
  call void @llvm.dbg.value(metadata i8 58, metadata !2231, metadata !DIExpression()) #29, !dbg !3447
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3449
  call void @llvm.dbg.value(metadata i32* %4, metadata !2233, metadata !DIExpression()) #29, !dbg !3447
  call void @llvm.dbg.value(metadata i32 26, metadata !2235, metadata !DIExpression()) #29, !dbg !3447
  %5 = load i32, i32* %4, align 4, !dbg !3450, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %5, metadata !2236, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #29, !dbg !3447
  %6 = or i32 %5, 67108864, !dbg !3451
  store i32 %6, i32* %4, align 4, !dbg !3451, !tbaa !979
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #29, !dbg !3452
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #29, !dbg !3453
  ret i8* %7, !dbg !3454
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3455 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3457, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 %1, metadata !3458, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8* %0, metadata !3387, metadata !DIExpression()) #29, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %1, metadata !3388, metadata !DIExpression()) #29, !dbg !3460
  call void @llvm.dbg.value(metadata i8 58, metadata !3389, metadata !DIExpression()) #29, !dbg !3460
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3462
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3462
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3390, metadata !DIExpression()) #29, !dbg !3463
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !3464, !tbaa.struct !3395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2228, metadata !DIExpression()) #29, !dbg !3465
  call void @llvm.dbg.value(metadata i8 58, metadata !2229, metadata !DIExpression()) #29, !dbg !3465
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()) #29, !dbg !3465
  call void @llvm.dbg.value(metadata i8 58, metadata !2231, metadata !DIExpression()) #29, !dbg !3465
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3467
  call void @llvm.dbg.value(metadata i32* %5, metadata !2233, metadata !DIExpression()) #29, !dbg !3465
  call void @llvm.dbg.value(metadata i32 26, metadata !2235, metadata !DIExpression()) #29, !dbg !3465
  %6 = load i32, i32* %5, align 4, !dbg !3468, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %6, metadata !2236, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #29, !dbg !3465
  %7 = or i32 %6, 67108864, !dbg !3469
  store i32 %7, i32* %5, align 4, !dbg !3469, !tbaa !979
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #29, !dbg !3470
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3471
  ret i8* %8, !dbg !3472
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3473 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3290, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3479
  call void @llvm.dbg.value(metadata i32 %0, metadata !3475, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %1, metadata !3476, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8* %2, metadata !3477, metadata !DIExpression()), !dbg !3481
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3482
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3482
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3478, metadata !DIExpression()), !dbg !3483
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3484
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3484
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3485), !dbg !3484
  call void @llvm.dbg.value(metadata i32 %1, metadata !3285, metadata !DIExpression()) #29, !dbg !3488
  call void @llvm.dbg.value(metadata i32 0, metadata !3290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3488
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3479, !alias.scope !3485
  %8 = icmp eq i32 %1, 10, !dbg !3489
  br i1 %8, label %9, label %10, !dbg !3490

9:                                                ; preds = %3
  tail call void @abort() #31, !dbg !3491, !noalias !3485
  unreachable, !dbg !3491

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3488
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3484
  store i32 %1, i32* %11, align 8, !dbg !3484, !tbaa.struct !3395
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3484
  %13 = bitcast i32* %12 to i8*, !dbg !3484
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3484, !tbaa.struct !3492
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3484
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2228, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i8 58, metadata !2229, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i8 58, metadata !2231, metadata !DIExpression()), !dbg !3493
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3495
  call void @llvm.dbg.value(metadata i32* %14, metadata !2233, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i32 26, metadata !2235, metadata !DIExpression()), !dbg !3493
  %15 = load i32, i32* %14, align 4, !dbg !3496, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %15, metadata !2236, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3493
  %16 = or i32 %15, 67108864, !dbg !3497
  store i32 %16, i32* %14, align 4, !dbg !3497, !tbaa !979
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3498
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3499
  ret i8* %17, !dbg !3500
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3501 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3505, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i8* %1, metadata !3506, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i8* %2, metadata !3507, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i8* %3, metadata !3508, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i32 %0, metadata !3510, metadata !DIExpression()) #29, !dbg !3520
  call void @llvm.dbg.value(metadata i8* %1, metadata !3515, metadata !DIExpression()) #29, !dbg !3520
  call void @llvm.dbg.value(metadata i8* %2, metadata !3516, metadata !DIExpression()) #29, !dbg !3520
  call void @llvm.dbg.value(metadata i8* %3, metadata !3517, metadata !DIExpression()) #29, !dbg !3520
  call void @llvm.dbg.value(metadata i64 -1, metadata !3518, metadata !DIExpression()) #29, !dbg !3520
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3522
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3522
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3519, metadata !DIExpression()) #29, !dbg !3523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !3524, !tbaa.struct !3395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2269, metadata !DIExpression()) #29, !dbg !3525
  call void @llvm.dbg.value(metadata i8* %1, metadata !2270, metadata !DIExpression()) #29, !dbg !3525
  call void @llvm.dbg.value(metadata i8* %2, metadata !2271, metadata !DIExpression()) #29, !dbg !3525
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2269, metadata !DIExpression()) #29, !dbg !3525
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3527
  store i32 10, i32* %7, align 8, !dbg !3528, !tbaa !2210
  %8 = icmp ne i8* %1, null, !dbg !3529
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3530
  br i1 %10, label %12, label %11, !dbg !3530

11:                                               ; preds = %4
  tail call void @abort() #31, !dbg !3531
  unreachable, !dbg !3531

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3532
  store i8* %1, i8** %13, align 8, !dbg !3533, !tbaa !2284
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3534
  store i8* %2, i8** %14, align 8, !dbg !3535, !tbaa !2287
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #29, !dbg !3536
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3537
  ret i8* %15, !dbg !3538
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3511 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3510, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i8* %1, metadata !3515, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i8* %2, metadata !3516, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i8* %3, metadata !3517, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %4, metadata !3518, metadata !DIExpression()), !dbg !3539
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3540
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #29, !dbg !3540
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3519, metadata !DIExpression()), !dbg !3541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3542, !tbaa.struct !3395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2269, metadata !DIExpression()) #29, !dbg !3543
  call void @llvm.dbg.value(metadata i8* %1, metadata !2270, metadata !DIExpression()) #29, !dbg !3543
  call void @llvm.dbg.value(metadata i8* %2, metadata !2271, metadata !DIExpression()) #29, !dbg !3543
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2269, metadata !DIExpression()) #29, !dbg !3543
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3545
  store i32 10, i32* %8, align 8, !dbg !3546, !tbaa !2210
  %9 = icmp ne i8* %1, null, !dbg !3547
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3548
  br i1 %11, label %13, label %12, !dbg !3548

12:                                               ; preds = %5
  tail call void @abort() #31, !dbg !3549
  unreachable, !dbg !3549

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3550
  store i8* %1, i8** %14, align 8, !dbg !3551, !tbaa !2284
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3552
  store i8* %2, i8** %15, align 8, !dbg !3553, !tbaa !2287
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3554
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #29, !dbg !3555
  ret i8* %16, !dbg !3556
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3557 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3561, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8* %1, metadata !3562, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8* %2, metadata !3563, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i32 0, metadata !3505, metadata !DIExpression()) #29, !dbg !3565
  call void @llvm.dbg.value(metadata i8* %0, metadata !3506, metadata !DIExpression()) #29, !dbg !3565
  call void @llvm.dbg.value(metadata i8* %1, metadata !3507, metadata !DIExpression()) #29, !dbg !3565
  call void @llvm.dbg.value(metadata i8* %2, metadata !3508, metadata !DIExpression()) #29, !dbg !3565
  call void @llvm.dbg.value(metadata i32 0, metadata !3510, metadata !DIExpression()) #29, !dbg !3567
  call void @llvm.dbg.value(metadata i8* %0, metadata !3515, metadata !DIExpression()) #29, !dbg !3567
  call void @llvm.dbg.value(metadata i8* %1, metadata !3516, metadata !DIExpression()) #29, !dbg !3567
  call void @llvm.dbg.value(metadata i8* %2, metadata !3517, metadata !DIExpression()) #29, !dbg !3567
  call void @llvm.dbg.value(metadata i64 -1, metadata !3518, metadata !DIExpression()) #29, !dbg !3567
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3569
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3569
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3519, metadata !DIExpression()) #29, !dbg !3570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !3571, !tbaa.struct !3395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2269, metadata !DIExpression()) #29, !dbg !3572
  call void @llvm.dbg.value(metadata i8* %0, metadata !2270, metadata !DIExpression()) #29, !dbg !3572
  call void @llvm.dbg.value(metadata i8* %1, metadata !2271, metadata !DIExpression()) #29, !dbg !3572
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2269, metadata !DIExpression()) #29, !dbg !3572
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3574
  store i32 10, i32* %6, align 8, !dbg !3575, !tbaa !2210
  %7 = icmp ne i8* %0, null, !dbg !3576
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3577
  br i1 %9, label %11, label %10, !dbg !3577

10:                                               ; preds = %3
  tail call void @abort() #31, !dbg !3578
  unreachable, !dbg !3578

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3579
  store i8* %0, i8** %12, align 8, !dbg !3580, !tbaa !2284
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3581
  store i8* %1, i8** %13, align 8, !dbg !3582, !tbaa !2287
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #29, !dbg !3583
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3584
  ret i8* %14, !dbg !3585
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3586 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3590, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i8* %1, metadata !3591, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i8* %2, metadata !3592, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %3, metadata !3593, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 0, metadata !3510, metadata !DIExpression()) #29, !dbg !3595
  call void @llvm.dbg.value(metadata i8* %0, metadata !3515, metadata !DIExpression()) #29, !dbg !3595
  call void @llvm.dbg.value(metadata i8* %1, metadata !3516, metadata !DIExpression()) #29, !dbg !3595
  call void @llvm.dbg.value(metadata i8* %2, metadata !3517, metadata !DIExpression()) #29, !dbg !3595
  call void @llvm.dbg.value(metadata i64 %3, metadata !3518, metadata !DIExpression()) #29, !dbg !3595
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3597
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3597
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3519, metadata !DIExpression()) #29, !dbg !3598
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !3599, !tbaa.struct !3395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2269, metadata !DIExpression()) #29, !dbg !3600
  call void @llvm.dbg.value(metadata i8* %0, metadata !2270, metadata !DIExpression()) #29, !dbg !3600
  call void @llvm.dbg.value(metadata i8* %1, metadata !2271, metadata !DIExpression()) #29, !dbg !3600
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2269, metadata !DIExpression()) #29, !dbg !3600
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3602
  store i32 10, i32* %7, align 8, !dbg !3603, !tbaa !2210
  %8 = icmp ne i8* %0, null, !dbg !3604
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3605
  br i1 %10, label %12, label %11, !dbg !3605

11:                                               ; preds = %4
  tail call void @abort() #31, !dbg !3606
  unreachable, !dbg !3606

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3607
  store i8* %0, i8** %13, align 8, !dbg !3608, !tbaa !2284
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3609
  store i8* %1, i8** %14, align 8, !dbg !3610, !tbaa !2287
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #29, !dbg !3611
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3612
  ret i8* %15, !dbg !3613
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3614 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3618, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i8* %1, metadata !3619, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %2, metadata !3620, metadata !DIExpression()), !dbg !3621
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3622
  ret i8* %4, !dbg !3623
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3624 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3628, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %1, metadata !3629, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 0, metadata !3618, metadata !DIExpression()) #29, !dbg !3631
  call void @llvm.dbg.value(metadata i8* %0, metadata !3619, metadata !DIExpression()) #29, !dbg !3631
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()) #29, !dbg !3631
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !3633
  ret i8* %3, !dbg !3634
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3635 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3639, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i8* %1, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %0, metadata !3618, metadata !DIExpression()) #29, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %1, metadata !3619, metadata !DIExpression()) #29, !dbg !3642
  call void @llvm.dbg.value(metadata i64 -1, metadata !3620, metadata !DIExpression()) #29, !dbg !3642
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !3644
  ret i8* %3, !dbg !3645
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3646 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3648, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i32 0, metadata !3639, metadata !DIExpression()) #29, !dbg !3650
  call void @llvm.dbg.value(metadata i8* %0, metadata !3640, metadata !DIExpression()) #29, !dbg !3650
  call void @llvm.dbg.value(metadata i32 0, metadata !3618, metadata !DIExpression()) #29, !dbg !3652
  call void @llvm.dbg.value(metadata i8* %0, metadata !3619, metadata !DIExpression()) #29, !dbg !3652
  call void @llvm.dbg.value(metadata i64 -1, metadata !3620, metadata !DIExpression()) #29, !dbg !3652
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !3654
  ret i8* %2, !dbg !3655
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3656 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3696, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i8* %1, metadata !3697, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i8* %2, metadata !3698, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i8* %3, metadata !3699, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i8** %4, metadata !3700, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %5, metadata !3701, metadata !DIExpression()), !dbg !3702
  %7 = icmp eq i8* %1, null, !dbg !3703
  br i1 %7, label %10, label %8, !dbg !3705

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.138, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #29, !dbg !3706
  br label %12, !dbg !3706

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.139, i64 0, i64 0), i8* %2, i8* %3) #29, !dbg !3707
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.140, i64 0, i64 0), i32 5) #29, !dbg !3708
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #29, !dbg !3708
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.141, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3709
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.142, i64 0, i64 0), i32 5) #29, !dbg !3710
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.143, i64 0, i64 0)) #29, !dbg !3710
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.141, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3711
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
  ], !dbg !3712

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.144, i64 0, i64 0), i32 5) #29, !dbg !3713
  %21 = load i8*, i8** %4, align 8, !dbg !3713, !tbaa !704
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #29, !dbg !3713
  br label %147, !dbg !3715

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.145, i64 0, i64 0), i32 5) #29, !dbg !3716
  %25 = load i8*, i8** %4, align 8, !dbg !3716, !tbaa !704
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3716
  %27 = load i8*, i8** %26, align 8, !dbg !3716, !tbaa !704
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #29, !dbg !3716
  br label %147, !dbg !3717

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.146, i64 0, i64 0), i32 5) #29, !dbg !3718
  %31 = load i8*, i8** %4, align 8, !dbg !3718, !tbaa !704
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3718
  %33 = load i8*, i8** %32, align 8, !dbg !3718, !tbaa !704
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3718
  %35 = load i8*, i8** %34, align 8, !dbg !3718, !tbaa !704
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #29, !dbg !3718
  br label %147, !dbg !3719

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.147, i64 0, i64 0), i32 5) #29, !dbg !3720
  %39 = load i8*, i8** %4, align 8, !dbg !3720, !tbaa !704
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3720
  %41 = load i8*, i8** %40, align 8, !dbg !3720, !tbaa !704
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3720
  %43 = load i8*, i8** %42, align 8, !dbg !3720, !tbaa !704
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3720
  %45 = load i8*, i8** %44, align 8, !dbg !3720, !tbaa !704
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #29, !dbg !3720
  br label %147, !dbg !3721

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.148, i64 0, i64 0), i32 5) #29, !dbg !3722
  %49 = load i8*, i8** %4, align 8, !dbg !3722, !tbaa !704
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3722
  %51 = load i8*, i8** %50, align 8, !dbg !3722, !tbaa !704
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3722
  %53 = load i8*, i8** %52, align 8, !dbg !3722, !tbaa !704
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3722
  %55 = load i8*, i8** %54, align 8, !dbg !3722, !tbaa !704
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3722
  %57 = load i8*, i8** %56, align 8, !dbg !3722, !tbaa !704
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #29, !dbg !3722
  br label %147, !dbg !3723

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.149, i64 0, i64 0), i32 5) #29, !dbg !3724
  %61 = load i8*, i8** %4, align 8, !dbg !3724, !tbaa !704
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3724
  %63 = load i8*, i8** %62, align 8, !dbg !3724, !tbaa !704
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3724
  %65 = load i8*, i8** %64, align 8, !dbg !3724, !tbaa !704
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3724
  %67 = load i8*, i8** %66, align 8, !dbg !3724, !tbaa !704
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3724
  %69 = load i8*, i8** %68, align 8, !dbg !3724, !tbaa !704
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3724
  %71 = load i8*, i8** %70, align 8, !dbg !3724, !tbaa !704
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #29, !dbg !3724
  br label %147, !dbg !3725

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.150, i64 0, i64 0), i32 5) #29, !dbg !3726
  %75 = load i8*, i8** %4, align 8, !dbg !3726, !tbaa !704
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3726
  %77 = load i8*, i8** %76, align 8, !dbg !3726, !tbaa !704
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3726
  %79 = load i8*, i8** %78, align 8, !dbg !3726, !tbaa !704
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3726
  %81 = load i8*, i8** %80, align 8, !dbg !3726, !tbaa !704
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3726
  %83 = load i8*, i8** %82, align 8, !dbg !3726, !tbaa !704
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3726
  %85 = load i8*, i8** %84, align 8, !dbg !3726, !tbaa !704
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3726
  %87 = load i8*, i8** %86, align 8, !dbg !3726, !tbaa !704
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #29, !dbg !3726
  br label %147, !dbg !3727

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.151, i64 0, i64 0), i32 5) #29, !dbg !3728
  %91 = load i8*, i8** %4, align 8, !dbg !3728, !tbaa !704
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3728
  %93 = load i8*, i8** %92, align 8, !dbg !3728, !tbaa !704
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3728
  %95 = load i8*, i8** %94, align 8, !dbg !3728, !tbaa !704
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3728
  %97 = load i8*, i8** %96, align 8, !dbg !3728, !tbaa !704
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3728
  %99 = load i8*, i8** %98, align 8, !dbg !3728, !tbaa !704
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3728
  %101 = load i8*, i8** %100, align 8, !dbg !3728, !tbaa !704
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3728
  %103 = load i8*, i8** %102, align 8, !dbg !3728, !tbaa !704
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3728
  %105 = load i8*, i8** %104, align 8, !dbg !3728, !tbaa !704
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #29, !dbg !3728
  br label %147, !dbg !3729

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.152, i64 0, i64 0), i32 5) #29, !dbg !3730
  %109 = load i8*, i8** %4, align 8, !dbg !3730, !tbaa !704
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3730
  %111 = load i8*, i8** %110, align 8, !dbg !3730, !tbaa !704
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3730
  %113 = load i8*, i8** %112, align 8, !dbg !3730, !tbaa !704
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3730
  %115 = load i8*, i8** %114, align 8, !dbg !3730, !tbaa !704
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3730
  %117 = load i8*, i8** %116, align 8, !dbg !3730, !tbaa !704
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3730
  %119 = load i8*, i8** %118, align 8, !dbg !3730, !tbaa !704
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3730
  %121 = load i8*, i8** %120, align 8, !dbg !3730, !tbaa !704
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3730
  %123 = load i8*, i8** %122, align 8, !dbg !3730, !tbaa !704
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3730
  %125 = load i8*, i8** %124, align 8, !dbg !3730, !tbaa !704
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #29, !dbg !3730
  br label %147, !dbg !3731

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.153, i64 0, i64 0), i32 5) #29, !dbg !3732
  %129 = load i8*, i8** %4, align 8, !dbg !3732, !tbaa !704
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3732
  %131 = load i8*, i8** %130, align 8, !dbg !3732, !tbaa !704
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3732
  %133 = load i8*, i8** %132, align 8, !dbg !3732, !tbaa !704
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3732
  %135 = load i8*, i8** %134, align 8, !dbg !3732, !tbaa !704
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3732
  %137 = load i8*, i8** %136, align 8, !dbg !3732, !tbaa !704
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3732
  %139 = load i8*, i8** %138, align 8, !dbg !3732, !tbaa !704
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3732
  %141 = load i8*, i8** %140, align 8, !dbg !3732, !tbaa !704
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3732
  %143 = load i8*, i8** %142, align 8, !dbg !3732, !tbaa !704
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3732
  %145 = load i8*, i8** %144, align 8, !dbg !3732, !tbaa !704
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #29, !dbg !3732
  br label %147, !dbg !3733

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3734
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3735 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3739, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8* %1, metadata !3740, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8* %2, metadata !3741, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8* %3, metadata !3742, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8** %4, metadata !3743, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i64 0, metadata !3744, metadata !DIExpression()), !dbg !3745
  br label %6, !dbg !3746

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3748
  call void @llvm.dbg.value(metadata i64 %7, metadata !3744, metadata !DIExpression()), !dbg !3745
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3749
  %9 = load i8*, i8** %8, align 8, !dbg !3749, !tbaa !704
  %10 = icmp eq i8* %9, null, !dbg !3751
  %11 = add i64 %7, 1, !dbg !3752
  call void @llvm.dbg.value(metadata i64 %11, metadata !3744, metadata !DIExpression()), !dbg !3745
  br i1 %10, label %12, label %6, !dbg !3751, !llvm.loop !3753

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3755
  ret void, !dbg !3756
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3757 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3768, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %1, metadata !3769, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %2, metadata !3770, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %3, metadata !3771, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3772, metadata !DIExpression()), !dbg !3776
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3777
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #29, !dbg !3777
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3774, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 0, metadata !3773, metadata !DIExpression()), !dbg !3776
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3773, metadata !DIExpression()), !dbg !3776
  %11 = load i32, i32* %8, align 8, !dbg !3779
  %12 = icmp ult i32 %11, 41, !dbg !3779
  br i1 %12, label %13, label %18, !dbg !3779

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3779
  %15 = zext i32 %11 to i64, !dbg !3779
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3779
  %17 = add nuw nsw i32 %11, 8, !dbg !3779
  store i32 %17, i32* %8, align 8, !dbg !3779
  br label %21, !dbg !3779

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3779
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3779
  store i8* %20, i8** %9, align 8, !dbg !3779
  br label %21, !dbg !3779

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3779
  %25 = load i8*, i8** %24, align 8, !dbg !3779
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3782
  store i8* %25, i8** %26, align 16, !dbg !3783, !tbaa !704
  %27 = icmp eq i8* %25, null, !dbg !3784
  br i1 %27, label %30, label %28, !dbg !3785

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3773, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 1, metadata !3773, metadata !DIExpression()), !dbg !3776
  %29 = icmp ult i32 %22, 41, !dbg !3779
  br i1 %29, label %35, label %32, !dbg !3779

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3786
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3787
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #29, !dbg !3788
  ret void, !dbg !3788

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3779
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3779
  store i8* %34, i8** %9, align 8, !dbg !3779
  br label %40, !dbg !3779

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3779
  %37 = zext i32 %22 to i64, !dbg !3779
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3779
  %39 = add nuw nsw i32 %22, 8, !dbg !3779
  store i32 %39, i32* %8, align 8, !dbg !3779
  br label %40, !dbg !3779

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3779
  %44 = load i8*, i8** %43, align 8, !dbg !3779
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3782
  store i8* %44, i8** %45, align 8, !dbg !3783, !tbaa !704
  %46 = icmp eq i8* %44, null, !dbg !3784
  br i1 %46, label %30, label %47, !dbg !3785

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3773, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 2, metadata !3773, metadata !DIExpression()), !dbg !3776
  %48 = icmp ult i32 %41, 41, !dbg !3779
  br i1 %48, label %52, label %49, !dbg !3779

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3779
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3779
  store i8* %51, i8** %9, align 8, !dbg !3779
  br label %57, !dbg !3779

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3779
  %54 = zext i32 %41 to i64, !dbg !3779
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3779
  %56 = add nuw nsw i32 %41, 8, !dbg !3779
  store i32 %56, i32* %8, align 8, !dbg !3779
  br label %57, !dbg !3779

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3779
  %61 = load i8*, i8** %60, align 8, !dbg !3779
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3782
  store i8* %61, i8** %62, align 16, !dbg !3783, !tbaa !704
  %63 = icmp eq i8* %61, null, !dbg !3784
  br i1 %63, label %30, label %64, !dbg !3785

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3773, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 3, metadata !3773, metadata !DIExpression()), !dbg !3776
  %65 = icmp ult i32 %58, 41, !dbg !3779
  br i1 %65, label %69, label %66, !dbg !3779

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3779
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3779
  store i8* %68, i8** %9, align 8, !dbg !3779
  br label %74, !dbg !3779

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3779
  %71 = zext i32 %58 to i64, !dbg !3779
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3779
  %73 = add nuw nsw i32 %58, 8, !dbg !3779
  store i32 %73, i32* %8, align 8, !dbg !3779
  br label %74, !dbg !3779

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3779
  %78 = load i8*, i8** %77, align 8, !dbg !3779
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3782
  store i8* %78, i8** %79, align 8, !dbg !3783, !tbaa !704
  %80 = icmp eq i8* %78, null, !dbg !3784
  br i1 %80, label %30, label %81, !dbg !3785

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3773, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 4, metadata !3773, metadata !DIExpression()), !dbg !3776
  %82 = icmp ult i32 %75, 41, !dbg !3779
  br i1 %82, label %86, label %83, !dbg !3779

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3779
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3779
  store i8* %85, i8** %9, align 8, !dbg !3779
  br label %91, !dbg !3779

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3779
  %88 = zext i32 %75 to i64, !dbg !3779
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3779
  %90 = add nuw nsw i32 %75, 8, !dbg !3779
  store i32 %90, i32* %8, align 8, !dbg !3779
  br label %91, !dbg !3779

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3779
  %95 = load i8*, i8** %94, align 8, !dbg !3779
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3782
  store i8* %95, i8** %96, align 16, !dbg !3783, !tbaa !704
  %97 = icmp eq i8* %95, null, !dbg !3784
  br i1 %97, label %30, label %98, !dbg !3785

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3773, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 5, metadata !3773, metadata !DIExpression()), !dbg !3776
  %99 = icmp ult i32 %92, 41, !dbg !3779
  br i1 %99, label %103, label %100, !dbg !3779

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3779
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3779
  store i8* %102, i8** %9, align 8, !dbg !3779
  br label %108, !dbg !3779

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3779
  %105 = zext i32 %92 to i64, !dbg !3779
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3779
  %107 = add nuw nsw i32 %92, 8, !dbg !3779
  store i32 %107, i32* %8, align 8, !dbg !3779
  br label %108, !dbg !3779

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3779
  %111 = load i8*, i8** %110, align 8, !dbg !3779
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3782
  store i8* %111, i8** %112, align 8, !dbg !3783, !tbaa !704
  %113 = icmp eq i8* %111, null, !dbg !3784
  br i1 %113, label %30, label %114, !dbg !3785

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3773, metadata !DIExpression()), !dbg !3776
  %115 = load i8*, i8** %9, align 8, !dbg !3779
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3779
  store i8* %116, i8** %9, align 8, !dbg !3779
  %117 = bitcast i8* %115 to i8**, !dbg !3779
  %118 = load i8*, i8** %117, align 8, !dbg !3779
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3782
  store i8* %118, i8** %119, align 16, !dbg !3783, !tbaa !704
  %120 = icmp eq i8* %118, null, !dbg !3784
  br i1 %120, label %30, label %121, !dbg !3785

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3773, metadata !DIExpression()), !dbg !3776
  %122 = load i8*, i8** %9, align 8, !dbg !3779
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3779
  store i8* %123, i8** %9, align 8, !dbg !3779
  %124 = bitcast i8* %122 to i8**, !dbg !3779
  %125 = load i8*, i8** %124, align 8, !dbg !3779
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3782
  store i8* %125, i8** %126, align 8, !dbg !3783, !tbaa !704
  %127 = icmp eq i8* %125, null, !dbg !3784
  br i1 %127, label %30, label %128, !dbg !3785

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3773, metadata !DIExpression()), !dbg !3776
  %129 = load i8*, i8** %9, align 8, !dbg !3779
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3779
  store i8* %130, i8** %9, align 8, !dbg !3779
  %131 = bitcast i8* %129 to i8**, !dbg !3779
  %132 = load i8*, i8** %131, align 8, !dbg !3779
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3782
  store i8* %132, i8** %133, align 16, !dbg !3783, !tbaa !704
  %134 = icmp eq i8* %132, null, !dbg !3784
  br i1 %134, label %30, label %135, !dbg !3785

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3773, metadata !DIExpression()), !dbg !3776
  %136 = load i8*, i8** %9, align 8, !dbg !3779
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3779
  store i8* %137, i8** %9, align 8, !dbg !3779
  %138 = bitcast i8* %136 to i8**, !dbg !3779
  %139 = load i8*, i8** %138, align 8, !dbg !3779
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3782
  store i8* %139, i8** %140, align 8, !dbg !3783, !tbaa !704
  %141 = icmp eq i8* %139, null, !dbg !3784
  %142 = select i1 %141, i64 9, i64 10, !dbg !3785
  br label %30, !dbg !3785
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3789 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3793, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i8* %1, metadata !3794, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i8* %2, metadata !3795, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i8* %3, metadata !3796, metadata !DIExpression()), !dbg !3803
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3804
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #29, !dbg !3804
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3797, metadata !DIExpression()), !dbg !3805
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3806
  call void @llvm.va_start(i8* nonnull %6), !dbg !3806
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3807
  call void @llvm.va_end(i8* nonnull %6), !dbg !3808
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #29, !dbg !3809
  ret void, !dbg !3809
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #24

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3810 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3811, !tbaa !704
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.141, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3811
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.156, i64 0, i64 0), i32 5) #29, !dbg !3812
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.157, i64 0, i64 0)) #29, !dbg !3812
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.158, i64 0, i64 0), i32 5) #29, !dbg !3813
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.159, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.160, i64 0, i64 0)) #29, !dbg !3813
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.161, i64 0, i64 0), i32 5) #29, !dbg !3814
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.162, i64 0, i64 0)) #29, !dbg !3814
  ret void, !dbg !3815
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3816 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3820, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %1, metadata !3821, metadata !DIExpression()), !dbg !3822
  %3 = udiv i64 9223372036854775807, %1, !dbg !3823
  %4 = icmp ult i64 %3, %0, !dbg !3823
  br i1 %4, label %5, label %6, !dbg !3825

5:                                                ; preds = %2
  tail call void @xalloc_die() #31, !dbg !3826
  unreachable, !dbg !3826

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3827
  call void @llvm.dbg.value(metadata i64 %7, metadata !3828, metadata !DIExpression()) #29, !dbg !3834
  %8 = tail call noalias i8* @malloc(i64 %7) #29, !dbg !3836
  call void @llvm.dbg.value(metadata i8* %8, metadata !3833, metadata !DIExpression()) #29, !dbg !3834
  %9 = icmp eq i8* %8, null, !dbg !3837
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3839
  br i1 %11, label %12, label %13, !dbg !3839

12:                                               ; preds = %6
  tail call void @xalloc_die() #31, !dbg !3840
  unreachable, !dbg !3840

13:                                               ; preds = %6
  ret i8* %8, !dbg !3841
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3829 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3828, metadata !DIExpression()), !dbg !3842
  %2 = tail call noalias i8* @malloc(i64 %0) #29, !dbg !3843
  call void @llvm.dbg.value(metadata i8* %2, metadata !3833, metadata !DIExpression()), !dbg !3842
  %3 = icmp eq i8* %2, null, !dbg !3844
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3845
  br i1 %5, label %6, label %7, !dbg !3845

6:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !3846
  unreachable, !dbg !3846

7:                                                ; preds = %1
  ret i8* %2, !dbg !3847
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #25 !dbg !3848 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3852, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i64 %1, metadata !3853, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i64 %2, metadata !3854, metadata !DIExpression()), !dbg !3855
  %4 = udiv i64 9223372036854775807, %2, !dbg !3856
  %5 = icmp ult i64 %4, %1, !dbg !3856
  br i1 %5, label %6, label %7, !dbg !3858

6:                                                ; preds = %3
  tail call void @xalloc_die() #31, !dbg !3859
  unreachable, !dbg !3859

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %0, metadata !3861, metadata !DIExpression()) #29, !dbg !3867
  call void @llvm.dbg.value(metadata i64 %8, metadata !3866, metadata !DIExpression()) #29, !dbg !3867
  %9 = icmp eq i64 %8, 0, !dbg !3869
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3871
  br i1 %11, label %12, label %13, !dbg !3871

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #29, !dbg !3872
  br label %19, !dbg !3874

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #29, !dbg !3875
  call void @llvm.dbg.value(metadata i8* %14, metadata !3861, metadata !DIExpression()) #29, !dbg !3867
  %15 = icmp eq i8* %14, null, !dbg !3876
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3878
  br i1 %17, label %18, label %19, !dbg !3878

18:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !3879
  unreachable, !dbg !3879

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3867
  ret i8* %20, !dbg !3880
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3862 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3861, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i64 %1, metadata !3866, metadata !DIExpression()), !dbg !3881
  %3 = icmp eq i64 %1, 0, !dbg !3882
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3883
  br i1 %5, label %6, label %7, !dbg !3883

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #29, !dbg !3884
  br label %13, !dbg !3885

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #29, !dbg !3886
  call void @llvm.dbg.value(metadata i8* %8, metadata !3861, metadata !DIExpression()), !dbg !3881
  %9 = icmp eq i8* %8, null, !dbg !3887
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3888
  br i1 %11, label %12, label %13, !dbg !3888

12:                                               ; preds = %7
  tail call void @xalloc_die() #31, !dbg !3889
  unreachable, !dbg !3889

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3881
  ret i8* %14, !dbg !3890
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #25 !dbg !274 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !276, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i64* %1, metadata !277, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i64 %2, metadata !278, metadata !DIExpression()), !dbg !3891
  %4 = load i64, i64* %1, align 8, !dbg !3892, !tbaa !1007
  call void @llvm.dbg.value(metadata i64 %4, metadata !279, metadata !DIExpression()), !dbg !3891
  %5 = icmp eq i8* %0, null, !dbg !3893
  br i1 %5, label %6, label %20, !dbg !3895

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3896
  br i1 %7, label %8, label %13, !dbg !3899

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3900
  call void @llvm.dbg.value(metadata i64 %9, metadata !279, metadata !DIExpression()), !dbg !3891
  %10 = icmp ugt i64 %2, 128, !dbg !3902
  %11 = zext i1 %10 to i64, !dbg !3902
  %12 = add nuw nsw i64 %9, %11, !dbg !3903
  call void @llvm.dbg.value(metadata i64 %12, metadata !279, metadata !DIExpression()), !dbg !3891
  br label %13, !dbg !3904

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3891
  call void @llvm.dbg.value(metadata i64 %14, metadata !279, metadata !DIExpression()), !dbg !3891
  %15 = udiv i64 9223372036854775807, %2, !dbg !3905
  %16 = icmp ult i64 %15, %14, !dbg !3905
  br i1 %16, label %19, label %17, !dbg !3907

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !279, metadata !DIExpression()), !dbg !3891
  store i64 %14, i64* %1, align 8, !dbg !3908, !tbaa !1007
  %18 = mul i64 %14, %2, !dbg !3909
  call void @llvm.dbg.value(metadata i8* %0, metadata !3861, metadata !DIExpression()) #29, !dbg !3910
  call void @llvm.dbg.value(metadata i64 %28, metadata !3866, metadata !DIExpression()) #29, !dbg !3910
  br label %31, !dbg !3912

19:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !3913
  unreachable, !dbg !3913

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3914
  %22 = icmp ugt i64 %21, %4, !dbg !3917
  br i1 %22, label %24, label %23, !dbg !3918

23:                                               ; preds = %20
  tail call void @xalloc_die() #31, !dbg !3919
  unreachable, !dbg !3919

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3920
  %26 = add nuw i64 %4, 1, !dbg !3921
  %27 = add i64 %26, %25, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %27, metadata !279, metadata !DIExpression()), !dbg !3891
  store i64 %27, i64* %1, align 8, !dbg !3908, !tbaa !1007
  %28 = mul i64 %27, %2, !dbg !3909
  call void @llvm.dbg.value(metadata i8* %0, metadata !3861, metadata !DIExpression()) #29, !dbg !3910
  call void @llvm.dbg.value(metadata i64 %28, metadata !3866, metadata !DIExpression()) #29, !dbg !3910
  %29 = icmp eq i64 %28, 0, !dbg !3923
  br i1 %29, label %30, label %31, !dbg !3912

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #29, !dbg !3924
  br label %38, !dbg !3925

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #29, !dbg !3926
  call void @llvm.dbg.value(metadata i8* %33, metadata !3861, metadata !DIExpression()) #29, !dbg !3910
  %34 = icmp eq i8* %33, null, !dbg !3927
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3928
  br i1 %36, label %37, label %38, !dbg !3928

37:                                               ; preds = %31
  tail call void @xalloc_die() #31, !dbg !3929
  unreachable, !dbg !3929

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3910
  ret i8* %39, !dbg !3930
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #25 !dbg !3931 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3933, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i64 %0, metadata !3828, metadata !DIExpression()) #29, !dbg !3935
  %2 = tail call noalias i8* @malloc(i64 %0) #29, !dbg !3937
  call void @llvm.dbg.value(metadata i8* %2, metadata !3833, metadata !DIExpression()) #29, !dbg !3935
  %3 = icmp eq i8* %2, null, !dbg !3938
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3939
  br i1 %5, label %6, label %7, !dbg !3939

6:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !3940
  unreachable, !dbg !3940

7:                                                ; preds = %1
  ret i8* %2, !dbg !3941
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3942 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3946, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i64* %1, metadata !3947, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i8* %0, metadata !276, metadata !DIExpression()) #29, !dbg !3949
  call void @llvm.dbg.value(metadata i64* %1, metadata !277, metadata !DIExpression()) #29, !dbg !3949
  call void @llvm.dbg.value(metadata i64 1, metadata !278, metadata !DIExpression()) #29, !dbg !3949
  %3 = load i64, i64* %1, align 8, !dbg !3951, !tbaa !1007
  call void @llvm.dbg.value(metadata i64 %3, metadata !279, metadata !DIExpression()) #29, !dbg !3949
  %4 = icmp eq i8* %0, null, !dbg !3952
  br i1 %4, label %5, label %10, !dbg !3953

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3954
  br i1 %6, label %17, label %7, !dbg !3955

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !279, metadata !DIExpression()) #29, !dbg !3949
  %8 = icmp slt i64 %3, 0, !dbg !3956
  br i1 %8, label %9, label %17, !dbg !3957

9:                                                ; preds = %7
  tail call void @xalloc_die() #31, !dbg !3958
  unreachable, !dbg !3958

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3959
  br i1 %11, label %13, label %12, !dbg !3960

12:                                               ; preds = %10
  tail call void @xalloc_die() #31, !dbg !3961
  unreachable, !dbg !3961

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3962
  %15 = add nuw nsw i64 %3, 1, !dbg !3963
  %16 = add nuw nsw i64 %15, %14, !dbg !3964
  call void @llvm.dbg.value(metadata i64 %16, metadata !279, metadata !DIExpression()) #29, !dbg !3949
  call void @llvm.dbg.value(metadata i8* %0, metadata !3861, metadata !DIExpression()) #29, !dbg !3965
  call void @llvm.dbg.value(metadata i64 %16, metadata !3866, metadata !DIExpression()) #29, !dbg !3965
  br label %17, !dbg !3967

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3968
  store i64 %18, i64* %1, align 8, !dbg !3968, !tbaa !1007
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #29, !dbg !3969
  call void @llvm.dbg.value(metadata i8* %19, metadata !3861, metadata !DIExpression()) #29, !dbg !3965
  %20 = icmp eq i8* %19, null, !dbg !3970
  br i1 %20, label %21, label %22, !dbg !3971

21:                                               ; preds = %17
  tail call void @xalloc_die() #31, !dbg !3972
  unreachable, !dbg !3972

22:                                               ; preds = %17
  ret i8* %19, !dbg !3973
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3974 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3976, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i64 %0, metadata !3978, metadata !DIExpression()) #29, !dbg !3983
  call void @llvm.dbg.value(metadata i64 1, metadata !3981, metadata !DIExpression()) #29, !dbg !3983
  %2 = icmp slt i64 %0, 0, !dbg !3985
  br i1 %2, label %6, label %3, !dbg !3987

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #29, !dbg !3988
  call void @llvm.dbg.value(metadata i8* %4, metadata !3982, metadata !DIExpression()) #29, !dbg !3983
  %5 = icmp eq i8* %4, null, !dbg !3989
  br i1 %5, label %6, label %7, !dbg !3990

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #31, !dbg !3991
  unreachable, !dbg !3991

7:                                                ; preds = %3
  ret i8* %4, !dbg !3992
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3979 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3978, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 %1, metadata !3981, metadata !DIExpression()), !dbg !3993
  %3 = udiv i64 9223372036854775807, %1, !dbg !3994
  %4 = icmp ult i64 %3, %0, !dbg !3994
  br i1 %4, label %8, label %5, !dbg !3995

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #29, !dbg !3996
  call void @llvm.dbg.value(metadata i8* %6, metadata !3982, metadata !DIExpression()), !dbg !3993
  %7 = icmp eq i8* %6, null, !dbg !3997
  br i1 %7, label %8, label %9, !dbg !3998

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #31, !dbg !3999
  unreachable, !dbg !3999

9:                                                ; preds = %5
  ret i8* %6, !dbg !4000
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4001 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4005, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i64 %1, metadata !4006, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i64 %1, metadata !3828, metadata !DIExpression()) #29, !dbg !4008
  %3 = tail call noalias i8* @malloc(i64 %1) #29, !dbg !4010
  call void @llvm.dbg.value(metadata i8* %3, metadata !3833, metadata !DIExpression()) #29, !dbg !4008
  %4 = icmp eq i8* %3, null, !dbg !4011
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !4012
  br i1 %6, label %7, label %8, !dbg !4012

7:                                                ; preds = %2
  tail call void @xalloc_die() #31, !dbg !4013
  unreachable, !dbg !4013

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4014, metadata !DIExpression()) #29, !dbg !4019
  call void @llvm.dbg.value(metadata i8* %0, metadata !4017, metadata !DIExpression()) #29, !dbg !4019
  call void @llvm.dbg.value(metadata i64 %1, metadata !4018, metadata !DIExpression()) #29, !dbg !4019
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #29, !dbg !4021
  ret i8* %3, !dbg !4022
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4023 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4025, metadata !DIExpression()), !dbg !4026
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #30, !dbg !4027
  %3 = add i64 %2, 1, !dbg !4028
  call void @llvm.dbg.value(metadata i8* %0, metadata !4005, metadata !DIExpression()) #29, !dbg !4029
  call void @llvm.dbg.value(metadata i64 %3, metadata !4006, metadata !DIExpression()) #29, !dbg !4029
  call void @llvm.dbg.value(metadata i64 %3, metadata !3828, metadata !DIExpression()) #29, !dbg !4031
  %4 = tail call noalias i8* @malloc(i64 %3) #29, !dbg !4033
  call void @llvm.dbg.value(metadata i8* %4, metadata !3833, metadata !DIExpression()) #29, !dbg !4031
  %5 = icmp eq i8* %4, null, !dbg !4034
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !4035
  br i1 %7, label %8, label %9, !dbg !4035

8:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !4036
  unreachable, !dbg !4036

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4014, metadata !DIExpression()) #29, !dbg !4037
  call void @llvm.dbg.value(metadata i8* %0, metadata !4017, metadata !DIExpression()) #29, !dbg !4037
  call void @llvm.dbg.value(metadata i64 %3, metadata !4018, metadata !DIExpression()) #29, !dbg !4037
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #29, !dbg !4039
  ret i8* %4, !dbg !4040
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4041 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4042, !tbaa !979
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.175, i64 0, i64 0), i32 5) #29, !dbg !4043
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.176, i64 0, i64 0), i8* %2) #29, !dbg !4044
  tail call void @abort() #31, !dbg !4045
  unreachable, !dbg !4045
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #27 !dbg !4046 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4048, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i64 %1, metadata !4049, metadata !DIExpression()), !dbg !4054
  %3 = icmp eq i64 %0, 0, !dbg !4055
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4056
  br i1 %5, label %11, label %6, !dbg !4056

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4051, metadata !DIExpression()), !dbg !4057
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4058
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4058
  br i1 %8, label %9, label %11, !dbg !4060

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #32, !dbg !4061
  store i32 12, i32* %10, align 4, !dbg !4063, !tbaa !979
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4048, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i64 %12, metadata !4049, metadata !DIExpression()), !dbg !4054
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #29, !dbg !4064
  call void @llvm.dbg.value(metadata i8* %14, metadata !4050, metadata !DIExpression()), !dbg !4054
  br label %15, !dbg !4065

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4054
  ret i8* %16, !dbg !4066
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4067 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4083, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i8* %1, metadata !4084, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %2, metadata !4085, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4086, metadata !DIExpression()), !dbg !4092
  %6 = bitcast i32* %5 to i8*, !dbg !4093
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #29, !dbg !4093
  %7 = icmp eq i32* %0, null, !dbg !4094
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4096
  call void @llvm.dbg.value(metadata i32* %8, metadata !4083, metadata !DIExpression()), !dbg !4092
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #29, !dbg !4097
  call void @llvm.dbg.value(metadata i64 %9, metadata !4087, metadata !DIExpression()), !dbg !4092
  %10 = icmp ugt i64 %9, -3, !dbg !4098
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4099
  br i1 %12, label %13, label %18, !dbg !4099

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #29, !dbg !4100
  br i1 %14, label %18, label %15, !dbg !4101

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4102, !tbaa !1079
  call void @llvm.dbg.value(metadata i8 %16, metadata !4089, metadata !DIExpression()), !dbg !4103
  %17 = zext i8 %16 to i32, !dbg !4104
  store i32 %17, i32* %8, align 4, !dbg !4105, !tbaa !979
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4092
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #29, !dbg !4106
  ret i64 %19, !dbg !4106
}

; Function Attrs: nounwind
declare !dbg !4107 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @str2sig(i8* %0, i32* nocapture %1) local_unnamed_addr #8 !dbg !4111 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4115, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i32* %1, metadata !4116, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i8* %0, metadata !4118, metadata !DIExpression()) #29, !dbg !4137
  %5 = load i8, i8* %0, align 1, !dbg !4139, !tbaa !1079
  %6 = sext i8 %5 to i32, !dbg !4139
  %7 = add nsw i32 %6, -48, !dbg !4139
  %8 = icmp ult i32 %7, 10, !dbg !4139
  br i1 %8, label %9, label %21, !dbg !4140

9:                                                ; preds = %2
  %10 = bitcast i8** %3 to i8*, !dbg !4141
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #29, !dbg !4141
  call void @llvm.dbg.value(metadata i8** %3, metadata !4121, metadata !DIExpression(DW_OP_deref)) #29, !dbg !4142
  %11 = call i64 @strtol(i8* nonnull %0, i8** nonnull %3, i32 10) #29, !dbg !4143
  call void @llvm.dbg.value(metadata i64 %11, metadata !4124, metadata !DIExpression()) #29, !dbg !4142
  %12 = load i8*, i8** %3, align 8, !dbg !4144, !tbaa !704
  call void @llvm.dbg.value(metadata i8* %12, metadata !4121, metadata !DIExpression()) #29, !dbg !4142
  %13 = load i8, i8* %12, align 1, !dbg !4146, !tbaa !1079
  %14 = icmp eq i8 %13, 0, !dbg !4146
  %15 = icmp slt i64 %11, 65
  %16 = and i1 %15, %14, !dbg !4147
  %17 = trunc i64 %11 to i32, !dbg !4147
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #29, !dbg !4148
  br i1 %16, label %74, label %73

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %22, 1, !dbg !4149
  call void @llvm.dbg.value(metadata i64 %19, metadata !4125, metadata !DIExpression()) #29, !dbg !4152
  call void @llvm.dbg.value(metadata i64 %22, metadata !4125, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #29, !dbg !4152
  %20 = icmp eq i64 %19, 35, !dbg !4153
  br i1 %20, label %30, label %21, !dbg !4154, !llvm.loop !4155

21:                                               ; preds = %2, %18
  %22 = phi i64 [ %19, %18 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !4125, metadata !DIExpression()) #29, !dbg !4152
  %23 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 1, i64 0, !dbg !4157
  %24 = tail call i32 @strcmp(i8* nonnull %23, i8* nonnull %0) #30, !dbg !4159
  %25 = icmp eq i32 %24, 0, !dbg !4160
  call void @llvm.dbg.value(metadata i64 %22, metadata !4125, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #29, !dbg !4152
  br i1 %25, label %26, label %18, !dbg !4161

26:                                               ; preds = %21
  %27 = and i64 %22, 4294967295, !dbg !4162
  %28 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %27, i32 0, !dbg !4163
  %29 = load i32, i32* %28, align 4, !dbg !4163, !tbaa !4164
  br label %74

30:                                               ; preds = %18
  %31 = bitcast i8** %4 to i8*, !dbg !4166
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #29, !dbg !4166
  %32 = tail call i32 @__libc_current_sigrtmin() #29, !dbg !4167
  call void @llvm.dbg.value(metadata i32 %32, metadata !4129, metadata !DIExpression()) #29, !dbg !4168
  %33 = tail call i32 @__libc_current_sigrtmax() #29, !dbg !4169
  call void @llvm.dbg.value(metadata i32 %33, metadata !4130, metadata !DIExpression()) #29, !dbg !4168
  %34 = icmp sgt i32 %32, 0, !dbg !4170
  br i1 %34, label %35, label %50, !dbg !4171

35:                                               ; preds = %30
  %36 = tail call i32 @strncmp(i8* nonnull %0, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.183, i64 0, i64 0), i64 5) #30, !dbg !4172
  %37 = icmp eq i32 %36, 0, !dbg !4173
  br i1 %37, label %38, label %50, !dbg !4174

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !4175
  call void @llvm.dbg.value(metadata i8** %4, metadata !4127, metadata !DIExpression(DW_OP_deref)) #29, !dbg !4168
  %40 = call i64 @strtol(i8* nonnull %39, i8** nonnull %4, i32 10) #29, !dbg !4176
  call void @llvm.dbg.value(metadata i64 %40, metadata !4131, metadata !DIExpression()) #29, !dbg !4177
  %41 = load i8*, i8** %4, align 8, !dbg !4178, !tbaa !704
  call void @llvm.dbg.value(metadata i8* %41, metadata !4127, metadata !DIExpression()) #29, !dbg !4168
  %42 = load i8, i8* %41, align 1, !dbg !4180, !tbaa !1079
  %43 = icmp eq i8 %42, 0, !dbg !4180
  %44 = icmp sgt i64 %40, -1
  %45 = and i1 %44, %43, !dbg !4181
  br i1 %45, label %46, label %67, !dbg !4181

46:                                               ; preds = %38
  %47 = sub nsw i32 %33, %32, !dbg !4182
  %48 = sext i32 %47 to i64, !dbg !4183
  %49 = icmp sgt i64 %40, %48, !dbg !4184
  br i1 %49, label %67, label %68, !dbg !4185

50:                                               ; preds = %35, %30
  %51 = icmp sgt i32 %33, 0, !dbg !4186
  br i1 %51, label %52, label %67, !dbg !4187

52:                                               ; preds = %50
  %53 = tail call i32 @strncmp(i8* nonnull %0, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i64 0, i64 0), i64 5) #30, !dbg !4188
  %54 = icmp eq i32 %53, 0, !dbg !4189
  br i1 %54, label %55, label %67, !dbg !4190

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !4191
  call void @llvm.dbg.value(metadata i8** %4, metadata !4127, metadata !DIExpression(DW_OP_deref)) #29, !dbg !4168
  %57 = call i64 @strtol(i8* nonnull %56, i8** nonnull %4, i32 10) #29, !dbg !4192
  call void @llvm.dbg.value(metadata i64 %57, metadata !4134, metadata !DIExpression()) #29, !dbg !4193
  %58 = load i8*, i8** %4, align 8, !dbg !4194, !tbaa !704
  call void @llvm.dbg.value(metadata i8* %58, metadata !4127, metadata !DIExpression()) #29, !dbg !4168
  %59 = load i8, i8* %58, align 1, !dbg !4196, !tbaa !1079
  %60 = icmp eq i8 %59, 0, !dbg !4196
  br i1 %60, label %61, label %67, !dbg !4197

61:                                               ; preds = %55
  %62 = sub nsw i32 %32, %33, !dbg !4198
  %63 = sext i32 %62 to i64, !dbg !4199
  %64 = icmp sge i64 %57, %63, !dbg !4200
  %65 = icmp slt i64 %57, 1
  %66 = and i1 %64, %65, !dbg !4201
  br i1 %66, label %68, label %67, !dbg !4201

67:                                               ; preds = %61, %55, %52, %50, %46, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #29, !dbg !4202
  br label %73

68:                                               ; preds = %61, %46
  %69 = phi i64 [ %40, %46 ], [ %57, %61 ]
  %70 = phi i32 [ %32, %46 ], [ %33, %61 ]
  %71 = trunc i64 %69 to i32, !dbg !4203
  %72 = add i32 %70, %71, !dbg !4203
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #29, !dbg !4202
  br label %74

73:                                               ; preds = %67, %9
  br label %74, !dbg !4204

74:                                               ; preds = %9, %26, %68, %73
  %75 = phi i32 [ -1, %73 ], [ %17, %9 ], [ %72, %68 ], [ %29, %26 ], !dbg !4137
  store i32 %75, i32* %1, align 4, !dbg !4205, !tbaa !979
  %76 = ashr i32 %75, 31, !dbg !4206
  ret i32 %76, !dbg !4207
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @sig2str(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4208 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4212, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i8* %1, metadata !4213, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 0, metadata !4214, metadata !DIExpression()), !dbg !4220
  br label %8, !dbg !4221

3:                                                ; preds = %8
  %4 = add nuw nsw i64 %9, 1, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %4, metadata !4214, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %9, metadata !4214, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %4, metadata !4214, metadata !DIExpression()), !dbg !4220
  %5 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %4, i32 0, !dbg !4225
  %6 = load i32, i32* %5, align 4, !dbg !4225, !tbaa !4164
  %7 = icmp eq i32 %6, %0, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %4, metadata !4214, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4220
  br i1 %7, label %13, label %40, !dbg !4228

8:                                                ; preds = %55, %2
  %9 = phi i64 [ 0, %2 ], [ %56, %55 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !4214, metadata !DIExpression()), !dbg !4220
  %10 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %9, i32 0, !dbg !4225
  %11 = load i32, i32* %10, align 4, !dbg !4225, !tbaa !4164
  %12 = icmp eq i32 %11, %0, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %9, metadata !4214, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4220
  br i1 %12, label %13, label %3, !dbg !4228

13:                                               ; preds = %50, %45, %40, %3, %8
  %14 = phi i64 [ %9, %8 ], [ %4, %3 ], [ %41, %40 ], [ %46, %45 ], [ %51, %50 ]
  %15 = and i64 %14, 4294967295, !dbg !4229
  %16 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %15, i32 1, i64 0, !dbg !4230
  call void @llvm.dbg.value(metadata i8* %1, metadata !4232, metadata !DIExpression()) #29, !dbg !4236
  call void @llvm.dbg.value(metadata i8* %16, metadata !4235, metadata !DIExpression()) #29, !dbg !4236
  %17 = call i8* @strcpy(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(1) %16), !dbg !4238
  br label %38, !dbg !4239

18:                                               ; preds = %55
  %19 = tail call i32 @__libc_current_sigrtmin() #29, !dbg !4240
  call void @llvm.dbg.value(metadata i32 %19, metadata !4215, metadata !DIExpression()), !dbg !4241
  %20 = tail call i32 @__libc_current_sigrtmax() #29, !dbg !4242
  call void @llvm.dbg.value(metadata i32 %20, metadata !4217, metadata !DIExpression()), !dbg !4241
  %21 = icmp sgt i32 %19, %0, !dbg !4243
  %22 = icmp slt i32 %20, %0
  %23 = or i1 %21, %22, !dbg !4245
  br i1 %23, label %38, label %24, !dbg !4245

24:                                               ; preds = %18
  %25 = sub nsw i32 %20, %19, !dbg !4246
  %26 = sdiv i32 %25, 2, !dbg !4248
  %27 = add nsw i32 %26, %19, !dbg !4249
  %28 = icmp slt i32 %27, %0, !dbg !4250
  call void @llvm.dbg.value(metadata i8* %1, metadata !4232, metadata !DIExpression()) #29, !dbg !4251
  call void @llvm.dbg.value(metadata i8* %1, metadata !4232, metadata !DIExpression()) #29, !dbg !4254
  br i1 %28, label %30, label %29, !dbg !4257

29:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.183, i64 0, i64 0), metadata !4235, metadata !DIExpression()) #29, !dbg !4254
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.183, i64 0, i64 0), i64 6, i1 false), !dbg !4258
  call void @llvm.dbg.value(metadata i32 %19, metadata !4218, metadata !DIExpression()), !dbg !4241
  br label %31, !dbg !4259

30:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i64 0, i64 0), metadata !4235, metadata !DIExpression()) #29, !dbg !4251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i64 0, i64 0), i64 6, i1 false), !dbg !4260
  call void @llvm.dbg.value(metadata i32 %20, metadata !4218, metadata !DIExpression()), !dbg !4241
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i32 [ %19, %29 ], [ %20, %30 ], !dbg !4261
  call void @llvm.dbg.value(metadata i32 %32, metadata !4218, metadata !DIExpression()), !dbg !4241
  %33 = sub nsw i32 %0, %32, !dbg !4262
  call void @llvm.dbg.value(metadata i32 %33, metadata !4219, metadata !DIExpression()), !dbg !4241
  %34 = icmp eq i32 %33, 0, !dbg !4263
  br i1 %34, label %38, label %35, !dbg !4265

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !4266
  %37 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %36, i32 1, i64 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.187, i64 0, i64 0), i32 %33) #29, !dbg !4266
  br label %38, !dbg !4266

38:                                               ; preds = %18, %35, %31, %13
  %39 = phi i32 [ 0, %13 ], [ -1, %18 ], [ 0, %35 ], [ 0, %31 ], !dbg !4220
  ret i32 %39, !dbg !4267

40:                                               ; preds = %3
  %41 = add nuw nsw i64 %9, 2, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %41, metadata !4214, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %4, metadata !4214, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %41, metadata !4214, metadata !DIExpression()), !dbg !4220
  %42 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %41, i32 0, !dbg !4225
  %43 = load i32, i32* %42, align 4, !dbg !4225, !tbaa !4164
  %44 = icmp eq i32 %43, %0, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %41, metadata !4214, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4220
  br i1 %44, label %13, label %45, !dbg !4228

45:                                               ; preds = %40
  %46 = add nuw nsw i64 %9, 3, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %46, metadata !4214, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %41, metadata !4214, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %46, metadata !4214, metadata !DIExpression()), !dbg !4220
  %47 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %46, i32 0, !dbg !4225
  %48 = load i32, i32* %47, align 4, !dbg !4225, !tbaa !4164
  %49 = icmp eq i32 %48, %0, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %46, metadata !4214, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4220
  br i1 %49, label %13, label %50, !dbg !4228

50:                                               ; preds = %45
  %51 = add nuw nsw i64 %9, 4, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %51, metadata !4214, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %46, metadata !4214, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %51, metadata !4214, metadata !DIExpression()), !dbg !4220
  %52 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %51, i32 0, !dbg !4225
  %53 = load i32, i32* %52, align 4, !dbg !4225, !tbaa !4164
  %54 = icmp eq i32 %53, %0, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %51, metadata !4214, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4220
  br i1 %54, label %13, label %55, !dbg !4228

55:                                               ; preds = %50
  %56 = add nuw nsw i64 %9, 5, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %56, metadata !4214, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %51, metadata !4214, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4220
  %57 = icmp eq i64 %56, 35, !dbg !4268
  br i1 %57, label %18, label %8, !dbg !4221, !llvm.loop !4269
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #12

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #28

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4271 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4309, metadata !DIExpression()), !dbg !4314
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #29, !dbg !4315
  call void @llvm.dbg.value(metadata i1 undef, metadata !4310, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4314
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4316, metadata !DIExpression()), !dbg !4320
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4322
  %4 = load i32, i32* %3, align 8, !dbg !4322, !tbaa !4323
  %5 = and i32 %4, 32, !dbg !4325
  %6 = icmp eq i32 %5, 0, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %6, metadata !4312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4314
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #29, !dbg !4326
  %8 = icmp eq i32 %7, 0, !dbg !4327
  call void @llvm.dbg.value(metadata i1 %8, metadata !4313, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4314
  br i1 %6, label %9, label %19, !dbg !4328

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4330
  call void @llvm.dbg.value(metadata i1 %10, metadata !4310, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4314
  %11 = or i1 %10, %8, !dbg !4331
  %12 = xor i1 %8, true, !dbg !4331
  %13 = sext i1 %12 to i32, !dbg !4331
  br i1 %11, label %22, label %14, !dbg !4331

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #32, !dbg !4332
  %16 = load i32, i32* %15, align 4, !dbg !4332, !tbaa !979
  %17 = icmp ne i32 %16, 9, !dbg !4333
  %18 = sext i1 %17 to i32, !dbg !4334
  br label %22, !dbg !4334

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4335

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #32, !dbg !4337
  store i32 0, i32* %21, align 4, !dbg !4339, !tbaa !979
  br label %22, !dbg !4337

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4314
  ret i32 %23, !dbg !4340
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4341 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4343, metadata !DIExpression()), !dbg !4348
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4349
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #29, !dbg !4349
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4344, metadata !DIExpression()), !dbg !4350
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #29, !dbg !4351
  %5 = icmp eq i32 %4, 0, !dbg !4351
  br i1 %5, label %6, label %13, !dbg !4353

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4354
  %8 = load i16, i16* %7, align 16, !dbg !4354
  %9 = icmp eq i16 %8, 67, !dbg !4354
  br i1 %9, label %13, label %10, !dbg !4355

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.192, i64 0, i64 0), i64 6), !dbg !4356
  %12 = icmp ne i32 %11, 0, !dbg !4357
  br label %13, !dbg !4355

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4348
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #29, !dbg !4358
  ret i1 %14, !dbg !4358
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4359 {
  %1 = tail call i8* @nl_langinfo(i32 14) #29, !dbg !4364
  call void @llvm.dbg.value(metadata i8* %1, metadata !4363, metadata !DIExpression()), !dbg !4365
  %2 = icmp eq i8* %1, null, !dbg !4366
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.195, i64 0, i64 0), i8* %1, !dbg !4368
  call void @llvm.dbg.value(metadata i8* %3, metadata !4363, metadata !DIExpression()), !dbg !4365
  %4 = load i8, i8* %3, align 1, !dbg !4369, !tbaa !1079
  %5 = icmp eq i8 %4, 0, !dbg !4373
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.196, i64 0, i64 0), i8* %3, !dbg !4374
  call void @llvm.dbg.value(metadata i8* %6, metadata !4363, metadata !DIExpression()), !dbg !4365
  ret i8* %6, !dbg !4375
}

; Function Attrs: nounwind
declare !dbg !4376 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4379 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4383, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i8* %1, metadata !4384, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i64 %2, metadata !4385, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i32 %0, metadata !4387, metadata !DIExpression()) #29, !dbg !4396
  call void @llvm.dbg.value(metadata i8* %1, metadata !4390, metadata !DIExpression()) #29, !dbg !4396
  call void @llvm.dbg.value(metadata i64 %2, metadata !4391, metadata !DIExpression()) #29, !dbg !4396
  call void @llvm.dbg.value(metadata i32 %0, metadata !4398, metadata !DIExpression()) #29, !dbg !4404
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #29, !dbg !4406
  call void @llvm.dbg.value(metadata i8* %4, metadata !4403, metadata !DIExpression()) #29, !dbg !4404
  call void @llvm.dbg.value(metadata i8* %4, metadata !4392, metadata !DIExpression()) #29, !dbg !4396
  %5 = icmp eq i8* %4, null, !dbg !4407
  br i1 %5, label %6, label %9, !dbg !4408

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4409
  br i1 %7, label %19, label %8, !dbg !4412

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4413, !tbaa !1079
  br label %19, !dbg !4414

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #30, !dbg !4415
  call void @llvm.dbg.value(metadata i64 %10, metadata !4393, metadata !DIExpression()) #29, !dbg !4416
  %11 = icmp ult i64 %10, %2, !dbg !4417
  br i1 %11, label %12, label %14, !dbg !4419

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4420
  call void @llvm.dbg.value(metadata i8* %1, metadata !4422, metadata !DIExpression()) #29, !dbg !4427
  call void @llvm.dbg.value(metadata i8* %4, metadata !4425, metadata !DIExpression()) #29, !dbg !4427
  call void @llvm.dbg.value(metadata i64 %13, metadata !4426, metadata !DIExpression()) #29, !dbg !4427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #29, !dbg !4429
  br label %19, !dbg !4430

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4431
  br i1 %15, label %19, label %16, !dbg !4434

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4435
  call void @llvm.dbg.value(metadata i8* %1, metadata !4422, metadata !DIExpression()) #29, !dbg !4437
  call void @llvm.dbg.value(metadata i8* %4, metadata !4425, metadata !DIExpression()) #29, !dbg !4437
  call void @llvm.dbg.value(metadata i64 %17, metadata !4426, metadata !DIExpression()) #29, !dbg !4437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #29, !dbg !4439
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4440
  store i8 0, i8* %18, align 1, !dbg !4441, !tbaa !1079
  br label %19, !dbg !4442

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4443
  ret i32 %20, !dbg !4444
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4445 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4447, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i32 %0, metadata !4398, metadata !DIExpression()) #29, !dbg !4449
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #29, !dbg !4451
  call void @llvm.dbg.value(metadata i8* %2, metadata !4403, metadata !DIExpression()) #29, !dbg !4449
  ret i8* %2, !dbg !4452
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4453 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4491, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata i32 0, metadata !4492, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata i32 0, metadata !4494, metadata !DIExpression()), !dbg !4495
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !4496
  call void @llvm.dbg.value(metadata i32 %2, metadata !4493, metadata !DIExpression()), !dbg !4495
  %3 = icmp slt i32 %2, 0, !dbg !4497
  br i1 %3, label %4, label %6, !dbg !4499

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4500
  br label %24, !dbg !4501

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #29, !dbg !4502
  %8 = icmp eq i32 %7, 0, !dbg !4502
  br i1 %8, label %13, label %9, !dbg !4504

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !4505
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #29, !dbg !4506
  %12 = icmp eq i64 %11, -1, !dbg !4507
  br i1 %12, label %16, label %13, !dbg !4508

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #29, !dbg !4509
  %15 = icmp eq i32 %14, 0, !dbg !4509
  br i1 %15, label %16, label %18, !dbg !4510

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4492, metadata !DIExpression()), !dbg !4495
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4511
  call void @llvm.dbg.value(metadata i32 %21, metadata !4494, metadata !DIExpression()), !dbg !4495
  br label %24, !dbg !4512

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #32, !dbg !4513
  %20 = load i32, i32* %19, align 4, !dbg !4513, !tbaa !979
  call void @llvm.dbg.value(metadata i32 %20, metadata !4492, metadata !DIExpression()), !dbg !4495
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4511
  call void @llvm.dbg.value(metadata i32 %21, metadata !4494, metadata !DIExpression()), !dbg !4495
  %22 = icmp eq i32 %20, 0, !dbg !4514
  br i1 %22, label %24, label %23, !dbg !4512

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4516, !tbaa !979
  call void @llvm.dbg.value(metadata i32 -1, metadata !4494, metadata !DIExpression()), !dbg !4495
  br label %24, !dbg !4518

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4495
  ret i32 %25, !dbg !4519
}

; Function Attrs: nofree nounwind
declare !dbg !4520 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4523 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4524 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4527 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4565, metadata !DIExpression()), !dbg !4566
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4567
  br i1 %2, label %6, label %3, !dbg !4569

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #29, !dbg !4570
  %5 = icmp eq i32 %4, 0, !dbg !4570
  br i1 %5, label %6, label %8, !dbg !4571

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4572
  br label %17, !dbg !4573

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4574, metadata !DIExpression()) #29, !dbg !4579
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4581
  %10 = load i32, i32* %9, align 8, !dbg !4581, !tbaa !4323
  %11 = and i32 %10, 256, !dbg !4583
  %12 = icmp eq i32 %11, 0, !dbg !4583
  br i1 %12, label %15, label %13, !dbg !4584

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #29, !dbg !4585
  br label %15, !dbg !4585

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4586
  br label %17, !dbg !4587

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4566
  ret i32 %18, !dbg !4588
}

; Function Attrs: nofree nounwind
declare !dbg !4589 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4592 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4631, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata i64 %1, metadata !4632, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata i32 %2, metadata !4633, metadata !DIExpression()), !dbg !4637
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4638
  %5 = load i8*, i8** %4, align 8, !dbg !4638, !tbaa !4639
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4640
  %7 = load i8*, i8** %6, align 8, !dbg !4640, !tbaa !4641
  %8 = icmp eq i8* %5, %7, !dbg !4642
  br i1 %8, label %9, label %28, !dbg !4643

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4644
  %11 = load i8*, i8** %10, align 8, !dbg !4644, !tbaa !4645
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4646
  %13 = load i8*, i8** %12, align 8, !dbg !4646, !tbaa !4647
  %14 = icmp eq i8* %11, %13, !dbg !4648
  br i1 %14, label %15, label %28, !dbg !4649

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4650
  %17 = load i8*, i8** %16, align 8, !dbg !4650, !tbaa !4651
  %18 = icmp eq i8* %17, null, !dbg !4652
  br i1 %18, label %19, label %28, !dbg !4653

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !4654
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #29, !dbg !4655
  call void @llvm.dbg.value(metadata i64 %21, metadata !4634, metadata !DIExpression()), !dbg !4656
  %22 = icmp eq i64 %21, -1, !dbg !4657
  br i1 %22, label %30, label %23, !dbg !4659

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4660
  %25 = load i32, i32* %24, align 8, !dbg !4661, !tbaa !4323
  %26 = and i32 %25, -17, !dbg !4661
  store i32 %26, i32* %24, align 8, !dbg !4661, !tbaa !4323
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4662
  store i64 %21, i64* %27, align 8, !dbg !4663, !tbaa !4664
  br label %30, !dbg !4665

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4666
  br label %30, !dbg !4667

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4637
  ret i32 %31, !dbg !4668
}

; Function Attrs: nofree nounwind
declare !dbg !4669 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { inlinehint norecurse nounwind readnone sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree nounwind }
attributes #20 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { nofree nosync nounwind willreturn }
attributes #25 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #28 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #29 = { nounwind }
attributes #30 = { nounwind readonly willreturn }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind readnone willreturn }
attributes #33 = { noreturn }
attributes #34 = { cold }

!llvm.dbg.cu = !{!2, !259, !162, !261, !168, !175, !181, !187, !263, !239, !270, !281, !283, !285, !247, !288, !290, !292, !681, !683, !685, !687}
!llvm.ident = !{!689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689}
!llvm.module.flags = !{!690, !691, !692, !693, !694}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "signals", scope: !2, file: !3, line: 62, type: !156, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !66, globals: !76, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/env.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !13, !27, !34, !51}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !14, line: 32, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!35 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!36 = distinct !DISubprogram(name: "x2nrealloc", scope: !35, file: !35, line: 174, type: !37, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !44)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !39, !40, !41}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
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
!66 = !{!67, !39, !41, !69, !70, !71}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !72, line: 72, baseType: !73)
!72 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !69}
!76 = !{!77, !108, !110, !112, !0, !114, !119, !131, !133, !135, !138, !150, !152, !154}
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "dummy_environ", scope: !79, file: !3, line: 877, type: !105, isLocal: true, isDefinition: true)
!79 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 798, type: !80, scopeLine: 799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!80 = !DISubroutineType(types: !81)
!81 = !{!69, !69, !82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!83 = !{!84, !85, !86, !87, !89, !90, !93, !94, !95, !100, !104}
!84 = !DILocalVariable(name: "argc", arg: 1, scope: !79, file: !3, line: 798, type: !69)
!85 = !DILocalVariable(name: "argv", arg: 2, scope: !79, file: !3, line: 798, type: !82)
!86 = !DILocalVariable(name: "optc", scope: !79, file: !3, line: 800, type: !69)
!87 = !DILocalVariable(name: "ignore_environment", scope: !79, file: !3, line: 801, type: !88)
!88 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!89 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !79, file: !3, line: 802, type: !88)
!90 = !DILocalVariable(name: "newdir", scope: !79, file: !3, line: 803, type: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!93 = !DILocalVariable(name: "eq", scope: !79, file: !3, line: 883, type: !67)
!94 = !DILocalVariable(name: "program_specified", scope: !79, file: !3, line: 897, type: !88)
!95 = !DILocalVariable(name: "e", scope: !96, file: !3, line: 914, type: !98)
!96 = distinct !DILexicalBlock(scope: !97, file: !3, line: 912, column: 5)
!97 = distinct !DILexicalBlock(scope: !79, file: !3, line: 911, column: 7)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!100 = !DILocalVariable(name: "i", scope: !101, file: !3, line: 939, type: !69)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 939, column: 7)
!102 = distinct !DILexicalBlock(scope: !103, file: !3, line: 937, column: 5)
!103 = distinct !DILexicalBlock(scope: !79, file: !3, line: 936, column: 7)
!104 = !DILocalVariable(name: "exit_status", scope: !79, file: !3, line: 945, type: !69)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 1)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "dev_debug", scope: !2, file: !3, line: 48, type: !88, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "sig_mask_changed", scope: !2, file: !3, line: 71, type: !88, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "report_signal_handling", scope: !2, file: !3, line: 74, type: !88, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 76, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 104, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 13)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 88, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 3328, elements: !117)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !124, line: 50, size: 256, elements: !125)
!124 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!125 = !{!126, !127, !128, !130}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !123, file: !124, line: 52, baseType: !91, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !123, file: !124, line: 55, baseType: !69, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !123, file: !124, line: 56, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !123, file: !124, line: 57, baseType: !69, size: 32, offset: 192)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "usvars_used", scope: !2, file: !3, line: 45, type: !41, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "usvars_alloc", scope: !2, file: !3, line: 44, type: !41, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "usvars", scope: !2, file: !3, line: 43, type: !137, isLocal: true, isDefinition: true)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "block_signals", scope: !2, file: !3, line: 65, type: !140, isLocal: true, isDefinition: true)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !141, line: 7, baseType: !142)
!141 = !DIFile(filename: "/usr/include/bits/types/sigset_t.h", directory: "")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !143, line: 8, baseType: !144)
!143 = !DIFile(filename: "/usr/include/bits/types/__sigset_t.h", directory: "")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 5, size: 1024, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !144, file: !143, line: 7, baseType: !147, size: 1024)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1024, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 16)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "unblock_signals", scope: !2, file: !3, line: 68, type: !140, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "vnlen", scope: !2, file: !3, line: 52, type: !41, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "varname", scope: !2, file: !3, line: 51, type: !67, isLocal: true, isDefinition: true)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!157 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!158 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!159 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "Version", scope: !162, file: !163, line: 2, type: !91, isLocal: false, isDefinition: true)
!162 = distinct !DICompileUnit(language: DW_LANG_C99, file: !163, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, globals: !165, splitDebugInlining: false, nameTableKind: None)
!163 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!164 = !{}
!165 = !{!160}
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "file_name", scope: !168, file: !169, line: 46, type: !91, isLocal: true, isDefinition: true)
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, globals: !170, splitDebugInlining: false, nameTableKind: None)
!169 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!170 = !{!166, !171}
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !168, file: !169, line: 56, type: !88, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "exit_failure", scope: !175, file: !176, line: 24, type: !178, isLocal: false, isDefinition: true)
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, globals: !177, splitDebugInlining: false, nameTableKind: None)
!176 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!177 = !{!173}
!178 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "program_name", scope: !181, file: !182, line: 33, type: !91, isLocal: false, isDefinition: true)
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, retainedTypes: !183, globals: !184, splitDebugInlining: false, nameTableKind: None)
!182 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = !{!39, !67}
!184 = !{!179}
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !187, file: !188, line: 85, type: !233, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !195, globals: !196, splitDebugInlining: false, nameTableKind: None)
!188 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!189 = !{!13, !190, !51}
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !14, line: 242, baseType: !7, size: 32, elements: !191)
!191 = !{!192, !193, !194}
!192 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!193 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!194 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!195 = !{!69, !70, !41, !67}
!196 = !{!185, !197, !203, !215, !217, !222, !229, !231}
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !187, file: !188, line: 101, type: !199, isLocal: false, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 320, elements: !201)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!201 = !{!202}
!202 = !DISubrange(count: 10)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !187, file: !188, line: 1052, type: !205, isLocal: false, isDefinition: true)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !188, line: 65, size: 448, elements: !206)
!206 = !{!207, !208, !209, !213, !214}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !205, file: !188, line: 68, baseType: !13, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !188, line: 71, baseType: !69, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !205, file: !188, line: 75, baseType: !210, size: 256, offset: 64)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !205, file: !188, line: 78, baseType: !91, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !205, file: !188, line: 81, baseType: !91, size: 64, offset: 384)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !187, file: !188, line: 116, type: !205, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "slot0", scope: !187, file: !188, line: 842, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2048, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 256)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "slotvec", scope: !187, file: !188, line: 845, type: !224, isLocal: true, isDefinition: true)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !188, line: 834, size: 128, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !225, file: !188, line: 836, baseType: !41, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !225, file: !188, line: 837, baseType: !67, size: 64, offset: 64)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "nslots", scope: !187, file: !188, line: 843, type: !69, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "slotvec0", scope: !187, file: !188, line: 844, type: !225, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 704, elements: !235)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!235 = !{!236}
!236 = !DISubrange(count: 11)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !239, file: !240, line: 26, type: !242, isLocal: false, isDefinition: true)
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !240, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, globals: !241, splitDebugInlining: false, nameTableKind: None)
!240 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!241 = !{!237}
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 376, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 47)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "numname_table", scope: !247, file: !248, line: 41, type: !251, isLocal: true, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, retainedTypes: !249, globals: !250, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/sig2str.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!249 = !{!7}
!250 = !{!245}
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 3360, elements: !257)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !248, line: 41, size: 96, elements: !253)
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !252, file: !248, line: 41, baseType: !69, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !252, file: !248, line: 41, baseType: !256, size: 64, offset: 32)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 64, elements: !211)
!257 = !{!258}
!258 = !DISubrange(count: 35)
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, retainedTypes: !249, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "src/operand2sig.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, splitDebugInlining: false, nameTableKind: None)
!262 = !DIFile(filename: "lib/c-ctype.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !265, retainedTypes: !269, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!265 = !{!266}
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !264, line: 40, baseType: !7, size: 32, elements: !267)
!267 = !{!268}
!268 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!269 = !{!39}
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !272, retainedTypes: !280, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!272 = !{!273}
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !274, file: !35, line: 186, baseType: !7, size: 32, elements: !49)
!274 = distinct !DISubprogram(name: "x2nrealloc", scope: !35, file: !35, line: 174, type: !37, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !275)
!275 = !{!276, !277, !278, !279}
!276 = !DILocalVariable(name: "p", arg: 1, scope: !274, file: !35, line: 174, type: !39)
!277 = !DILocalVariable(name: "pn", arg: 2, scope: !274, file: !35, line: 174, type: !40)
!278 = !DILocalVariable(name: "s", arg: 3, scope: !274, file: !35, line: 174, type: !41)
!279 = !DILocalVariable(name: "n", scope: !274, file: !35, line: 176, type: !41)
!280 = !{!41, !67, !39}
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, splitDebugInlining: false, nameTableKind: None)
!282 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, retainedTypes: !269, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, retainedTypes: !287, splitDebugInlining: false, nameTableKind: None)
!286 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!287 = !{!41}
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, splitDebugInlining: false, nameTableKind: None)
!289 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, splitDebugInlining: false, nameTableKind: None)
!291 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !294, retainedTypes: !269, splitDebugInlining: false, nameTableKind: None)
!293 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!294 = !{!295}
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !296, line: 41, baseType: !7, size: 32, elements: !297)
!296 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!298 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!299 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!300 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!301 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!302 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!303 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!304 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!305 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!306 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!307 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!308 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!309 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!310 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!311 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!312 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!313 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!314 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!315 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!316 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!317 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!318 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!319 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!320 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!321 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!322 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!323 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!324 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!325 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!326 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!327 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!328 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!329 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!330 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!331 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!332 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!333 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!334 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!335 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!336 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!337 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!338 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!339 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!340 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!341 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!342 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!343 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!344 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!345 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!346 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!347 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!406 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!409 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!410 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!411 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!412 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!413 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!414 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!415 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!416 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!417 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!418 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!419 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!420 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!493 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!566 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!567 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!568 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!569 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!570 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!571 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!572 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!573 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!574 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!575 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!576 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!577 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!578 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!579 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!580 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!582 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!583 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!584 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!585 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!586 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!587 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!613 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!614 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!615 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!616 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!617 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!622 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!623 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!624 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!625 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!681 = distinct !DICompileUnit(language: DW_LANG_C99, file: !682, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, retainedTypes: !269, splitDebugInlining: false, nameTableKind: None)
!682 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!683 = distinct !DICompileUnit(language: DW_LANG_C99, file: !684, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, splitDebugInlining: false, nameTableKind: None)
!684 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!685 = distinct !DICompileUnit(language: DW_LANG_C99, file: !686, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, retainedTypes: !269, splitDebugInlining: false, nameTableKind: None)
!686 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!687 = distinct !DICompileUnit(language: DW_LANG_C99, file: !688, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !164, retainedTypes: !269, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!689 = !{!"clang version 12.0.1"}
!690 = !{i32 7, !"Dwarf Version", i32 4}
!691 = !{i32 2, !"Debug Info Version", i32 3}
!692 = !{i32 1, !"wchar_size", i32 4}
!693 = !{i32 7, !"PIC Level", i32 2}
!694 = !{i32 7, !"PIE Level", i32 2}
!695 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 106, type: !74, scopeLine: 107, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !696)
!696 = !{!697}
!697 = !DILocalVariable(name: "status", arg: 1, scope: !695, file: !3, line: 106, type: !69)
!698 = !DILocation(line: 0, scope: !695)
!699 = !DILocation(line: 108, column: 14, scope: !700)
!700 = distinct !DILexicalBlock(scope: !695, file: !3, line: 108, column: 7)
!701 = !DILocation(line: 108, column: 7, scope: !695)
!702 = !DILocation(line: 109, column: 5, scope: !703)
!703 = distinct !DILexicalBlock(scope: !700, file: !3, line: 109, column: 5)
!704 = !{!705, !705, i64 0}
!705 = !{!"any pointer", !706, i64 0}
!706 = !{!"omnipotent char", !707, i64 0}
!707 = !{!"Simple C/C++ TBAA"}
!708 = !DILocation(line: 112, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !700, file: !3, line: 111, column: 5)
!710 = !DILocation(line: 115, column: 7, scope: !709)
!711 = !DILocation(line: 590, column: 3, scope: !712, inlinedAt: !715)
!712 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 588, type: !713, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !164)
!713 = !DISubroutineType(types: !714)
!714 = !{null}
!715 = distinct !DILocation(line: 119, column: 7, scope: !709)
!716 = !DILocation(line: 121, column: 7, scope: !709)
!717 = !DILocation(line: 126, column: 7, scope: !709)
!718 = !DILocation(line: 129, column: 7, scope: !709)
!719 = !DILocation(line: 133, column: 7, scope: !709)
!720 = !DILocation(line: 136, column: 7, scope: !709)
!721 = !DILocation(line: 139, column: 7, scope: !709)
!722 = !DILocation(line: 142, column: 7, scope: !709)
!723 = !DILocation(line: 145, column: 7, scope: !709)
!724 = !DILocation(line: 148, column: 7, scope: !709)
!725 = !DILocation(line: 149, column: 7, scope: !709)
!726 = !DILocation(line: 150, column: 7, scope: !709)
!727 = !DILocation(line: 154, column: 7, scope: !709)
!728 = !DILocalVariable(name: "program", arg: 1, scope: !729, file: !6, line: 634, type: !91)
!729 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 634, type: !730, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !732)
!730 = !DISubroutineType(types: !731)
!731 = !{null, !91}
!732 = !{!728, !733, !742, !743, !745}
!733 = !DILocalVariable(name: "infomap", scope: !729, file: !6, line: 636, type: !734)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 896, elements: !740)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !729, file: !6, line: 636, size: 128, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !736, file: !6, line: 636, baseType: !91, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !736, file: !6, line: 636, baseType: !91, size: 64, offset: 64)
!740 = !{!741}
!741 = !DISubrange(count: 7)
!742 = !DILocalVariable(name: "node", scope: !729, file: !6, line: 646, type: !91)
!743 = !DILocalVariable(name: "map_prog", scope: !729, file: !6, line: 647, type: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!745 = !DILocalVariable(name: "lc_messages", scope: !729, file: !6, line: 659, type: !91)
!746 = !DILocation(line: 0, scope: !729, inlinedAt: !747)
!747 = distinct !DILocation(line: 160, column: 7, scope: !709)
!748 = !DILocation(line: 636, column: 3, scope: !729, inlinedAt: !747)
!749 = !DILocation(line: 636, column: 67, scope: !729, inlinedAt: !747)
!750 = !DILocation(line: 647, column: 36, scope: !729, inlinedAt: !747)
!751 = !DILocation(line: 649, column: 3, scope: !729, inlinedAt: !747)
!752 = !DILocation(line: 649, column: 33, scope: !729, inlinedAt: !747)
!753 = !DILocation(line: 650, column: 13, scope: !729, inlinedAt: !747)
!754 = !DILocation(line: 649, column: 20, scope: !729, inlinedAt: !747)
!755 = !{!756, !705, i64 0}
!756 = !{!"infomap", !705, i64 0, !705, i64 8}
!757 = !DILocation(line: 649, column: 10, scope: !729, inlinedAt: !747)
!758 = !DILocation(line: 649, column: 28, scope: !729, inlinedAt: !747)
!759 = distinct !{!759, !751, !753, !760}
!760 = !{!"llvm.loop.mustprogress"}
!761 = !DILocation(line: 652, column: 17, scope: !762, inlinedAt: !747)
!762 = distinct !DILexicalBlock(scope: !729, file: !6, line: 652, column: 7)
!763 = !{!756, !705, i64 8}
!764 = !DILocation(line: 652, column: 7, scope: !762, inlinedAt: !747)
!765 = !DILocation(line: 652, column: 7, scope: !729, inlinedAt: !747)
!766 = !DILocation(line: 655, column: 3, scope: !729, inlinedAt: !747)
!767 = !DILocation(line: 659, column: 29, scope: !729, inlinedAt: !747)
!768 = !DILocation(line: 660, column: 7, scope: !769, inlinedAt: !747)
!769 = distinct !DILexicalBlock(scope: !729, file: !6, line: 660, column: 7)
!770 = !DILocation(line: 660, column: 19, scope: !769, inlinedAt: !747)
!771 = !DILocation(line: 660, column: 22, scope: !769, inlinedAt: !747)
!772 = !DILocation(line: 660, column: 7, scope: !729, inlinedAt: !747)
!773 = !DILocation(line: 666, column: 7, scope: !774, inlinedAt: !747)
!774 = distinct !DILexicalBlock(scope: !769, file: !6, line: 661, column: 5)
!775 = !DILocation(line: 668, column: 5, scope: !774, inlinedAt: !747)
!776 = !DILocation(line: 669, column: 3, scope: !729, inlinedAt: !747)
!777 = !DILocation(line: 671, column: 3, scope: !729, inlinedAt: !747)
!778 = !DILocation(line: 673, column: 1, scope: !729, inlinedAt: !747)
!779 = !DILocation(line: 162, column: 3, scope: !695)
!780 = !DISubprogram(name: "dcgettext", scope: !781, file: !781, line: 51, type: !782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!781 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!782 = !DISubroutineType(types: !783)
!783 = !{!67, !91, !91, !69}
!784 = !DISubprogram(name: "fputs_unlocked", scope: !785, file: !785, line: 667, type: !786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!785 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!786 = !DISubroutineType(types: !787)
!787 = !{!69, !91, !788}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !790, line: 49, size: 1728, elements: !791)
!790 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !807, !808, !809, !810, !814, !815, !817, !819, !822, !824, !827, !830, !831, !832, !833, !834}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !789, file: !790, line: 51, baseType: !69, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !789, file: !790, line: 54, baseType: !67, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !789, file: !790, line: 55, baseType: !67, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !789, file: !790, line: 56, baseType: !67, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !789, file: !790, line: 57, baseType: !67, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !789, file: !790, line: 58, baseType: !67, size: 64, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !789, file: !790, line: 59, baseType: !67, size: 64, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !789, file: !790, line: 60, baseType: !67, size: 64, offset: 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !789, file: !790, line: 61, baseType: !67, size: 64, offset: 512)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !789, file: !790, line: 64, baseType: !67, size: 64, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !789, file: !790, line: 65, baseType: !67, size: 64, offset: 640)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !789, file: !790, line: 66, baseType: !67, size: 64, offset: 704)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !789, file: !790, line: 68, baseType: !805, size: 64, offset: 768)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !790, line: 36, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !789, file: !790, line: 70, baseType: !788, size: 64, offset: 832)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !789, file: !790, line: 72, baseType: !69, size: 32, offset: 896)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !789, file: !790, line: 73, baseType: !69, size: 32, offset: 928)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !789, file: !790, line: 74, baseType: !811, size: 64, offset: 960)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !812, line: 152, baseType: !813)
!812 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!813 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !789, file: !790, line: 77, baseType: !70, size: 16, offset: 1024)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !789, file: !790, line: 78, baseType: !816, size: 8, offset: 1040)
!816 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !789, file: !790, line: 79, baseType: !818, size: 8, offset: 1048)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8, elements: !106)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !789, file: !790, line: 81, baseType: !820, size: 64, offset: 1088)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !790, line: 43, baseType: null)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !789, file: !790, line: 89, baseType: !823, size: 64, offset: 1152)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !812, line: 153, baseType: !813)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !789, file: !790, line: 91, baseType: !825, size: 64, offset: 1216)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !790, line: 37, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !789, file: !790, line: 92, baseType: !828, size: 64, offset: 1280)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !790, line: 38, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !789, file: !790, line: 93, baseType: !788, size: 64, offset: 1344)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !789, file: !790, line: 94, baseType: !39, size: 64, offset: 1408)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !789, file: !790, line: 95, baseType: !41, size: 64, offset: 1472)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !789, file: !790, line: 96, baseType: !69, size: 32, offset: 1536)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !789, file: !790, line: 98, baseType: !835, size: 160, offset: 1568)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 160, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 20)
!838 = !DISubprogram(name: "setlocale", scope: !839, file: !839, line: 122, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!839 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!840 = !DISubroutineType(types: !841)
!841 = !{!67, !69, !91}
!842 = !DILocalVariable(name: "signame", scope: !843, file: !3, line: 746, type: !853)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 745, column: 9)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 744, column: 11)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 728, column: 5)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 727, column: 3)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 727, column: 3)
!848 = distinct !DISubprogram(name: "set_signal_proc_mask", scope: !3, file: !3, line: 716, type: !713, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !849)
!849 = !{!850, !851, !852, !842}
!850 = !DILocalVariable(name: "set", scope: !848, file: !3, line: 719, type: !140)
!851 = !DILocalVariable(name: "debug_act", scope: !848, file: !3, line: 720, type: !91)
!852 = !DILocalVariable(name: "i", scope: !847, file: !3, line: 727, type: !69)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 152, elements: !854)
!854 = !{!855}
!855 = !DISubrange(count: 19)
!856 = !DILocation(line: 746, column: 16, scope: !843, inlinedAt: !857)
!857 = distinct !DILocation(line: 922, column: 5, scope: !858)
!858 = distinct !DILexicalBlock(scope: !79, file: !3, line: 921, column: 7)
!859 = !DILocalVariable(name: "signame", scope: !860, file: !3, line: 658, type: !853)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 657, column: 9)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 656, column: 11)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 629, column: 5)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 628, column: 3)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 628, column: 3)
!865 = distinct !DISubprogram(name: "reset_signal_handlers", scope: !3, file: !3, line: 626, type: !713, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !866)
!866 = !{!867, !868, !961, !962, !963, !859}
!867 = !DILocalVariable(name: "i", scope: !864, file: !3, line: 628, type: !69)
!868 = !DILocalVariable(name: "act", scope: !862, file: !3, line: 630, type: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !870, line: 27, size: 1216, elements: !871)
!870 = !DIFile(filename: "/usr/include/bits/sigaction.h", directory: "")
!871 = !{!872, !957, !958, !959}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !869, file: !870, line: 38, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !869, file: !870, line: 31, size: 64, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !873, file: !870, line: 34, baseType: !71, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !873, file: !870, line: 36, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !69, !880, !39}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !882, line: 124, baseType: !883)
!882 = !DIFile(filename: "/usr/include/bits/types/siginfo_t.h", directory: "")
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !882, line: 36, size: 1024, elements: !884)
!884 = !{!885, !886, !887, !888, !889}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !883, file: !882, line: 38, baseType: !69, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !883, file: !882, line: 40, baseType: !69, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !883, file: !882, line: 42, baseType: !69, size: 32, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !883, file: !882, line: 48, baseType: !69, size: 32, offset: 96)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !883, file: !882, line: 123, baseType: !890, size: 896, offset: 128)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !883, file: !882, line: 51, size: 896, elements: !891)
!891 = !{!892, !896, !903, !915, !921, !930, !946, !951}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !890, file: !882, line: 53, baseType: !893, size: 896)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 896, elements: !894)
!894 = !{!895}
!895 = !DISubrange(count: 28)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !890, file: !882, line: 60, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !882, line: 56, size: 64, elements: !898)
!898 = !{!899, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !897, file: !882, line: 58, baseType: !900, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !812, line: 154, baseType: !69)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !897, file: !882, line: 59, baseType: !902, size: 32, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !812, line: 146, baseType: !7)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !890, file: !882, line: 68, baseType: !904, size: 128)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !882, line: 63, size: 128, elements: !905)
!905 = !{!906, !907, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !904, file: !882, line: 65, baseType: !69, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !904, file: !882, line: 66, baseType: !69, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !904, file: !882, line: 67, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !910, line: 30, baseType: !911)
!910 = !DIFile(filename: "/usr/include/bits/types/__sigval_t.h", directory: "")
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !910, line: 24, size: 64, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !911, file: !910, line: 26, baseType: !69, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !911, file: !910, line: 27, baseType: !39, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !890, file: !882, line: 76, baseType: !916, size: 128)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !882, line: 71, size: 128, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !916, file: !882, line: 73, baseType: !900, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !916, file: !882, line: 74, baseType: !902, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !916, file: !882, line: 75, baseType: !909, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !890, file: !882, line: 86, baseType: !922, size: 256)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !882, line: 79, size: 256, elements: !923)
!923 = !{!924, !925, !926, !927, !929}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !922, file: !882, line: 81, baseType: !900, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !922, file: !882, line: 82, baseType: !902, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !922, file: !882, line: 83, baseType: !69, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !922, file: !882, line: 84, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !812, line: 156, baseType: !813)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !922, file: !882, line: 85, baseType: !928, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !890, file: !882, line: 105, baseType: !931, size: 256)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !882, line: 89, size: 256, elements: !932)
!932 = !{!933, !934, !936}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !931, file: !882, line: 91, baseType: !39, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !931, file: !882, line: 93, baseType: !935, size: 16, offset: 64)
!935 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !931, file: !882, line: 104, baseType: !937, size: 128, offset: 128)
!937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !882, line: 94, size: 128, elements: !938)
!938 = !{!939, !944}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !937, file: !882, line: 101, baseType: !940, size: 128)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !937, file: !882, line: 97, size: 128, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !940, file: !882, line: 99, baseType: !39, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !940, file: !882, line: 100, baseType: !39, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !937, file: !882, line: 103, baseType: !945, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !812, line: 42, baseType: !7)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !890, file: !882, line: 112, baseType: !947, size: 128)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !882, line: 108, size: 128, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !947, file: !882, line: 110, baseType: !813, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !947, file: !882, line: 111, baseType: !69, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !890, file: !882, line: 121, baseType: !952, size: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !882, line: 116, size: 128, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !952, file: !882, line: 118, baseType: !39, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !952, file: !882, line: 119, baseType: !69, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !952, file: !882, line: 120, baseType: !7, size: 32, offset: 96)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !869, file: !870, line: 46, baseType: !142, size: 1024, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !869, file: !870, line: 49, baseType: !69, size: 32, offset: 1088)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !869, file: !870, line: 52, baseType: !960, size: 64, offset: 1152)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!961 = !DILocalVariable(name: "ignore_errors", scope: !862, file: !3, line: 635, type: !88)
!962 = !DILocalVariable(name: "set_to_default", scope: !862, file: !3, line: 638, type: !88)
!963 = !DILocalVariable(name: "sig_err", scope: !862, file: !3, line: 641, type: !69)
!964 = !DILocation(line: 658, column: 16, scope: !860, inlinedAt: !965)
!965 = distinct !DILocation(line: 920, column: 3, scope: !79)
!966 = !DILocation(line: 0, scope: !79)
!967 = !DILocation(line: 806, column: 21, scope: !79)
!968 = !DILocation(line: 806, column: 3, scope: !79)
!969 = !DILocation(line: 807, column: 3, scope: !79)
!970 = !DILocation(line: 808, column: 3, scope: !79)
!971 = !DILocation(line: 809, column: 3, scope: !79)
!972 = !DILocalVariable(name: "status", arg: 1, scope: !973, file: !6, line: 99, type: !69)
!973 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !74, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !974)
!974 = !{!972}
!975 = !DILocation(line: 0, scope: !973, inlinedAt: !976)
!976 = distinct !DILocation(line: 811, column: 3, scope: !79)
!977 = !DILocation(line: 102, column: 18, scope: !978, inlinedAt: !976)
!978 = distinct !DILexicalBlock(scope: !973, file: !6, line: 101, column: 7)
!979 = !{!980, !980, i64 0}
!980 = !{!"int", !706, i64 0}
!981 = !DILocation(line: 812, column: 3, scope: !79)
!982 = !DILocation(line: 789, column: 13, scope: !983, inlinedAt: !987)
!983 = distinct !DISubprogram(name: "initialize_signals", scope: !3, file: !3, line: 787, type: !713, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !984)
!984 = !{!985}
!985 = !DILocalVariable(name: "i", scope: !986, file: !3, line: 791, type: !69)
!986 = distinct !DILexicalBlock(scope: !983, file: !3, line: 791, column: 3)
!987 = distinct !DILocation(line: 814, column: 3, scope: !79)
!988 = !DILocation(line: 789, column: 11, scope: !983, inlinedAt: !987)
!989 = !DILocation(line: 0, scope: !986, inlinedAt: !987)
!990 = !DILocation(line: 792, column: 16, scope: !991, inlinedAt: !987)
!991 = distinct !DILexicalBlock(scope: !986, file: !3, line: 791, column: 3)
!992 = !DILocation(line: 816, column: 3, scope: !79)
!993 = !DILocation(line: 803, column: 15, scope: !79)
!994 = !DILocation(line: 802, column: 8, scope: !79)
!995 = !DILocation(line: 801, column: 8, scope: !79)
!996 = !DILocation(line: 816, column: 18, scope: !79)
!997 = !DILocation(line: 824, column: 29, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 819, column: 9)
!999 = distinct !DILexicalBlock(scope: !79, file: !3, line: 817, column: 5)
!1000 = !DILocalVariable(name: "var", arg: 1, scope: !1001, file: !3, line: 166, type: !91)
!1001 = distinct !DISubprogram(name: "append_unset_var", scope: !3, file: !3, line: 166, type: !730, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!1002 = !{!1000}
!1003 = !DILocation(line: 0, scope: !1001, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 824, column: 11, scope: !998)
!1005 = !DILocation(line: 168, column: 7, scope: !1006, inlinedAt: !1004)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 168, column: 7)
!1007 = !{!1008, !1008, i64 0}
!1008 = !{!"long", !706, i64 0}
!1009 = !DILocation(line: 168, column: 22, scope: !1006, inlinedAt: !1004)
!1010 = !DILocation(line: 168, column: 19, scope: !1006, inlinedAt: !1004)
!1011 = !DILocation(line: 168, column: 7, scope: !1001, inlinedAt: !1004)
!1012 = !DILocation(line: 170, column: 3, scope: !1001, inlinedAt: !1004)
!1013 = !DILocation(line: 169, column: 26, scope: !1006, inlinedAt: !1004)
!1014 = !DILocation(line: 0, scope: !36, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 169, column: 14, scope: !1006, inlinedAt: !1004)
!1016 = !DILocation(line: 178, column: 9, scope: !1017, inlinedAt: !1015)
!1017 = distinct !DILexicalBlock(scope: !36, file: !35, line: 178, column: 7)
!1018 = !DILocation(line: 178, column: 7, scope: !36, inlinedAt: !1015)
!1019 = !DILocation(line: 180, column: 13, scope: !1020, inlinedAt: !1015)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !35, line: 180, column: 11)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !35, line: 179, column: 5)
!1022 = !DILocation(line: 180, column: 11, scope: !1021, inlinedAt: !1015)
!1023 = !DILocation(line: 191, column: 11, scope: !1024, inlinedAt: !1015)
!1024 = distinct !DILexicalBlock(scope: !1021, file: !35, line: 191, column: 11)
!1025 = !DILocation(line: 191, column: 11, scope: !1021, inlinedAt: !1015)
!1026 = !DILocation(line: 192, column: 9, scope: !1024, inlinedAt: !1015)
!1027 = !DILocation(line: 201, column: 11, scope: !1028, inlinedAt: !1015)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !35, line: 200, column: 11)
!1029 = distinct !DILexicalBlock(scope: !1017, file: !35, line: 195, column: 5)
!1030 = !DILocation(line: 200, column: 11, scope: !1029, inlinedAt: !1015)
!1031 = !DILocation(line: 202, column: 9, scope: !1028, inlinedAt: !1015)
!1032 = !DILocation(line: 203, column: 14, scope: !1029, inlinedAt: !1015)
!1033 = !DILocation(line: 203, column: 18, scope: !1029, inlinedAt: !1015)
!1034 = !DILocation(line: 203, column: 9, scope: !1029, inlinedAt: !1015)
!1035 = !DILocation(line: 206, column: 7, scope: !36, inlinedAt: !1015)
!1036 = !DILocation(line: 207, column: 25, scope: !36, inlinedAt: !1015)
!1037 = !DILocation(line: 207, column: 10, scope: !36, inlinedAt: !1015)
!1038 = !DILocation(line: 169, column: 12, scope: !1006, inlinedAt: !1004)
!1039 = !DILocation(line: 169, column: 5, scope: !1006, inlinedAt: !1004)
!1040 = !DILocation(line: 170, column: 21, scope: !1001, inlinedAt: !1004)
!1041 = !DILocation(line: 170, column: 25, scope: !1001, inlinedAt: !1004)
!1042 = !DILocation(line: 825, column: 11, scope: !998)
!1043 = !DILocation(line: 827, column: 21, scope: !998)
!1044 = !DILocation(line: 828, column: 11, scope: !998)
!1045 = !DILocation(line: 831, column: 11, scope: !998)
!1046 = !DILocation(line: 833, column: 39, scope: !998)
!1047 = !DILocation(line: 833, column: 11, scope: !998)
!1048 = !DILocation(line: 834, column: 38, scope: !998)
!1049 = !DILocation(line: 834, column: 11, scope: !998)
!1050 = !DILocation(line: 835, column: 11, scope: !998)
!1051 = !DILocation(line: 837, column: 39, scope: !998)
!1052 = !DILocation(line: 837, column: 11, scope: !998)
!1053 = !DILocation(line: 838, column: 11, scope: !998)
!1054 = !DILocation(line: 840, column: 38, scope: !998)
!1055 = !DILocation(line: 840, column: 11, scope: !998)
!1056 = !DILocation(line: 841, column: 11, scope: !998)
!1057 = !DILocation(line: 843, column: 34, scope: !998)
!1058 = !DILocation(line: 844, column: 11, scope: !998)
!1059 = !DILocation(line: 846, column: 20, scope: !998)
!1060 = !DILocation(line: 847, column: 11, scope: !998)
!1061 = !DILocation(line: 849, column: 31, scope: !998)
!1062 = !DILocalVariable(name: "str", arg: 1, scope: !1063, file: !3, line: 536, type: !91)
!1063 = distinct !DISubprogram(name: "parse_split_string", scope: !3, file: !3, line: 536, type: !1064, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1067)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !91, !129, !129, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1067 = !{!1062, !1068, !1069, !1070, !1071, !1072, !1073, !1074}
!1068 = !DILocalVariable(name: "orig_optind", arg: 2, scope: !1063, file: !3, line: 536, type: !129)
!1069 = !DILocalVariable(name: "orig_argc", arg: 3, scope: !1063, file: !3, line: 537, type: !129)
!1070 = !DILocalVariable(name: "orig_argv", arg: 4, scope: !1063, file: !3, line: 537, type: !1066)
!1071 = !DILocalVariable(name: "i", scope: !1063, file: !3, line: 539, type: !69)
!1072 = !DILocalVariable(name: "newargc", scope: !1063, file: !3, line: 539, type: !69)
!1073 = !DILocalVariable(name: "newargv", scope: !1063, file: !3, line: 540, type: !82)
!1074 = !DILocalVariable(name: "nextargv", scope: !1063, file: !3, line: 540, type: !82)
!1075 = !DILocation(line: 0, scope: !1063, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 849, column: 11, scope: !998)
!1077 = !DILocation(line: 543, column: 3, scope: !1063, inlinedAt: !1076)
!1078 = !DILocation(line: 543, column: 10, scope: !1063, inlinedAt: !1076)
!1079 = !{!706, !706, i64 0}
!1080 = !{!1081, !1081, i64 0}
!1081 = !{!"short", !706, i64 0}
!1082 = !DILocation(line: 544, column: 8, scope: !1063, inlinedAt: !1076)
!1083 = distinct !{!1083, !1077, !1082, !760}
!1084 = !DILocation(line: 545, column: 12, scope: !1085, inlinedAt: !1076)
!1085 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 545, column: 7)
!1086 = !DILocation(line: 545, column: 7, scope: !1063, inlinedAt: !1076)
!1087 = !DILocation(line: 548, column: 43, scope: !1063, inlinedAt: !1076)
!1088 = !DILocalVariable(name: "str", arg: 1, scope: !1089, file: !3, line: 373, type: !91)
!1089 = distinct !DISubprogram(name: "build_argv", scope: !3, file: !3, line: 373, type: !1090, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1092)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!82, !91, !69}
!1092 = !{!1088, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1104, !1107, !1108}
!1093 = !DILocalVariable(name: "extra_argc", arg: 2, scope: !1089, file: !3, line: 373, type: !69)
!1094 = !DILocalVariable(name: "dq", scope: !1089, file: !3, line: 375, type: !88)
!1095 = !DILocalVariable(name: "sq", scope: !1089, file: !3, line: 375, type: !88)
!1096 = !DILocalVariable(name: "sep", scope: !1089, file: !3, line: 375, type: !88)
!1097 = !DILocalVariable(name: "dest", scope: !1089, file: !3, line: 376, type: !67)
!1098 = !DILocalVariable(name: "newargv", scope: !1089, file: !3, line: 378, type: !82)
!1099 = !DILocalVariable(name: "nextargv", scope: !1089, file: !3, line: 378, type: !82)
!1100 = !DILocalVariable(name: "newargc", scope: !1089, file: !3, line: 379, type: !69)
!1101 = !DILocalVariable(name: "buflen", scope: !1089, file: !3, line: 380, type: !41)
!1102 = !DILocalVariable(name: "newc", scope: !1103, file: !3, line: 416, type: !68)
!1103 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 415, column: 5)
!1104 = !DILocalVariable(name: "n", scope: !1105, file: !3, line: 487, type: !67)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 486, column: 11)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 419, column: 9)
!1107 = !DILocalVariable(name: "v", scope: !1105, file: !3, line: 488, type: !67)
!1108 = !DILabel(scope: !1089, name: "eos", file: !3, line: 509)
!1109 = !DILocation(line: 0, scope: !1089, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 548, column: 13, scope: !1063, inlinedAt: !1076)
!1111 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1112, file: !3, line: 272, type: !40)
!1112 = distinct !DISubprogram(name: "validate_split_str", scope: !3, file: !3, line: 272, type: !1113, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1115)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !91, !40, !129}
!1115 = !{!1116, !1111, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1116 = !DILocalVariable(name: "str", arg: 1, scope: !1112, file: !3, line: 272, type: !91)
!1117 = !DILocalVariable(name: "maxargc", arg: 3, scope: !1112, file: !3, line: 273, type: !129)
!1118 = !DILocalVariable(name: "dq", scope: !1112, file: !3, line: 275, type: !88)
!1119 = !DILocalVariable(name: "sq", scope: !1112, file: !3, line: 275, type: !88)
!1120 = !DILocalVariable(name: "sp", scope: !1112, file: !3, line: 275, type: !88)
!1121 = !DILocalVariable(name: "pch", scope: !1112, file: !3, line: 276, type: !91)
!1122 = !DILocalVariable(name: "buflen", scope: !1112, file: !3, line: 277, type: !41)
!1123 = !DILocalVariable(name: "cnt", scope: !1112, file: !3, line: 278, type: !69)
!1124 = !DILocalVariable(name: "next", scope: !1125, file: !3, line: 287, type: !92)
!1125 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 286, column: 5)
!1126 = !DILocation(line: 0, scope: !1112, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 397, column: 3, scope: !1089, inlinedAt: !1110)
!1128 = !DILocation(line: 283, column: 12, scope: !1112, inlinedAt: !1127)
!1129 = !DILocation(line: 283, column: 24, scope: !1112, inlinedAt: !1127)
!1130 = !DILocation(line: 285, column: 3, scope: !1112, inlinedAt: !1127)
!1131 = !DILocation(line: 289, column: 11, scope: !1132, inlinedAt: !1127)
!1132 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 289, column: 11)
!1133 = !DILocation(line: 287, column: 30, scope: !1125, inlinedAt: !1127)
!1134 = !DILocation(line: 287, column: 25, scope: !1125, inlinedAt: !1127)
!1135 = !DILocation(line: 0, scope: !1125, inlinedAt: !1127)
!1136 = !DILocation(line: 289, column: 26, scope: !1132, inlinedAt: !1127)
!1137 = !DILocation(line: 300, column: 15, scope: !1125, inlinedAt: !1127)
!1138 = !DILocation(line: 300, column: 7, scope: !1125, inlinedAt: !1127)
!1139 = !DILocation(line: 303, column: 11, scope: !1140, inlinedAt: !1127)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 303, column: 11)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 303, column: 11)
!1142 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 301, column: 9)
!1143 = !DILocation(line: 304, column: 14, scope: !1142, inlinedAt: !1127)
!1144 = !DILocation(line: 305, column: 11, scope: !1142, inlinedAt: !1127)
!1145 = !DILocation(line: 308, column: 11, scope: !1146, inlinedAt: !1127)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 308, column: 11)
!1147 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 308, column: 11)
!1148 = !DILocation(line: 309, column: 14, scope: !1142, inlinedAt: !1127)
!1149 = !DILocation(line: 310, column: 11, scope: !1142, inlinedAt: !1127)
!1150 = !DILocation(line: 313, column: 15, scope: !1151, inlinedAt: !1127)
!1151 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 313, column: 15)
!1152 = !DILocation(line: 313, column: 18, scope: !1151, inlinedAt: !1127)
!1153 = !DILocation(line: 314, column: 13, scope: !1151, inlinedAt: !1127)
!1154 = !DILocation(line: 317, column: 15, scope: !1142, inlinedAt: !1127)
!1155 = !DILocation(line: 318, column: 13, scope: !1156, inlinedAt: !1127)
!1156 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 317, column: 15)
!1157 = !DILocation(line: 317, column: 15, scope: !1156, inlinedAt: !1127)
!1158 = !DILocation(line: 322, column: 13, scope: !1159, inlinedAt: !1127)
!1159 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 321, column: 15)
!1160 = !DILocation(line: 324, column: 20, scope: !1161, inlinedAt: !1127)
!1161 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 324, column: 15)
!1162 = !DILocation(line: 324, column: 15, scope: !1142, inlinedAt: !1127)
!1163 = !DILocation(line: 328, column: 11, scope: !1142, inlinedAt: !1127)
!1164 = !DILocation(line: 332, column: 15, scope: !1142, inlinedAt: !1127)
!1165 = !DILocation(line: 335, column: 23, scope: !1166, inlinedAt: !1127)
!1166 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 335, column: 15)
!1167 = !DILocation(line: 335, column: 21, scope: !1166, inlinedAt: !1127)
!1168 = !DILocation(line: 335, column: 15, scope: !1142, inlinedAt: !1127)
!1169 = !DILocation(line: 336, column: 13, scope: !1166, inlinedAt: !1127)
!1170 = !DILocation(line: 339, column: 22, scope: !1171, inlinedAt: !1127)
!1171 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 339, column: 15)
!1172 = !DILocation(line: 339, column: 20, scope: !1171, inlinedAt: !1127)
!1173 = !DILocation(line: 339, column: 15, scope: !1142, inlinedAt: !1127)
!1174 = !DILocation(line: 340, column: 23, scope: !1171, inlinedAt: !1127)
!1175 = !DILocation(line: 340, column: 20, scope: !1171, inlinedAt: !1127)
!1176 = !DILocation(line: 340, column: 13, scope: !1171, inlinedAt: !1127)
!1177 = !DILocation(line: 343, column: 7, scope: !1125, inlinedAt: !1127)
!1178 = !DILocation(line: 285, column: 10, scope: !1112, inlinedAt: !1127)
!1179 = distinct !{!1179, !1130, !1180, !760}
!1180 = !DILocation(line: 344, column: 5, scope: !1112, inlinedAt: !1127)
!1181 = !DILocation(line: 346, column: 10, scope: !1182, inlinedAt: !1127)
!1182 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 346, column: 7)
!1183 = !DILocation(line: 347, column: 5, scope: !1182, inlinedAt: !1127)
!1184 = !DILocation(line: 400, column: 30, scope: !1089, inlinedAt: !1110)
!1185 = !DILocation(line: 400, column: 10, scope: !1089, inlinedAt: !1110)
!1186 = !DILocation(line: 548, column: 41, scope: !1063, inlinedAt: !1076)
!1187 = !DILocation(line: 404, column: 42, scope: !1089, inlinedAt: !1110)
!1188 = !DILocation(line: 404, column: 55, scope: !1089, inlinedAt: !1110)
!1189 = !DILocation(line: 404, column: 33, scope: !1089, inlinedAt: !1110)
!1190 = !DILocation(line: 404, column: 60, scope: !1089, inlinedAt: !1110)
!1191 = !DILocation(line: 404, column: 24, scope: !1089, inlinedAt: !1110)
!1192 = !DILocalVariable(name: "__dest", arg: 1, scope: !1193, file: !1194, line: 77, type: !1197)
!1193 = distinct !DISubprogram(name: "strcpy", scope: !1194, file: !1194, line: 77, type: !1195, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1199)
!1194 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!67, !1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!1198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!1199 = !{!1192, !1200}
!1200 = !DILocalVariable(name: "__src", arg: 2, scope: !1193, file: !1194, line: 77, type: !1198)
!1201 = !DILocation(line: 0, scope: !1193, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 407, column: 3, scope: !1089, inlinedAt: !1110)
!1203 = !DILocation(line: 79, column: 10, scope: !1193, inlinedAt: !1202)
!1204 = !DILocation(line: 408, column: 12, scope: !1089, inlinedAt: !1110)
!1205 = !DILocation(line: 408, column: 15, scope: !1089, inlinedAt: !1110)
!1206 = !DILocation(line: 409, column: 8, scope: !1089, inlinedAt: !1110)
!1207 = !DILocation(line: 414, column: 10, scope: !1089, inlinedAt: !1110)
!1208 = !DILocation(line: 414, column: 3, scope: !1089, inlinedAt: !1110)
!1209 = !DILocation(line: 0, scope: !1103, inlinedAt: !1110)
!1210 = !DILocation(line: 418, column: 15, scope: !1103, inlinedAt: !1110)
!1211 = !DILocation(line: 418, column: 7, scope: !1103, inlinedAt: !1110)
!1212 = !DILocation(line: 421, column: 15, scope: !1213, inlinedAt: !1110)
!1213 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 421, column: 15)
!1214 = !DILocation(line: 421, column: 15, scope: !1106, inlinedAt: !1110)
!1215 = !DILocation(line: 423, column: 17, scope: !1106, inlinedAt: !1110)
!1216 = !DILocation(line: 423, column: 14, scope: !1106, inlinedAt: !1110)
!1217 = !DILocation(line: 424, column: 11, scope: !1218, inlinedAt: !1110)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 424, column: 11)
!1219 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 424, column: 11)
!1220 = !DILocation(line: 424, column: 11, scope: !1219, inlinedAt: !1110)
!1221 = !DILocation(line: 424, column: 11, scope: !1222, inlinedAt: !1110)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 424, column: 11)
!1223 = !DILocation(line: 425, column: 11, scope: !1106, inlinedAt: !1110)
!1224 = !DILocation(line: 426, column: 11, scope: !1106, inlinedAt: !1110)
!1225 = distinct !{!1225, !1208, !1226, !760}
!1226 = !DILocation(line: 507, column: 5, scope: !1089, inlinedAt: !1110)
!1227 = !DILocation(line: 429, column: 15, scope: !1228, inlinedAt: !1110)
!1228 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 429, column: 15)
!1229 = !DILocation(line: 429, column: 15, scope: !1106, inlinedAt: !1110)
!1230 = !DILocation(line: 431, column: 17, scope: !1106, inlinedAt: !1110)
!1231 = !DILocation(line: 431, column: 14, scope: !1106, inlinedAt: !1110)
!1232 = !DILocation(line: 432, column: 11, scope: !1233, inlinedAt: !1110)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 432, column: 11)
!1234 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 432, column: 11)
!1235 = !DILocation(line: 432, column: 11, scope: !1234, inlinedAt: !1110)
!1236 = !DILocation(line: 432, column: 11, scope: !1237, inlinedAt: !1110)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 432, column: 11)
!1238 = !DILocation(line: 433, column: 11, scope: !1106, inlinedAt: !1110)
!1239 = !DILocation(line: 434, column: 11, scope: !1106, inlinedAt: !1110)
!1240 = distinct !{!1240, !1208, !1226, !760}
!1241 = !DILocation(line: 439, column: 18, scope: !1242, inlinedAt: !1110)
!1242 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 439, column: 15)
!1243 = !DILocation(line: 442, column: 18, scope: !1106, inlinedAt: !1110)
!1244 = !DILocation(line: 442, column: 15, scope: !1106, inlinedAt: !1110)
!1245 = !DILocation(line: 443, column: 11, scope: !1106, inlinedAt: !1110)
!1246 = distinct !{!1246, !1208, !1226, !760}
!1247 = !DILocation(line: 446, column: 16, scope: !1248, inlinedAt: !1110)
!1248 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 446, column: 15)
!1249 = !DILocation(line: 446, column: 15, scope: !1106, inlinedAt: !1110)
!1250 = !DILocation(line: 452, column: 15, scope: !1251, inlinedAt: !1110)
!1251 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 452, column: 15)
!1252 = !DILocation(line: 0, scope: !1106, inlinedAt: !1110)
!1253 = !DILocation(line: 452, column: 18, scope: !1251, inlinedAt: !1110)
!1254 = !DILocation(line: 452, column: 38, scope: !1251, inlinedAt: !1110)
!1255 = !DILocation(line: 456, column: 20, scope: !1106, inlinedAt: !1110)
!1256 = !DILocation(line: 457, column: 29, scope: !1257, inlinedAt: !1110)
!1257 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 457, column: 15)
!1258 = !DILocation(line: 458, column: 23, scope: !1257, inlinedAt: !1110)
!1259 = !DILocation(line: 458, column: 39, scope: !1257, inlinedAt: !1110)
!1260 = !DILocation(line: 462, column: 20, scope: !1257, inlinedAt: !1110)
!1261 = !DILocation(line: 464, column: 20, scope: !1262, inlinedAt: !1110)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 464, column: 19)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 463, column: 13)
!1264 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 462, column: 20)
!1265 = !DILocation(line: 464, column: 19, scope: !1263, inlinedAt: !1110)
!1266 = !DILocation(line: 466, column: 19, scope: !1267, inlinedAt: !1110)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 465, column: 17)
!1268 = !DILocation(line: 468, column: 19, scope: !1267, inlinedAt: !1110)
!1269 = distinct !{!1269, !1208, !1226, !760}
!1270 = !DILocalVariable(name: "c", arg: 1, scope: !1271, file: !3, line: 200, type: !92)
!1271 = distinct !DISubprogram(name: "escape_char", scope: !3, file: !3, line: 200, type: !1272, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!68, !92}
!1274 = !{!1270}
!1275 = !DILocation(line: 0, scope: !1271, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 476, column: 22, scope: !1277, inlinedAt: !1110)
!1277 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 473, column: 20)
!1278 = !DILocation(line: 202, column: 11, scope: !1271, inlinedAt: !1276)
!1279 = !DILocation(line: 202, column: 3, scope: !1271, inlinedAt: !1276)
!1280 = !DILocation(line: 206, column: 15, scope: !1281, inlinedAt: !1276)
!1281 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 203, column: 5)
!1282 = !DILocation(line: 207, column: 15, scope: !1281, inlinedAt: !1276)
!1283 = !DILocation(line: 208, column: 15, scope: !1281, inlinedAt: !1276)
!1284 = !DILocation(line: 209, column: 15, scope: !1281, inlinedAt: !1276)
!1285 = !DILocation(line: 210, column: 15, scope: !1286, inlinedAt: !1276)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 210, column: 15)
!1287 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 210, column: 15)
!1288 = !DILocation(line: 481, column: 15, scope: !1289, inlinedAt: !1110)
!1289 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 481, column: 15)
!1290 = !DILocation(line: 481, column: 15, scope: !1106, inlinedAt: !1110)
!1291 = !DILocation(line: 487, column: 23, scope: !1105, inlinedAt: !1110)
!1292 = !DILocation(line: 0, scope: !1105, inlinedAt: !1110)
!1293 = !DILocation(line: 488, column: 23, scope: !1105, inlinedAt: !1110)
!1294 = !DILocation(line: 489, column: 17, scope: !1295, inlinedAt: !1110)
!1295 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 489, column: 17)
!1296 = !DILocation(line: 489, column: 17, scope: !1105, inlinedAt: !1110)
!1297 = !DILocation(line: 491, column: 17, scope: !1298, inlinedAt: !1110)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 491, column: 17)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 491, column: 17)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 490, column: 15)
!1301 = !DILocation(line: 491, column: 17, scope: !1299, inlinedAt: !1110)
!1302 = !DILocation(line: 491, column: 17, scope: !1303, inlinedAt: !1110)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 491, column: 17)
!1304 = !DILocation(line: 492, column: 17, scope: !1305, inlinedAt: !1110)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 492, column: 17)
!1306 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 492, column: 17)
!1307 = !DILocation(line: 492, column: 17, scope: !1306, inlinedAt: !1110)
!1308 = !DILocalVariable(name: "__dest", arg: 1, scope: !1309, file: !1194, line: 84, type: !1197)
!1309 = distinct !DISubprogram(name: "stpcpy", scope: !1194, file: !1194, line: 84, type: !1195, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1310)
!1310 = !{!1308, !1311}
!1311 = !DILocalVariable(name: "__src", arg: 2, scope: !1309, file: !1194, line: 84, type: !1198)
!1312 = !DILocation(line: 0, scope: !1309, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 493, column: 24, scope: !1300, inlinedAt: !1110)
!1314 = !DILocation(line: 86, column: 10, scope: !1309, inlinedAt: !1313)
!1315 = !DILocation(line: 494, column: 15, scope: !1300, inlinedAt: !1110)
!1316 = !DILocation(line: 496, column: 15, scope: !1317, inlinedAt: !1110)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 496, column: 15)
!1318 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 496, column: 15)
!1319 = !DILocation(line: 496, column: 15, scope: !1318, inlinedAt: !1110)
!1320 = !DILocation(line: 498, column: 19, scope: !1105, inlinedAt: !1110)
!1321 = !DILocation(line: 498, column: 37, scope: !1105, inlinedAt: !1110)
!1322 = !DILocation(line: 504, column: 7, scope: !1323, inlinedAt: !1110)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 504, column: 7)
!1324 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 504, column: 7)
!1325 = !DILocation(line: 504, column: 7, scope: !1324, inlinedAt: !1110)
!1326 = !DILocation(line: 504, column: 7, scope: !1327, inlinedAt: !1110)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 504, column: 7)
!1328 = !DILocation(line: 505, column: 12, scope: !1103, inlinedAt: !1110)
!1329 = !DILocation(line: 505, column: 15, scope: !1103, inlinedAt: !1110)
!1330 = !DILocation(line: 506, column: 7, scope: !1103, inlinedAt: !1110)
!1331 = !DILocation(line: 509, column: 2, scope: !1089, inlinedAt: !1110)
!1332 = !DILocation(line: 510, column: 9, scope: !1089, inlinedAt: !1110)
!1333 = !DILocation(line: 511, column: 13, scope: !1089, inlinedAt: !1110)
!1334 = !DILocation(line: 551, column: 14, scope: !1063, inlinedAt: !1076)
!1335 = !DILocation(line: 551, column: 12, scope: !1063, inlinedAt: !1076)
!1336 = !DILocation(line: 557, column: 7, scope: !1337, inlinedAt: !1076)
!1337 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 557, column: 7)
!1338 = !DILocation(line: 557, column: 17, scope: !1337, inlinedAt: !1076)
!1339 = !DILocation(line: 567, column: 7, scope: !1340, inlinedAt: !1076)
!1340 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 565, column: 5)
!1341 = !DILocation(line: 557, column: 20, scope: !1337, inlinedAt: !1076)
!1342 = !DILocation(line: 557, column: 7, scope: !1063, inlinedAt: !1076)
!1343 = !DILocation(line: 559, column: 7, scope: !1344, inlinedAt: !1076)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 559, column: 7)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 559, column: 7)
!1346 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 558, column: 5)
!1347 = !DILocation(line: 560, column: 7, scope: !1348, inlinedAt: !1076)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 560, column: 7)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 560, column: 7)
!1350 = !DILocation(line: 560, column: 7, scope: !1349, inlinedAt: !1076)
!1351 = !DILocation(line: 561, column: 14, scope: !1346, inlinedAt: !1076)
!1352 = !DILocation(line: 561, column: 7, scope: !1346, inlinedAt: !1076)
!1353 = !DILocation(line: 562, column: 9, scope: !1354, inlinedAt: !1076)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 562, column: 9)
!1355 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 562, column: 9)
!1356 = !DILocation(line: 562, column: 9, scope: !1355, inlinedAt: !1076)
!1357 = !DILocation(line: 0, scope: !1346, inlinedAt: !1076)
!1358 = distinct !{!1358, !1352, !1359, !760}
!1359 = !DILocation(line: 562, column: 9, scope: !1346, inlinedAt: !1076)
!1360 = !DILocation(line: 567, column: 14, scope: !1340, inlinedAt: !1076)
!1361 = !DILocation(line: 568, column: 9, scope: !1340, inlinedAt: !1076)
!1362 = distinct !{!1362, !1339, !1363, !760}
!1363 = !DILocation(line: 568, column: 11, scope: !1340, inlinedAt: !1076)
!1364 = !DILocation(line: 572, column: 12, scope: !1365, inlinedAt: !1076)
!1365 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 572, column: 3)
!1366 = !DILocation(line: 572, column: 28, scope: !1367, inlinedAt: !1076)
!1367 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 572, column: 3)
!1368 = !DILocation(line: 572, column: 3, scope: !1365, inlinedAt: !1076)
!1369 = !DILocation(line: 573, column: 19, scope: !1367, inlinedAt: !1076)
!1370 = !{!1371}
!1371 = distinct !{!1371, !1372}
!1372 = distinct !{!1372, !"LVerDomain"}
!1373 = !DILocation(line: 573, column: 17, scope: !1367, inlinedAt: !1076)
!1374 = !{!1375}
!1375 = distinct !{!1375, !1372}
!1376 = distinct !{!1376, !1368, !1377, !760, !1378}
!1377 = !DILocation(line: 573, column: 33, scope: !1365, inlinedAt: !1076)
!1378 = !{!"llvm.loop.isvectorized", i32 1}
!1379 = distinct !{!1379, !1380}
!1380 = !{!"llvm.loop.unroll.disable"}
!1381 = !DILocation(line: 573, column: 14, scope: !1367, inlinedAt: !1076)
!1382 = !DILocation(line: 572, column: 42, scope: !1367, inlinedAt: !1076)
!1383 = distinct !{!1383, !1380}
!1384 = distinct !{!1384, !1368, !1377, !760, !1378}
!1385 = !DILocation(line: 574, column: 13, scope: !1063, inlinedAt: !1076)
!1386 = !DILocation(line: 578, column: 28, scope: !1387, inlinedAt: !1076)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 578, column: 3)
!1388 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 578, column: 3)
!1389 = !DILocation(line: 578, column: 3, scope: !1388, inlinedAt: !1076)
!1390 = !DILocation(line: 579, column: 5, scope: !1387, inlinedAt: !1076)
!1391 = !DILocation(line: 578, column: 39, scope: !1387, inlinedAt: !1076)
!1392 = distinct !{!1392, !1389, !1393, !760}
!1393 = !DILocation(line: 579, column: 7, scope: !1388, inlinedAt: !1076)
!1394 = !DILocation(line: 584, column: 16, scope: !1063, inlinedAt: !1076)
!1395 = !DILocation(line: 585, column: 1, scope: !1063, inlinedAt: !1076)
!1396 = distinct !{!1396, !992, !1397, !760}
!1397 = !DILocation(line: 866, column: 5, scope: !79)
!1398 = !DILocation(line: 857, column: 24, scope: !998)
!1399 = !DILocation(line: 857, column: 11, scope: !998)
!1400 = !DILocation(line: 858, column: 24, scope: !998)
!1401 = !DILocation(line: 858, column: 11, scope: !998)
!1402 = !DILocation(line: 859, column: 11, scope: !998)
!1403 = !DILocation(line: 861, column: 9, scope: !998)
!1404 = !DILocation(line: 862, column: 9, scope: !998)
!1405 = !DILocation(line: 864, column: 11, scope: !998)
!1406 = !DILocation(line: 868, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !79, file: !3, line: 868, column: 7)
!1408 = !DILocation(line: 868, column: 14, scope: !1407)
!1409 = !DILocation(line: 868, column: 21, scope: !1407)
!1410 = !DILocation(line: 868, column: 24, scope: !1407)
!1411 = !DILocation(line: 868, column: 7, scope: !79)
!1412 = !DILocation(line: 871, column: 7, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 869, column: 5)
!1414 = !DILocation(line: 874, column: 7, scope: !79)
!1415 = !DILocation(line: 874, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !79, file: !3, line: 874, column: 7)
!1417 = !DILocation(line: 876, column: 7, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 876, column: 7)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 876, column: 7)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 875, column: 5)
!1421 = !DILocation(line: 876, column: 7, scope: !1419)
!1422 = !DILocation(line: 878, column: 15, scope: !1420)
!1423 = !DILocation(line: 879, column: 5, scope: !1420)
!1424 = !DILocalVariable(name: "i", scope: !1425, file: !3, line: 176, type: !41)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 176, column: 3)
!1426 = distinct !DISubprogram(name: "unset_envvars", scope: !3, file: !3, line: 174, type: !713, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1427)
!1427 = !{!1424}
!1428 = !DILocation(line: 0, scope: !1425, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 881, column: 5, scope: !1416)
!1430 = !DILocation(line: 176, column: 26, scope: !1431, inlinedAt: !1429)
!1431 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 176, column: 3)
!1432 = !DILocation(line: 176, column: 24, scope: !1431, inlinedAt: !1429)
!1433 = !DILocation(line: 176, column: 3, scope: !1425, inlinedAt: !1429)
!1434 = !DILocation(line: 178, column: 7, scope: !1435, inlinedAt: !1429)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 178, column: 7)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 178, column: 7)
!1437 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 177, column: 5)
!1438 = !DILocation(line: 178, column: 7, scope: !1436, inlinedAt: !1429)
!1439 = !DILocation(line: 180, column: 21, scope: !1440, inlinedAt: !1429)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 180, column: 11)
!1441 = !DILocation(line: 180, column: 11, scope: !1440, inlinedAt: !1429)
!1442 = !DILocation(line: 180, column: 11, scope: !1437, inlinedAt: !1429)
!1443 = !DILocation(line: 181, column: 9, scope: !1440, inlinedAt: !1429)
!1444 = !DILocation(line: 176, column: 39, scope: !1431, inlinedAt: !1429)
!1445 = distinct !{!1445, !1433, !1446, !760}
!1446 = !DILocation(line: 183, column: 5, scope: !1425, inlinedAt: !1429)
!1447 = !DILocation(line: 884, column: 10, scope: !79)
!1448 = !DILocation(line: 884, column: 17, scope: !79)
!1449 = !DILocation(line: 884, column: 24, scope: !79)
!1450 = !DILocation(line: 884, column: 41, scope: !79)
!1451 = !DILocation(line: 884, column: 33, scope: !79)
!1452 = !DILocation(line: 884, column: 3, scope: !79)
!1453 = !DILocation(line: 886, column: 7, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 886, column: 7)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 886, column: 7)
!1456 = distinct !DILexicalBlock(scope: !79, file: !3, line: 885, column: 5)
!1457 = !DILocation(line: 886, column: 7, scope: !1455)
!1458 = !DILocation(line: 888, column: 24, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 888, column: 11)
!1460 = !DILocation(line: 888, column: 19, scope: !1459)
!1461 = !DILocation(line: 888, column: 11, scope: !1459)
!1462 = !DILocation(line: 888, column: 11, scope: !1456)
!1463 = !DILocation(line: 890, column: 15, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 889, column: 9)
!1465 = !DILocation(line: 891, column: 11, scope: !1464)
!1466 = !DILocation(line: 894, column: 13, scope: !1456)
!1467 = distinct !{!1467, !1452, !1468, !760}
!1468 = !DILocation(line: 895, column: 5, scope: !79)
!1469 = !DILocation(line: 899, column: 7, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !79, file: !3, line: 899, column: 7)
!1471 = !DILocation(line: 899, column: 32, scope: !1470)
!1472 = !DILocation(line: 901, column: 20, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 900, column: 5)
!1474 = !DILocation(line: 901, column: 7, scope: !1473)
!1475 = !DILocation(line: 902, column: 7, scope: !1473)
!1476 = !DILocation(line: 905, column: 7, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !79, file: !3, line: 905, column: 7)
!1478 = !DILocation(line: 905, column: 14, scope: !1477)
!1479 = !DILocation(line: 907, column: 20, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 906, column: 5)
!1481 = !DILocation(line: 907, column: 7, scope: !1480)
!1482 = !DILocation(line: 908, column: 7, scope: !1480)
!1483 = !DILocation(line: 914, column: 24, scope: !96)
!1484 = !DILocation(line: 0, scope: !96)
!1485 = !DILocation(line: 915, column: 14, scope: !96)
!1486 = !DILocation(line: 915, column: 7, scope: !96)
!1487 = !DILocation(line: 916, column: 9, scope: !96)
!1488 = distinct !{!1488, !1486, !1487, !760}
!1489 = !DILocation(line: 0, scope: !864, inlinedAt: !965)
!1490 = !DILocation(line: 628, column: 3, scope: !864, inlinedAt: !965)
!1491 = !DILocation(line: 630, column: 7, scope: !862, inlinedAt: !965)
!1492 = !DILocation(line: 630, column: 24, scope: !862, inlinedAt: !965)
!1493 = !DILocation(line: 632, column: 11, scope: !1494, inlinedAt: !965)
!1494 = distinct !DILexicalBlock(scope: !862, file: !3, line: 632, column: 11)
!1495 = !DILocation(line: 632, column: 11, scope: !862, inlinedAt: !965)
!1496 = !DILocation(line: 636, column: 29, scope: !862, inlinedAt: !965)
!1497 = !DILocation(line: 0, scope: !862, inlinedAt: !965)
!1498 = !DILocation(line: 639, column: 30, scope: !862, inlinedAt: !965)
!1499 = !DILocation(line: 641, column: 21, scope: !862, inlinedAt: !965)
!1500 = !DILocation(line: 643, column: 11, scope: !1501, inlinedAt: !965)
!1501 = distinct !DILexicalBlock(scope: !862, file: !3, line: 643, column: 11)
!1502 = !DILocation(line: 643, column: 19, scope: !1501, inlinedAt: !965)
!1503 = !DILocation(line: 644, column: 9, scope: !1501, inlinedAt: !965)
!1504 = !DILocation(line: 647, column: 11, scope: !862, inlinedAt: !965)
!1505 = !DILocation(line: 649, column: 28, scope: !1506, inlinedAt: !965)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 648, column: 9)
!1507 = distinct !DILexicalBlock(scope: !862, file: !3, line: 647, column: 11)
!1508 = !DILocation(line: 649, column: 26, scope: !1506, inlinedAt: !965)
!1509 = !DILocation(line: 651, column: 26, scope: !1510, inlinedAt: !965)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 651, column: 15)
!1511 = !DILocation(line: 651, column: 24, scope: !1510, inlinedAt: !965)
!1512 = !DILocation(line: 651, column: 53, scope: !1510, inlinedAt: !965)
!1513 = !DILocation(line: 652, column: 13, scope: !1510, inlinedAt: !965)
!1514 = !DILocation(line: 656, column: 11, scope: !861, inlinedAt: !965)
!1515 = !DILocation(line: 656, column: 11, scope: !862, inlinedAt: !965)
!1516 = !DILocation(line: 658, column: 11, scope: !860, inlinedAt: !965)
!1517 = !DILocation(line: 659, column: 11, scope: !860, inlinedAt: !965)
!1518 = !DILocation(line: 660, column: 11, scope: !1519, inlinedAt: !965)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 660, column: 11)
!1520 = distinct !DILexicalBlock(scope: !860, file: !3, line: 660, column: 11)
!1521 = !DILocation(line: 660, column: 11, scope: !1520, inlinedAt: !965)
!1522 = !DILocation(line: 664, column: 9, scope: !861, inlinedAt: !965)
!1523 = !DILocation(line: 664, column: 9, scope: !860, inlinedAt: !965)
!1524 = !DILocation(line: 665, column: 5, scope: !863, inlinedAt: !965)
!1525 = !DILocation(line: 628, column: 39, scope: !863, inlinedAt: !965)
!1526 = !DILocation(line: 628, column: 21, scope: !863, inlinedAt: !965)
!1527 = distinct !{!1527, !1490, !1528, !760}
!1528 = !DILocation(line: 665, column: 5, scope: !864, inlinedAt: !965)
!1529 = !DILocation(line: 921, column: 7, scope: !858)
!1530 = !DILocation(line: 921, column: 7, scope: !79)
!1531 = !DILocation(line: 719, column: 3, scope: !848, inlinedAt: !857)
!1532 = !DILocation(line: 719, column: 12, scope: !848, inlinedAt: !857)
!1533 = !DILocation(line: 722, column: 3, scope: !848, inlinedAt: !857)
!1534 = !DILocation(line: 724, column: 7, scope: !1535, inlinedAt: !857)
!1535 = distinct !DILexicalBlock(scope: !848, file: !3, line: 724, column: 7)
!1536 = !DILocation(line: 724, column: 7, scope: !848, inlinedAt: !857)
!1537 = !DILocation(line: 725, column: 5, scope: !1535, inlinedAt: !857)
!1538 = !DILocation(line: 753, column: 7, scope: !1539, inlinedAt: !857)
!1539 = distinct !DILexicalBlock(scope: !848, file: !3, line: 753, column: 7)
!1540 = !DILocation(line: 753, column: 7, scope: !848, inlinedAt: !857)
!1541 = !DILocation(line: 0, scope: !847, inlinedAt: !857)
!1542 = !DILocation(line: 729, column: 11, scope: !1543, inlinedAt: !857)
!1543 = distinct !DILexicalBlock(scope: !845, file: !3, line: 729, column: 11)
!1544 = !DILocation(line: 729, column: 11, scope: !845, inlinedAt: !857)
!1545 = !DILocation(line: 731, column: 11, scope: !1546, inlinedAt: !857)
!1546 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 730, column: 9)
!1547 = !DILocation(line: 0, scope: !848, inlinedAt: !857)
!1548 = !DILocation(line: 733, column: 9, scope: !1546, inlinedAt: !857)
!1549 = !DILocation(line: 734, column: 16, scope: !1550, inlinedAt: !857)
!1550 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 734, column: 16)
!1551 = !DILocation(line: 734, column: 16, scope: !1543, inlinedAt: !857)
!1552 = !DILocation(line: 736, column: 11, scope: !1553, inlinedAt: !857)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 735, column: 9)
!1554 = !DILocation(line: 738, column: 9, scope: !1553, inlinedAt: !857)
!1555 = !DILocation(line: 0, scope: !1543, inlinedAt: !857)
!1556 = !DILocation(line: 744, column: 11, scope: !844, inlinedAt: !857)
!1557 = !DILocation(line: 744, column: 21, scope: !844, inlinedAt: !857)
!1558 = !DILocation(line: 746, column: 11, scope: !843, inlinedAt: !857)
!1559 = !DILocation(line: 747, column: 11, scope: !843, inlinedAt: !857)
!1560 = !DILocation(line: 748, column: 11, scope: !1561, inlinedAt: !857)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 748, column: 11)
!1562 = distinct !DILexicalBlock(scope: !843, file: !3, line: 748, column: 11)
!1563 = !DILocation(line: 748, column: 11, scope: !1562, inlinedAt: !857)
!1564 = !DILocation(line: 750, column: 9, scope: !844, inlinedAt: !857)
!1565 = !DILocation(line: 750, column: 9, scope: !843, inlinedAt: !857)
!1566 = !DILocation(line: 727, column: 39, scope: !846, inlinedAt: !857)
!1567 = !DILocation(line: 727, column: 21, scope: !846, inlinedAt: !857)
!1568 = !DILocation(line: 727, column: 3, scope: !847, inlinedAt: !857)
!1569 = distinct !{!1569, !1568, !1570, !760}
!1570 = !DILocation(line: 751, column: 5, scope: !847, inlinedAt: !857)
!1571 = !DILocation(line: 754, column: 5, scope: !1539, inlinedAt: !857)
!1572 = !DILocation(line: 755, column: 1, scope: !848, inlinedAt: !857)
!1573 = !DILocation(line: 922, column: 5, scope: !858)
!1574 = !DILocation(line: 924, column: 7, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !79, file: !3, line: 924, column: 7)
!1576 = !DILocation(line: 924, column: 7, scope: !79)
!1577 = !DILocation(line: 760, column: 3, scope: !1578, inlinedAt: !1590)
!1578 = distinct !DISubprogram(name: "list_signal_handling", scope: !3, file: !3, line: 758, type: !713, scopeLine: 759, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1579)
!1579 = !{!1580, !1581, !1582, !1584, !1587, !1588, !1589}
!1580 = !DILocalVariable(name: "set", scope: !1578, file: !3, line: 760, type: !140)
!1581 = !DILocalVariable(name: "signame", scope: !1578, file: !3, line: 761, type: !853)
!1582 = !DILocalVariable(name: "i", scope: !1583, file: !3, line: 767, type: !69)
!1583 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 767, column: 3)
!1584 = !DILocalVariable(name: "act", scope: !1585, file: !3, line: 769, type: !869)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 768, column: 5)
!1586 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 767, column: 3)
!1587 = !DILocalVariable(name: "ignored", scope: !1585, file: !3, line: 773, type: !91)
!1588 = !DILocalVariable(name: "blocked", scope: !1585, file: !3, line: 774, type: !91)
!1589 = !DILocalVariable(name: "connect", scope: !1585, file: !3, line: 775, type: !91)
!1590 = distinct !DILocation(line: 925, column: 5, scope: !1575)
!1591 = !DILocation(line: 760, column: 12, scope: !1578, inlinedAt: !1590)
!1592 = !DILocation(line: 761, column: 3, scope: !1578, inlinedAt: !1590)
!1593 = !DILocation(line: 761, column: 8, scope: !1578, inlinedAt: !1590)
!1594 = !DILocation(line: 763, column: 3, scope: !1578, inlinedAt: !1590)
!1595 = !DILocation(line: 764, column: 7, scope: !1596, inlinedAt: !1590)
!1596 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 764, column: 7)
!1597 = !DILocation(line: 764, column: 7, scope: !1578, inlinedAt: !1590)
!1598 = !DILocation(line: 0, scope: !1583, inlinedAt: !1590)
!1599 = !DILocation(line: 767, column: 3, scope: !1583, inlinedAt: !1590)
!1600 = !DILocation(line: 765, column: 5, scope: !1596, inlinedAt: !1590)
!1601 = !DILocation(line: 769, column: 7, scope: !1585, inlinedAt: !1590)
!1602 = !DILocation(line: 769, column: 24, scope: !1585, inlinedAt: !1590)
!1603 = !DILocation(line: 770, column: 11, scope: !1604, inlinedAt: !1590)
!1604 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 770, column: 11)
!1605 = !DILocation(line: 770, column: 11, scope: !1585, inlinedAt: !1590)
!1606 = !DILocation(line: 773, column: 33, scope: !1585, inlinedAt: !1590)
!1607 = !DILocation(line: 773, column: 44, scope: !1585, inlinedAt: !1590)
!1608 = !DILocation(line: 773, column: 29, scope: !1585, inlinedAt: !1590)
!1609 = !DILocation(line: 0, scope: !1585, inlinedAt: !1590)
!1610 = !DILocation(line: 774, column: 29, scope: !1585, inlinedAt: !1590)
!1611 = !DILocation(line: 775, column: 29, scope: !1585, inlinedAt: !1590)
!1612 = !DILocation(line: 775, column: 38, scope: !1585, inlinedAt: !1590)
!1613 = !DILocation(line: 777, column: 11, scope: !1585, inlinedAt: !1590)
!1614 = !DILocation(line: 780, column: 7, scope: !1585, inlinedAt: !1590)
!1615 = !DILocation(line: 781, column: 7, scope: !1585, inlinedAt: !1590)
!1616 = !DILocation(line: 783, column: 5, scope: !1586, inlinedAt: !1590)
!1617 = !DILocation(line: 767, column: 39, scope: !1586, inlinedAt: !1590)
!1618 = !DILocation(line: 767, column: 21, scope: !1586, inlinedAt: !1590)
!1619 = distinct !{!1619, !1599, !1620, !760}
!1620 = !DILocation(line: 783, column: 5, scope: !1583, inlinedAt: !1590)
!1621 = !DILocation(line: 784, column: 1, scope: !1578, inlinedAt: !1590)
!1622 = !DILocation(line: 925, column: 5, scope: !1575)
!1623 = !DILocation(line: 927, column: 7, scope: !79)
!1624 = !DILocation(line: 929, column: 7, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 929, column: 7)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 929, column: 7)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 928, column: 5)
!1628 = distinct !DILexicalBlock(scope: !79, file: !3, line: 927, column: 7)
!1629 = !DILocation(line: 929, column: 7, scope: !1626)
!1630 = !DILocation(line: 931, column: 11, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 931, column: 11)
!1632 = !DILocation(line: 931, column: 26, scope: !1631)
!1633 = !DILocation(line: 931, column: 11, scope: !1627)
!1634 = !DILocation(line: 932, column: 9, scope: !1631)
!1635 = !DILocation(line: 936, column: 7, scope: !103)
!1636 = !DILocation(line: 936, column: 7, scope: !79)
!1637 = !DILocation(line: 938, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 938, column: 7)
!1639 = distinct !DILexicalBlock(scope: !102, file: !3, line: 938, column: 7)
!1640 = !DILocation(line: 939, column: 18, scope: !101)
!1641 = !DILocation(line: 0, scope: !101)
!1642 = !DILocation(line: 939, column: 27, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !101, file: !3, line: 939, column: 7)
!1644 = !DILocation(line: 939, column: 7, scope: !101)
!1645 = !DILocation(line: 940, column: 9, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 940, column: 9)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 940, column: 9)
!1648 = !DILocation(line: 940, column: 9, scope: !1647)
!1649 = !DILocation(line: 939, column: 34, scope: !1643)
!1650 = distinct !{!1650, !1644, !1651, !760}
!1651 = !DILocation(line: 940, column: 9, scope: !101)
!1652 = !DILocation(line: 943, column: 16, scope: !79)
!1653 = !DILocation(line: 943, column: 11, scope: !79)
!1654 = !DILocation(line: 943, column: 3, scope: !79)
!1655 = !DILocation(line: 945, column: 21, scope: !79)
!1656 = !DILocation(line: 945, column: 27, scope: !79)
!1657 = !DILocation(line: 946, column: 38, scope: !79)
!1658 = !DILocation(line: 946, column: 33, scope: !79)
!1659 = !DILocation(line: 946, column: 26, scope: !79)
!1660 = !DILocation(line: 946, column: 3, scope: !79)
!1661 = !DILocation(line: 948, column: 34, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !79, file: !3, line: 948, column: 7)
!1663 = !DILocation(line: 948, column: 50, scope: !1662)
!1664 = !DILocation(line: 948, column: 45, scope: !1662)
!1665 = !DILocation(line: 948, column: 37, scope: !1662)
!1666 = !DILocation(line: 948, column: 7, scope: !79)
!1667 = !DILocation(line: 949, column: 18, scope: !1662)
!1668 = !DILocation(line: 949, column: 5, scope: !1662)
!1669 = !DILocation(line: 952, column: 1, scope: !79)
!1670 = !DISubprogram(name: "bindtextdomain", scope: !781, file: !781, line: 86, type: !1671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!67, !91, !91}
!1673 = !DISubprogram(name: "textdomain", scope: !781, file: !781, line: 82, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!67, !91}
!1676 = !DISubprogram(name: "atexit", scope: !1677, file: !1677, line: 595, type: !1678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1677 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!69, !960}
!1680 = !DISubprogram(name: "getopt_long", scope: !124, file: !124, line: 66, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!69, !69, !98, !91, !1683, !129}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1684 = distinct !DISubprogram(name: "parse_signal_action_params", scope: !3, file: !3, line: 588, type: !1685, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1687)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{null, !91, !88}
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1697}
!1688 = !DILocalVariable(name: "optarg", arg: 1, scope: !1684, file: !3, line: 588, type: !91)
!1689 = !DILocalVariable(name: "set_default", arg: 2, scope: !1684, file: !3, line: 588, type: !88)
!1690 = !DILocalVariable(name: "signame", scope: !1684, file: !3, line: 590, type: !853)
!1691 = !DILocalVariable(name: "opt_sig", scope: !1684, file: !3, line: 591, type: !67)
!1692 = !DILocalVariable(name: "optarg_writable", scope: !1684, file: !3, line: 592, type: !67)
!1693 = !DILocalVariable(name: "i", scope: !1694, file: !3, line: 599, type: !69)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 599, column: 7)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 595, column: 5)
!1696 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 594, column: 7)
!1697 = !DILocalVariable(name: "signum", scope: !1698, file: !3, line: 610, type: !69)
!1698 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 609, column: 5)
!1699 = !DILocation(line: 0, scope: !1684)
!1700 = !DILocation(line: 590, column: 3, scope: !1684)
!1701 = !DILocation(line: 590, column: 8, scope: !1684)
!1702 = !DILocation(line: 594, column: 9, scope: !1696)
!1703 = !DILocation(line: 594, column: 7, scope: !1684)
!1704 = !DILocation(line: 0, scope: !1694)
!1705 = !DILocation(line: 599, column: 7, scope: !1694)
!1706 = !DILocation(line: 600, column: 13, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 600, column: 13)
!1708 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 599, column: 7)
!1709 = !DILocation(line: 600, column: 34, scope: !1707)
!1710 = !DILocation(line: 600, column: 13, scope: !1708)
!1711 = !DILocation(line: 601, column: 11, scope: !1707)
!1712 = !DILocation(line: 601, column: 22, scope: !1707)
!1713 = !DILocation(line: 599, column: 44, scope: !1708)
!1714 = !DILocation(line: 599, column: 26, scope: !1708)
!1715 = distinct !{!1715, !1705, !1716, !760}
!1716 = !DILocation(line: 601, column: 54, scope: !1694)
!1717 = !DILocation(line: 605, column: 21, scope: !1684)
!1718 = !DILocation(line: 607, column: 13, scope: !1684)
!1719 = !DILocation(line: 608, column: 3, scope: !1684)
!1720 = !DILocation(line: 610, column: 20, scope: !1698)
!1721 = !DILocation(line: 0, scope: !1698)
!1722 = !DILocation(line: 612, column: 18, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 612, column: 11)
!1724 = !DILocation(line: 612, column: 11, scope: !1698)
!1725 = !DILocation(line: 613, column: 22, scope: !1723)
!1726 = !DILocation(line: 613, column: 47, scope: !1723)
!1727 = !DILocation(line: 613, column: 9, scope: !1723)
!1728 = !DILocation(line: 614, column: 11, scope: !1698)
!1729 = !DILocation(line: 614, column: 18, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 614, column: 11)
!1731 = !DILocation(line: 615, column: 16, scope: !1730)
!1732 = !DILocation(line: 615, column: 9, scope: !1730)
!1733 = !DILocation(line: 617, column: 7, scope: !1698)
!1734 = !DILocation(line: 617, column: 23, scope: !1698)
!1735 = !DILocation(line: 619, column: 17, scope: !1698)
!1736 = distinct !{!1736, !1719, !1737, !760}
!1737 = !DILocation(line: 620, column: 5, scope: !1684)
!1738 = !DILocation(line: 622, column: 3, scope: !1684)
!1739 = !DILocation(line: 623, column: 1, scope: !1684)
!1740 = distinct !DISubprogram(name: "parse_block_signal_params", scope: !3, file: !3, line: 670, type: !1685, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1741)
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747}
!1742 = !DILocalVariable(name: "optarg", arg: 1, scope: !1740, file: !3, line: 670, type: !91)
!1743 = !DILocalVariable(name: "block", arg: 2, scope: !1740, file: !3, line: 670, type: !88)
!1744 = !DILocalVariable(name: "signame", scope: !1740, file: !3, line: 672, type: !853)
!1745 = !DILocalVariable(name: "opt_sig", scope: !1740, file: !3, line: 673, type: !67)
!1746 = !DILocalVariable(name: "optarg_writable", scope: !1740, file: !3, line: 674, type: !67)
!1747 = !DILocalVariable(name: "signum", scope: !1748, file: !3, line: 699, type: !69)
!1748 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 698, column: 5)
!1749 = !DILocation(line: 0, scope: !1740)
!1750 = !DILocation(line: 672, column: 3, scope: !1740)
!1751 = !DILocation(line: 672, column: 8, scope: !1740)
!1752 = !DILocation(line: 676, column: 9, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 676, column: 7)
!1754 = !DILocation(line: 676, column: 7, scope: !1740)
!1755 = !DILocation(line: 682, column: 14, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 682, column: 12)
!1757 = !DILocation(line: 682, column: 12, scope: !1753)
!1758 = !DILocation(line: 685, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 683, column: 5)
!1760 = !DILocation(line: 686, column: 7, scope: !1759)
!1761 = !DILocation(line: 687, column: 5, scope: !1759)
!1762 = !DILocation(line: 679, column: 19, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 677, column: 5)
!1764 = !DILocation(line: 679, column: 7, scope: !1763)
!1765 = !DILocation(line: 680, column: 20, scope: !1763)
!1766 = !DILocation(line: 680, column: 7, scope: !1763)
!1767 = !DILocation(line: 689, column: 20, scope: !1740)
!1768 = !DILocation(line: 691, column: 7, scope: !1740)
!1769 = !DILocation(line: 694, column: 21, scope: !1740)
!1770 = !DILocation(line: 696, column: 13, scope: !1740)
!1771 = !DILocation(line: 697, column: 3, scope: !1740)
!1772 = !DILocation(line: 699, column: 20, scope: !1748)
!1773 = !DILocation(line: 0, scope: !1748)
!1774 = !DILocation(line: 701, column: 18, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 701, column: 11)
!1776 = !DILocation(line: 701, column: 11, scope: !1748)
!1777 = !DILocation(line: 702, column: 22, scope: !1775)
!1778 = !DILocation(line: 702, column: 47, scope: !1775)
!1779 = !DILocation(line: 702, column: 9, scope: !1775)
!1780 = !DILocation(line: 703, column: 11, scope: !1748)
!1781 = !DILocation(line: 703, column: 18, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 703, column: 11)
!1783 = !DILocation(line: 704, column: 16, scope: !1782)
!1784 = !DILocation(line: 704, column: 9, scope: !1782)
!1785 = !DILocation(line: 706, column: 7, scope: !1748)
!1786 = !DILocation(line: 707, column: 7, scope: !1748)
!1787 = !DILocation(line: 709, column: 17, scope: !1748)
!1788 = distinct !{!1788, !1771, !1789, !760}
!1789 = !DILocation(line: 710, column: 5, scope: !1740)
!1790 = !DILocation(line: 712, column: 3, scope: !1740)
!1791 = !DILocation(line: 713, column: 1, scope: !1740)
!1792 = !DISubprogram(name: "error", scope: !1793, file: !1793, line: 52, type: !1794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1793 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1794 = !DISubroutineType(types: !1795)
!1795 = !{null, !69, !69, !91, null}
!1796 = distinct !DISubprogram(name: "extract_varname", scope: !3, file: !3, line: 240, type: !1674, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1797)
!1797 = !{!1798, !1799, !1801}
!1798 = !DILocalVariable(name: "str", arg: 1, scope: !1796, file: !3, line: 240, type: !91)
!1799 = !DILocalVariable(name: "i", scope: !1796, file: !3, line: 242, type: !1800)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !42, line: 35, baseType: !813)
!1801 = !DILocalVariable(name: "p", scope: !1796, file: !3, line: 243, type: !91)
!1802 = !DILocation(line: 0, scope: !1796)
!1803 = !DILocalVariable(name: "str", arg: 1, scope: !1804, file: !3, line: 219, type: !91)
!1804 = distinct !DISubprogram(name: "scan_varname", scope: !3, file: !3, line: 219, type: !1805, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1807)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!91, !91}
!1807 = !{!1803, !1808}
!1808 = !DILocalVariable(name: "end", scope: !1809, file: !3, line: 224, type: !91)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 223, column: 5)
!1810 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 222, column: 8)
!1811 = !DILocation(line: 0, scope: !1804, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 245, column: 7, scope: !1796)
!1813 = !DILocation(line: 221, column: 3, scope: !1814, inlinedAt: !1812)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 221, column: 3)
!1815 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 221, column: 3)
!1816 = !DILocation(line: 221, column: 3, scope: !1815, inlinedAt: !1812)
!1817 = !DILocation(line: 222, column: 13, scope: !1810, inlinedAt: !1812)
!1818 = !DILocation(line: 222, column: 8, scope: !1810, inlinedAt: !1812)
!1819 = !DILocation(line: 222, column: 17, scope: !1810, inlinedAt: !1812)
!1820 = !DILocation(line: 222, column: 24, scope: !1810, inlinedAt: !1812)
!1821 = !DILocation(line: 222, column: 44, scope: !1810, inlinedAt: !1812)
!1822 = !DILocation(line: 222, column: 39, scope: !1810, inlinedAt: !1812)
!1823 = !DILocalVariable(name: "c", arg: 1, scope: !1824, file: !1825, line: 183, type: !69)
!1824 = distinct !DISubprogram(name: "c_isalpha", scope: !1825, file: !1825, line: 183, type: !1826, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1828)
!1825 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!88, !69}
!1828 = !{!1823}
!1829 = !DILocation(line: 0, scope: !1824, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 222, column: 28, scope: !1810, inlinedAt: !1812)
!1831 = !DILocation(line: 185, column: 3, scope: !1824, inlinedAt: !1830)
!1832 = !DILocation(line: 222, column: 61, scope: !1810, inlinedAt: !1812)
!1833 = !DILocation(line: 222, column: 8, scope: !1804, inlinedAt: !1812)
!1834 = !DILocation(line: 224, column: 28, scope: !1809, inlinedAt: !1812)
!1835 = !DILocation(line: 0, scope: !1809, inlinedAt: !1812)
!1836 = !DILocation(line: 225, column: 7, scope: !1809, inlinedAt: !1812)
!1837 = !DILocation(line: 225, column: 25, scope: !1809, inlinedAt: !1812)
!1838 = !DILocation(line: 225, column: 14, scope: !1809, inlinedAt: !1812)
!1839 = !DILocation(line: 225, column: 31, scope: !1809, inlinedAt: !1812)
!1840 = !DILocation(line: 225, column: 34, scope: !1809, inlinedAt: !1812)
!1841 = !DILocation(line: 226, column: 9, scope: !1809, inlinedAt: !1812)
!1842 = distinct !{!1842, !1836, !1843, !760}
!1843 = !DILocation(line: 226, column: 11, scope: !1809, inlinedAt: !1812)
!1844 = !DILocation(line: 250, column: 9, scope: !1796)
!1845 = !DILocation(line: 250, column: 15, scope: !1796)
!1846 = !DILocation(line: 252, column: 12, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 252, column: 7)
!1848 = !DILocation(line: 252, column: 9, scope: !1847)
!1849 = !DILocation(line: 252, column: 7, scope: !1796)
!1850 = !DILocation(line: 258, column: 11, scope: !1796)
!1851 = !DILocation(line: 254, column: 17, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 253, column: 5)
!1853 = !DILocation(line: 254, column: 13, scope: !1852)
!1854 = !DILocation(line: 255, column: 27, scope: !1852)
!1855 = !DILocation(line: 255, column: 17, scope: !1852)
!1856 = !DILocation(line: 255, column: 15, scope: !1852)
!1857 = !DILocation(line: 256, column: 5, scope: !1852)
!1858 = !DILocalVariable(name: "__dest", arg: 1, scope: !1859, file: !1194, line: 26, type: !1862)
!1859 = distinct !DISubprogram(name: "memcpy", scope: !1194, file: !1194, line: 26, type: !1860, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1866)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!39, !1862, !1863, !41}
!1862 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!1863 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1864)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1866 = !{!1858, !1867, !1868}
!1867 = !DILocalVariable(name: "__src", arg: 2, scope: !1859, file: !1194, line: 26, type: !1863)
!1868 = !DILocalVariable(name: "__len", arg: 3, scope: !1859, file: !1194, line: 26, type: !41)
!1869 = !DILocation(line: 0, scope: !1859, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 258, column: 3, scope: !1796)
!1871 = !DILocation(line: 29, column: 10, scope: !1859, inlinedAt: !1870)
!1872 = !DILocation(line: 259, column: 3, scope: !1796)
!1873 = !DILocation(line: 259, column: 13, scope: !1796)
!1874 = !DILocation(line: 261, column: 3, scope: !1796)
!1875 = !DILocation(line: 262, column: 1, scope: !1796)
!1876 = !DISubprogram(name: "getenv", scope: !1677, file: !1677, line: 634, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1877 = !DISubprogram(name: "unsetenv", scope: !1677, file: !1677, line: 657, type: !1878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!69, !91}
!1880 = !DISubprogram(name: "putenv", scope: !1677, file: !1677, line: 647, type: !1881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!69, !67}
!1883 = !DISubprogram(name: "sigaction", scope: !72, file: !72, line: 243, type: !1884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!69, !69, !1886, !1888}
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!1889 = !DISubprogram(name: "sigemptyset", scope: !72, file: !72, line: 199, type: !1890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!69, !1892}
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!1893 = !DISubprogram(name: "sigprocmask", scope: !72, file: !72, line: 232, type: !1894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!69, !69, !1896, !1892}
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!1898 = !DISubprogram(name: "sigismember", scope: !72, file: !72, line: 211, type: !1899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!69, !1896, !69}
!1901 = !DISubprogram(name: "sigaddset", scope: !72, file: !72, line: 205, type: !1902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!69, !1892, !69}
!1904 = !DISubprogram(name: "sigdelset", scope: !72, file: !72, line: 208, type: !1902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1905 = !DISubprogram(name: "chdir", scope: !1906, file: !1906, line: 506, type: !1878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1906 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1907 = !DISubprogram(name: "execvp", scope: !1906, file: !1906, line: 589, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!69, !91, !98}
!1910 = !DISubprogram(name: "sigfillset", scope: !72, file: !72, line: 202, type: !1890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!1911 = distinct !DISubprogram(name: "operand2sig", scope: !260, file: !260, line: 36, type: !1912, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1914)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!69, !91, !67}
!1914 = !{!1915, !1916, !1917, !1918, !1921, !1922, !1923, !1925}
!1915 = !DILocalVariable(name: "operand", arg: 1, scope: !1911, file: !260, line: 36, type: !91)
!1916 = !DILocalVariable(name: "signame", arg: 2, scope: !1911, file: !260, line: 36, type: !67)
!1917 = !DILocalVariable(name: "signum", scope: !1911, file: !260, line: 38, type: !69)
!1918 = !DILocalVariable(name: "endp", scope: !1919, file: !260, line: 53, type: !67)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !260, line: 41, column: 5)
!1920 = distinct !DILexicalBlock(scope: !1911, file: !260, line: 40, column: 7)
!1921 = !DILocalVariable(name: "l", scope: !1919, file: !260, line: 54, type: !813)
!1922 = !DILocalVariable(name: "i", scope: !1919, file: !260, line: 55, type: !69)
!1923 = !DILocalVariable(name: "upcased", scope: !1924, file: !260, line: 70, type: !67)
!1924 = distinct !DILexicalBlock(scope: !1920, file: !260, line: 67, column: 5)
!1925 = !DILocalVariable(name: "p", scope: !1924, file: !260, line: 71, type: !67)
!1926 = !DILocation(line: 0, scope: !1911)
!1927 = !DILocation(line: 38, column: 3, scope: !1911)
!1928 = !DILocation(line: 40, column: 7, scope: !1920)
!1929 = !DILocation(line: 40, column: 7, scope: !1911)
!1930 = !DILocation(line: 53, column: 7, scope: !1919)
!1931 = !DILocation(line: 54, column: 21, scope: !1919)
!1932 = !DILocation(line: 54, column: 27, scope: !1919)
!1933 = !DILocation(line: 0, scope: !1919)
!1934 = !DILocation(line: 54, column: 32, scope: !1919)
!1935 = !DILocation(line: 55, column: 15, scope: !1919)
!1936 = !DILocation(line: 56, column: 28, scope: !1919)
!1937 = !DILocation(line: 56, column: 25, scope: !1919)
!1938 = !DILocation(line: 56, column: 33, scope: !1919)
!1939 = !DILocation(line: 56, column: 36, scope: !1919)
!1940 = !DILocation(line: 56, column: 42, scope: !1919)
!1941 = !DILocation(line: 56, column: 45, scope: !1919)
!1942 = !DILocation(line: 56, column: 51, scope: !1919)
!1943 = !DILocation(line: 58, column: 18, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1919, file: !260, line: 58, column: 11)
!1945 = !DILocation(line: 58, column: 11, scope: !1919)
!1946 = !DILocation(line: 65, column: 5, scope: !1920)
!1947 = !DILocation(line: 65, column: 5, scope: !1919)
!1948 = !DILocation(line: 70, column: 23, scope: !1924)
!1949 = !DILocation(line: 0, scope: !1924)
!1950 = !DILocation(line: 72, column: 25, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !260, line: 72, column: 7)
!1952 = distinct !DILexicalBlock(scope: !1924, file: !260, line: 72, column: 7)
!1953 = !DILocation(line: 72, column: 7, scope: !1952)
!1954 = !DILocation(line: 73, column: 51, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !260, line: 73, column: 13)
!1956 = !DILocation(line: 73, column: 13, scope: !1955)
!1957 = !DILocation(line: 73, column: 13, scope: !1951)
!1958 = !DILocation(line: 74, column: 14, scope: !1955)
!1959 = !DILocation(line: 74, column: 11, scope: !1955)
!1960 = !DILocation(line: 72, column: 30, scope: !1951)
!1961 = distinct !{!1961, !1953, !1962, !760}
!1962 = !DILocation(line: 74, column: 23, scope: !1952)
!1963 = !DILocation(line: 78, column: 13, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1924, file: !260, line: 78, column: 11)
!1965 = !DILocation(line: 78, column: 40, scope: !1964)
!1966 = !DILocation(line: 79, column: 13, scope: !1964)
!1967 = !DILocation(line: 79, column: 17, scope: !1964)
!1968 = !DILocation(line: 79, column: 28, scope: !1964)
!1969 = !DILocation(line: 79, column: 35, scope: !1964)
!1970 = !DILocation(line: 79, column: 38, scope: !1964)
!1971 = !DILocation(line: 79, column: 49, scope: !1964)
!1972 = !DILocation(line: 79, column: 56, scope: !1964)
!1973 = !DILocation(line: 79, column: 59, scope: !1964)
!1974 = !DILocation(line: 79, column: 70, scope: !1964)
!1975 = !DILocation(line: 80, column: 17, scope: !1964)
!1976 = !DILocation(line: 80, column: 37, scope: !1964)
!1977 = !DILocation(line: 80, column: 20, scope: !1964)
!1978 = !DILocation(line: 80, column: 51, scope: !1964)
!1979 = !DILocation(line: 78, column: 11, scope: !1924)
!1980 = !DILocation(line: 81, column: 16, scope: !1964)
!1981 = !DILocation(line: 81, column: 9, scope: !1964)
!1982 = !DILocation(line: 83, column: 7, scope: !1924)
!1983 = !DILocation(line: 86, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1911, file: !260, line: 86, column: 7)
!1985 = !DILocation(line: 86, column: 14, scope: !1984)
!1986 = !DILocation(line: 86, column: 18, scope: !1984)
!1987 = !DILocation(line: 86, column: 21, scope: !1984)
!1988 = !DILocation(line: 86, column: 47, scope: !1984)
!1989 = !DILocation(line: 86, column: 7, scope: !1911)
!1990 = !DILocation(line: 88, column: 20, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1984, file: !260, line: 87, column: 5)
!1992 = !DILocation(line: 88, column: 45, scope: !1991)
!1993 = !DILocation(line: 88, column: 7, scope: !1991)
!1994 = !DILocation(line: 89, column: 7, scope: !1991)
!1995 = !DILocation(line: 92, column: 10, scope: !1911)
!1996 = !DILocation(line: 92, column: 3, scope: !1911)
!1997 = !DILocation(line: 93, column: 1, scope: !1911)
!1998 = distinct !DISubprogram(name: "c_isalnum", scope: !1825, file: !1825, line: 169, type: !1826, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !1999)
!1999 = !{!2000}
!2000 = !DILocalVariable(name: "c", arg: 1, scope: !1998, file: !1825, line: 169, type: !69)
!2001 = !DILocation(line: 0, scope: !1998)
!2002 = !DILocation(line: 171, column: 3, scope: !1998)
!2003 = !DILocation(line: 178, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1998, file: !1825, line: 172, column: 5)
!2005 = !DILocation(line: 0, scope: !2004)
!2006 = !DILocation(line: 180, column: 1, scope: !1998)
!2007 = distinct !DISubprogram(name: "c_isalpha", scope: !1825, file: !1825, line: 183, type: !1826, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2008)
!2008 = !{!2009}
!2009 = !DILocalVariable(name: "c", arg: 1, scope: !2007, file: !1825, line: 183, type: !69)
!2010 = !DILocation(line: 0, scope: !2007)
!2011 = !DILocation(line: 185, column: 3, scope: !2007)
!2012 = !DILocation(line: 193, column: 1, scope: !2007)
!2013 = distinct !DISubprogram(name: "c_isascii", scope: !1825, file: !1825, line: 198, type: !1826, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2014)
!2014 = !{!2015}
!2015 = !DILocalVariable(name: "c", arg: 1, scope: !2013, file: !1825, line: 198, type: !69)
!2016 = !DILocation(line: 0, scope: !2013)
!2017 = !DILocation(line: 200, column: 3, scope: !2013)
!2018 = !DILocation(line: 212, column: 1, scope: !2013)
!2019 = distinct !DISubprogram(name: "c_isblank", scope: !1825, file: !1825, line: 215, type: !1826, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2020)
!2020 = !{!2021}
!2021 = !DILocalVariable(name: "c", arg: 1, scope: !2019, file: !1825, line: 215, type: !69)
!2022 = !DILocation(line: 0, scope: !2019)
!2023 = !DILocation(line: 217, column: 12, scope: !2019)
!2024 = !DILocation(line: 217, column: 19, scope: !2019)
!2025 = !DILocation(line: 217, column: 3, scope: !2019)
!2026 = distinct !DISubprogram(name: "c_iscntrl", scope: !1825, file: !1825, line: 221, type: !1826, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2027)
!2027 = !{!2028}
!2028 = !DILocalVariable(name: "c", arg: 1, scope: !2026, file: !1825, line: 221, type: !69)
!2029 = !DILocation(line: 0, scope: !2026)
!2030 = !DILocation(line: 223, column: 3, scope: !2026)
!2031 = !DILocation(line: 228, column: 7, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2026, file: !1825, line: 224, column: 5)
!2033 = !DILocation(line: 0, scope: !2032)
!2034 = !DILocation(line: 230, column: 1, scope: !2026)
!2035 = distinct !DISubprogram(name: "c_isdigit", scope: !1825, file: !1825, line: 233, type: !1826, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2036)
!2036 = !{!2037}
!2037 = !DILocalVariable(name: "c", arg: 1, scope: !2035, file: !1825, line: 233, type: !69)
!2038 = !DILocation(line: 0, scope: !2035)
!2039 = !DILocation(line: 235, column: 3, scope: !2035)
!2040 = !DILocation(line: 242, column: 1, scope: !2035)
!2041 = distinct !DISubprogram(name: "c_isgraph", scope: !1825, file: !1825, line: 245, type: !1826, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2042)
!2042 = !{!2043}
!2043 = !DILocalVariable(name: "c", arg: 1, scope: !2041, file: !1825, line: 245, type: !69)
!2044 = !DILocation(line: 0, scope: !2041)
!2045 = !DILocation(line: 247, column: 3, scope: !2041)
!2046 = !DILocation(line: 257, column: 1, scope: !2041)
!2047 = distinct !DISubprogram(name: "c_islower", scope: !1825, file: !1825, line: 260, type: !1826, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2048)
!2048 = !{!2049}
!2049 = !DILocalVariable(name: "c", arg: 1, scope: !2047, file: !1825, line: 260, type: !69)
!2050 = !DILocation(line: 0, scope: !2047)
!2051 = !DILocation(line: 262, column: 3, scope: !2047)
!2052 = !DILocation(line: 269, column: 1, scope: !2047)
!2053 = distinct !DISubprogram(name: "c_isprint", scope: !1825, file: !1825, line: 272, type: !1826, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2054)
!2054 = !{!2055}
!2055 = !DILocalVariable(name: "c", arg: 1, scope: !2053, file: !1825, line: 272, type: !69)
!2056 = !DILocation(line: 0, scope: !2053)
!2057 = !DILocation(line: 274, column: 3, scope: !2053)
!2058 = !DILocation(line: 285, column: 1, scope: !2053)
!2059 = distinct !DISubprogram(name: "c_ispunct", scope: !1825, file: !1825, line: 288, type: !1826, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2060)
!2060 = !{!2061}
!2061 = !DILocalVariable(name: "c", arg: 1, scope: !2059, file: !1825, line: 288, type: !69)
!2062 = !DILocation(line: 0, scope: !2059)
!2063 = !DILocation(line: 290, column: 3, scope: !2059)
!2064 = !DILocation(line: 295, column: 7, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2059, file: !1825, line: 291, column: 5)
!2066 = !DILocation(line: 0, scope: !2065)
!2067 = !DILocation(line: 297, column: 1, scope: !2059)
!2068 = distinct !DISubprogram(name: "c_isspace", scope: !1825, file: !1825, line: 300, type: !1826, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2069)
!2069 = !{!2070}
!2070 = !DILocalVariable(name: "c", arg: 1, scope: !2068, file: !1825, line: 300, type: !69)
!2071 = !DILocation(line: 0, scope: !2068)
!2072 = !DILocation(line: 302, column: 3, scope: !2068)
!2073 = !DILocation(line: 309, column: 1, scope: !2068)
!2074 = distinct !DISubprogram(name: "c_isupper", scope: !1825, file: !1825, line: 312, type: !1826, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2075)
!2075 = !{!2076}
!2076 = !DILocalVariable(name: "c", arg: 1, scope: !2074, file: !1825, line: 312, type: !69)
!2077 = !DILocation(line: 0, scope: !2074)
!2078 = !DILocation(line: 314, column: 3, scope: !2074)
!2079 = !DILocation(line: 321, column: 1, scope: !2074)
!2080 = distinct !DISubprogram(name: "c_isxdigit", scope: !1825, file: !1825, line: 324, type: !1826, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2081)
!2081 = !{!2082}
!2082 = !DILocalVariable(name: "c", arg: 1, scope: !2080, file: !1825, line: 324, type: !69)
!2083 = !DILocation(line: 0, scope: !2080)
!2084 = !DILocation(line: 326, column: 3, scope: !2080)
!2085 = !DILocation(line: 334, column: 1, scope: !2080)
!2086 = distinct !DISubprogram(name: "c_tolower", scope: !1825, file: !1825, line: 337, type: !2087, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!69, !69}
!2089 = !{!2090}
!2090 = !DILocalVariable(name: "c", arg: 1, scope: !2086, file: !1825, line: 337, type: !69)
!2091 = !DILocation(line: 0, scope: !2086)
!2092 = !DILocation(line: 339, column: 3, scope: !2086)
!2093 = !DILocation(line: 346, column: 1, scope: !2086)
!2094 = distinct !DISubprogram(name: "c_toupper", scope: !1825, file: !1825, line: 349, type: !2087, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !2095)
!2095 = !{!2096}
!2096 = !DILocalVariable(name: "c", arg: 1, scope: !2094, file: !1825, line: 349, type: !69)
!2097 = !DILocation(line: 0, scope: !2094)
!2098 = !DILocation(line: 351, column: 3, scope: !2094)
!2099 = !DILocation(line: 358, column: 1, scope: !2094)
!2100 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !169, file: !169, line: 51, type: !730, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !2101)
!2101 = !{!2102}
!2102 = !DILocalVariable(name: "file", arg: 1, scope: !2100, file: !169, line: 51, type: !91)
!2103 = !DILocation(line: 0, scope: !2100)
!2104 = !DILocation(line: 53, column: 13, scope: !2100)
!2105 = !DILocation(line: 54, column: 1, scope: !2100)
!2106 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !169, file: !169, line: 88, type: !2107, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{null, !88}
!2109 = !{!2110}
!2110 = !DILocalVariable(name: "ignore", arg: 1, scope: !2106, file: !169, line: 88, type: !88)
!2111 = !DILocation(line: 0, scope: !2106)
!2112 = !DILocation(line: 90, column: 16, scope: !2106)
!2113 = !{!2114, !2114, i64 0}
!2114 = !{!"_Bool", !706, i64 0}
!2115 = !DILocation(line: 91, column: 1, scope: !2106)
!2116 = distinct !DISubprogram(name: "close_stdout", scope: !169, file: !169, line: 117, type: !713, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !2117)
!2117 = !{!2118}
!2118 = !DILocalVariable(name: "write_error", scope: !2119, file: !169, line: 122, type: !91)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !169, line: 121, column: 5)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !169, line: 119, column: 7)
!2121 = !DILocation(line: 119, column: 21, scope: !2120)
!2122 = !DILocation(line: 119, column: 7, scope: !2120)
!2123 = !DILocation(line: 119, column: 29, scope: !2120)
!2124 = !DILocation(line: 120, column: 7, scope: !2120)
!2125 = !DILocation(line: 120, column: 12, scope: !2120)
!2126 = !{i8 0, i8 2}
!2127 = !DILocation(line: 120, column: 25, scope: !2120)
!2128 = !DILocation(line: 120, column: 28, scope: !2120)
!2129 = !DILocation(line: 120, column: 34, scope: !2120)
!2130 = !DILocation(line: 119, column: 7, scope: !2116)
!2131 = !DILocation(line: 122, column: 33, scope: !2119)
!2132 = !DILocation(line: 0, scope: !2119)
!2133 = !DILocation(line: 123, column: 11, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2119, file: !169, line: 123, column: 11)
!2135 = !DILocation(line: 0, scope: !2134)
!2136 = !DILocation(line: 123, column: 11, scope: !2119)
!2137 = !DILocation(line: 124, column: 36, scope: !2134)
!2138 = !DILocation(line: 124, column: 9, scope: !2134)
!2139 = !DILocation(line: 127, column: 9, scope: !2134)
!2140 = !DILocation(line: 129, column: 14, scope: !2119)
!2141 = !DILocation(line: 129, column: 7, scope: !2119)
!2142 = !DILocation(line: 134, column: 42, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2116, file: !169, line: 134, column: 7)
!2144 = !DILocation(line: 134, column: 28, scope: !2143)
!2145 = !DILocation(line: 134, column: 50, scope: !2143)
!2146 = !DILocation(line: 134, column: 7, scope: !2116)
!2147 = !DILocation(line: 135, column: 12, scope: !2143)
!2148 = !DILocation(line: 135, column: 5, scope: !2143)
!2149 = !DILocation(line: 136, column: 1, scope: !2116)
!2150 = distinct !DISubprogram(name: "set_program_name", scope: !182, file: !182, line: 39, type: !730, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2151)
!2151 = !{!2152, !2153, !2154}
!2152 = !DILocalVariable(name: "argv0", arg: 1, scope: !2150, file: !182, line: 39, type: !91)
!2153 = !DILocalVariable(name: "slash", scope: !2150, file: !182, line: 46, type: !91)
!2154 = !DILocalVariable(name: "base", scope: !2150, file: !182, line: 47, type: !91)
!2155 = !DILocation(line: 0, scope: !2150)
!2156 = !DILocation(line: 51, column: 13, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2150, file: !182, line: 51, column: 7)
!2158 = !DILocation(line: 51, column: 7, scope: !2150)
!2159 = !DILocation(line: 55, column: 14, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2157, file: !182, line: 52, column: 5)
!2161 = !DILocation(line: 54, column: 7, scope: !2160)
!2162 = !DILocation(line: 56, column: 7, scope: !2160)
!2163 = !DILocation(line: 59, column: 11, scope: !2150)
!2164 = !DILocation(line: 60, column: 17, scope: !2150)
!2165 = !DILocation(line: 60, column: 11, scope: !2150)
!2166 = !DILocation(line: 61, column: 12, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2150, file: !182, line: 61, column: 7)
!2168 = !DILocation(line: 61, column: 20, scope: !2167)
!2169 = !DILocation(line: 61, column: 25, scope: !2167)
!2170 = !DILocation(line: 61, column: 42, scope: !2167)
!2171 = !DILocation(line: 61, column: 28, scope: !2167)
!2172 = !DILocation(line: 61, column: 61, scope: !2167)
!2173 = !DILocation(line: 61, column: 7, scope: !2150)
!2174 = !DILocation(line: 64, column: 11, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !182, line: 64, column: 11)
!2176 = distinct !DILexicalBlock(scope: !2167, file: !182, line: 62, column: 5)
!2177 = !DILocation(line: 64, column: 36, scope: !2175)
!2178 = !DILocation(line: 64, column: 11, scope: !2176)
!2179 = !DILocation(line: 66, column: 24, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2175, file: !182, line: 65, column: 9)
!2181 = !DILocation(line: 70, column: 41, scope: !2180)
!2182 = !DILocation(line: 72, column: 9, scope: !2180)
!2183 = !DILocation(line: 84, column: 16, scope: !2150)
!2184 = !DILocation(line: 90, column: 27, scope: !2150)
!2185 = !DILocation(line: 92, column: 1, scope: !2150)
!2186 = distinct !DISubprogram(name: "clone_quoting_options", scope: !188, file: !188, line: 122, type: !2187, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2190)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!2189, !2189}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!2190 = !{!2191, !2192, !2193}
!2191 = !DILocalVariable(name: "o", arg: 1, scope: !2186, file: !188, line: 122, type: !2189)
!2192 = !DILocalVariable(name: "e", scope: !2186, file: !188, line: 124, type: !69)
!2193 = !DILocalVariable(name: "p", scope: !2186, file: !188, line: 125, type: !2189)
!2194 = !DILocation(line: 0, scope: !2186)
!2195 = !DILocation(line: 124, column: 11, scope: !2186)
!2196 = !DILocation(line: 125, column: 40, scope: !2186)
!2197 = !DILocation(line: 125, column: 31, scope: !2186)
!2198 = !DILocation(line: 127, column: 9, scope: !2186)
!2199 = !DILocation(line: 128, column: 3, scope: !2186)
!2200 = distinct !DISubprogram(name: "get_quoting_style", scope: !188, file: !188, line: 133, type: !2201, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2205)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!13, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!2205 = !{!2206}
!2206 = !DILocalVariable(name: "o", arg: 1, scope: !2200, file: !188, line: 133, type: !2203)
!2207 = !DILocation(line: 0, scope: !2200)
!2208 = !DILocation(line: 135, column: 11, scope: !2200)
!2209 = !DILocation(line: 135, column: 46, scope: !2200)
!2210 = !{!2211, !706, i64 0}
!2211 = !{!"quoting_options", !706, i64 0, !980, i64 4, !706, i64 8, !705, i64 40, !705, i64 48}
!2212 = !DILocation(line: 135, column: 3, scope: !2200)
!2213 = distinct !DISubprogram(name: "set_quoting_style", scope: !188, file: !188, line: 141, type: !2214, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !2189, !13}
!2216 = !{!2217, !2218}
!2217 = !DILocalVariable(name: "o", arg: 1, scope: !2213, file: !188, line: 141, type: !2189)
!2218 = !DILocalVariable(name: "s", arg: 2, scope: !2213, file: !188, line: 141, type: !13)
!2219 = !DILocation(line: 0, scope: !2213)
!2220 = !DILocation(line: 143, column: 4, scope: !2213)
!2221 = !DILocation(line: 143, column: 39, scope: !2213)
!2222 = !DILocation(line: 143, column: 45, scope: !2213)
!2223 = !DILocation(line: 144, column: 1, scope: !2213)
!2224 = distinct !DISubprogram(name: "set_char_quoting", scope: !188, file: !188, line: 152, type: !2225, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2227)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!69, !2189, !68, !69}
!2227 = !{!2228, !2229, !2230, !2231, !2233, !2235, !2236}
!2228 = !DILocalVariable(name: "o", arg: 1, scope: !2224, file: !188, line: 152, type: !2189)
!2229 = !DILocalVariable(name: "c", arg: 2, scope: !2224, file: !188, line: 152, type: !68)
!2230 = !DILocalVariable(name: "i", arg: 3, scope: !2224, file: !188, line: 152, type: !69)
!2231 = !DILocalVariable(name: "uc", scope: !2224, file: !188, line: 154, type: !2232)
!2232 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!2233 = !DILocalVariable(name: "p", scope: !2224, file: !188, line: 155, type: !2234)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2235 = !DILocalVariable(name: "shift", scope: !2224, file: !188, line: 157, type: !69)
!2236 = !DILocalVariable(name: "r", scope: !2224, file: !188, line: 158, type: !69)
!2237 = !DILocation(line: 0, scope: !2224)
!2238 = !DILocation(line: 156, column: 6, scope: !2224)
!2239 = !DILocation(line: 156, column: 62, scope: !2224)
!2240 = !DILocation(line: 156, column: 57, scope: !2224)
!2241 = !DILocation(line: 157, column: 15, scope: !2224)
!2242 = !DILocation(line: 158, column: 12, scope: !2224)
!2243 = !DILocation(line: 158, column: 15, scope: !2224)
!2244 = !DILocation(line: 158, column: 25, scope: !2224)
!2245 = !DILocation(line: 159, column: 13, scope: !2224)
!2246 = !DILocation(line: 159, column: 18, scope: !2224)
!2247 = !DILocation(line: 159, column: 23, scope: !2224)
!2248 = !DILocation(line: 159, column: 6, scope: !2224)
!2249 = !DILocation(line: 160, column: 3, scope: !2224)
!2250 = distinct !DISubprogram(name: "set_quoting_flags", scope: !188, file: !188, line: 168, type: !2251, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!69, !2189, !69}
!2253 = !{!2254, !2255, !2256}
!2254 = !DILocalVariable(name: "o", arg: 1, scope: !2250, file: !188, line: 168, type: !2189)
!2255 = !DILocalVariable(name: "i", arg: 2, scope: !2250, file: !188, line: 168, type: !69)
!2256 = !DILocalVariable(name: "r", scope: !2250, file: !188, line: 170, type: !69)
!2257 = !DILocation(line: 0, scope: !2250)
!2258 = !DILocation(line: 171, column: 8, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2250, file: !188, line: 171, column: 7)
!2260 = !DILocation(line: 171, column: 7, scope: !2250)
!2261 = !DILocation(line: 173, column: 10, scope: !2250)
!2262 = !{!2211, !980, i64 4}
!2263 = !DILocation(line: 174, column: 12, scope: !2250)
!2264 = !DILocation(line: 175, column: 3, scope: !2250)
!2265 = distinct !DISubprogram(name: "set_custom_quoting", scope: !188, file: !188, line: 179, type: !2266, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{null, !2189, !91, !91}
!2268 = !{!2269, !2270, !2271}
!2269 = !DILocalVariable(name: "o", arg: 1, scope: !2265, file: !188, line: 179, type: !2189)
!2270 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2265, file: !188, line: 180, type: !91)
!2271 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2265, file: !188, line: 180, type: !91)
!2272 = !DILocation(line: 0, scope: !2265)
!2273 = !DILocation(line: 182, column: 8, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2265, file: !188, line: 182, column: 7)
!2275 = !DILocation(line: 182, column: 7, scope: !2265)
!2276 = !DILocation(line: 184, column: 6, scope: !2265)
!2277 = !DILocation(line: 184, column: 12, scope: !2265)
!2278 = !DILocation(line: 185, column: 8, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2265, file: !188, line: 185, column: 7)
!2280 = !DILocation(line: 185, column: 19, scope: !2279)
!2281 = !DILocation(line: 186, column: 5, scope: !2279)
!2282 = !DILocation(line: 187, column: 6, scope: !2265)
!2283 = !DILocation(line: 187, column: 17, scope: !2265)
!2284 = !{!2211, !705, i64 40}
!2285 = !DILocation(line: 188, column: 6, scope: !2265)
!2286 = !DILocation(line: 188, column: 18, scope: !2265)
!2287 = !{!2211, !705, i64 48}
!2288 = !DILocation(line: 189, column: 1, scope: !2265)
!2289 = distinct !DISubprogram(name: "quotearg_buffer", scope: !188, file: !188, line: 784, type: !2290, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!41, !67, !41, !91, !41, !2203}
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300}
!2293 = !DILocalVariable(name: "buffer", arg: 1, scope: !2289, file: !188, line: 784, type: !67)
!2294 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2289, file: !188, line: 784, type: !41)
!2295 = !DILocalVariable(name: "arg", arg: 3, scope: !2289, file: !188, line: 785, type: !91)
!2296 = !DILocalVariable(name: "argsize", arg: 4, scope: !2289, file: !188, line: 785, type: !41)
!2297 = !DILocalVariable(name: "o", arg: 5, scope: !2289, file: !188, line: 786, type: !2203)
!2298 = !DILocalVariable(name: "p", scope: !2289, file: !188, line: 788, type: !2203)
!2299 = !DILocalVariable(name: "e", scope: !2289, file: !188, line: 789, type: !69)
!2300 = !DILocalVariable(name: "r", scope: !2289, file: !188, line: 790, type: !41)
!2301 = !DILocation(line: 0, scope: !2289)
!2302 = !DILocation(line: 788, column: 37, scope: !2289)
!2303 = !DILocation(line: 789, column: 11, scope: !2289)
!2304 = !DILocation(line: 791, column: 43, scope: !2289)
!2305 = !DILocation(line: 791, column: 53, scope: !2289)
!2306 = !DILocation(line: 791, column: 60, scope: !2289)
!2307 = !DILocation(line: 792, column: 43, scope: !2289)
!2308 = !DILocation(line: 792, column: 58, scope: !2289)
!2309 = !DILocation(line: 790, column: 14, scope: !2289)
!2310 = !DILocation(line: 793, column: 9, scope: !2289)
!2311 = !DILocation(line: 794, column: 3, scope: !2289)
!2312 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !188, file: !188, line: 256, type: !2313, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2317)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!41, !67, !41, !91, !41, !13, !69, !2315, !91, !91}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2342, !2343, !2344, !2345, !2346, !2349, !2350, !2368, !2371, !2372, !2379, !2382, !2383, !2384, !2385, !2386, !2387}
!2318 = !DILocalVariable(name: "buffer", arg: 1, scope: !2312, file: !188, line: 256, type: !67)
!2319 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2312, file: !188, line: 256, type: !41)
!2320 = !DILocalVariable(name: "arg", arg: 3, scope: !2312, file: !188, line: 257, type: !91)
!2321 = !DILocalVariable(name: "argsize", arg: 4, scope: !2312, file: !188, line: 257, type: !41)
!2322 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2312, file: !188, line: 258, type: !13)
!2323 = !DILocalVariable(name: "flags", arg: 6, scope: !2312, file: !188, line: 258, type: !69)
!2324 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2312, file: !188, line: 259, type: !2315)
!2325 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2312, file: !188, line: 260, type: !91)
!2326 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2312, file: !188, line: 261, type: !91)
!2327 = !DILocalVariable(name: "i", scope: !2312, file: !188, line: 263, type: !41)
!2328 = !DILocalVariable(name: "len", scope: !2312, file: !188, line: 264, type: !41)
!2329 = !DILocalVariable(name: "orig_buffersize", scope: !2312, file: !188, line: 265, type: !41)
!2330 = !DILocalVariable(name: "quote_string", scope: !2312, file: !188, line: 266, type: !91)
!2331 = !DILocalVariable(name: "quote_string_len", scope: !2312, file: !188, line: 267, type: !41)
!2332 = !DILocalVariable(name: "backslash_escapes", scope: !2312, file: !188, line: 268, type: !88)
!2333 = !DILocalVariable(name: "unibyte_locale", scope: !2312, file: !188, line: 269, type: !88)
!2334 = !DILocalVariable(name: "elide_outer_quotes", scope: !2312, file: !188, line: 270, type: !88)
!2335 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2312, file: !188, line: 271, type: !88)
!2336 = !DILocalVariable(name: "encountered_single_quote", scope: !2312, file: !188, line: 272, type: !88)
!2337 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2312, file: !188, line: 273, type: !88)
!2338 = !DILocalVariable(name: "c", scope: !2339, file: !188, line: 402, type: !2232)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !188, line: 401, column: 5)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !188, line: 400, column: 3)
!2341 = distinct !DILexicalBlock(scope: !2312, file: !188, line: 400, column: 3)
!2342 = !DILocalVariable(name: "esc", scope: !2339, file: !188, line: 403, type: !2232)
!2343 = !DILocalVariable(name: "is_right_quote", scope: !2339, file: !188, line: 404, type: !88)
!2344 = !DILocalVariable(name: "escaping", scope: !2339, file: !188, line: 405, type: !88)
!2345 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2339, file: !188, line: 406, type: !88)
!2346 = !DILocalVariable(name: "m", scope: !2347, file: !188, line: 610, type: !41)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !188, line: 608, column: 11)
!2348 = distinct !DILexicalBlock(scope: !2339, file: !188, line: 426, column: 9)
!2349 = !DILocalVariable(name: "printable", scope: !2347, file: !188, line: 612, type: !88)
!2350 = !DILocalVariable(name: "mbstate", scope: !2351, file: !188, line: 621, type: !2353)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !188, line: 620, column: 15)
!2352 = distinct !DILexicalBlock(scope: !2347, file: !188, line: 614, column: 17)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2354, line: 6, baseType: !2355)
!2354 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2356, line: 21, baseType: !2357)
!2356 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2356, line: 13, size: 64, elements: !2358)
!2358 = !{!2359, !2360}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2357, file: !2356, line: 15, baseType: !69, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2357, file: !2356, line: 20, baseType: !2361, size: 32, offset: 32)
!2361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2357, file: !2356, line: 16, size: 32, elements: !2362)
!2362 = !{!2363, !2364}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2361, file: !2356, line: 18, baseType: !7, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2361, file: !2356, line: 19, baseType: !2365, size: 32)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 32, elements: !2366)
!2366 = !{!2367}
!2367 = !DISubrange(count: 4)
!2368 = !DILocalVariable(name: "w", scope: !2369, file: !188, line: 631, type: !2370)
!2369 = distinct !DILexicalBlock(scope: !2351, file: !188, line: 630, column: 19)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !42, line: 74, baseType: !69)
!2371 = !DILocalVariable(name: "bytes", scope: !2369, file: !188, line: 632, type: !41)
!2372 = !DILocalVariable(name: "j", scope: !2373, file: !188, line: 657, type: !41)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !188, line: 656, column: 27)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !188, line: 654, column: 29)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !188, line: 649, column: 23)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !188, line: 641, column: 30)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !188, line: 636, column: 30)
!2378 = distinct !DILexicalBlock(scope: !2369, file: !188, line: 634, column: 25)
!2379 = !DILocalVariable(name: "ilim", scope: !2380, file: !188, line: 684, type: !41)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !188, line: 681, column: 15)
!2381 = distinct !DILexicalBlock(scope: !2347, file: !188, line: 680, column: 17)
!2382 = !DILabel(scope: !2312, name: "process_input", file: !188, line: 314)
!2383 = !DILabel(scope: !2348, name: "c_and_shell_escape", file: !188, line: 512)
!2384 = !DILabel(scope: !2348, name: "c_escape", file: !188, line: 517)
!2385 = !DILabel(scope: !2339, name: "store_escape", file: !188, line: 719)
!2386 = !DILabel(scope: !2339, name: "store_c", file: !188, line: 722)
!2387 = !DILabel(scope: !2312, name: "force_outer_quoting_style", file: !188, line: 763)
!2388 = !DILocation(line: 0, scope: !2312)
!2389 = !DILocation(line: 269, column: 25, scope: !2312)
!2390 = !DILocation(line: 269, column: 36, scope: !2312)
!2391 = !DILocation(line: 270, column: 8, scope: !2312)
!2392 = !DILocation(line: 273, column: 3, scope: !2312)
!2393 = !DILocation(line: 265, column: 10, scope: !2312)
!2394 = !DILocation(line: 266, column: 15, scope: !2312)
!2395 = !DILocation(line: 267, column: 10, scope: !2312)
!2396 = !DILocation(line: 268, column: 8, scope: !2312)
!2397 = !DILocation(line: 271, column: 8, scope: !2312)
!2398 = !DILocation(line: 272, column: 8, scope: !2312)
!2399 = !DILocation(line: 273, column: 8, scope: !2312)
!2400 = !DILocation(line: 314, column: 2, scope: !2312)
!2401 = !DILocation(line: 316, column: 3, scope: !2312)
!2402 = !DILocation(line: 323, column: 11, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2312, file: !188, line: 317, column: 5)
!2404 = !DILocation(line: 323, column: 12, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2403, file: !188, line: 323, column: 11)
!2406 = !DILocation(line: 324, column: 9, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !188, line: 324, column: 9)
!2408 = distinct !DILexicalBlock(scope: !2405, file: !188, line: 324, column: 9)
!2409 = !DILocation(line: 324, column: 9, scope: !2408)
!2410 = !DILocation(line: 362, column: 26, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !188, line: 340, column: 11)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !188, line: 339, column: 13)
!2413 = distinct !DILexicalBlock(scope: !2403, file: !188, line: 338, column: 7)
!2414 = !DILocation(line: 363, column: 27, scope: !2411)
!2415 = !DILocation(line: 364, column: 11, scope: !2411)
!2416 = !DILocation(line: 365, column: 14, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !188, line: 365, column: 13)
!2418 = !DILocation(line: 365, column: 13, scope: !2413)
!2419 = !DILocation(line: 366, column: 43, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !188, line: 366, column: 11)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !188, line: 366, column: 11)
!2422 = !DILocation(line: 366, column: 11, scope: !2421)
!2423 = !DILocation(line: 367, column: 13, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !188, line: 367, column: 13)
!2425 = distinct !DILexicalBlock(scope: !2420, file: !188, line: 367, column: 13)
!2426 = !DILocation(line: 367, column: 13, scope: !2425)
!2427 = !DILocation(line: 366, column: 70, scope: !2420)
!2428 = distinct !{!2428, !2422, !2429, !760}
!2429 = !DILocation(line: 367, column: 13, scope: !2421)
!2430 = !DILocation(line: 264, column: 10, scope: !2312)
!2431 = !DILocation(line: 370, column: 28, scope: !2413)
!2432 = !DILocation(line: 372, column: 7, scope: !2403)
!2433 = !DILocation(line: 376, column: 7, scope: !2403)
!2434 = !DILocation(line: 379, column: 7, scope: !2403)
!2435 = !DILocation(line: 381, column: 12, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2403, file: !188, line: 381, column: 11)
!2437 = !DILocation(line: 381, column: 11, scope: !2403)
!2438 = !DILocation(line: 386, column: 12, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2403, file: !188, line: 386, column: 11)
!2440 = !DILocation(line: 386, column: 11, scope: !2403)
!2441 = !DILocation(line: 387, column: 9, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !188, line: 387, column: 9)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !188, line: 387, column: 9)
!2444 = !DILocation(line: 387, column: 9, scope: !2443)
!2445 = !DILocation(line: 394, column: 7, scope: !2403)
!2446 = !DILocation(line: 397, column: 7, scope: !2403)
!2447 = !DILocation(line: 400, column: 8, scope: !2341)
!2448 = !DILocation(line: 0, scope: !2341)
!2449 = !DILocation(line: 400, column: 27, scope: !2340)
!2450 = !DILocation(line: 400, column: 19, scope: !2340)
!2451 = !DILocation(line: 400, column: 41, scope: !2340)
!2452 = !DILocation(line: 400, column: 48, scope: !2340)
!2453 = !DILocation(line: 400, column: 3, scope: !2341)
!2454 = !DILocation(line: 400, column: 60, scope: !2340)
!2455 = !DILocation(line: 0, scope: !2339)
!2456 = !DILocation(line: 409, column: 11, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2339, file: !188, line: 408, column: 11)
!2458 = !DILocation(line: 411, column: 17, scope: !2457)
!2459 = !DILocation(line: 412, column: 39, scope: !2457)
!2460 = !DILocation(line: 416, column: 32, scope: !2457)
!2461 = !DILocation(line: 412, column: 19, scope: !2457)
!2462 = !DILocation(line: 412, column: 15, scope: !2457)
!2463 = !DILocation(line: 417, column: 11, scope: !2457)
!2464 = !DILocation(line: 417, column: 26, scope: !2457)
!2465 = !DILocation(line: 417, column: 14, scope: !2457)
!2466 = !DILocation(line: 417, column: 63, scope: !2457)
!2467 = !DILocation(line: 408, column: 11, scope: !2339)
!2468 = !DILocation(line: 424, column: 11, scope: !2339)
!2469 = !DILocation(line: 425, column: 7, scope: !2339)
!2470 = !DILocation(line: 428, column: 15, scope: !2348)
!2471 = !DILocation(line: 430, column: 15, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !188, line: 430, column: 15)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !188, line: 429, column: 13)
!2474 = distinct !DILexicalBlock(scope: !2348, file: !188, line: 428, column: 15)
!2475 = !DILocation(line: 430, column: 15, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2472, file: !188, line: 430, column: 15)
!2477 = !DILocation(line: 430, column: 15, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !188, line: 430, column: 15)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !188, line: 430, column: 15)
!2480 = distinct !DILexicalBlock(scope: !2476, file: !188, line: 430, column: 15)
!2481 = !DILocation(line: 430, column: 15, scope: !2479)
!2482 = !DILocation(line: 430, column: 15, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !188, line: 430, column: 15)
!2484 = distinct !DILexicalBlock(scope: !2480, file: !188, line: 430, column: 15)
!2485 = !DILocation(line: 430, column: 15, scope: !2484)
!2486 = !DILocation(line: 430, column: 15, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !188, line: 430, column: 15)
!2488 = distinct !DILexicalBlock(scope: !2480, file: !188, line: 430, column: 15)
!2489 = !DILocation(line: 430, column: 15, scope: !2488)
!2490 = !DILocation(line: 430, column: 15, scope: !2480)
!2491 = !DILocation(line: 430, column: 15, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !188, line: 430, column: 15)
!2493 = distinct !DILexicalBlock(scope: !2472, file: !188, line: 430, column: 15)
!2494 = !DILocation(line: 430, column: 15, scope: !2493)
!2495 = !DILocation(line: 438, column: 19, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2473, file: !188, line: 437, column: 19)
!2497 = !DILocation(line: 438, column: 48, scope: !2496)
!2498 = !DILocation(line: 438, column: 59, scope: !2496)
!2499 = !DILocation(line: 440, column: 19, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !188, line: 440, column: 19)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !188, line: 440, column: 19)
!2502 = distinct !DILexicalBlock(scope: !2496, file: !188, line: 439, column: 17)
!2503 = !DILocation(line: 440, column: 19, scope: !2501)
!2504 = !DILocation(line: 441, column: 19, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !188, line: 441, column: 19)
!2506 = distinct !DILexicalBlock(scope: !2502, file: !188, line: 441, column: 19)
!2507 = !DILocation(line: 441, column: 19, scope: !2506)
!2508 = !DILocation(line: 442, column: 17, scope: !2502)
!2509 = !DILocation(line: 449, column: 20, scope: !2474)
!2510 = !DILocation(line: 454, column: 11, scope: !2348)
!2511 = !DILocation(line: 457, column: 19, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2348, file: !188, line: 455, column: 13)
!2513 = !DILocation(line: 463, column: 19, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2512, file: !188, line: 462, column: 19)
!2515 = !DILocation(line: 463, column: 47, scope: !2514)
!2516 = !DILocation(line: 463, column: 41, scope: !2514)
!2517 = !DILocation(line: 463, column: 52, scope: !2514)
!2518 = !DILocation(line: 462, column: 19, scope: !2512)
!2519 = !DILocation(line: 464, column: 25, scope: !2514)
!2520 = !DILocation(line: 464, column: 17, scope: !2514)
!2521 = !DILocation(line: 471, column: 25, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2514, file: !188, line: 465, column: 19)
!2523 = !DILocation(line: 475, column: 21, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !188, line: 475, column: 21)
!2525 = distinct !DILexicalBlock(scope: !2522, file: !188, line: 475, column: 21)
!2526 = !DILocation(line: 475, column: 21, scope: !2525)
!2527 = !DILocation(line: 476, column: 21, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !188, line: 476, column: 21)
!2529 = distinct !DILexicalBlock(scope: !2522, file: !188, line: 476, column: 21)
!2530 = !DILocation(line: 476, column: 21, scope: !2529)
!2531 = !DILocation(line: 477, column: 21, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !188, line: 477, column: 21)
!2533 = distinct !DILexicalBlock(scope: !2522, file: !188, line: 477, column: 21)
!2534 = !DILocation(line: 477, column: 21, scope: !2533)
!2535 = !DILocation(line: 478, column: 21, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !188, line: 478, column: 21)
!2537 = distinct !DILexicalBlock(scope: !2522, file: !188, line: 478, column: 21)
!2538 = !DILocation(line: 478, column: 21, scope: !2537)
!2539 = !DILocation(line: 479, column: 21, scope: !2522)
!2540 = !DILocation(line: 492, column: 31, scope: !2348)
!2541 = !DILocation(line: 493, column: 31, scope: !2348)
!2542 = !DILocation(line: 495, column: 31, scope: !2348)
!2543 = !DILocation(line: 496, column: 31, scope: !2348)
!2544 = !DILocation(line: 497, column: 31, scope: !2348)
!2545 = !DILocation(line: 500, column: 15, scope: !2348)
!2546 = !DILocation(line: 502, column: 19, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !188, line: 501, column: 13)
!2548 = distinct !DILexicalBlock(scope: !2348, file: !188, line: 500, column: 15)
!2549 = !DILocation(line: 509, column: 33, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2348, file: !188, line: 509, column: 15)
!2551 = !DILocation(line: 0, scope: !2348)
!2552 = !DILocation(line: 512, column: 9, scope: !2348)
!2553 = !DILocation(line: 514, column: 15, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2348, file: !188, line: 513, column: 15)
!2555 = !DILocation(line: 517, column: 9, scope: !2348)
!2556 = !DILocation(line: 518, column: 15, scope: !2348)
!2557 = !DILocation(line: 526, column: 15, scope: !2348)
!2558 = !DILocation(line: 526, column: 40, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2348, file: !188, line: 526, column: 15)
!2560 = !DILocation(line: 526, column: 47, scope: !2559)
!2561 = !DILocation(line: 526, column: 18, scope: !2559)
!2562 = !DILocation(line: 530, column: 17, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2348, file: !188, line: 530, column: 15)
!2564 = !DILocation(line: 530, column: 15, scope: !2348)
!2565 = !DILocation(line: 535, column: 11, scope: !2348)
!2566 = !DILocation(line: 549, column: 15, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2348, file: !188, line: 548, column: 15)
!2568 = !DILocation(line: 556, column: 15, scope: !2348)
!2569 = !DILocation(line: 558, column: 19, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !188, line: 557, column: 13)
!2571 = distinct !DILexicalBlock(scope: !2348, file: !188, line: 556, column: 15)
!2572 = !DILocation(line: 561, column: 19, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2570, file: !188, line: 561, column: 19)
!2574 = !DILocation(line: 561, column: 30, scope: !2573)
!2575 = !DILocation(line: 570, column: 15, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !188, line: 570, column: 15)
!2577 = distinct !DILexicalBlock(scope: !2570, file: !188, line: 570, column: 15)
!2578 = !DILocation(line: 570, column: 15, scope: !2577)
!2579 = !DILocation(line: 571, column: 15, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !188, line: 571, column: 15)
!2581 = distinct !DILexicalBlock(scope: !2570, file: !188, line: 571, column: 15)
!2582 = !DILocation(line: 571, column: 15, scope: !2581)
!2583 = !DILocation(line: 572, column: 15, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !188, line: 572, column: 15)
!2585 = distinct !DILexicalBlock(scope: !2570, file: !188, line: 572, column: 15)
!2586 = !DILocation(line: 572, column: 15, scope: !2585)
!2587 = !DILocation(line: 574, column: 13, scope: !2570)
!2588 = !DILocation(line: 614, column: 17, scope: !2347)
!2589 = !DILocation(line: 0, scope: !2347)
!2590 = !DILocation(line: 617, column: 29, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2352, file: !188, line: 615, column: 15)
!2592 = !DILocation(line: 617, column: 27, scope: !2591)
!2593 = !DILocation(line: 678, column: 40, scope: !2347)
!2594 = !DILocation(line: 680, column: 23, scope: !2381)
!2595 = !DILocation(line: 621, column: 17, scope: !2351)
!2596 = !DILocation(line: 621, column: 27, scope: !2351)
!2597 = !DILocalVariable(name: "__dest", arg: 1, scope: !2598, file: !1194, line: 57, type: !39)
!2598 = distinct !DISubprogram(name: "memset", scope: !1194, file: !1194, line: 57, type: !2599, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!39, !39, !69, !41}
!2601 = !{!2597, !2602, !2603}
!2602 = !DILocalVariable(name: "__ch", arg: 2, scope: !2598, file: !1194, line: 57, type: !69)
!2603 = !DILocalVariable(name: "__len", arg: 3, scope: !2598, file: !1194, line: 57, type: !41)
!2604 = !DILocation(line: 0, scope: !2598, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 622, column: 17, scope: !2351)
!2606 = !DILocation(line: 59, column: 10, scope: !2598, inlinedAt: !2605)
!2607 = !DILocation(line: 626, column: 29, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2351, file: !188, line: 626, column: 21)
!2609 = !DILocation(line: 626, column: 21, scope: !2351)
!2610 = !DILocation(line: 627, column: 29, scope: !2608)
!2611 = !DILocation(line: 627, column: 19, scope: !2608)
!2612 = !DILocation(line: 629, column: 17, scope: !2351)
!2613 = !DILocation(line: 624, column: 19, scope: !2351)
!2614 = !DILocation(line: 625, column: 27, scope: !2351)
!2615 = !DILocation(line: 631, column: 21, scope: !2369)
!2616 = !DILocation(line: 632, column: 56, scope: !2369)
!2617 = !DILocation(line: 632, column: 50, scope: !2369)
!2618 = !DILocation(line: 633, column: 53, scope: !2369)
!2619 = !DILocation(line: 0, scope: !2369)
!2620 = !DILocation(line: 632, column: 36, scope: !2369)
!2621 = !DILocation(line: 634, column: 25, scope: !2369)
!2622 = !DILocation(line: 644, column: 38, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2376, file: !188, line: 642, column: 23)
!2624 = !DILocation(line: 644, column: 48, scope: !2623)
!2625 = !DILocation(line: 644, column: 25, scope: !2623)
!2626 = !DILocation(line: 644, column: 51, scope: !2623)
!2627 = !DILocation(line: 645, column: 28, scope: !2623)
!2628 = !DILocation(line: 644, column: 34, scope: !2623)
!2629 = distinct !{!2629, !2625, !2627, !760}
!2630 = !DILocation(line: 655, column: 29, scope: !2374)
!2631 = !DILocation(line: 0, scope: !2373)
!2632 = !DILocation(line: 659, column: 49, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !188, line: 658, column: 29)
!2634 = distinct !DILexicalBlock(scope: !2373, file: !188, line: 658, column: 29)
!2635 = !DILocation(line: 659, column: 39, scope: !2633)
!2636 = !DILocation(line: 659, column: 31, scope: !2633)
!2637 = !DILocation(line: 658, column: 53, scope: !2633)
!2638 = !DILocation(line: 658, column: 43, scope: !2633)
!2639 = !DILocation(line: 658, column: 29, scope: !2634)
!2640 = distinct !{!2640, !2639, !2641, !760}
!2641 = !DILocation(line: 667, column: 33, scope: !2634)
!2642 = !DILocation(line: 674, column: 19, scope: !2351)
!2643 = !DILocation(line: 670, column: 41, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2375, file: !188, line: 670, column: 29)
!2645 = !DILocation(line: 670, column: 31, scope: !2644)
!2646 = !DILocation(line: 670, column: 29, scope: !2375)
!2647 = !DILocation(line: 672, column: 27, scope: !2375)
!2648 = !DILocation(line: 675, column: 26, scope: !2351)
!2649 = !DILocation(line: 675, column: 24, scope: !2351)
!2650 = !DILocation(line: 674, column: 19, scope: !2369)
!2651 = distinct !{!2651, !2612, !2652, !760}
!2652 = !DILocation(line: 675, column: 44, scope: !2351)
!2653 = !DILocation(line: 676, column: 15, scope: !2352)
!2654 = !DILocation(line: 680, column: 19, scope: !2381)
!2655 = !DILocation(line: 680, column: 45, scope: !2381)
!2656 = !DILocation(line: 684, column: 33, scope: !2380)
!2657 = !DILocation(line: 0, scope: !2380)
!2658 = !DILocation(line: 686, column: 17, scope: !2380)
!2659 = !DILocation(line: 405, column: 12, scope: !2339)
!2660 = !DILocation(line: 688, column: 43, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !188, line: 688, column: 25)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !188, line: 687, column: 19)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !188, line: 686, column: 17)
!2664 = distinct !DILexicalBlock(scope: !2380, file: !188, line: 686, column: 17)
!2665 = !DILocation(line: 690, column: 25, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !188, line: 690, column: 25)
!2667 = distinct !DILexicalBlock(scope: !2661, file: !188, line: 689, column: 23)
!2668 = !DILocation(line: 690, column: 25, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2666, file: !188, line: 690, column: 25)
!2670 = !DILocation(line: 690, column: 25, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !188, line: 690, column: 25)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !188, line: 690, column: 25)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !188, line: 690, column: 25)
!2674 = !DILocation(line: 690, column: 25, scope: !2672)
!2675 = !DILocation(line: 690, column: 25, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !188, line: 690, column: 25)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !188, line: 690, column: 25)
!2678 = !DILocation(line: 690, column: 25, scope: !2677)
!2679 = !DILocation(line: 690, column: 25, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !188, line: 690, column: 25)
!2681 = distinct !DILexicalBlock(scope: !2673, file: !188, line: 690, column: 25)
!2682 = !DILocation(line: 690, column: 25, scope: !2681)
!2683 = !DILocation(line: 690, column: 25, scope: !2673)
!2684 = !DILocation(line: 690, column: 25, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !188, line: 690, column: 25)
!2686 = distinct !DILexicalBlock(scope: !2666, file: !188, line: 690, column: 25)
!2687 = !DILocation(line: 690, column: 25, scope: !2686)
!2688 = !DILocation(line: 691, column: 25, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !188, line: 691, column: 25)
!2690 = distinct !DILexicalBlock(scope: !2667, file: !188, line: 691, column: 25)
!2691 = !DILocation(line: 691, column: 25, scope: !2690)
!2692 = !DILocation(line: 692, column: 25, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !188, line: 692, column: 25)
!2694 = distinct !DILexicalBlock(scope: !2667, file: !188, line: 692, column: 25)
!2695 = !DILocation(line: 692, column: 25, scope: !2694)
!2696 = !DILocation(line: 693, column: 38, scope: !2667)
!2697 = !DILocation(line: 693, column: 33, scope: !2667)
!2698 = !DILocation(line: 694, column: 23, scope: !2667)
!2699 = !DILocation(line: 695, column: 30, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2661, file: !188, line: 695, column: 30)
!2701 = !DILocation(line: 695, column: 30, scope: !2661)
!2702 = !DILocation(line: 697, column: 25, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !188, line: 697, column: 25)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !188, line: 697, column: 25)
!2705 = distinct !DILexicalBlock(scope: !2700, file: !188, line: 696, column: 23)
!2706 = !DILocation(line: 697, column: 25, scope: !2704)
!2707 = !DILocation(line: 699, column: 23, scope: !2705)
!2708 = !DILocation(line: 700, column: 35, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2662, file: !188, line: 700, column: 25)
!2710 = !DILocation(line: 700, column: 30, scope: !2709)
!2711 = !DILocation(line: 700, column: 25, scope: !2662)
!2712 = !DILocation(line: 702, column: 21, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !188, line: 702, column: 21)
!2714 = distinct !DILexicalBlock(scope: !2662, file: !188, line: 702, column: 21)
!2715 = !DILocation(line: 702, column: 21, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !188, line: 702, column: 21)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !188, line: 702, column: 21)
!2718 = distinct !DILexicalBlock(scope: !2713, file: !188, line: 702, column: 21)
!2719 = !DILocation(line: 702, column: 21, scope: !2717)
!2720 = !DILocation(line: 702, column: 21, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !188, line: 702, column: 21)
!2722 = distinct !DILexicalBlock(scope: !2718, file: !188, line: 702, column: 21)
!2723 = !DILocation(line: 702, column: 21, scope: !2722)
!2724 = !DILocation(line: 702, column: 21, scope: !2718)
!2725 = !DILocation(line: 0, scope: !2662)
!2726 = !DILocation(line: 703, column: 21, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !188, line: 703, column: 21)
!2728 = distinct !DILexicalBlock(scope: !2662, file: !188, line: 703, column: 21)
!2729 = !DILocation(line: 703, column: 21, scope: !2728)
!2730 = !DILocation(line: 704, column: 25, scope: !2662)
!2731 = !DILocation(line: 686, column: 17, scope: !2663)
!2732 = distinct !{!2732, !2733, !2734}
!2733 = !DILocation(line: 686, column: 17, scope: !2664)
!2734 = !DILocation(line: 705, column: 19, scope: !2664)
!2735 = !DILocation(line: 416, column: 30, scope: !2457)
!2736 = !DILocation(line: 712, column: 34, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2339, file: !188, line: 712, column: 11)
!2738 = !DILocation(line: 715, column: 35, scope: !2737)
!2739 = !DILocation(line: 715, column: 17, scope: !2737)
!2740 = !DILocation(line: 715, column: 47, scope: !2737)
!2741 = !DILocation(line: 715, column: 65, scope: !2737)
!2742 = !DILocation(line: 716, column: 11, scope: !2737)
!2743 = !DILocation(line: 712, column: 11, scope: !2339)
!2744 = !DILocation(line: 400, column: 10, scope: !2341)
!2745 = !DILocation(line: 719, column: 5, scope: !2339)
!2746 = !DILocation(line: 720, column: 7, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2339, file: !188, line: 720, column: 7)
!2748 = !DILocation(line: 720, column: 7, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2747, file: !188, line: 720, column: 7)
!2750 = !DILocation(line: 720, column: 7, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !188, line: 720, column: 7)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !188, line: 720, column: 7)
!2753 = distinct !DILexicalBlock(scope: !2749, file: !188, line: 720, column: 7)
!2754 = !DILocation(line: 720, column: 7, scope: !2752)
!2755 = !DILocation(line: 720, column: 7, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !188, line: 720, column: 7)
!2757 = distinct !DILexicalBlock(scope: !2753, file: !188, line: 720, column: 7)
!2758 = !DILocation(line: 720, column: 7, scope: !2757)
!2759 = !DILocation(line: 720, column: 7, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !188, line: 720, column: 7)
!2761 = distinct !DILexicalBlock(scope: !2753, file: !188, line: 720, column: 7)
!2762 = !DILocation(line: 720, column: 7, scope: !2761)
!2763 = !DILocation(line: 720, column: 7, scope: !2753)
!2764 = !DILocation(line: 720, column: 7, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !188, line: 720, column: 7)
!2766 = distinct !DILexicalBlock(scope: !2747, file: !188, line: 720, column: 7)
!2767 = !DILocation(line: 720, column: 7, scope: !2766)
!2768 = !DILocation(line: 722, column: 5, scope: !2339)
!2769 = !DILocation(line: 723, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !188, line: 723, column: 7)
!2771 = distinct !DILexicalBlock(scope: !2339, file: !188, line: 723, column: 7)
!2772 = !DILocation(line: 424, column: 9, scope: !2339)
!2773 = !DILocation(line: 723, column: 7, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !188, line: 723, column: 7)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !188, line: 723, column: 7)
!2776 = distinct !DILexicalBlock(scope: !2770, file: !188, line: 723, column: 7)
!2777 = !DILocation(line: 723, column: 7, scope: !2775)
!2778 = !DILocation(line: 723, column: 7, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !188, line: 723, column: 7)
!2780 = distinct !DILexicalBlock(scope: !2776, file: !188, line: 723, column: 7)
!2781 = !DILocation(line: 723, column: 7, scope: !2780)
!2782 = !DILocation(line: 723, column: 7, scope: !2776)
!2783 = !DILocation(line: 724, column: 7, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !188, line: 724, column: 7)
!2785 = distinct !DILexicalBlock(scope: !2339, file: !188, line: 724, column: 7)
!2786 = !DILocation(line: 724, column: 7, scope: !2785)
!2787 = !DILocation(line: 726, column: 13, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2339, file: !188, line: 726, column: 11)
!2789 = !DILocation(line: 726, column: 11, scope: !2339)
!2790 = !DILocation(line: 728, column: 5, scope: !2340)
!2791 = !DILocation(line: 400, column: 75, scope: !2340)
!2792 = !DILocation(line: 400, column: 3, scope: !2340)
!2793 = distinct !{!2793, !2453, !2794, !760}
!2794 = !DILocation(line: 728, column: 5, scope: !2341)
!2795 = !DILocation(line: 730, column: 11, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2312, file: !188, line: 730, column: 7)
!2797 = !DILocation(line: 730, column: 16, scope: !2796)
!2798 = !DILocation(line: 738, column: 51, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2312, file: !188, line: 738, column: 7)
!2800 = !DILocation(line: 741, column: 11, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !188, line: 741, column: 11)
!2802 = distinct !DILexicalBlock(scope: !2799, file: !188, line: 740, column: 5)
!2803 = !DILocation(line: 741, column: 11, scope: !2802)
!2804 = !DILocation(line: 742, column: 16, scope: !2801)
!2805 = !DILocation(line: 742, column: 9, scope: !2801)
!2806 = !DILocation(line: 746, column: 18, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2801, file: !188, line: 746, column: 16)
!2808 = !DILocation(line: 746, column: 29, scope: !2807)
!2809 = !DILocation(line: 755, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2312, file: !188, line: 755, column: 7)
!2811 = !DILocation(line: 755, column: 20, scope: !2810)
!2812 = !DILocation(line: 756, column: 12, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !188, line: 756, column: 5)
!2814 = distinct !DILexicalBlock(scope: !2810, file: !188, line: 756, column: 5)
!2815 = !DILocation(line: 756, column: 5, scope: !2814)
!2816 = !DILocation(line: 757, column: 7, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !188, line: 757, column: 7)
!2818 = distinct !DILexicalBlock(scope: !2813, file: !188, line: 757, column: 7)
!2819 = !DILocation(line: 757, column: 7, scope: !2818)
!2820 = !DILocation(line: 756, column: 39, scope: !2813)
!2821 = distinct !{!2821, !2815, !2822, !760}
!2822 = !DILocation(line: 757, column: 7, scope: !2814)
!2823 = !DILocation(line: 759, column: 11, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2312, file: !188, line: 759, column: 7)
!2825 = !DILocation(line: 759, column: 7, scope: !2312)
!2826 = !DILocation(line: 760, column: 5, scope: !2824)
!2827 = !DILocation(line: 760, column: 17, scope: !2824)
!2828 = !DILocation(line: 763, column: 2, scope: !2312)
!2829 = !DILocation(line: 766, column: 51, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2312, file: !188, line: 766, column: 7)
!2831 = !DILocation(line: 766, column: 21, scope: !2830)
!2832 = !DILocation(line: 770, column: 42, scope: !2312)
!2833 = !DILocation(line: 768, column: 10, scope: !2312)
!2834 = !DILocation(line: 768, column: 3, scope: !2312)
!2835 = !DILocation(line: 772, column: 1, scope: !2312)
!2836 = distinct !DISubprogram(name: "gettext_quote", scope: !188, file: !188, line: 207, type: !2837, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!91, !91, !13}
!2839 = !{!2840, !2841, !2842, !2843}
!2840 = !DILocalVariable(name: "msgid", arg: 1, scope: !2836, file: !188, line: 207, type: !91)
!2841 = !DILocalVariable(name: "s", arg: 2, scope: !2836, file: !188, line: 207, type: !13)
!2842 = !DILocalVariable(name: "translation", scope: !2836, file: !188, line: 209, type: !91)
!2843 = !DILocalVariable(name: "locale_code", scope: !2836, file: !188, line: 210, type: !91)
!2844 = !DILocation(line: 0, scope: !2836)
!2845 = !DILocation(line: 209, column: 29, scope: !2836)
!2846 = !DILocation(line: 212, column: 19, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2836, file: !188, line: 212, column: 7)
!2848 = !DILocation(line: 212, column: 7, scope: !2836)
!2849 = !DILocation(line: 233, column: 17, scope: !2836)
!2850 = !DILocalVariable(name: "s1", arg: 1, scope: !2851, file: !2852, line: 160, type: !91)
!2851 = distinct !DISubprogram(name: "strcaseeq0", scope: !2852, file: !2852, line: 160, type: !2853, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2855)
!2852 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!69, !91, !91, !68, !68, !68, !68, !68, !68, !68, !68, !68}
!2855 = !{!2850, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865}
!2856 = !DILocalVariable(name: "s2", arg: 2, scope: !2851, file: !2852, line: 160, type: !91)
!2857 = !DILocalVariable(name: "s20", arg: 3, scope: !2851, file: !2852, line: 160, type: !68)
!2858 = !DILocalVariable(name: "s21", arg: 4, scope: !2851, file: !2852, line: 160, type: !68)
!2859 = !DILocalVariable(name: "s22", arg: 5, scope: !2851, file: !2852, line: 160, type: !68)
!2860 = !DILocalVariable(name: "s23", arg: 6, scope: !2851, file: !2852, line: 160, type: !68)
!2861 = !DILocalVariable(name: "s24", arg: 7, scope: !2851, file: !2852, line: 160, type: !68)
!2862 = !DILocalVariable(name: "s25", arg: 8, scope: !2851, file: !2852, line: 160, type: !68)
!2863 = !DILocalVariable(name: "s26", arg: 9, scope: !2851, file: !2852, line: 160, type: !68)
!2864 = !DILocalVariable(name: "s27", arg: 10, scope: !2851, file: !2852, line: 160, type: !68)
!2865 = !DILocalVariable(name: "s28", arg: 11, scope: !2851, file: !2852, line: 160, type: !68)
!2866 = !DILocation(line: 0, scope: !2851, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 234, column: 7, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2836, file: !188, line: 234, column: 7)
!2869 = !DILocation(line: 162, column: 7, scope: !2870, inlinedAt: !2867)
!2870 = distinct !DILexicalBlock(scope: !2851, file: !2852, line: 162, column: 7)
!2871 = !DILocalVariable(name: "s1", arg: 1, scope: !2872, file: !2852, line: 146, type: !91)
!2872 = distinct !DISubprogram(name: "strcaseeq1", scope: !2852, file: !2852, line: 146, type: !2873, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!69, !91, !91, !68, !68, !68, !68, !68, !68, !68, !68}
!2875 = !{!2871, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884}
!2876 = !DILocalVariable(name: "s2", arg: 2, scope: !2872, file: !2852, line: 146, type: !91)
!2877 = !DILocalVariable(name: "s21", arg: 3, scope: !2872, file: !2852, line: 146, type: !68)
!2878 = !DILocalVariable(name: "s22", arg: 4, scope: !2872, file: !2852, line: 146, type: !68)
!2879 = !DILocalVariable(name: "s23", arg: 5, scope: !2872, file: !2852, line: 146, type: !68)
!2880 = !DILocalVariable(name: "s24", arg: 6, scope: !2872, file: !2852, line: 146, type: !68)
!2881 = !DILocalVariable(name: "s25", arg: 7, scope: !2872, file: !2852, line: 146, type: !68)
!2882 = !DILocalVariable(name: "s26", arg: 8, scope: !2872, file: !2852, line: 146, type: !68)
!2883 = !DILocalVariable(name: "s27", arg: 9, scope: !2872, file: !2852, line: 146, type: !68)
!2884 = !DILocalVariable(name: "s28", arg: 10, scope: !2872, file: !2852, line: 146, type: !68)
!2885 = !DILocation(line: 0, scope: !2872, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 167, column: 16, scope: !2887, inlinedAt: !2867)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !2852, line: 164, column: 11)
!2888 = distinct !DILexicalBlock(scope: !2870, file: !2852, line: 163, column: 5)
!2889 = !DILocation(line: 148, column: 7, scope: !2890, inlinedAt: !2886)
!2890 = distinct !DILexicalBlock(scope: !2872, file: !2852, line: 148, column: 7)
!2891 = !DILocalVariable(name: "s1", arg: 1, scope: !2892, file: !2852, line: 132, type: !91)
!2892 = distinct !DISubprogram(name: "strcaseeq2", scope: !2852, file: !2852, line: 132, type: !2893, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!69, !91, !91, !68, !68, !68, !68, !68, !68, !68}
!2895 = !{!2891, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903}
!2896 = !DILocalVariable(name: "s2", arg: 2, scope: !2892, file: !2852, line: 132, type: !91)
!2897 = !DILocalVariable(name: "s22", arg: 3, scope: !2892, file: !2852, line: 132, type: !68)
!2898 = !DILocalVariable(name: "s23", arg: 4, scope: !2892, file: !2852, line: 132, type: !68)
!2899 = !DILocalVariable(name: "s24", arg: 5, scope: !2892, file: !2852, line: 132, type: !68)
!2900 = !DILocalVariable(name: "s25", arg: 6, scope: !2892, file: !2852, line: 132, type: !68)
!2901 = !DILocalVariable(name: "s26", arg: 7, scope: !2892, file: !2852, line: 132, type: !68)
!2902 = !DILocalVariable(name: "s27", arg: 8, scope: !2892, file: !2852, line: 132, type: !68)
!2903 = !DILocalVariable(name: "s28", arg: 9, scope: !2892, file: !2852, line: 132, type: !68)
!2904 = !DILocation(line: 0, scope: !2892, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 153, column: 16, scope: !2906, inlinedAt: !2886)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !2852, line: 150, column: 11)
!2907 = distinct !DILexicalBlock(scope: !2890, file: !2852, line: 149, column: 5)
!2908 = !DILocation(line: 134, column: 7, scope: !2909, inlinedAt: !2905)
!2909 = distinct !DILexicalBlock(scope: !2892, file: !2852, line: 134, column: 7)
!2910 = !DILocalVariable(name: "s1", arg: 1, scope: !2911, file: !2852, line: 118, type: !91)
!2911 = distinct !DISubprogram(name: "strcaseeq3", scope: !2852, file: !2852, line: 118, type: !2912, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!69, !91, !91, !68, !68, !68, !68, !68, !68}
!2914 = !{!2910, !2915, !2916, !2917, !2918, !2919, !2920, !2921}
!2915 = !DILocalVariable(name: "s2", arg: 2, scope: !2911, file: !2852, line: 118, type: !91)
!2916 = !DILocalVariable(name: "s23", arg: 3, scope: !2911, file: !2852, line: 118, type: !68)
!2917 = !DILocalVariable(name: "s24", arg: 4, scope: !2911, file: !2852, line: 118, type: !68)
!2918 = !DILocalVariable(name: "s25", arg: 5, scope: !2911, file: !2852, line: 118, type: !68)
!2919 = !DILocalVariable(name: "s26", arg: 6, scope: !2911, file: !2852, line: 118, type: !68)
!2920 = !DILocalVariable(name: "s27", arg: 7, scope: !2911, file: !2852, line: 118, type: !68)
!2921 = !DILocalVariable(name: "s28", arg: 8, scope: !2911, file: !2852, line: 118, type: !68)
!2922 = !DILocation(line: 0, scope: !2911, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 139, column: 16, scope: !2924, inlinedAt: !2905)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !2852, line: 136, column: 11)
!2925 = distinct !DILexicalBlock(scope: !2909, file: !2852, line: 135, column: 5)
!2926 = !DILocation(line: 120, column: 7, scope: !2927, inlinedAt: !2923)
!2927 = distinct !DILexicalBlock(scope: !2911, file: !2852, line: 120, column: 7)
!2928 = !DILocation(line: 120, column: 7, scope: !2911, inlinedAt: !2923)
!2929 = !DILocalVariable(name: "s1", arg: 1, scope: !2930, file: !2852, line: 104, type: !91)
!2930 = distinct !DISubprogram(name: "strcaseeq4", scope: !2852, file: !2852, line: 104, type: !2931, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!69, !91, !91, !68, !68, !68, !68, !68}
!2933 = !{!2929, !2934, !2935, !2936, !2937, !2938, !2939}
!2934 = !DILocalVariable(name: "s2", arg: 2, scope: !2930, file: !2852, line: 104, type: !91)
!2935 = !DILocalVariable(name: "s24", arg: 3, scope: !2930, file: !2852, line: 104, type: !68)
!2936 = !DILocalVariable(name: "s25", arg: 4, scope: !2930, file: !2852, line: 104, type: !68)
!2937 = !DILocalVariable(name: "s26", arg: 5, scope: !2930, file: !2852, line: 104, type: !68)
!2938 = !DILocalVariable(name: "s27", arg: 6, scope: !2930, file: !2852, line: 104, type: !68)
!2939 = !DILocalVariable(name: "s28", arg: 7, scope: !2930, file: !2852, line: 104, type: !68)
!2940 = !DILocation(line: 0, scope: !2930, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 125, column: 16, scope: !2942, inlinedAt: !2923)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !2852, line: 122, column: 11)
!2943 = distinct !DILexicalBlock(scope: !2927, file: !2852, line: 121, column: 5)
!2944 = !DILocation(line: 106, column: 7, scope: !2945, inlinedAt: !2941)
!2945 = distinct !DILexicalBlock(scope: !2930, file: !2852, line: 106, column: 7)
!2946 = !DILocation(line: 106, column: 7, scope: !2930, inlinedAt: !2941)
!2947 = !DILocalVariable(name: "s1", arg: 1, scope: !2948, file: !2852, line: 90, type: !91)
!2948 = distinct !DISubprogram(name: "strcaseeq5", scope: !2852, file: !2852, line: 90, type: !2949, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!69, !91, !91, !68, !68, !68, !68}
!2951 = !{!2947, !2952, !2953, !2954, !2955, !2956}
!2952 = !DILocalVariable(name: "s2", arg: 2, scope: !2948, file: !2852, line: 90, type: !91)
!2953 = !DILocalVariable(name: "s25", arg: 3, scope: !2948, file: !2852, line: 90, type: !68)
!2954 = !DILocalVariable(name: "s26", arg: 4, scope: !2948, file: !2852, line: 90, type: !68)
!2955 = !DILocalVariable(name: "s27", arg: 5, scope: !2948, file: !2852, line: 90, type: !68)
!2956 = !DILocalVariable(name: "s28", arg: 6, scope: !2948, file: !2852, line: 90, type: !68)
!2957 = !DILocation(line: 0, scope: !2948, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 111, column: 16, scope: !2959, inlinedAt: !2941)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !2852, line: 108, column: 11)
!2960 = distinct !DILexicalBlock(scope: !2945, file: !2852, line: 107, column: 5)
!2961 = !DILocation(line: 92, column: 7, scope: !2962, inlinedAt: !2958)
!2962 = distinct !DILexicalBlock(scope: !2948, file: !2852, line: 92, column: 7)
!2963 = !DILocation(line: 92, column: 7, scope: !2948, inlinedAt: !2958)
!2964 = !DILocation(line: 235, column: 12, scope: !2868)
!2965 = !DILocation(line: 235, column: 21, scope: !2868)
!2966 = !DILocation(line: 235, column: 5, scope: !2868)
!2967 = !DILocation(line: 0, scope: !2872, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 167, column: 16, scope: !2887, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 236, column: 7, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2836, file: !188, line: 236, column: 7)
!2971 = !DILocation(line: 148, column: 7, scope: !2890, inlinedAt: !2968)
!2972 = !DILocation(line: 0, scope: !2892, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 153, column: 16, scope: !2906, inlinedAt: !2968)
!2974 = !DILocation(line: 134, column: 7, scope: !2909, inlinedAt: !2973)
!2975 = !DILocation(line: 134, column: 7, scope: !2892, inlinedAt: !2973)
!2976 = !DILocation(line: 0, scope: !2911, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 139, column: 16, scope: !2924, inlinedAt: !2973)
!2978 = !DILocation(line: 120, column: 7, scope: !2927, inlinedAt: !2977)
!2979 = !DILocation(line: 120, column: 7, scope: !2911, inlinedAt: !2977)
!2980 = !DILocation(line: 0, scope: !2930, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 125, column: 16, scope: !2942, inlinedAt: !2977)
!2982 = !DILocation(line: 106, column: 7, scope: !2945, inlinedAt: !2981)
!2983 = !DILocation(line: 106, column: 7, scope: !2930, inlinedAt: !2981)
!2984 = !DILocation(line: 0, scope: !2948, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 111, column: 16, scope: !2959, inlinedAt: !2981)
!2986 = !DILocation(line: 92, column: 7, scope: !2962, inlinedAt: !2985)
!2987 = !DILocation(line: 92, column: 7, scope: !2948, inlinedAt: !2985)
!2988 = !DILocalVariable(name: "s1", arg: 1, scope: !2989, file: !2852, line: 76, type: !91)
!2989 = distinct !DISubprogram(name: "strcaseeq6", scope: !2852, file: !2852, line: 76, type: !2990, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!69, !91, !91, !68, !68, !68}
!2992 = !{!2988, !2993, !2994, !2995, !2996}
!2993 = !DILocalVariable(name: "s2", arg: 2, scope: !2989, file: !2852, line: 76, type: !91)
!2994 = !DILocalVariable(name: "s26", arg: 3, scope: !2989, file: !2852, line: 76, type: !68)
!2995 = !DILocalVariable(name: "s27", arg: 4, scope: !2989, file: !2852, line: 76, type: !68)
!2996 = !DILocalVariable(name: "s28", arg: 5, scope: !2989, file: !2852, line: 76, type: !68)
!2997 = !DILocation(line: 0, scope: !2989, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 97, column: 16, scope: !2999, inlinedAt: !2985)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !2852, line: 94, column: 11)
!3000 = distinct !DILexicalBlock(scope: !2962, file: !2852, line: 93, column: 5)
!3001 = !DILocation(line: 78, column: 7, scope: !3002, inlinedAt: !2998)
!3002 = distinct !DILexicalBlock(scope: !2989, file: !2852, line: 78, column: 7)
!3003 = !DILocation(line: 78, column: 7, scope: !2989, inlinedAt: !2998)
!3004 = !DILocalVariable(name: "s1", arg: 1, scope: !3005, file: !2852, line: 62, type: !91)
!3005 = distinct !DISubprogram(name: "strcaseeq7", scope: !2852, file: !2852, line: 62, type: !3006, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!69, !91, !91, !68, !68}
!3008 = !{!3004, !3009, !3010, !3011}
!3009 = !DILocalVariable(name: "s2", arg: 2, scope: !3005, file: !2852, line: 62, type: !91)
!3010 = !DILocalVariable(name: "s27", arg: 3, scope: !3005, file: !2852, line: 62, type: !68)
!3011 = !DILocalVariable(name: "s28", arg: 4, scope: !3005, file: !2852, line: 62, type: !68)
!3012 = !DILocation(line: 0, scope: !3005, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 83, column: 16, scope: !3014, inlinedAt: !2998)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !2852, line: 80, column: 11)
!3015 = distinct !DILexicalBlock(scope: !3002, file: !2852, line: 79, column: 5)
!3016 = !DILocation(line: 64, column: 7, scope: !3017, inlinedAt: !3013)
!3017 = distinct !DILexicalBlock(scope: !3005, file: !2852, line: 64, column: 7)
!3018 = !DILocation(line: 236, column: 7, scope: !2836)
!3019 = !DILocation(line: 237, column: 12, scope: !2970)
!3020 = !DILocation(line: 237, column: 21, scope: !2970)
!3021 = !DILocation(line: 237, column: 5, scope: !2970)
!3022 = !DILocation(line: 239, column: 13, scope: !2836)
!3023 = !DILocation(line: 239, column: 11, scope: !2836)
!3024 = !DILocation(line: 239, column: 3, scope: !2836)
!3025 = !DILocation(line: 240, column: 1, scope: !2836)
!3026 = !DISubprogram(name: "iswprint", scope: !3027, file: !3027, line: 120, type: !3028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!3027 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!69, !7}
!3030 = !DISubprogram(name: "mbsinit", scope: !3031, file: !3031, line: 292, type: !3032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!3031 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!69, !3034}
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!3036 = distinct !DISubprogram(name: "quotearg_alloc", scope: !188, file: !188, line: 799, type: !3037, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!67, !91, !41, !2203}
!3039 = !{!3040, !3041, !3042}
!3040 = !DILocalVariable(name: "arg", arg: 1, scope: !3036, file: !188, line: 799, type: !91)
!3041 = !DILocalVariable(name: "argsize", arg: 2, scope: !3036, file: !188, line: 799, type: !41)
!3042 = !DILocalVariable(name: "o", arg: 3, scope: !3036, file: !188, line: 800, type: !2203)
!3043 = !DILocation(line: 0, scope: !3036)
!3044 = !DILocalVariable(name: "arg", arg: 1, scope: !3045, file: !188, line: 812, type: !91)
!3045 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !188, file: !188, line: 812, type: !3046, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!67, !91, !41, !40, !2203}
!3048 = !{!3044, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056}
!3049 = !DILocalVariable(name: "argsize", arg: 2, scope: !3045, file: !188, line: 812, type: !41)
!3050 = !DILocalVariable(name: "size", arg: 3, scope: !3045, file: !188, line: 812, type: !40)
!3051 = !DILocalVariable(name: "o", arg: 4, scope: !3045, file: !188, line: 813, type: !2203)
!3052 = !DILocalVariable(name: "p", scope: !3045, file: !188, line: 815, type: !2203)
!3053 = !DILocalVariable(name: "e", scope: !3045, file: !188, line: 816, type: !69)
!3054 = !DILocalVariable(name: "flags", scope: !3045, file: !188, line: 818, type: !69)
!3055 = !DILocalVariable(name: "bufsize", scope: !3045, file: !188, line: 819, type: !41)
!3056 = !DILocalVariable(name: "buf", scope: !3045, file: !188, line: 823, type: !67)
!3057 = !DILocation(line: 0, scope: !3045, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 802, column: 10, scope: !3036)
!3059 = !DILocation(line: 815, column: 37, scope: !3045, inlinedAt: !3058)
!3060 = !DILocation(line: 816, column: 11, scope: !3045, inlinedAt: !3058)
!3061 = !DILocation(line: 818, column: 18, scope: !3045, inlinedAt: !3058)
!3062 = !DILocation(line: 818, column: 24, scope: !3045, inlinedAt: !3058)
!3063 = !DILocation(line: 819, column: 69, scope: !3045, inlinedAt: !3058)
!3064 = !DILocation(line: 820, column: 53, scope: !3045, inlinedAt: !3058)
!3065 = !DILocation(line: 821, column: 49, scope: !3045, inlinedAt: !3058)
!3066 = !DILocation(line: 822, column: 49, scope: !3045, inlinedAt: !3058)
!3067 = !DILocation(line: 819, column: 20, scope: !3045, inlinedAt: !3058)
!3068 = !DILocation(line: 822, column: 62, scope: !3045, inlinedAt: !3058)
!3069 = !DILocalVariable(name: "n", arg: 1, scope: !3070, file: !35, line: 216, type: !41)
!3070 = distinct !DISubprogram(name: "xcharalloc", scope: !35, file: !35, line: 216, type: !3071, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!67, !41}
!3073 = !{!3069}
!3074 = !DILocation(line: 0, scope: !3070, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 823, column: 15, scope: !3045, inlinedAt: !3058)
!3076 = !DILocation(line: 218, column: 10, scope: !3070, inlinedAt: !3075)
!3077 = !DILocation(line: 824, column: 60, scope: !3045, inlinedAt: !3058)
!3078 = !DILocation(line: 826, column: 32, scope: !3045, inlinedAt: !3058)
!3079 = !DILocation(line: 826, column: 47, scope: !3045, inlinedAt: !3058)
!3080 = !DILocation(line: 824, column: 3, scope: !3045, inlinedAt: !3058)
!3081 = !DILocation(line: 827, column: 9, scope: !3045, inlinedAt: !3058)
!3082 = !DILocation(line: 802, column: 3, scope: !3036)
!3083 = !DILocation(line: 0, scope: !3045)
!3084 = !DILocation(line: 815, column: 37, scope: !3045)
!3085 = !DILocation(line: 816, column: 11, scope: !3045)
!3086 = !DILocation(line: 818, column: 18, scope: !3045)
!3087 = !DILocation(line: 818, column: 27, scope: !3045)
!3088 = !DILocation(line: 818, column: 24, scope: !3045)
!3089 = !DILocation(line: 819, column: 69, scope: !3045)
!3090 = !DILocation(line: 820, column: 53, scope: !3045)
!3091 = !DILocation(line: 821, column: 49, scope: !3045)
!3092 = !DILocation(line: 822, column: 49, scope: !3045)
!3093 = !DILocation(line: 819, column: 20, scope: !3045)
!3094 = !DILocation(line: 822, column: 62, scope: !3045)
!3095 = !DILocation(line: 0, scope: !3070, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 823, column: 15, scope: !3045)
!3097 = !DILocation(line: 218, column: 10, scope: !3070, inlinedAt: !3096)
!3098 = !DILocation(line: 824, column: 60, scope: !3045)
!3099 = !DILocation(line: 826, column: 32, scope: !3045)
!3100 = !DILocation(line: 826, column: 47, scope: !3045)
!3101 = !DILocation(line: 824, column: 3, scope: !3045)
!3102 = !DILocation(line: 827, column: 9, scope: !3045)
!3103 = !DILocation(line: 828, column: 7, scope: !3045)
!3104 = !DILocation(line: 829, column: 11, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3045, file: !188, line: 828, column: 7)
!3106 = !DILocation(line: 829, column: 5, scope: !3105)
!3107 = !DILocation(line: 830, column: 3, scope: !3045)
!3108 = distinct !DISubprogram(name: "quotearg_free", scope: !188, file: !188, line: 848, type: !713, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3109)
!3109 = !{!3110, !3111}
!3110 = !DILocalVariable(name: "sv", scope: !3108, file: !188, line: 850, type: !224)
!3111 = !DILocalVariable(name: "i", scope: !3108, file: !188, line: 851, type: !69)
!3112 = !DILocation(line: 850, column: 24, scope: !3108)
!3113 = !DILocation(line: 0, scope: !3108)
!3114 = !DILocation(line: 852, column: 19, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !188, line: 852, column: 3)
!3116 = distinct !DILexicalBlock(scope: !3108, file: !188, line: 852, column: 3)
!3117 = !DILocation(line: 852, column: 17, scope: !3115)
!3118 = !DILocation(line: 852, column: 3, scope: !3116)
!3119 = !DILocation(line: 853, column: 17, scope: !3115)
!3120 = !{!3121, !705, i64 8}
!3121 = !{!"slotvec", !1008, i64 0, !705, i64 8}
!3122 = !DILocation(line: 853, column: 5, scope: !3115)
!3123 = !DILocation(line: 852, column: 28, scope: !3115)
!3124 = distinct !{!3124, !3118, !3125, !760}
!3125 = !DILocation(line: 853, column: 20, scope: !3116)
!3126 = !DILocation(line: 854, column: 13, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3108, file: !188, line: 854, column: 7)
!3128 = !DILocation(line: 854, column: 17, scope: !3127)
!3129 = !DILocation(line: 854, column: 7, scope: !3108)
!3130 = !DILocation(line: 856, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3127, file: !188, line: 855, column: 5)
!3132 = !DILocation(line: 857, column: 21, scope: !3131)
!3133 = !{!3121, !1008, i64 0}
!3134 = !DILocation(line: 858, column: 20, scope: !3131)
!3135 = !DILocation(line: 859, column: 5, scope: !3131)
!3136 = !DILocation(line: 860, column: 10, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3108, file: !188, line: 860, column: 7)
!3138 = !DILocation(line: 860, column: 7, scope: !3108)
!3139 = !DILocation(line: 862, column: 13, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3137, file: !188, line: 861, column: 5)
!3141 = !DILocation(line: 862, column: 7, scope: !3140)
!3142 = !DILocation(line: 863, column: 15, scope: !3140)
!3143 = !DILocation(line: 864, column: 5, scope: !3140)
!3144 = !DILocation(line: 865, column: 10, scope: !3108)
!3145 = !DILocation(line: 866, column: 1, scope: !3108)
!3146 = distinct !DISubprogram(name: "quotearg_n", scope: !188, file: !188, line: 931, type: !840, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3147)
!3147 = !{!3148, !3149}
!3148 = !DILocalVariable(name: "n", arg: 1, scope: !3146, file: !188, line: 931, type: !69)
!3149 = !DILocalVariable(name: "arg", arg: 2, scope: !3146, file: !188, line: 931, type: !91)
!3150 = !DILocation(line: 0, scope: !3146)
!3151 = !DILocation(line: 933, column: 10, scope: !3146)
!3152 = !DILocation(line: 933, column: 3, scope: !3146)
!3153 = distinct !DISubprogram(name: "quotearg_n_options", scope: !188, file: !188, line: 877, type: !3154, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!67, !69, !91, !41, !2203}
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3163, !3166, !3167, !3169, !3170, !3171}
!3157 = !DILocalVariable(name: "n", arg: 1, scope: !3153, file: !188, line: 877, type: !69)
!3158 = !DILocalVariable(name: "arg", arg: 2, scope: !3153, file: !188, line: 877, type: !91)
!3159 = !DILocalVariable(name: "argsize", arg: 3, scope: !3153, file: !188, line: 877, type: !41)
!3160 = !DILocalVariable(name: "options", arg: 4, scope: !3153, file: !188, line: 878, type: !2203)
!3161 = !DILocalVariable(name: "e", scope: !3153, file: !188, line: 880, type: !69)
!3162 = !DILocalVariable(name: "sv", scope: !3153, file: !188, line: 882, type: !224)
!3163 = !DILocalVariable(name: "preallocated", scope: !3164, file: !188, line: 889, type: !88)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !188, line: 888, column: 5)
!3165 = distinct !DILexicalBlock(scope: !3153, file: !188, line: 887, column: 7)
!3166 = !DILocalVariable(name: "nmax", scope: !3164, file: !188, line: 890, type: !69)
!3167 = !DILocalVariable(name: "size", scope: !3168, file: !188, line: 903, type: !41)
!3168 = distinct !DILexicalBlock(scope: !3153, file: !188, line: 902, column: 3)
!3169 = !DILocalVariable(name: "val", scope: !3168, file: !188, line: 904, type: !67)
!3170 = !DILocalVariable(name: "flags", scope: !3168, file: !188, line: 906, type: !69)
!3171 = !DILocalVariable(name: "qsize", scope: !3168, file: !188, line: 907, type: !41)
!3172 = !DILocation(line: 0, scope: !3153)
!3173 = !DILocation(line: 880, column: 11, scope: !3153)
!3174 = !DILocation(line: 882, column: 24, scope: !3153)
!3175 = !DILocation(line: 884, column: 9, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3153, file: !188, line: 884, column: 7)
!3177 = !DILocation(line: 884, column: 7, scope: !3153)
!3178 = !DILocation(line: 885, column: 5, scope: !3176)
!3179 = !DILocation(line: 887, column: 7, scope: !3165)
!3180 = !DILocation(line: 887, column: 14, scope: !3165)
!3181 = !DILocation(line: 887, column: 7, scope: !3153)
!3182 = !DILocation(line: 889, column: 31, scope: !3164)
!3183 = !DILocation(line: 0, scope: !3164)
!3184 = !DILocation(line: 892, column: 16, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3164, file: !188, line: 892, column: 11)
!3186 = !DILocation(line: 892, column: 11, scope: !3164)
!3187 = !DILocation(line: 893, column: 9, scope: !3185)
!3188 = !DILocation(line: 895, column: 32, scope: !3164)
!3189 = !DILocation(line: 895, column: 61, scope: !3164)
!3190 = !DILocation(line: 895, column: 66, scope: !3164)
!3191 = !DILocation(line: 895, column: 22, scope: !3164)
!3192 = !DILocation(line: 895, column: 15, scope: !3164)
!3193 = !DILocation(line: 896, column: 11, scope: !3164)
!3194 = !DILocation(line: 897, column: 15, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3164, file: !188, line: 896, column: 11)
!3196 = !{i64 0, i64 8, !1007, i64 8, i64 8, !704}
!3197 = !DILocation(line: 897, column: 9, scope: !3195)
!3198 = !DILocation(line: 898, column: 20, scope: !3164)
!3199 = !DILocation(line: 898, column: 18, scope: !3164)
!3200 = !DILocation(line: 898, column: 15, scope: !3164)
!3201 = !DILocation(line: 898, column: 38, scope: !3164)
!3202 = !DILocation(line: 898, column: 31, scope: !3164)
!3203 = !DILocation(line: 898, column: 48, scope: !3164)
!3204 = !DILocation(line: 0, scope: !2598, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 898, column: 7, scope: !3164)
!3206 = !DILocation(line: 59, column: 10, scope: !2598, inlinedAt: !3205)
!3207 = !DILocation(line: 899, column: 14, scope: !3164)
!3208 = !DILocation(line: 900, column: 5, scope: !3164)
!3209 = !DILocation(line: 903, column: 19, scope: !3168)
!3210 = !DILocation(line: 903, column: 25, scope: !3168)
!3211 = !DILocation(line: 0, scope: !3168)
!3212 = !DILocation(line: 904, column: 23, scope: !3168)
!3213 = !DILocation(line: 906, column: 26, scope: !3168)
!3214 = !DILocation(line: 906, column: 32, scope: !3168)
!3215 = !DILocation(line: 908, column: 55, scope: !3168)
!3216 = !DILocation(line: 909, column: 46, scope: !3168)
!3217 = !DILocation(line: 910, column: 55, scope: !3168)
!3218 = !DILocation(line: 911, column: 55, scope: !3168)
!3219 = !DILocation(line: 907, column: 20, scope: !3168)
!3220 = !DILocation(line: 913, column: 14, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3168, file: !188, line: 913, column: 9)
!3222 = !DILocation(line: 913, column: 9, scope: !3168)
!3223 = !DILocation(line: 915, column: 35, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3221, file: !188, line: 914, column: 7)
!3225 = !DILocation(line: 915, column: 20, scope: !3224)
!3226 = !DILocation(line: 916, column: 17, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3224, file: !188, line: 916, column: 13)
!3228 = !DILocation(line: 916, column: 13, scope: !3224)
!3229 = !DILocation(line: 917, column: 11, scope: !3227)
!3230 = !DILocation(line: 0, scope: !3070, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 918, column: 27, scope: !3224)
!3232 = !DILocation(line: 218, column: 10, scope: !3070, inlinedAt: !3231)
!3233 = !DILocation(line: 918, column: 19, scope: !3224)
!3234 = !DILocation(line: 919, column: 69, scope: !3224)
!3235 = !DILocation(line: 921, column: 44, scope: !3224)
!3236 = !DILocation(line: 922, column: 44, scope: !3224)
!3237 = !DILocation(line: 919, column: 9, scope: !3224)
!3238 = !DILocation(line: 923, column: 7, scope: !3224)
!3239 = !DILocation(line: 925, column: 11, scope: !3168)
!3240 = !DILocation(line: 926, column: 5, scope: !3168)
!3241 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !188, file: !188, line: 937, type: !3242, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3244)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!67, !69, !91, !41}
!3244 = !{!3245, !3246, !3247}
!3245 = !DILocalVariable(name: "n", arg: 1, scope: !3241, file: !188, line: 937, type: !69)
!3246 = !DILocalVariable(name: "arg", arg: 2, scope: !3241, file: !188, line: 937, type: !91)
!3247 = !DILocalVariable(name: "argsize", arg: 3, scope: !3241, file: !188, line: 937, type: !41)
!3248 = !DILocation(line: 0, scope: !3241)
!3249 = !DILocation(line: 939, column: 10, scope: !3241)
!3250 = !DILocation(line: 939, column: 3, scope: !3241)
!3251 = distinct !DISubprogram(name: "quotearg", scope: !188, file: !188, line: 943, type: !1674, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3252)
!3252 = !{!3253}
!3253 = !DILocalVariable(name: "arg", arg: 1, scope: !3251, file: !188, line: 943, type: !91)
!3254 = !DILocation(line: 0, scope: !3251)
!3255 = !DILocation(line: 0, scope: !3146, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 945, column: 10, scope: !3251)
!3257 = !DILocation(line: 933, column: 10, scope: !3146, inlinedAt: !3256)
!3258 = !DILocation(line: 945, column: 3, scope: !3251)
!3259 = distinct !DISubprogram(name: "quotearg_mem", scope: !188, file: !188, line: 949, type: !3260, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!67, !91, !41}
!3262 = !{!3263, !3264}
!3263 = !DILocalVariable(name: "arg", arg: 1, scope: !3259, file: !188, line: 949, type: !91)
!3264 = !DILocalVariable(name: "argsize", arg: 2, scope: !3259, file: !188, line: 949, type: !41)
!3265 = !DILocation(line: 0, scope: !3259)
!3266 = !DILocation(line: 0, scope: !3241, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 951, column: 10, scope: !3259)
!3268 = !DILocation(line: 939, column: 10, scope: !3241, inlinedAt: !3267)
!3269 = !DILocation(line: 951, column: 3, scope: !3259)
!3270 = distinct !DISubprogram(name: "quotearg_n_style", scope: !188, file: !188, line: 955, type: !3271, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3273)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!67, !69, !13, !91}
!3273 = !{!3274, !3275, !3276, !3277}
!3274 = !DILocalVariable(name: "n", arg: 1, scope: !3270, file: !188, line: 955, type: !69)
!3275 = !DILocalVariable(name: "s", arg: 2, scope: !3270, file: !188, line: 955, type: !13)
!3276 = !DILocalVariable(name: "arg", arg: 3, scope: !3270, file: !188, line: 955, type: !91)
!3277 = !DILocalVariable(name: "o", scope: !3270, file: !188, line: 957, type: !2204)
!3278 = !DILocation(line: 0, scope: !3270)
!3279 = !DILocation(line: 957, column: 3, scope: !3270)
!3280 = !DILocation(line: 957, column: 32, scope: !3270)
!3281 = !{!3282}
!3282 = distinct !{!3282, !3283, !"quoting_options_from_style: argument 0"}
!3283 = distinct !{!3283, !"quoting_options_from_style"}
!3284 = !DILocation(line: 957, column: 36, scope: !3270)
!3285 = !DILocalVariable(name: "style", arg: 1, scope: !3286, file: !188, line: 193, type: !13)
!3286 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !188, file: !188, line: 193, type: !3287, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!205, !13}
!3289 = !{!3285, !3290}
!3290 = !DILocalVariable(name: "o", scope: !3286, file: !188, line: 195, type: !205)
!3291 = !DILocation(line: 0, scope: !3286, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 957, column: 36, scope: !3270)
!3293 = !DILocation(line: 195, column: 26, scope: !3286, inlinedAt: !3292)
!3294 = !DILocation(line: 196, column: 13, scope: !3295, inlinedAt: !3292)
!3295 = distinct !DILexicalBlock(scope: !3286, file: !188, line: 196, column: 7)
!3296 = !DILocation(line: 196, column: 7, scope: !3286, inlinedAt: !3292)
!3297 = !DILocation(line: 197, column: 5, scope: !3295, inlinedAt: !3292)
!3298 = !DILocation(line: 198, column: 5, scope: !3286, inlinedAt: !3292)
!3299 = !DILocation(line: 198, column: 11, scope: !3286, inlinedAt: !3292)
!3300 = !DILocation(line: 958, column: 10, scope: !3270)
!3301 = !DILocation(line: 959, column: 1, scope: !3270)
!3302 = !DILocation(line: 958, column: 3, scope: !3270)
!3303 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !188, file: !188, line: 962, type: !3304, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!67, !69, !13, !91, !41}
!3306 = !{!3307, !3308, !3309, !3310, !3311}
!3307 = !DILocalVariable(name: "n", arg: 1, scope: !3303, file: !188, line: 962, type: !69)
!3308 = !DILocalVariable(name: "s", arg: 2, scope: !3303, file: !188, line: 962, type: !13)
!3309 = !DILocalVariable(name: "arg", arg: 3, scope: !3303, file: !188, line: 963, type: !91)
!3310 = !DILocalVariable(name: "argsize", arg: 4, scope: !3303, file: !188, line: 963, type: !41)
!3311 = !DILocalVariable(name: "o", scope: !3303, file: !188, line: 965, type: !2204)
!3312 = !DILocation(line: 0, scope: !3303)
!3313 = !DILocation(line: 965, column: 3, scope: !3303)
!3314 = !DILocation(line: 965, column: 32, scope: !3303)
!3315 = !{!3316}
!3316 = distinct !{!3316, !3317, !"quoting_options_from_style: argument 0"}
!3317 = distinct !{!3317, !"quoting_options_from_style"}
!3318 = !DILocation(line: 965, column: 36, scope: !3303)
!3319 = !DILocation(line: 0, scope: !3286, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 965, column: 36, scope: !3303)
!3321 = !DILocation(line: 195, column: 26, scope: !3286, inlinedAt: !3320)
!3322 = !DILocation(line: 196, column: 13, scope: !3295, inlinedAt: !3320)
!3323 = !DILocation(line: 196, column: 7, scope: !3286, inlinedAt: !3320)
!3324 = !DILocation(line: 197, column: 5, scope: !3295, inlinedAt: !3320)
!3325 = !DILocation(line: 198, column: 5, scope: !3286, inlinedAt: !3320)
!3326 = !DILocation(line: 198, column: 11, scope: !3286, inlinedAt: !3320)
!3327 = !DILocation(line: 966, column: 10, scope: !3303)
!3328 = !DILocation(line: 967, column: 1, scope: !3303)
!3329 = !DILocation(line: 966, column: 3, scope: !3303)
!3330 = distinct !DISubprogram(name: "quotearg_style", scope: !188, file: !188, line: 970, type: !3331, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!67, !13, !91}
!3333 = !{!3334, !3335}
!3334 = !DILocalVariable(name: "s", arg: 1, scope: !3330, file: !188, line: 970, type: !13)
!3335 = !DILocalVariable(name: "arg", arg: 2, scope: !3330, file: !188, line: 970, type: !91)
!3336 = !DILocation(line: 0, scope: !3330)
!3337 = !DILocation(line: 0, scope: !3270, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 972, column: 10, scope: !3330)
!3339 = !DILocation(line: 957, column: 3, scope: !3270, inlinedAt: !3338)
!3340 = !DILocation(line: 957, column: 32, scope: !3270, inlinedAt: !3338)
!3341 = !{!3342}
!3342 = distinct !{!3342, !3343, !"quoting_options_from_style: argument 0"}
!3343 = distinct !{!3343, !"quoting_options_from_style"}
!3344 = !DILocation(line: 957, column: 36, scope: !3270, inlinedAt: !3338)
!3345 = !DILocation(line: 0, scope: !3286, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 957, column: 36, scope: !3270, inlinedAt: !3338)
!3347 = !DILocation(line: 195, column: 26, scope: !3286, inlinedAt: !3346)
!3348 = !DILocation(line: 196, column: 13, scope: !3295, inlinedAt: !3346)
!3349 = !DILocation(line: 196, column: 7, scope: !3286, inlinedAt: !3346)
!3350 = !DILocation(line: 197, column: 5, scope: !3295, inlinedAt: !3346)
!3351 = !DILocation(line: 198, column: 5, scope: !3286, inlinedAt: !3346)
!3352 = !DILocation(line: 198, column: 11, scope: !3286, inlinedAt: !3346)
!3353 = !DILocation(line: 958, column: 10, scope: !3270, inlinedAt: !3338)
!3354 = !DILocation(line: 959, column: 1, scope: !3270, inlinedAt: !3338)
!3355 = !DILocation(line: 972, column: 3, scope: !3330)
!3356 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !188, file: !188, line: 976, type: !3357, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3359)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!67, !13, !91, !41}
!3359 = !{!3360, !3361, !3362}
!3360 = !DILocalVariable(name: "s", arg: 1, scope: !3356, file: !188, line: 976, type: !13)
!3361 = !DILocalVariable(name: "arg", arg: 2, scope: !3356, file: !188, line: 976, type: !91)
!3362 = !DILocalVariable(name: "argsize", arg: 3, scope: !3356, file: !188, line: 976, type: !41)
!3363 = !DILocation(line: 0, scope: !3356)
!3364 = !DILocation(line: 0, scope: !3303, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 978, column: 10, scope: !3356)
!3366 = !DILocation(line: 965, column: 3, scope: !3303, inlinedAt: !3365)
!3367 = !DILocation(line: 965, column: 32, scope: !3303, inlinedAt: !3365)
!3368 = !{!3369}
!3369 = distinct !{!3369, !3370, !"quoting_options_from_style: argument 0"}
!3370 = distinct !{!3370, !"quoting_options_from_style"}
!3371 = !DILocation(line: 965, column: 36, scope: !3303, inlinedAt: !3365)
!3372 = !DILocation(line: 0, scope: !3286, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 965, column: 36, scope: !3303, inlinedAt: !3365)
!3374 = !DILocation(line: 195, column: 26, scope: !3286, inlinedAt: !3373)
!3375 = !DILocation(line: 196, column: 13, scope: !3295, inlinedAt: !3373)
!3376 = !DILocation(line: 196, column: 7, scope: !3286, inlinedAt: !3373)
!3377 = !DILocation(line: 197, column: 5, scope: !3295, inlinedAt: !3373)
!3378 = !DILocation(line: 198, column: 5, scope: !3286, inlinedAt: !3373)
!3379 = !DILocation(line: 198, column: 11, scope: !3286, inlinedAt: !3373)
!3380 = !DILocation(line: 966, column: 10, scope: !3303, inlinedAt: !3365)
!3381 = !DILocation(line: 967, column: 1, scope: !3303, inlinedAt: !3365)
!3382 = !DILocation(line: 978, column: 3, scope: !3356)
!3383 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !188, file: !188, line: 982, type: !3384, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!67, !91, !41, !68}
!3386 = !{!3387, !3388, !3389, !3390}
!3387 = !DILocalVariable(name: "arg", arg: 1, scope: !3383, file: !188, line: 982, type: !91)
!3388 = !DILocalVariable(name: "argsize", arg: 2, scope: !3383, file: !188, line: 982, type: !41)
!3389 = !DILocalVariable(name: "ch", arg: 3, scope: !3383, file: !188, line: 982, type: !68)
!3390 = !DILocalVariable(name: "options", scope: !3383, file: !188, line: 984, type: !205)
!3391 = !DILocation(line: 0, scope: !3383)
!3392 = !DILocation(line: 984, column: 3, scope: !3383)
!3393 = !DILocation(line: 984, column: 26, scope: !3383)
!3394 = !DILocation(line: 985, column: 13, scope: !3383)
!3395 = !{i64 0, i64 4, !1079, i64 4, i64 4, !979, i64 8, i64 32, !1079, i64 40, i64 8, !704, i64 48, i64 8, !704}
!3396 = !DILocation(line: 0, scope: !2224, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 986, column: 3, scope: !3383)
!3398 = !DILocation(line: 156, column: 62, scope: !2224, inlinedAt: !3397)
!3399 = !DILocation(line: 156, column: 57, scope: !2224, inlinedAt: !3397)
!3400 = !DILocation(line: 157, column: 15, scope: !2224, inlinedAt: !3397)
!3401 = !DILocation(line: 158, column: 12, scope: !2224, inlinedAt: !3397)
!3402 = !DILocation(line: 158, column: 15, scope: !2224, inlinedAt: !3397)
!3403 = !DILocation(line: 158, column: 25, scope: !2224, inlinedAt: !3397)
!3404 = !DILocation(line: 159, column: 18, scope: !2224, inlinedAt: !3397)
!3405 = !DILocation(line: 159, column: 23, scope: !2224, inlinedAt: !3397)
!3406 = !DILocation(line: 159, column: 6, scope: !2224, inlinedAt: !3397)
!3407 = !DILocation(line: 987, column: 10, scope: !3383)
!3408 = !DILocation(line: 988, column: 1, scope: !3383)
!3409 = !DILocation(line: 987, column: 3, scope: !3383)
!3410 = distinct !DISubprogram(name: "quotearg_char", scope: !188, file: !188, line: 991, type: !3411, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!67, !91, !68}
!3413 = !{!3414, !3415}
!3414 = !DILocalVariable(name: "arg", arg: 1, scope: !3410, file: !188, line: 991, type: !91)
!3415 = !DILocalVariable(name: "ch", arg: 2, scope: !3410, file: !188, line: 991, type: !68)
!3416 = !DILocation(line: 0, scope: !3410)
!3417 = !DILocation(line: 0, scope: !3383, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 993, column: 10, scope: !3410)
!3419 = !DILocation(line: 984, column: 3, scope: !3383, inlinedAt: !3418)
!3420 = !DILocation(line: 984, column: 26, scope: !3383, inlinedAt: !3418)
!3421 = !DILocation(line: 985, column: 13, scope: !3383, inlinedAt: !3418)
!3422 = !DILocation(line: 0, scope: !2224, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 986, column: 3, scope: !3383, inlinedAt: !3418)
!3424 = !DILocation(line: 156, column: 62, scope: !2224, inlinedAt: !3423)
!3425 = !DILocation(line: 156, column: 57, scope: !2224, inlinedAt: !3423)
!3426 = !DILocation(line: 157, column: 15, scope: !2224, inlinedAt: !3423)
!3427 = !DILocation(line: 158, column: 12, scope: !2224, inlinedAt: !3423)
!3428 = !DILocation(line: 158, column: 15, scope: !2224, inlinedAt: !3423)
!3429 = !DILocation(line: 158, column: 25, scope: !2224, inlinedAt: !3423)
!3430 = !DILocation(line: 159, column: 18, scope: !2224, inlinedAt: !3423)
!3431 = !DILocation(line: 159, column: 23, scope: !2224, inlinedAt: !3423)
!3432 = !DILocation(line: 159, column: 6, scope: !2224, inlinedAt: !3423)
!3433 = !DILocation(line: 987, column: 10, scope: !3383, inlinedAt: !3418)
!3434 = !DILocation(line: 988, column: 1, scope: !3383, inlinedAt: !3418)
!3435 = !DILocation(line: 993, column: 3, scope: !3410)
!3436 = distinct !DISubprogram(name: "quotearg_colon", scope: !188, file: !188, line: 997, type: !1674, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3437)
!3437 = !{!3438}
!3438 = !DILocalVariable(name: "arg", arg: 1, scope: !3436, file: !188, line: 997, type: !91)
!3439 = !DILocation(line: 0, scope: !3436)
!3440 = !DILocation(line: 0, scope: !3410, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 999, column: 10, scope: !3436)
!3442 = !DILocation(line: 0, scope: !3383, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 993, column: 10, scope: !3410, inlinedAt: !3441)
!3444 = !DILocation(line: 984, column: 3, scope: !3383, inlinedAt: !3443)
!3445 = !DILocation(line: 984, column: 26, scope: !3383, inlinedAt: !3443)
!3446 = !DILocation(line: 985, column: 13, scope: !3383, inlinedAt: !3443)
!3447 = !DILocation(line: 0, scope: !2224, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 986, column: 3, scope: !3383, inlinedAt: !3443)
!3449 = !DILocation(line: 156, column: 57, scope: !2224, inlinedAt: !3448)
!3450 = !DILocation(line: 158, column: 12, scope: !2224, inlinedAt: !3448)
!3451 = !DILocation(line: 159, column: 6, scope: !2224, inlinedAt: !3448)
!3452 = !DILocation(line: 987, column: 10, scope: !3383, inlinedAt: !3443)
!3453 = !DILocation(line: 988, column: 1, scope: !3383, inlinedAt: !3443)
!3454 = !DILocation(line: 999, column: 3, scope: !3436)
!3455 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !188, file: !188, line: 1003, type: !3260, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3456)
!3456 = !{!3457, !3458}
!3457 = !DILocalVariable(name: "arg", arg: 1, scope: !3455, file: !188, line: 1003, type: !91)
!3458 = !DILocalVariable(name: "argsize", arg: 2, scope: !3455, file: !188, line: 1003, type: !41)
!3459 = !DILocation(line: 0, scope: !3455)
!3460 = !DILocation(line: 0, scope: !3383, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 1005, column: 10, scope: !3455)
!3462 = !DILocation(line: 984, column: 3, scope: !3383, inlinedAt: !3461)
!3463 = !DILocation(line: 984, column: 26, scope: !3383, inlinedAt: !3461)
!3464 = !DILocation(line: 985, column: 13, scope: !3383, inlinedAt: !3461)
!3465 = !DILocation(line: 0, scope: !2224, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 986, column: 3, scope: !3383, inlinedAt: !3461)
!3467 = !DILocation(line: 156, column: 57, scope: !2224, inlinedAt: !3466)
!3468 = !DILocation(line: 158, column: 12, scope: !2224, inlinedAt: !3466)
!3469 = !DILocation(line: 159, column: 6, scope: !2224, inlinedAt: !3466)
!3470 = !DILocation(line: 987, column: 10, scope: !3383, inlinedAt: !3461)
!3471 = !DILocation(line: 988, column: 1, scope: !3383, inlinedAt: !3461)
!3472 = !DILocation(line: 1005, column: 3, scope: !3455)
!3473 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !188, file: !188, line: 1009, type: !3271, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3474)
!3474 = !{!3475, !3476, !3477, !3478}
!3475 = !DILocalVariable(name: "n", arg: 1, scope: !3473, file: !188, line: 1009, type: !69)
!3476 = !DILocalVariable(name: "s", arg: 2, scope: !3473, file: !188, line: 1009, type: !13)
!3477 = !DILocalVariable(name: "arg", arg: 3, scope: !3473, file: !188, line: 1009, type: !91)
!3478 = !DILocalVariable(name: "options", scope: !3473, file: !188, line: 1011, type: !205)
!3479 = !DILocation(line: 195, column: 26, scope: !3286, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 1012, column: 13, scope: !3473)
!3481 = !DILocation(line: 0, scope: !3473)
!3482 = !DILocation(line: 1011, column: 3, scope: !3473)
!3483 = !DILocation(line: 1011, column: 26, scope: !3473)
!3484 = !DILocation(line: 1012, column: 13, scope: !3473)
!3485 = !{!3486}
!3486 = distinct !{!3486, !3487, !"quoting_options_from_style: argument 0"}
!3487 = distinct !{!3487, !"quoting_options_from_style"}
!3488 = !DILocation(line: 0, scope: !3286, inlinedAt: !3480)
!3489 = !DILocation(line: 196, column: 13, scope: !3295, inlinedAt: !3480)
!3490 = !DILocation(line: 196, column: 7, scope: !3286, inlinedAt: !3480)
!3491 = !DILocation(line: 197, column: 5, scope: !3295, inlinedAt: !3480)
!3492 = !{i64 0, i64 4, !979, i64 4, i64 32, !1079, i64 36, i64 8, !704, i64 44, i64 8, !704}
!3493 = !DILocation(line: 0, scope: !2224, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 1013, column: 3, scope: !3473)
!3495 = !DILocation(line: 156, column: 57, scope: !2224, inlinedAt: !3494)
!3496 = !DILocation(line: 158, column: 12, scope: !2224, inlinedAt: !3494)
!3497 = !DILocation(line: 159, column: 6, scope: !2224, inlinedAt: !3494)
!3498 = !DILocation(line: 1014, column: 10, scope: !3473)
!3499 = !DILocation(line: 1015, column: 1, scope: !3473)
!3500 = !DILocation(line: 1014, column: 3, scope: !3473)
!3501 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !188, file: !188, line: 1018, type: !3502, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3504)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!67, !69, !91, !91, !91}
!3504 = !{!3505, !3506, !3507, !3508}
!3505 = !DILocalVariable(name: "n", arg: 1, scope: !3501, file: !188, line: 1018, type: !69)
!3506 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3501, file: !188, line: 1018, type: !91)
!3507 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3501, file: !188, line: 1019, type: !91)
!3508 = !DILocalVariable(name: "arg", arg: 4, scope: !3501, file: !188, line: 1019, type: !91)
!3509 = !DILocation(line: 0, scope: !3501)
!3510 = !DILocalVariable(name: "n", arg: 1, scope: !3511, file: !188, line: 1026, type: !69)
!3511 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !188, file: !188, line: 1026, type: !3512, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3514)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!67, !69, !91, !91, !91, !41}
!3514 = !{!3510, !3515, !3516, !3517, !3518, !3519}
!3515 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3511, file: !188, line: 1026, type: !91)
!3516 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3511, file: !188, line: 1027, type: !91)
!3517 = !DILocalVariable(name: "arg", arg: 4, scope: !3511, file: !188, line: 1028, type: !91)
!3518 = !DILocalVariable(name: "argsize", arg: 5, scope: !3511, file: !188, line: 1028, type: !41)
!3519 = !DILocalVariable(name: "o", scope: !3511, file: !188, line: 1030, type: !205)
!3520 = !DILocation(line: 0, scope: !3511, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 1021, column: 10, scope: !3501)
!3522 = !DILocation(line: 1030, column: 3, scope: !3511, inlinedAt: !3521)
!3523 = !DILocation(line: 1030, column: 26, scope: !3511, inlinedAt: !3521)
!3524 = !DILocation(line: 1030, column: 30, scope: !3511, inlinedAt: !3521)
!3525 = !DILocation(line: 0, scope: !2265, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 1031, column: 3, scope: !3511, inlinedAt: !3521)
!3527 = !DILocation(line: 184, column: 6, scope: !2265, inlinedAt: !3526)
!3528 = !DILocation(line: 184, column: 12, scope: !2265, inlinedAt: !3526)
!3529 = !DILocation(line: 185, column: 8, scope: !2279, inlinedAt: !3526)
!3530 = !DILocation(line: 185, column: 19, scope: !2279, inlinedAt: !3526)
!3531 = !DILocation(line: 186, column: 5, scope: !2279, inlinedAt: !3526)
!3532 = !DILocation(line: 187, column: 6, scope: !2265, inlinedAt: !3526)
!3533 = !DILocation(line: 187, column: 17, scope: !2265, inlinedAt: !3526)
!3534 = !DILocation(line: 188, column: 6, scope: !2265, inlinedAt: !3526)
!3535 = !DILocation(line: 188, column: 18, scope: !2265, inlinedAt: !3526)
!3536 = !DILocation(line: 1032, column: 10, scope: !3511, inlinedAt: !3521)
!3537 = !DILocation(line: 1033, column: 1, scope: !3511, inlinedAt: !3521)
!3538 = !DILocation(line: 1021, column: 3, scope: !3501)
!3539 = !DILocation(line: 0, scope: !3511)
!3540 = !DILocation(line: 1030, column: 3, scope: !3511)
!3541 = !DILocation(line: 1030, column: 26, scope: !3511)
!3542 = !DILocation(line: 1030, column: 30, scope: !3511)
!3543 = !DILocation(line: 0, scope: !2265, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 1031, column: 3, scope: !3511)
!3545 = !DILocation(line: 184, column: 6, scope: !2265, inlinedAt: !3544)
!3546 = !DILocation(line: 184, column: 12, scope: !2265, inlinedAt: !3544)
!3547 = !DILocation(line: 185, column: 8, scope: !2279, inlinedAt: !3544)
!3548 = !DILocation(line: 185, column: 19, scope: !2279, inlinedAt: !3544)
!3549 = !DILocation(line: 186, column: 5, scope: !2279, inlinedAt: !3544)
!3550 = !DILocation(line: 187, column: 6, scope: !2265, inlinedAt: !3544)
!3551 = !DILocation(line: 187, column: 17, scope: !2265, inlinedAt: !3544)
!3552 = !DILocation(line: 188, column: 6, scope: !2265, inlinedAt: !3544)
!3553 = !DILocation(line: 188, column: 18, scope: !2265, inlinedAt: !3544)
!3554 = !DILocation(line: 1032, column: 10, scope: !3511)
!3555 = !DILocation(line: 1033, column: 1, scope: !3511)
!3556 = !DILocation(line: 1032, column: 3, scope: !3511)
!3557 = distinct !DISubprogram(name: "quotearg_custom", scope: !188, file: !188, line: 1036, type: !3558, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3560)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!67, !91, !91, !91}
!3560 = !{!3561, !3562, !3563}
!3561 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3557, file: !188, line: 1036, type: !91)
!3562 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3557, file: !188, line: 1036, type: !91)
!3563 = !DILocalVariable(name: "arg", arg: 3, scope: !3557, file: !188, line: 1037, type: !91)
!3564 = !DILocation(line: 0, scope: !3557)
!3565 = !DILocation(line: 0, scope: !3501, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 1039, column: 10, scope: !3557)
!3567 = !DILocation(line: 0, scope: !3511, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 1021, column: 10, scope: !3501, inlinedAt: !3566)
!3569 = !DILocation(line: 1030, column: 3, scope: !3511, inlinedAt: !3568)
!3570 = !DILocation(line: 1030, column: 26, scope: !3511, inlinedAt: !3568)
!3571 = !DILocation(line: 1030, column: 30, scope: !3511, inlinedAt: !3568)
!3572 = !DILocation(line: 0, scope: !2265, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 1031, column: 3, scope: !3511, inlinedAt: !3568)
!3574 = !DILocation(line: 184, column: 6, scope: !2265, inlinedAt: !3573)
!3575 = !DILocation(line: 184, column: 12, scope: !2265, inlinedAt: !3573)
!3576 = !DILocation(line: 185, column: 8, scope: !2279, inlinedAt: !3573)
!3577 = !DILocation(line: 185, column: 19, scope: !2279, inlinedAt: !3573)
!3578 = !DILocation(line: 186, column: 5, scope: !2279, inlinedAt: !3573)
!3579 = !DILocation(line: 187, column: 6, scope: !2265, inlinedAt: !3573)
!3580 = !DILocation(line: 187, column: 17, scope: !2265, inlinedAt: !3573)
!3581 = !DILocation(line: 188, column: 6, scope: !2265, inlinedAt: !3573)
!3582 = !DILocation(line: 188, column: 18, scope: !2265, inlinedAt: !3573)
!3583 = !DILocation(line: 1032, column: 10, scope: !3511, inlinedAt: !3568)
!3584 = !DILocation(line: 1033, column: 1, scope: !3511, inlinedAt: !3568)
!3585 = !DILocation(line: 1039, column: 3, scope: !3557)
!3586 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !188, file: !188, line: 1043, type: !3587, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3589)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!67, !91, !91, !91, !41}
!3589 = !{!3590, !3591, !3592, !3593}
!3590 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3586, file: !188, line: 1043, type: !91)
!3591 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3586, file: !188, line: 1043, type: !91)
!3592 = !DILocalVariable(name: "arg", arg: 3, scope: !3586, file: !188, line: 1044, type: !91)
!3593 = !DILocalVariable(name: "argsize", arg: 4, scope: !3586, file: !188, line: 1044, type: !41)
!3594 = !DILocation(line: 0, scope: !3586)
!3595 = !DILocation(line: 0, scope: !3511, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 1046, column: 10, scope: !3586)
!3597 = !DILocation(line: 1030, column: 3, scope: !3511, inlinedAt: !3596)
!3598 = !DILocation(line: 1030, column: 26, scope: !3511, inlinedAt: !3596)
!3599 = !DILocation(line: 1030, column: 30, scope: !3511, inlinedAt: !3596)
!3600 = !DILocation(line: 0, scope: !2265, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 1031, column: 3, scope: !3511, inlinedAt: !3596)
!3602 = !DILocation(line: 184, column: 6, scope: !2265, inlinedAt: !3601)
!3603 = !DILocation(line: 184, column: 12, scope: !2265, inlinedAt: !3601)
!3604 = !DILocation(line: 185, column: 8, scope: !2279, inlinedAt: !3601)
!3605 = !DILocation(line: 185, column: 19, scope: !2279, inlinedAt: !3601)
!3606 = !DILocation(line: 186, column: 5, scope: !2279, inlinedAt: !3601)
!3607 = !DILocation(line: 187, column: 6, scope: !2265, inlinedAt: !3601)
!3608 = !DILocation(line: 187, column: 17, scope: !2265, inlinedAt: !3601)
!3609 = !DILocation(line: 188, column: 6, scope: !2265, inlinedAt: !3601)
!3610 = !DILocation(line: 188, column: 18, scope: !2265, inlinedAt: !3601)
!3611 = !DILocation(line: 1032, column: 10, scope: !3511, inlinedAt: !3596)
!3612 = !DILocation(line: 1033, column: 1, scope: !3511, inlinedAt: !3596)
!3613 = !DILocation(line: 1046, column: 3, scope: !3586)
!3614 = distinct !DISubprogram(name: "quote_n_mem", scope: !188, file: !188, line: 1061, type: !3615, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3617)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!91, !69, !91, !41}
!3617 = !{!3618, !3619, !3620}
!3618 = !DILocalVariable(name: "n", arg: 1, scope: !3614, file: !188, line: 1061, type: !69)
!3619 = !DILocalVariable(name: "arg", arg: 2, scope: !3614, file: !188, line: 1061, type: !91)
!3620 = !DILocalVariable(name: "argsize", arg: 3, scope: !3614, file: !188, line: 1061, type: !41)
!3621 = !DILocation(line: 0, scope: !3614)
!3622 = !DILocation(line: 1063, column: 10, scope: !3614)
!3623 = !DILocation(line: 1063, column: 3, scope: !3614)
!3624 = distinct !DISubprogram(name: "quote_mem", scope: !188, file: !188, line: 1067, type: !3625, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!91, !91, !41}
!3627 = !{!3628, !3629}
!3628 = !DILocalVariable(name: "arg", arg: 1, scope: !3624, file: !188, line: 1067, type: !91)
!3629 = !DILocalVariable(name: "argsize", arg: 2, scope: !3624, file: !188, line: 1067, type: !41)
!3630 = !DILocation(line: 0, scope: !3624)
!3631 = !DILocation(line: 0, scope: !3614, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 1069, column: 10, scope: !3624)
!3633 = !DILocation(line: 1063, column: 10, scope: !3614, inlinedAt: !3632)
!3634 = !DILocation(line: 1069, column: 3, scope: !3624)
!3635 = distinct !DISubprogram(name: "quote_n", scope: !188, file: !188, line: 1073, type: !3636, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3638)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!91, !69, !91}
!3638 = !{!3639, !3640}
!3639 = !DILocalVariable(name: "n", arg: 1, scope: !3635, file: !188, line: 1073, type: !69)
!3640 = !DILocalVariable(name: "arg", arg: 2, scope: !3635, file: !188, line: 1073, type: !91)
!3641 = !DILocation(line: 0, scope: !3635)
!3642 = !DILocation(line: 0, scope: !3614, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 1075, column: 10, scope: !3635)
!3644 = !DILocation(line: 1063, column: 10, scope: !3614, inlinedAt: !3643)
!3645 = !DILocation(line: 1075, column: 3, scope: !3635)
!3646 = distinct !DISubprogram(name: "quote", scope: !188, file: !188, line: 1079, type: !1805, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3647)
!3647 = !{!3648}
!3648 = !DILocalVariable(name: "arg", arg: 1, scope: !3646, file: !188, line: 1079, type: !91)
!3649 = !DILocation(line: 0, scope: !3646)
!3650 = !DILocation(line: 0, scope: !3635, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 1081, column: 10, scope: !3646)
!3652 = !DILocation(line: 0, scope: !3614, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 1075, column: 10, scope: !3635, inlinedAt: !3651)
!3654 = !DILocation(line: 1063, column: 10, scope: !3614, inlinedAt: !3653)
!3655 = !DILocation(line: 1081, column: 3, scope: !3646)
!3656 = distinct !DISubprogram(name: "version_etc_arn", scope: !264, file: !264, line: 61, type: !3657, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !3695)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{null, !3659, !91, !91, !91, !3694, !41}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3661, line: 7, baseType: !3662)
!3661 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !790, line: 49, size: 1728, elements: !3663)
!3663 = !{!3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3662, file: !790, line: 51, baseType: !69, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3662, file: !790, line: 54, baseType: !67, size: 64, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3662, file: !790, line: 55, baseType: !67, size: 64, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3662, file: !790, line: 56, baseType: !67, size: 64, offset: 192)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3662, file: !790, line: 57, baseType: !67, size: 64, offset: 256)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3662, file: !790, line: 58, baseType: !67, size: 64, offset: 320)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3662, file: !790, line: 59, baseType: !67, size: 64, offset: 384)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3662, file: !790, line: 60, baseType: !67, size: 64, offset: 448)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3662, file: !790, line: 61, baseType: !67, size: 64, offset: 512)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3662, file: !790, line: 64, baseType: !67, size: 64, offset: 576)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3662, file: !790, line: 65, baseType: !67, size: 64, offset: 640)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3662, file: !790, line: 66, baseType: !67, size: 64, offset: 704)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3662, file: !790, line: 68, baseType: !805, size: 64, offset: 768)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3662, file: !790, line: 70, baseType: !3678, size: 64, offset: 832)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3662, file: !790, line: 72, baseType: !69, size: 32, offset: 896)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3662, file: !790, line: 73, baseType: !69, size: 32, offset: 928)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3662, file: !790, line: 74, baseType: !811, size: 64, offset: 960)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3662, file: !790, line: 77, baseType: !70, size: 16, offset: 1024)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3662, file: !790, line: 78, baseType: !816, size: 8, offset: 1040)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3662, file: !790, line: 79, baseType: !818, size: 8, offset: 1048)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3662, file: !790, line: 81, baseType: !820, size: 64, offset: 1088)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3662, file: !790, line: 89, baseType: !823, size: 64, offset: 1152)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3662, file: !790, line: 91, baseType: !825, size: 64, offset: 1216)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3662, file: !790, line: 92, baseType: !828, size: 64, offset: 1280)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3662, file: !790, line: 93, baseType: !3678, size: 64, offset: 1344)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3662, file: !790, line: 94, baseType: !39, size: 64, offset: 1408)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3662, file: !790, line: 95, baseType: !41, size: 64, offset: 1472)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3662, file: !790, line: 96, baseType: !69, size: 32, offset: 1536)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3662, file: !790, line: 98, baseType: !835, size: 160, offset: 1568)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!3695 = !{!3696, !3697, !3698, !3699, !3700, !3701}
!3696 = !DILocalVariable(name: "stream", arg: 1, scope: !3656, file: !264, line: 61, type: !3659)
!3697 = !DILocalVariable(name: "command_name", arg: 2, scope: !3656, file: !264, line: 62, type: !91)
!3698 = !DILocalVariable(name: "package", arg: 3, scope: !3656, file: !264, line: 62, type: !91)
!3699 = !DILocalVariable(name: "version", arg: 4, scope: !3656, file: !264, line: 63, type: !91)
!3700 = !DILocalVariable(name: "authors", arg: 5, scope: !3656, file: !264, line: 64, type: !3694)
!3701 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3656, file: !264, line: 64, type: !41)
!3702 = !DILocation(line: 0, scope: !3656)
!3703 = !DILocation(line: 66, column: 7, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3656, file: !264, line: 66, column: 7)
!3705 = !DILocation(line: 66, column: 7, scope: !3656)
!3706 = !DILocation(line: 67, column: 5, scope: !3704)
!3707 = !DILocation(line: 69, column: 5, scope: !3704)
!3708 = !DILocation(line: 83, column: 3, scope: !3656)
!3709 = !DILocation(line: 85, column: 3, scope: !3656)
!3710 = !DILocation(line: 88, column: 3, scope: !3656)
!3711 = !DILocation(line: 95, column: 3, scope: !3656)
!3712 = !DILocation(line: 97, column: 3, scope: !3656)
!3713 = !DILocation(line: 105, column: 7, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3656, file: !264, line: 98, column: 5)
!3715 = !DILocation(line: 106, column: 7, scope: !3714)
!3716 = !DILocation(line: 109, column: 7, scope: !3714)
!3717 = !DILocation(line: 110, column: 7, scope: !3714)
!3718 = !DILocation(line: 113, column: 7, scope: !3714)
!3719 = !DILocation(line: 115, column: 7, scope: !3714)
!3720 = !DILocation(line: 120, column: 7, scope: !3714)
!3721 = !DILocation(line: 122, column: 7, scope: !3714)
!3722 = !DILocation(line: 127, column: 7, scope: !3714)
!3723 = !DILocation(line: 129, column: 7, scope: !3714)
!3724 = !DILocation(line: 134, column: 7, scope: !3714)
!3725 = !DILocation(line: 137, column: 7, scope: !3714)
!3726 = !DILocation(line: 142, column: 7, scope: !3714)
!3727 = !DILocation(line: 145, column: 7, scope: !3714)
!3728 = !DILocation(line: 150, column: 7, scope: !3714)
!3729 = !DILocation(line: 154, column: 7, scope: !3714)
!3730 = !DILocation(line: 159, column: 7, scope: !3714)
!3731 = !DILocation(line: 163, column: 7, scope: !3714)
!3732 = !DILocation(line: 170, column: 7, scope: !3714)
!3733 = !DILocation(line: 174, column: 7, scope: !3714)
!3734 = !DILocation(line: 176, column: 1, scope: !3656)
!3735 = distinct !DISubprogram(name: "version_etc_ar", scope: !264, file: !264, line: 183, type: !3736, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{null, !3659, !91, !91, !91, !3694}
!3738 = !{!3739, !3740, !3741, !3742, !3743, !3744}
!3739 = !DILocalVariable(name: "stream", arg: 1, scope: !3735, file: !264, line: 183, type: !3659)
!3740 = !DILocalVariable(name: "command_name", arg: 2, scope: !3735, file: !264, line: 184, type: !91)
!3741 = !DILocalVariable(name: "package", arg: 3, scope: !3735, file: !264, line: 184, type: !91)
!3742 = !DILocalVariable(name: "version", arg: 4, scope: !3735, file: !264, line: 185, type: !91)
!3743 = !DILocalVariable(name: "authors", arg: 5, scope: !3735, file: !264, line: 185, type: !3694)
!3744 = !DILocalVariable(name: "n_authors", scope: !3735, file: !264, line: 187, type: !41)
!3745 = !DILocation(line: 0, scope: !3735)
!3746 = !DILocation(line: 189, column: 8, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3735, file: !264, line: 189, column: 3)
!3748 = !DILocation(line: 0, scope: !3747)
!3749 = !DILocation(line: 189, column: 23, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3747, file: !264, line: 189, column: 3)
!3751 = !DILocation(line: 189, column: 3, scope: !3747)
!3752 = !DILocation(line: 189, column: 52, scope: !3750)
!3753 = distinct !{!3753, !3751, !3754, !760}
!3754 = !DILocation(line: 190, column: 5, scope: !3747)
!3755 = !DILocation(line: 191, column: 3, scope: !3735)
!3756 = !DILocation(line: 192, column: 1, scope: !3735)
!3757 = distinct !DISubprogram(name: "version_etc_va", scope: !264, file: !264, line: 199, type: !3758, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !3767)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{null, !3659, !91, !91, !91, !3760}
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3762)
!3762 = !{!3763, !3764, !3765, !3766}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3761, file: !264, line: 192, baseType: !7, size: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3761, file: !264, line: 192, baseType: !7, size: 32, offset: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3761, file: !264, line: 192, baseType: !39, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3761, file: !264, line: 192, baseType: !39, size: 64, offset: 128)
!3767 = !{!3768, !3769, !3770, !3771, !3772, !3773, !3774}
!3768 = !DILocalVariable(name: "stream", arg: 1, scope: !3757, file: !264, line: 199, type: !3659)
!3769 = !DILocalVariable(name: "command_name", arg: 2, scope: !3757, file: !264, line: 200, type: !91)
!3770 = !DILocalVariable(name: "package", arg: 3, scope: !3757, file: !264, line: 200, type: !91)
!3771 = !DILocalVariable(name: "version", arg: 4, scope: !3757, file: !264, line: 201, type: !91)
!3772 = !DILocalVariable(name: "authors", arg: 5, scope: !3757, file: !264, line: 201, type: !3760)
!3773 = !DILocalVariable(name: "n_authors", scope: !3757, file: !264, line: 203, type: !41)
!3774 = !DILocalVariable(name: "authtab", scope: !3757, file: !264, line: 204, type: !3775)
!3775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 640, elements: !201)
!3776 = !DILocation(line: 0, scope: !3757)
!3777 = !DILocation(line: 204, column: 3, scope: !3757)
!3778 = !DILocation(line: 204, column: 15, scope: !3757)
!3779 = !DILocation(line: 208, column: 35, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3781, file: !264, line: 206, column: 3)
!3781 = distinct !DILexicalBlock(scope: !3757, file: !264, line: 206, column: 3)
!3782 = !DILocation(line: 208, column: 14, scope: !3780)
!3783 = !DILocation(line: 208, column: 33, scope: !3780)
!3784 = !DILocation(line: 208, column: 67, scope: !3780)
!3785 = !DILocation(line: 206, column: 3, scope: !3781)
!3786 = !DILocation(line: 0, scope: !3781)
!3787 = !DILocation(line: 211, column: 3, scope: !3757)
!3788 = !DILocation(line: 213, column: 1, scope: !3757)
!3789 = distinct !DISubprogram(name: "version_etc", scope: !264, file: !264, line: 230, type: !3790, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !3792)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !3659, !91, !91, !91, null}
!3792 = !{!3793, !3794, !3795, !3796, !3797}
!3793 = !DILocalVariable(name: "stream", arg: 1, scope: !3789, file: !264, line: 230, type: !3659)
!3794 = !DILocalVariable(name: "command_name", arg: 2, scope: !3789, file: !264, line: 231, type: !91)
!3795 = !DILocalVariable(name: "package", arg: 3, scope: !3789, file: !264, line: 231, type: !91)
!3796 = !DILocalVariable(name: "version", arg: 4, scope: !3789, file: !264, line: 232, type: !91)
!3797 = !DILocalVariable(name: "authors", scope: !3789, file: !264, line: 234, type: !3798)
!3798 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !785, line: 52, baseType: !3799)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3800, line: 32, baseType: !3801)
!3800 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !264, baseType: !3802)
!3802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3761, size: 192, elements: !106)
!3803 = !DILocation(line: 0, scope: !3789)
!3804 = !DILocation(line: 234, column: 3, scope: !3789)
!3805 = !DILocation(line: 234, column: 11, scope: !3789)
!3806 = !DILocation(line: 236, column: 3, scope: !3789)
!3807 = !DILocation(line: 237, column: 3, scope: !3789)
!3808 = !DILocation(line: 238, column: 3, scope: !3789)
!3809 = !DILocation(line: 239, column: 1, scope: !3789)
!3810 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !264, file: !264, line: 242, type: !713, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !164)
!3811 = !DILocation(line: 244, column: 3, scope: !3810)
!3812 = !DILocation(line: 249, column: 3, scope: !3810)
!3813 = !DILocation(line: 255, column: 3, scope: !3810)
!3814 = !DILocation(line: 260, column: 3, scope: !3810)
!3815 = !DILocation(line: 262, column: 1, scope: !3810)
!3816 = distinct !DISubprogram(name: "xnmalloc", scope: !35, file: !35, line: 99, type: !3817, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !3819)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!39, !41, !41}
!3819 = !{!3820, !3821}
!3820 = !DILocalVariable(name: "n", arg: 1, scope: !3816, file: !35, line: 99, type: !41)
!3821 = !DILocalVariable(name: "s", arg: 2, scope: !3816, file: !35, line: 99, type: !41)
!3822 = !DILocation(line: 0, scope: !3816)
!3823 = !DILocation(line: 101, column: 7, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3816, file: !35, line: 101, column: 7)
!3825 = !DILocation(line: 101, column: 7, scope: !3816)
!3826 = !DILocation(line: 102, column: 5, scope: !3824)
!3827 = !DILocation(line: 103, column: 21, scope: !3816)
!3828 = !DILocalVariable(name: "n", arg: 1, scope: !3829, file: !271, line: 39, type: !41)
!3829 = distinct !DISubprogram(name: "xmalloc", scope: !271, file: !271, line: 39, type: !3830, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!39, !41}
!3832 = !{!3828, !3833}
!3833 = !DILocalVariable(name: "p", scope: !3829, file: !271, line: 41, type: !39)
!3834 = !DILocation(line: 0, scope: !3829, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 103, column: 10, scope: !3816)
!3836 = !DILocation(line: 41, column: 13, scope: !3829, inlinedAt: !3835)
!3837 = !DILocation(line: 42, column: 8, scope: !3838, inlinedAt: !3835)
!3838 = distinct !DILexicalBlock(scope: !3829, file: !271, line: 42, column: 7)
!3839 = !DILocation(line: 42, column: 10, scope: !3838, inlinedAt: !3835)
!3840 = !DILocation(line: 43, column: 5, scope: !3838, inlinedAt: !3835)
!3841 = !DILocation(line: 103, column: 3, scope: !3816)
!3842 = !DILocation(line: 0, scope: !3829)
!3843 = !DILocation(line: 41, column: 13, scope: !3829)
!3844 = !DILocation(line: 42, column: 8, scope: !3838)
!3845 = !DILocation(line: 42, column: 10, scope: !3838)
!3846 = !DILocation(line: 43, column: 5, scope: !3838)
!3847 = !DILocation(line: 44, column: 3, scope: !3829)
!3848 = distinct !DISubprogram(name: "xnrealloc", scope: !35, file: !35, line: 112, type: !3849, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!39, !39, !41, !41}
!3851 = !{!3852, !3853, !3854}
!3852 = !DILocalVariable(name: "p", arg: 1, scope: !3848, file: !35, line: 112, type: !39)
!3853 = !DILocalVariable(name: "n", arg: 2, scope: !3848, file: !35, line: 112, type: !41)
!3854 = !DILocalVariable(name: "s", arg: 3, scope: !3848, file: !35, line: 112, type: !41)
!3855 = !DILocation(line: 0, scope: !3848)
!3856 = !DILocation(line: 114, column: 7, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3848, file: !35, line: 114, column: 7)
!3858 = !DILocation(line: 114, column: 7, scope: !3848)
!3859 = !DILocation(line: 115, column: 5, scope: !3857)
!3860 = !DILocation(line: 116, column: 25, scope: !3848)
!3861 = !DILocalVariable(name: "p", arg: 1, scope: !3862, file: !271, line: 51, type: !39)
!3862 = distinct !DISubprogram(name: "xrealloc", scope: !271, file: !271, line: 51, type: !3863, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !3865)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!39, !39, !41}
!3865 = !{!3861, !3866}
!3866 = !DILocalVariable(name: "n", arg: 2, scope: !3862, file: !271, line: 51, type: !41)
!3867 = !DILocation(line: 0, scope: !3862, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 116, column: 10, scope: !3848)
!3869 = !DILocation(line: 53, column: 8, scope: !3870, inlinedAt: !3868)
!3870 = distinct !DILexicalBlock(scope: !3862, file: !271, line: 53, column: 7)
!3871 = !DILocation(line: 53, column: 10, scope: !3870, inlinedAt: !3868)
!3872 = !DILocation(line: 57, column: 7, scope: !3873, inlinedAt: !3868)
!3873 = distinct !DILexicalBlock(scope: !3870, file: !271, line: 54, column: 5)
!3874 = !DILocation(line: 58, column: 7, scope: !3873, inlinedAt: !3868)
!3875 = !DILocation(line: 61, column: 7, scope: !3862, inlinedAt: !3868)
!3876 = !DILocation(line: 62, column: 8, scope: !3877, inlinedAt: !3868)
!3877 = distinct !DILexicalBlock(scope: !3862, file: !271, line: 62, column: 7)
!3878 = !DILocation(line: 62, column: 10, scope: !3877, inlinedAt: !3868)
!3879 = !DILocation(line: 63, column: 5, scope: !3877, inlinedAt: !3868)
!3880 = !DILocation(line: 116, column: 3, scope: !3848)
!3881 = !DILocation(line: 0, scope: !3862)
!3882 = !DILocation(line: 53, column: 8, scope: !3870)
!3883 = !DILocation(line: 53, column: 10, scope: !3870)
!3884 = !DILocation(line: 57, column: 7, scope: !3873)
!3885 = !DILocation(line: 58, column: 7, scope: !3873)
!3886 = !DILocation(line: 61, column: 7, scope: !3862)
!3887 = !DILocation(line: 62, column: 8, scope: !3877)
!3888 = !DILocation(line: 62, column: 10, scope: !3877)
!3889 = !DILocation(line: 63, column: 5, scope: !3877)
!3890 = !DILocation(line: 65, column: 1, scope: !3862)
!3891 = !DILocation(line: 0, scope: !274)
!3892 = !DILocation(line: 176, column: 14, scope: !274)
!3893 = !DILocation(line: 178, column: 9, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !274, file: !35, line: 178, column: 7)
!3895 = !DILocation(line: 178, column: 7, scope: !274)
!3896 = !DILocation(line: 180, column: 13, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !35, line: 180, column: 11)
!3898 = distinct !DILexicalBlock(scope: !3894, file: !35, line: 179, column: 5)
!3899 = !DILocation(line: 180, column: 11, scope: !3898)
!3900 = !DILocation(line: 188, column: 30, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3897, file: !35, line: 181, column: 9)
!3902 = !DILocation(line: 189, column: 16, scope: !3901)
!3903 = !DILocation(line: 189, column: 13, scope: !3901)
!3904 = !DILocation(line: 190, column: 9, scope: !3901)
!3905 = !DILocation(line: 191, column: 11, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3898, file: !35, line: 191, column: 11)
!3907 = !DILocation(line: 191, column: 11, scope: !3898)
!3908 = !DILocation(line: 206, column: 7, scope: !274)
!3909 = !DILocation(line: 207, column: 25, scope: !274)
!3910 = !DILocation(line: 0, scope: !3862, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 207, column: 10, scope: !274)
!3912 = !DILocation(line: 53, column: 10, scope: !3870, inlinedAt: !3911)
!3913 = !DILocation(line: 192, column: 9, scope: !3906)
!3914 = !DILocation(line: 200, column: 69, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !35, line: 200, column: 11)
!3916 = distinct !DILexicalBlock(scope: !3894, file: !35, line: 195, column: 5)
!3917 = !DILocation(line: 201, column: 11, scope: !3915)
!3918 = !DILocation(line: 200, column: 11, scope: !3916)
!3919 = !DILocation(line: 202, column: 9, scope: !3915)
!3920 = !DILocation(line: 203, column: 14, scope: !3916)
!3921 = !DILocation(line: 203, column: 18, scope: !3916)
!3922 = !DILocation(line: 203, column: 9, scope: !3916)
!3923 = !DILocation(line: 53, column: 8, scope: !3870, inlinedAt: !3911)
!3924 = !DILocation(line: 57, column: 7, scope: !3873, inlinedAt: !3911)
!3925 = !DILocation(line: 58, column: 7, scope: !3873, inlinedAt: !3911)
!3926 = !DILocation(line: 61, column: 7, scope: !3862, inlinedAt: !3911)
!3927 = !DILocation(line: 62, column: 8, scope: !3877, inlinedAt: !3911)
!3928 = !DILocation(line: 62, column: 10, scope: !3877, inlinedAt: !3911)
!3929 = !DILocation(line: 63, column: 5, scope: !3877, inlinedAt: !3911)
!3930 = !DILocation(line: 207, column: 3, scope: !274)
!3931 = distinct !DISubprogram(name: "xcharalloc", scope: !35, file: !35, line: 216, type: !3071, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !3932)
!3932 = !{!3933}
!3933 = !DILocalVariable(name: "n", arg: 1, scope: !3931, file: !35, line: 216, type: !41)
!3934 = !DILocation(line: 0, scope: !3931)
!3935 = !DILocation(line: 0, scope: !3829, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 218, column: 10, scope: !3931)
!3937 = !DILocation(line: 41, column: 13, scope: !3829, inlinedAt: !3936)
!3938 = !DILocation(line: 42, column: 8, scope: !3838, inlinedAt: !3936)
!3939 = !DILocation(line: 42, column: 10, scope: !3838, inlinedAt: !3936)
!3940 = !DILocation(line: 43, column: 5, scope: !3838, inlinedAt: !3936)
!3941 = !DILocation(line: 218, column: 3, scope: !3931)
!3942 = distinct !DISubprogram(name: "x2realloc", scope: !271, file: !271, line: 74, type: !3943, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!39, !39, !40}
!3945 = !{!3946, !3947}
!3946 = !DILocalVariable(name: "p", arg: 1, scope: !3942, file: !271, line: 74, type: !39)
!3947 = !DILocalVariable(name: "pn", arg: 2, scope: !3942, file: !271, line: 74, type: !40)
!3948 = !DILocation(line: 0, scope: !3942)
!3949 = !DILocation(line: 0, scope: !274, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 76, column: 10, scope: !3942)
!3951 = !DILocation(line: 176, column: 14, scope: !274, inlinedAt: !3950)
!3952 = !DILocation(line: 178, column: 9, scope: !3894, inlinedAt: !3950)
!3953 = !DILocation(line: 178, column: 7, scope: !274, inlinedAt: !3950)
!3954 = !DILocation(line: 180, column: 13, scope: !3897, inlinedAt: !3950)
!3955 = !DILocation(line: 180, column: 11, scope: !3898, inlinedAt: !3950)
!3956 = !DILocation(line: 191, column: 11, scope: !3906, inlinedAt: !3950)
!3957 = !DILocation(line: 191, column: 11, scope: !3898, inlinedAt: !3950)
!3958 = !DILocation(line: 192, column: 9, scope: !3906, inlinedAt: !3950)
!3959 = !DILocation(line: 201, column: 11, scope: !3915, inlinedAt: !3950)
!3960 = !DILocation(line: 200, column: 11, scope: !3916, inlinedAt: !3950)
!3961 = !DILocation(line: 202, column: 9, scope: !3915, inlinedAt: !3950)
!3962 = !DILocation(line: 203, column: 14, scope: !3916, inlinedAt: !3950)
!3963 = !DILocation(line: 203, column: 18, scope: !3916, inlinedAt: !3950)
!3964 = !DILocation(line: 203, column: 9, scope: !3916, inlinedAt: !3950)
!3965 = !DILocation(line: 0, scope: !3862, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 207, column: 10, scope: !274, inlinedAt: !3950)
!3967 = !DILocation(line: 53, column: 10, scope: !3870, inlinedAt: !3966)
!3968 = !DILocation(line: 206, column: 7, scope: !274, inlinedAt: !3950)
!3969 = !DILocation(line: 61, column: 7, scope: !3862, inlinedAt: !3966)
!3970 = !DILocation(line: 62, column: 8, scope: !3877, inlinedAt: !3966)
!3971 = !DILocation(line: 62, column: 10, scope: !3877, inlinedAt: !3966)
!3972 = !DILocation(line: 63, column: 5, scope: !3877, inlinedAt: !3966)
!3973 = !DILocation(line: 76, column: 3, scope: !3942)
!3974 = distinct !DISubprogram(name: "xzalloc", scope: !271, file: !271, line: 84, type: !3830, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !3975)
!3975 = !{!3976}
!3976 = !DILocalVariable(name: "n", arg: 1, scope: !3974, file: !271, line: 84, type: !41)
!3977 = !DILocation(line: 0, scope: !3974)
!3978 = !DILocalVariable(name: "n", arg: 1, scope: !3979, file: !271, line: 93, type: !41)
!3979 = distinct !DISubprogram(name: "xcalloc", scope: !271, file: !271, line: 93, type: !3817, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !3980)
!3980 = !{!3978, !3981, !3982}
!3981 = !DILocalVariable(name: "s", arg: 2, scope: !3979, file: !271, line: 93, type: !41)
!3982 = !DILocalVariable(name: "p", scope: !3979, file: !271, line: 95, type: !39)
!3983 = !DILocation(line: 0, scope: !3979, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 86, column: 10, scope: !3974)
!3985 = !DILocation(line: 100, column: 7, scope: !3986, inlinedAt: !3984)
!3986 = distinct !DILexicalBlock(scope: !3979, file: !271, line: 100, column: 7)
!3987 = !DILocation(line: 101, column: 7, scope: !3986, inlinedAt: !3984)
!3988 = !DILocation(line: 101, column: 18, scope: !3986, inlinedAt: !3984)
!3989 = !DILocation(line: 101, column: 16, scope: !3986, inlinedAt: !3984)
!3990 = !DILocation(line: 100, column: 7, scope: !3979, inlinedAt: !3984)
!3991 = !DILocation(line: 102, column: 5, scope: !3986, inlinedAt: !3984)
!3992 = !DILocation(line: 86, column: 3, scope: !3974)
!3993 = !DILocation(line: 0, scope: !3979)
!3994 = !DILocation(line: 100, column: 7, scope: !3986)
!3995 = !DILocation(line: 101, column: 7, scope: !3986)
!3996 = !DILocation(line: 101, column: 18, scope: !3986)
!3997 = !DILocation(line: 101, column: 16, scope: !3986)
!3998 = !DILocation(line: 100, column: 7, scope: !3979)
!3999 = !DILocation(line: 102, column: 5, scope: !3986)
!4000 = !DILocation(line: 103, column: 3, scope: !3979)
!4001 = distinct !DISubprogram(name: "xmemdup", scope: !271, file: !271, line: 111, type: !4002, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !4004)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!39, !1864, !41}
!4004 = !{!4005, !4006}
!4005 = !DILocalVariable(name: "p", arg: 1, scope: !4001, file: !271, line: 111, type: !1864)
!4006 = !DILocalVariable(name: "s", arg: 2, scope: !4001, file: !271, line: 111, type: !41)
!4007 = !DILocation(line: 0, scope: !4001)
!4008 = !DILocation(line: 0, scope: !3829, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 113, column: 18, scope: !4001)
!4010 = !DILocation(line: 41, column: 13, scope: !3829, inlinedAt: !4009)
!4011 = !DILocation(line: 42, column: 8, scope: !3838, inlinedAt: !4009)
!4012 = !DILocation(line: 42, column: 10, scope: !3838, inlinedAt: !4009)
!4013 = !DILocation(line: 43, column: 5, scope: !3838, inlinedAt: !4009)
!4014 = !DILocalVariable(name: "__dest", arg: 1, scope: !4015, file: !1194, line: 26, type: !1862)
!4015 = distinct !DISubprogram(name: "memcpy", scope: !1194, file: !1194, line: 26, type: !1860, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !4016)
!4016 = !{!4014, !4017, !4018}
!4017 = !DILocalVariable(name: "__src", arg: 2, scope: !4015, file: !1194, line: 26, type: !1863)
!4018 = !DILocalVariable(name: "__len", arg: 3, scope: !4015, file: !1194, line: 26, type: !41)
!4019 = !DILocation(line: 0, scope: !4015, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 113, column: 10, scope: !4001)
!4021 = !DILocation(line: 29, column: 10, scope: !4015, inlinedAt: !4020)
!4022 = !DILocation(line: 113, column: 3, scope: !4001)
!4023 = distinct !DISubprogram(name: "xstrdup", scope: !271, file: !271, line: 119, type: !1674, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !4024)
!4024 = !{!4025}
!4025 = !DILocalVariable(name: "string", arg: 1, scope: !4023, file: !271, line: 119, type: !91)
!4026 = !DILocation(line: 0, scope: !4023)
!4027 = !DILocation(line: 121, column: 27, scope: !4023)
!4028 = !DILocation(line: 121, column: 43, scope: !4023)
!4029 = !DILocation(line: 0, scope: !4001, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 121, column: 10, scope: !4023)
!4031 = !DILocation(line: 0, scope: !3829, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 113, column: 18, scope: !4001, inlinedAt: !4030)
!4033 = !DILocation(line: 41, column: 13, scope: !3829, inlinedAt: !4032)
!4034 = !DILocation(line: 42, column: 8, scope: !3838, inlinedAt: !4032)
!4035 = !DILocation(line: 42, column: 10, scope: !3838, inlinedAt: !4032)
!4036 = !DILocation(line: 43, column: 5, scope: !3838, inlinedAt: !4032)
!4037 = !DILocation(line: 0, scope: !4015, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 113, column: 10, scope: !4001, inlinedAt: !4030)
!4039 = !DILocation(line: 29, column: 10, scope: !4015, inlinedAt: !4038)
!4040 = !DILocation(line: 121, column: 3, scope: !4023)
!4041 = distinct !DISubprogram(name: "xalloc_die", scope: !282, file: !282, line: 32, type: !713, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !281, retainedNodes: !164)
!4042 = !DILocation(line: 34, column: 10, scope: !4041)
!4043 = !DILocation(line: 34, column: 33, scope: !4041)
!4044 = !DILocation(line: 34, column: 3, scope: !4041)
!4045 = !DILocation(line: 40, column: 3, scope: !4041)
!4046 = distinct !DISubprogram(name: "rpl_calloc", scope: !284, file: !284, line: 42, type: !3817, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !4047)
!4047 = !{!4048, !4049, !4050, !4051}
!4048 = !DILocalVariable(name: "n", arg: 1, scope: !4046, file: !284, line: 42, type: !41)
!4049 = !DILocalVariable(name: "s", arg: 2, scope: !4046, file: !284, line: 42, type: !41)
!4050 = !DILocalVariable(name: "result", scope: !4046, file: !284, line: 44, type: !39)
!4051 = !DILocalVariable(name: "bytes", scope: !4052, file: !284, line: 56, type: !41)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !284, line: 53, column: 5)
!4053 = distinct !DILexicalBlock(scope: !4046, file: !284, line: 47, column: 7)
!4054 = !DILocation(line: 0, scope: !4046)
!4055 = !DILocation(line: 47, column: 9, scope: !4053)
!4056 = !DILocation(line: 47, column: 14, scope: !4053)
!4057 = !DILocation(line: 0, scope: !4052)
!4058 = !DILocation(line: 57, column: 21, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4052, file: !284, line: 57, column: 11)
!4060 = !DILocation(line: 57, column: 11, scope: !4052)
!4061 = !DILocation(line: 59, column: 11, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4059, file: !284, line: 58, column: 9)
!4063 = !DILocation(line: 59, column: 17, scope: !4062)
!4064 = !DILocation(line: 65, column: 12, scope: !4046)
!4065 = !DILocation(line: 72, column: 3, scope: !4046)
!4066 = !DILocation(line: 73, column: 1, scope: !4046)
!4067 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !286, file: !286, line: 86, type: !4068, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !4082)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!41, !4070, !91, !41, !4071}
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2354, line: 6, baseType: !4073)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2356, line: 21, baseType: !4074)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2356, line: 13, size: 64, elements: !4075)
!4075 = !{!4076, !4077}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4074, file: !2356, line: 15, baseType: !69, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4074, file: !2356, line: 20, baseType: !4078, size: 32, offset: 32)
!4078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4074, file: !2356, line: 16, size: 32, elements: !4079)
!4079 = !{!4080, !4081}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4078, file: !2356, line: 18, baseType: !7, size: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4078, file: !2356, line: 19, baseType: !2365, size: 32)
!4082 = !{!4083, !4084, !4085, !4086, !4087, !4088, !4089}
!4083 = !DILocalVariable(name: "pwc", arg: 1, scope: !4067, file: !286, line: 86, type: !4070)
!4084 = !DILocalVariable(name: "s", arg: 2, scope: !4067, file: !286, line: 86, type: !91)
!4085 = !DILocalVariable(name: "n", arg: 3, scope: !4067, file: !286, line: 86, type: !41)
!4086 = !DILocalVariable(name: "ps", arg: 4, scope: !4067, file: !286, line: 86, type: !4071)
!4087 = !DILocalVariable(name: "ret", scope: !4067, file: !286, line: 88, type: !41)
!4088 = !DILocalVariable(name: "wc", scope: !4067, file: !286, line: 89, type: !2370)
!4089 = !DILocalVariable(name: "uc", scope: !4090, file: !286, line: 156, type: !2232)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !286, line: 155, column: 5)
!4091 = distinct !DILexicalBlock(scope: !4067, file: !286, line: 154, column: 7)
!4092 = !DILocation(line: 0, scope: !4067)
!4093 = !DILocation(line: 89, column: 3, scope: !4067)
!4094 = !DILocation(line: 105, column: 9, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4067, file: !286, line: 105, column: 7)
!4096 = !DILocation(line: 105, column: 7, scope: !4067)
!4097 = !DILocation(line: 145, column: 9, scope: !4067)
!4098 = !DILocation(line: 154, column: 19, scope: !4091)
!4099 = !DILocation(line: 154, column: 26, scope: !4091)
!4100 = !DILocation(line: 154, column: 41, scope: !4091)
!4101 = !DILocation(line: 154, column: 7, scope: !4067)
!4102 = !DILocation(line: 156, column: 26, scope: !4090)
!4103 = !DILocation(line: 0, scope: !4090)
!4104 = !DILocation(line: 157, column: 14, scope: !4090)
!4105 = !DILocation(line: 157, column: 12, scope: !4090)
!4106 = !DILocation(line: 163, column: 1, scope: !4067)
!4107 = !DISubprogram(name: "mbrtowc", scope: !3031, file: !3031, line: 296, type: !4108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!43, !129, !91, !43, !4110}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4111 = distinct !DISubprogram(name: "str2sig", scope: !248, file: !248, line: 304, type: !4112, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !4114)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!69, !91, !129}
!4114 = !{!4115, !4116}
!4115 = !DILocalVariable(name: "signame", arg: 1, scope: !4111, file: !248, line: 304, type: !91)
!4116 = !DILocalVariable(name: "signum", arg: 2, scope: !4111, file: !248, line: 304, type: !129)
!4117 = !DILocation(line: 0, scope: !4111)
!4118 = !DILocalVariable(name: "signame", arg: 1, scope: !4119, file: !248, line: 261, type: !91)
!4119 = distinct !DISubprogram(name: "str2signum", scope: !248, file: !248, line: 261, type: !1878, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !4120)
!4120 = !{!4118, !4121, !4124, !4125, !4127, !4129, !4130, !4131, !4134}
!4121 = !DILocalVariable(name: "endp", scope: !4122, file: !248, line: 265, type: !67)
!4122 = distinct !DILexicalBlock(scope: !4123, file: !248, line: 264, column: 5)
!4123 = distinct !DILexicalBlock(scope: !4119, file: !248, line: 263, column: 7)
!4124 = !DILocalVariable(name: "n", scope: !4122, file: !248, line: 266, type: !813)
!4125 = !DILocalVariable(name: "i", scope: !4126, file: !248, line: 272, type: !7)
!4126 = distinct !DILexicalBlock(scope: !4123, file: !248, line: 271, column: 5)
!4127 = !DILocalVariable(name: "endp", scope: !4128, file: !248, line: 278, type: !67)
!4128 = distinct !DILexicalBlock(scope: !4126, file: !248, line: 277, column: 7)
!4129 = !DILocalVariable(name: "rtmin", scope: !4128, file: !248, line: 279, type: !69)
!4130 = !DILocalVariable(name: "rtmax", scope: !4128, file: !248, line: 280, type: !69)
!4131 = !DILocalVariable(name: "n", scope: !4132, file: !248, line: 284, type: !813)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !248, line: 283, column: 11)
!4133 = distinct !DILexicalBlock(scope: !4128, file: !248, line: 282, column: 13)
!4134 = !DILocalVariable(name: "n", scope: !4135, file: !248, line: 290, type: !813)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !248, line: 289, column: 11)
!4136 = distinct !DILexicalBlock(scope: !4133, file: !248, line: 288, column: 18)
!4137 = !DILocation(line: 0, scope: !4119, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 306, column: 13, scope: !4111)
!4139 = !DILocation(line: 263, column: 7, scope: !4123, inlinedAt: !4138)
!4140 = !DILocation(line: 263, column: 7, scope: !4119, inlinedAt: !4138)
!4141 = !DILocation(line: 265, column: 7, scope: !4122, inlinedAt: !4138)
!4142 = !DILocation(line: 0, scope: !4122, inlinedAt: !4138)
!4143 = !DILocation(line: 266, column: 20, scope: !4122, inlinedAt: !4138)
!4144 = !DILocation(line: 267, column: 14, scope: !4145, inlinedAt: !4138)
!4145 = distinct !DILexicalBlock(scope: !4122, file: !248, line: 267, column: 11)
!4146 = !DILocation(line: 267, column: 13, scope: !4145, inlinedAt: !4138)
!4147 = !DILocation(line: 267, column: 19, scope: !4145, inlinedAt: !4138)
!4148 = !DILocation(line: 269, column: 5, scope: !4123, inlinedAt: !4138)
!4149 = !DILocation(line: 273, column: 41, scope: !4150, inlinedAt: !4138)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !248, line: 273, column: 7)
!4151 = distinct !DILexicalBlock(scope: !4126, file: !248, line: 273, column: 7)
!4152 = !DILocation(line: 0, scope: !4126, inlinedAt: !4138)
!4153 = !DILocation(line: 273, column: 21, scope: !4150, inlinedAt: !4138)
!4154 = !DILocation(line: 273, column: 7, scope: !4151, inlinedAt: !4138)
!4155 = distinct !{!4155, !4154, !4156, !760}
!4156 = !DILocation(line: 275, column: 35, scope: !4151, inlinedAt: !4138)
!4157 = !DILocation(line: 274, column: 21, scope: !4158, inlinedAt: !4138)
!4158 = distinct !DILexicalBlock(scope: !4150, file: !248, line: 274, column: 13)
!4159 = !DILocation(line: 274, column: 13, scope: !4158, inlinedAt: !4138)
!4160 = !DILocation(line: 274, column: 53, scope: !4158, inlinedAt: !4138)
!4161 = !DILocation(line: 274, column: 13, scope: !4150, inlinedAt: !4138)
!4162 = !DILocation(line: 273, column: 19, scope: !4150, inlinedAt: !4138)
!4163 = !DILocation(line: 275, column: 35, scope: !4158, inlinedAt: !4138)
!4164 = !{!4165, !980, i64 0}
!4165 = !{!"numname", !980, i64 0, !706, i64 4}
!4166 = !DILocation(line: 278, column: 9, scope: !4128, inlinedAt: !4138)
!4167 = !DILocation(line: 279, column: 21, scope: !4128, inlinedAt: !4138)
!4168 = !DILocation(line: 0, scope: !4128, inlinedAt: !4138)
!4169 = !DILocation(line: 280, column: 21, scope: !4128, inlinedAt: !4138)
!4170 = !DILocation(line: 282, column: 15, scope: !4133, inlinedAt: !4138)
!4171 = !DILocation(line: 282, column: 23, scope: !4133, inlinedAt: !4138)
!4172 = !DILocation(line: 282, column: 26, scope: !4133, inlinedAt: !4138)
!4173 = !DILocation(line: 282, column: 56, scope: !4133, inlinedAt: !4138)
!4174 = !DILocation(line: 282, column: 13, scope: !4128, inlinedAt: !4138)
!4175 = !DILocation(line: 284, column: 42, scope: !4132, inlinedAt: !4138)
!4176 = !DILocation(line: 284, column: 26, scope: !4132, inlinedAt: !4138)
!4177 = !DILocation(line: 0, scope: !4132, inlinedAt: !4138)
!4178 = !DILocation(line: 285, column: 20, scope: !4179, inlinedAt: !4138)
!4179 = distinct !DILexicalBlock(scope: !4132, file: !248, line: 285, column: 17)
!4180 = !DILocation(line: 285, column: 19, scope: !4179, inlinedAt: !4138)
!4181 = !DILocation(line: 285, column: 25, scope: !4179, inlinedAt: !4138)
!4182 = !DILocation(line: 285, column: 49, scope: !4179, inlinedAt: !4138)
!4183 = !DILocation(line: 285, column: 43, scope: !4179, inlinedAt: !4138)
!4184 = !DILocation(line: 285, column: 40, scope: !4179, inlinedAt: !4138)
!4185 = !DILocation(line: 285, column: 17, scope: !4132, inlinedAt: !4138)
!4186 = !DILocation(line: 288, column: 20, scope: !4136, inlinedAt: !4138)
!4187 = !DILocation(line: 288, column: 28, scope: !4136, inlinedAt: !4138)
!4188 = !DILocation(line: 288, column: 31, scope: !4136, inlinedAt: !4138)
!4189 = !DILocation(line: 288, column: 61, scope: !4136, inlinedAt: !4138)
!4190 = !DILocation(line: 288, column: 18, scope: !4133, inlinedAt: !4138)
!4191 = !DILocation(line: 290, column: 42, scope: !4135, inlinedAt: !4138)
!4192 = !DILocation(line: 290, column: 26, scope: !4135, inlinedAt: !4138)
!4193 = !DILocation(line: 0, scope: !4135, inlinedAt: !4138)
!4194 = !DILocation(line: 291, column: 20, scope: !4195, inlinedAt: !4138)
!4195 = distinct !DILexicalBlock(scope: !4135, file: !248, line: 291, column: 17)
!4196 = !DILocation(line: 291, column: 19, scope: !4195, inlinedAt: !4138)
!4197 = !DILocation(line: 291, column: 25, scope: !4195, inlinedAt: !4138)
!4198 = !DILocation(line: 291, column: 34, scope: !4195, inlinedAt: !4138)
!4199 = !DILocation(line: 291, column: 28, scope: !4195, inlinedAt: !4138)
!4200 = !DILocation(line: 291, column: 42, scope: !4195, inlinedAt: !4138)
!4201 = !DILocation(line: 291, column: 47, scope: !4195, inlinedAt: !4138)
!4202 = !DILocation(line: 294, column: 7, scope: !4126, inlinedAt: !4138)
!4203 = !DILocation(line: 0, scope: !4133, inlinedAt: !4138)
!4204 = !DILocation(line: 297, column: 3, scope: !4119, inlinedAt: !4138)
!4205 = !DILocation(line: 306, column: 11, scope: !4111)
!4206 = !DILocation(line: 307, column: 10, scope: !4111)
!4207 = !DILocation(line: 307, column: 3, scope: !4111)
!4208 = distinct !DISubprogram(name: "sig2str", scope: !248, file: !248, line: 315, type: !4209, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !4211)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!69, !69, !67}
!4211 = !{!4212, !4213, !4214, !4215, !4217, !4218, !4219}
!4212 = !DILocalVariable(name: "signum", arg: 1, scope: !4208, file: !248, line: 315, type: !69)
!4213 = !DILocalVariable(name: "signame", arg: 2, scope: !4208, file: !248, line: 315, type: !67)
!4214 = !DILocalVariable(name: "i", scope: !4208, file: !248, line: 317, type: !7)
!4215 = !DILocalVariable(name: "rtmin", scope: !4216, file: !248, line: 326, type: !69)
!4216 = distinct !DILexicalBlock(scope: !4208, file: !248, line: 325, column: 3)
!4217 = !DILocalVariable(name: "rtmax", scope: !4216, file: !248, line: 327, type: !69)
!4218 = !DILocalVariable(name: "base", scope: !4216, file: !248, line: 328, type: !69)
!4219 = !DILocalVariable(name: "delta", scope: !4216, file: !248, line: 328, type: !69)
!4220 = !DILocation(line: 0, scope: !4208)
!4221 = !DILocation(line: 318, column: 3, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4208, file: !248, line: 318, column: 3)
!4223 = !DILocation(line: 318, column: 37, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4222, file: !248, line: 318, column: 3)
!4225 = !DILocation(line: 319, column: 26, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4224, file: !248, line: 319, column: 9)
!4227 = !DILocation(line: 319, column: 30, scope: !4226)
!4228 = !DILocation(line: 319, column: 9, scope: !4224)
!4229 = !DILocation(line: 318, column: 15, scope: !4224)
!4230 = !DILocation(line: 321, column: 26, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4226, file: !248, line: 320, column: 7)
!4232 = !DILocalVariable(name: "__dest", arg: 1, scope: !4233, file: !1194, line: 77, type: !1197)
!4233 = distinct !DISubprogram(name: "strcpy", scope: !1194, file: !1194, line: 77, type: !1195, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !4234)
!4234 = !{!4232, !4235}
!4235 = !DILocalVariable(name: "__src", arg: 2, scope: !4233, file: !1194, line: 77, type: !1198)
!4236 = !DILocation(line: 0, scope: !4233, inlinedAt: !4237)
!4237 = distinct !DILocation(line: 321, column: 9, scope: !4231)
!4238 = !DILocation(line: 79, column: 10, scope: !4233, inlinedAt: !4237)
!4239 = !DILocation(line: 322, column: 9, scope: !4231)
!4240 = !DILocation(line: 326, column: 17, scope: !4216)
!4241 = !DILocation(line: 0, scope: !4216)
!4242 = !DILocation(line: 327, column: 17, scope: !4216)
!4243 = !DILocation(line: 330, column: 18, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4216, file: !248, line: 330, column: 9)
!4245 = !DILocation(line: 330, column: 28, scope: !4244)
!4246 = !DILocation(line: 333, column: 34, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4216, file: !248, line: 333, column: 9)
!4248 = !DILocation(line: 333, column: 43, scope: !4247)
!4249 = !DILocation(line: 333, column: 25, scope: !4247)
!4250 = !DILocation(line: 333, column: 16, scope: !4247)
!4251 = !DILocation(line: 0, scope: !4233, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 340, column: 9, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4247, file: !248, line: 339, column: 7)
!4254 = !DILocation(line: 0, scope: !4233, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 335, column: 9, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4247, file: !248, line: 334, column: 7)
!4257 = !DILocation(line: 333, column: 9, scope: !4216)
!4258 = !DILocation(line: 79, column: 10, scope: !4233, inlinedAt: !4255)
!4259 = !DILocation(line: 337, column: 7, scope: !4256)
!4260 = !DILocation(line: 79, column: 10, scope: !4233, inlinedAt: !4252)
!4261 = !DILocation(line: 0, scope: !4247)
!4262 = !DILocation(line: 344, column: 20, scope: !4216)
!4263 = !DILocation(line: 345, column: 15, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4216, file: !248, line: 345, column: 9)
!4265 = !DILocation(line: 345, column: 9, scope: !4216)
!4266 = !DILocation(line: 346, column: 7, scope: !4264)
!4267 = !DILocation(line: 349, column: 1, scope: !4208)
!4268 = !DILocation(line: 318, column: 17, scope: !4224)
!4269 = distinct !{!4269, !4221, !4270, !760}
!4270 = !DILocation(line: 323, column: 7, scope: !4222)
!4271 = distinct !DISubprogram(name: "close_stream", scope: !289, file: !289, line: 56, type: !4272, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !4308)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!69, !4274}
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3661, line: 7, baseType: !4276)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !790, line: 49, size: 1728, elements: !4277)
!4277 = !{!4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4276, file: !790, line: 51, baseType: !69, size: 32)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4276, file: !790, line: 54, baseType: !67, size: 64, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4276, file: !790, line: 55, baseType: !67, size: 64, offset: 128)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4276, file: !790, line: 56, baseType: !67, size: 64, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4276, file: !790, line: 57, baseType: !67, size: 64, offset: 256)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4276, file: !790, line: 58, baseType: !67, size: 64, offset: 320)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4276, file: !790, line: 59, baseType: !67, size: 64, offset: 384)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4276, file: !790, line: 60, baseType: !67, size: 64, offset: 448)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4276, file: !790, line: 61, baseType: !67, size: 64, offset: 512)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4276, file: !790, line: 64, baseType: !67, size: 64, offset: 576)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4276, file: !790, line: 65, baseType: !67, size: 64, offset: 640)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4276, file: !790, line: 66, baseType: !67, size: 64, offset: 704)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4276, file: !790, line: 68, baseType: !805, size: 64, offset: 768)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4276, file: !790, line: 70, baseType: !4292, size: 64, offset: 832)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4276, file: !790, line: 72, baseType: !69, size: 32, offset: 896)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4276, file: !790, line: 73, baseType: !69, size: 32, offset: 928)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4276, file: !790, line: 74, baseType: !811, size: 64, offset: 960)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4276, file: !790, line: 77, baseType: !70, size: 16, offset: 1024)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4276, file: !790, line: 78, baseType: !816, size: 8, offset: 1040)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4276, file: !790, line: 79, baseType: !818, size: 8, offset: 1048)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4276, file: !790, line: 81, baseType: !820, size: 64, offset: 1088)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4276, file: !790, line: 89, baseType: !823, size: 64, offset: 1152)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4276, file: !790, line: 91, baseType: !825, size: 64, offset: 1216)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4276, file: !790, line: 92, baseType: !828, size: 64, offset: 1280)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4276, file: !790, line: 93, baseType: !4292, size: 64, offset: 1344)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4276, file: !790, line: 94, baseType: !39, size: 64, offset: 1408)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4276, file: !790, line: 95, baseType: !41, size: 64, offset: 1472)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4276, file: !790, line: 96, baseType: !69, size: 32, offset: 1536)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4276, file: !790, line: 98, baseType: !835, size: 160, offset: 1568)
!4308 = !{!4309, !4310, !4312, !4313}
!4309 = !DILocalVariable(name: "stream", arg: 1, scope: !4271, file: !289, line: 56, type: !4274)
!4310 = !DILocalVariable(name: "some_pending", scope: !4271, file: !289, line: 58, type: !4311)
!4311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!4312 = !DILocalVariable(name: "prev_fail", scope: !4271, file: !289, line: 59, type: !4311)
!4313 = !DILocalVariable(name: "fclose_fail", scope: !4271, file: !289, line: 60, type: !4311)
!4314 = !DILocation(line: 0, scope: !4271)
!4315 = !DILocation(line: 58, column: 30, scope: !4271)
!4316 = !DILocalVariable(name: "__stream", arg: 1, scope: !4317, file: !4318, line: 135, type: !4274)
!4317 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4318, file: !4318, line: 135, type: !4272, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !4319)
!4318 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4319 = !{!4316}
!4320 = !DILocation(line: 0, scope: !4317, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 59, column: 27, scope: !4271)
!4322 = !DILocation(line: 137, column: 10, scope: !4317, inlinedAt: !4321)
!4323 = !{!4324, !980, i64 0}
!4324 = !{!"_IO_FILE", !980, i64 0, !705, i64 8, !705, i64 16, !705, i64 24, !705, i64 32, !705, i64 40, !705, i64 48, !705, i64 56, !705, i64 64, !705, i64 72, !705, i64 80, !705, i64 88, !705, i64 96, !705, i64 104, !980, i64 112, !980, i64 116, !1008, i64 120, !1081, i64 128, !706, i64 130, !706, i64 131, !705, i64 136, !1008, i64 144, !705, i64 152, !705, i64 160, !705, i64 168, !705, i64 176, !1008, i64 184, !980, i64 192, !706, i64 196}
!4325 = !DILocation(line: 59, column: 43, scope: !4271)
!4326 = !DILocation(line: 60, column: 29, scope: !4271)
!4327 = !DILocation(line: 60, column: 45, scope: !4271)
!4328 = !DILocation(line: 70, column: 17, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4271, file: !289, line: 70, column: 7)
!4330 = !DILocation(line: 58, column: 50, scope: !4271)
!4331 = !DILocation(line: 70, column: 33, scope: !4329)
!4332 = !DILocation(line: 70, column: 53, scope: !4329)
!4333 = !DILocation(line: 70, column: 59, scope: !4329)
!4334 = !DILocation(line: 70, column: 7, scope: !4271)
!4335 = !DILocation(line: 72, column: 11, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4329, file: !289, line: 71, column: 5)
!4337 = !DILocation(line: 73, column: 9, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4336, file: !289, line: 72, column: 11)
!4339 = !DILocation(line: 73, column: 15, scope: !4338)
!4340 = !DILocation(line: 78, column: 1, scope: !4271)
!4341 = distinct !DISubprogram(name: "hard_locale", scope: !291, file: !291, line: 27, type: !1826, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !4342)
!4342 = !{!4343, !4344}
!4343 = !DILocalVariable(name: "category", arg: 1, scope: !4341, file: !291, line: 27, type: !69)
!4344 = !DILocalVariable(name: "locale", scope: !4341, file: !291, line: 29, type: !4345)
!4345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2056, elements: !4346)
!4346 = !{!4347}
!4347 = !DISubrange(count: 257)
!4348 = !DILocation(line: 0, scope: !4341)
!4349 = !DILocation(line: 29, column: 3, scope: !4341)
!4350 = !DILocation(line: 29, column: 8, scope: !4341)
!4351 = !DILocation(line: 31, column: 7, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4341, file: !291, line: 31, column: 7)
!4353 = !DILocation(line: 31, column: 7, scope: !4341)
!4354 = !DILocation(line: 34, column: 12, scope: !4341)
!4355 = !DILocation(line: 34, column: 38, scope: !4341)
!4356 = !DILocation(line: 34, column: 41, scope: !4341)
!4357 = !DILocation(line: 34, column: 66, scope: !4341)
!4358 = !DILocation(line: 35, column: 1, scope: !4341)
!4359 = distinct !DISubprogram(name: "locale_charset", scope: !293, file: !293, line: 831, type: !4360, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !4362)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!91}
!4362 = !{!4363}
!4363 = !DILocalVariable(name: "codeset", scope: !4359, file: !293, line: 833, type: !91)
!4364 = !DILocation(line: 847, column: 13, scope: !4359)
!4365 = !DILocation(line: 0, scope: !4359)
!4366 = !DILocation(line: 911, column: 15, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4359, file: !293, line: 911, column: 7)
!4368 = !DILocation(line: 911, column: 7, scope: !4359)
!4369 = !DILocation(line: 1070, column: 13, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4371, file: !293, line: 1070, column: 13)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !293, line: 1060, column: 7)
!4372 = distinct !DILexicalBlock(scope: !4359, file: !293, line: 1019, column: 3)
!4373 = !DILocation(line: 1070, column: 24, scope: !4370)
!4374 = !DILocation(line: 1070, column: 13, scope: !4371)
!4375 = !DILocation(line: 1158, column: 3, scope: !4359)
!4376 = !DISubprogram(name: "nl_langinfo", scope: !296, file: !296, line: 661, type: !4377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!67, !69}
!4379 = distinct !DISubprogram(name: "setlocale_null_r", scope: !682, file: !682, line: 269, type: !4380, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4382)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!69, !69, !67, !41}
!4382 = !{!4383, !4384, !4385}
!4383 = !DILocalVariable(name: "category", arg: 1, scope: !4379, file: !682, line: 269, type: !69)
!4384 = !DILocalVariable(name: "buf", arg: 2, scope: !4379, file: !682, line: 269, type: !67)
!4385 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4379, file: !682, line: 269, type: !41)
!4386 = !DILocation(line: 0, scope: !4379)
!4387 = !DILocalVariable(name: "category", arg: 1, scope: !4388, file: !682, line: 91, type: !69)
!4388 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !682, file: !682, line: 91, type: !4380, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4389)
!4389 = !{!4387, !4390, !4391, !4392, !4393}
!4390 = !DILocalVariable(name: "buf", arg: 2, scope: !4388, file: !682, line: 91, type: !67)
!4391 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4388, file: !682, line: 91, type: !41)
!4392 = !DILocalVariable(name: "result", scope: !4388, file: !682, line: 140, type: !91)
!4393 = !DILocalVariable(name: "length", scope: !4394, file: !682, line: 154, type: !41)
!4394 = distinct !DILexicalBlock(scope: !4395, file: !682, line: 153, column: 5)
!4395 = distinct !DILexicalBlock(scope: !4388, file: !682, line: 142, column: 7)
!4396 = !DILocation(line: 0, scope: !4388, inlinedAt: !4397)
!4397 = distinct !DILocation(line: 274, column: 10, scope: !4379)
!4398 = !DILocalVariable(name: "category", arg: 1, scope: !4399, file: !682, line: 60, type: !69)
!4399 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !682, file: !682, line: 60, type: !4400, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4402)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!91, !69}
!4402 = !{!4398, !4403}
!4403 = !DILocalVariable(name: "result", scope: !4399, file: !682, line: 62, type: !91)
!4404 = !DILocation(line: 0, scope: !4399, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 140, column: 24, scope: !4388, inlinedAt: !4397)
!4406 = !DILocation(line: 62, column: 24, scope: !4399, inlinedAt: !4405)
!4407 = !DILocation(line: 142, column: 14, scope: !4395, inlinedAt: !4397)
!4408 = !DILocation(line: 142, column: 7, scope: !4388, inlinedAt: !4397)
!4409 = !DILocation(line: 145, column: 19, scope: !4410, inlinedAt: !4397)
!4410 = distinct !DILexicalBlock(scope: !4411, file: !682, line: 145, column: 11)
!4411 = distinct !DILexicalBlock(scope: !4395, file: !682, line: 143, column: 5)
!4412 = !DILocation(line: 145, column: 11, scope: !4411, inlinedAt: !4397)
!4413 = !DILocation(line: 149, column: 16, scope: !4410, inlinedAt: !4397)
!4414 = !DILocation(line: 149, column: 9, scope: !4410, inlinedAt: !4397)
!4415 = !DILocation(line: 154, column: 23, scope: !4394, inlinedAt: !4397)
!4416 = !DILocation(line: 0, scope: !4394, inlinedAt: !4397)
!4417 = !DILocation(line: 155, column: 18, scope: !4418, inlinedAt: !4397)
!4418 = distinct !DILexicalBlock(scope: !4394, file: !682, line: 155, column: 11)
!4419 = !DILocation(line: 155, column: 11, scope: !4394, inlinedAt: !4397)
!4420 = !DILocation(line: 157, column: 39, scope: !4421, inlinedAt: !4397)
!4421 = distinct !DILexicalBlock(scope: !4418, file: !682, line: 156, column: 9)
!4422 = !DILocalVariable(name: "__dest", arg: 1, scope: !4423, file: !1194, line: 26, type: !1862)
!4423 = distinct !DISubprogram(name: "memcpy", scope: !1194, file: !1194, line: 26, type: !1860, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4424)
!4424 = !{!4422, !4425, !4426}
!4425 = !DILocalVariable(name: "__src", arg: 2, scope: !4423, file: !1194, line: 26, type: !1863)
!4426 = !DILocalVariable(name: "__len", arg: 3, scope: !4423, file: !1194, line: 26, type: !41)
!4427 = !DILocation(line: 0, scope: !4423, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 157, column: 11, scope: !4421, inlinedAt: !4397)
!4429 = !DILocation(line: 29, column: 10, scope: !4423, inlinedAt: !4428)
!4430 = !DILocation(line: 158, column: 11, scope: !4421, inlinedAt: !4397)
!4431 = !DILocation(line: 162, column: 23, scope: !4432, inlinedAt: !4397)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !682, line: 162, column: 15)
!4433 = distinct !DILexicalBlock(scope: !4418, file: !682, line: 161, column: 9)
!4434 = !DILocation(line: 162, column: 15, scope: !4433, inlinedAt: !4397)
!4435 = !DILocation(line: 167, column: 44, scope: !4436, inlinedAt: !4397)
!4436 = distinct !DILexicalBlock(scope: !4432, file: !682, line: 163, column: 13)
!4437 = !DILocation(line: 0, scope: !4423, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 167, column: 15, scope: !4436, inlinedAt: !4397)
!4439 = !DILocation(line: 29, column: 10, scope: !4423, inlinedAt: !4438)
!4440 = !DILocation(line: 168, column: 15, scope: !4436, inlinedAt: !4397)
!4441 = !DILocation(line: 168, column: 32, scope: !4436, inlinedAt: !4397)
!4442 = !DILocation(line: 169, column: 13, scope: !4436, inlinedAt: !4397)
!4443 = !DILocation(line: 0, scope: !4395, inlinedAt: !4397)
!4444 = !DILocation(line: 274, column: 3, scope: !4379)
!4445 = distinct !DISubprogram(name: "setlocale_null", scope: !682, file: !682, line: 301, type: !4400, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4446)
!4446 = !{!4447}
!4447 = !DILocalVariable(name: "category", arg: 1, scope: !4445, file: !682, line: 301, type: !69)
!4448 = !DILocation(line: 0, scope: !4445)
!4449 = !DILocation(line: 0, scope: !4399, inlinedAt: !4450)
!4450 = distinct !DILocation(line: 304, column: 10, scope: !4445)
!4451 = !DILocation(line: 62, column: 24, scope: !4399, inlinedAt: !4450)
!4452 = !DILocation(line: 304, column: 3, scope: !4445)
!4453 = distinct !DISubprogram(name: "rpl_fclose", scope: !684, file: !684, line: 58, type: !4454, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4490)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!69, !4456}
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3661, line: 7, baseType: !4458)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !790, line: 49, size: 1728, elements: !4459)
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4458, file: !790, line: 51, baseType: !69, size: 32)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4458, file: !790, line: 54, baseType: !67, size: 64, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4458, file: !790, line: 55, baseType: !67, size: 64, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4458, file: !790, line: 56, baseType: !67, size: 64, offset: 192)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4458, file: !790, line: 57, baseType: !67, size: 64, offset: 256)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4458, file: !790, line: 58, baseType: !67, size: 64, offset: 320)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4458, file: !790, line: 59, baseType: !67, size: 64, offset: 384)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4458, file: !790, line: 60, baseType: !67, size: 64, offset: 448)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4458, file: !790, line: 61, baseType: !67, size: 64, offset: 512)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4458, file: !790, line: 64, baseType: !67, size: 64, offset: 576)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4458, file: !790, line: 65, baseType: !67, size: 64, offset: 640)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4458, file: !790, line: 66, baseType: !67, size: 64, offset: 704)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4458, file: !790, line: 68, baseType: !805, size: 64, offset: 768)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4458, file: !790, line: 70, baseType: !4474, size: 64, offset: 832)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4458, file: !790, line: 72, baseType: !69, size: 32, offset: 896)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4458, file: !790, line: 73, baseType: !69, size: 32, offset: 928)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4458, file: !790, line: 74, baseType: !811, size: 64, offset: 960)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4458, file: !790, line: 77, baseType: !70, size: 16, offset: 1024)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4458, file: !790, line: 78, baseType: !816, size: 8, offset: 1040)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4458, file: !790, line: 79, baseType: !818, size: 8, offset: 1048)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4458, file: !790, line: 81, baseType: !820, size: 64, offset: 1088)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4458, file: !790, line: 89, baseType: !823, size: 64, offset: 1152)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4458, file: !790, line: 91, baseType: !825, size: 64, offset: 1216)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4458, file: !790, line: 92, baseType: !828, size: 64, offset: 1280)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4458, file: !790, line: 93, baseType: !4474, size: 64, offset: 1344)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4458, file: !790, line: 94, baseType: !39, size: 64, offset: 1408)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4458, file: !790, line: 95, baseType: !41, size: 64, offset: 1472)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4458, file: !790, line: 96, baseType: !69, size: 32, offset: 1536)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4458, file: !790, line: 98, baseType: !835, size: 160, offset: 1568)
!4490 = !{!4491, !4492, !4493, !4494}
!4491 = !DILocalVariable(name: "fp", arg: 1, scope: !4453, file: !684, line: 58, type: !4456)
!4492 = !DILocalVariable(name: "saved_errno", scope: !4453, file: !684, line: 60, type: !69)
!4493 = !DILocalVariable(name: "fd", scope: !4453, file: !684, line: 61, type: !69)
!4494 = !DILocalVariable(name: "result", scope: !4453, file: !684, line: 62, type: !69)
!4495 = !DILocation(line: 0, scope: !4453)
!4496 = !DILocation(line: 65, column: 8, scope: !4453)
!4497 = !DILocation(line: 66, column: 10, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4453, file: !684, line: 66, column: 7)
!4499 = !DILocation(line: 66, column: 7, scope: !4453)
!4500 = !DILocation(line: 67, column: 12, scope: !4498)
!4501 = !DILocation(line: 67, column: 5, scope: !4498)
!4502 = !DILocation(line: 72, column: 9, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4453, file: !684, line: 72, column: 7)
!4504 = !DILocation(line: 72, column: 23, scope: !4503)
!4505 = !DILocation(line: 72, column: 33, scope: !4503)
!4506 = !DILocation(line: 72, column: 26, scope: !4503)
!4507 = !DILocation(line: 72, column: 59, scope: !4503)
!4508 = !DILocation(line: 73, column: 7, scope: !4503)
!4509 = !DILocation(line: 73, column: 10, scope: !4503)
!4510 = !DILocation(line: 72, column: 7, scope: !4453)
!4511 = !DILocation(line: 100, column: 12, scope: !4453)
!4512 = !DILocation(line: 105, column: 7, scope: !4453)
!4513 = !DILocation(line: 74, column: 19, scope: !4503)
!4514 = !DILocation(line: 105, column: 19, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4453, file: !684, line: 105, column: 7)
!4516 = !DILocation(line: 107, column: 13, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4515, file: !684, line: 106, column: 5)
!4518 = !DILocation(line: 109, column: 5, scope: !4517)
!4519 = !DILocation(line: 112, column: 1, scope: !4453)
!4520 = !DISubprogram(name: "fileno", scope: !785, file: !785, line: 785, type: !4521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!69, !4474}
!4523 = !DISubprogram(name: "fclose", scope: !785, file: !785, line: 213, type: !4521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!4524 = !DISubprogram(name: "lseek", scope: !1906, file: !1906, line: 334, type: !4525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!813, !69, !813, !69}
!4527 = distinct !DISubprogram(name: "rpl_fflush", scope: !686, file: !686, line: 129, type: !4528, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !4564)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!69, !4530}
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3661, line: 7, baseType: !4532)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !790, line: 49, size: 1728, elements: !4533)
!4533 = !{!4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4532, file: !790, line: 51, baseType: !69, size: 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4532, file: !790, line: 54, baseType: !67, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4532, file: !790, line: 55, baseType: !67, size: 64, offset: 128)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4532, file: !790, line: 56, baseType: !67, size: 64, offset: 192)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4532, file: !790, line: 57, baseType: !67, size: 64, offset: 256)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4532, file: !790, line: 58, baseType: !67, size: 64, offset: 320)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4532, file: !790, line: 59, baseType: !67, size: 64, offset: 384)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4532, file: !790, line: 60, baseType: !67, size: 64, offset: 448)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4532, file: !790, line: 61, baseType: !67, size: 64, offset: 512)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4532, file: !790, line: 64, baseType: !67, size: 64, offset: 576)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4532, file: !790, line: 65, baseType: !67, size: 64, offset: 640)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4532, file: !790, line: 66, baseType: !67, size: 64, offset: 704)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4532, file: !790, line: 68, baseType: !805, size: 64, offset: 768)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4532, file: !790, line: 70, baseType: !4548, size: 64, offset: 832)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4532, file: !790, line: 72, baseType: !69, size: 32, offset: 896)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4532, file: !790, line: 73, baseType: !69, size: 32, offset: 928)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4532, file: !790, line: 74, baseType: !811, size: 64, offset: 960)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4532, file: !790, line: 77, baseType: !70, size: 16, offset: 1024)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4532, file: !790, line: 78, baseType: !816, size: 8, offset: 1040)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4532, file: !790, line: 79, baseType: !818, size: 8, offset: 1048)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4532, file: !790, line: 81, baseType: !820, size: 64, offset: 1088)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4532, file: !790, line: 89, baseType: !823, size: 64, offset: 1152)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4532, file: !790, line: 91, baseType: !825, size: 64, offset: 1216)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4532, file: !790, line: 92, baseType: !828, size: 64, offset: 1280)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4532, file: !790, line: 93, baseType: !4548, size: 64, offset: 1344)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4532, file: !790, line: 94, baseType: !39, size: 64, offset: 1408)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4532, file: !790, line: 95, baseType: !41, size: 64, offset: 1472)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4532, file: !790, line: 96, baseType: !69, size: 32, offset: 1536)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4532, file: !790, line: 98, baseType: !835, size: 160, offset: 1568)
!4564 = !{!4565}
!4565 = !DILocalVariable(name: "stream", arg: 1, scope: !4527, file: !686, line: 129, type: !4530)
!4566 = !DILocation(line: 0, scope: !4527)
!4567 = !DILocation(line: 150, column: 14, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4527, file: !686, line: 150, column: 7)
!4569 = !DILocation(line: 150, column: 22, scope: !4568)
!4570 = !DILocation(line: 150, column: 27, scope: !4568)
!4571 = !DILocation(line: 150, column: 7, scope: !4527)
!4572 = !DILocation(line: 151, column: 12, scope: !4568)
!4573 = !DILocation(line: 151, column: 5, scope: !4568)
!4574 = !DILocalVariable(name: "fp", arg: 1, scope: !4575, file: !686, line: 41, type: !4530)
!4575 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !686, file: !686, line: 41, type: !4576, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !4578)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{null, !4530}
!4578 = !{!4574}
!4579 = !DILocation(line: 0, scope: !4575, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 156, column: 3, scope: !4527)
!4581 = !DILocation(line: 43, column: 11, scope: !4582, inlinedAt: !4580)
!4582 = distinct !DILexicalBlock(scope: !4575, file: !686, line: 43, column: 7)
!4583 = !DILocation(line: 43, column: 18, scope: !4582, inlinedAt: !4580)
!4584 = !DILocation(line: 43, column: 7, scope: !4575, inlinedAt: !4580)
!4585 = !DILocation(line: 45, column: 5, scope: !4582, inlinedAt: !4580)
!4586 = !DILocation(line: 158, column: 10, scope: !4527)
!4587 = !DILocation(line: 158, column: 3, scope: !4527)
!4588 = !DILocation(line: 235, column: 1, scope: !4527)
!4589 = !DISubprogram(name: "fflush", scope: !785, file: !785, line: 218, type: !4590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!69, !4548}
!4592 = distinct !DISubprogram(name: "rpl_fseeko", scope: !688, file: !688, line: 28, type: !4593, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !4630)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!69, !4595, !4629, !69}
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3661, line: 7, baseType: !4597)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !790, line: 49, size: 1728, elements: !4598)
!4598 = !{!4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4597, file: !790, line: 51, baseType: !69, size: 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4597, file: !790, line: 54, baseType: !67, size: 64, offset: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4597, file: !790, line: 55, baseType: !67, size: 64, offset: 128)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4597, file: !790, line: 56, baseType: !67, size: 64, offset: 192)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4597, file: !790, line: 57, baseType: !67, size: 64, offset: 256)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4597, file: !790, line: 58, baseType: !67, size: 64, offset: 320)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4597, file: !790, line: 59, baseType: !67, size: 64, offset: 384)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4597, file: !790, line: 60, baseType: !67, size: 64, offset: 448)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4597, file: !790, line: 61, baseType: !67, size: 64, offset: 512)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4597, file: !790, line: 64, baseType: !67, size: 64, offset: 576)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4597, file: !790, line: 65, baseType: !67, size: 64, offset: 640)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4597, file: !790, line: 66, baseType: !67, size: 64, offset: 704)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4597, file: !790, line: 68, baseType: !805, size: 64, offset: 768)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4597, file: !790, line: 70, baseType: !4613, size: 64, offset: 832)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4597, file: !790, line: 72, baseType: !69, size: 32, offset: 896)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4597, file: !790, line: 73, baseType: !69, size: 32, offset: 928)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4597, file: !790, line: 74, baseType: !811, size: 64, offset: 960)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4597, file: !790, line: 77, baseType: !70, size: 16, offset: 1024)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4597, file: !790, line: 78, baseType: !816, size: 8, offset: 1040)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4597, file: !790, line: 79, baseType: !818, size: 8, offset: 1048)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4597, file: !790, line: 81, baseType: !820, size: 64, offset: 1088)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4597, file: !790, line: 89, baseType: !823, size: 64, offset: 1152)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4597, file: !790, line: 91, baseType: !825, size: 64, offset: 1216)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4597, file: !790, line: 92, baseType: !828, size: 64, offset: 1280)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4597, file: !790, line: 93, baseType: !4613, size: 64, offset: 1344)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4597, file: !790, line: 94, baseType: !39, size: 64, offset: 1408)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4597, file: !790, line: 95, baseType: !41, size: 64, offset: 1472)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4597, file: !790, line: 96, baseType: !69, size: 32, offset: 1536)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4597, file: !790, line: 98, baseType: !835, size: 160, offset: 1568)
!4629 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !785, line: 63, baseType: !811)
!4630 = !{!4631, !4632, !4633, !4634}
!4631 = !DILocalVariable(name: "fp", arg: 1, scope: !4592, file: !688, line: 28, type: !4595)
!4632 = !DILocalVariable(name: "offset", arg: 2, scope: !4592, file: !688, line: 28, type: !4629)
!4633 = !DILocalVariable(name: "whence", arg: 3, scope: !4592, file: !688, line: 28, type: !69)
!4634 = !DILocalVariable(name: "pos", scope: !4635, file: !688, line: 117, type: !4629)
!4635 = distinct !DILexicalBlock(scope: !4636, file: !688, line: 113, column: 5)
!4636 = distinct !DILexicalBlock(scope: !4592, file: !688, line: 52, column: 7)
!4637 = !DILocation(line: 0, scope: !4592)
!4638 = !DILocation(line: 52, column: 11, scope: !4636)
!4639 = !{!4324, !705, i64 16}
!4640 = !DILocation(line: 52, column: 31, scope: !4636)
!4641 = !{!4324, !705, i64 8}
!4642 = !DILocation(line: 52, column: 24, scope: !4636)
!4643 = !DILocation(line: 53, column: 7, scope: !4636)
!4644 = !DILocation(line: 53, column: 14, scope: !4636)
!4645 = !{!4324, !705, i64 40}
!4646 = !DILocation(line: 53, column: 35, scope: !4636)
!4647 = !{!4324, !705, i64 32}
!4648 = !DILocation(line: 53, column: 28, scope: !4636)
!4649 = !DILocation(line: 54, column: 7, scope: !4636)
!4650 = !DILocation(line: 54, column: 14, scope: !4636)
!4651 = !{!4324, !705, i64 72}
!4652 = !DILocation(line: 54, column: 28, scope: !4636)
!4653 = !DILocation(line: 52, column: 7, scope: !4592)
!4654 = !DILocation(line: 117, column: 26, scope: !4635)
!4655 = !DILocation(line: 117, column: 19, scope: !4635)
!4656 = !DILocation(line: 0, scope: !4635)
!4657 = !DILocation(line: 118, column: 15, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4635, file: !688, line: 118, column: 11)
!4659 = !DILocation(line: 118, column: 11, scope: !4635)
!4660 = !DILocation(line: 129, column: 11, scope: !4635)
!4661 = !DILocation(line: 129, column: 18, scope: !4635)
!4662 = !DILocation(line: 130, column: 11, scope: !4635)
!4663 = !DILocation(line: 130, column: 19, scope: !4635)
!4664 = !{!4324, !1008, i64 144}
!4665 = !DILocation(line: 161, column: 7, scope: !4635)
!4666 = !DILocation(line: 163, column: 10, scope: !4592)
!4667 = !DILocation(line: 163, column: 3, scope: !4592)
!4668 = !DILocation(line: 164, column: 1, scope: !4592)
!4669 = !DISubprogram(name: "fseeko", scope: !785, file: !785, line: 712, type: !4670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !164)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!69, !4613, !813, !69}
