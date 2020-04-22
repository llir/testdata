; ModuleID = 'coreutils-8.32/src/timeout.bc'
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
%struct.numname = type { i32, [8 x i8] }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.__sigset_t = type { [16 x i64] }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.itimerspec = type { %struct.timespec, %struct.timespec }
%struct.timespec = type { i64, i64 }
%struct.sigevent = type { %union.sigval, i32, i32, %union.anon.9 }
%union.sigval = type { i8* }
%union.anon.9 = type { %struct.anon.10, [32 x i8] }
%struct.anon.10 = type { void (i8*)*, %union.pthread_attr_t* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.__mbstate_t = type { i32, %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Usage: %s [OPTION] DURATION COMMAND [ARG]...\0A  or:  %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Start COMMAND, and kill it if still running after DURATION.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [732 x i8] c"      --preserve-status\0A                 exit with the same status as COMMAND, even when the\0A                   command times out\0A      --foreground\0A                 when not running timeout directly from a shell prompt,\0A                   allow COMMAND to read from the TTY and get TTY signals;\0A                   in this mode, children of COMMAND will not be timed out\0A  -k, --kill-after=DURATION\0A                 also send a KILL signal if COMMAND is still running\0A                   this long after the initial signal was sent\0A  -s, --signal=SIGNAL\0A                 specify the signal to be sent on timeout;\0A                   SIGNAL may be a name like 'HUP' or a number;\0A                   see 'kill -l' for a list of signals\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"  -v, --verbose  diagnose to stderr any signal sent upon timeout\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [191 x i8] c"\0ADURATION is a floating point number with an optional suffix:\0A's' for seconds (the default), 'm' for minutes, 'h' for hours or 'd' for days.\0AA duration of 0 disables the associated timeout.\0A\00", align 1
@.str.8 = private unnamed_addr constant [415 x i8] c"\0AIf the command times out, and --preserve-status is not set, then exit with\0Astatus 124.  Otherwise, exit with the status of COMMAND.  If no signal\0Ais specified, send the TERM signal upon timeout.  The TERM signal kills\0Aany process that does not block or catch that signal.  It may be necessary\0Ato use the KILL (9) signal, since this signal cannot be caught, in which\0Acase the exit status is 128+9 rather than 124.\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"+k:s:v\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 107 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@kill_after = internal unnamed_addr global double 0.000000e+00, align 8, !dbg !376
@term_signal = internal unnamed_addr global i32 15, align 4, !dbg !386
@verbose = internal unnamed_addr global i1 false, align 1, !dbg !391
@foreground = internal unnamed_addr global i1 false, align 1, !dbg !392
@preserve_status = internal unnamed_addr global i1 false, align 1, !dbg !393
@.str.15 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@command = internal unnamed_addr global i8* null, align 8, !dbg !384
@monitored_pid = internal unnamed_addr global i32 0, align 4, !dbg !372
@.str.16 = private unnamed_addr constant [24 x i8] c"fork system call failed\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"warning: sigprocmask\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"error waiting for command\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"the monitored command dumped core\00", align 1
@timed_out = internal unnamed_addr global i1 false, align 4, !dbg !394
@.str.50 = private unnamed_addr constant [37 x i8] c"warning: disabling core dumps failed\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"unknown status from command (%d)\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"warning: timer_settime\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"warning: timer_create\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"sending signal %s to command %s\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"invalid time interval %s\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"kill-after\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"preserve-status\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1.52 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), align 8, !dbg !395
@.str.55 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !400
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !444
@.str.60 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.61 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.62 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !446
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !452
@.str.71 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.72 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.73 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.75, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.77, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.78, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.79, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.82, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.83, i32 0, i32 0), i8* null], align 16, !dbg !493
@.str.74 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.75 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.76 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.77 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.78 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.79 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.80 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.81 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.82 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.83 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !601
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !607
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !609
@.str.11.84 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.85 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.86 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.87 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.88 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.89 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.90 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !616
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !623
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !611
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !625
@.str.95 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.96 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.97 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.98 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.99 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.100 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.101 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.102 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.103 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.104 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.105 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.106 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.107 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.108 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.109 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.110 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.113 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.114 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.115 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.116 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.117 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.118 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.119 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !631
@.str.1.132 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !639
@.str.142 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.146 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !653
@.str.149 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.154 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.157 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.158 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1372 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1375, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i32 %0, metadata !1374, metadata !DIExpression()), !dbg !1395
  %3 = icmp eq i32 %0, 0, !dbg !1396
  br i1 %3, label %9, label %4, !dbg !1397

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1398, !tbaa !1400
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #20, !dbg !1398
  %7 = load i8*, i8** @program_name, align 8, !dbg !1398, !tbaa !1400
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #20, !dbg !1398
  br label %73, !dbg !1398

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 5) #20, !dbg !1404
  %11 = load i8*, i8** @program_name, align 8, !dbg !1404, !tbaa !1400
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #20, !dbg !1404
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 5) #20, !dbg !1405
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1405, !tbaa !1400
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1405
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #20, !dbg !1406
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1406, !tbaa !1400
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #20, !dbg !1406
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([732 x i8], [732 x i8]* @.str.3, i64 0, i64 0), i32 5) #20, !dbg !1409
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1409, !tbaa !1400
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1409
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 5) #20, !dbg !1410
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1410, !tbaa !1400
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1410
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #20, !dbg !1411
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1411, !tbaa !1400
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1411
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #20, !dbg !1412
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1412, !tbaa !1400
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1412
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i64 0, i64 0), i32 5) #20, !dbg !1413
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1413, !tbaa !1400
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1413
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([415 x i8], [415 x i8]* @.str.8, i64 0, i64 0), i32 5) #20, !dbg !1414
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1414, !tbaa !1400
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !1414
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), metadata !1378, metadata !DIExpression()) #20, !dbg !1415
  %37 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1416
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %37) #20, !dbg !1416
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %37, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #20, !dbg !1391
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), metadata !1379, metadata !DIExpression()) #20, !dbg !1415
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1380, metadata !DIExpression()) #20, !dbg !1415
  %38 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1417
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1380, metadata !DIExpression()) #20, !dbg !1415
  br label %39, !dbg !1418

39:                                               ; preds = %44, %9
  %40 = phi i8* [ %47, %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %41 = phi %struct.infomap* [ %45, %44 ], [ %38, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1380, metadata !DIExpression()) #20, !dbg !1415
  %42 = tail call i32 @strcmp(i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %40) #23, !dbg !1419
  %43 = icmp eq i32 %42, 0, !dbg !1419
  br i1 %43, label %49, label %44, !dbg !1418

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 1, !dbg !1420
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !1380, metadata !DIExpression()) #20, !dbg !1415
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 0, i32 0, !dbg !1421
  %47 = load i8*, i8** %46, align 8, !dbg !1421, !tbaa !1422
  %48 = icmp eq i8* %47, null, !dbg !1424
  br i1 %48, label %49, label %39, !dbg !1425, !llvm.loop !1426

49:                                               ; preds = %44, %39
  %50 = phi %struct.infomap* [ %45, %44 ], [ %41, %39 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %50, metadata !1380, metadata !DIExpression()) #20, !dbg !1415
  call void @llvm.dbg.value(metadata %struct.infomap* %50, metadata !1380, metadata !DIExpression()) #20, !dbg !1415
  %51 = getelementptr inbounds %struct.infomap, %struct.infomap* %50, i64 0, i32 1, !dbg !1427
  %52 = load i8*, i8** %51, align 8, !dbg !1427, !tbaa !1429
  %53 = icmp eq i8* %52, null, !dbg !1430
  %54 = select i1 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %52, !dbg !1431
  call void @llvm.dbg.value(metadata i8* %54, metadata !1379, metadata !DIExpression()) #20, !dbg !1415
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #20, !dbg !1432
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #20, !dbg !1432
  %57 = tail call i8* @setlocale(i32 5, i8* null) #20, !dbg !1433
  call void @llvm.dbg.value(metadata i8* %57, metadata !1387, metadata !DIExpression()) #20, !dbg !1415
  %58 = icmp eq i8* %57, null, !dbg !1434
  br i1 %58, label %66, label %59, !dbg !1436

59:                                               ; preds = %49
  %60 = tail call i32 @strncmp(i8* nonnull %57, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #23, !dbg !1437
  %61 = icmp eq i32 %60, 0, !dbg !1437
  br i1 %61, label %66, label %62, !dbg !1438

62:                                               ; preds = %59
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #20, !dbg !1439
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1439, !tbaa !1400
  %65 = tail call i32 @fputs_unlocked(i8* %63, %struct._IO_FILE* %64) #20, !dbg !1439
  br label %66, !dbg !1441

66:                                               ; preds = %49, %59, %62
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #20, !dbg !1442
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #20, !dbg !1442
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #20, !dbg !1443
  %70 = icmp eq i8* %54, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), !dbg !1443
  %71 = select i1 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !1443
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %69, i8* %54, i8* %71) #20, !dbg !1443
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %37) #20, !dbg !1444
  br label %73

73:                                               ; preds = %66, %4
  tail call void @exit(i32 %0) #24, !dbg !1445
  unreachable, !dbg !1445
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !14 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !24 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !89 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1446 {
  %3 = alloca %struct.__sigset_t, align 8
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %3, metadata !1474, metadata !DIExpression()), !dbg !1482
  %4 = alloca %struct.sigaction, align 8
  call void @llvm.dbg.declare(metadata %struct.sigaction* %4, metadata !1484, metadata !DIExpression()), !dbg !1487
  %5 = alloca %struct.sigaction, align 8
  call void @llvm.dbg.declare(metadata %struct.sigaction* %5, metadata !1489, metadata !DIExpression()), !dbg !1493
  %6 = alloca [19 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.__sigset_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1450, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i8** %1, metadata !1451, metadata !DIExpression()), !dbg !1495
  %9 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0, !dbg !1496
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %9) #20, !dbg !1496
  call void @llvm.dbg.declare(metadata [19 x i8]* %6, metadata !1453, metadata !DIExpression()), !dbg !1497
  %10 = load i8*, i8** %1, align 8, !dbg !1498, !tbaa !1400
  tail call void @set_program_name(i8* %10) #20, !dbg !1499
  %11 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #20, !dbg !1500
  %12 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #20, !dbg !1501
  %13 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #20, !dbg !1502
  call void @llvm.dbg.value(metadata i32 125, metadata !1503, metadata !DIExpression()), !dbg !1506
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !1508, !tbaa !1510
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #20, !dbg !1512
  br label %15, !dbg !1513

15:                                               ; preds = %24, %2
  %16 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #20, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %16, metadata !1457, metadata !DIExpression()), !dbg !1495
  switch i32 %16, label %33 [
    i32 -1, label %34
    i32 107, label %17
    i32 115, label %20
    i32 118, label %26
    i32 128, label %27
    i32 129, label %28
    i32 -130, label %29
    i32 -131, label %30
  ], !dbg !1513

17:                                               ; preds = %15
  %18 = load i8*, i8** @optarg, align 8, !dbg !1515, !tbaa !1400
  %19 = call fastcc double @parse_duration(i8* %18), !dbg !1518
  store double %19, double* @kill_after, align 8, !dbg !1519, !tbaa !1520
  br label %24, !dbg !1522

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8, !dbg !1523, !tbaa !1400
  %22 = call i32 @operand2sig(i8* %21, i8* nonnull %9) #20, !dbg !1524
  store i32 %22, i32* @term_signal, align 4, !dbg !1525, !tbaa !1510
  %23 = icmp eq i32 %22, -1, !dbg !1526
  br i1 %23, label %25, label %24, !dbg !1528

24:                                               ; preds = %20, %28, %27, %26, %17
  br label %15, !dbg !1514, !llvm.loop !1529

25:                                               ; preds = %20
  call void @usage(i32 125) #25, !dbg !1531
  unreachable, !dbg !1531

26:                                               ; preds = %15
  store i1 true, i1* @verbose, align 1, !dbg !1532
  br label %24, !dbg !1533

27:                                               ; preds = %15
  store i1 true, i1* @foreground, align 1, !dbg !1534
  br label %24, !dbg !1535

28:                                               ; preds = %15
  store i1 true, i1* @preserve_status, align 1, !dbg !1536
  br label %24, !dbg !1537

29:                                               ; preds = %15
  call void @usage(i32 0) #25, !dbg !1538
  unreachable, !dbg !1538

30:                                               ; preds = %15
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1539, !tbaa !1400
  %32 = load i8*, i8** @Version, align 8, !dbg !1539, !tbaa !1400
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* null) #20, !dbg !1539
  call void @exit(i32 0) #24, !dbg !1539
  unreachable, !dbg !1539

33:                                               ; preds = %15
  call void @usage(i32 125) #25, !dbg !1540
  unreachable, !dbg !1540

34:                                               ; preds = %15
  %35 = load i32, i32* @optind, align 4, !dbg !1541, !tbaa !1510
  %36 = sub nsw i32 %0, %35, !dbg !1543
  %37 = icmp slt i32 %36, 2, !dbg !1544
  br i1 %37, label %38, label %39, !dbg !1545

38:                                               ; preds = %34
  call void @usage(i32 125) #25, !dbg !1546
  unreachable, !dbg !1546

39:                                               ; preds = %34
  %40 = add nsw i32 %35, 1, !dbg !1547
  store i32 %40, i32* @optind, align 4, !dbg !1547, !tbaa !1510
  %41 = sext i32 %35 to i64, !dbg !1548
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41, !dbg !1548
  %43 = load i8*, i8** %42, align 8, !dbg !1548, !tbaa !1400
  %44 = call fastcc double @parse_duration(i8* %43), !dbg !1549
  call void @llvm.dbg.value(metadata double %44, metadata !1452, metadata !DIExpression()), !dbg !1495
  %45 = load i32, i32* @optind, align 4, !dbg !1550, !tbaa !1510
  %46 = sext i32 %45 to i64, !dbg !1551
  %47 = getelementptr inbounds i8*, i8** %1, i64 %46, !dbg !1551
  call void @llvm.dbg.value(metadata i8** %47, metadata !1451, metadata !DIExpression()), !dbg !1495
  %48 = bitcast i8** %47 to i64*, !dbg !1552
  %49 = load i64, i64* %48, align 8, !dbg !1552, !tbaa !1400
  store i64 %49, i64* bitcast (i8** @command to i64*), align 8, !dbg !1553, !tbaa !1400
  %50 = load i1, i1* @foreground, align 1, !dbg !1554
  br i1 %50, label %53, label %51, !dbg !1556

51:                                               ; preds = %39
  %52 = call i32 @setpgid(i32 0, i32 0) #20, !dbg !1557
  br label %53, !dbg !1557

53:                                               ; preds = %51, %39
  %54 = load i32, i32* @term_signal, align 4, !dbg !1558, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %54, metadata !1492, metadata !DIExpression()) #20, !dbg !1559
  %55 = bitcast %struct.sigaction* %5 to i8*, !dbg !1560
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %55) #20, !dbg !1560
  %56 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 1, !dbg !1561
  %57 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %56) #20, !dbg !1562
  %58 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 0, i32 0, !dbg !1563
  store void (i32)* @cleanup, void (i32)** %58, align 8, !dbg !1564, !tbaa !1565
  %59 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 2, !dbg !1566
  store i32 268435456, i32* %59, align 8, !dbg !1567, !tbaa !1568
  %60 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %5, %struct.sigaction* null) #20, !dbg !1571
  %61 = call i32 @sigaction(i32 2, %struct.sigaction* nonnull %5, %struct.sigaction* null) #20, !dbg !1572
  %62 = call i32 @sigaction(i32 3, %struct.sigaction* nonnull %5, %struct.sigaction* null) #20, !dbg !1573
  %63 = call i32 @sigaction(i32 1, %struct.sigaction* nonnull %5, %struct.sigaction* null) #20, !dbg !1574
  %64 = call i32 @sigaction(i32 15, %struct.sigaction* nonnull %5, %struct.sigaction* null) #20, !dbg !1575
  %65 = call i32 @sigaction(i32 %54, %struct.sigaction* nonnull %5, %struct.sigaction* null) #20, !dbg !1576
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %55) #20, !dbg !1577
  %66 = call void (i32)* @signal(i32 21, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #20, !dbg !1578
  %67 = call void (i32)* @signal(i32 22, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #20, !dbg !1579
  %68 = bitcast %struct.sigaction* %4 to i8*, !dbg !1580
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %68) #20, !dbg !1580
  %69 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 1, !dbg !1581
  %70 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %69) #20, !dbg !1582
  %71 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 0, i32 0, !dbg !1583
  store void (i32)* @chld, void (i32)** %71, align 8, !dbg !1584, !tbaa !1565
  %72 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 2, !dbg !1585
  store i32 268435456, i32* %72, align 8, !dbg !1586, !tbaa !1568
  %73 = call i32 @sigaction(i32 17, %struct.sigaction* nonnull %4, %struct.sigaction* null) #20, !dbg !1587
  call fastcc void @unblock_signal(i32 17) #20, !dbg !1588
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %68) #20, !dbg !1589
  %74 = call i32 @fork() #20, !dbg !1590
  store i32 %74, i32* @monitored_pid, align 4, !dbg !1591, !tbaa !1510
  switch i32 %74, label %91 [
    i32 -1, label %75
    i32 0, label %79
  ], !dbg !1592

75:                                               ; preds = %53
  %76 = tail call i32* @__errno_location() #26, !dbg !1593
  %77 = load i32, i32* %76, align 4, !dbg !1593, !tbaa !1510
  %78 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 5) #20, !dbg !1595
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %77, i8* %78) #20, !dbg !1596
  br label %167, !dbg !1597

79:                                               ; preds = %53
  %80 = call void (i32)* @signal(i32 21, void (i32)* null) #20, !dbg !1598
  %81 = call void (i32)* @signal(i32 22, void (i32)* null) #20, !dbg !1599
  %82 = load i8*, i8** %47, align 8, !dbg !1600, !tbaa !1400
  %83 = call i32 @execvp(i8* %82, i8** nonnull %47) #20, !dbg !1601
  %84 = tail call i32* @__errno_location() #26, !dbg !1602
  %85 = load i32, i32* %84, align 4, !dbg !1602, !tbaa !1510
  %86 = icmp eq i32 %85, 2, !dbg !1603
  %87 = select i1 %86, i32 127, i32 126, !dbg !1602
  call void @llvm.dbg.value(metadata i32 %87, metadata !1458, metadata !DIExpression()), !dbg !1604
  %88 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 5) #20, !dbg !1605
  %89 = load i8*, i8** @command, align 8, !dbg !1606, !tbaa !1400
  %90 = call i8* @quote(i8* %89) #20, !dbg !1607
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %85, i8* %88, i8* %90) #20, !dbg !1608
  br label %167

91:                                               ; preds = %53
  %92 = bitcast i32* %7 to i8*, !dbg !1609
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %92) #20, !dbg !1609
  call fastcc void @unblock_signal(i32 14), !dbg !1610
  call fastcc void @settimeout(double %44, i1 zeroext true), !dbg !1611
  %93 = bitcast %struct.__sigset_t* %8 to i8*, !dbg !1612
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %93) #20, !dbg !1612
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %8, metadata !1465, metadata !DIExpression()), !dbg !1613
  %94 = load i32, i32* @term_signal, align 4, !dbg !1614, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %94, metadata !1480, metadata !DIExpression()) #20, !dbg !1615
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %8, metadata !1481, metadata !DIExpression()) #20, !dbg !1615
  %95 = bitcast %struct.__sigset_t* %3 to i8*, !dbg !1616
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %95) #20, !dbg !1616
  %96 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %3) #20, !dbg !1617
  %97 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 14) #20, !dbg !1618
  %98 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 2) #20, !dbg !1619
  %99 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 3) #20, !dbg !1620
  %100 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 1) #20, !dbg !1621
  %101 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 15) #20, !dbg !1622
  %102 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 %94) #20, !dbg !1623
  %103 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 17) #20, !dbg !1624
  %104 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull %3, %struct.__sigset_t* nonnull %8) #20, !dbg !1625
  %105 = icmp eq i32 %104, 0, !dbg !1627
  br i1 %105, label %110, label %106, !dbg !1628

106:                                              ; preds = %91
  %107 = tail call i32* @__errno_location() #26, !dbg !1629
  %108 = load i32, i32* %107, align 4, !dbg !1629, !tbaa !1510
  %109 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i32 5) #20, !dbg !1630
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %108, i8* %109) #20, !dbg !1631
  br label %110, !dbg !1631

110:                                              ; preds = %91, %106
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %95) #20, !dbg !1632
  %111 = load i32, i32* @monitored_pid, align 4, !dbg !1633, !tbaa !1510
  call void @llvm.dbg.value(metadata i32* %7, metadata !1464, metadata !DIExpression(DW_OP_deref)), !dbg !1634
  %112 = call i32 @waitpid(i32 %111, i32* nonnull %7, i32 1) #20, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %112, metadata !1462, metadata !DIExpression()), !dbg !1634
  %113 = icmp eq i32 %112, 0, !dbg !1636
  br i1 %113, label %114, label %119, !dbg !1637

114:                                              ; preds = %110, %114
  %115 = call i32 @sigsuspend(%struct.__sigset_t* nonnull %8) #20, !dbg !1638
  %116 = load i32, i32* @monitored_pid, align 4, !dbg !1633, !tbaa !1510
  call void @llvm.dbg.value(metadata i32* %7, metadata !1464, metadata !DIExpression(DW_OP_deref)), !dbg !1634
  %117 = call i32 @waitpid(i32 %116, i32* nonnull %7, i32 1) #20, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %117, metadata !1462, metadata !DIExpression()), !dbg !1634
  %118 = icmp eq i32 %117, 0, !dbg !1636
  br i1 %118, label %114, label %119, !dbg !1637, !llvm.loop !1639

119:                                              ; preds = %114, %110
  %120 = phi i32 [ %112, %110 ], [ %117, %114 ], !dbg !1635
  %121 = icmp slt i32 %120, 0, !dbg !1641
  br i1 %121, label %122, label %126, !dbg !1642

122:                                              ; preds = %119
  %123 = tail call i32* @__errno_location() #26, !dbg !1643
  %124 = load i32, i32* %123, align 4, !dbg !1643, !tbaa !1510
  %125 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 5) #20, !dbg !1645
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %124, i8* %125) #20, !dbg !1646
  call void @llvm.dbg.value(metadata i32 125, metadata !1464, metadata !DIExpression()), !dbg !1634
  store i32 125, i32* %7, align 4, !dbg !1647, !tbaa !1510
  br label %159, !dbg !1648

126:                                              ; preds = %119
  %127 = load i32, i32* %7, align 4, !dbg !1649, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %127, metadata !1464, metadata !DIExpression()), !dbg !1634
  %128 = and i32 %127, 127, !dbg !1649
  %129 = icmp eq i32 %128, 0, !dbg !1649
  br i1 %129, label %130, label %133, !dbg !1650

130:                                              ; preds = %126
  %131 = lshr i32 %127, 8, !dbg !1651
  %132 = and i32 %131, 255, !dbg !1651
  call void @llvm.dbg.value(metadata i32 %132, metadata !1464, metadata !DIExpression()), !dbg !1634
  store i32 %132, i32* %7, align 4, !dbg !1652, !tbaa !1510
  br label %159, !dbg !1653

133:                                              ; preds = %126
  %134 = shl nuw nsw i32 %128, 24, !dbg !1654
  %135 = add nuw i32 %134, 16777216, !dbg !1654
  %136 = icmp sgt i32 %135, 33554431, !dbg !1654
  br i1 %136, label %137, label %156, !dbg !1655

137:                                              ; preds = %133
  call void @llvm.dbg.value(metadata i32 %128, metadata !1468, metadata !DIExpression()), !dbg !1656
  %138 = trunc i32 %127 to i8, !dbg !1657
  %139 = icmp slt i8 %138, 0, !dbg !1657
  br i1 %139, label %140, label %142, !dbg !1659

140:                                              ; preds = %137
  %141 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 5) #20, !dbg !1660
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %141) #20, !dbg !1661
  br label %142, !dbg !1661

142:                                              ; preds = %140, %137
  %143 = load i1, i1* @timed_out, align 4, !dbg !1662
  br i1 %143, label %154, label %144, !dbg !1664

144:                                              ; preds = %142
  %145 = call i32 (i32, ...) @prctl(i32 4, i32 0) #20, !dbg !1665
  %146 = icmp eq i32 %145, 0, !dbg !1671
  br i1 %146, label %151, label %147, !dbg !1672

147:                                              ; preds = %144
  %148 = tail call i32* @__errno_location() #26, !dbg !1673
  %149 = load i32, i32* %148, align 4, !dbg !1673, !tbaa !1510
  %150 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i64 0, i64 0), i32 5) #20, !dbg !1674
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %149, i8* %150) #20, !dbg !1675
  br label %154, !dbg !1676

151:                                              ; preds = %144
  %152 = call void (i32)* @signal(i32 %128, void (i32)* null) #20, !dbg !1677
  call fastcc void @unblock_signal(i32 %128), !dbg !1679
  %153 = call i32 @raise(i32 %128) #20, !dbg !1680
  br label %154, !dbg !1681

154:                                              ; preds = %147, %151, %142
  %155 = or i32 %128, 128, !dbg !1682
  call void @llvm.dbg.value(metadata i32 %155, metadata !1464, metadata !DIExpression()), !dbg !1634
  store i32 %155, i32* %7, align 4, !dbg !1683, !tbaa !1510
  br label %159, !dbg !1684

156:                                              ; preds = %133
  %157 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 5) #20, !dbg !1685
  %158 = load i32, i32* %7, align 4, !dbg !1687, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %158, metadata !1464, metadata !DIExpression()), !dbg !1634
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %157, i32 %158) #20, !dbg !1688
  call void @llvm.dbg.value(metadata i32 1, metadata !1464, metadata !DIExpression()), !dbg !1634
  store i32 1, i32* %7, align 4, !dbg !1689, !tbaa !1510
  br label %159

159:                                              ; preds = %130, %156, %154, %122
  %160 = phi i32 [ %132, %130 ], [ 1, %156 ], [ %155, %154 ], [ 125, %122 ]
  %161 = load i1, i1* @timed_out, align 4, !dbg !1690
  br i1 %161, label %162, label %165, !dbg !1692

162:                                              ; preds = %159
  %163 = load i1, i1* @preserve_status, align 1, !dbg !1693
  br i1 %163, label %165, label %164, !dbg !1694

164:                                              ; preds = %162
  call void @llvm.dbg.value(metadata i32 124, metadata !1464, metadata !DIExpression()), !dbg !1634
  store i32 124, i32* %7, align 4, !dbg !1695, !tbaa !1510
  br label %165, !dbg !1696

165:                                              ; preds = %164, %162, %159
  %166 = phi i32 [ 124, %164 ], [ %160, %162 ], [ %160, %159 ], !dbg !1697
  call void @llvm.dbg.value(metadata i32 %166, metadata !1464, metadata !DIExpression()), !dbg !1634
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %93) #20, !dbg !1698
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %92) #20, !dbg !1698
  br label %167

167:                                              ; preds = %165, %79, %75
  %168 = phi i32 [ 125, %75 ], [ %87, %79 ], [ %166, %165 ], !dbg !1699
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %9) #20, !dbg !1700
  ret i32 %168, !dbg !1700
}

; Function Attrs: nounwind
declare !dbg !93 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !96 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !99 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !106 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc double @parse_duration(i8* %0) unnamed_addr #8 !dbg !1701 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1705, metadata !DIExpression()), !dbg !1708
  %4 = bitcast double* %2 to i8*, !dbg !1709
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #20, !dbg !1709
  %5 = bitcast i8** %3 to i8*, !dbg !1710
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #20, !dbg !1710
  call void @llvm.dbg.value(metadata double* %2, metadata !1706, metadata !DIExpression(DW_OP_deref)), !dbg !1708
  call void @llvm.dbg.value(metadata i8** %3, metadata !1707, metadata !DIExpression(DW_OP_deref)), !dbg !1708
  %6 = call zeroext i1 @xstrtod(i8* %0, i8** nonnull %3, double* nonnull %2, double (i8*, i8**)* nonnull @cl_strtod) #20, !dbg !1711
  br i1 %6, label %11, label %7, !dbg !1713

7:                                                ; preds = %1
  %8 = tail call i32* @__errno_location() #26, !dbg !1714
  %9 = load i32, i32* %8, align 4, !dbg !1714, !tbaa !1510
  %10 = icmp eq i32 %9, 34, !dbg !1715
  br i1 %10, label %11, label %27, !dbg !1716

11:                                               ; preds = %7, %1
  %12 = load double, double* %2, align 8, !dbg !1717, !tbaa !1520
  call void @llvm.dbg.value(metadata double %12, metadata !1706, metadata !DIExpression()), !dbg !1708
  %13 = fcmp ult double %12, 0.000000e+00, !dbg !1718
  br i1 %13, label %27, label %14, !dbg !1719

14:                                               ; preds = %11
  %15 = load i8*, i8** %3, align 8, !dbg !1720, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %15, metadata !1707, metadata !DIExpression()), !dbg !1708
  %16 = load i8, i8* %15, align 1, !dbg !1721, !tbaa !1565
  %17 = icmp eq i8 %16, 0, !dbg !1721
  br i1 %17, label %22, label %18, !dbg !1722

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !1723
  %20 = load i8, i8* %19, align 1, !dbg !1724, !tbaa !1565
  %21 = icmp eq i8 %20, 0, !dbg !1724
  br i1 %21, label %22, label %27, !dbg !1725

22:                                               ; preds = %18, %14
  call void @llvm.dbg.value(metadata i8* %15, metadata !1707, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata double* %2, metadata !1706, metadata !DIExpression(DW_OP_deref)), !dbg !1708
  call void @llvm.dbg.value(metadata double* %2, metadata !1726, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 %16, metadata !1731, metadata !DIExpression()), !dbg !1733
  %23 = sext i8 %16 to i32, !dbg !1735
  switch i32 %23, label %27 [
    i32 0, label %30
    i32 115, label %30
    i32 109, label %24
    i32 104, label %25
    i32 100, label %26
  ], !dbg !1736

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 60, metadata !1732, metadata !DIExpression()), !dbg !1733
  br label %30, !dbg !1737

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 3600, metadata !1732, metadata !DIExpression()), !dbg !1733
  br label %30, !dbg !1739

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 86400, metadata !1732, metadata !DIExpression()), !dbg !1733
  br label %30, !dbg !1740

27:                                               ; preds = %22, %18, %11, %7
  %28 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 5) #20, !dbg !1741
  %29 = call i8* @quote(i8* %0) #20, !dbg !1743
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %28, i8* %29) #20, !dbg !1744
  call void @usage(i32 125) #25, !dbg !1745
  unreachable, !dbg !1745

30:                                               ; preds = %22, %22, %24, %25, %26
  %31 = phi double [ 8.640000e+04, %26 ], [ 3.600000e+03, %25 ], [ 6.000000e+01, %24 ], [ 1.000000e+00, %22 ], [ 1.000000e+00, %22 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1732, metadata !DIExpression()), !dbg !1733
  %32 = fmul double %12, %31, !dbg !1746
  call void @llvm.dbg.value(metadata double %32, metadata !1706, metadata !DIExpression()), !dbg !1708
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #20, !dbg !1747
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #20, !dbg !1747
  ret double %32, !dbg !1748
}

; Function Attrs: nounwind
declare !dbg !129 i32 @setpgid(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !186 i32 @sigemptyset(%struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @cleanup(i32 %0) #8 !dbg !1749 {
  %2 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1751, metadata !DIExpression()), !dbg !1760
  %3 = icmp eq i32 %0, 14, !dbg !1761
  br i1 %3, label %4, label %6, !dbg !1763

4:                                                ; preds = %1
  store i1 true, i1* @timed_out, align 4, !dbg !1764
  %5 = load i32, i32* @term_signal, align 4, !dbg !1766, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %5, metadata !1751, metadata !DIExpression()), !dbg !1760
  br label %6, !dbg !1767

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !1751, metadata !DIExpression()), !dbg !1760
  %8 = load i32, i32* @monitored_pid, align 4, !dbg !1768, !tbaa !1510
  %9 = icmp eq i32 %8, 0, !dbg !1768
  br i1 %9, label %48, label %10, !dbg !1769

10:                                               ; preds = %6
  %11 = load double, double* @kill_after, align 8, !dbg !1770, !tbaa !1520
  %12 = fcmp une double %11, 0.000000e+00, !dbg !1770
  br i1 %12, label %13, label %16, !dbg !1771

13:                                               ; preds = %10
  %14 = tail call i32* @__errno_location() #26, !dbg !1772
  %15 = load i32, i32* %14, align 4, !dbg !1772, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %15, metadata !1752, metadata !DIExpression()), !dbg !1773
  store i32 9, i32* @term_signal, align 4, !dbg !1774, !tbaa !1510
  tail call fastcc void @settimeout(double %11, i1 zeroext false), !dbg !1775
  store double 0.000000e+00, double* @kill_after, align 8, !dbg !1776, !tbaa !1520
  store i32 %15, i32* %14, align 4, !dbg !1777, !tbaa !1510
  br label %16, !dbg !1778

16:                                               ; preds = %13, %10
  %17 = load i1, i1* @verbose, align 1, !dbg !1779
  br i1 %17, label %18, label %28, !dbg !1780

18:                                               ; preds = %16
  %19 = getelementptr inbounds [19 x i8], [19 x i8]* %2, i64 0, i64 0, !dbg !1781
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %19) #20, !dbg !1781
  call void @llvm.dbg.declare(metadata [19 x i8]* %2, metadata !1757, metadata !DIExpression()), !dbg !1782
  %20 = call i32 @sig2str(i32 %7, i8* nonnull %19) #20, !dbg !1783
  %21 = icmp eq i32 %20, 0, !dbg !1785
  br i1 %21, label %24, label %22, !dbg !1786

22:                                               ; preds = %18
  %23 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* nonnull %19, i64 19, i32 1, i64 19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i32 %7) #20, !dbg !1787
  br label %24, !dbg !1787

24:                                               ; preds = %18, %22
  %25 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i64 0, i64 0), i32 5) #20, !dbg !1788
  %26 = load i8*, i8** @command, align 8, !dbg !1789, !tbaa !1400
  %27 = call i8* @quote(i8* %26) #20, !dbg !1790
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %25, i8* nonnull %19, i8* %27) #20, !dbg !1791
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %19) #20, !dbg !1792
  br label %28, !dbg !1793

28:                                               ; preds = %24, %16
  %29 = load i32, i32* @monitored_pid, align 4, !dbg !1794, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %29, metadata !1795, metadata !DIExpression()) #20, !dbg !1801
  call void @llvm.dbg.value(metadata i32 %7, metadata !1800, metadata !DIExpression()) #20, !dbg !1801
  %30 = icmp eq i32 %29, 0, !dbg !1803
  br i1 %30, label %31, label %33, !dbg !1805

31:                                               ; preds = %28
  %32 = call void (i32)* @signal(i32 %7, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #20, !dbg !1806
  br label %33, !dbg !1806

33:                                               ; preds = %28, %31
  %34 = call i32 @kill(i32 %29, i32 %7) #20, !dbg !1807
  %35 = load i1, i1* @foreground, align 1, !dbg !1808
  br i1 %35, label %50, label %36, !dbg !1810

36:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 0, metadata !1795, metadata !DIExpression()) #20, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %7, metadata !1800, metadata !DIExpression()) #20, !dbg !1811
  %37 = call void (i32)* @signal(i32 %7, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #20, !dbg !1814
  %38 = call i32 @kill(i32 0, i32 %7) #20, !dbg !1815
  switch i32 %7, label %39 [
    i32 18, label %50
    i32 9, label %50
  ], !dbg !1816

39:                                               ; preds = %36
  %40 = load i32, i32* @monitored_pid, align 4, !dbg !1818, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %40, metadata !1795, metadata !DIExpression()) #20, !dbg !1820
  call void @llvm.dbg.value(metadata i32 18, metadata !1800, metadata !DIExpression()) #20, !dbg !1820
  %41 = icmp eq i32 %40, 0, !dbg !1822
  br i1 %41, label %42, label %44, !dbg !1823

42:                                               ; preds = %39
  %43 = call void (i32)* @signal(i32 18, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #20, !dbg !1824
  br label %44, !dbg !1824

44:                                               ; preds = %39, %42
  %45 = call i32 @kill(i32 %40, i32 18) #20, !dbg !1825
  call void @llvm.dbg.value(metadata i32 0, metadata !1795, metadata !DIExpression()) #20, !dbg !1826
  call void @llvm.dbg.value(metadata i32 18, metadata !1800, metadata !DIExpression()) #20, !dbg !1826
  %46 = call void (i32)* @signal(i32 18, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #20, !dbg !1828
  %47 = call i32 @kill(i32 0, i32 18) #20, !dbg !1829
  br label %50, !dbg !1830

48:                                               ; preds = %6
  %49 = add nsw i32 %7, 128, !dbg !1831
  tail call void @_exit(i32 %49) #24, !dbg !1832
  unreachable, !dbg !1832

50:                                               ; preds = %36, %36, %33, %44
  ret void, !dbg !1833
}

; Function Attrs: nounwind
declare !dbg !190 i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !138 void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readnone sspstrong uwtable
define internal void @chld(i32 %0) #9 !dbg !1834 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1836, metadata !DIExpression()), !dbg !1837
  ret void, !dbg !1838
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @unblock_signal(i32 %0) unnamed_addr #8 !dbg !1839 {
  %2 = alloca %struct.__sigset_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1841, metadata !DIExpression()), !dbg !1843
  %3 = bitcast %struct.__sigset_t* %2 to i8*, !dbg !1844
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #20, !dbg !1844
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %2, metadata !1842, metadata !DIExpression()), !dbg !1845
  %4 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %2) #20, !dbg !1846
  %5 = call i32 @sigaddset(%struct.__sigset_t* nonnull %2, i32 %0) #20, !dbg !1847
  %6 = call i32 @sigprocmask(i32 1, %struct.__sigset_t* nonnull %2, %struct.__sigset_t* null) #20, !dbg !1848
  %7 = icmp eq i32 %6, 0, !dbg !1850
  br i1 %7, label %12, label %8, !dbg !1851

8:                                                ; preds = %1
  %9 = tail call i32* @__errno_location() #26, !dbg !1852
  %10 = load i32, i32* %9, align 4, !dbg !1852, !tbaa !1510
  %11 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i32 5) #20, !dbg !1853
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* %11) #20, !dbg !1854
  br label %12, !dbg !1854

12:                                               ; preds = %1, %8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #20, !dbg !1855
  ret void, !dbg !1855
}

; Function Attrs: nofree nounwind
declare !dbg !141 i32 @fork() local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

declare !dbg !144 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !148 i32 @execvp(i8*, i8**) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @settimeout(double %0, i1 zeroext %1) unnamed_addr #8 !dbg !1856 {
  %3 = alloca %struct.itimerspec, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !1860, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i1 %1, metadata !1861, metadata !DIExpression()), !dbg !1872
  %5 = tail call { i64, i64 } @dtotimespec(double %0) #26, !dbg !1873
  %6 = extractvalue { i64, i64 } %5, 0, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %6, metadata !1862, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1872
  %7 = extractvalue { i64, i64 } %5, 1, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %7, metadata !1862, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1872
  %8 = bitcast %struct.itimerspec* %3 to i8*, !dbg !1874
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #20, !dbg !1874
  call void @llvm.dbg.declare(metadata %struct.itimerspec* %3, metadata !1863, metadata !DIExpression()), !dbg !1875
  %9 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i64 0, i32 1, i32 0, !dbg !1876
  %10 = bitcast %struct.itimerspec* %3 to i8*, !dbg !1876
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !dbg !1877
  store i64 %6, i64* %9, align 8, !dbg !1876, !tbaa.struct !1878
  %11 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i64 0, i32 1, i32 1, !dbg !1876
  store i64 %7, i64* %11, align 8, !dbg !1876, !tbaa.struct !1878
  %12 = bitcast i8** %4 to i8*, !dbg !1881
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #20, !dbg !1881
  call void @llvm.dbg.value(metadata i8** %4, metadata !1864, metadata !DIExpression(DW_OP_deref)), !dbg !1872
  %13 = call i32 @timer_create(i32 0, %struct.sigevent* null, i8** nonnull %4) #20, !dbg !1882
  %14 = icmp eq i32 %13, 0, !dbg !1884
  br i1 %14, label %15, label %27, !dbg !1885

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8, !dbg !1886, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %16, metadata !1864, metadata !DIExpression()), !dbg !1872
  %17 = call i32 @timer_settime(i8* %16, i32 0, %struct.itimerspec* nonnull %3, %struct.itimerspec* null) #20, !dbg !1889
  %18 = icmp eq i32 %17, 0, !dbg !1890
  br i1 %18, label %45, label %19, !dbg !1891

19:                                               ; preds = %15
  br i1 %1, label %20, label %24, !dbg !1892

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #26, !dbg !1894
  %22 = load i32, i32* %21, align 4, !dbg !1894, !tbaa !1510
  %23 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0), i32 5) #20, !dbg !1896
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %22, i8* %23) #20, !dbg !1897
  br label %24, !dbg !1897

24:                                               ; preds = %20, %19
  %25 = load i8*, i8** %4, align 8, !dbg !1898, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %25, metadata !1864, metadata !DIExpression()), !dbg !1872
  %26 = call i32 @timer_delete(i8* %25) #20, !dbg !1899
  br label %34, !dbg !1900

27:                                               ; preds = %2
  br i1 %1, label %28, label %34, !dbg !1901

28:                                               ; preds = %27
  %29 = tail call i32* @__errno_location() #26, !dbg !1903
  %30 = load i32, i32* %29, align 4, !dbg !1903, !tbaa !1510
  %31 = icmp eq i32 %30, 38, !dbg !1904
  br i1 %31, label %34, label %32, !dbg !1905

32:                                               ; preds = %28
  %33 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i32 5) #20, !dbg !1906
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %30, i8* %33) #20, !dbg !1907
  br label %34, !dbg !1907

34:                                               ; preds = %28, %27, %32, %24
  %35 = fcmp ult double %0, 0x41EFFFFFFFE00000, !dbg !1908
  br i1 %35, label %36, label %42, !dbg !1909

36:                                               ; preds = %34
  %37 = fptoui double %0 to i32, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %37, metadata !1869, metadata !DIExpression()), !dbg !1911
  %38 = uitofp i32 %37 to double, !dbg !1912
  %39 = fcmp olt double %38, %0, !dbg !1913
  %40 = zext i1 %39 to i32, !dbg !1913
  %41 = add i32 %40, %37, !dbg !1914
  call void @llvm.dbg.value(metadata i32 %41, metadata !1868, metadata !DIExpression()), !dbg !1872
  br label %42

42:                                               ; preds = %34, %36
  %43 = phi i32 [ %41, %36 ], [ -1, %34 ], !dbg !1915
  call void @llvm.dbg.value(metadata i32 %43, metadata !1868, metadata !DIExpression()), !dbg !1872
  %44 = call i32 @alarm(i32 %43) #20, !dbg !1916
  br label %45, !dbg !1917

45:                                               ; preds = %15, %42
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #20, !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #20, !dbg !1917
  ret void, !dbg !1917
}

; Function Attrs: nounwind
declare !dbg !293 i32 @sigaddset(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !296 i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) local_unnamed_addr #2

declare !dbg !155 i32 @waitpid(i32, i32*, i32) local_unnamed_addr #3

declare !dbg !159 i32 @sigsuspend(%struct.__sigset_t*) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !365 i32 @prctl(i32, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !171 i32 @raise(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare !dbg !310 i32 @timer_create(i32, %struct.sigevent*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !348 i32 @timer_settime(i8*, i32, %struct.itimerspec*, %struct.itimerspec*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !359 i32 @timer_delete(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !362 i32 @alarm(i32) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !292 i32 @kill(i32, i32) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @operand2sig(i8* %0, i8* %1) local_unnamed_addr #8 !dbg !1918 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1920, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %1, metadata !1921, metadata !DIExpression()), !dbg !1931
  %5 = bitcast i32* %3 to i8*, !dbg !1932
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #20, !dbg !1932
  %6 = load i8, i8* %0, align 1, !dbg !1933, !tbaa !1565
  %7 = sext i8 %6 to i32, !dbg !1933
  %8 = add nsw i32 %7, -48, !dbg !1933
  %9 = icmp ult i32 %8, 10, !dbg !1933
  br i1 %9, label %10, label %38, !dbg !1934

10:                                               ; preds = %2
  %11 = bitcast i8** %4 to i8*, !dbg !1935
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #20, !dbg !1935
  %12 = tail call i32* @__errno_location() #26, !dbg !1936
  store i32 0, i32* %12, align 4, !dbg !1937, !tbaa !1510
  call void @llvm.dbg.value(metadata i8** %4, metadata !1923, metadata !DIExpression(DW_OP_deref)), !dbg !1938
  %13 = call i64 @strtol(i8* nonnull %0, i8** nonnull %4, i32 10) #20, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %13, metadata !1926, metadata !DIExpression()), !dbg !1938
  %14 = trunc i64 %13 to i32, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %14, metadata !1927, metadata !DIExpression()), !dbg !1938
  %15 = load i8*, i8** %4, align 8, !dbg !1941, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %15, metadata !1923, metadata !DIExpression()), !dbg !1938
  %16 = icmp eq i8* %15, %0, !dbg !1942
  br i1 %16, label %29, label %17, !dbg !1943

17:                                               ; preds = %10
  %18 = load i8, i8* %15, align 1, !dbg !1944, !tbaa !1565
  %19 = icmp eq i8 %18, 0, !dbg !1944
  br i1 %19, label %20, label %29, !dbg !1945

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4, !dbg !1946, !tbaa !1510
  %22 = icmp ne i32 %21, 0, !dbg !1946
  %23 = add i64 %13, 2147483648, !dbg !1947
  %24 = icmp ugt i64 %23, 4294967295, !dbg !1947
  %25 = or i1 %24, %22, !dbg !1948
  br i1 %25, label %29, label %26, !dbg !1948

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 %14, metadata !1922, metadata !DIExpression()), !dbg !1931
  %27 = icmp eq i32 %14, -1, !dbg !1949
  %28 = icmp slt i32 %14, 255, !dbg !1951
  br i1 %28, label %29, label %32, !dbg !1951

29:                                               ; preds = %20, %10, %17, %26
  %30 = phi i1 [ %27, %26 ], [ true, %20 ], [ true, %17 ], [ true, %10 ]
  %31 = phi i32 [ %14, %26 ], [ -1, %20 ], [ -1, %17 ], [ -1, %10 ]
  br label %32, !dbg !1951

32:                                               ; preds = %26, %29
  %33 = phi i1 [ %30, %29 ], [ %27, %26 ]
  %34 = phi i32 [ %31, %29 ], [ %14, %26 ]
  %35 = phi i32 [ 127, %29 ], [ 255, %26 ]
  %36 = select i1 %33, i32 -1, i32 %35, !dbg !1951
  %37 = and i32 %36, %34, !dbg !1951
  store i32 %37, i32* %3, align 4, !dbg !1938, !tbaa !1510
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #20, !dbg !1952
  br label %75, !dbg !1953

38:                                               ; preds = %2
  %39 = tail call noalias i8* @xstrdup(i8* nonnull %0) #20, !dbg !1954
  call void @llvm.dbg.value(metadata i8* %39, metadata !1928, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8* %39, metadata !1930, metadata !DIExpression()), !dbg !1955
  %40 = load i8, i8* %39, align 1, !dbg !1956, !tbaa !1565
  %41 = icmp eq i8 %40, 0, !dbg !1959
  br i1 %41, label %54, label %42, !dbg !1959

42:                                               ; preds = %38, %50
  %43 = phi i8 [ %52, %50 ], [ %40, %38 ]
  %44 = phi i8* [ %51, %50 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i8* %44, metadata !1930, metadata !DIExpression()), !dbg !1955
  %45 = sext i8 %43 to i32, !dbg !1960
  %46 = tail call i8* @memchr(i8* nonnull dereferenceable(27) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0), i32 %45, i64 27), !dbg !1962
  %47 = icmp eq i8* %46, null, !dbg !1962
  br i1 %47, label %50, label %48, !dbg !1963

48:                                               ; preds = %42
  %49 = add i8 %43, -32, !dbg !1964
  store i8 %49, i8* %44, align 1, !dbg !1964, !tbaa !1565
  br label %50, !dbg !1965

50:                                               ; preds = %42, %48
  %51 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1966
  call void @llvm.dbg.value(metadata i8* %51, metadata !1930, metadata !DIExpression()), !dbg !1955
  %52 = load i8, i8* %51, align 1, !dbg !1956, !tbaa !1565
  %53 = icmp eq i8 %52, 0, !dbg !1959
  br i1 %53, label %54, label %42, !dbg !1959, !llvm.loop !1967

54:                                               ; preds = %50, %38
  call void @llvm.dbg.value(metadata i32* %3, metadata !1922, metadata !DIExpression(DW_OP_deref)), !dbg !1931
  %55 = call i32 @str2sig(i8* nonnull %39, i32* nonnull %3) #20, !dbg !1969
  %56 = icmp eq i32 %55, 0, !dbg !1971
  br i1 %56, label %73, label %57, !dbg !1972

57:                                               ; preds = %54
  %58 = load i8, i8* %39, align 1, !dbg !1973, !tbaa !1565
  %59 = icmp eq i8 %58, 83, !dbg !1974
  br i1 %59, label %60, label %72, !dbg !1975

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1976
  %62 = load i8, i8* %61, align 1, !dbg !1976, !tbaa !1565
  %63 = icmp eq i8 %62, 73, !dbg !1977
  br i1 %63, label %64, label %72, !dbg !1978

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !1979
  %66 = load i8, i8* %65, align 1, !dbg !1979, !tbaa !1565
  %67 = icmp eq i8 %66, 71, !dbg !1980
  br i1 %67, label %68, label %72, !dbg !1981

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !1982
  call void @llvm.dbg.value(metadata i32* %3, metadata !1922, metadata !DIExpression(DW_OP_deref)), !dbg !1931
  %70 = call i32 @str2sig(i8* nonnull %69, i32* nonnull %3) #20, !dbg !1983
  %71 = icmp eq i32 %70, 0, !dbg !1984
  br i1 %71, label %73, label %72, !dbg !1985

72:                                               ; preds = %68, %64, %60, %57
  call void @llvm.dbg.value(metadata i32 -1, metadata !1922, metadata !DIExpression()), !dbg !1931
  store i32 -1, i32* %3, align 4, !dbg !1986, !tbaa !1510
  br label %73, !dbg !1987

73:                                               ; preds = %72, %68, %54
  call void @free(i8* %39) #20, !dbg !1988
  %74 = load i32, i32* %3, align 4, !dbg !1989, !tbaa !1510
  br label %75

75:                                               ; preds = %73, %32
  %76 = phi i32 [ %74, %73 ], [ %37, %32 ], !dbg !1989
  call void @llvm.dbg.value(metadata i32 %76, metadata !1922, metadata !DIExpression()), !dbg !1931
  %77 = icmp slt i32 %76, 0, !dbg !1991
  br i1 %77, label %81, label %78, !dbg !1992

78:                                               ; preds = %75
  %79 = call i32 @sig2str(i32 %76, i8* %1) #20, !dbg !1993
  %80 = icmp eq i32 %79, 0, !dbg !1994
  br i1 %80, label %84, label %81, !dbg !1995

81:                                               ; preds = %78, %75
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.52, i64 0, i64 0), i32 5) #20, !dbg !1996
  %83 = call i8* @quote(i8* nonnull %0) #20, !dbg !1998
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82, i8* %83) #20, !dbg !1999
  br label %86, !dbg !2000

84:                                               ; preds = %78
  %85 = load i32, i32* %3, align 4, !dbg !2001, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %85, metadata !1922, metadata !DIExpression()), !dbg !1931
  br label %86, !dbg !2002

86:                                               ; preds = %84, %81
  %87 = phi i32 [ -1, %81 ], [ %85, %84 ], !dbg !1931
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #20, !dbg !2003
  ret i32 %87, !dbg !2003
}

; Function Attrs: nofree nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !552 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @cl_strtod(i8* %0, i8** noalias %1) #8 !dbg !2004 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2009, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8** %1, metadata !2010, metadata !DIExpression()), !dbg !2018
  %5 = bitcast i8** %3 to i8*, !dbg !2019
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #20, !dbg !2019
  call void @llvm.dbg.value(metadata i8** %3, metadata !2011, metadata !DIExpression(DW_OP_deref)), !dbg !2018
  %6 = call double @strtod(i8* %0, i8** nonnull %3) #20, !dbg !2020
  call void @llvm.dbg.value(metadata double %6, metadata !2012, metadata !DIExpression()), !dbg !2018
  %7 = load i8*, i8** %3, align 8, !dbg !2021, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %7, metadata !2011, metadata !DIExpression()), !dbg !2018
  %8 = load i8, i8* %7, align 1, !dbg !2022, !tbaa !1565
  %9 = icmp eq i8 %8, 0, !dbg !2022
  %10 = ptrtoint i8* %7 to i64, !dbg !2023
  br i1 %9, label %24, label %11, !dbg !2023

11:                                               ; preds = %2
  %12 = tail call i32* @__errno_location() #26, !dbg !2024
  %13 = load i32, i32* %12, align 4, !dbg !2024, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %13, metadata !2013, metadata !DIExpression()), !dbg !2025
  %14 = bitcast i8** %4 to i8*, !dbg !2026
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #20, !dbg !2026
  call void @llvm.dbg.value(metadata i8** %4, metadata !2016, metadata !DIExpression(DW_OP_deref)), !dbg !2025
  %15 = call double @c_strtod(i8* %0, i8** nonnull %4) #20, !dbg !2027
  call void @llvm.dbg.value(metadata double %15, metadata !2017, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* %7, metadata !2011, metadata !DIExpression()), !dbg !2018
  %16 = load i8*, i8** %4, align 8, !dbg !2028, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %16, metadata !2016, metadata !DIExpression()), !dbg !2025
  %17 = icmp ult i8* %7, %16, !dbg !2030
  br i1 %17, label %18, label %20, !dbg !2031

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata double %15, metadata !2012, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8* %16, metadata !2011, metadata !DIExpression()), !dbg !2018
  store i8* %16, i8** %3, align 8, !dbg !2032, !tbaa !1400
  %19 = ptrtoint i8* %16 to i64, !dbg !2033
  br label %21, !dbg !2033

20:                                               ; preds = %11
  store i32 %13, i32* %12, align 4, !dbg !2034, !tbaa !1510
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i64 [ %19, %18 ], [ %10, %20 ]
  %23 = phi double [ %15, %18 ], [ %6, %20 ], !dbg !2018
  call void @llvm.dbg.value(metadata double %23, metadata !2012, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #20, !dbg !2035
  br label %24, !dbg !2036

24:                                               ; preds = %2, %21
  %25 = phi i64 [ %22, %21 ], [ %10, %2 ]
  %26 = phi double [ %23, %21 ], [ %6, %2 ], !dbg !2018
  call void @llvm.dbg.value(metadata double %26, metadata !2012, metadata !DIExpression()), !dbg !2018
  %27 = icmp eq i8** %1, null, !dbg !2037
  br i1 %27, label %30, label %28, !dbg !2039

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* undef, metadata !2011, metadata !DIExpression()), !dbg !2018
  %29 = bitcast i8** %1 to i64*, !dbg !2040
  store i64 %25, i64* %29, align 8, !dbg !2040, !tbaa !1400
  br label %30, !dbg !2041

30:                                               ; preds = %24, %28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #20, !dbg !2042
  ret double %26, !dbg !2043
}

; Function Attrs: nofree nounwind
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #14 !dbg !2044 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2046, metadata !DIExpression()), !dbg !2047
  store i8* %0, i8** @file_name, align 8, !dbg !2048, !tbaa !1400
  ret void, !dbg !2049
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #14 !dbg !2050 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2054, metadata !DIExpression()), !dbg !2055
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2056, !tbaa !2057
  ret void, !dbg !2059
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2060 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2065, !tbaa !1400
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #20, !dbg !2066
  %3 = icmp eq i32 %2, 0, !dbg !2067
  br i1 %3, label %22, label %4, !dbg !2068

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2069, !tbaa !2057, !range !2070
  %6 = icmp eq i8 %5, 0, !dbg !2069
  br i1 %6, label %11, label %7, !dbg !2071

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #26, !dbg !2072
  %9 = load i32, i32* %8, align 4, !dbg !2072, !tbaa !1510
  %10 = icmp eq i32 %9, 32, !dbg !2073
  br i1 %10, label %22, label %11, !dbg !2074

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i32 5) #20, !dbg !2075
  call void @llvm.dbg.value(metadata i8* %12, metadata !2062, metadata !DIExpression()), !dbg !2076
  %13 = load i8*, i8** @file_name, align 8, !dbg !2077, !tbaa !1400
  %14 = icmp eq i8* %13, null, !dbg !2077
  %15 = tail call i32* @__errno_location() #26, !dbg !2079
  %16 = load i32, i32* %15, align 4, !dbg !2079, !tbaa !1510
  br i1 %14, label %19, label %17, !dbg !2080

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #20, !dbg !2081
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.61, i64 0, i64 0), i8* %18, i8* %12) #20, !dbg !2082
  br label %20, !dbg !2082

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.62, i64 0, i64 0), i8* %12) #20, !dbg !2083
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2084, !tbaa !1510
  tail call void @_exit(i32 %21) #24, !dbg !2085
  unreachable, !dbg !2085

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2086, !tbaa !1400
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #20, !dbg !2088
  %25 = icmp eq i32 %24, 0, !dbg !2089
  br i1 %25, label %28, label %26, !dbg !2090

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2091, !tbaa !1510
  tail call void @_exit(i32 %27) #24, !dbg !2092
  unreachable, !dbg !2092

28:                                               ; preds = %22
  ret void, !dbg !2093
}

; Function Attrs: norecurse nounwind readnone sspstrong uwtable
define dso_local { i64, i64 } @dtotimespec(double %0) local_unnamed_addr #9 !dbg !2094 {
  call void @llvm.dbg.value(metadata double %0, metadata !2102, metadata !DIExpression()), !dbg !2109
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !2110
  br i1 %2, label %3, label %23, !dbg !2111

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !2112
  br i1 %4, label %5, label %23, !dbg !2113

5:                                                ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %6, metadata !2103, metadata !DIExpression()), !dbg !2115
  %7 = sitofp i64 %6 to double, !dbg !2116
  %8 = fsub double %0, %7, !dbg !2117
  %9 = fmul double %8, 1.000000e+09, !dbg !2118
  call void @llvm.dbg.value(metadata double %9, metadata !2107, metadata !DIExpression()), !dbg !2115
  %10 = fptosi double %9 to i64, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %10, metadata !2108, metadata !DIExpression()), !dbg !2115
  %11 = sitofp i64 %10 to double, !dbg !2120
  %12 = fcmp ogt double %9, %11, !dbg !2121
  %13 = zext i1 %12 to i64, !dbg !2120
  %14 = add nsw i64 %13, %10, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %14, metadata !2108, metadata !DIExpression()), !dbg !2115
  %15 = sdiv i64 %14, 1000000000, !dbg !2123
  %16 = add nsw i64 %15, %6, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %16, metadata !2103, metadata !DIExpression()), !dbg !2115
  %17 = srem i64 %14, 1000000000, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %17, metadata !2108, metadata !DIExpression()), !dbg !2115
  %18 = icmp slt i64 %17, 0, !dbg !2126
  %19 = add nsw i64 %17, 1000000000, !dbg !2128
  %20 = ashr i64 %17, 63, !dbg !2128
  %21 = add nsw i64 %16, %20, !dbg !2128
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %22, metadata !2108, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %21, metadata !2103, metadata !DIExpression()), !dbg !2115
  br label %23

23:                                               ; preds = %3, %1, %5
  %24 = phi i64 [ %21, %5 ], [ -9223372036854775808, %1 ], [ 9223372036854775807, %3 ], !dbg !2129
  %25 = phi i64 [ %22, %5 ], [ 0, %1 ], [ 999999999, %3 ], !dbg !2129
  %26 = insertvalue { i64, i64 } undef, i64 %24, 0, !dbg !2130
  %27 = insertvalue { i64, i64 } %26, i64 %25, 1, !dbg !2130
  ret { i64, i64 } %27, !dbg !2130
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2131 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2133, metadata !DIExpression()), !dbg !2136
  %2 = icmp eq i8* %0, null, !dbg !2137
  br i1 %2, label %3, label %6, !dbg !2139

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2140, !tbaa !1400
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.71, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #27, !dbg !2142
  tail call void @abort() #24, !dbg !2143
  unreachable, !dbg !2143

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #23, !dbg !2144
  call void @llvm.dbg.value(metadata i8* %7, metadata !2134, metadata !DIExpression()), !dbg !2136
  %8 = icmp eq i8* %7, null, !dbg !2145
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2146
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2146
  call void @llvm.dbg.value(metadata i8* %10, metadata !2135, metadata !DIExpression()), !dbg !2136
  %11 = ptrtoint i8* %10 to i64, !dbg !2147
  %12 = ptrtoint i8* %0 to i64, !dbg !2147
  %13 = sub i64 %11, %12, !dbg !2147
  %14 = icmp sgt i64 %13, 6, !dbg !2149
  br i1 %14, label %15, label %24, !dbg !2150

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2151
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.72, i64 0, i64 0), i64 7) #23, !dbg !2152
  %18 = icmp eq i32 %17, 0, !dbg !2153
  br i1 %18, label %19, label %24, !dbg !2154

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2133, metadata !DIExpression()), !dbg !2136
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.73, i64 0, i64 0), i64 3) #23, !dbg !2155
  %21 = icmp eq i32 %20, 0, !dbg !2158
  br i1 %21, label %22, label %24, !dbg !2159

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2160
  call void @llvm.dbg.value(metadata i8* %23, metadata !2133, metadata !DIExpression()), !dbg !2136
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2162, !tbaa !1400
  br label %24, !dbg !2163

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2133, metadata !DIExpression()), !dbg !2136
  store i8* %25, i8** @program_name, align 8, !dbg !2164, !tbaa !1400
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2165, !tbaa !1400
  ret void, !dbg !2166
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2167 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2172, metadata !DIExpression()), !dbg !2175
  %2 = tail call i32* @__errno_location() #26, !dbg !2176
  %3 = load i32, i32* %2, align 4, !dbg !2176, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %3, metadata !2173, metadata !DIExpression()), !dbg !2175
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2177
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2177
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2177
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #20, !dbg !2178
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2174, metadata !DIExpression()), !dbg !2175
  store i32 %3, i32* %2, align 4, !dbg !2179, !tbaa !1510
  ret %struct.quoting_options* %8, !dbg !2180
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !2181 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2185, metadata !DIExpression()), !dbg !2186
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2187
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2187
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2188
  %5 = load i32, i32* %4, align 8, !dbg !2188, !tbaa !2189
  ret i32 %5, !dbg !2191
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !2192 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i32 %1, metadata !2197, metadata !DIExpression()), !dbg !2198
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2199
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2199
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2200
  store i32 %1, i32* %5, align 8, !dbg !2201, !tbaa !2189
  ret void, !dbg !2202
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !2203 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2207, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 %1, metadata !2208, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i32 %2, metadata !2209, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 %1, metadata !2210, metadata !DIExpression()), !dbg !2216
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2217
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2217
  %6 = lshr i8 %1, 5, !dbg !2218
  %7 = zext i8 %6 to i64, !dbg !2218
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2219
  call void @llvm.dbg.value(metadata i32* %8, metadata !2212, metadata !DIExpression()), !dbg !2216
  %9 = and i8 %1, 31, !dbg !2220
  %10 = zext i8 %9 to i32, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %10, metadata !2214, metadata !DIExpression()), !dbg !2216
  %11 = load i32, i32* %8, align 4, !dbg !2221, !tbaa !1510
  %12 = lshr i32 %11, %10, !dbg !2222
  %13 = and i32 %12, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i32 %13, metadata !2215, metadata !DIExpression()), !dbg !2216
  %14 = and i32 %2, 1, !dbg !2224
  %15 = xor i32 %13, %14, !dbg !2225
  %16 = shl i32 %15, %10, !dbg !2226
  %17 = xor i32 %16, %11, !dbg !2227
  store i32 %17, i32* %8, align 4, !dbg !2227, !tbaa !1510
  ret i32 %13, !dbg !2228
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !2229 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2233, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 %1, metadata !2234, metadata !DIExpression()), !dbg !2236
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2237
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2233, metadata !DIExpression()), !dbg !2236
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2240
  %6 = load i32, i32* %5, align 4, !dbg !2240, !tbaa !2241
  call void @llvm.dbg.value(metadata i32 %6, metadata !2235, metadata !DIExpression()), !dbg !2236
  store i32 %1, i32* %5, align 4, !dbg !2242, !tbaa !2241
  ret i32 %6, !dbg !2243
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2244 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2248, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8* %1, metadata !2249, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8* %2, metadata !2250, metadata !DIExpression()), !dbg !2251
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2252
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2254
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2248, metadata !DIExpression()), !dbg !2251
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2255
  store i32 10, i32* %6, align 8, !dbg !2256, !tbaa !2189
  %7 = icmp ne i8* %1, null, !dbg !2257
  %8 = icmp ne i8* %2, null, !dbg !2259
  %9 = and i1 %7, %8, !dbg !2260
  br i1 %9, label %11, label %10, !dbg !2260

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !2261
  unreachable, !dbg !2261

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2262
  store i8* %1, i8** %12, align 8, !dbg !2263, !tbaa !2264
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2265
  store i8* %2, i8** %13, align 8, !dbg !2266, !tbaa !2267
  ret void, !dbg !2268
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2269 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2273, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i64 %1, metadata !2274, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8* %2, metadata !2275, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i64 %3, metadata !2276, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2277, metadata !DIExpression()), !dbg !2281
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2282
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2282
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2278, metadata !DIExpression()), !dbg !2281
  %8 = tail call i32* @__errno_location() #26, !dbg !2283
  %9 = load i32, i32* %8, align 4, !dbg !2283, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %9, metadata !2279, metadata !DIExpression()), !dbg !2281
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2284
  %11 = load i32, i32* %10, align 8, !dbg !2284, !tbaa !2189
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2285
  %13 = load i32, i32* %12, align 4, !dbg !2285, !tbaa !2241
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2286
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2287
  %16 = load i8*, i8** %15, align 8, !dbg !2287, !tbaa !2264
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2288
  %18 = load i8*, i8** %17, align 8, !dbg !2288, !tbaa !2267
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2289
  call void @llvm.dbg.value(metadata i64 %19, metadata !2280, metadata !DIExpression()), !dbg !2281
  store i32 %9, i32* %8, align 4, !dbg !2290, !tbaa !1510
  ret i64 %19, !dbg !2291
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2292 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2298, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %1, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %2, metadata !2300, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %3, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 %4, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 %5, metadata !2303, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32* %6, metadata !2304, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %7, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %8, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 0, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 0, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* null, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 0, metadata !2311, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 0, metadata !2312, metadata !DIExpression()), !dbg !2356
  %13 = tail call i64 @__ctype_get_mb_cur_max() #20, !dbg !2357
  %14 = icmp eq i64 %13, 1, !dbg !2358
  call void @llvm.dbg.value(metadata i1 %14, metadata !2313, metadata !DIExpression()), !dbg !2356
  %15 = lshr i32 %5, 1, !dbg !2359
  %16 = trunc i32 %15 to i8, !dbg !2359
  %17 = and i8 %16, 1, !dbg !2359
  call void @llvm.dbg.value(metadata i8 %17, metadata !2314, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 0, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 0, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 1, metadata !2317, metadata !DIExpression()), !dbg !2356
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2360
  %19 = and i32 %5, 4, !dbg !2362
  %20 = icmp eq i32 %19, 0, !dbg !2362
  %21 = and i32 %5, 1, !dbg !2365
  %22 = icmp eq i32 %21, 0, !dbg !2365
  %23 = bitcast i64* %10 to i8*, !dbg !2368
  %24 = bitcast i32* %12 to i8*, !dbg !2369
  %25 = icmp eq i32* %6, null, !dbg !2370
  br label %26, !dbg !2372

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2373
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2374
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2375
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2376
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2356
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2377
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2378
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2379
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %38, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %37, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %36, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %35, metadata !2314, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %34, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %33, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %32, metadata !2311, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %31, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %30, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 0, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %29, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %28, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 %27, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.label(metadata !2350), !dbg !2380
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
  ], !dbg !2381

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 1, metadata !2314, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %35, metadata !2314, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 5, metadata !2302, metadata !DIExpression()), !dbg !2356
  br label %92, !dbg !2382

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2314, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 5, metadata !2302, metadata !DIExpression()), !dbg !2356
  %42 = and i8 %35, 1, !dbg !2384
  %43 = icmp eq i8 %42, 0, !dbg !2384
  br i1 %43, label %44, label %92, !dbg !2382

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2386
  br i1 %45, label %92, label %46, !dbg !2389

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2386, !tbaa !1565
  br label %92, !dbg !2386

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.84, i64 0, i64 0), i32 %27), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %48, metadata !2305, metadata !DIExpression()), !dbg !2356
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), i32 %27), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %49, metadata !2306, metadata !DIExpression()), !dbg !2356
  br label %50, !dbg !2395

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %51, metadata !2305, metadata !DIExpression()), !dbg !2356
  %53 = and i8 %35, 1, !dbg !2396
  %54 = icmp eq i8 %53, 0, !dbg !2396
  br i1 %54, label %55, label %70, !dbg !2398

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 0, metadata !2308, metadata !DIExpression()), !dbg !2356
  %56 = load i8, i8* %51, align 1, !dbg !2399, !tbaa !1565
  %57 = icmp eq i8 %56, 0, !dbg !2402
  br i1 %57, label %70, label %58, !dbg !2402

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %61, metadata !2308, metadata !DIExpression()), !dbg !2356
  %62 = icmp ult i64 %61, %39, !dbg !2403
  br i1 %62, label %63, label %65, !dbg !2406

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2403
  store i8 %59, i8* %64, align 1, !dbg !2403, !tbaa !1565
  br label %65, !dbg !2403

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2406
  call void @llvm.dbg.value(metadata i64 %66, metadata !2308, metadata !DIExpression()), !dbg !2356
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %67, metadata !2310, metadata !DIExpression()), !dbg !2356
  %68 = load i8, i8* %67, align 1, !dbg !2399, !tbaa !1565
  %69 = icmp eq i8 %68, 0, !dbg !2402
  br i1 %69, label %70, label %58, !dbg !2402, !llvm.loop !2408

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2410
  call void @llvm.dbg.value(metadata i64 %71, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 1, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %52, metadata !2310, metadata !DIExpression()), !dbg !2356
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #23, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %72, metadata !2311, metadata !DIExpression()), !dbg !2356
  br label %92, !dbg !2412

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2312, metadata !DIExpression()), !dbg !2356
  br label %74, !dbg !2413

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2356
  call void @llvm.dbg.value(metadata i8 %75, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 1, metadata !2314, metadata !DIExpression()), !dbg !2356
  br label %76, !dbg !2414

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2376
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2356
  call void @llvm.dbg.value(metadata i8 %78, metadata !2314, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %77, metadata !2312, metadata !DIExpression()), !dbg !2356
  %79 = and i8 %78, 1, !dbg !2415
  %80 = icmp eq i8 %79, 0, !dbg !2415
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2417
  br label %82, !dbg !2417

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2356
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2359
  call void @llvm.dbg.value(metadata i8 %84, metadata !2314, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %83, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 2, metadata !2302, metadata !DIExpression()), !dbg !2356
  %85 = and i8 %84, 1, !dbg !2418
  %86 = icmp eq i8 %85, 0, !dbg !2418
  br i1 %86, label %87, label %92, !dbg !2420

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2421
  br i1 %88, label %92, label %89, !dbg !2424

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2421, !tbaa !1565
  br label %92, !dbg !2421

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2314, metadata !DIExpression()), !dbg !2356
  br label %92, !dbg !2425

91:                                               ; preds = %26
  call void @abort() #24, !dbg !2426
  unreachable, !dbg !2426

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2410
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %40 ], !dbg !2356
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2356
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2356
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2356
  call void @llvm.dbg.value(metadata i8 %100, metadata !2314, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %99, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %98, metadata !2311, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %96, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 %93, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 0, metadata !2307, metadata !DIExpression()), !dbg !2356
  %101 = and i8 %99, 1, !dbg !2427
  %102 = icmp ne i8 %101, 0, !dbg !2427
  %103 = icmp ne i32 %93, 2, !dbg !2427
  %104 = and i1 %103, %102, !dbg !2427
  %105 = icmp ne i64 %98, 0, !dbg !2427
  %106 = and i1 %105, %104, !dbg !2427
  %107 = icmp ugt i64 %98, 1, !dbg !2427
  %108 = and i8 %100, 1, !dbg !2429
  %109 = icmp eq i8 %108, 0, !dbg !2429
  %110 = icmp eq i32 %93, 2, !dbg !2432
  %111 = or i1 %103, %109, !dbg !2434
  %112 = icmp ne i8 %108, 0, !dbg !2436
  %113 = and i1 %110, %112, !dbg !2436
  %114 = xor i1 %102, true, !dbg !2437
  %115 = xor i1 %104, true, !dbg !2370
  %116 = and i1 %109, %115, !dbg !2370
  %117 = or i1 %25, %116, !dbg !2370
  %118 = and i8 %99, %100, !dbg !2438
  %119 = and i8 %118, 1, !dbg !2438
  %120 = icmp ne i8 %119, 0, !dbg !2438
  %121 = and i1 %120, %105, !dbg !2438
  br label %122, !dbg !2440

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2441
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2410
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2373
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2377
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2378
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2379
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %129, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %128, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %127, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %126, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %123, metadata !2307, metadata !DIExpression()), !dbg !2356
  %131 = icmp eq i64 %126, -1, !dbg !2442
  br i1 %131, label %132, label %136, !dbg !2443

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2444
  %134 = load i8, i8* %133, align 1, !dbg !2444, !tbaa !1565
  %135 = icmp eq i8 %134, 0, !dbg !2445
  br i1 %135, label %581, label %138, !dbg !2446

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2447
  br i1 %137, label %581, label %138, !dbg !2446

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2323, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2324, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2448
  br i1 %106, label %139, label %154, !dbg !2449

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2450
  %141 = and i1 %107, %131, !dbg !2451
  br i1 %141, label %142, label %144, !dbg !2451

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %143, metadata !2301, metadata !DIExpression()), !dbg !2356
  br label %144, !dbg !2453

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2301, metadata !DIExpression()), !dbg !2356
  %146 = icmp ugt i64 %140, %145, !dbg !2454
  br i1 %146, label %154, label %147, !dbg !2455

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2456
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2457
  %150 = icmp ne i32 %149, 0, !dbg !2458
  %151 = or i1 %150, %109, !dbg !2459
  %152 = xor i1 %150, true, !dbg !2459
  %153 = zext i1 %152 to i8, !dbg !2459
  br i1 %151, label %154, label %639, !dbg !2459

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %156, metadata !2323, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %155, metadata !2301, metadata !DIExpression()), !dbg !2356
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2460
  %158 = load i8, i8* %157, align 1, !dbg !2460, !tbaa !1565
  call void @llvm.dbg.value(metadata i8 %158, metadata !2318, metadata !DIExpression()), !dbg !2448
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
  ], !dbg !2461

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2462

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2463

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2324, metadata !DIExpression()), !dbg !2448
  %162 = and i8 %127, 1, !dbg !2466
  %163 = icmp eq i8 %162, 0, !dbg !2466
  %164 = and i1 %110, %163, !dbg !2466
  br i1 %164, label %165, label %181, !dbg !2466

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2468
  br i1 %166, label %167, label %169, !dbg !2472

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2468
  store i8 39, i8* %168, align 1, !dbg !2468, !tbaa !1565
  br label %169, !dbg !2468

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %170, metadata !2308, metadata !DIExpression()), !dbg !2356
  %171 = icmp ult i64 %170, %130, !dbg !2473
  br i1 %171, label %172, label %174, !dbg !2476

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2473
  store i8 36, i8* %173, align 1, !dbg !2473, !tbaa !1565
  br label %174, !dbg !2473

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %175, metadata !2308, metadata !DIExpression()), !dbg !2356
  %176 = icmp ult i64 %175, %130, !dbg !2477
  br i1 %176, label %177, label %179, !dbg !2480

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2477
  store i8 39, i8* %178, align 1, !dbg !2477, !tbaa !1565
  br label %179, !dbg !2477

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %180, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 1, metadata !2315, metadata !DIExpression()), !dbg !2356
  br label %181, !dbg !2481

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2356
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2356
  call void @llvm.dbg.value(metadata i8 %183, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %182, metadata !2308, metadata !DIExpression()), !dbg !2356
  %184 = icmp ult i64 %182, %130, !dbg !2482
  br i1 %184, label %185, label %187, !dbg !2485

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2482
  store i8 92, i8* %186, align 1, !dbg !2482, !tbaa !1565
  br label %187, !dbg !2482

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %188, metadata !2308, metadata !DIExpression()), !dbg !2356
  br i1 %103, label %189, label %463, !dbg !2486

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2488
  %191 = icmp ult i64 %190, %155, !dbg !2489
  br i1 %191, label %192, label %463, !dbg !2490

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2491
  %194 = load i8, i8* %193, align 1, !dbg !2491, !tbaa !1565
  %195 = add i8 %194, -48, !dbg !2492
  %196 = icmp ult i8 %195, 10, !dbg !2492
  br i1 %196, label %197, label %463, !dbg !2492

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2493
  br i1 %198, label %199, label %201, !dbg !2497

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2493
  store i8 48, i8* %200, align 1, !dbg !2493, !tbaa !1565
  br label %201, !dbg !2493

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %202, metadata !2308, metadata !DIExpression()), !dbg !2356
  %203 = icmp ult i64 %202, %130, !dbg !2498
  br i1 %203, label %204, label %206, !dbg !2501

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2498
  store i8 48, i8* %205, align 1, !dbg !2498, !tbaa !1565
  br label %206, !dbg !2498

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %207, metadata !2308, metadata !DIExpression()), !dbg !2356
  br label %463, !dbg !2502

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2503

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2504

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2505

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2506

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2507
  %214 = icmp ult i64 %213, %155, !dbg !2508
  br i1 %214, label %215, label %463, !dbg !2509

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2510
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2511
  %218 = load i8, i8* %217, align 1, !dbg !2511, !tbaa !1565
  %219 = icmp eq i8 %218, 63, !dbg !2512
  br i1 %219, label %220, label %463, !dbg !2513

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2514
  %222 = load i8, i8* %221, align 1, !dbg !2514, !tbaa !1565
  %223 = sext i8 %222 to i32, !dbg !2514
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
  ], !dbg !2515

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2516

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2318, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %213, metadata !2307, metadata !DIExpression()), !dbg !2356
  %226 = icmp ult i64 %124, %130, !dbg !2518
  br i1 %226, label %227, label %229, !dbg !2521

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2518
  store i8 63, i8* %228, align 1, !dbg !2518, !tbaa !1565
  br label %229, !dbg !2518

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %230, metadata !2308, metadata !DIExpression()), !dbg !2356
  %231 = icmp ult i64 %230, %130, !dbg !2522
  br i1 %231, label %232, label %234, !dbg !2525

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2522
  store i8 34, i8* %233, align 1, !dbg !2522, !tbaa !1565
  br label %234, !dbg !2522

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %235, metadata !2308, metadata !DIExpression()), !dbg !2356
  %236 = icmp ult i64 %235, %130, !dbg !2526
  br i1 %236, label %237, label %239, !dbg !2529

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2526
  store i8 34, i8* %238, align 1, !dbg !2526, !tbaa !1565
  br label %239, !dbg !2526

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %240, metadata !2308, metadata !DIExpression()), !dbg !2356
  %241 = icmp ult i64 %240, %130, !dbg !2530
  br i1 %241, label %242, label %244, !dbg !2533

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2530
  store i8 63, i8* %243, align 1, !dbg !2530, !tbaa !1565
  br label %244, !dbg !2530

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2533
  call void @llvm.dbg.value(metadata i64 %245, metadata !2308, metadata !DIExpression()), !dbg !2356
  br label %463, !dbg !2534

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2322, metadata !DIExpression()), !dbg !2448
  br label %256, !dbg !2535

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2322, metadata !DIExpression()), !dbg !2448
  br label %256, !dbg !2536

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2322, metadata !DIExpression()), !dbg !2448
  br label %254, !dbg !2537

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2322, metadata !DIExpression()), !dbg !2448
  br label %254, !dbg !2538

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2322, metadata !DIExpression()), !dbg !2448
  br label %256, !dbg !2539

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2322, metadata !DIExpression()), !dbg !2448
  br i1 %110, label %252, label %253, !dbg !2540

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2541

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2544

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2545
  call void @llvm.dbg.value(metadata i8 %255, metadata !2322, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.label(metadata !2351), !dbg !2546
  br i1 %111, label %256, label %625, !dbg !2547

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2545
  call void @llvm.dbg.value(metadata i8 %257, metadata !2322, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.label(metadata !2352), !dbg !2549
  br i1 %102, label %488, label %463, !dbg !2550

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2551

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2552, !tbaa !1565
  %261 = icmp eq i8 %260, 0, !dbg !2553
  br i1 %261, label %262, label %463, !dbg !2554

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2555
  br i1 %263, label %264, label %463, !dbg !2557

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2325, metadata !DIExpression()), !dbg !2448
  br label %265, !dbg !2558

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %266, metadata !2325, metadata !DIExpression()), !dbg !2448
  br i1 %111, label %463, label %625, !dbg !2559

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 1, metadata !2325, metadata !DIExpression()), !dbg !2448
  br i1 %110, label %268, label %463, !dbg !2560

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2561

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2563
  %271 = icmp ne i64 %125, 0, !dbg !2565
  %272 = or i1 %271, %270, !dbg !2566
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2566
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %274, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %273, metadata !2309, metadata !DIExpression()), !dbg !2356
  %275 = icmp ult i64 %124, %274, !dbg !2567
  br i1 %275, label %276, label %278, !dbg !2570

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2567
  store i8 39, i8* %277, align 1, !dbg !2567, !tbaa !1565
  br label %278, !dbg !2567

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2570
  call void @llvm.dbg.value(metadata i64 %279, metadata !2308, metadata !DIExpression()), !dbg !2356
  %280 = icmp ult i64 %279, %274, !dbg !2571
  br i1 %280, label %281, label %283, !dbg !2574

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2571
  store i8 92, i8* %282, align 1, !dbg !2571, !tbaa !1565
  br label %283, !dbg !2571

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2574
  call void @llvm.dbg.value(metadata i64 %284, metadata !2308, metadata !DIExpression()), !dbg !2356
  %285 = icmp ult i64 %284, %274, !dbg !2575
  br i1 %285, label %286, label %288, !dbg !2578

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2575
  store i8 39, i8* %287, align 1, !dbg !2575, !tbaa !1565
  br label %288, !dbg !2575

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %289, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 0, metadata !2315, metadata !DIExpression()), !dbg !2356
  br label %463, !dbg !2579

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2580

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2326, metadata !DIExpression()), !dbg !2581
  %292 = tail call i16** @__ctype_b_loc() #26, !dbg !2582
  %293 = load i16*, i16** %292, align 8, !dbg !2582, !tbaa !1400
  %294 = zext i8 %158 to i64, !dbg !2582
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2582
  %296 = load i16, i16* %295, align 2, !dbg !2582, !tbaa !2584
  %297 = lshr i16 %296, 14, !dbg !2586
  %298 = trunc i16 %297 to i8, !dbg !2586
  %299 = and i8 %298, 1, !dbg !2586
  call void @llvm.dbg.value(metadata i8 %299, metadata !2329, metadata !DIExpression()), !dbg !2581
  br label %355, !dbg !2587

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2588
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2330, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* %23, metadata !2590, metadata !DIExpression()) #20, !dbg !2598
  call void @llvm.dbg.value(metadata i32 0, metadata !2596, metadata !DIExpression()) #20, !dbg !2598
  call void @llvm.dbg.value(metadata i64 8, metadata !2597, metadata !DIExpression()) #20, !dbg !2598
  store i64 0, i64* %10, align 8, !dbg !2600
  call void @llvm.dbg.value(metadata i64 0, metadata !2326, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 1, metadata !2329, metadata !DIExpression()), !dbg !2581
  %301 = icmp eq i64 %155, -1, !dbg !2601
  br i1 %301, label %302, label %304, !dbg !2603

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2604
  call void @llvm.dbg.value(metadata i64 %303, metadata !2301, metadata !DIExpression()), !dbg !2356
  br label %304, !dbg !2605

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  br label %306, !dbg !2606

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2607
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2608
  call void @llvm.dbg.value(metadata i8 %308, metadata !2329, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %307, metadata !2326, metadata !DIExpression()), !dbg !2581
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2609
  %309 = add i64 %307, %123, !dbg !2610
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2611
  %311 = sub i64 %305, %309, !dbg !2612
  call void @llvm.dbg.value(metadata i32* %12, metadata !2336, metadata !DIExpression(DW_OP_deref)), !dbg !2369
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #20, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %312, metadata !2339, metadata !DIExpression()), !dbg !2369
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2614

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2326, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %307, metadata !2326, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %307, metadata !2326, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %307, metadata !2326, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %307, metadata !2326, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %307, metadata !2326, metadata !DIExpression()), !dbg !2581
  %314 = icmp ugt i64 %305, %309, !dbg !2615
  br i1 %314, label %315, label %340, !dbg !2617

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2618
  br label %317, !dbg !2618

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2326, metadata !DIExpression()), !dbg !2581
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2619
  %321 = load i8, i8* %320, align 1, !dbg !2619, !tbaa !1565
  %322 = icmp eq i8 %321, 0, !dbg !2617
  br i1 %322, label %340, label %323, !dbg !2618

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %324, metadata !2326, metadata !DIExpression()), !dbg !2581
  %325 = add i64 %324, %123, !dbg !2621
  %326 = icmp ult i64 %325, %305, !dbg !2615
  br i1 %326, label %317, label %340, !dbg !2617, !llvm.loop !2622

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2623
  %329 = and i1 %113, %328, !dbg !2626
  call void @llvm.dbg.value(metadata i64 1, metadata !2340, metadata !DIExpression()), !dbg !2627
  br i1 %329, label %330, label %343, !dbg !2626

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2340, metadata !DIExpression()), !dbg !2627
  %332 = add i64 %331, %309, !dbg !2628
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2629
  %334 = load i8, i8* %333, align 1, !dbg !2629, !tbaa !1565
  %335 = sext i8 %334 to i32, !dbg !2629
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2630

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %337, metadata !2340, metadata !DIExpression()), !dbg !2627
  %338 = icmp eq i64 %337, %312, !dbg !2623
  br i1 %338, label %343, label %330, !dbg !2632, !llvm.loop !2633

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2326, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 %308, metadata !2329, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %307, metadata !2326, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 %308, metadata !2329, metadata !DIExpression()), !dbg !2581
  br label %340, !dbg !2635

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2635
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2636, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %344, metadata !2336, metadata !DIExpression()), !dbg !2369
  %345 = call i32 @iswprint(i32 %344) #20, !dbg !2638
  %346 = icmp eq i32 %345, 0, !dbg !2638
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2639
  call void @llvm.dbg.value(metadata i8 %347, metadata !2329, metadata !DIExpression()), !dbg !2581
  %348 = add i64 %312, %307, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %348, metadata !2326, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 %347, metadata !2329, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %348, metadata !2326, metadata !DIExpression()), !dbg !2581
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2635
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #23, !dbg !2641
  %350 = icmp eq i32 %349, 0, !dbg !2642
  br i1 %350, label %306, label %351, !dbg !2643, !llvm.loop !2644

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2646
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 2, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 2, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 2, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 2, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 2, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %99, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %99, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %99, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %99, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %99, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 2, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 2, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 2, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 2, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 2, metadata !2302, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %99, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %99, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %99, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %99, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %99, metadata !2312, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %305, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2635
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2646
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2448
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2647
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2647
  call void @llvm.dbg.value(metadata i8 %358, metadata !2329, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %357, metadata !2326, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %356, metadata !2301, metadata !DIExpression()), !dbg !2356
  %359 = and i8 %358, 1, !dbg !2648
  %360 = icmp ne i8 %359, 0, !dbg !2648
  call void @llvm.dbg.value(metadata i8 %359, metadata !2325, metadata !DIExpression()), !dbg !2448
  %361 = icmp ult i64 %357, 2, !dbg !2649
  %362 = or i1 %360, %114, !dbg !2650
  %363 = and i1 %361, %362, !dbg !2651
  br i1 %363, label %463, label %364, !dbg !2651

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %365, metadata !2347, metadata !DIExpression()), !dbg !2653
  br label %366, !dbg !2654

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2441
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2356
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2377
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2448
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2448
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2655
  call void @llvm.dbg.value(metadata i8 %372, metadata !2324, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %371, metadata !2323, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %370, metadata !2318, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %369, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %368, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %367, metadata !2307, metadata !DIExpression()), !dbg !2356
  br i1 %362, label %419, label %373, !dbg !2656

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2661

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2324, metadata !DIExpression()), !dbg !2448
  %375 = and i8 %369, 1, !dbg !2664
  %376 = icmp eq i8 %375, 0, !dbg !2664
  %377 = and i1 %110, %376, !dbg !2664
  br i1 %377, label %378, label %394, !dbg !2664

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2666
  br i1 %379, label %380, label %382, !dbg !2670

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2666
  store i8 39, i8* %381, align 1, !dbg !2666, !tbaa !1565
  br label %382, !dbg !2666

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %383, metadata !2308, metadata !DIExpression()), !dbg !2356
  %384 = icmp ult i64 %383, %130, !dbg !2671
  br i1 %384, label %385, label %387, !dbg !2674

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2671
  store i8 36, i8* %386, align 1, !dbg !2671, !tbaa !1565
  br label %387, !dbg !2671

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %388, metadata !2308, metadata !DIExpression()), !dbg !2356
  %389 = icmp ult i64 %388, %130, !dbg !2675
  br i1 %389, label %390, label %392, !dbg !2678

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2675
  store i8 39, i8* %391, align 1, !dbg !2675, !tbaa !1565
  br label %392, !dbg !2675

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %393, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 1, metadata !2315, metadata !DIExpression()), !dbg !2356
  br label %394, !dbg !2679

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2356
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2356
  call void @llvm.dbg.value(metadata i8 %396, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %395, metadata !2308, metadata !DIExpression()), !dbg !2356
  %397 = icmp ult i64 %395, %130, !dbg !2680
  br i1 %397, label %398, label %400, !dbg !2683

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2680
  store i8 92, i8* %399, align 1, !dbg !2680, !tbaa !1565
  br label %400, !dbg !2680

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2683
  call void @llvm.dbg.value(metadata i64 %401, metadata !2308, metadata !DIExpression()), !dbg !2356
  %402 = icmp ult i64 %401, %130, !dbg !2684
  br i1 %402, label %403, label %407, !dbg !2687

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2684
  %405 = or i8 %404, 48, !dbg !2684
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2684
  store i8 %405, i8* %406, align 1, !dbg !2684, !tbaa !1565
  br label %407, !dbg !2684

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2687
  call void @llvm.dbg.value(metadata i64 %408, metadata !2308, metadata !DIExpression()), !dbg !2356
  %409 = icmp ult i64 %408, %130, !dbg !2688
  br i1 %409, label %410, label %415, !dbg !2691

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2688
  %412 = and i8 %411, 7, !dbg !2688
  %413 = or i8 %412, 48, !dbg !2688
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2688
  store i8 %413, i8* %414, align 1, !dbg !2688, !tbaa !1565
  br label %415, !dbg !2688

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %416, metadata !2308, metadata !DIExpression()), !dbg !2356
  %417 = and i8 %370, 7, !dbg !2692
  %418 = or i8 %417, 48, !dbg !2693
  call void @llvm.dbg.value(metadata i8 %418, metadata !2318, metadata !DIExpression()), !dbg !2448
  br label %428, !dbg !2694

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2695
  %421 = icmp eq i8 %420, 0, !dbg !2695
  br i1 %421, label %428, label %422, !dbg !2697

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2698
  br i1 %423, label %424, label %426, !dbg !2702

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2698
  store i8 92, i8* %425, align 1, !dbg !2698, !tbaa !1565
  br label %426, !dbg !2698

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2702
  call void @llvm.dbg.value(metadata i64 %427, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 0, metadata !2323, metadata !DIExpression()), !dbg !2448
  br label %428, !dbg !2703

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2356
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2377
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2448
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2448
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %433, metadata !2324, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %432, metadata !2323, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %431, metadata !2318, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %430, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %429, metadata !2308, metadata !DIExpression()), !dbg !2356
  %434 = add i64 %367, 1, !dbg !2704
  %435 = icmp ugt i64 %365, %434, !dbg !2706
  br i1 %435, label %436, label %526, !dbg !2707

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2708
  %438 = icmp ne i8 %437, 0, !dbg !2708
  %439 = and i8 %433, 1, !dbg !2708
  %440 = icmp eq i8 %439, 0, !dbg !2708
  %441 = and i1 %438, %440, !dbg !2708
  br i1 %441, label %442, label %453, !dbg !2708

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2711
  br i1 %443, label %444, label %446, !dbg !2715

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2711
  store i8 39, i8* %445, align 1, !dbg !2711, !tbaa !1565
  br label %446, !dbg !2711

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2715
  call void @llvm.dbg.value(metadata i64 %447, metadata !2308, metadata !DIExpression()), !dbg !2356
  %448 = icmp ult i64 %447, %130, !dbg !2716
  br i1 %448, label %449, label %451, !dbg !2719

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2716
  store i8 39, i8* %450, align 1, !dbg !2716, !tbaa !1565
  br label %451, !dbg !2716

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2719
  call void @llvm.dbg.value(metadata i64 %452, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 0, metadata !2315, metadata !DIExpression()), !dbg !2356
  br label %453, !dbg !2720

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2721
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2356
  call void @llvm.dbg.value(metadata i8 %455, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %454, metadata !2308, metadata !DIExpression()), !dbg !2356
  %456 = icmp ult i64 %454, %130, !dbg !2722
  br i1 %456, label %457, label %459, !dbg !2725

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2722
  store i8 %431, i8* %458, align 1, !dbg !2722, !tbaa !1565
  br label %459, !dbg !2722

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2725
  call void @llvm.dbg.value(metadata i64 %460, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %434, metadata !2307, metadata !DIExpression()), !dbg !2356
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2726
  %462 = load i8, i8* %461, align 1, !dbg !2726, !tbaa !1565
  call void @llvm.dbg.value(metadata i8 %462, metadata !2318, metadata !DIExpression()), !dbg !2448
  br label %366, !dbg !2727, !llvm.loop !2728

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2441
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2356
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2373
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2731
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2356
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2356
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2448
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2448
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2448
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %472, metadata !2325, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %471, metadata !2324, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %156, metadata !2323, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %470, metadata !2318, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %469, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %468, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %467, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %466, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %465, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %464, metadata !2307, metadata !DIExpression()), !dbg !2356
  br i1 %117, label %486, label %474, !dbg !2732

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2733
  %476 = zext i8 %475 to i64, !dbg !2733
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2734
  %478 = load i32, i32* %477, align 4, !dbg !2734, !tbaa !1510
  %479 = and i8 %470, 31, !dbg !2735
  %480 = zext i8 %479 to i32, !dbg !2735
  %481 = shl nuw i32 1, %480, !dbg !2736
  %482 = and i32 %478, %481, !dbg !2736
  %483 = icmp eq i32 %482, 0, !dbg !2736
  %484 = icmp eq i8 %156, 0, !dbg !2737
  %485 = and i1 %484, %483, !dbg !2738
  br i1 %485, label %526, label %488, !dbg !2738

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2737
  br i1 %487, label %526, label %488, !dbg !2739

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2740
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2356
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2373
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2731
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2377
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2378
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2448
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2448
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %496, metadata !2325, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %495, metadata !2318, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %494, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %493, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %492, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %491, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %490, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %489, metadata !2307, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.label(metadata !2353), !dbg !2741
  br i1 %109, label %498, label %629, !dbg !2742

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2324, metadata !DIExpression()), !dbg !2448
  %499 = and i8 %493, 1, !dbg !2744
  %500 = icmp eq i8 %499, 0, !dbg !2744
  %501 = and i1 %110, %500, !dbg !2744
  br i1 %501, label %502, label %518, !dbg !2744

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2746
  br i1 %503, label %504, label %506, !dbg !2750

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2746
  store i8 39, i8* %505, align 1, !dbg !2746, !tbaa !1565
  br label %506, !dbg !2746

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2750
  call void @llvm.dbg.value(metadata i64 %507, metadata !2308, metadata !DIExpression()), !dbg !2356
  %508 = icmp ult i64 %507, %497, !dbg !2751
  br i1 %508, label %509, label %511, !dbg !2754

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2751
  store i8 36, i8* %510, align 1, !dbg !2751, !tbaa !1565
  br label %511, !dbg !2751

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2754
  call void @llvm.dbg.value(metadata i64 %512, metadata !2308, metadata !DIExpression()), !dbg !2356
  %513 = icmp ult i64 %512, %497, !dbg !2755
  br i1 %513, label %514, label %516, !dbg !2758

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2755
  store i8 39, i8* %515, align 1, !dbg !2755, !tbaa !1565
  br label %516, !dbg !2755

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %517, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 1, metadata !2315, metadata !DIExpression()), !dbg !2356
  br label %518, !dbg !2759

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2448
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2356
  call void @llvm.dbg.value(metadata i8 %520, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %519, metadata !2308, metadata !DIExpression()), !dbg !2356
  %521 = icmp ult i64 %519, %497, !dbg !2760
  br i1 %521, label %522, label %524, !dbg !2763

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2760
  store i8 92, i8* %523, align 1, !dbg !2760, !tbaa !1565
  br label %524, !dbg !2760

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2763
  call void @llvm.dbg.value(metadata i64 %525, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %536, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %535, metadata !2325, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %534, metadata !2324, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %533, metadata !2318, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %532, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %531, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %530, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %529, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %528, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %527, metadata !2307, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.label(metadata !2354), !dbg !2764
  br label %553, !dbg !2765

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2740
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2356
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2373
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2731
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2377
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2378
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2768
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2448
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2448
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %535, metadata !2325, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %534, metadata !2324, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %533, metadata !2318, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %532, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %531, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %530, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %529, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %528, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %527, metadata !2307, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.label(metadata !2354), !dbg !2764
  %537 = and i8 %531, 1, !dbg !2765
  %538 = icmp ne i8 %537, 0, !dbg !2765
  %539 = and i8 %534, 1, !dbg !2765
  %540 = icmp eq i8 %539, 0, !dbg !2765
  %541 = and i1 %538, %540, !dbg !2765
  br i1 %541, label %542, label %553, !dbg !2765

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2769
  br i1 %543, label %544, label %546, !dbg !2773

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2769
  store i8 39, i8* %545, align 1, !dbg !2769, !tbaa !1565
  br label %546, !dbg !2769

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2773
  call void @llvm.dbg.value(metadata i64 %547, metadata !2308, metadata !DIExpression()), !dbg !2356
  %548 = icmp ult i64 %547, %536, !dbg !2774
  br i1 %548, label %549, label %551, !dbg !2777

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2774
  store i8 39, i8* %550, align 1, !dbg !2774, !tbaa !1565
  br label %551, !dbg !2774

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %552, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 0, metadata !2315, metadata !DIExpression()), !dbg !2356
  br label %553, !dbg !2778

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2448
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2356
  call void @llvm.dbg.value(metadata i8 %562, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %561, metadata !2308, metadata !DIExpression()), !dbg !2356
  %563 = icmp ult i64 %561, %554, !dbg !2779
  br i1 %563, label %564, label %566, !dbg !2782

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2779
  store i8 %556, i8* %565, align 1, !dbg !2779, !tbaa !1565
  br label %566, !dbg !2779

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %567, metadata !2308, metadata !DIExpression()), !dbg !2356
  %568 = and i8 %555, 1, !dbg !2783
  %569 = icmp eq i8 %568, 0, !dbg !2783
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2785
  call void @llvm.dbg.value(metadata i8 %570, metadata !2317, metadata !DIExpression()), !dbg !2356
  br label %571, !dbg !2786

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2740
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2356
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2373
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2731
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2377
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2356
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2379
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %578, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %577, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %576, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %575, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %574, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %573, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %572, metadata !2307, metadata !DIExpression()), !dbg !2356
  %580 = add i64 %572, 1, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %580, metadata !2307, metadata !DIExpression()), !dbg !2356
  br label %122, !dbg !2788, !llvm.loop !2789

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %127, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %127, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %128, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %128, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %129, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %129, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %127, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %127, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %128, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %128, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %129, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %129, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %127, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %127, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %128, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %128, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %129, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %129, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %127, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %127, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %128, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %128, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %129, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %129, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %582, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %582, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %127, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %127, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %128, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %128, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %129, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %129, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %582, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %582, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %127, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %127, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %128, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %128, metadata !2316, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %129, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 %129, metadata !2317, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  %583 = icmp eq i64 %124, 0, !dbg !2791
  %584 = and i1 %110, %583, !dbg !2793
  %585 = xor i1 %584, true, !dbg !2793
  %586 = or i1 %109, %585, !dbg !2793
  br i1 %586, label %587, label %629, !dbg !2793

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2794
  %589 = xor i1 %588, true, !dbg !2794
  %590 = and i8 %128, 1, !dbg !2796
  %591 = icmp eq i8 %590, 0, !dbg !2796
  %592 = or i1 %591, %589, !dbg !2794
  br i1 %592, label %602, label %593, !dbg !2794

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2797
  %595 = icmp eq i8 %594, 0, !dbg !2797
  br i1 %595, label %598, label %596, !dbg !2800

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %582, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %582, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %582, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %582, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %94, metadata !2305, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %95, metadata !2306, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %125, metadata !2309, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %582, metadata !2301, metadata !DIExpression()), !dbg !2356
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2801
  br label %645, !dbg !2802

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2803
  %600 = icmp ne i64 %125, 0, !dbg !2805
  %601 = and i1 %600, %599, !dbg !2806
  br i1 %601, label %26, label %602, !dbg !2806

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %130, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  %603 = icmp ne i8* %97, null, !dbg !2807
  %604 = and i1 %603, %109, !dbg !2809
  br i1 %604, label %605, label %620, !dbg !2809

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %124, metadata !2308, metadata !DIExpression()), !dbg !2356
  %606 = load i8, i8* %97, align 1, !dbg !2810, !tbaa !1565
  %607 = icmp eq i8 %606, 0, !dbg !2813
  br i1 %607, label %620, label %608, !dbg !2813

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2310, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %611, metadata !2308, metadata !DIExpression()), !dbg !2356
  %612 = icmp ult i64 %611, %130, !dbg !2814
  br i1 %612, label %613, label %615, !dbg !2817

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2814
  store i8 %609, i8* %614, align 1, !dbg !2814, !tbaa !1565
  br label %615, !dbg !2814

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %616, metadata !2308, metadata !DIExpression()), !dbg !2356
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2818
  call void @llvm.dbg.value(metadata i8* %617, metadata !2310, metadata !DIExpression()), !dbg !2356
  %618 = load i8, i8* %617, align 1, !dbg !2810, !tbaa !1565
  %619 = icmp eq i8 %618, 0, !dbg !2813
  br i1 %619, label %620, label %608, !dbg !2813, !llvm.loop !2819

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2410
  call void @llvm.dbg.value(metadata i64 %621, metadata !2308, metadata !DIExpression()), !dbg !2356
  %622 = icmp ult i64 %621, %130, !dbg !2821
  br i1 %622, label %623, label %645, !dbg !2823

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2824
  store i8 0, i8* %624, align 1, !dbg !2825, !tbaa !1565
  br label %645, !dbg !2824

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %630, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.label(metadata !2355), !dbg !2826
  %627 = icmp eq i8 %101, 0, !dbg !2827
  %628 = select i1 %627, i32 2, i32 4, !dbg !2827
  br label %635, !dbg !2827

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2299, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %630, metadata !2301, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.label(metadata !2355), !dbg !2826
  %632 = icmp eq i32 %93, 2, !dbg !2829
  %633 = icmp eq i8 %101, 0, !dbg !2827
  %634 = select i1 %633, i32 2, i32 4, !dbg !2827
  br i1 %632, label %635, label %639, !dbg !2827

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2827

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2302, metadata !DIExpression()), !dbg !2356
  %643 = and i32 %5, -3, !dbg !2830
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2831
  br label %645, !dbg !2832

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2833
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2834 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2838, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 %1, metadata !2839, metadata !DIExpression()), !dbg !2842
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #20, !dbg !2843
  call void @llvm.dbg.value(metadata i8* %3, metadata !2840, metadata !DIExpression()), !dbg !2842
  %4 = icmp eq i8* %3, %0, !dbg !2844
  br i1 %4, label %5, label %71, !dbg !2846

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #20, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %6, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %6, metadata !2848, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* undef, metadata !2854, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 85, metadata !2855, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 84, metadata !2856, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 70, metadata !2857, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 45, metadata !2858, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 56, metadata !2859, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 0, metadata !2860, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 0, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 0, metadata !2862, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 0, metadata !2863, metadata !DIExpression()), !dbg !2864
  %7 = load i8, i8* %6, align 1, !dbg !2867, !tbaa !1565
  %8 = and i8 %7, -33, !dbg !2867
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2867

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2869, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8* undef, metadata !2874, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8 84, metadata !2875, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8 70, metadata !2876, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8 45, metadata !2877, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8 56, metadata !2878, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8 0, metadata !2879, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8 0, metadata !2880, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8 0, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8 0, metadata !2882, metadata !DIExpression()), !dbg !2883
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2887
  %11 = load i8, i8* %10, align 1, !dbg !2887, !tbaa !1565
  %12 = and i8 %11, -33, !dbg !2887
  %13 = icmp eq i8 %12, 84, !dbg !2887
  br i1 %13, label %14, label %68, !dbg !2887

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2889, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* undef, metadata !2894, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 70, metadata !2895, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 45, metadata !2896, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 56, metadata !2897, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 0, metadata !2898, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 0, metadata !2899, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 0, metadata !2900, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 0, metadata !2901, metadata !DIExpression()), !dbg !2902
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2906
  %16 = load i8, i8* %15, align 1, !dbg !2906, !tbaa !1565
  %17 = and i8 %16, -33, !dbg !2906
  %18 = icmp eq i8 %17, 70, !dbg !2906
  br i1 %18, label %19, label %68, !dbg !2906

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2908, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8* undef, metadata !2913, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 45, metadata !2914, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 56, metadata !2915, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 0, metadata !2916, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 0, metadata !2917, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 0, metadata !2918, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 0, metadata !2919, metadata !DIExpression()), !dbg !2920
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2924
  %21 = load i8, i8* %20, align 1, !dbg !2924, !tbaa !1565
  %22 = icmp eq i8 %21, 45, !dbg !2924
  br i1 %22, label %23, label %68, !dbg !2926

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2927, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8* undef, metadata !2932, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 56, metadata !2933, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 0, metadata !2934, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 0, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 0, metadata !2936, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 0, metadata !2937, metadata !DIExpression()), !dbg !2938
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2942
  %25 = load i8, i8* %24, align 1, !dbg !2942, !tbaa !1565
  %26 = icmp eq i8 %25, 56, !dbg !2942
  br i1 %26, label %27, label %68, !dbg !2944

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2945, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8* undef, metadata !2950, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8 0, metadata !2951, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8 0, metadata !2952, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8 0, metadata !2953, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8 0, metadata !2954, metadata !DIExpression()), !dbg !2955
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2959
  %29 = load i8, i8* %28, align 1, !dbg !2959, !tbaa !1565
  %30 = icmp eq i8 %29, 0, !dbg !2959
  br i1 %30, label %31, label %68, !dbg !2961

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2962, !tbaa !1565
  %33 = icmp eq i8 %32, 96, !dbg !2963
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.87, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.88, i64 0, i64 0), !dbg !2962
  br label %71, !dbg !2964

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2869, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8* undef, metadata !2874, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 66, metadata !2875, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 49, metadata !2876, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 56, metadata !2877, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 48, metadata !2878, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 51, metadata !2879, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 48, metadata !2880, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 0, metadata !2881, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 0, metadata !2882, metadata !DIExpression()), !dbg !2965
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2969
  %37 = load i8, i8* %36, align 1, !dbg !2969, !tbaa !1565
  %38 = and i8 %37, -33, !dbg !2969
  %39 = icmp eq i8 %38, 66, !dbg !2969
  br i1 %39, label %40, label %68, !dbg !2969

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2889, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8* undef, metadata !2894, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 49, metadata !2895, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 56, metadata !2896, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 48, metadata !2897, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 51, metadata !2898, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 48, metadata !2899, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 0, metadata !2900, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 0, metadata !2901, metadata !DIExpression()), !dbg !2970
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2972
  %42 = load i8, i8* %41, align 1, !dbg !2972, !tbaa !1565
  %43 = icmp eq i8 %42, 49, !dbg !2972
  br i1 %43, label %44, label %68, !dbg !2973

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2908, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* undef, metadata !2913, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 56, metadata !2914, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 48, metadata !2915, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 51, metadata !2916, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 48, metadata !2917, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 0, metadata !2918, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 0, metadata !2919, metadata !DIExpression()), !dbg !2974
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2976
  %46 = load i8, i8* %45, align 1, !dbg !2976, !tbaa !1565
  %47 = icmp eq i8 %46, 56, !dbg !2976
  br i1 %47, label %48, label %68, !dbg !2977

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2927, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8* undef, metadata !2932, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8 48, metadata !2933, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8 51, metadata !2934, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8 48, metadata !2935, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8 0, metadata !2936, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8 0, metadata !2937, metadata !DIExpression()), !dbg !2978
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2980
  %50 = load i8, i8* %49, align 1, !dbg !2980, !tbaa !1565
  %51 = icmp eq i8 %50, 48, !dbg !2980
  br i1 %51, label %52, label %68, !dbg !2981

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2945, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* undef, metadata !2950, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 51, metadata !2951, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 48, metadata !2952, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 0, metadata !2953, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 0, metadata !2954, metadata !DIExpression()), !dbg !2982
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2984
  %54 = load i8, i8* %53, align 1, !dbg !2984, !tbaa !1565
  %55 = icmp eq i8 %54, 51, !dbg !2984
  br i1 %55, label %56, label %68, !dbg !2985

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2986, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8* undef, metadata !2991, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8 48, metadata !2992, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8 0, metadata !2993, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8 0, metadata !2994, metadata !DIExpression()), !dbg !2995
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2999
  %58 = load i8, i8* %57, align 1, !dbg !2999, !tbaa !1565
  %59 = icmp eq i8 %58, 48, !dbg !2999
  br i1 %59, label %60, label %68, !dbg !3001

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3002, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8* undef, metadata !3007, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8 0, metadata !3008, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8 0, metadata !3009, metadata !DIExpression()), !dbg !3010
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3014
  %62 = load i8, i8* %61, align 1, !dbg !3014, !tbaa !1565
  %63 = icmp eq i8 %62, 0, !dbg !3014
  br i1 %63, label %64, label %68, !dbg !3016

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3017, !tbaa !1565
  %66 = icmp eq i8 %65, 96, !dbg !3018
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.89, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.90, i64 0, i64 0), !dbg !3017
  br label %71, !dbg !3019

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3020
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), !dbg !3021
  br label %71, !dbg !3022

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2842
  ret i8* %72, !dbg !3023
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #18

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #13

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !575 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !579 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3024 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 %1, metadata !3029, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3030, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8* %0, metadata !3032, metadata !DIExpression()) #20, !dbg !3045
  call void @llvm.dbg.value(metadata i64 %1, metadata !3037, metadata !DIExpression()) #20, !dbg !3045
  call void @llvm.dbg.value(metadata i64* null, metadata !3038, metadata !DIExpression()) #20, !dbg !3045
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3039, metadata !DIExpression()) #20, !dbg !3045
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3047
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3047
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3040, metadata !DIExpression()) #20, !dbg !3045
  %6 = tail call i32* @__errno_location() #26, !dbg !3048
  %7 = load i32, i32* %6, align 4, !dbg !3048, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %7, metadata !3041, metadata !DIExpression()) #20, !dbg !3045
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3049
  %9 = load i32, i32* %8, align 4, !dbg !3049, !tbaa !2241
  %10 = or i32 %9, 1, !dbg !3050
  call void @llvm.dbg.value(metadata i32 %10, metadata !3042, metadata !DIExpression()) #20, !dbg !3045
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3051
  %12 = load i32, i32* %11, align 8, !dbg !3051, !tbaa !2189
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3052
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3053
  %15 = load i8*, i8** %14, align 8, !dbg !3053, !tbaa !2264
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3054
  %17 = load i8*, i8** %16, align 8, !dbg !3054, !tbaa !2267
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #20, !dbg !3055
  %19 = add i64 %18, 1, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %19, metadata !3043, metadata !DIExpression()) #20, !dbg !3045
  call void @llvm.dbg.value(metadata i64 %19, metadata !3057, metadata !DIExpression()) #20, !dbg !3062
  %20 = tail call noalias i8* @xmalloc(i64 %19) #20, !dbg !3064
  call void @llvm.dbg.value(metadata i8* %20, metadata !3044, metadata !DIExpression()) #20, !dbg !3045
  %21 = load i32, i32* %11, align 8, !dbg !3065, !tbaa !2189
  %22 = load i8*, i8** %14, align 8, !dbg !3066, !tbaa !2264
  %23 = load i8*, i8** %16, align 8, !dbg !3067, !tbaa !2267
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #20, !dbg !3068
  store i32 %7, i32* %6, align 4, !dbg !3069, !tbaa !1510
  ret i8* %20, !dbg !3070
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3033 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3032, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %1, metadata !3037, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64* %2, metadata !3038, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3039, metadata !DIExpression()), !dbg !3071
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3072
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3072
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3040, metadata !DIExpression()), !dbg !3071
  %7 = tail call i32* @__errno_location() #26, !dbg !3073
  %8 = load i32, i32* %7, align 4, !dbg !3073, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %8, metadata !3041, metadata !DIExpression()), !dbg !3071
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3074
  %10 = load i32, i32* %9, align 4, !dbg !3074, !tbaa !2241
  %11 = icmp ne i64* %2, null, !dbg !3075
  %12 = xor i1 %11, true, !dbg !3075
  %13 = zext i1 %12 to i32, !dbg !3075
  %14 = or i32 %10, %13, !dbg !3076
  call void @llvm.dbg.value(metadata i32 %14, metadata !3042, metadata !DIExpression()), !dbg !3071
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3077
  %16 = load i32, i32* %15, align 8, !dbg !3077, !tbaa !2189
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3078
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3079
  %19 = load i8*, i8** %18, align 8, !dbg !3079, !tbaa !2264
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3080
  %21 = load i8*, i8** %20, align 8, !dbg !3080, !tbaa !2267
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3081
  %23 = add i64 %22, 1, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %23, metadata !3043, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %23, metadata !3057, metadata !DIExpression()) #20, !dbg !3083
  %24 = tail call noalias i8* @xmalloc(i64 %23) #20, !dbg !3085
  call void @llvm.dbg.value(metadata i8* %24, metadata !3044, metadata !DIExpression()), !dbg !3071
  %25 = load i32, i32* %15, align 8, !dbg !3086, !tbaa !2189
  %26 = load i8*, i8** %18, align 8, !dbg !3087, !tbaa !2264
  %27 = load i8*, i8** %20, align 8, !dbg !3088, !tbaa !2267
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3089
  store i32 %8, i32* %7, align 4, !dbg !3090, !tbaa !1510
  br i1 %11, label %29, label %30, !dbg !3091

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3092, !tbaa !1879
  br label %30, !dbg !3094

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3095
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3096 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3100, !tbaa !1400
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3098, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i32 1, metadata !3099, metadata !DIExpression()), !dbg !3101
  %2 = load i32, i32* @nslots, align 4, !dbg !3102, !tbaa !1510
  %3 = icmp sgt i32 %2, 1, !dbg !3105
  br i1 %3, label %4, label %12, !dbg !3106

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3099, metadata !DIExpression()), !dbg !3101
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3107
  %7 = load i8*, i8** %6, align 8, !dbg !3107, !tbaa !3108
  tail call void @free(i8* %7) #20, !dbg !3110
  %8 = add nuw nsw i64 %5, 1, !dbg !3111
  call void @llvm.dbg.value(metadata i64 %8, metadata !3099, metadata !DIExpression()), !dbg !3101
  %9 = load i32, i32* @nslots, align 4, !dbg !3102, !tbaa !1510
  %10 = sext i32 %9 to i64, !dbg !3105
  %11 = icmp slt i64 %8, %10, !dbg !3105
  br i1 %11, label %4, label %12, !dbg !3106, !llvm.loop !3112

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3114
  %14 = load i8*, i8** %13, align 8, !dbg !3114, !tbaa !3108
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3116
  br i1 %15, label %17, label %16, !dbg !3117

16:                                               ; preds = %12
  tail call void @free(i8* %14) #20, !dbg !3118
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3120, !tbaa !3121
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3122, !tbaa !3108
  br label %17, !dbg !3123

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3124
  br i1 %18, label %21, label %19, !dbg !3126

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3127
  tail call void @free(i8* %20) #20, !dbg !3129
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3130, !tbaa !1400
  br label %21, !dbg !3131

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3132, !tbaa !1510
  ret void, !dbg !3133
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3134 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3136, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %1, metadata !3137, metadata !DIExpression()), !dbg !3138
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3139
  ret i8* %3, !dbg !3140
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3141 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3145, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i8* %1, metadata !3146, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %2, metadata !3147, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3148, metadata !DIExpression()), !dbg !3160
  %5 = tail call i32* @__errno_location() #26, !dbg !3161
  %6 = load i32, i32* %5, align 4, !dbg !3161, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %6, metadata !3149, metadata !DIExpression()), !dbg !3160
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3162, !tbaa !1400
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3150, metadata !DIExpression()), !dbg !3160
  %8 = icmp slt i32 %0, 0, !dbg !3163
  br i1 %8, label %9, label %10, !dbg !3165

9:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3166
  unreachable, !dbg !3166

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3167, !tbaa !1510
  %12 = icmp sgt i32 %11, %0, !dbg !3168
  br i1 %12, label %34, label %13, !dbg !3169

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3170
  call void @llvm.dbg.value(metadata i1 %14, metadata !3151, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3154, metadata !DIExpression()), !dbg !3171
  %15 = icmp eq i32 %0, 2147483647, !dbg !3172
  br i1 %15, label %16, label %17, !dbg !3174

16:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3175
  unreachable, !dbg !3175

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3176
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3176
  %20 = add nuw nsw i32 %0, 1, !dbg !3177
  %21 = sext i32 %20 to i64, !dbg !3178
  %22 = shl nuw nsw i64 %21, 4, !dbg !3179
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #20, !dbg !3180
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3180
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3150, metadata !DIExpression()), !dbg !3160
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3181, !tbaa !1400
  br i1 %14, label %25, label %26, !dbg !3182

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3183, !tbaa.struct !3185
  br label %26, !dbg !3186

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3187, !tbaa !1510
  %28 = sext i32 %27 to i64, !dbg !3188
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3188
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3189
  %31 = sub nsw i32 %20, %27, !dbg !3190
  %32 = sext i32 %31 to i64, !dbg !3191
  %33 = shl nsw i64 %32, 4, !dbg !3192
  call void @llvm.dbg.value(metadata i8* %30, metadata !2590, metadata !DIExpression()) #20, !dbg !3193
  call void @llvm.dbg.value(metadata i32 0, metadata !2596, metadata !DIExpression()) #20, !dbg !3193
  call void @llvm.dbg.value(metadata i64 %33, metadata !2597, metadata !DIExpression()) #20, !dbg !3193
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #20, !dbg !3195
  store i32 %20, i32* @nslots, align 4, !dbg !3196, !tbaa !1510
  br label %34, !dbg !3197

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3160
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3150, metadata !DIExpression()), !dbg !3160
  %36 = zext i32 %0 to i64, !dbg !3198
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3199
  %38 = load i64, i64* %37, align 8, !dbg !3199, !tbaa !3121
  call void @llvm.dbg.value(metadata i64 %38, metadata !3155, metadata !DIExpression()), !dbg !3200
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3201
  %40 = load i8*, i8** %39, align 8, !dbg !3201, !tbaa !3108
  call void @llvm.dbg.value(metadata i8* %40, metadata !3157, metadata !DIExpression()), !dbg !3200
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3202
  %42 = load i32, i32* %41, align 4, !dbg !3202, !tbaa !2241
  %43 = or i32 %42, 1, !dbg !3203
  call void @llvm.dbg.value(metadata i32 %43, metadata !3158, metadata !DIExpression()), !dbg !3200
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3204
  %45 = load i32, i32* %44, align 8, !dbg !3204, !tbaa !2189
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3205
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3206
  %48 = load i8*, i8** %47, align 8, !dbg !3206, !tbaa !2264
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3207
  %50 = load i8*, i8** %49, align 8, !dbg !3207, !tbaa !2267
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3208
  call void @llvm.dbg.value(metadata i64 %51, metadata !3159, metadata !DIExpression()), !dbg !3200
  %52 = icmp ugt i64 %38, %51, !dbg !3209
  br i1 %52, label %63, label %53, !dbg !3211

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %54, metadata !3155, metadata !DIExpression()), !dbg !3200
  store i64 %54, i64* %37, align 8, !dbg !3214, !tbaa !3121
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3215
  br i1 %55, label %57, label %56, !dbg !3217

56:                                               ; preds = %53
  tail call void @free(i8* %40) #20, !dbg !3218
  br label %57, !dbg !3218

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3057, metadata !DIExpression()) #20, !dbg !3219
  %58 = tail call noalias i8* @xmalloc(i64 %54) #20, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %58, metadata !3157, metadata !DIExpression()), !dbg !3200
  store i8* %58, i8** %39, align 8, !dbg !3222, !tbaa !3108
  %59 = load i32, i32* %44, align 8, !dbg !3223, !tbaa !2189
  %60 = load i8*, i8** %47, align 8, !dbg !3224, !tbaa !2264
  %61 = load i8*, i8** %49, align 8, !dbg !3225, !tbaa !2267
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3226
  br label %63, !dbg !3227

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3200
  call void @llvm.dbg.value(metadata i8* %64, metadata !3157, metadata !DIExpression()), !dbg !3200
  store i32 %6, i32* %5, align 4, !dbg !3228, !tbaa !1510
  ret i8* %64, !dbg !3229
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3230 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3234, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8* %1, metadata !3235, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %2, metadata !3236, metadata !DIExpression()), !dbg !3237
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3238
  ret i8* %4, !dbg !3239
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3240 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 0, metadata !3136, metadata !DIExpression()) #20, !dbg !3244
  call void @llvm.dbg.value(metadata i8* %0, metadata !3137, metadata !DIExpression()) #20, !dbg !3244
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3246
  ret i8* %2, !dbg !3247
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3248 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3252, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %1, metadata !3253, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 0, metadata !3234, metadata !DIExpression()) #20, !dbg !3255
  call void @llvm.dbg.value(metadata i8* %0, metadata !3235, metadata !DIExpression()) #20, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %1, metadata !3236, metadata !DIExpression()) #20, !dbg !3255
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3257
  ret i8* %3, !dbg !3258
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3259 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3263, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i32 %1, metadata !3264, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8* %2, metadata !3265, metadata !DIExpression()), !dbg !3267
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3268
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3268
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3266, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i32 %1, metadata !3270, metadata !DIExpression()) #20, !dbg !3276
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3275, metadata !DIExpression()) #20, !dbg !3278
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3278, !alias.scope !3279
  %6 = icmp eq i32 %1, 10, !dbg !3282
  br i1 %6, label %7, label %8, !dbg !3284

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3285, !noalias !3279
  unreachable, !dbg !3285

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3286
  store i32 %1, i32* %9, align 8, !dbg !3287, !tbaa !2189, !alias.scope !3279
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3288
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3289
  ret i8* %10, !dbg !3290
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3291 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3295, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i32 %1, metadata !3296, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i8* %2, metadata !3297, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %3, metadata !3298, metadata !DIExpression()), !dbg !3300
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3301
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3301
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3299, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i32 %1, metadata !3270, metadata !DIExpression()) #20, !dbg !3303
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3275, metadata !DIExpression()) #20, !dbg !3305
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #20, !dbg !3305, !alias.scope !3306
  %7 = icmp eq i32 %1, 10, !dbg !3309
  br i1 %7, label %8, label %9, !dbg !3310

8:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3311, !noalias !3306
  unreachable, !dbg !3311

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3312
  store i32 %1, i32* %10, align 8, !dbg !3313, !tbaa !2189, !alias.scope !3306
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3314
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3315
  ret i8* %11, !dbg !3316
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3317 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3275, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3266, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i32 %0, metadata !3321, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i8* %1, metadata !3322, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i32 0, metadata !3263, metadata !DIExpression()) #20, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %0, metadata !3264, metadata !DIExpression()) #20, !dbg !3328
  call void @llvm.dbg.value(metadata i8* %1, metadata !3265, metadata !DIExpression()) #20, !dbg !3328
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3329
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3329
  call void @llvm.dbg.value(metadata i32 %0, metadata !3270, metadata !DIExpression()) #20, !dbg !3330
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #20, !dbg !3323, !alias.scope !3331
  %5 = icmp eq i32 %0, 10, !dbg !3334
  br i1 %5, label %6, label %7, !dbg !3335

6:                                                ; preds = %2
  tail call void @abort() #24, !dbg !3336, !noalias !3331
  unreachable, !dbg !3336

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3337
  store i32 %0, i32* %8, align 8, !dbg !3338, !tbaa !2189, !alias.scope !3331
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3339
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3340
  ret i8* %9, !dbg !3341
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3342 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3275, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3299, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 %0, metadata !3346, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8* %1, metadata !3347, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %2, metadata !3348, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i32 0, metadata !3295, metadata !DIExpression()) #20, !dbg !3354
  call void @llvm.dbg.value(metadata i32 %0, metadata !3296, metadata !DIExpression()) #20, !dbg !3354
  call void @llvm.dbg.value(metadata i8* %1, metadata !3297, metadata !DIExpression()) #20, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %2, metadata !3298, metadata !DIExpression()) #20, !dbg !3354
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3355
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3355
  call void @llvm.dbg.value(metadata i32 %0, metadata !3270, metadata !DIExpression()) #20, !dbg !3356
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3349, !alias.scope !3357
  %6 = icmp eq i32 %0, 10, !dbg !3360
  br i1 %6, label %7, label %8, !dbg !3361

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3362, !noalias !3357
  unreachable, !dbg !3362

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3363
  store i32 %0, i32* %9, align 8, !dbg !3364, !tbaa !2189, !alias.scope !3357
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #20, !dbg !3365
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3366
  ret i8* %10, !dbg !3367
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3368 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3372, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %1, metadata !3373, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8 %2, metadata !3374, metadata !DIExpression()), !dbg !3376
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3377
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3377
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3375, metadata !DIExpression()), !dbg !3378
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3379, !tbaa.struct !3380
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2207, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 %2, metadata !2208, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 1, metadata !2209, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 %2, metadata !2210, metadata !DIExpression()), !dbg !3381
  %6 = lshr i8 %2, 5, !dbg !3383
  %7 = zext i8 %6 to i64, !dbg !3383
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3384
  call void @llvm.dbg.value(metadata i32* %8, metadata !2212, metadata !DIExpression()), !dbg !3381
  %9 = and i8 %2, 31, !dbg !3385
  %10 = zext i8 %9 to i32, !dbg !3385
  call void @llvm.dbg.value(metadata i32 %10, metadata !2214, metadata !DIExpression()), !dbg !3381
  %11 = load i32, i32* %8, align 4, !dbg !3386, !tbaa !1510
  %12 = lshr i32 %11, %10, !dbg !3387
  %13 = and i32 %12, 1, !dbg !3388
  call void @llvm.dbg.value(metadata i32 %13, metadata !2215, metadata !DIExpression()), !dbg !3381
  %14 = xor i32 %13, 1, !dbg !3389
  %15 = shl i32 %14, %10, !dbg !3390
  %16 = xor i32 %15, %11, !dbg !3391
  store i32 %16, i32* %8, align 4, !dbg !3391, !tbaa !1510
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3392
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3393
  ret i8* %17, !dbg !3394
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3395 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3375, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8* %0, metadata !3399, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i8 %1, metadata !3400, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i8* %0, metadata !3372, metadata !DIExpression()) #20, !dbg !3404
  call void @llvm.dbg.value(metadata i64 -1, metadata !3373, metadata !DIExpression()) #20, !dbg !3404
  call void @llvm.dbg.value(metadata i8 %1, metadata !3374, metadata !DIExpression()) #20, !dbg !3404
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3405
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3405
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3406, !tbaa.struct !3380
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2207, metadata !DIExpression()) #20, !dbg !3407
  call void @llvm.dbg.value(metadata i8 %1, metadata !2208, metadata !DIExpression()) #20, !dbg !3407
  call void @llvm.dbg.value(metadata i32 1, metadata !2209, metadata !DIExpression()) #20, !dbg !3407
  call void @llvm.dbg.value(metadata i8 %1, metadata !2210, metadata !DIExpression()) #20, !dbg !3407
  %5 = lshr i8 %1, 5, !dbg !3409
  %6 = zext i8 %5 to i64, !dbg !3409
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3410
  call void @llvm.dbg.value(metadata i32* %7, metadata !2212, metadata !DIExpression()) #20, !dbg !3407
  %8 = and i8 %1, 31, !dbg !3411
  %9 = zext i8 %8 to i32, !dbg !3411
  call void @llvm.dbg.value(metadata i32 %9, metadata !2214, metadata !DIExpression()) #20, !dbg !3407
  %10 = load i32, i32* %7, align 4, !dbg !3412, !tbaa !1510
  %11 = lshr i32 %10, %9, !dbg !3413
  %12 = and i32 %11, 1, !dbg !3414
  call void @llvm.dbg.value(metadata i32 %12, metadata !2215, metadata !DIExpression()) #20, !dbg !3407
  %13 = xor i32 %12, 1, !dbg !3415
  %14 = shl i32 %13, %9, !dbg !3416
  %15 = xor i32 %14, %10, !dbg !3417
  store i32 %15, i32* %7, align 4, !dbg !3417, !tbaa !1510
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3418
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3419
  ret i8* %16, !dbg !3420
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3421 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3375, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i8* %0, metadata !3423, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8* %0, metadata !3399, metadata !DIExpression()) #20, !dbg !3428
  call void @llvm.dbg.value(metadata i8 58, metadata !3400, metadata !DIExpression()) #20, !dbg !3428
  call void @llvm.dbg.value(metadata i8* %0, metadata !3372, metadata !DIExpression()) #20, !dbg !3429
  call void @llvm.dbg.value(metadata i64 -1, metadata !3373, metadata !DIExpression()) #20, !dbg !3429
  call void @llvm.dbg.value(metadata i8 58, metadata !3374, metadata !DIExpression()) #20, !dbg !3429
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3430
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3430
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3431, !tbaa.struct !3380
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2207, metadata !DIExpression()) #20, !dbg !3432
  call void @llvm.dbg.value(metadata i8 58, metadata !2208, metadata !DIExpression()) #20, !dbg !3432
  call void @llvm.dbg.value(metadata i32 1, metadata !2209, metadata !DIExpression()) #20, !dbg !3432
  call void @llvm.dbg.value(metadata i8 58, metadata !2210, metadata !DIExpression()) #20, !dbg !3432
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3434
  call void @llvm.dbg.value(metadata i32* %4, metadata !2212, metadata !DIExpression()) #20, !dbg !3432
  call void @llvm.dbg.value(metadata i32 26, metadata !2214, metadata !DIExpression()) #20, !dbg !3432
  %5 = load i32, i32* %4, align 4, !dbg !3435, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %5, metadata !2215, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3432
  %6 = or i32 %5, 67108864, !dbg !3436
  store i32 %6, i32* %4, align 4, !dbg !3436, !tbaa !1510
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #20, !dbg !3437
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3438
  ret i8* %7, !dbg !3439
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3440 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3375, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8* %0, metadata !3442, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %1, metadata !3443, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i8* %0, metadata !3372, metadata !DIExpression()) #20, !dbg !3447
  call void @llvm.dbg.value(metadata i64 %1, metadata !3373, metadata !DIExpression()) #20, !dbg !3447
  call void @llvm.dbg.value(metadata i8 58, metadata !3374, metadata !DIExpression()) #20, !dbg !3447
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3448
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3448
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3449, !tbaa.struct !3380
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2207, metadata !DIExpression()) #20, !dbg !3450
  call void @llvm.dbg.value(metadata i8 58, metadata !2208, metadata !DIExpression()) #20, !dbg !3450
  call void @llvm.dbg.value(metadata i32 1, metadata !2209, metadata !DIExpression()) #20, !dbg !3450
  call void @llvm.dbg.value(metadata i8 58, metadata !2210, metadata !DIExpression()) #20, !dbg !3450
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3452
  call void @llvm.dbg.value(metadata i32* %5, metadata !2212, metadata !DIExpression()) #20, !dbg !3450
  call void @llvm.dbg.value(metadata i32 26, metadata !2214, metadata !DIExpression()) #20, !dbg !3450
  %6 = load i32, i32* %5, align 4, !dbg !3453, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %6, metadata !2215, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3450
  %7 = or i32 %6, 67108864, !dbg !3454
  store i32 %7, i32* %5, align 4, !dbg !3454, !tbaa !1510
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #20, !dbg !3455
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3456
  ret i8* %8, !dbg !3457
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3458 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3275, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3464
  call void @llvm.dbg.value(metadata i32 %0, metadata !3460, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 %1, metadata !3461, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %2, metadata !3462, metadata !DIExpression()), !dbg !3466
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3467
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3467
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3463, metadata !DIExpression()), !dbg !3468
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3469
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3469
  call void @llvm.dbg.value(metadata i32 %1, metadata !3270, metadata !DIExpression()) #20, !dbg !3470
  call void @llvm.dbg.value(metadata i32 0, metadata !3275, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3470
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3464, !alias.scope !3471
  %8 = icmp eq i32 %1, 10, !dbg !3474
  br i1 %8, label %9, label %10, !dbg !3475

9:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3476, !noalias !3471
  unreachable, !dbg !3476

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3275, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3470
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3469
  store i32 %1, i32* %11, align 8, !dbg !3469, !tbaa.struct !3380
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3469
  %13 = bitcast i32* %12 to i8*, !dbg !3469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3469, !tbaa.struct !3380
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3469
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2207, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i8 58, metadata !2208, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i32 1, metadata !2209, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i8 58, metadata !2210, metadata !DIExpression()), !dbg !3477
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3479
  call void @llvm.dbg.value(metadata i32* %14, metadata !2212, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i32 26, metadata !2214, metadata !DIExpression()), !dbg !3477
  %15 = load i32, i32* %14, align 4, !dbg !3480, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %15, metadata !2215, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3477
  %16 = or i32 %15, 67108864, !dbg !3481
  store i32 %16, i32* %14, align 4, !dbg !3481, !tbaa !1510
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3482
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3483
  ret i8* %17, !dbg !3484
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3485 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3493, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 %0, metadata !3489, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8* %1, metadata !3490, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8* %2, metadata !3491, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8* %3, metadata !3492, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 %0, metadata !3498, metadata !DIExpression()) #20, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %1, metadata !3499, metadata !DIExpression()) #20, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %2, metadata !3500, metadata !DIExpression()) #20, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %3, metadata !3501, metadata !DIExpression()) #20, !dbg !3506
  call void @llvm.dbg.value(metadata i64 -1, metadata !3502, metadata !DIExpression()) #20, !dbg !3506
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3507
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3508, !tbaa.struct !3380
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2248, metadata !DIExpression()) #20, !dbg !3509
  call void @llvm.dbg.value(metadata i8* %1, metadata !2249, metadata !DIExpression()) #20, !dbg !3509
  call void @llvm.dbg.value(metadata i8* %2, metadata !2250, metadata !DIExpression()) #20, !dbg !3509
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2248, metadata !DIExpression()) #20, !dbg !3509
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3511
  store i32 10, i32* %7, align 8, !dbg !3512, !tbaa !2189
  %8 = icmp ne i8* %1, null, !dbg !3513
  %9 = icmp ne i8* %2, null, !dbg !3514
  %10 = and i1 %8, %9, !dbg !3515
  br i1 %10, label %12, label %11, !dbg !3515

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3516
  unreachable, !dbg !3516

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3517
  store i8* %1, i8** %13, align 8, !dbg !3518, !tbaa !2264
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3519
  store i8* %2, i8** %14, align 8, !dbg !3520, !tbaa !2267
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #20, !dbg !3521
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3522
  ret i8* %15, !dbg !3523
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3494 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3498, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %1, metadata !3499, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %2, metadata !3500, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %3, metadata !3501, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i64 %4, metadata !3502, metadata !DIExpression()), !dbg !3524
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3525
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3525
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3493, metadata !DIExpression()), !dbg !3526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3527, !tbaa.struct !3380
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2248, metadata !DIExpression()) #20, !dbg !3528
  call void @llvm.dbg.value(metadata i8* %1, metadata !2249, metadata !DIExpression()) #20, !dbg !3528
  call void @llvm.dbg.value(metadata i8* %2, metadata !2250, metadata !DIExpression()) #20, !dbg !3528
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2248, metadata !DIExpression()) #20, !dbg !3528
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3530
  store i32 10, i32* %8, align 8, !dbg !3531, !tbaa !2189
  %9 = icmp ne i8* %1, null, !dbg !3532
  %10 = icmp ne i8* %2, null, !dbg !3533
  %11 = and i1 %9, %10, !dbg !3534
  br i1 %11, label %13, label %12, !dbg !3534

12:                                               ; preds = %5
  tail call void @abort() #24, !dbg !3535
  unreachable, !dbg !3535

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3536
  store i8* %1, i8** %14, align 8, !dbg !3537, !tbaa !2264
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3538
  store i8* %2, i8** %15, align 8, !dbg !3539, !tbaa !2267
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3540
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3541
  ret i8* %16, !dbg !3542
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3543 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3493, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8* %0, metadata !3547, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i8* %1, metadata !3548, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i8* %2, metadata !3549, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i32 0, metadata !3489, metadata !DIExpression()) #20, !dbg !3554
  call void @llvm.dbg.value(metadata i8* %0, metadata !3490, metadata !DIExpression()) #20, !dbg !3554
  call void @llvm.dbg.value(metadata i8* %1, metadata !3491, metadata !DIExpression()) #20, !dbg !3554
  call void @llvm.dbg.value(metadata i8* %2, metadata !3492, metadata !DIExpression()) #20, !dbg !3554
  call void @llvm.dbg.value(metadata i32 0, metadata !3498, metadata !DIExpression()) #20, !dbg !3555
  call void @llvm.dbg.value(metadata i8* %0, metadata !3499, metadata !DIExpression()) #20, !dbg !3555
  call void @llvm.dbg.value(metadata i8* %1, metadata !3500, metadata !DIExpression()) #20, !dbg !3555
  call void @llvm.dbg.value(metadata i8* %2, metadata !3501, metadata !DIExpression()) #20, !dbg !3555
  call void @llvm.dbg.value(metadata i64 -1, metadata !3502, metadata !DIExpression()) #20, !dbg !3555
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3556
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3556
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3557, !tbaa.struct !3380
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2248, metadata !DIExpression()) #20, !dbg !3558
  call void @llvm.dbg.value(metadata i8* %0, metadata !2249, metadata !DIExpression()) #20, !dbg !3558
  call void @llvm.dbg.value(metadata i8* %1, metadata !2250, metadata !DIExpression()) #20, !dbg !3558
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2248, metadata !DIExpression()) #20, !dbg !3558
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3560
  store i32 10, i32* %6, align 8, !dbg !3561, !tbaa !2189
  %7 = icmp ne i8* %0, null, !dbg !3562
  %8 = icmp ne i8* %1, null, !dbg !3563
  %9 = and i1 %7, %8, !dbg !3564
  br i1 %9, label %11, label %10, !dbg !3564

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !3565
  unreachable, !dbg !3565

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3566
  store i8* %0, i8** %12, align 8, !dbg !3567, !tbaa !2264
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3568
  store i8* %1, i8** %13, align 8, !dbg !3569, !tbaa !2267
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #20, !dbg !3570
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3571
  ret i8* %14, !dbg !3572
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3573 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3493, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i8* %0, metadata !3577, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8* %1, metadata !3578, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8* %2, metadata !3579, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 %3, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 0, metadata !3498, metadata !DIExpression()) #20, !dbg !3584
  call void @llvm.dbg.value(metadata i8* %0, metadata !3499, metadata !DIExpression()) #20, !dbg !3584
  call void @llvm.dbg.value(metadata i8* %1, metadata !3500, metadata !DIExpression()) #20, !dbg !3584
  call void @llvm.dbg.value(metadata i8* %2, metadata !3501, metadata !DIExpression()) #20, !dbg !3584
  call void @llvm.dbg.value(metadata i64 %3, metadata !3502, metadata !DIExpression()) #20, !dbg !3584
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3585
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3586, !tbaa.struct !3380
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2248, metadata !DIExpression()) #20, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %0, metadata !2249, metadata !DIExpression()) #20, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %1, metadata !2250, metadata !DIExpression()) #20, !dbg !3587
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2248, metadata !DIExpression()) #20, !dbg !3587
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3589
  store i32 10, i32* %7, align 8, !dbg !3590, !tbaa !2189
  %8 = icmp ne i8* %0, null, !dbg !3591
  %9 = icmp ne i8* %1, null, !dbg !3592
  %10 = and i1 %8, %9, !dbg !3593
  br i1 %10, label %12, label %11, !dbg !3593

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3594
  unreachable, !dbg !3594

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3595
  store i8* %0, i8** %13, align 8, !dbg !3596, !tbaa !2264
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3597
  store i8* %1, i8** %14, align 8, !dbg !3598, !tbaa !2267
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #20, !dbg !3599
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3600
  ret i8* %15, !dbg !3601
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3602 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3606, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i8* %1, metadata !3607, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %2, metadata !3608, metadata !DIExpression()), !dbg !3609
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3610
  ret i8* %4, !dbg !3611
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3612 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3616, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i64 %1, metadata !3617, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i32 0, metadata !3606, metadata !DIExpression()) #20, !dbg !3619
  call void @llvm.dbg.value(metadata i8* %0, metadata !3607, metadata !DIExpression()) #20, !dbg !3619
  call void @llvm.dbg.value(metadata i64 %1, metadata !3608, metadata !DIExpression()) #20, !dbg !3619
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3621
  ret i8* %3, !dbg !3622
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3627, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i8* %1, metadata !3628, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 %0, metadata !3606, metadata !DIExpression()) #20, !dbg !3630
  call void @llvm.dbg.value(metadata i8* %1, metadata !3607, metadata !DIExpression()) #20, !dbg !3630
  call void @llvm.dbg.value(metadata i64 -1, metadata !3608, metadata !DIExpression()) #20, !dbg !3630
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3632
  ret i8* %3, !dbg !3633
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3634 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3636, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 0, metadata !3627, metadata !DIExpression()) #20, !dbg !3638
  call void @llvm.dbg.value(metadata i8* %0, metadata !3628, metadata !DIExpression()) #20, !dbg !3638
  call void @llvm.dbg.value(metadata i32 0, metadata !3606, metadata !DIExpression()) #20, !dbg !3640
  call void @llvm.dbg.value(metadata i8* %0, metadata !3607, metadata !DIExpression()) #20, !dbg !3640
  call void @llvm.dbg.value(metadata i64 -1, metadata !3608, metadata !DIExpression()) #20, !dbg !3640
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3642
  ret i8* %2, !dbg !3643
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3644 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3652, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i8* %1, metadata !3653, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i8* %2, metadata !3654, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i8* %3, metadata !3655, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i8** %4, metadata !3656, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i64 %5, metadata !3657, metadata !DIExpression()), !dbg !3658
  %7 = icmp eq i8* %1, null, !dbg !3659
  br i1 %7, label %10, label %8, !dbg !3661

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #20, !dbg !3662
  br label %12, !dbg !3662

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.96, i64 0, i64 0), i8* %2, i8* %3) #20, !dbg !3663
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.97, i64 0, i64 0), i32 5) #20, !dbg !3664
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #20, !dbg !3664
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.98, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3665
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.99, i64 0, i64 0), i32 5) #20, !dbg !3666
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.100, i64 0, i64 0)) #20, !dbg !3666
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.98, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3667
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
  ], !dbg !3668

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.101, i64 0, i64 0), i32 5) #20, !dbg !3669
  %21 = load i8*, i8** %4, align 8, !dbg !3669, !tbaa !1400
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #20, !dbg !3669
  br label %147, !dbg !3671

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.102, i64 0, i64 0), i32 5) #20, !dbg !3672
  %25 = load i8*, i8** %4, align 8, !dbg !3672, !tbaa !1400
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3672
  %27 = load i8*, i8** %26, align 8, !dbg !3672, !tbaa !1400
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #20, !dbg !3672
  br label %147, !dbg !3673

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.103, i64 0, i64 0), i32 5) #20, !dbg !3674
  %31 = load i8*, i8** %4, align 8, !dbg !3674, !tbaa !1400
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3674
  %33 = load i8*, i8** %32, align 8, !dbg !3674, !tbaa !1400
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3674
  %35 = load i8*, i8** %34, align 8, !dbg !3674, !tbaa !1400
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #20, !dbg !3674
  br label %147, !dbg !3675

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.104, i64 0, i64 0), i32 5) #20, !dbg !3676
  %39 = load i8*, i8** %4, align 8, !dbg !3676, !tbaa !1400
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3676
  %41 = load i8*, i8** %40, align 8, !dbg !3676, !tbaa !1400
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3676
  %43 = load i8*, i8** %42, align 8, !dbg !3676, !tbaa !1400
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3676
  %45 = load i8*, i8** %44, align 8, !dbg !3676, !tbaa !1400
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #20, !dbg !3676
  br label %147, !dbg !3677

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.105, i64 0, i64 0), i32 5) #20, !dbg !3678
  %49 = load i8*, i8** %4, align 8, !dbg !3678, !tbaa !1400
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3678
  %51 = load i8*, i8** %50, align 8, !dbg !3678, !tbaa !1400
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3678
  %53 = load i8*, i8** %52, align 8, !dbg !3678, !tbaa !1400
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3678
  %55 = load i8*, i8** %54, align 8, !dbg !3678, !tbaa !1400
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3678
  %57 = load i8*, i8** %56, align 8, !dbg !3678, !tbaa !1400
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #20, !dbg !3678
  br label %147, !dbg !3679

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.106, i64 0, i64 0), i32 5) #20, !dbg !3680
  %61 = load i8*, i8** %4, align 8, !dbg !3680, !tbaa !1400
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3680
  %63 = load i8*, i8** %62, align 8, !dbg !3680, !tbaa !1400
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3680
  %65 = load i8*, i8** %64, align 8, !dbg !3680, !tbaa !1400
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3680
  %67 = load i8*, i8** %66, align 8, !dbg !3680, !tbaa !1400
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3680
  %69 = load i8*, i8** %68, align 8, !dbg !3680, !tbaa !1400
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3680
  %71 = load i8*, i8** %70, align 8, !dbg !3680, !tbaa !1400
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #20, !dbg !3680
  br label %147, !dbg !3681

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.107, i64 0, i64 0), i32 5) #20, !dbg !3682
  %75 = load i8*, i8** %4, align 8, !dbg !3682, !tbaa !1400
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3682
  %77 = load i8*, i8** %76, align 8, !dbg !3682, !tbaa !1400
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3682
  %79 = load i8*, i8** %78, align 8, !dbg !3682, !tbaa !1400
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3682
  %81 = load i8*, i8** %80, align 8, !dbg !3682, !tbaa !1400
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3682
  %83 = load i8*, i8** %82, align 8, !dbg !3682, !tbaa !1400
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3682
  %85 = load i8*, i8** %84, align 8, !dbg !3682, !tbaa !1400
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3682
  %87 = load i8*, i8** %86, align 8, !dbg !3682, !tbaa !1400
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #20, !dbg !3682
  br label %147, !dbg !3683

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.108, i64 0, i64 0), i32 5) #20, !dbg !3684
  %91 = load i8*, i8** %4, align 8, !dbg !3684, !tbaa !1400
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3684
  %93 = load i8*, i8** %92, align 8, !dbg !3684, !tbaa !1400
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3684
  %95 = load i8*, i8** %94, align 8, !dbg !3684, !tbaa !1400
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3684
  %97 = load i8*, i8** %96, align 8, !dbg !3684, !tbaa !1400
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3684
  %99 = load i8*, i8** %98, align 8, !dbg !3684, !tbaa !1400
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3684
  %101 = load i8*, i8** %100, align 8, !dbg !3684, !tbaa !1400
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3684
  %103 = load i8*, i8** %102, align 8, !dbg !3684, !tbaa !1400
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3684
  %105 = load i8*, i8** %104, align 8, !dbg !3684, !tbaa !1400
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #20, !dbg !3684
  br label %147, !dbg !3685

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.109, i64 0, i64 0), i32 5) #20, !dbg !3686
  %109 = load i8*, i8** %4, align 8, !dbg !3686, !tbaa !1400
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3686
  %111 = load i8*, i8** %110, align 8, !dbg !3686, !tbaa !1400
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3686
  %113 = load i8*, i8** %112, align 8, !dbg !3686, !tbaa !1400
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3686
  %115 = load i8*, i8** %114, align 8, !dbg !3686, !tbaa !1400
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3686
  %117 = load i8*, i8** %116, align 8, !dbg !3686, !tbaa !1400
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3686
  %119 = load i8*, i8** %118, align 8, !dbg !3686, !tbaa !1400
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3686
  %121 = load i8*, i8** %120, align 8, !dbg !3686, !tbaa !1400
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3686
  %123 = load i8*, i8** %122, align 8, !dbg !3686, !tbaa !1400
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3686
  %125 = load i8*, i8** %124, align 8, !dbg !3686, !tbaa !1400
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #20, !dbg !3686
  br label %147, !dbg !3687

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.110, i64 0, i64 0), i32 5) #20, !dbg !3688
  %129 = load i8*, i8** %4, align 8, !dbg !3688, !tbaa !1400
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3688
  %131 = load i8*, i8** %130, align 8, !dbg !3688, !tbaa !1400
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3688
  %133 = load i8*, i8** %132, align 8, !dbg !3688, !tbaa !1400
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3688
  %135 = load i8*, i8** %134, align 8, !dbg !3688, !tbaa !1400
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3688
  %137 = load i8*, i8** %136, align 8, !dbg !3688, !tbaa !1400
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3688
  %139 = load i8*, i8** %138, align 8, !dbg !3688, !tbaa !1400
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3688
  %141 = load i8*, i8** %140, align 8, !dbg !3688, !tbaa !1400
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3688
  %143 = load i8*, i8** %142, align 8, !dbg !3688, !tbaa !1400
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3688
  %145 = load i8*, i8** %144, align 8, !dbg !3688, !tbaa !1400
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #20, !dbg !3688
  br label %147, !dbg !3689

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3690
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3691 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3695, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i8* %1, metadata !3696, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i8* %2, metadata !3697, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i8* %3, metadata !3698, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i8** %4, metadata !3699, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 0, metadata !3700, metadata !DIExpression()), !dbg !3701
  br label %6, !dbg !3702

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3704
  call void @llvm.dbg.value(metadata i64 %7, metadata !3700, metadata !DIExpression()), !dbg !3701
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3705
  %9 = load i8*, i8** %8, align 8, !dbg !3705, !tbaa !1400
  %10 = icmp eq i8* %9, null, !dbg !3707
  %11 = add i64 %7, 1, !dbg !3708
  call void @llvm.dbg.value(metadata i64 %11, metadata !3700, metadata !DIExpression()), !dbg !3701
  br i1 %10, label %12, label %6, !dbg !3707, !llvm.loop !3709

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3700, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %7, metadata !3700, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %7, metadata !3700, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %7, metadata !3700, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %7, metadata !3700, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %7, metadata !3700, metadata !DIExpression()), !dbg !3701
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3711
  ret void, !dbg !3712
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3713 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3724, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %1, metadata !3725, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %2, metadata !3726, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %3, metadata !3727, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3728, metadata !DIExpression()), !dbg !3732
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3733
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3733
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3730, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i64 0, metadata !3729, metadata !DIExpression()), !dbg !3732
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3735
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3735
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3735
  %11 = load i32, i32* %8, align 8, !dbg !3738
  %12 = icmp ult i32 %11, 41, !dbg !3738
  br i1 %12, label %13, label %18, !dbg !3738

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3738
  %15 = zext i32 %11 to i64, !dbg !3738
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3738
  %17 = add nuw nsw i32 %11, 8, !dbg !3738
  store i32 %17, i32* %8, align 8, !dbg !3738
  br label %21, !dbg !3738

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3738
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3738
  store i8* %20, i8** %9, align 8, !dbg !3738
  br label %21, !dbg !3738

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3738
  %25 = load i8*, i8** %24, align 8, !dbg !3738
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3739
  store i8* %25, i8** %26, align 16, !dbg !3740, !tbaa !1400
  %27 = icmp eq i8* %25, null, !dbg !3741
  br i1 %27, label %30, label %28, !dbg !3742

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3729, metadata !DIExpression()), !dbg !3732
  %29 = icmp ult i32 %22, 41, !dbg !3738
  br i1 %29, label %35, label %32, !dbg !3738

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3743
  call void @llvm.dbg.value(metadata i64 %31, metadata !3729, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 %31, metadata !3729, metadata !DIExpression()), !dbg !3732
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3744
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3745
  ret void, !dbg !3745

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3738
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3738
  store i8* %34, i8** %9, align 8, !dbg !3738
  br label %40, !dbg !3738

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3738
  %37 = zext i32 %22 to i64, !dbg !3738
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3738
  %39 = add nuw nsw i32 %22, 8, !dbg !3738
  store i32 %39, i32* %8, align 8, !dbg !3738
  br label %40, !dbg !3738

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3738
  %44 = load i8*, i8** %43, align 8, !dbg !3738
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3739
  store i8* %44, i8** %45, align 8, !dbg !3740, !tbaa !1400
  %46 = icmp eq i8* %44, null, !dbg !3741
  br i1 %46, label %30, label %47, !dbg !3742

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3729, metadata !DIExpression()), !dbg !3732
  %48 = icmp ult i32 %41, 41, !dbg !3738
  br i1 %48, label %52, label %49, !dbg !3738

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3738
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3738
  store i8* %51, i8** %9, align 8, !dbg !3738
  br label %57, !dbg !3738

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3738
  %54 = zext i32 %41 to i64, !dbg !3738
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3738
  %56 = add nuw nsw i32 %41, 8, !dbg !3738
  store i32 %56, i32* %8, align 8, !dbg !3738
  br label %57, !dbg !3738

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3738
  %61 = load i8*, i8** %60, align 8, !dbg !3738
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3739
  store i8* %61, i8** %62, align 16, !dbg !3740, !tbaa !1400
  %63 = icmp eq i8* %61, null, !dbg !3741
  br i1 %63, label %30, label %64, !dbg !3742

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3729, metadata !DIExpression()), !dbg !3732
  %65 = icmp ult i32 %58, 41, !dbg !3738
  br i1 %65, label %69, label %66, !dbg !3738

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3738
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3738
  store i8* %68, i8** %9, align 8, !dbg !3738
  br label %74, !dbg !3738

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3738
  %71 = zext i32 %58 to i64, !dbg !3738
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3738
  %73 = add nuw nsw i32 %58, 8, !dbg !3738
  store i32 %73, i32* %8, align 8, !dbg !3738
  br label %74, !dbg !3738

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3738
  %78 = load i8*, i8** %77, align 8, !dbg !3738
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3739
  store i8* %78, i8** %79, align 8, !dbg !3740, !tbaa !1400
  %80 = icmp eq i8* %78, null, !dbg !3741
  br i1 %80, label %30, label %81, !dbg !3742

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3729, metadata !DIExpression()), !dbg !3732
  %82 = icmp ult i32 %75, 41, !dbg !3738
  br i1 %82, label %86, label %83, !dbg !3738

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3738
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3738
  store i8* %85, i8** %9, align 8, !dbg !3738
  br label %91, !dbg !3738

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3738
  %88 = zext i32 %75 to i64, !dbg !3738
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3738
  %90 = add nuw nsw i32 %75, 8, !dbg !3738
  store i32 %90, i32* %8, align 8, !dbg !3738
  br label %91, !dbg !3738

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3738
  %95 = load i8*, i8** %94, align 8, !dbg !3738
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3739
  store i8* %95, i8** %96, align 16, !dbg !3740, !tbaa !1400
  %97 = icmp eq i8* %95, null, !dbg !3741
  br i1 %97, label %30, label %98, !dbg !3742

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3729, metadata !DIExpression()), !dbg !3732
  %99 = icmp ult i32 %92, 41, !dbg !3738
  br i1 %99, label %103, label %100, !dbg !3738

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3738
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3738
  store i8* %102, i8** %9, align 8, !dbg !3738
  br label %108, !dbg !3738

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3738
  %105 = zext i32 %92 to i64, !dbg !3738
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3738
  %107 = add nuw nsw i32 %92, 8, !dbg !3738
  store i32 %107, i32* %8, align 8, !dbg !3738
  br label %108, !dbg !3738

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3738
  %111 = load i8*, i8** %110, align 8, !dbg !3738
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3739
  store i8* %111, i8** %112, align 8, !dbg !3740, !tbaa !1400
  %113 = icmp eq i8* %111, null, !dbg !3741
  br i1 %113, label %30, label %114, !dbg !3742

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3729, metadata !DIExpression()), !dbg !3732
  %115 = load i8*, i8** %9, align 8, !dbg !3738
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3738
  store i8* %116, i8** %9, align 8, !dbg !3738
  %117 = bitcast i8* %115 to i8**, !dbg !3738
  %118 = load i8*, i8** %117, align 8, !dbg !3738
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3739
  store i8* %118, i8** %119, align 16, !dbg !3740, !tbaa !1400
  %120 = icmp eq i8* %118, null, !dbg !3741
  br i1 %120, label %30, label %121, !dbg !3742

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3729, metadata !DIExpression()), !dbg !3732
  %122 = load i8*, i8** %9, align 8, !dbg !3738
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3738
  store i8* %123, i8** %9, align 8, !dbg !3738
  %124 = bitcast i8* %122 to i8**, !dbg !3738
  %125 = load i8*, i8** %124, align 8, !dbg !3738
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3739
  store i8* %125, i8** %126, align 8, !dbg !3740, !tbaa !1400
  %127 = icmp eq i8* %125, null, !dbg !3741
  br i1 %127, label %30, label %128, !dbg !3742

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3729, metadata !DIExpression()), !dbg !3732
  %129 = load i8*, i8** %9, align 8, !dbg !3738
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3738
  store i8* %130, i8** %9, align 8, !dbg !3738
  %131 = bitcast i8* %129 to i8**, !dbg !3738
  %132 = load i8*, i8** %131, align 8, !dbg !3738
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3739
  store i8* %132, i8** %133, align 16, !dbg !3740, !tbaa !1400
  %134 = icmp eq i8* %132, null, !dbg !3741
  br i1 %134, label %30, label %135, !dbg !3742

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3729, metadata !DIExpression()), !dbg !3732
  %136 = load i8*, i8** %9, align 8, !dbg !3738
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3738
  store i8* %137, i8** %9, align 8, !dbg !3738
  %138 = bitcast i8* %136 to i8**, !dbg !3738
  %139 = load i8*, i8** %138, align 8, !dbg !3738
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3739
  store i8* %139, i8** %140, align 8, !dbg !3740, !tbaa !1400
  %141 = icmp eq i8* %139, null, !dbg !3741
  %142 = select i1 %141, i64 9, i64 10, !dbg !3742
  br label %30, !dbg !3742
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3746 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3750, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i8* %1, metadata !3751, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i8* %2, metadata !3752, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i8* %3, metadata !3753, metadata !DIExpression()), !dbg !3760
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3761
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3761
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3754, metadata !DIExpression()), !dbg !3762
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3763
  call void @llvm.va_start(i8* nonnull %6), !dbg !3763
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3764
  call void @llvm.va_end(i8* nonnull %6), !dbg !3765
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3766
  ret void, !dbg !3766
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #20

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3767 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3768, !tbaa !1400
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.98, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3768
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.113, i64 0, i64 0), i32 5) #20, !dbg !3769
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.114, i64 0, i64 0)) #20, !dbg !3769
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.115, i64 0, i64 0), i32 5) #20, !dbg !3770
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.116, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.117, i64 0, i64 0)) #20, !dbg !3770
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.118, i64 0, i64 0), i32 5) #20, !dbg !3771
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.119, i64 0, i64 0)) #20, !dbg !3771
  ret void, !dbg !3772
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3773 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3777, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 %1, metadata !3778, metadata !DIExpression()), !dbg !3779
  %3 = udiv i64 9223372036854775807, %1, !dbg !3780
  %4 = icmp ult i64 %3, %0, !dbg !3780
  br i1 %4, label %5, label %6, !dbg !3782

5:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3783
  unreachable, !dbg !3783

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3784
  call void @llvm.dbg.value(metadata i64 %7, metadata !3785, metadata !DIExpression()) #20, !dbg !3791
  %8 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !3793
  call void @llvm.dbg.value(metadata i8* %8, metadata !3790, metadata !DIExpression()) #20, !dbg !3791
  %9 = icmp eq i8* %8, null, !dbg !3794
  %10 = icmp ne i64 %7, 0, !dbg !3796
  %11 = and i1 %10, %9, !dbg !3797
  br i1 %11, label %12, label %13, !dbg !3797

12:                                               ; preds = %6
  tail call void @xalloc_die() #24, !dbg !3798
  unreachable, !dbg !3798

13:                                               ; preds = %6
  ret i8* %8, !dbg !3799
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3786 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3785, metadata !DIExpression()), !dbg !3800
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3801
  call void @llvm.dbg.value(metadata i8* %2, metadata !3790, metadata !DIExpression()), !dbg !3800
  %3 = icmp eq i8* %2, null, !dbg !3802
  %4 = icmp ne i64 %0, 0, !dbg !3803
  %5 = and i1 %4, %3, !dbg !3804
  br i1 %5, label %6, label %7, !dbg !3804

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3805
  unreachable, !dbg !3805

7:                                                ; preds = %1
  ret i8* %2, !dbg !3806
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3807 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3811, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i64 %1, metadata !3812, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i64 %2, metadata !3813, metadata !DIExpression()), !dbg !3814
  %4 = udiv i64 9223372036854775807, %2, !dbg !3815
  %5 = icmp ult i64 %4, %1, !dbg !3815
  br i1 %5, label %6, label %7, !dbg !3817

6:                                                ; preds = %3
  tail call void @xalloc_die() #24, !dbg !3818
  unreachable, !dbg !3818

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3819
  call void @llvm.dbg.value(metadata i8* %0, metadata !3820, metadata !DIExpression()) #20, !dbg !3826
  call void @llvm.dbg.value(metadata i64 %8, metadata !3825, metadata !DIExpression()) #20, !dbg !3826
  %9 = icmp eq i64 %8, 0, !dbg !3828
  %10 = icmp ne i8* %0, null, !dbg !3830
  %11 = and i1 %10, %9, !dbg !3831
  br i1 %11, label %12, label %13, !dbg !3831

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #20, !dbg !3832
  br label %19, !dbg !3834

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #20, !dbg !3835
  call void @llvm.dbg.value(metadata i8* %14, metadata !3820, metadata !DIExpression()) #20, !dbg !3826
  %15 = icmp eq i8* %14, null, !dbg !3836
  %16 = icmp ne i64 %8, 0, !dbg !3838
  %17 = and i1 %16, %15, !dbg !3839
  br i1 %17, label %18, label %19, !dbg !3839

18:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3840
  unreachable, !dbg !3840

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3826
  ret i8* %20, !dbg !3841
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3821 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3820, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i64 %1, metadata !3825, metadata !DIExpression()), !dbg !3842
  %3 = icmp eq i64 %1, 0, !dbg !3843
  %4 = icmp ne i8* %0, null, !dbg !3844
  %5 = and i1 %4, %3, !dbg !3845
  br i1 %5, label %6, label %7, !dbg !3845

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #20, !dbg !3846
  br label %13, !dbg !3847

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #20, !dbg !3848
  call void @llvm.dbg.value(metadata i8* %8, metadata !3820, metadata !DIExpression()), !dbg !3842
  %9 = icmp eq i8* %8, null, !dbg !3849
  %10 = icmp ne i64 %1, 0, !dbg !3850
  %11 = and i1 %10, %9, !dbg !3851
  br i1 %11, label %12, label %13, !dbg !3851

12:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !3852
  unreachable, !dbg !3852

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3842
  ret i8* %14, !dbg !3853
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !755 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !760, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64* %1, metadata !761, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 %2, metadata !762, metadata !DIExpression()), !dbg !3854
  %4 = load i64, i64* %1, align 8, !dbg !3855, !tbaa !1879
  call void @llvm.dbg.value(metadata i64 %4, metadata !763, metadata !DIExpression()), !dbg !3854
  %5 = icmp eq i8* %0, null, !dbg !3856
  br i1 %5, label %6, label %20, !dbg !3858

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3859
  br i1 %7, label %8, label %13, !dbg !3862

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3863
  call void @llvm.dbg.value(metadata i64 %9, metadata !763, metadata !DIExpression()), !dbg !3854
  %10 = icmp ugt i64 %2, 128, !dbg !3865
  %11 = zext i1 %10 to i64, !dbg !3865
  %12 = add nuw nsw i64 %9, %11, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %12, metadata !763, metadata !DIExpression()), !dbg !3854
  br label %13, !dbg !3867

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3854
  call void @llvm.dbg.value(metadata i64 %14, metadata !763, metadata !DIExpression()), !dbg !3854
  %15 = udiv i64 9223372036854775807, %2, !dbg !3868
  %16 = icmp ult i64 %15, %14, !dbg !3868
  br i1 %16, label %19, label %17, !dbg !3870

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !763, metadata !DIExpression()), !dbg !3854
  store i64 %14, i64* %1, align 8, !dbg !3871, !tbaa !1879
  %18 = mul i64 %14, %2, !dbg !3872
  call void @llvm.dbg.value(metadata i8* %0, metadata !3820, metadata !DIExpression()) #20, !dbg !3873
  call void @llvm.dbg.value(metadata i64 %28, metadata !3825, metadata !DIExpression()) #20, !dbg !3873
  br label %31, !dbg !3875

19:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3876
  unreachable, !dbg !3876

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3877
  %22 = icmp ugt i64 %21, %4, !dbg !3880
  br i1 %22, label %24, label %23, !dbg !3881

23:                                               ; preds = %20
  tail call void @xalloc_die() #24, !dbg !3882
  unreachable, !dbg !3882

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3883
  %26 = add nuw i64 %4, 1, !dbg !3884
  %27 = add i64 %26, %25, !dbg !3885
  call void @llvm.dbg.value(metadata i64 %27, metadata !763, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 %27, metadata !763, metadata !DIExpression()), !dbg !3854
  store i64 %27, i64* %1, align 8, !dbg !3871, !tbaa !1879
  %28 = mul i64 %27, %2, !dbg !3872
  call void @llvm.dbg.value(metadata i8* %0, metadata !3820, metadata !DIExpression()) #20, !dbg !3873
  call void @llvm.dbg.value(metadata i64 %28, metadata !3825, metadata !DIExpression()) #20, !dbg !3873
  %29 = icmp eq i64 %28, 0, !dbg !3886
  br i1 %29, label %30, label %31, !dbg !3875

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #20, !dbg !3887
  br label %38, !dbg !3888

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #20, !dbg !3889
  call void @llvm.dbg.value(metadata i8* %33, metadata !3820, metadata !DIExpression()) #20, !dbg !3873
  %34 = icmp eq i8* %33, null, !dbg !3890
  %35 = icmp ne i64 %32, 0, !dbg !3891
  %36 = and i1 %35, %34, !dbg !3892
  br i1 %36, label %37, label %38, !dbg !3892

37:                                               ; preds = %31
  tail call void @xalloc_die() #24, !dbg !3893
  unreachable, !dbg !3893

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3873
  ret i8* %39, !dbg !3894
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !3895 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3897, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %0, metadata !3785, metadata !DIExpression()) #20, !dbg !3899
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3901
  call void @llvm.dbg.value(metadata i8* %2, metadata !3790, metadata !DIExpression()) #20, !dbg !3899
  %3 = icmp eq i8* %2, null, !dbg !3902
  %4 = icmp ne i64 %0, 0, !dbg !3903
  %5 = and i1 %4, %3, !dbg !3904
  br i1 %5, label %6, label %7, !dbg !3904

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3905
  unreachable, !dbg !3905

7:                                                ; preds = %1
  ret i8* %2, !dbg !3906
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3907 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3911, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64* %1, metadata !3912, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i8* %0, metadata !760, metadata !DIExpression()) #20, !dbg !3914
  call void @llvm.dbg.value(metadata i64* %1, metadata !761, metadata !DIExpression()) #20, !dbg !3914
  call void @llvm.dbg.value(metadata i64 1, metadata !762, metadata !DIExpression()) #20, !dbg !3914
  %3 = load i64, i64* %1, align 8, !dbg !3916, !tbaa !1879
  call void @llvm.dbg.value(metadata i64 %3, metadata !763, metadata !DIExpression()) #20, !dbg !3914
  %4 = icmp eq i8* %0, null, !dbg !3917
  br i1 %4, label %5, label %12, !dbg !3918

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3919
  br i1 %6, label %9, label %7, !dbg !3920

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !763, metadata !DIExpression()) #20, !dbg !3914
  %8 = icmp slt i64 %3, 0, !dbg !3921
  br i1 %8, label %11, label %9, !dbg !3922

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !763, metadata !DIExpression()) #20, !dbg !3914
  store i64 %10, i64* %1, align 8, !dbg !3923, !tbaa !1879
  call void @llvm.dbg.value(metadata i8* %0, metadata !3820, metadata !DIExpression()) #20, !dbg !3924
  call void @llvm.dbg.value(metadata i64 %18, metadata !3825, metadata !DIExpression()) #20, !dbg !3924
  br label %21, !dbg !3926

11:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !3927
  unreachable, !dbg !3927

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3928
  br i1 %13, label %15, label %14, !dbg !3929

14:                                               ; preds = %12
  tail call void @xalloc_die() #24, !dbg !3930
  unreachable, !dbg !3930

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3931
  %17 = add nuw nsw i64 %3, 1, !dbg !3932
  %18 = add nuw nsw i64 %17, %16, !dbg !3933
  call void @llvm.dbg.value(metadata i64 %18, metadata !763, metadata !DIExpression()) #20, !dbg !3914
  call void @llvm.dbg.value(metadata i64 %18, metadata !763, metadata !DIExpression()) #20, !dbg !3914
  store i64 %18, i64* %1, align 8, !dbg !3923, !tbaa !1879
  call void @llvm.dbg.value(metadata i8* %0, metadata !3820, metadata !DIExpression()) #20, !dbg !3924
  call void @llvm.dbg.value(metadata i64 %18, metadata !3825, metadata !DIExpression()) #20, !dbg !3924
  %19 = icmp eq i64 %18, 0, !dbg !3934
  br i1 %19, label %20, label %21, !dbg !3926

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #20, !dbg !3935
  br label %28, !dbg !3936

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #20, !dbg !3937
  call void @llvm.dbg.value(metadata i8* %23, metadata !3820, metadata !DIExpression()) #20, !dbg !3924
  %24 = icmp eq i8* %23, null, !dbg !3938
  %25 = icmp ne i64 %22, 0, !dbg !3939
  %26 = and i1 %25, %24, !dbg !3940
  br i1 %26, label %27, label %28, !dbg !3940

27:                                               ; preds = %21
  tail call void @xalloc_die() #24, !dbg !3941
  unreachable, !dbg !3941

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3924
  ret i8* %29, !dbg !3942
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3943 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i64 %0, metadata !3947, metadata !DIExpression()) #20, !dbg !3952
  call void @llvm.dbg.value(metadata i64 1, metadata !3950, metadata !DIExpression()) #20, !dbg !3952
  %2 = icmp slt i64 %0, 0, !dbg !3954
  br i1 %2, label %6, label %3, !dbg !3956

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #20, !dbg !3957
  call void @llvm.dbg.value(metadata i8* %4, metadata !3951, metadata !DIExpression()) #20, !dbg !3952
  %5 = icmp eq i8* %4, null, !dbg !3958
  br i1 %5, label %6, label %7, !dbg !3959

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #24, !dbg !3960
  unreachable, !dbg !3960

7:                                                ; preds = %3
  ret i8* %4, !dbg !3961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3948 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3947, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i64 %1, metadata !3950, metadata !DIExpression()), !dbg !3962
  %3 = udiv i64 9223372036854775807, %1, !dbg !3963
  %4 = icmp ult i64 %3, %0, !dbg !3963
  br i1 %4, label %8, label %5, !dbg !3964

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #20, !dbg !3965
  call void @llvm.dbg.value(metadata i8* %6, metadata !3951, metadata !DIExpression()), !dbg !3962
  %7 = icmp eq i8* %6, null, !dbg !3966
  br i1 %7, label %8, label %9, !dbg !3967

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #24, !dbg !3968
  unreachable, !dbg !3968

9:                                                ; preds = %5
  ret i8* %6, !dbg !3969
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3970 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3974, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i64 %1, metadata !3975, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i64 %1, metadata !3785, metadata !DIExpression()) #20, !dbg !3977
  %3 = tail call noalias i8* @malloc(i64 %1) #20, !dbg !3979
  call void @llvm.dbg.value(metadata i8* %3, metadata !3790, metadata !DIExpression()) #20, !dbg !3977
  %4 = icmp eq i8* %3, null, !dbg !3980
  %5 = icmp ne i64 %1, 0, !dbg !3981
  %6 = and i1 %5, %4, !dbg !3982
  br i1 %6, label %7, label %8, !dbg !3982

7:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3983
  unreachable, !dbg !3983

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3984, metadata !DIExpression()) #20, !dbg !3993
  call void @llvm.dbg.value(metadata i8* %0, metadata !3991, metadata !DIExpression()) #20, !dbg !3993
  call void @llvm.dbg.value(metadata i64 %1, metadata !3992, metadata !DIExpression()) #20, !dbg !3993
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #20, !dbg !3995
  ret i8* %3, !dbg !3996
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3997 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3999, metadata !DIExpression()), !dbg !4000
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !4001
  %3 = add i64 %2, 1, !dbg !4002
  call void @llvm.dbg.value(metadata i8* %0, metadata !3974, metadata !DIExpression()) #20, !dbg !4003
  call void @llvm.dbg.value(metadata i64 %3, metadata !3975, metadata !DIExpression()) #20, !dbg !4003
  call void @llvm.dbg.value(metadata i64 %3, metadata !3785, metadata !DIExpression()) #20, !dbg !4005
  %4 = tail call noalias i8* @malloc(i64 %3) #20, !dbg !4007
  call void @llvm.dbg.value(metadata i8* %4, metadata !3790, metadata !DIExpression()) #20, !dbg !4005
  %5 = icmp eq i8* %4, null, !dbg !4008
  %6 = icmp ne i64 %3, 0, !dbg !4009
  %7 = and i1 %6, %5, !dbg !4010
  br i1 %7, label %8, label %9, !dbg !4010

8:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4011
  unreachable, !dbg !4011

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3984, metadata !DIExpression()) #20, !dbg !4012
  call void @llvm.dbg.value(metadata i8* %0, metadata !3991, metadata !DIExpression()) #20, !dbg !4012
  call void @llvm.dbg.value(metadata i64 %3, metadata !3992, metadata !DIExpression()) #20, !dbg !4012
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #20, !dbg !4014
  ret i8* %4, !dbg !4015
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4016 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4017, !tbaa !1510
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.132, i64 0, i64 0), i32 5) #20, !dbg !4018
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), i8* %2) #20, !dbg !4019
  tail call void @abort() #24, !dbg !4020
  unreachable, !dbg !4020
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @xstrtod(i8* %0, i8** %1, double* nocapture %2, double (i8*, i8**)* nocapture %3) local_unnamed_addr #8 !dbg !4021 {
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4023, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i8** %1, metadata !4024, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata double* %2, metadata !4025, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata double (i8*, i8**)* %3, metadata !4026, metadata !DIExpression()), !dbg !4030
  %6 = bitcast i8** %5 to i8*, !dbg !4031
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #20, !dbg !4031
  call void @llvm.dbg.value(metadata i8 1, metadata !4029, metadata !DIExpression()), !dbg !4030
  %7 = tail call i32* @__errno_location() #26, !dbg !4032
  store i32 0, i32* %7, align 4, !dbg !4033, !tbaa !1510
  call void @llvm.dbg.value(metadata i8** %5, metadata !4028, metadata !DIExpression(DW_OP_deref)), !dbg !4030
  %8 = call double %3(i8* %0, i8** nonnull %5) #20, !dbg !4034
  call void @llvm.dbg.value(metadata double %8, metadata !4027, metadata !DIExpression()), !dbg !4030
  %9 = load i8*, i8** %5, align 8, !dbg !4035, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %9, metadata !4028, metadata !DIExpression()), !dbg !4030
  %10 = icmp eq i8* %9, %0, !dbg !4037
  %11 = ptrtoint i8* %9 to i64, !dbg !4038
  br i1 %10, label %22, label %12, !dbg !4038

12:                                               ; preds = %4
  %13 = icmp eq i8** %1, null, !dbg !4039
  br i1 %13, label %14, label %17, !dbg !4040

14:                                               ; preds = %12
  %15 = load i8, i8* %9, align 1, !dbg !4041, !tbaa !1565
  %16 = icmp eq i8 %15, 0, !dbg !4042
  br i1 %16, label %17, label %27, !dbg !4043

17:                                               ; preds = %14, %12
  %18 = fcmp une double %8, 0.000000e+00, !dbg !4044
  br i1 %18, label %19, label %22, !dbg !4047

19:                                               ; preds = %17
  %20 = load i32, i32* %7, align 4, !dbg !4048, !tbaa !1510
  %21 = icmp ne i32 %20, 34, !dbg !4049
  br label %22, !dbg !4050

22:                                               ; preds = %19, %4, %17
  %23 = phi i1 [ true, %17 ], [ false, %4 ], [ %21, %19 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !4029, metadata !DIExpression()), !dbg !4030
  %24 = icmp eq i8** %1, null, !dbg !4051
  br i1 %24, label %27, label %25, !dbg !4053

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8* undef, metadata !4028, metadata !DIExpression()), !dbg !4030
  %26 = bitcast i8** %1 to i64*, !dbg !4054
  store i64 %11, i64* %26, align 8, !dbg !4054, !tbaa !1400
  br label %27, !dbg !4055

27:                                               ; preds = %14, %22, %25
  %28 = phi i1 [ %23, %22 ], [ %23, %25 ], [ false, %14 ]
  store double %8, double* %2, align 8, !dbg !4056, !tbaa !1520
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #20, !dbg !4057
  ret i1 %28, !dbg !4058
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !4059 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4061, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i64 %1, metadata !4062, metadata !DIExpression()), !dbg !4067
  %3 = icmp eq i64 %0, 0, !dbg !4068
  %4 = icmp eq i64 %1, 0, !dbg !4069
  %5 = or i1 %3, %4, !dbg !4070
  br i1 %5, label %11, label %6, !dbg !4070

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4064, metadata !DIExpression()), !dbg !4071
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4072
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4072
  br i1 %8, label %9, label %11, !dbg !4074

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #26, !dbg !4075
  store i32 12, i32* %10, align 4, !dbg !4077, !tbaa !1510
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4061, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i64 %12, metadata !4062, metadata !DIExpression()), !dbg !4067
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #20, !dbg !4078
  call void @llvm.dbg.value(metadata i8* %14, metadata !4063, metadata !DIExpression()), !dbg !4067
  br label %15, !dbg !4079

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4067
  ret i8* %16, !dbg !4080
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4081 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4089, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i8* %1, metadata !4090, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 %2, metadata !4091, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4092, metadata !DIExpression()), !dbg !4098
  %6 = bitcast i32* %5 to i8*, !dbg !4099
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4099
  %7 = icmp eq i32* %0, null, !dbg !4100
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4102
  call void @llvm.dbg.value(metadata i32* %8, metadata !4089, metadata !DIExpression()), !dbg !4098
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #20, !dbg !4103
  call void @llvm.dbg.value(metadata i64 %9, metadata !4093, metadata !DIExpression()), !dbg !4098
  %10 = icmp ugt i64 %9, -3, !dbg !4104
  %11 = icmp ne i64 %2, 0, !dbg !4105
  %12 = and i1 %11, %10, !dbg !4106
  br i1 %12, label %13, label %18, !dbg !4106

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #20, !dbg !4107
  br i1 %14, label %18, label %15, !dbg !4108

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4109, !tbaa !1565
  call void @llvm.dbg.value(metadata i8 %16, metadata !4095, metadata !DIExpression()), !dbg !4110
  %17 = zext i8 %16 to i32, !dbg !4111
  store i32 %17, i32* %8, align 4, !dbg !4112, !tbaa !1510
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4098
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4113
  ret i64 %19, !dbg !4113
}

; Function Attrs: nounwind
declare !dbg !783 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @str2sig(i8* %0, i32* nocapture %1) local_unnamed_addr #8 !dbg !4114 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4116, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32* %1, metadata !4117, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i8* %0, metadata !4119, metadata !DIExpression()) #20, !dbg !4140
  %5 = load i8, i8* %0, align 1, !dbg !4142, !tbaa !1565
  %6 = sext i8 %5 to i32, !dbg !4142
  %7 = add nsw i32 %6, -48, !dbg !4142
  %8 = icmp ult i32 %7, 10, !dbg !4142
  br i1 %8, label %9, label %21, !dbg !4143

9:                                                ; preds = %2
  %10 = bitcast i8** %3 to i8*, !dbg !4144
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #20, !dbg !4144
  call void @llvm.dbg.value(metadata i8** %3, metadata !4124, metadata !DIExpression(DW_OP_deref)) #20, !dbg !4145
  %11 = call i64 @strtol(i8* nonnull %0, i8** nonnull %3, i32 10) #20, !dbg !4146
  call void @llvm.dbg.value(metadata i64 %11, metadata !4127, metadata !DIExpression()) #20, !dbg !4145
  %12 = load i8*, i8** %3, align 8, !dbg !4147, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %12, metadata !4124, metadata !DIExpression()) #20, !dbg !4145
  %13 = load i8, i8* %12, align 1, !dbg !4149, !tbaa !1565
  %14 = icmp ne i8 %13, 0, !dbg !4149
  %15 = icmp sgt i64 %11, 64, !dbg !4150
  %16 = trunc i64 %11 to i32, !dbg !4151
  %17 = or i1 %15, %14, !dbg !4152
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #20, !dbg !4153
  br i1 %17, label %73, label %74

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %22, 1, !dbg !4154
  call void @llvm.dbg.value(metadata i64 %19, metadata !4128, metadata !DIExpression()) #20, !dbg !4157
  call void @llvm.dbg.value(metadata i64 %19, metadata !4128, metadata !DIExpression()) #20, !dbg !4157
  %20 = icmp eq i64 %19, 35, !dbg !4158
  br i1 %20, label %30, label %21, !dbg !4159, !llvm.loop !4160

21:                                               ; preds = %2, %18
  %22 = phi i64 [ %19, %18 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !4128, metadata !DIExpression()) #20, !dbg !4157
  %23 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 1, i64 0, !dbg !4162
  %24 = tail call i32 @strcmp(i8* nonnull %23, i8* nonnull %0) #23, !dbg !4164
  %25 = icmp eq i32 %24, 0, !dbg !4165
  call void @llvm.dbg.value(metadata i64 %22, metadata !4128, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #20, !dbg !4157
  br i1 %25, label %26, label %18, !dbg !4166

26:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 %22, metadata !4128, metadata !DIExpression()) #20, !dbg !4157
  call void @llvm.dbg.value(metadata i64 %22, metadata !4128, metadata !DIExpression()) #20, !dbg !4157
  call void @llvm.dbg.value(metadata i64 %22, metadata !4128, metadata !DIExpression()) #20, !dbg !4157
  call void @llvm.dbg.value(metadata i64 %22, metadata !4128, metadata !DIExpression()) #20, !dbg !4157
  call void @llvm.dbg.value(metadata i64 %22, metadata !4128, metadata !DIExpression()) #20, !dbg !4157
  call void @llvm.dbg.value(metadata i64 %22, metadata !4128, metadata !DIExpression()) #20, !dbg !4157
  call void @llvm.dbg.value(metadata i64 %22, metadata !4128, metadata !DIExpression()) #20, !dbg !4157
  %27 = and i64 %22, 4294967295, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %22, metadata !4128, metadata !DIExpression()) #20, !dbg !4157
  %28 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %27, i32 0, !dbg !4168
  %29 = load i32, i32* %28, align 4, !dbg !4168, !tbaa !4169
  br label %74

30:                                               ; preds = %18
  %31 = bitcast i8** %4 to i8*, !dbg !4171
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #20, !dbg !4171
  %32 = tail call i32 @__libc_current_sigrtmin() #20, !dbg !4172
  call void @llvm.dbg.value(metadata i32 %32, metadata !4132, metadata !DIExpression()) #20, !dbg !4173
  %33 = tail call i32 @__libc_current_sigrtmax() #20, !dbg !4174
  call void @llvm.dbg.value(metadata i32 %33, metadata !4133, metadata !DIExpression()) #20, !dbg !4173
  %34 = icmp sgt i32 %32, 0, !dbg !4175
  br i1 %34, label %35, label %50, !dbg !4176

35:                                               ; preds = %30
  %36 = tail call i32 @strncmp(i8* nonnull %0, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i64 0, i64 0), i64 5) #23, !dbg !4177
  %37 = icmp eq i32 %36, 0, !dbg !4178
  br i1 %37, label %38, label %50, !dbg !4179

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !4180
  call void @llvm.dbg.value(metadata i8** %4, metadata !4130, metadata !DIExpression(DW_OP_deref)) #20, !dbg !4173
  %40 = call i64 @strtol(i8* nonnull %39, i8** nonnull %4, i32 10) #20, !dbg !4181
  call void @llvm.dbg.value(metadata i64 %40, metadata !4134, metadata !DIExpression()) #20, !dbg !4182
  %41 = load i8*, i8** %4, align 8, !dbg !4183, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %41, metadata !4130, metadata !DIExpression()) #20, !dbg !4173
  %42 = load i8, i8* %41, align 1, !dbg !4185, !tbaa !1565
  %43 = icmp eq i8 %42, 0, !dbg !4185
  %44 = icmp sgt i64 %40, -1, !dbg !4186
  %45 = and i1 %44, %43, !dbg !4187
  br i1 %45, label %46, label %67, !dbg !4187

46:                                               ; preds = %38
  %47 = sub nsw i32 %33, %32, !dbg !4188
  %48 = sext i32 %47 to i64, !dbg !4189
  %49 = icmp sgt i64 %40, %48, !dbg !4190
  br i1 %49, label %67, label %68, !dbg !4191

50:                                               ; preds = %35, %30
  %51 = icmp sgt i32 %33, 0, !dbg !4192
  br i1 %51, label %52, label %67, !dbg !4193

52:                                               ; preds = %50
  %53 = tail call i32 @strncmp(i8* nonnull %0, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i64 5) #23, !dbg !4194
  %54 = icmp eq i32 %53, 0, !dbg !4195
  br i1 %54, label %55, label %67, !dbg !4196

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !4197
  call void @llvm.dbg.value(metadata i8** %4, metadata !4130, metadata !DIExpression(DW_OP_deref)) #20, !dbg !4173
  %57 = call i64 @strtol(i8* nonnull %56, i8** nonnull %4, i32 10) #20, !dbg !4198
  call void @llvm.dbg.value(metadata i64 %57, metadata !4137, metadata !DIExpression()) #20, !dbg !4199
  %58 = load i8*, i8** %4, align 8, !dbg !4200, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %58, metadata !4130, metadata !DIExpression()) #20, !dbg !4173
  %59 = load i8, i8* %58, align 1, !dbg !4202, !tbaa !1565
  %60 = icmp eq i8 %59, 0, !dbg !4202
  br i1 %60, label %61, label %67, !dbg !4203

61:                                               ; preds = %55
  %62 = sub nsw i32 %32, %33, !dbg !4204
  %63 = sext i32 %62 to i64, !dbg !4205
  %64 = icmp sge i64 %57, %63, !dbg !4206
  %65 = icmp slt i64 %57, 1, !dbg !4207
  %66 = and i1 %64, %65, !dbg !4208
  br i1 %66, label %68, label %67, !dbg !4208

67:                                               ; preds = %61, %55, %52, %50, %46, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #20, !dbg !4209
  br label %73

68:                                               ; preds = %61, %46
  %69 = phi i64 [ %40, %46 ], [ %57, %61 ]
  %70 = phi i32 [ %32, %46 ], [ %33, %61 ]
  %71 = trunc i64 %69 to i32, !dbg !4210
  %72 = add i32 %70, %71, !dbg !4210
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #20, !dbg !4209
  br label %74

73:                                               ; preds = %67, %9
  br label %74, !dbg !4211

74:                                               ; preds = %9, %26, %68, %73
  %75 = phi i32 [ -1, %73 ], [ %16, %9 ], [ %72, %68 ], [ %29, %26 ], !dbg !4140
  store i32 %75, i32* %1, align 4, !dbg !4212, !tbaa !1510
  %76 = ashr i32 %75, 31, !dbg !4213
  ret i32 %76, !dbg !4214
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @sig2str(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4215 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4217, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i8* %1, metadata !4218, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i32 0, metadata !4219, metadata !DIExpression()), !dbg !4225
  br label %8, !dbg !4226

3:                                                ; preds = %8
  %4 = add nuw nsw i64 %9, 1, !dbg !4228
  call void @llvm.dbg.value(metadata i64 %4, metadata !4219, metadata !DIExpression()), !dbg !4225
  %5 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %4, i32 0, !dbg !4230
  %6 = load i32, i32* %5, align 4, !dbg !4230, !tbaa !4169
  %7 = icmp eq i32 %6, %0, !dbg !4232
  call void @llvm.dbg.value(metadata i64 %4, metadata !4219, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4225
  br i1 %7, label %13, label %40, !dbg !4233

8:                                                ; preds = %55, %2
  %9 = phi i64 [ 0, %2 ], [ %56, %55 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !4219, metadata !DIExpression()), !dbg !4225
  %10 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %9, i32 0, !dbg !4230
  %11 = load i32, i32* %10, align 4, !dbg !4230, !tbaa !4169
  %12 = icmp eq i32 %11, %0, !dbg !4232
  call void @llvm.dbg.value(metadata i64 %9, metadata !4219, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4225
  br i1 %12, label %13, label %3, !dbg !4233

13:                                               ; preds = %50, %45, %40, %3, %8
  %14 = phi i64 [ %9, %8 ], [ %4, %3 ], [ %41, %40 ], [ %46, %45 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4219, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 %14, metadata !4219, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 %14, metadata !4219, metadata !DIExpression()), !dbg !4225
  %15 = and i64 %14, 4294967295, !dbg !4234
  call void @llvm.dbg.value(metadata i64 %14, metadata !4219, metadata !DIExpression()), !dbg !4225
  %16 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %15, i32 1, i64 0, !dbg !4235
  call void @llvm.dbg.value(metadata i8* %1, metadata !4237, metadata !DIExpression()) #20, !dbg !4245
  call void @llvm.dbg.value(metadata i8* %16, metadata !4244, metadata !DIExpression()) #20, !dbg !4245
  %17 = call i8* @strcpy(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(1) %16), !dbg !4247
  br label %38, !dbg !4248

18:                                               ; preds = %55
  %19 = tail call i32 @__libc_current_sigrtmin() #20, !dbg !4249
  call void @llvm.dbg.value(metadata i32 %19, metadata !4220, metadata !DIExpression()), !dbg !4250
  %20 = tail call i32 @__libc_current_sigrtmax() #20, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %20, metadata !4222, metadata !DIExpression()), !dbg !4250
  %21 = icmp sgt i32 %19, %0, !dbg !4252
  %22 = icmp slt i32 %20, %0, !dbg !4254
  %23 = or i1 %21, %22, !dbg !4255
  br i1 %23, label %38, label %24, !dbg !4255

24:                                               ; preds = %18
  %25 = sub nsw i32 %20, %19, !dbg !4256
  %26 = sdiv i32 %25, 2, !dbg !4258
  %27 = add nsw i32 %26, %19, !dbg !4259
  %28 = icmp slt i32 %27, %0, !dbg !4260
  call void @llvm.dbg.value(metadata i8* %1, metadata !4237, metadata !DIExpression()) #20, !dbg !4261
  call void @llvm.dbg.value(metadata i8* %1, metadata !4237, metadata !DIExpression()) #20, !dbg !4264
  br i1 %28, label %30, label %29, !dbg !4267

29:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i64 0, i64 0), metadata !4244, metadata !DIExpression()) #20, !dbg !4264
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i64 0, i64 0), i64 6, i1 false), !dbg !4268
  call void @llvm.dbg.value(metadata i32 %19, metadata !4223, metadata !DIExpression()), !dbg !4250
  br label %31, !dbg !4269

30:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), metadata !4244, metadata !DIExpression()) #20, !dbg !4261
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i64 6, i1 false), !dbg !4270
  call void @llvm.dbg.value(metadata i32 %20, metadata !4223, metadata !DIExpression()), !dbg !4250
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i32 [ %19, %29 ], [ %20, %30 ], !dbg !4271
  call void @llvm.dbg.value(metadata i32 %32, metadata !4223, metadata !DIExpression()), !dbg !4250
  %33 = sub nsw i32 %0, %32, !dbg !4272
  call void @llvm.dbg.value(metadata i32 %33, metadata !4224, metadata !DIExpression()), !dbg !4250
  %34 = icmp eq i32 %33, 0, !dbg !4273
  br i1 %34, label %38, label %35, !dbg !4275

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !4276
  %37 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %36, i32 1, i64 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.146, i64 0, i64 0), i32 %33) #20, !dbg !4276
  br label %38, !dbg !4276

38:                                               ; preds = %18, %31, %35, %13
  %39 = phi i32 [ 0, %13 ], [ -1, %18 ], [ 0, %31 ], [ 0, %35 ], !dbg !4225
  ret i32 %39, !dbg !4277

40:                                               ; preds = %3
  %41 = add nuw nsw i64 %9, 2, !dbg !4228
  call void @llvm.dbg.value(metadata i64 %41, metadata !4219, metadata !DIExpression()), !dbg !4225
  %42 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %41, i32 0, !dbg !4230
  %43 = load i32, i32* %42, align 4, !dbg !4230, !tbaa !4169
  %44 = icmp eq i32 %43, %0, !dbg !4232
  call void @llvm.dbg.value(metadata i64 %41, metadata !4219, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4225
  br i1 %44, label %13, label %45, !dbg !4233

45:                                               ; preds = %40
  %46 = add nuw nsw i64 %9, 3, !dbg !4228
  call void @llvm.dbg.value(metadata i64 %46, metadata !4219, metadata !DIExpression()), !dbg !4225
  %47 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %46, i32 0, !dbg !4230
  %48 = load i32, i32* %47, align 4, !dbg !4230, !tbaa !4169
  %49 = icmp eq i32 %48, %0, !dbg !4232
  call void @llvm.dbg.value(metadata i64 %46, metadata !4219, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4225
  br i1 %49, label %13, label %50, !dbg !4233

50:                                               ; preds = %45
  %51 = add nuw nsw i64 %9, 4, !dbg !4228
  call void @llvm.dbg.value(metadata i64 %51, metadata !4219, metadata !DIExpression()), !dbg !4225
  %52 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %51, i32 0, !dbg !4230
  %53 = load i32, i32* %52, align 4, !dbg !4230, !tbaa !4169
  %54 = icmp eq i32 %53, %0, !dbg !4232
  call void @llvm.dbg.value(metadata i64 %51, metadata !4219, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4225
  br i1 %54, label %13, label %55, !dbg !4233

55:                                               ; preds = %50
  %56 = add nuw nsw i64 %9, 5, !dbg !4228
  call void @llvm.dbg.value(metadata i64 %56, metadata !4219, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 %56, metadata !4219, metadata !DIExpression()), !dbg !4225
  %57 = icmp eq i64 %56, 35, !dbg !4278
  br i1 %57, label %18, label %8, !dbg !4226, !llvm.loop !4279
}

; Function Attrs: nofree nounwind
declare i8* @strcpy(i8* noalias returned, i8* noalias nocapture readonly) #15

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @c_strtod(i8* %0, i8** %1) local_unnamed_addr #8 !dbg !4281 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4283, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i8** %1, metadata !4284, metadata !DIExpression()), !dbg !4287
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !4288, !tbaa !1400
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !4288
  br i1 %4, label %5, label %7, !dbg !4294

5:                                                ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.149, i64 0, i64 0), %struct.__locale_struct* null) #20, !dbg !4295
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !4296, !tbaa !1400
  br label %7, !dbg !4297

7:                                                ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !4298, !tbaa !1400
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !4286, metadata !DIExpression()), !dbg !4287
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !4299
  br i1 %9, label %10, label %13, !dbg !4301

10:                                               ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !4302
  br i1 %11, label %15, label %12, !dbg !4305

12:                                               ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !4306, !tbaa !1400
  br label %15, !dbg !4307

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #20, !dbg !4308
  call void @llvm.dbg.value(metadata double %14, metadata !4285, metadata !DIExpression()), !dbg !4287
  br label %15, !dbg !4309

15:                                               ; preds = %12, %10, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %12 ], !dbg !4287
  ret double %16, !dbg !4310
}

; Function Attrs: nounwind
declare !dbg !683 %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !658 double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4311 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4317, metadata !DIExpression()), !dbg !4322
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #20, !dbg !4323
  call void @llvm.dbg.value(metadata i1 undef, metadata !4318, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4324, metadata !DIExpression()), !dbg !4328
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4330
  %4 = load i32, i32* %3, align 8, !dbg !4330, !tbaa !4331
  %5 = and i32 %4, 32, !dbg !4330
  %6 = icmp eq i32 %5, 0, !dbg !4333
  call void @llvm.dbg.value(metadata i1 %6, metadata !4320, metadata !DIExpression()), !dbg !4322
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #20, !dbg !4334
  %8 = icmp ne i32 %7, 0, !dbg !4335
  call void @llvm.dbg.value(metadata i1 %8, metadata !4321, metadata !DIExpression()), !dbg !4322
  br i1 %6, label %9, label %19, !dbg !4336

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4338
  call void @llvm.dbg.value(metadata i1 %10, metadata !4318, metadata !DIExpression()), !dbg !4322
  %11 = xor i1 %8, true, !dbg !4339
  %12 = or i1 %10, %11, !dbg !4339
  %13 = sext i1 %8 to i32, !dbg !4339
  br i1 %12, label %22, label %14, !dbg !4339

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #26, !dbg !4340
  %16 = load i32, i32* %15, align 4, !dbg !4340, !tbaa !1510
  %17 = icmp ne i32 %16, 9, !dbg !4341
  %18 = sext i1 %17 to i32, !dbg !4342
  br label %22, !dbg !4342

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4343

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #26, !dbg !4345
  store i32 0, i32* %21, align 4, !dbg !4347, !tbaa !1510
  br label %22, !dbg !4345

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4322
  ret i32 %23, !dbg !4348
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4349 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4351, metadata !DIExpression()), !dbg !4356
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4357
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4357
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4352, metadata !DIExpression()), !dbg !4358
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #20, !dbg !4359
  %5 = icmp eq i32 %4, 0, !dbg !4359
  br i1 %5, label %6, label %13, !dbg !4361

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4362
  %8 = load i16, i16* %7, align 16, !dbg !4362
  %9 = icmp eq i16 %8, 67, !dbg !4362
  br i1 %9, label %13, label %10, !dbg !4363

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.154, i64 0, i64 0), i64 6), !dbg !4364
  %12 = icmp ne i32 %11, 0, !dbg !4365
  br label %13, !dbg !4363

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4356
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4366
  ret i1 %14, !dbg !4366
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4367 {
  %1 = tail call i8* @nl_langinfo(i32 14) #20, !dbg !4370
  call void @llvm.dbg.value(metadata i8* %1, metadata !4369, metadata !DIExpression()), !dbg !4371
  %2 = icmp eq i8* %1, null, !dbg !4372
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.157, i64 0, i64 0), i8* %1, !dbg !4374
  call void @llvm.dbg.value(metadata i8* %3, metadata !4369, metadata !DIExpression()), !dbg !4371
  %4 = load i8, i8* %3, align 1, !dbg !4375, !tbaa !1565
  %5 = icmp eq i8 %4, 0, !dbg !4379
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.158, i64 0, i64 0), i8* %3, !dbg !4380
  call void @llvm.dbg.value(metadata i8* %6, metadata !4369, metadata !DIExpression()), !dbg !4371
  ret i8* %6, !dbg !4381
}

; Function Attrs: nounwind
declare !dbg !1235 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4382 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4386, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i8* %1, metadata !4387, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i64 %2, metadata !4388, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i32 %0, metadata !4390, metadata !DIExpression()) #20, !dbg !4399
  call void @llvm.dbg.value(metadata i8* %1, metadata !4393, metadata !DIExpression()) #20, !dbg !4399
  call void @llvm.dbg.value(metadata i64 %2, metadata !4394, metadata !DIExpression()) #20, !dbg !4399
  call void @llvm.dbg.value(metadata i32 %0, metadata !4401, metadata !DIExpression()) #20, !dbg !4407
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4409
  call void @llvm.dbg.value(metadata i8* %4, metadata !4406, metadata !DIExpression()) #20, !dbg !4407
  call void @llvm.dbg.value(metadata i8* %4, metadata !4395, metadata !DIExpression()) #20, !dbg !4399
  %5 = icmp eq i8* %4, null, !dbg !4410
  br i1 %5, label %6, label %9, !dbg !4411

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4412
  br i1 %7, label %19, label %8, !dbg !4415

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4416, !tbaa !1565
  br label %19, !dbg !4417

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #23, !dbg !4418
  call void @llvm.dbg.value(metadata i64 %10, metadata !4396, metadata !DIExpression()) #20, !dbg !4419
  %11 = icmp ult i64 %10, %2, !dbg !4420
  br i1 %11, label %12, label %14, !dbg !4422

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4423
  call void @llvm.dbg.value(metadata i8* %1, metadata !4425, metadata !DIExpression()) #20, !dbg !4430
  call void @llvm.dbg.value(metadata i8* %4, metadata !4428, metadata !DIExpression()) #20, !dbg !4430
  call void @llvm.dbg.value(metadata i64 %13, metadata !4429, metadata !DIExpression()) #20, !dbg !4430
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #20, !dbg !4432
  br label %19, !dbg !4433

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4434
  br i1 %15, label %19, label %16, !dbg !4437

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4438
  call void @llvm.dbg.value(metadata i8* %1, metadata !4425, metadata !DIExpression()) #20, !dbg !4440
  call void @llvm.dbg.value(metadata i8* %4, metadata !4428, metadata !DIExpression()) #20, !dbg !4440
  call void @llvm.dbg.value(metadata i64 %17, metadata !4429, metadata !DIExpression()) #20, !dbg !4440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #20, !dbg !4442
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4443
  store i8 0, i8* %18, align 1, !dbg !4444, !tbaa !1565
  br label %19, !dbg !4445

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4446
  ret i32 %20, !dbg !4447
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4448 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4450, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata i32 %0, metadata !4401, metadata !DIExpression()) #20, !dbg !4452
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4454
  call void @llvm.dbg.value(metadata i8* %2, metadata !4406, metadata !DIExpression()) #20, !dbg !4452
  ret i8* %2, !dbg !4455
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4456 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4462, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i32 0, metadata !4463, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i32 0, metadata !4465, metadata !DIExpression()), !dbg !4466
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4467
  call void @llvm.dbg.value(metadata i32 %2, metadata !4464, metadata !DIExpression()), !dbg !4466
  %3 = icmp slt i32 %2, 0, !dbg !4468
  br i1 %3, label %4, label %6, !dbg !4470

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4471
  br label %24, !dbg !4472

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4473
  %8 = icmp eq i32 %7, 0, !dbg !4473
  br i1 %8, label %13, label %9, !dbg !4475

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4476
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #20, !dbg !4477
  %12 = icmp eq i64 %11, -1, !dbg !4478
  br i1 %12, label %16, label %13, !dbg !4479

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #20, !dbg !4480
  %15 = icmp eq i32 %14, 0, !dbg !4480
  br i1 %15, label %16, label %18, !dbg !4481

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4463, metadata !DIExpression()), !dbg !4466
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4482
  call void @llvm.dbg.value(metadata i32 %21, metadata !4465, metadata !DIExpression()), !dbg !4466
  br label %24, !dbg !4483

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #26, !dbg !4484
  %20 = load i32, i32* %19, align 4, !dbg !4484, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 %20, metadata !4463, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i32 %20, metadata !4463, metadata !DIExpression()), !dbg !4466
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4482
  call void @llvm.dbg.value(metadata i32 %21, metadata !4465, metadata !DIExpression()), !dbg !4466
  %22 = icmp eq i32 %20, 0, !dbg !4485
  br i1 %22, label %24, label %23, !dbg !4483

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4487, !tbaa !1510
  call void @llvm.dbg.value(metadata i32 -1, metadata !4465, metadata !DIExpression()), !dbg !4466
  br label %24, !dbg !4489

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4466
  ret i32 %25, !dbg !4490
}

; Function Attrs: nofree nounwind
declare !dbg !1244 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1279 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1280 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4491 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4497, metadata !DIExpression()), !dbg !4498
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4499
  br i1 %2, label %6, label %3, !dbg !4501

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4502
  %5 = icmp eq i32 %4, 0, !dbg !4502
  br i1 %5, label %6, label %8, !dbg !4503

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4504
  br label %17, !dbg !4505

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4506, metadata !DIExpression()) #20, !dbg !4511
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4513
  %10 = load i32, i32* %9, align 8, !dbg !4513, !tbaa !4331
  %11 = and i32 %10, 256, !dbg !4515
  %12 = icmp eq i32 %11, 0, !dbg !4515
  br i1 %12, label %15, label %13, !dbg !4516

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #20, !dbg !4517
  br label %15, !dbg !4517

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4518
  br label %17, !dbg !4519

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4498
  ret i32 %18, !dbg !4520
}

; Function Attrs: nofree nounwind
declare !dbg !1287 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4521 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4528, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %1, metadata !4529, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i32 %2, metadata !4530, metadata !DIExpression()), !dbg !4534
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4535
  %5 = load i8*, i8** %4, align 8, !dbg !4535, !tbaa !4536
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4537
  %7 = load i8*, i8** %6, align 8, !dbg !4537, !tbaa !4538
  %8 = icmp eq i8* %5, %7, !dbg !4539
  br i1 %8, label %9, label %28, !dbg !4540

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4541
  %11 = load i8*, i8** %10, align 8, !dbg !4541, !tbaa !4542
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4543
  %13 = load i8*, i8** %12, align 8, !dbg !4543, !tbaa !4544
  %14 = icmp eq i8* %11, %13, !dbg !4545
  br i1 %14, label %15, label %28, !dbg !4546

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4547
  %17 = load i8*, i8** %16, align 8, !dbg !4547, !tbaa !4548
  %18 = icmp eq i8* %17, null, !dbg !4549
  br i1 %18, label %19, label %28, !dbg !4550

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4551
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #20, !dbg !4552
  call void @llvm.dbg.value(metadata i64 %21, metadata !4531, metadata !DIExpression()), !dbg !4553
  %22 = icmp eq i64 %21, -1, !dbg !4554
  br i1 %22, label %30, label %23, !dbg !4556

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4557
  %25 = load i32, i32* %24, align 8, !dbg !4558, !tbaa !4331
  %26 = and i32 %25, -17, !dbg !4558
  store i32 %26, i32* %24, align 8, !dbg !4558, !tbaa !4331
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4559
  store i64 %21, i64* %27, align 8, !dbg !4560, !tbaa !4561
  br label %30, !dbg !4562

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4563
  br label %30, !dbg !4564

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4534
  ret i32 %31, !dbg !4565
}

; Function Attrs: nofree nounwind
declare !dbg !1363 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { norecurse nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nounwind readonly }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind readnone }
attributes #27 = { cold }

!llvm.dbg.cu = !{!2, !688, !397, !695, !402, !700, !448, !454, !495, !709, !633, !751, !772, !775, !778, !780, !641, !655, !799, !838, !845, !1238, !1241, !1284, !1325}
!llvm.ident = !{!1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366, !1366}
!llvm.module.flags = !{!1367, !1368, !1369, !1370, !1371}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 96, type: !388, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !369, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/timeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!13 = !{!14, !24, !85, !89, !93, !96, !99, !106, !121, !18, !75, !125, !129, !133, !138, !141, !144, !148, !151, !155, !159, !57, !171, !174, !186, !190, !288, !292, !293, !296, !299, !310, !348, !359, !362, !365}
!14 = !DISubprogram(name: "dcgettext", scope: !15, file: !15, line: 51, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!15 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !20, !20, !22}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{}
!24 = !DISubprogram(name: "fputs_unlocked", scope: !25, file: !25, line: 662, type: !26, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!25 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!26 = !DISubroutineType(types: !27)
!27 = !{!22, !20, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !30, line: 49, size: 1728, elements: !31)
!30 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !47, !48, !49, !50, !54, !56, !58, !62, !65, !67, !70, !73, !74, !76, !80, !81}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !29, file: !30, line: 51, baseType: !22, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !29, file: !30, line: 54, baseType: !18, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !29, file: !30, line: 55, baseType: !18, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !29, file: !30, line: 56, baseType: !18, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !29, file: !30, line: 57, baseType: !18, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !29, file: !30, line: 58, baseType: !18, size: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !29, file: !30, line: 59, baseType: !18, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !29, file: !30, line: 60, baseType: !18, size: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !29, file: !30, line: 61, baseType: !18, size: 64, offset: 512)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !29, file: !30, line: 64, baseType: !18, size: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !29, file: !30, line: 65, baseType: !18, size: 64, offset: 640)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !29, file: !30, line: 66, baseType: !18, size: 64, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !29, file: !30, line: 68, baseType: !45, size: 64, offset: 768)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !30, line: 36, flags: DIFlagFwdDecl)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !29, file: !30, line: 70, baseType: !28, size: 64, offset: 832)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !29, file: !30, line: 72, baseType: !22, size: 32, offset: 896)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !29, file: !30, line: 73, baseType: !22, size: 32, offset: 928)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !29, file: !30, line: 74, baseType: !51, size: 64, offset: 960)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !52, line: 152, baseType: !53)
!52 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!53 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !29, file: !30, line: 77, baseType: !55, size: 16, offset: 1024)
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !29, file: !30, line: 78, baseType: !57, size: 8, offset: 1040)
!57 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !29, file: !30, line: 79, baseType: !59, size: 8, offset: 1048)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 1)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !29, file: !30, line: 81, baseType: !63, size: 64, offset: 1088)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !30, line: 43, baseType: null)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !29, file: !30, line: 89, baseType: !66, size: 64, offset: 1152)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !52, line: 153, baseType: !53)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !29, file: !30, line: 91, baseType: !68, size: 64, offset: 1216)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !30, line: 37, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !29, file: !30, line: 92, baseType: !71, size: 64, offset: 1280)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !30, line: 38, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !29, file: !30, line: 93, baseType: !28, size: 64, offset: 1344)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !29, file: !30, line: 94, baseType: !75, size: 64, offset: 1408)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !29, file: !30, line: 95, baseType: !77, size: 64, offset: 1472)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !29, file: !30, line: 96, baseType: !22, size: 32, offset: 1536)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !29, file: !30, line: 98, baseType: !82, size: 160, offset: 1568)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 20)
!85 = !DISubprogram(name: "set_program_name", scope: !86, file: !86, line: 37, type: !87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!86 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!87 = !DISubroutineType(types: !88)
!88 = !{null, !20}
!89 = !DISubprogram(name: "setlocale", scope: !90, file: !90, line: 122, type: !91, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!90 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!91 = !DISubroutineType(types: !92)
!92 = !{!18, !22, !20}
!93 = !DISubprogram(name: "bindtextdomain", scope: !15, file: !15, line: 86, type: !94, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!94 = !DISubroutineType(types: !95)
!95 = !{!18, !20, !20}
!96 = !DISubprogram(name: "textdomain", scope: !15, file: !15, line: 82, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!97 = !DISubroutineType(types: !98)
!98 = !{!18, !20}
!99 = !DISubprogram(name: "atexit", scope: !100, file: !100, line: 595, type: !101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!100 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!101 = !DISubroutineType(types: !102)
!102 = !{!22, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{null}
!106 = !DISubprogram(name: "getopt_long", scope: !107, file: !107, line: 66, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!107 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!108 = !DISubroutineType(types: !109)
!109 = !{!22, !22, !110, !20, !112, !119}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !107, line: 50, size: 256, elements: !115)
!115 = !{!116, !117, !118, !120}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !114, file: !107, line: 52, baseType: !20, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !114, file: !107, line: 55, baseType: !22, size: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !114, file: !107, line: 56, baseType: !119, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !114, file: !107, line: 57, baseType: !22, size: 32, offset: 192)
!121 = !DISubprogram(name: "operand2sig", scope: !122, file: !122, line: 18, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!122 = !DIFile(filename: "src/operand2sig.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!123 = !DISubroutineType(types: !124)
!124 = !{!22, !20, !18}
!125 = !DISubprogram(name: "version_etc", scope: !126, file: !126, line: 69, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!126 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!127 = !DISubroutineType(types: !128)
!128 = !{null, !28, !20, !20, !20, null}
!129 = !DISubprogram(name: "setpgid", scope: !130, file: !130, line: 646, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!130 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!131 = !DISubroutineType(types: !132)
!132 = !{!22, !22, !22}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !134, line: 72, baseType: !135)
!134 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !22}
!138 = !DISubprogram(name: "signal", scope: !134, file: !134, line: 88, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!139 = !DISubroutineType(types: !140)
!140 = !{!135, !22, !135}
!141 = !DISubprogram(name: "fork", scope: !130, file: !130, line: 756, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!142 = !DISubroutineType(types: !143)
!143 = !{!22}
!144 = !DISubprogram(name: "error", scope: !145, file: !145, line: 52, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!145 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!146 = !DISubroutineType(types: !147)
!147 = !{null, !22, !22, !20, null}
!148 = !DISubprogram(name: "execvp", scope: !130, file: !130, line: 578, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!149 = !DISubroutineType(types: !150)
!150 = !{!22, !20, !110}
!151 = !DISubprogram(name: "quote", scope: !152, file: !152, line: 44, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!152 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !DISubroutineType(types: !154)
!154 = !{!20, !20}
!155 = !DISubprogram(name: "waitpid", scope: !156, file: !156, line: 111, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!156 = !DIFile(filename: "/usr/include/sys/wait.h", directory: "")
!157 = !DISubroutineType(types: !158)
!158 = !{!22, !22, !119, !22}
!159 = !DISubprogram(name: "sigsuspend", scope: !134, file: !134, line: 237, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!160 = !DISubroutineType(types: !161)
!161 = !{!22, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 5, size: 1024, elements: !166)
!165 = !DIFile(filename: "/usr/include/bits/types/__sigset_t.h", directory: "")
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !164, file: !165, line: 7, baseType: !168, size: 1024)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 1024, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 16)
!171 = !DISubprogram(name: "raise", scope: !134, file: !134, line: 123, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!172 = !DISubroutineType(types: !173)
!173 = !{!22, !22}
!174 = !DISubprogram(name: "xstrtod", scope: !175, file: !175, line: 26, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!175 = !DIFile(filename: "./lib/xstrtod.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !20, !179, !180, !182}
!178 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!181, !20, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!186 = !DISubprogram(name: "sigemptyset", scope: !134, file: !134, line: 196, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!187 = !DISubroutineType(types: !188)
!188 = !{!22, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!190 = !DISubprogram(name: "sigaction", scope: !134, file: !134, line: 240, type: !191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!191 = !DISubroutineType(types: !192)
!192 = !{!22, !22, !193, !287}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !196, line: 27, size: 1216, elements: !197)
!196 = !DIFile(filename: "/usr/include/bits/sigaction.h", directory: "")
!197 = !{!198, !283, !285, !286}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !195, file: !196, line: 38, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !195, file: !196, line: 31, size: 64, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !199, file: !196, line: 34, baseType: !133, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !199, file: !196, line: 36, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !22, !206, !75}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !208, line: 124, baseType: !209)
!208 = !DIFile(filename: "/usr/include/bits/types/siginfo_t.h", directory: "")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 36, size: 1024, elements: !210)
!210 = !{!211, !212, !213, !214, !215}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !209, file: !208, line: 38, baseType: !22, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !209, file: !208, line: 40, baseType: !22, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !209, file: !208, line: 42, baseType: !22, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !209, file: !208, line: 48, baseType: !22, size: 32, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !209, file: !208, line: 123, baseType: !216, size: 896, offset: 128)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !209, file: !208, line: 51, size: 896, elements: !217)
!217 = !{!218, !222, !229, !241, !247, !256, !272, !277}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !216, file: !208, line: 53, baseType: !219, size: 896)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 896, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 28)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !216, file: !208, line: 60, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !208, line: 56, size: 64, elements: !224)
!224 = !{!225, !227}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !223, file: !208, line: 58, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !52, line: 154, baseType: !22)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !223, file: !208, line: 59, baseType: !228, size: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !52, line: 146, baseType: !7)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !216, file: !208, line: 68, baseType: !230, size: 128)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !208, line: 63, size: 128, elements: !231)
!231 = !{!232, !233, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !230, file: !208, line: 65, baseType: !22, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !230, file: !208, line: 66, baseType: !22, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !230, file: !208, line: 67, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !236, line: 30, baseType: !237)
!236 = !DIFile(filename: "/usr/include/bits/types/__sigval_t.h", directory: "")
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !236, line: 24, size: 64, elements: !238)
!238 = !{!239, !240}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !237, file: !236, line: 26, baseType: !22, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !237, file: !236, line: 27, baseType: !75, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !216, file: !208, line: 76, baseType: !242, size: 128)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !208, line: 71, size: 128, elements: !243)
!243 = !{!244, !245, !246}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !242, file: !208, line: 73, baseType: !226, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !242, file: !208, line: 74, baseType: !228, size: 32, offset: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !242, file: !208, line: 75, baseType: !235, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !216, file: !208, line: 86, baseType: !248, size: 256)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !208, line: 79, size: 256, elements: !249)
!249 = !{!250, !251, !252, !253, !255}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !248, file: !208, line: 81, baseType: !226, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !248, file: !208, line: 82, baseType: !228, size: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !248, file: !208, line: 83, baseType: !22, size: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !248, file: !208, line: 84, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !52, line: 156, baseType: !53)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !248, file: !208, line: 85, baseType: !254, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !216, file: !208, line: 105, baseType: !257, size: 256)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !208, line: 89, size: 256, elements: !258)
!258 = !{!259, !260, !262}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !257, file: !208, line: 91, baseType: !75, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !257, file: !208, line: 93, baseType: !261, size: 16, offset: 64)
!261 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !257, file: !208, line: 104, baseType: !263, size: 128, offset: 128)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !257, file: !208, line: 94, size: 128, elements: !264)
!264 = !{!265, !270}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !263, file: !208, line: 101, baseType: !266, size: 128)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !208, line: 97, size: 128, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !266, file: !208, line: 99, baseType: !75, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !266, file: !208, line: 100, baseType: !75, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !263, file: !208, line: 103, baseType: !271, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !7)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !216, file: !208, line: 112, baseType: !273, size: 128)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !208, line: 108, size: 128, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !273, file: !208, line: 110, baseType: !53, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !273, file: !208, line: 111, baseType: !22, size: 32, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !216, file: !208, line: 121, baseType: !278, size: 128)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !208, line: 116, size: 128, elements: !279)
!279 = !{!280, !281, !282}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !278, file: !208, line: 118, baseType: !75, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !278, file: !208, line: 119, baseType: !22, size: 32, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !278, file: !208, line: 120, baseType: !7, size: 32, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !195, file: !196, line: 46, baseType: !284, size: 1024, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !165, line: 8, baseType: !164)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !195, file: !196, line: 49, baseType: !22, size: 32, offset: 1088)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !195, file: !196, line: 52, baseType: !103, size: 64, offset: 1152)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!288 = !DISubprogram(name: "sig2str", scope: !289, file: !289, line: 34, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!289 = !DIFile(filename: "./lib/sig2str.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!290 = !DISubroutineType(types: !291)
!291 = !{!22, !22, !18}
!292 = !DISubprogram(name: "kill", scope: !134, file: !134, line: 112, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!293 = !DISubprogram(name: "sigaddset", scope: !134, file: !134, line: 202, type: !294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!294 = !DISubroutineType(types: !295)
!295 = !{!22, !189, !22}
!296 = !DISubprogram(name: "sigprocmask", scope: !134, file: !134, line: 229, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!297 = !DISubroutineType(types: !298)
!298 = !{!22, !22, !162, !189}
!299 = !DISubprogram(name: "dtotimespec", scope: !300, file: !300, line: 116, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!300 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !181}
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !304, line: 10, size: 128, elements: !305)
!304 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!305 = !{!306, !308}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !303, file: !304, line: 12, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !52, line: 160, baseType: !53)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !303, file: !304, line: 16, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !52, line: 196, baseType: !53)
!310 = !DISubprogram(name: "timer_create", scope: !311, file: !311, line: 234, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!311 = !DIFile(filename: "/usr/include/time.h", directory: "")
!312 = !DISubroutineType(types: !313)
!313 = !{!22, !22, !314, !347}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigevent", file: !316, line: 22, size: 512, elements: !317)
!316 = !DIFile(filename: "/usr/include/bits/types/sigevent_t.h", directory: "")
!317 = !{!318, !319, !320, !321}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_value", scope: !315, file: !316, line: 24, baseType: !235, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_signo", scope: !315, file: !316, line: 25, baseType: !22, size: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_notify", scope: !315, file: !316, line: 26, baseType: !22, size: 32, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_un", scope: !315, file: !316, line: 41, baseType: !322, size: 384, offset: 128)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !316, line: 28, size: 384, elements: !323)
!323 = !{!324, !328, !329}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !322, file: !316, line: 30, baseType: !325, size: 384)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 384, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 12)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !322, file: !316, line: 34, baseType: !226, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_thread", scope: !322, file: !316, line: 40, baseType: !330, size: 128)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !316, line: 36, size: 128, elements: !331)
!331 = !{!332, !336}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_function", scope: !330, file: !316, line: 38, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !235}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_attribute", scope: !330, file: !316, line: 39, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !339, line: 62, baseType: !340)
!339 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !339, line: 56, size: 448, elements: !341)
!341 = !{!342, !346}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !340, file: !339, line: 58, baseType: !343, size: 448)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 448, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 56)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !340, file: !339, line: 59, baseType: !53, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!348 = !DISubprogram(name: "timer_settime", scope: !311, file: !311, line: 242, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!349 = !DISubroutineType(types: !350)
!350 = !{!22, !75, !22, !351, !358}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerspec", file: !354, line: 8, size: 256, elements: !355)
!354 = !DIFile(filename: "/usr/include/bits/types/struct_itimerspec.h", directory: "")
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !353, file: !354, line: 10, baseType: !303, size: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !353, file: !354, line: 11, baseType: !303, size: 128, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!359 = !DISubprogram(name: "timer_delete", scope: !311, file: !311, line: 239, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!360 = !DISubroutineType(types: !361)
!361 = !{!22, !75}
!362 = !DISubprogram(name: "alarm", scope: !130, file: !130, line: 432, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!363 = !DISubroutineType(types: !364)
!364 = !{!7, !7}
!365 = !DISubprogram(name: "prctl", scope: !366, file: !366, line: 27, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!366 = !DIFile(filename: "/usr/include/sys/prctl.h", directory: "")
!367 = !DISubroutineType(types: !368)
!368 = !{!22, !22, null}
!369 = !{!370, !372, !376, !378, !380, !382, !384, !0, !386}
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "timed_out", scope: !2, file: !3, line: 80, type: !22, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "monitored_pid", scope: !2, file: !3, line: 82, type: !374, isLocal: true, isDefinition: true)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !375, line: 97, baseType: !226)
!375 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "kill_after", scope: !2, file: !3, line: 83, type: !181, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "foreground", scope: !2, file: !3, line: 84, type: !178, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "preserve_status", scope: !2, file: !3, line: 85, type: !178, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 86, type: !178, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "command", scope: !2, file: !3, line: 87, type: !20, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "term_signal", scope: !2, file: !3, line: 81, type: !22, isLocal: true, isDefinition: true)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 2048, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 8)
!391 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!392 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!393 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!394 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "Version", scope: !397, file: !398, line: 2, type: !20, isLocal: false, isDefinition: true)
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, globals: !399, splitDebugInlining: false, nameTableKind: None)
!398 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!399 = !{!395}
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "file_name", scope: !402, file: !403, line: 46, type: !20, isLocal: true, isDefinition: true)
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !404, globals: !443, splitDebugInlining: false, nameTableKind: None)
!403 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!404 = !{!405, !14, !441, !144}
!405 = !DISubprogram(name: "close_stream", scope: !406, file: !406, line: 2, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!406 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!407 = !DISubroutineType(types: !408)
!408 = !{!22, !409}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !30, line: 49, size: 1728, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !410, file: !30, line: 51, baseType: !22, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !410, file: !30, line: 54, baseType: !18, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !410, file: !30, line: 55, baseType: !18, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !410, file: !30, line: 56, baseType: !18, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !410, file: !30, line: 57, baseType: !18, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !410, file: !30, line: 58, baseType: !18, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !410, file: !30, line: 59, baseType: !18, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !410, file: !30, line: 60, baseType: !18, size: 64, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !410, file: !30, line: 61, baseType: !18, size: 64, offset: 512)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !410, file: !30, line: 64, baseType: !18, size: 64, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !410, file: !30, line: 65, baseType: !18, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !410, file: !30, line: 66, baseType: !18, size: 64, offset: 704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !410, file: !30, line: 68, baseType: !45, size: 64, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !410, file: !30, line: 70, baseType: !409, size: 64, offset: 832)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !410, file: !30, line: 72, baseType: !22, size: 32, offset: 896)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !410, file: !30, line: 73, baseType: !22, size: 32, offset: 928)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !410, file: !30, line: 74, baseType: !51, size: 64, offset: 960)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !410, file: !30, line: 77, baseType: !55, size: 16, offset: 1024)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !410, file: !30, line: 78, baseType: !57, size: 8, offset: 1040)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !410, file: !30, line: 79, baseType: !59, size: 8, offset: 1048)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !410, file: !30, line: 81, baseType: !63, size: 64, offset: 1088)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !410, file: !30, line: 89, baseType: !66, size: 64, offset: 1152)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !410, file: !30, line: 91, baseType: !68, size: 64, offset: 1216)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !410, file: !30, line: 92, baseType: !71, size: 64, offset: 1280)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !410, file: !30, line: 93, baseType: !409, size: 64, offset: 1344)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !410, file: !30, line: 94, baseType: !75, size: 64, offset: 1408)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !410, file: !30, line: 95, baseType: !77, size: 64, offset: 1472)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !410, file: !30, line: 96, baseType: !22, size: 32, offset: 1536)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !410, file: !30, line: 98, baseType: !82, size: 160, offset: 1568)
!441 = !DISubprogram(name: "quotearg_colon", scope: !442, file: !442, line: 391, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!442 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!443 = !{!400, !444}
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !402, file: !403, line: 56, type: !178, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(name: "exit_failure", scope: !448, file: !449, line: 24, type: !451, isLocal: false, isDefinition: true)
!448 = distinct !DICompileUnit(language: DW_LANG_C99, file: !449, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, globals: !450, splitDebugInlining: false, nameTableKind: None)
!449 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!450 = !{!446}
!451 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "program_name", scope: !454, file: !455, line: 33, type: !20, isLocal: false, isDefinition: true)
!454 = distinct !DICompileUnit(language: DW_LANG_C99, file: !455, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !456, globals: !492, splitDebugInlining: false, nameTableKind: None)
!455 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!456 = !{!75, !457, !18}
!457 = !DISubprogram(name: "fputs", scope: !25, file: !25, line: 626, type: !458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!458 = !DISubroutineType(types: !459)
!459 = !{!22, !20, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !30, line: 49, size: 1728, elements: !462)
!462 = !{!463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !461, file: !30, line: 51, baseType: !22, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !461, file: !30, line: 54, baseType: !18, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !461, file: !30, line: 55, baseType: !18, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !461, file: !30, line: 56, baseType: !18, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !461, file: !30, line: 57, baseType: !18, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !461, file: !30, line: 58, baseType: !18, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !461, file: !30, line: 59, baseType: !18, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !461, file: !30, line: 60, baseType: !18, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !461, file: !30, line: 61, baseType: !18, size: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !461, file: !30, line: 64, baseType: !18, size: 64, offset: 576)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !461, file: !30, line: 65, baseType: !18, size: 64, offset: 640)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !461, file: !30, line: 66, baseType: !18, size: 64, offset: 704)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !461, file: !30, line: 68, baseType: !45, size: 64, offset: 768)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !461, file: !30, line: 70, baseType: !460, size: 64, offset: 832)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !461, file: !30, line: 72, baseType: !22, size: 32, offset: 896)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !461, file: !30, line: 73, baseType: !22, size: 32, offset: 928)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !461, file: !30, line: 74, baseType: !51, size: 64, offset: 960)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !461, file: !30, line: 77, baseType: !55, size: 16, offset: 1024)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !461, file: !30, line: 78, baseType: !57, size: 8, offset: 1040)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !461, file: !30, line: 79, baseType: !59, size: 8, offset: 1048)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !461, file: !30, line: 81, baseType: !63, size: 64, offset: 1088)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !461, file: !30, line: 89, baseType: !66, size: 64, offset: 1152)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !461, file: !30, line: 91, baseType: !68, size: 64, offset: 1216)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !461, file: !30, line: 92, baseType: !71, size: 64, offset: 1280)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !461, file: !30, line: 93, baseType: !460, size: 64, offset: 1344)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !461, file: !30, line: 94, baseType: !75, size: 64, offset: 1408)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !461, file: !30, line: 95, baseType: !77, size: 64, offset: 1472)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !461, file: !30, line: 96, baseType: !22, size: 32, offset: 1536)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !461, file: !30, line: 98, baseType: !82, size: 160, offset: 1568)
!492 = !{!452}
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !495, file: !496, line: 85, type: !627, isLocal: false, isDefinition: true)
!495 = distinct !DICompileUnit(language: DW_LANG_C99, file: !496, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !497, retainedTypes: !531, globals: !600, splitDebugInlining: false, nameTableKind: None)
!496 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!497 = !{!498, !511, !516}
!498 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !442, line: 32, baseType: !7, size: 32, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510}
!500 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!501 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!502 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!503 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!504 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!505 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!506 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!507 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!508 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!509 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!510 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!511 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !442, line: 242, baseType: !7, size: 32, elements: !512)
!512 = !{!513, !514, !515}
!513 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!514 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!515 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!516 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !517, line: 46, baseType: !7, size: 32, elements: !518)
!517 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!519 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!520 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!521 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!522 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!523 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!524 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!525 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!526 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!527 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!528 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!529 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!530 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!531 = !{!532, !538, !552, !555, !22, !55, !558, !77, !575, !579, !14, !585, !589, !18, !593, !596, !597}
!532 = !DISubprogram(name: "xmemdup", scope: !533, file: !533, line: 62, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!533 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!534 = !DISubroutineType(types: !535)
!535 = !{!75, !536, !79}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!538 = !DISubprogram(name: "quotearg_alloc_mem", scope: !442, file: !442, line: 342, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!539 = !DISubroutineType(types: !540)
!540 = !{!18, !20, !79, !541, !542}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !496, line: 65, size: 448, elements: !545)
!545 = !{!546, !547, !548, !550, !551}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !544, file: !496, line: 68, baseType: !498, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !496, line: 71, baseType: !22, size: 32, offset: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !544, file: !496, line: 75, baseType: !549, size: 256, offset: 64)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !389)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !544, file: !496, line: 78, baseType: !20, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !544, file: !496, line: 81, baseType: !20, size: 64, offset: 384)
!552 = !DISubprogram(name: "free", scope: !100, file: !100, line: 565, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !75}
!555 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !442, file: !442, line: 408, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!556 = !DISubroutineType(types: !557)
!557 = !{!18, !22, !20, !20, !20, !79}
!558 = !DISubprogram(name: "rpl_mbrtowc", scope: !559, file: !559, line: 717, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!559 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!560 = !DISubroutineType(types: !561)
!561 = !{!79, !119, !20, !79, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 13, size: 64, elements: !565)
!564 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !563, file: !564, line: 15, baseType: !22, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !563, file: !564, line: 20, baseType: !568, size: 32, offset: 32)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !563, file: !564, line: 16, size: 32, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !568, file: !564, line: 18, baseType: !7, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !568, file: !564, line: 19, baseType: !572, size: 32)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 4)
!575 = !DISubprogram(name: "iswprint", scope: !576, file: !576, line: 120, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!576 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!577 = !DISubroutineType(types: !578)
!578 = !{!22, !7}
!579 = !DISubprogram(name: "mbsinit", scope: !580, file: !580, line: 292, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!580 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!581 = !DISubroutineType(types: !582)
!582 = !{!22, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!585 = !DISubprogram(name: "locale_charset", scope: !586, file: !586, line: 35, type: !587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!586 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!587 = !DISubroutineType(types: !588)
!588 = !{!20}
!589 = !DISubprogram(name: "c_strcasecmp", scope: !590, file: !590, line: 42, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!590 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!591 = !DISubroutineType(types: !592)
!592 = !{!22, !20, !20}
!593 = !DISubprogram(name: "xmalloc", scope: !533, file: !533, line: 53, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!594 = !DISubroutineType(types: !595)
!595 = !{!75, !79}
!596 = !DISubprogram(name: "xalloc_die", scope: !533, file: !533, line: 51, type: !104, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !23)
!597 = !DISubprogram(name: "xrealloc", scope: !533, file: !533, line: 59, type: !598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!598 = !DISubroutineType(types: !599)
!599 = !{!75, !75, !79}
!600 = !{!493, !601, !607, !609, !611, !616, !623, !625}
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !495, file: !496, line: 101, type: !603, isLocal: false, isDefinition: true)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 320, elements: !605)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!605 = !{!606}
!606 = !DISubrange(count: 10)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !495, file: !496, line: 1052, type: !544, isLocal: false, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !495, file: !496, line: 116, type: !544, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "slot0", scope: !495, file: !496, line: 842, type: !613, isLocal: true, isDefinition: true)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 256)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(name: "slotvec", scope: !495, file: !496, line: 845, type: !618, isLocal: true, isDefinition: true)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !496, line: 834, size: 128, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !619, file: !496, line: 836, baseType: !77, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !619, file: !496, line: 837, baseType: !18, size: 64, offset: 64)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "nslots", scope: !495, file: !496, line: 843, type: !22, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(name: "slotvec0", scope: !495, file: !496, line: 844, type: !619, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 704, elements: !629)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!629 = !{!630}
!630 = !DISubrange(count: 11)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !633, file: !634, line: 26, type: !636, isLocal: false, isDefinition: true)
!633 = distinct !DICompileUnit(language: DW_LANG_C99, file: !634, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, globals: !635, splitDebugInlining: false, nameTableKind: None)
!634 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!635 = !{!631}
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 376, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 47)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(name: "numname_table", scope: !641, file: !642, line: 41, type: !645, isLocal: true, isDefinition: true)
!641 = distinct !DICompileUnit(language: DW_LANG_C99, file: !642, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !643, globals: !644, splitDebugInlining: false, nameTableKind: None)
!642 = !DIFile(filename: "lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!643 = !{!7}
!644 = !{!639}
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 3360, elements: !651)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !642, line: 41, size: 96, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !646, file: !642, line: 41, baseType: !22, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !646, file: !642, line: 41, baseType: !650, size: 64, offset: 32)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !389)
!651 = !{!652}
!652 = !DISubrange(count: 35)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !655, file: !656, line: 50, type: !687, isLocal: true, isDefinition: true)
!655 = distinct !DICompileUnit(language: DW_LANG_C99, file: !656, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !657, globals: !686, splitDebugInlining: false, nameTableKind: None)
!656 = !DIFile(filename: "lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!657 = !{!18, !658, !680, !683}
!658 = !DISubprogram(name: "strtod_l", scope: !100, file: !100, line: 295, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!659 = !DISubroutineType(types: !660)
!660 = !{!181, !20, !185, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !663, line: 28, size: 1856, elements: !664)
!663 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "")
!664 = !{!665, !671, !674, !677, !678}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !662, file: !663, line: 31, baseType: !666, size: 832)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 832, elements: !669)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !663, line: 31, flags: DIFlagFwdDecl)
!669 = !{!670}
!670 = !DISubrange(count: 13)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !662, file: !663, line: 34, baseType: !672, size: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !662, file: !663, line: 35, baseType: !675, size: 64, offset: 896)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !662, file: !663, line: 36, baseType: !675, size: 64, offset: 960)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !662, file: !663, line: 39, baseType: !679, size: 832, offset: 1024)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 832, elements: !669)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !681, line: 24, baseType: !682)
!681 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "")
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !663, line: 42, baseType: !661)
!683 = !DISubprogram(name: "newlocale", scope: !90, file: !90, line: 141, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!684 = !DISubroutineType(types: !685)
!685 = !{!661, !22, !20, !661}
!686 = !{!653}
!687 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !680)
!688 = distinct !DICompileUnit(language: DW_LANG_C99, file: !689, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !690, splitDebugInlining: false, nameTableKind: None)
!689 = !DIFile(filename: "src/operand2sig.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!690 = !{!7, !691, !692, !552, !288, !14, !151, !144}
!691 = !DISubprogram(name: "xstrdup", scope: !533, file: !533, line: 64, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!692 = !DISubprogram(name: "str2sig", scope: !289, file: !289, line: 35, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!693 = !DISubroutineType(types: !694)
!694 = !{!22, !20, !119}
!695 = distinct !DICompileUnit(language: DW_LANG_C99, file: !696, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !697, splitDebugInlining: false, nameTableKind: None)
!696 = !DIFile(filename: "lib/cl-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!697 = !{!698}
!698 = !DISubprogram(name: "c_strtod", scope: !699, file: !699, line: 40, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!699 = !DIFile(filename: "./lib/c-strtod.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!700 = distinct !DICompileUnit(language: DW_LANG_C99, file: !701, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !702, retainedTypes: !706, splitDebugInlining: false, nameTableKind: None)
!701 = !DIFile(filename: "lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!702 = !{!703}
!703 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !300, line: 42, baseType: !7, size: 32, elements: !704)
!704 = !{!705}
!705 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000, isUnsigned: true)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !708, line: 7, baseType: !307)
!708 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "")
!709 = distinct !DICompileUnit(language: DW_LANG_C99, file: !710, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !711, retainedTypes: !715, splitDebugInlining: false, nameTableKind: None)
!710 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!711 = !{!712}
!712 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !710, line: 40, baseType: !7, size: 32, elements: !713)
!713 = !{!714}
!714 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!715 = !{!14, !716, !75}
!716 = !DISubprogram(name: "fputs_unlocked", scope: !25, file: !25, line: 662, type: !717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!717 = !DISubroutineType(types: !718)
!718 = !{!22, !20, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !30, line: 49, size: 1728, elements: !721)
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !720, file: !30, line: 51, baseType: !22, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !720, file: !30, line: 54, baseType: !18, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !720, file: !30, line: 55, baseType: !18, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !720, file: !30, line: 56, baseType: !18, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !720, file: !30, line: 57, baseType: !18, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !720, file: !30, line: 58, baseType: !18, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !720, file: !30, line: 59, baseType: !18, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !720, file: !30, line: 60, baseType: !18, size: 64, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !720, file: !30, line: 61, baseType: !18, size: 64, offset: 512)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !720, file: !30, line: 64, baseType: !18, size: 64, offset: 576)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !720, file: !30, line: 65, baseType: !18, size: 64, offset: 640)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !720, file: !30, line: 66, baseType: !18, size: 64, offset: 704)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !720, file: !30, line: 68, baseType: !45, size: 64, offset: 768)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !720, file: !30, line: 70, baseType: !719, size: 64, offset: 832)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !720, file: !30, line: 72, baseType: !22, size: 32, offset: 896)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !720, file: !30, line: 73, baseType: !22, size: 32, offset: 928)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !720, file: !30, line: 74, baseType: !51, size: 64, offset: 960)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !720, file: !30, line: 77, baseType: !55, size: 16, offset: 1024)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !720, file: !30, line: 78, baseType: !57, size: 8, offset: 1040)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !720, file: !30, line: 79, baseType: !59, size: 8, offset: 1048)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !720, file: !30, line: 81, baseType: !63, size: 64, offset: 1088)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !720, file: !30, line: 89, baseType: !66, size: 64, offset: 1152)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !720, file: !30, line: 91, baseType: !68, size: 64, offset: 1216)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !720, file: !30, line: 92, baseType: !71, size: 64, offset: 1280)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !720, file: !30, line: 93, baseType: !719, size: 64, offset: 1344)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !720, file: !30, line: 94, baseType: !75, size: 64, offset: 1408)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !720, file: !30, line: 95, baseType: !77, size: 64, offset: 1472)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !720, file: !30, line: 96, baseType: !22, size: 32, offset: 1536)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !720, file: !30, line: 98, baseType: !82, size: 160, offset: 1568)
!751 = distinct !DICompileUnit(language: DW_LANG_C99, file: !752, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !753, retainedTypes: !766, splitDebugInlining: false, nameTableKind: None)
!752 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!753 = !{!754}
!754 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !755, file: !533, line: 186, baseType: !7, size: 32, elements: !764)
!755 = distinct !DISubprogram(name: "x2nrealloc", scope: !533, file: !533, line: 174, type: !756, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !759)
!756 = !DISubroutineType(types: !757)
!757 = !{!75, !75, !758, !77}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!759 = !{!760, !761, !762, !763}
!760 = !DILocalVariable(name: "p", arg: 1, scope: !755, file: !533, line: 174, type: !75)
!761 = !DILocalVariable(name: "pn", arg: 2, scope: !755, file: !533, line: 174, type: !758)
!762 = !DILocalVariable(name: "s", arg: 3, scope: !755, file: !533, line: 174, type: !77)
!763 = !DILocalVariable(name: "n", scope: !755, file: !533, line: 176, type: !77)
!764 = !{!765}
!765 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!766 = !{!77, !596, !593, !597, !18, !552, !75, !767, !770}
!767 = !DISubprogram(name: "xcalloc", scope: !533, file: !533, line: 57, type: !768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!768 = !DISubroutineType(types: !769)
!769 = !{!75, !79, !79}
!770 = !DISubprogram(name: "rpl_calloc", scope: !771, file: !771, line: 688, type: !768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!771 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!772 = distinct !DICompileUnit(language: DW_LANG_C99, file: !773, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !774, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!774 = !{!14, !144}
!775 = distinct !DICompileUnit(language: DW_LANG_C99, file: !776, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !777, splitDebugInlining: false, nameTableKind: None)
!776 = !DIFile(filename: "lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!777 = !{!75}
!778 = distinct !DICompileUnit(language: DW_LANG_C99, file: !779, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !777, splitDebugInlining: false, nameTableKind: None)
!779 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!780 = distinct !DICompileUnit(language: DW_LANG_C99, file: !781, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !782, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!782 = !{!783, !77, !795}
!783 = !DISubprogram(name: "mbrtowc", scope: !580, file: !580, line: 296, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!784 = !DISubroutineType(types: !785)
!785 = !{!79, !119, !20, !79, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 13, size: 64, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !787, file: !564, line: 15, baseType: !22, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !787, file: !564, line: 20, baseType: !791, size: 32, offset: 32)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !564, line: 16, size: 32, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !791, file: !564, line: 18, baseType: !7, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !791, file: !564, line: 19, baseType: !572, size: 32)
!795 = !DISubprogram(name: "hard_locale", scope: !796, file: !796, line: 26, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!796 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!797 = !DISubroutineType(types: !798)
!798 = !{!178, !22}
!799 = distinct !DICompileUnit(language: DW_LANG_C99, file: !800, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !801, splitDebugInlining: false, nameTableKind: None)
!800 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!801 = !{!802}
!802 = !DISubprogram(name: "rpl_fclose", scope: !803, file: !803, line: 672, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!803 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!804 = !DISubroutineType(types: !805)
!805 = !{!22, !806}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !30, line: 49, size: 1728, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !807, file: !30, line: 51, baseType: !22, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !807, file: !30, line: 54, baseType: !18, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !807, file: !30, line: 55, baseType: !18, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !807, file: !30, line: 56, baseType: !18, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !807, file: !30, line: 57, baseType: !18, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !807, file: !30, line: 58, baseType: !18, size: 64, offset: 320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !807, file: !30, line: 59, baseType: !18, size: 64, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !807, file: !30, line: 60, baseType: !18, size: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !807, file: !30, line: 61, baseType: !18, size: 64, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !807, file: !30, line: 64, baseType: !18, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !807, file: !30, line: 65, baseType: !18, size: 64, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !807, file: !30, line: 66, baseType: !18, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !807, file: !30, line: 68, baseType: !45, size: 64, offset: 768)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !807, file: !30, line: 70, baseType: !806, size: 64, offset: 832)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !807, file: !30, line: 72, baseType: !22, size: 32, offset: 896)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !807, file: !30, line: 73, baseType: !22, size: 32, offset: 928)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !807, file: !30, line: 74, baseType: !51, size: 64, offset: 960)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !807, file: !30, line: 77, baseType: !55, size: 16, offset: 1024)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !807, file: !30, line: 78, baseType: !57, size: 8, offset: 1040)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !807, file: !30, line: 79, baseType: !59, size: 8, offset: 1048)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !807, file: !30, line: 81, baseType: !63, size: 64, offset: 1088)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !807, file: !30, line: 89, baseType: !66, size: 64, offset: 1152)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !807, file: !30, line: 91, baseType: !68, size: 64, offset: 1216)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !807, file: !30, line: 92, baseType: !71, size: 64, offset: 1280)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !807, file: !30, line: 93, baseType: !806, size: 64, offset: 1344)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !807, file: !30, line: 94, baseType: !75, size: 64, offset: 1408)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !807, file: !30, line: 95, baseType: !77, size: 64, offset: 1472)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !807, file: !30, line: 96, baseType: !22, size: 32, offset: 1536)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !807, file: !30, line: 98, baseType: !82, size: 160, offset: 1568)
!838 = distinct !DICompileUnit(language: DW_LANG_C99, file: !839, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !840, splitDebugInlining: false, nameTableKind: None)
!839 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!840 = !{!841}
!841 = !DISubprogram(name: "setlocale_null_r", scope: !842, file: !842, line: 64, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!842 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!843 = !DISubroutineType(types: !844)
!844 = !{!22, !22, !18, !79}
!845 = distinct !DICompileUnit(language: DW_LANG_C99, file: !846, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !847, retainedTypes: !1234, splitDebugInlining: false, nameTableKind: None)
!846 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!847 = !{!848}
!848 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !849, line: 41, baseType: !7, size: 32, elements: !850)
!849 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!850 = !{!851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233}
!851 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!852 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!853 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!854 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!855 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!856 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!857 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!858 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!859 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!860 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!861 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!862 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!863 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!864 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!865 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!866 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!867 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!868 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!869 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!870 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!871 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!872 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!873 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!874 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!875 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!876 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!877 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!878 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!879 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!880 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!881 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!882 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!883 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!884 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!885 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!886 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!887 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!888 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!889 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!890 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!891 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!892 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!893 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!894 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!895 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!896 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!897 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!898 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!899 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!900 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!959 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!962 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!963 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!964 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!965 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!966 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!967 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!968 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!969 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!970 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!971 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!972 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!973 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1046 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1119 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1120 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1121 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1122 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1123 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1124 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1125 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1126 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1127 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1128 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1129 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1130 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1131 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1132 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1133 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1135 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1136 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1137 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1138 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1139 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1140 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1166 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1167 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1168 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1169 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1170 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1175 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1176 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1177 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1178 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1181 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1182 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1183 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1184 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1185 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1186 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1187 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1188 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1189 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1190 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1191 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1192 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1193 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1194 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1195 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1196 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1197 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1198 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1199 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1200 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1201 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1202 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1203 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1204 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1205 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1206 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1207 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1208 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1209 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1210 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1211 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1212 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1213 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1214 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1215 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1216 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1217 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1218 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1219 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1220 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1221 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1222 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1223 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1224 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1225 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1226 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1227 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1228 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1229 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1230 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1231 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1232 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1233 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1234 = !{!1235, !75}
!1235 = !DISubprogram(name: "nl_langinfo", scope: !849, file: !849, line: 661, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!18, !22}
!1238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1239, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !1240, splitDebugInlining: false, nameTableKind: None)
!1239 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1240 = !{!75, !89}
!1241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1242, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !1243, splitDebugInlining: false, nameTableKind: None)
!1242 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1243 = !{!1244, !1279, !1280, !1283}
!1244 = !DISubprogram(name: "fileno", scope: !25, file: !25, line: 786, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!22, !1247}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !30, line: 49, size: 1728, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1248, file: !30, line: 51, baseType: !22, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1248, file: !30, line: 54, baseType: !18, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1248, file: !30, line: 55, baseType: !18, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1248, file: !30, line: 56, baseType: !18, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1248, file: !30, line: 57, baseType: !18, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1248, file: !30, line: 58, baseType: !18, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1248, file: !30, line: 59, baseType: !18, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1248, file: !30, line: 60, baseType: !18, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1248, file: !30, line: 61, baseType: !18, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1248, file: !30, line: 64, baseType: !18, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1248, file: !30, line: 65, baseType: !18, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1248, file: !30, line: 66, baseType: !18, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1248, file: !30, line: 68, baseType: !45, size: 64, offset: 768)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1248, file: !30, line: 70, baseType: !1247, size: 64, offset: 832)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1248, file: !30, line: 72, baseType: !22, size: 32, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1248, file: !30, line: 73, baseType: !22, size: 32, offset: 928)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1248, file: !30, line: 74, baseType: !51, size: 64, offset: 960)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1248, file: !30, line: 77, baseType: !55, size: 16, offset: 1024)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1248, file: !30, line: 78, baseType: !57, size: 8, offset: 1040)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1248, file: !30, line: 79, baseType: !59, size: 8, offset: 1048)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1248, file: !30, line: 81, baseType: !63, size: 64, offset: 1088)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1248, file: !30, line: 89, baseType: !66, size: 64, offset: 1152)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1248, file: !30, line: 91, baseType: !68, size: 64, offset: 1216)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1248, file: !30, line: 92, baseType: !71, size: 64, offset: 1280)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1248, file: !30, line: 93, baseType: !1247, size: 64, offset: 1344)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1248, file: !30, line: 94, baseType: !75, size: 64, offset: 1408)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1248, file: !30, line: 95, baseType: !77, size: 64, offset: 1472)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1248, file: !30, line: 96, baseType: !22, size: 32, offset: 1536)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1248, file: !30, line: 98, baseType: !82, size: 160, offset: 1568)
!1279 = !DISubprogram(name: "fclose", scope: !25, file: !25, line: 213, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!1280 = !DISubprogram(name: "lseek", scope: !130, file: !130, line: 334, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!53, !22, !53, !22}
!1283 = !DISubprogram(name: "rpl_fflush", scope: !803, file: !803, line: 718, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!1284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1285, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !1286, splitDebugInlining: false, nameTableKind: None)
!1285 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1286 = !{!75, !1287, !1322}
!1287 = !DISubprogram(name: "fflush", scope: !25, file: !25, line: 218, type: !1288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!22, !1290}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !30, line: 49, size: 1728, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1291, file: !30, line: 51, baseType: !22, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1291, file: !30, line: 54, baseType: !18, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1291, file: !30, line: 55, baseType: !18, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1291, file: !30, line: 56, baseType: !18, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1291, file: !30, line: 57, baseType: !18, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1291, file: !30, line: 58, baseType: !18, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1291, file: !30, line: 59, baseType: !18, size: 64, offset: 384)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1291, file: !30, line: 60, baseType: !18, size: 64, offset: 448)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1291, file: !30, line: 61, baseType: !18, size: 64, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1291, file: !30, line: 64, baseType: !18, size: 64, offset: 576)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1291, file: !30, line: 65, baseType: !18, size: 64, offset: 640)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1291, file: !30, line: 66, baseType: !18, size: 64, offset: 704)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1291, file: !30, line: 68, baseType: !45, size: 64, offset: 768)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1291, file: !30, line: 70, baseType: !1290, size: 64, offset: 832)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1291, file: !30, line: 72, baseType: !22, size: 32, offset: 896)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1291, file: !30, line: 73, baseType: !22, size: 32, offset: 928)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1291, file: !30, line: 74, baseType: !51, size: 64, offset: 960)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1291, file: !30, line: 77, baseType: !55, size: 16, offset: 1024)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1291, file: !30, line: 78, baseType: !57, size: 8, offset: 1040)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1291, file: !30, line: 79, baseType: !59, size: 8, offset: 1048)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1291, file: !30, line: 81, baseType: !63, size: 64, offset: 1088)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1291, file: !30, line: 89, baseType: !66, size: 64, offset: 1152)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1291, file: !30, line: 91, baseType: !68, size: 64, offset: 1216)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1291, file: !30, line: 92, baseType: !71, size: 64, offset: 1280)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1291, file: !30, line: 93, baseType: !1290, size: 64, offset: 1344)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1291, file: !30, line: 94, baseType: !75, size: 64, offset: 1408)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1291, file: !30, line: 95, baseType: !77, size: 64, offset: 1472)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1291, file: !30, line: 96, baseType: !22, size: 32, offset: 1536)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1291, file: !30, line: 98, baseType: !82, size: 160, offset: 1568)
!1322 = !DISubprogram(name: "rpl_fseeko", scope: !803, file: !803, line: 1034, type: !1323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!22, !1290, !53, !22}
!1325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1326, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !1327, splitDebugInlining: false, nameTableKind: None)
!1326 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1327 = !{!75, !1328, !1280, !1363}
!1328 = !DISubprogram(name: "fileno", scope: !25, file: !25, line: 786, type: !1329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!22, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !30, line: 49, size: 1728, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1332, file: !30, line: 51, baseType: !22, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1332, file: !30, line: 54, baseType: !18, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1332, file: !30, line: 55, baseType: !18, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1332, file: !30, line: 56, baseType: !18, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1332, file: !30, line: 57, baseType: !18, size: 64, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1332, file: !30, line: 58, baseType: !18, size: 64, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1332, file: !30, line: 59, baseType: !18, size: 64, offset: 384)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1332, file: !30, line: 60, baseType: !18, size: 64, offset: 448)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1332, file: !30, line: 61, baseType: !18, size: 64, offset: 512)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1332, file: !30, line: 64, baseType: !18, size: 64, offset: 576)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1332, file: !30, line: 65, baseType: !18, size: 64, offset: 640)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1332, file: !30, line: 66, baseType: !18, size: 64, offset: 704)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1332, file: !30, line: 68, baseType: !45, size: 64, offset: 768)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1332, file: !30, line: 70, baseType: !1331, size: 64, offset: 832)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1332, file: !30, line: 72, baseType: !22, size: 32, offset: 896)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1332, file: !30, line: 73, baseType: !22, size: 32, offset: 928)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1332, file: !30, line: 74, baseType: !51, size: 64, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1332, file: !30, line: 77, baseType: !55, size: 16, offset: 1024)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1332, file: !30, line: 78, baseType: !57, size: 8, offset: 1040)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1332, file: !30, line: 79, baseType: !59, size: 8, offset: 1048)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1332, file: !30, line: 81, baseType: !63, size: 64, offset: 1088)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1332, file: !30, line: 89, baseType: !66, size: 64, offset: 1152)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1332, file: !30, line: 91, baseType: !68, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1332, file: !30, line: 92, baseType: !71, size: 64, offset: 1280)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1332, file: !30, line: 93, baseType: !1331, size: 64, offset: 1344)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1332, file: !30, line: 94, baseType: !75, size: 64, offset: 1408)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1332, file: !30, line: 95, baseType: !77, size: 64, offset: 1472)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1332, file: !30, line: 96, baseType: !22, size: 32, offset: 1536)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1332, file: !30, line: 98, baseType: !82, size: 160, offset: 1568)
!1363 = !DISubprogram(name: "fseeko", scope: !25, file: !25, line: 707, type: !1364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!22, !1331, !53, !22}
!1366 = !{!"clang version 10.0.0 "}
!1367 = !{i32 7, !"Dwarf Version", i32 4}
!1368 = !{i32 2, !"Debug Info Version", i32 3}
!1369 = !{i32 1, !"wchar_size", i32 4}
!1370 = !{i32 7, !"PIC Level", i32 2}
!1371 = !{i32 7, !"PIE Level", i32 2}
!1372 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 229, type: !136, scopeLine: 230, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1373)
!1373 = !{!1374}
!1374 = !DILocalVariable(name: "status", arg: 1, scope: !1372, file: !3, line: 229, type: !22)
!1375 = !DILocalVariable(name: "infomap", scope: !1376, file: !6, line: 636, type: !1388)
!1376 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 634, type: !87, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1377)
!1377 = !{!1378, !1375, !1379, !1380, !1387}
!1378 = !DILocalVariable(name: "program", arg: 1, scope: !1376, file: !6, line: 634, type: !20)
!1379 = !DILocalVariable(name: "node", scope: !1376, file: !6, line: 646, type: !20)
!1380 = !DILocalVariable(name: "map_prog", scope: !1376, file: !6, line: 647, type: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1376, file: !6, line: 636, size: 128, elements: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1383, file: !6, line: 636, baseType: !20, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1383, file: !6, line: 636, baseType: !20, size: 64, offset: 64)
!1387 = !DILocalVariable(name: "lc_messages", scope: !1376, file: !6, line: 659, type: !20)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1382, size: 896, elements: !1389)
!1389 = !{!1390}
!1390 = !DISubrange(count: 7)
!1391 = !DILocation(line: 636, column: 67, scope: !1376, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 278, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 234, column: 5)
!1394 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 231, column: 7)
!1395 = !DILocation(line: 0, scope: !1372)
!1396 = !DILocation(line: 231, column: 14, scope: !1394)
!1397 = !DILocation(line: 231, column: 7, scope: !1372)
!1398 = !DILocation(line: 232, column: 5, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 232, column: 5)
!1400 = !{!1401, !1401, i64 0}
!1401 = !{!"any pointer", !1402, i64 0}
!1402 = !{!"omnipotent char", !1403, i64 0}
!1403 = !{!"Simple C/C++ TBAA"}
!1404 = !DILocation(line: 235, column: 7, scope: !1393)
!1405 = !DILocation(line: 239, column: 7, scope: !1393)
!1406 = !DILocation(line: 590, column: 3, scope: !1407, inlinedAt: !1408)
!1407 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 588, type: !104, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!1408 = distinct !DILocation(line: 243, column: 7, scope: !1393)
!1409 = !DILocation(line: 245, column: 7, scope: !1393)
!1410 = !DILocation(line: 260, column: 7, scope: !1393)
!1411 = !DILocation(line: 263, column: 7, scope: !1393)
!1412 = !DILocation(line: 264, column: 7, scope: !1393)
!1413 = !DILocation(line: 266, column: 7, scope: !1393)
!1414 = !DILocation(line: 271, column: 7, scope: !1393)
!1415 = !DILocation(line: 0, scope: !1376, inlinedAt: !1392)
!1416 = !DILocation(line: 636, column: 3, scope: !1376, inlinedAt: !1392)
!1417 = !DILocation(line: 647, column: 36, scope: !1376, inlinedAt: !1392)
!1418 = !DILocation(line: 649, column: 3, scope: !1376, inlinedAt: !1392)
!1419 = !DILocation(line: 649, column: 33, scope: !1376, inlinedAt: !1392)
!1420 = !DILocation(line: 650, column: 13, scope: !1376, inlinedAt: !1392)
!1421 = !DILocation(line: 649, column: 20, scope: !1376, inlinedAt: !1392)
!1422 = !{!1423, !1401, i64 0}
!1423 = !{!"infomap", !1401, i64 0, !1401, i64 8}
!1424 = !DILocation(line: 649, column: 10, scope: !1376, inlinedAt: !1392)
!1425 = !DILocation(line: 649, column: 28, scope: !1376, inlinedAt: !1392)
!1426 = distinct !{!1426, !1418, !1420}
!1427 = !DILocation(line: 652, column: 17, scope: !1428, inlinedAt: !1392)
!1428 = distinct !DILexicalBlock(scope: !1376, file: !6, line: 652, column: 7)
!1429 = !{!1423, !1401, i64 8}
!1430 = !DILocation(line: 652, column: 7, scope: !1428, inlinedAt: !1392)
!1431 = !DILocation(line: 652, column: 7, scope: !1376, inlinedAt: !1392)
!1432 = !DILocation(line: 655, column: 3, scope: !1376, inlinedAt: !1392)
!1433 = !DILocation(line: 659, column: 29, scope: !1376, inlinedAt: !1392)
!1434 = !DILocation(line: 660, column: 7, scope: !1435, inlinedAt: !1392)
!1435 = distinct !DILexicalBlock(scope: !1376, file: !6, line: 660, column: 7)
!1436 = !DILocation(line: 660, column: 19, scope: !1435, inlinedAt: !1392)
!1437 = !DILocation(line: 660, column: 22, scope: !1435, inlinedAt: !1392)
!1438 = !DILocation(line: 660, column: 7, scope: !1376, inlinedAt: !1392)
!1439 = !DILocation(line: 666, column: 7, scope: !1440, inlinedAt: !1392)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !6, line: 661, column: 5)
!1441 = !DILocation(line: 668, column: 5, scope: !1440, inlinedAt: !1392)
!1442 = !DILocation(line: 669, column: 3, scope: !1376, inlinedAt: !1392)
!1443 = !DILocation(line: 671, column: 3, scope: !1376, inlinedAt: !1392)
!1444 = !DILocation(line: 673, column: 1, scope: !1376, inlinedAt: !1392)
!1445 = !DILocation(line: 280, column: 3, scope: !1372)
!1446 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 430, type: !1447, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1449)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!22, !22, !185}
!1449 = !{!1450, !1451, !1452, !1453, !1457, !1458, !1462, !1464, !1465, !1468}
!1450 = !DILocalVariable(name: "argc", arg: 1, scope: !1446, file: !3, line: 430, type: !22)
!1451 = !DILocalVariable(name: "argv", arg: 2, scope: !1446, file: !3, line: 430, type: !185)
!1452 = !DILocalVariable(name: "timeout", scope: !1446, file: !3, line: 432, type: !181)
!1453 = !DILocalVariable(name: "signame", scope: !1446, file: !3, line: 433, type: !1454)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 152, elements: !1455)
!1455 = !{!1456}
!1456 = !DISubrange(count: 19)
!1457 = !DILocalVariable(name: "c", scope: !1446, file: !3, line: 434, type: !22)
!1458 = !DILocalVariable(name: "exit_status", scope: !1459, file: !3, line: 518, type: !22)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 510, column: 5)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 509, column: 12)
!1461 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 504, column: 7)
!1462 = !DILocalVariable(name: "wait_result", scope: !1463, file: !3, line: 524, type: !374)
!1463 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 523, column: 5)
!1464 = !DILocalVariable(name: "status", scope: !1463, file: !3, line: 525, type: !22)
!1465 = !DILocalVariable(name: "cleanup_set", scope: !1463, file: !3, line: 535, type: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1467, line: 7, baseType: !284)
!1467 = !DIFile(filename: "/usr/include/bits/types/sigset_t.h", directory: "")
!1468 = !DILocalVariable(name: "sig", scope: !1469, file: !3, line: 553, type: !22)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 552, column: 13)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 551, column: 20)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 549, column: 15)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 548, column: 9)
!1473 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 541, column: 11)
!1474 = !DILocalVariable(name: "block_set", scope: !1475, file: !3, line: 390, type: !1466)
!1475 = distinct !DISubprogram(name: "block_cleanup_and_chld", scope: !3, file: !3, line: 388, type: !1476, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1479)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !22, !1478}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1479 = !{!1480, !1481, !1474}
!1480 = !DILocalVariable(name: "sigterm", arg: 1, scope: !1475, file: !3, line: 388, type: !22)
!1481 = !DILocalVariable(name: "old_set", arg: 2, scope: !1475, file: !3, line: 388, type: !1478)
!1482 = !DILocation(line: 390, column: 12, scope: !1475, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 536, column: 7, scope: !1463)
!1484 = !DILocalVariable(name: "sa", scope: !1485, file: !3, line: 352, type: !195)
!1485 = distinct !DISubprogram(name: "install_sigchld", scope: !3, file: !3, line: 350, type: !104, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1486)
!1486 = !{!1484}
!1487 = !DILocation(line: 352, column: 20, scope: !1485, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 501, column: 3, scope: !1446)
!1489 = !DILocalVariable(name: "sa", scope: !1490, file: !3, line: 368, type: !195)
!1490 = distinct !DISubprogram(name: "install_cleanup", scope: !3, file: !3, line: 366, type: !136, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1491)
!1491 = !{!1492, !1489}
!1492 = !DILocalVariable(name: "sigterm", arg: 1, scope: !1490, file: !3, line: 366, type: !22)
!1493 = !DILocation(line: 368, column: 20, scope: !1490, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 498, column: 3, scope: !1446)
!1495 = !DILocation(line: 0, scope: !1446)
!1496 = !DILocation(line: 433, column: 3, scope: !1446)
!1497 = !DILocation(line: 433, column: 8, scope: !1446)
!1498 = !DILocation(line: 437, column: 21, scope: !1446)
!1499 = !DILocation(line: 437, column: 3, scope: !1446)
!1500 = !DILocation(line: 438, column: 3, scope: !1446)
!1501 = !DILocation(line: 439, column: 3, scope: !1446)
!1502 = !DILocation(line: 440, column: 3, scope: !1446)
!1503 = !DILocalVariable(name: "status", arg: 1, scope: !1504, file: !6, line: 99, type: !22)
!1504 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !136, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1505)
!1505 = !{!1503}
!1506 = !DILocation(line: 0, scope: !1504, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 442, column: 3, scope: !1446)
!1508 = !DILocation(line: 102, column: 18, scope: !1509, inlinedAt: !1507)
!1509 = distinct !DILexicalBlock(scope: !1504, file: !6, line: 101, column: 7)
!1510 = !{!1511, !1511, i64 0}
!1511 = !{!"int", !1402, i64 0}
!1512 = !DILocation(line: 443, column: 3, scope: !1446)
!1513 = !DILocation(line: 445, column: 3, scope: !1446)
!1514 = !DILocation(line: 445, column: 15, scope: !1446)
!1515 = !DILocation(line: 450, column: 40, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 448, column: 9)
!1517 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 446, column: 5)
!1518 = !DILocation(line: 450, column: 24, scope: !1516)
!1519 = !DILocation(line: 450, column: 22, scope: !1516)
!1520 = !{!1521, !1521, i64 0}
!1521 = !{!"double", !1402, i64 0}
!1522 = !DILocation(line: 451, column: 11, scope: !1516)
!1523 = !DILocation(line: 454, column: 38, scope: !1516)
!1524 = !DILocation(line: 454, column: 25, scope: !1516)
!1525 = !DILocation(line: 454, column: 23, scope: !1516)
!1526 = !DILocation(line: 455, column: 27, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 455, column: 15)
!1528 = !DILocation(line: 455, column: 15, scope: !1516)
!1529 = distinct !{!1529, !1513, !1530}
!1530 = !DILocation(line: 479, column: 5, scope: !1446)
!1531 = !DILocation(line: 456, column: 13, scope: !1527)
!1532 = !DILocation(line: 460, column: 19, scope: !1516)
!1533 = !DILocation(line: 461, column: 11, scope: !1516)
!1534 = !DILocation(line: 464, column: 22, scope: !1516)
!1535 = !DILocation(line: 465, column: 11, scope: !1516)
!1536 = !DILocation(line: 468, column: 27, scope: !1516)
!1537 = !DILocation(line: 469, column: 11, scope: !1516)
!1538 = !DILocation(line: 471, column: 9, scope: !1516)
!1539 = !DILocation(line: 473, column: 9, scope: !1516)
!1540 = !DILocation(line: 476, column: 11, scope: !1516)
!1541 = !DILocation(line: 481, column: 14, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 481, column: 7)
!1543 = !DILocation(line: 481, column: 12, scope: !1542)
!1544 = !DILocation(line: 481, column: 21, scope: !1542)
!1545 = !DILocation(line: 481, column: 7, scope: !1446)
!1546 = !DILocation(line: 482, column: 5, scope: !1542)
!1547 = !DILocation(line: 484, column: 40, scope: !1446)
!1548 = !DILocation(line: 484, column: 29, scope: !1446)
!1549 = !DILocation(line: 484, column: 13, scope: !1446)
!1550 = !DILocation(line: 486, column: 11, scope: !1446)
!1551 = !DILocation(line: 486, column: 8, scope: !1446)
!1552 = !DILocation(line: 487, column: 13, scope: !1446)
!1553 = !DILocation(line: 487, column: 11, scope: !1446)
!1554 = !DILocation(line: 493, column: 8, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 493, column: 7)
!1556 = !DILocation(line: 493, column: 7, scope: !1446)
!1557 = !DILocation(line: 494, column: 5, scope: !1555)
!1558 = !DILocation(line: 498, column: 20, scope: !1446)
!1559 = !DILocation(line: 0, scope: !1490, inlinedAt: !1494)
!1560 = !DILocation(line: 368, column: 3, scope: !1490, inlinedAt: !1494)
!1561 = !DILocation(line: 369, column: 20, scope: !1490, inlinedAt: !1494)
!1562 = !DILocation(line: 369, column: 3, scope: !1490, inlinedAt: !1494)
!1563 = !DILocation(line: 370, column: 6, scope: !1490, inlinedAt: !1494)
!1564 = !DILocation(line: 370, column: 17, scope: !1490, inlinedAt: !1494)
!1565 = !{!1402, !1402, i64 0}
!1566 = !DILocation(line: 371, column: 6, scope: !1490, inlinedAt: !1494)
!1567 = !DILocation(line: 371, column: 15, scope: !1490, inlinedAt: !1494)
!1568 = !{!1569, !1511, i64 136}
!1569 = !{!"sigaction", !1402, i64 0, !1570, i64 8, !1511, i64 136, !1401, i64 144}
!1570 = !{!"", !1402, i64 0}
!1571 = !DILocation(line: 374, column: 3, scope: !1490, inlinedAt: !1494)
!1572 = !DILocation(line: 375, column: 3, scope: !1490, inlinedAt: !1494)
!1573 = !DILocation(line: 376, column: 3, scope: !1490, inlinedAt: !1494)
!1574 = !DILocation(line: 377, column: 3, scope: !1490, inlinedAt: !1494)
!1575 = !DILocation(line: 378, column: 3, scope: !1490, inlinedAt: !1494)
!1576 = !DILocation(line: 379, column: 3, scope: !1490, inlinedAt: !1494)
!1577 = !DILocation(line: 380, column: 1, scope: !1490, inlinedAt: !1494)
!1578 = !DILocation(line: 499, column: 3, scope: !1446)
!1579 = !DILocation(line: 500, column: 3, scope: !1446)
!1580 = !DILocation(line: 352, column: 3, scope: !1485, inlinedAt: !1488)
!1581 = !DILocation(line: 353, column: 20, scope: !1485, inlinedAt: !1488)
!1582 = !DILocation(line: 353, column: 3, scope: !1485, inlinedAt: !1488)
!1583 = !DILocation(line: 354, column: 6, scope: !1485, inlinedAt: !1488)
!1584 = !DILocation(line: 354, column: 17, scope: !1485, inlinedAt: !1488)
!1585 = !DILocation(line: 355, column: 6, scope: !1485, inlinedAt: !1488)
!1586 = !DILocation(line: 355, column: 15, scope: !1485, inlinedAt: !1488)
!1587 = !DILocation(line: 358, column: 3, scope: !1485, inlinedAt: !1488)
!1588 = !DILocation(line: 362, column: 3, scope: !1485, inlinedAt: !1488)
!1589 = !DILocation(line: 363, column: 1, scope: !1485, inlinedAt: !1488)
!1590 = !DILocation(line: 503, column: 19, scope: !1446)
!1591 = !DILocation(line: 503, column: 17, scope: !1446)
!1592 = !DILocation(line: 504, column: 7, scope: !1446)
!1593 = !DILocation(line: 506, column: 17, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 505, column: 5)
!1595 = !DILocation(line: 506, column: 24, scope: !1594)
!1596 = !DILocation(line: 506, column: 7, scope: !1594)
!1597 = !DILocation(line: 507, column: 7, scope: !1594)
!1598 = !DILocation(line: 512, column: 7, scope: !1459)
!1599 = !DILocation(line: 513, column: 7, scope: !1459)
!1600 = !DILocation(line: 515, column: 15, scope: !1459)
!1601 = !DILocation(line: 515, column: 7, scope: !1459)
!1602 = !DILocation(line: 518, column: 25, scope: !1459)
!1603 = !DILocation(line: 518, column: 31, scope: !1459)
!1604 = !DILocation(line: 0, scope: !1459)
!1605 = !DILocation(line: 519, column: 24, scope: !1459)
!1606 = !DILocation(line: 519, column: 62, scope: !1459)
!1607 = !DILocation(line: 519, column: 55, scope: !1459)
!1608 = !DILocation(line: 519, column: 7, scope: !1459)
!1609 = !DILocation(line: 525, column: 7, scope: !1463)
!1610 = !DILocation(line: 529, column: 7, scope: !1463)
!1611 = !DILocation(line: 531, column: 7, scope: !1463)
!1612 = !DILocation(line: 535, column: 7, scope: !1463)
!1613 = !DILocation(line: 535, column: 16, scope: !1463)
!1614 = !DILocation(line: 536, column: 31, scope: !1463)
!1615 = !DILocation(line: 0, scope: !1475, inlinedAt: !1483)
!1616 = !DILocation(line: 390, column: 3, scope: !1475, inlinedAt: !1483)
!1617 = !DILocation(line: 391, column: 3, scope: !1475, inlinedAt: !1483)
!1618 = !DILocation(line: 393, column: 3, scope: !1475, inlinedAt: !1483)
!1619 = !DILocation(line: 394, column: 3, scope: !1475, inlinedAt: !1483)
!1620 = !DILocation(line: 395, column: 3, scope: !1475, inlinedAt: !1483)
!1621 = !DILocation(line: 396, column: 3, scope: !1475, inlinedAt: !1483)
!1622 = !DILocation(line: 397, column: 3, scope: !1475, inlinedAt: !1483)
!1623 = !DILocation(line: 398, column: 3, scope: !1475, inlinedAt: !1483)
!1624 = !DILocation(line: 400, column: 3, scope: !1475, inlinedAt: !1483)
!1625 = !DILocation(line: 402, column: 7, scope: !1626, inlinedAt: !1483)
!1626 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 402, column: 7)
!1627 = !DILocation(line: 402, column: 52, scope: !1626, inlinedAt: !1483)
!1628 = !DILocation(line: 402, column: 7, scope: !1475, inlinedAt: !1483)
!1629 = !DILocation(line: 403, column: 15, scope: !1626, inlinedAt: !1483)
!1630 = !DILocation(line: 403, column: 22, scope: !1626, inlinedAt: !1483)
!1631 = !DILocation(line: 403, column: 5, scope: !1626, inlinedAt: !1483)
!1632 = !DILocation(line: 404, column: 1, scope: !1475, inlinedAt: !1483)
!1633 = !DILocation(line: 538, column: 38, scope: !1463)
!1634 = !DILocation(line: 0, scope: !1463)
!1635 = !DILocation(line: 538, column: 29, scope: !1463)
!1636 = !DILocation(line: 538, column: 72, scope: !1463)
!1637 = !DILocation(line: 538, column: 7, scope: !1463)
!1638 = !DILocation(line: 539, column: 9, scope: !1463)
!1639 = distinct !{!1639, !1637, !1640}
!1640 = !DILocation(line: 539, column: 33, scope: !1463)
!1641 = !DILocation(line: 541, column: 23, scope: !1473)
!1642 = !DILocation(line: 541, column: 11, scope: !1463)
!1643 = !DILocation(line: 544, column: 21, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 542, column: 9)
!1645 = !DILocation(line: 544, column: 28, scope: !1644)
!1646 = !DILocation(line: 544, column: 11, scope: !1644)
!1647 = !DILocation(line: 545, column: 18, scope: !1644)
!1648 = !DILocation(line: 546, column: 9, scope: !1644)
!1649 = !DILocation(line: 549, column: 15, scope: !1471)
!1650 = !DILocation(line: 549, column: 15, scope: !1472)
!1651 = !DILocation(line: 550, column: 22, scope: !1471)
!1652 = !DILocation(line: 550, column: 20, scope: !1471)
!1653 = !DILocation(line: 550, column: 13, scope: !1471)
!1654 = !DILocation(line: 551, column: 20, scope: !1470)
!1655 = !DILocation(line: 551, column: 20, scope: !1471)
!1656 = !DILocation(line: 0, scope: !1469)
!1657 = !DILocation(line: 554, column: 19, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 554, column: 19)
!1659 = !DILocation(line: 554, column: 19, scope: !1469)
!1660 = !DILocation(line: 555, column: 30, scope: !1658)
!1661 = !DILocation(line: 555, column: 17, scope: !1658)
!1662 = !DILocation(line: 556, column: 20, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 556, column: 19)
!1664 = !DILocation(line: 556, column: 30, scope: !1663)
!1665 = !DILocation(line: 412, column: 7, scope: !1666, inlinedAt: !1670)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 412, column: 7)
!1667 = distinct !DISubprogram(name: "disable_core_dumps", scope: !3, file: !3, line: 409, type: !1668, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!178}
!1670 = distinct !DILocation(line: 556, column: 33, scope: !1663)
!1671 = !DILocation(line: 412, column: 34, scope: !1666, inlinedAt: !1670)
!1672 = !DILocation(line: 412, column: 7, scope: !1667, inlinedAt: !1670)
!1673 = !DILocation(line: 425, column: 13, scope: !1667, inlinedAt: !1670)
!1674 = !DILocation(line: 425, column: 20, scope: !1667, inlinedAt: !1670)
!1675 = !DILocation(line: 425, column: 3, scope: !1667, inlinedAt: !1670)
!1676 = !DILocation(line: 556, column: 19, scope: !1469)
!1677 = !DILocation(line: 559, column: 19, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 557, column: 17)
!1679 = !DILocation(line: 560, column: 19, scope: !1678)
!1680 = !DILocation(line: 561, column: 19, scope: !1678)
!1681 = !DILocation(line: 562, column: 17, scope: !1678)
!1682 = !DILocation(line: 563, column: 28, scope: !1469)
!1683 = !DILocation(line: 563, column: 22, scope: !1469)
!1684 = !DILocation(line: 564, column: 13, scope: !1469)
!1685 = !DILocation(line: 568, column: 28, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 566, column: 13)
!1687 = !DILocation(line: 568, column: 67, scope: !1686)
!1688 = !DILocation(line: 568, column: 15, scope: !1686)
!1689 = !DILocation(line: 569, column: 22, scope: !1686)
!1690 = !DILocation(line: 573, column: 11, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 573, column: 11)
!1692 = !DILocation(line: 573, column: 21, scope: !1691)
!1693 = !DILocation(line: 573, column: 25, scope: !1691)
!1694 = !DILocation(line: 573, column: 11, scope: !1463)
!1695 = !DILocation(line: 574, column: 16, scope: !1691)
!1696 = !DILocation(line: 574, column: 9, scope: !1691)
!1697 = !DILocation(line: 575, column: 14, scope: !1463)
!1698 = !DILocation(line: 576, column: 5, scope: !1460)
!1699 = !DILocation(line: 0, scope: !1461)
!1700 = !DILocation(line: 577, column: 1, scope: !1446)
!1701 = distinct !DISubprogram(name: "parse_duration", scope: !3, file: !3, line: 319, type: !1702, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1704)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!181, !20}
!1704 = !{!1705, !1706, !1707}
!1705 = !DILocalVariable(name: "str", arg: 1, scope: !1701, file: !3, line: 319, type: !20)
!1706 = !DILocalVariable(name: "duration", scope: !1701, file: !3, line: 321, type: !181)
!1707 = !DILocalVariable(name: "ep", scope: !1701, file: !3, line: 322, type: !20)
!1708 = !DILocation(line: 0, scope: !1701)
!1709 = !DILocation(line: 321, column: 3, scope: !1701)
!1710 = !DILocation(line: 322, column: 3, scope: !1701)
!1711 = !DILocation(line: 324, column: 10, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 324, column: 7)
!1713 = !DILocation(line: 324, column: 51, scope: !1712)
!1714 = !DILocation(line: 324, column: 54, scope: !1712)
!1715 = !DILocation(line: 324, column: 60, scope: !1712)
!1716 = !DILocation(line: 326, column: 7, scope: !1712)
!1717 = !DILocation(line: 326, column: 18, scope: !1712)
!1718 = !DILocation(line: 326, column: 15, scope: !1712)
!1719 = !DILocation(line: 328, column: 7, scope: !1712)
!1720 = !DILocation(line: 328, column: 12, scope: !1712)
!1721 = !DILocation(line: 328, column: 11, scope: !1712)
!1722 = !DILocation(line: 328, column: 15, scope: !1712)
!1723 = !DILocation(line: 328, column: 23, scope: !1712)
!1724 = !DILocation(line: 328, column: 18, scope: !1712)
!1725 = !DILocation(line: 330, column: 7, scope: !1712)
!1726 = !DILocalVariable(name: "x", arg: 1, scope: !1727, file: !3, line: 290, type: !180)
!1727 = distinct !DISubprogram(name: "apply_time_suffix", scope: !3, file: !3, line: 290, type: !1728, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1730)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!178, !180, !19}
!1730 = !{!1726, !1731, !1732}
!1731 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1727, file: !3, line: 290, type: !19)
!1732 = !DILocalVariable(name: "multiplier", scope: !1727, file: !3, line: 292, type: !22)
!1733 = !DILocation(line: 0, scope: !1727, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 330, column: 11, scope: !1712)
!1735 = !DILocation(line: 294, column: 11, scope: !1727, inlinedAt: !1734)
!1736 = !DILocation(line: 294, column: 3, scope: !1727, inlinedAt: !1734)
!1737 = !DILocation(line: 302, column: 7, scope: !1738, inlinedAt: !1734)
!1738 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 295, column: 5)
!1739 = !DILocation(line: 305, column: 7, scope: !1738, inlinedAt: !1734)
!1740 = !DILocation(line: 308, column: 7, scope: !1738, inlinedAt: !1734)
!1741 = !DILocation(line: 332, column: 20, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 331, column: 5)
!1743 = !DILocation(line: 332, column: 51, scope: !1742)
!1744 = !DILocation(line: 332, column: 7, scope: !1742)
!1745 = !DILocation(line: 333, column: 7, scope: !1742)
!1746 = !DILocation(line: 313, column: 6, scope: !1727, inlinedAt: !1734)
!1747 = !DILocation(line: 337, column: 1, scope: !1701)
!1748 = !DILocation(line: 336, column: 3, scope: !1701)
!1749 = distinct !DISubprogram(name: "cleanup", scope: !3, file: !3, line: 180, type: !136, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1750)
!1750 = !{!1751, !1752, !1757}
!1751 = !DILocalVariable(name: "sig", arg: 1, scope: !1749, file: !3, line: 180, type: !22)
!1752 = !DILocalVariable(name: "saved_errno", scope: !1753, file: !3, line: 191, type: !22)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 190, column: 9)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 189, column: 11)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 188, column: 5)
!1756 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 187, column: 7)
!1757 = !DILocalVariable(name: "signame", scope: !1758, file: !3, line: 204, type: !1454)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 203, column: 9)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 202, column: 11)
!1760 = !DILocation(line: 0, scope: !1749)
!1761 = !DILocation(line: 182, column: 11, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 182, column: 7)
!1763 = !DILocation(line: 182, column: 7, scope: !1749)
!1764 = !DILocation(line: 184, column: 17, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 183, column: 5)
!1766 = !DILocation(line: 185, column: 13, scope: !1765)
!1767 = !DILocation(line: 186, column: 5, scope: !1765)
!1768 = !DILocation(line: 187, column: 7, scope: !1756)
!1769 = !DILocation(line: 187, column: 7, scope: !1749)
!1770 = !DILocation(line: 189, column: 11, scope: !1754)
!1771 = !DILocation(line: 189, column: 11, scope: !1755)
!1772 = !DILocation(line: 191, column: 29, scope: !1753)
!1773 = !DILocation(line: 0, scope: !1753)
!1774 = !DILocation(line: 193, column: 23, scope: !1753)
!1775 = !DILocation(line: 194, column: 11, scope: !1753)
!1776 = !DILocation(line: 195, column: 22, scope: !1753)
!1777 = !DILocation(line: 196, column: 17, scope: !1753)
!1778 = !DILocation(line: 197, column: 9, scope: !1753)
!1779 = !DILocation(line: 202, column: 11, scope: !1759)
!1780 = !DILocation(line: 202, column: 11, scope: !1755)
!1781 = !DILocation(line: 204, column: 11, scope: !1758)
!1782 = !DILocation(line: 204, column: 16, scope: !1758)
!1783 = !DILocation(line: 205, column: 15, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 205, column: 15)
!1785 = !DILocation(line: 205, column: 38, scope: !1784)
!1786 = !DILocation(line: 205, column: 15, scope: !1758)
!1787 = !DILocation(line: 206, column: 13, scope: !1784)
!1788 = !DILocation(line: 207, column: 24, scope: !1758)
!1789 = !DILocation(line: 208, column: 34, scope: !1758)
!1790 = !DILocation(line: 208, column: 27, scope: !1758)
!1791 = !DILocation(line: 207, column: 11, scope: !1758)
!1792 = !DILocation(line: 209, column: 9, scope: !1759)
!1793 = !DILocation(line: 209, column: 9, scope: !1758)
!1794 = !DILocation(line: 210, column: 17, scope: !1755)
!1795 = !DILocalVariable(name: "where", arg: 1, scope: !1796, file: !3, line: 157, type: !374)
!1796 = distinct !DISubprogram(name: "send_sig", scope: !3, file: !3, line: 157, type: !1797, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!22, !374, !22}
!1799 = !{!1795, !1800}
!1800 = !DILocalVariable(name: "sig", arg: 2, scope: !1796, file: !3, line: 157, type: !22)
!1801 = !DILocation(line: 0, scope: !1796, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 210, column: 7, scope: !1755)
!1803 = !DILocation(line: 166, column: 13, scope: !1804, inlinedAt: !1802)
!1804 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 166, column: 7)
!1805 = !DILocation(line: 166, column: 7, scope: !1796, inlinedAt: !1802)
!1806 = !DILocation(line: 167, column: 5, scope: !1804, inlinedAt: !1802)
!1807 = !DILocation(line: 168, column: 10, scope: !1796, inlinedAt: !1802)
!1808 = !DILocation(line: 214, column: 12, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 214, column: 11)
!1810 = !DILocation(line: 214, column: 11, scope: !1755)
!1811 = !DILocation(line: 0, scope: !1796, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 216, column: 11, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 215, column: 9)
!1814 = !DILocation(line: 167, column: 5, scope: !1804, inlinedAt: !1812)
!1815 = !DILocation(line: 168, column: 10, scope: !1796, inlinedAt: !1812)
!1816 = !DILocation(line: 217, column: 30, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 217, column: 15)
!1818 = !DILocation(line: 219, column: 25, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 218, column: 13)
!1820 = !DILocation(line: 0, scope: !1796, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 219, column: 15, scope: !1819)
!1822 = !DILocation(line: 166, column: 13, scope: !1804, inlinedAt: !1821)
!1823 = !DILocation(line: 166, column: 7, scope: !1796, inlinedAt: !1821)
!1824 = !DILocation(line: 167, column: 5, scope: !1804, inlinedAt: !1821)
!1825 = !DILocation(line: 168, column: 10, scope: !1796, inlinedAt: !1821)
!1826 = !DILocation(line: 0, scope: !1796, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 220, column: 15, scope: !1819)
!1828 = !DILocation(line: 167, column: 5, scope: !1804, inlinedAt: !1827)
!1829 = !DILocation(line: 168, column: 10, scope: !1796, inlinedAt: !1827)
!1830 = !DILocation(line: 221, column: 13, scope: !1819)
!1831 = !DILocation(line: 225, column: 16, scope: !1756)
!1832 = !DILocation(line: 225, column: 5, scope: !1756)
!1833 = !DILocation(line: 226, column: 1, scope: !1749)
!1834 = distinct !DISubprogram(name: "chld", scope: !3, file: !3, line: 174, type: !136, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1835)
!1835 = !{!1836}
!1836 = !DILocalVariable(name: "sig", arg: 1, scope: !1834, file: !3, line: 174, type: !22)
!1837 = !DILocation(line: 0, scope: !1834)
!1838 = !DILocation(line: 176, column: 1, scope: !1834)
!1839 = distinct !DISubprogram(name: "unblock_signal", scope: !3, file: !3, line: 340, type: !136, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1840)
!1840 = !{!1841, !1842}
!1841 = !DILocalVariable(name: "sig", arg: 1, scope: !1839, file: !3, line: 340, type: !22)
!1842 = !DILocalVariable(name: "unblock_set", scope: !1839, file: !3, line: 342, type: !1466)
!1843 = !DILocation(line: 0, scope: !1839)
!1844 = !DILocation(line: 342, column: 3, scope: !1839)
!1845 = !DILocation(line: 342, column: 12, scope: !1839)
!1846 = !DILocation(line: 343, column: 3, scope: !1839)
!1847 = !DILocation(line: 344, column: 3, scope: !1839)
!1848 = !DILocation(line: 345, column: 7, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 345, column: 7)
!1850 = !DILocation(line: 345, column: 53, scope: !1849)
!1851 = !DILocation(line: 345, column: 7, scope: !1839)
!1852 = !DILocation(line: 346, column: 15, scope: !1849)
!1853 = !DILocation(line: 346, column: 22, scope: !1849)
!1854 = !DILocation(line: 346, column: 5, scope: !1849)
!1855 = !DILocation(line: 347, column: 1, scope: !1839)
!1856 = distinct !DISubprogram(name: "settimeout", scope: !3, file: !3, line: 114, type: !1857, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1859)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{null, !181, !178}
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1868, !1869}
!1860 = !DILocalVariable(name: "duration", arg: 1, scope: !1856, file: !3, line: 114, type: !181)
!1861 = !DILocalVariable(name: "warn", arg: 2, scope: !1856, file: !3, line: 114, type: !178)
!1862 = !DILocalVariable(name: "ts", scope: !1856, file: !3, line: 125, type: !303)
!1863 = !DILocalVariable(name: "its", scope: !1856, file: !3, line: 126, type: !353)
!1864 = !DILocalVariable(name: "timerid", scope: !1856, file: !3, line: 127, type: !1865)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "timer_t", file: !1866, line: 7, baseType: !1867)
!1866 = !DIFile(filename: "/usr/include/bits/types/timer_t.h", directory: "")
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__timer_t", file: !52, line: 171, baseType: !75)
!1868 = !DILocalVariable(name: "timeint", scope: !1856, file: !3, line: 143, type: !7)
!1869 = !DILocalVariable(name: "duration_floor", scope: !1870, file: !3, line: 148, type: !7)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 147, column: 5)
!1871 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 144, column: 7)
!1872 = !DILocation(line: 0, scope: !1856)
!1873 = !DILocation(line: 125, column: 24, scope: !1856)
!1874 = !DILocation(line: 126, column: 3, scope: !1856)
!1875 = !DILocation(line: 126, column: 21, scope: !1856)
!1876 = !DILocation(line: 126, column: 37, scope: !1856)
!1877 = !DILocation(line: 126, column: 29, scope: !1856)
!1878 = !{i64 0, i64 8, !1879, i64 8, i64 8, !1879}
!1879 = !{!1880, !1880, i64 0}
!1880 = !{!"long", !1402, i64 0}
!1881 = !DILocation(line: 127, column: 3, scope: !1856)
!1882 = !DILocation(line: 128, column: 7, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 128, column: 7)
!1884 = !DILocation(line: 128, column: 53, scope: !1883)
!1885 = !DILocation(line: 128, column: 7, scope: !1856)
!1886 = !DILocation(line: 130, column: 26, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 130, column: 11)
!1888 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 129, column: 5)
!1889 = !DILocation(line: 130, column: 11, scope: !1887)
!1890 = !DILocation(line: 130, column: 50, scope: !1887)
!1891 = !DILocation(line: 130, column: 11, scope: !1888)
!1892 = !DILocation(line: 134, column: 15, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 133, column: 9)
!1894 = !DILocation(line: 135, column: 23, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 134, column: 15)
!1896 = !DILocation(line: 135, column: 30, scope: !1895)
!1897 = !DILocation(line: 135, column: 13, scope: !1895)
!1898 = !DILocation(line: 136, column: 25, scope: !1893)
!1899 = !DILocation(line: 136, column: 11, scope: !1893)
!1900 = !DILocation(line: 138, column: 5, scope: !1888)
!1901 = !DILocation(line: 139, column: 17, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 139, column: 12)
!1903 = !DILocation(line: 139, column: 20, scope: !1902)
!1904 = !DILocation(line: 139, column: 26, scope: !1902)
!1905 = !DILocation(line: 139, column: 12, scope: !1883)
!1906 = !DILocation(line: 140, column: 22, scope: !1902)
!1907 = !DILocation(line: 140, column: 5, scope: !1902)
!1908 = !DILocation(line: 144, column: 16, scope: !1871)
!1909 = !DILocation(line: 144, column: 7, scope: !1856)
!1910 = !DILocation(line: 148, column: 37, scope: !1870)
!1911 = !DILocation(line: 0, scope: !1870)
!1912 = !DILocation(line: 149, column: 35, scope: !1870)
!1913 = !DILocation(line: 149, column: 50, scope: !1870)
!1914 = !DILocation(line: 149, column: 32, scope: !1870)
!1915 = !DILocation(line: 0, scope: !1871)
!1916 = !DILocation(line: 151, column: 3, scope: !1856)
!1917 = !DILocation(line: 152, column: 1, scope: !1856)
!1918 = distinct !DISubprogram(name: "operand2sig", scope: !689, file: !689, line: 36, type: !123, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !1919)
!1919 = !{!1920, !1921, !1922, !1923, !1926, !1927, !1928, !1930}
!1920 = !DILocalVariable(name: "operand", arg: 1, scope: !1918, file: !689, line: 36, type: !20)
!1921 = !DILocalVariable(name: "signame", arg: 2, scope: !1918, file: !689, line: 36, type: !18)
!1922 = !DILocalVariable(name: "signum", scope: !1918, file: !689, line: 38, type: !22)
!1923 = !DILocalVariable(name: "endp", scope: !1924, file: !689, line: 53, type: !18)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !689, line: 41, column: 5)
!1925 = distinct !DILexicalBlock(scope: !1918, file: !689, line: 40, column: 7)
!1926 = !DILocalVariable(name: "l", scope: !1924, file: !689, line: 54, type: !53)
!1927 = !DILocalVariable(name: "i", scope: !1924, file: !689, line: 55, type: !22)
!1928 = !DILocalVariable(name: "upcased", scope: !1929, file: !689, line: 70, type: !18)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !689, line: 67, column: 5)
!1930 = !DILocalVariable(name: "p", scope: !1929, file: !689, line: 71, type: !18)
!1931 = !DILocation(line: 0, scope: !1918)
!1932 = !DILocation(line: 38, column: 3, scope: !1918)
!1933 = !DILocation(line: 40, column: 7, scope: !1925)
!1934 = !DILocation(line: 40, column: 7, scope: !1918)
!1935 = !DILocation(line: 53, column: 7, scope: !1924)
!1936 = !DILocation(line: 54, column: 21, scope: !1924)
!1937 = !DILocation(line: 54, column: 27, scope: !1924)
!1938 = !DILocation(line: 0, scope: !1924)
!1939 = !DILocation(line: 54, column: 32, scope: !1924)
!1940 = !DILocation(line: 55, column: 15, scope: !1924)
!1941 = !DILocation(line: 56, column: 28, scope: !1924)
!1942 = !DILocation(line: 56, column: 25, scope: !1924)
!1943 = !DILocation(line: 56, column: 33, scope: !1924)
!1944 = !DILocation(line: 56, column: 36, scope: !1924)
!1945 = !DILocation(line: 56, column: 42, scope: !1924)
!1946 = !DILocation(line: 56, column: 45, scope: !1924)
!1947 = !DILocation(line: 56, column: 56, scope: !1924)
!1948 = !DILocation(line: 56, column: 51, scope: !1924)
!1949 = !DILocation(line: 58, column: 18, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1924, file: !689, line: 58, column: 11)
!1951 = !DILocation(line: 58, column: 11, scope: !1924)
!1952 = !DILocation(line: 65, column: 5, scope: !1925)
!1953 = !DILocation(line: 65, column: 5, scope: !1924)
!1954 = !DILocation(line: 70, column: 23, scope: !1929)
!1955 = !DILocation(line: 0, scope: !1929)
!1956 = !DILocation(line: 72, column: 25, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !689, line: 72, column: 7)
!1958 = distinct !DILexicalBlock(scope: !1929, file: !689, line: 72, column: 7)
!1959 = !DILocation(line: 72, column: 7, scope: !1958)
!1960 = !DILocation(line: 73, column: 51, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1957, file: !689, line: 73, column: 13)
!1962 = !DILocation(line: 73, column: 13, scope: !1961)
!1963 = !DILocation(line: 73, column: 13, scope: !1957)
!1964 = !DILocation(line: 74, column: 14, scope: !1961)
!1965 = !DILocation(line: 74, column: 11, scope: !1961)
!1966 = !DILocation(line: 72, column: 30, scope: !1957)
!1967 = distinct !{!1967, !1959, !1968}
!1968 = !DILocation(line: 74, column: 23, scope: !1958)
!1969 = !DILocation(line: 78, column: 13, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1929, file: !689, line: 78, column: 11)
!1971 = !DILocation(line: 78, column: 40, scope: !1970)
!1972 = !DILocation(line: 79, column: 13, scope: !1970)
!1973 = !DILocation(line: 79, column: 17, scope: !1970)
!1974 = !DILocation(line: 79, column: 28, scope: !1970)
!1975 = !DILocation(line: 79, column: 35, scope: !1970)
!1976 = !DILocation(line: 79, column: 38, scope: !1970)
!1977 = !DILocation(line: 79, column: 49, scope: !1970)
!1978 = !DILocation(line: 79, column: 56, scope: !1970)
!1979 = !DILocation(line: 79, column: 59, scope: !1970)
!1980 = !DILocation(line: 79, column: 70, scope: !1970)
!1981 = !DILocation(line: 80, column: 17, scope: !1970)
!1982 = !DILocation(line: 80, column: 37, scope: !1970)
!1983 = !DILocation(line: 80, column: 20, scope: !1970)
!1984 = !DILocation(line: 80, column: 51, scope: !1970)
!1985 = !DILocation(line: 78, column: 11, scope: !1929)
!1986 = !DILocation(line: 81, column: 16, scope: !1970)
!1987 = !DILocation(line: 81, column: 9, scope: !1970)
!1988 = !DILocation(line: 83, column: 7, scope: !1929)
!1989 = !DILocation(line: 86, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1918, file: !689, line: 86, column: 7)
!1991 = !DILocation(line: 86, column: 14, scope: !1990)
!1992 = !DILocation(line: 86, column: 18, scope: !1990)
!1993 = !DILocation(line: 86, column: 21, scope: !1990)
!1994 = !DILocation(line: 86, column: 47, scope: !1990)
!1995 = !DILocation(line: 86, column: 7, scope: !1918)
!1996 = !DILocation(line: 88, column: 20, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1990, file: !689, line: 87, column: 5)
!1998 = !DILocation(line: 88, column: 45, scope: !1997)
!1999 = !DILocation(line: 88, column: 7, scope: !1997)
!2000 = !DILocation(line: 89, column: 7, scope: !1997)
!2001 = !DILocation(line: 92, column: 10, scope: !1918)
!2002 = !DILocation(line: 92, column: 3, scope: !1918)
!2003 = !DILocation(line: 93, column: 1, scope: !1918)
!2004 = distinct !DISubprogram(name: "cl_strtod", scope: !696, file: !696, line: 59, type: !2005, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !2008)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!181, !20, !2007}
!2007 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !185)
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2016, !2017}
!2009 = !DILocalVariable(name: "nptr", arg: 1, scope: !2004, file: !696, line: 59, type: !20)
!2010 = !DILocalVariable(name: "endptr", arg: 2, scope: !2004, file: !696, line: 59, type: !2007)
!2011 = !DILocalVariable(name: "end", scope: !2004, file: !696, line: 61, type: !18)
!2012 = !DILocalVariable(name: "d", scope: !2004, file: !696, line: 62, type: !181)
!2013 = !DILocalVariable(name: "strtod_errno", scope: !2014, file: !696, line: 65, type: !22)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !696, line: 64, column: 5)
!2015 = distinct !DILexicalBlock(scope: !2004, file: !696, line: 63, column: 7)
!2016 = !DILocalVariable(name: "c_end", scope: !2014, file: !696, line: 66, type: !18)
!2017 = !DILocalVariable(name: "c", scope: !2014, file: !696, line: 67, type: !181)
!2018 = !DILocation(line: 0, scope: !2004)
!2019 = !DILocation(line: 61, column: 3, scope: !2004)
!2020 = !DILocation(line: 62, column: 14, scope: !2004)
!2021 = !DILocation(line: 63, column: 8, scope: !2015)
!2022 = !DILocation(line: 63, column: 7, scope: !2015)
!2023 = !DILocation(line: 63, column: 7, scope: !2004)
!2024 = !DILocation(line: 65, column: 26, scope: !2014)
!2025 = !DILocation(line: 0, scope: !2014)
!2026 = !DILocation(line: 66, column: 7, scope: !2014)
!2027 = !DILocation(line: 67, column: 18, scope: !2014)
!2028 = !DILocation(line: 68, column: 17, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2014, file: !696, line: 68, column: 11)
!2030 = !DILocation(line: 68, column: 15, scope: !2029)
!2031 = !DILocation(line: 68, column: 11, scope: !2014)
!2032 = !DILocation(line: 69, column: 20, scope: !2029)
!2033 = !DILocation(line: 69, column: 9, scope: !2029)
!2034 = !DILocation(line: 71, column: 15, scope: !2029)
!2035 = !DILocation(line: 72, column: 5, scope: !2015)
!2036 = !DILocation(line: 72, column: 5, scope: !2014)
!2037 = !DILocation(line: 73, column: 7, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2004, file: !696, line: 73, column: 7)
!2039 = !DILocation(line: 73, column: 7, scope: !2004)
!2040 = !DILocation(line: 74, column: 13, scope: !2038)
!2041 = !DILocation(line: 74, column: 5, scope: !2038)
!2042 = !DILocation(line: 76, column: 1, scope: !2004)
!2043 = !DILocation(line: 75, column: 3, scope: !2004)
!2044 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !403, file: !403, line: 51, type: !87, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !2045)
!2045 = !{!2046}
!2046 = !DILocalVariable(name: "file", arg: 1, scope: !2044, file: !403, line: 51, type: !20)
!2047 = !DILocation(line: 0, scope: !2044)
!2048 = !DILocation(line: 53, column: 13, scope: !2044)
!2049 = !DILocation(line: 54, column: 1, scope: !2044)
!2050 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !403, file: !403, line: 88, type: !2051, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{null, !178}
!2053 = !{!2054}
!2054 = !DILocalVariable(name: "ignore", arg: 1, scope: !2050, file: !403, line: 88, type: !178)
!2055 = !DILocation(line: 0, scope: !2050)
!2056 = !DILocation(line: 90, column: 16, scope: !2050)
!2057 = !{!2058, !2058, i64 0}
!2058 = !{!"_Bool", !1402, i64 0}
!2059 = !DILocation(line: 91, column: 1, scope: !2050)
!2060 = distinct !DISubprogram(name: "close_stdout", scope: !403, file: !403, line: 117, type: !104, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !2061)
!2061 = !{!2062}
!2062 = !DILocalVariable(name: "write_error", scope: !2063, file: !403, line: 122, type: !20)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !403, line: 121, column: 5)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !403, line: 119, column: 7)
!2065 = !DILocation(line: 119, column: 21, scope: !2064)
!2066 = !DILocation(line: 119, column: 7, scope: !2064)
!2067 = !DILocation(line: 119, column: 29, scope: !2064)
!2068 = !DILocation(line: 120, column: 7, scope: !2064)
!2069 = !DILocation(line: 120, column: 12, scope: !2064)
!2070 = !{i8 0, i8 2}
!2071 = !DILocation(line: 120, column: 25, scope: !2064)
!2072 = !DILocation(line: 120, column: 28, scope: !2064)
!2073 = !DILocation(line: 120, column: 34, scope: !2064)
!2074 = !DILocation(line: 119, column: 7, scope: !2060)
!2075 = !DILocation(line: 122, column: 33, scope: !2063)
!2076 = !DILocation(line: 0, scope: !2063)
!2077 = !DILocation(line: 123, column: 11, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2063, file: !403, line: 123, column: 11)
!2079 = !DILocation(line: 0, scope: !2078)
!2080 = !DILocation(line: 123, column: 11, scope: !2063)
!2081 = !DILocation(line: 124, column: 36, scope: !2078)
!2082 = !DILocation(line: 124, column: 9, scope: !2078)
!2083 = !DILocation(line: 127, column: 9, scope: !2078)
!2084 = !DILocation(line: 129, column: 14, scope: !2063)
!2085 = !DILocation(line: 129, column: 7, scope: !2063)
!2086 = !DILocation(line: 134, column: 42, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2060, file: !403, line: 134, column: 7)
!2088 = !DILocation(line: 134, column: 28, scope: !2087)
!2089 = !DILocation(line: 134, column: 50, scope: !2087)
!2090 = !DILocation(line: 134, column: 7, scope: !2060)
!2091 = !DILocation(line: 135, column: 12, scope: !2087)
!2092 = !DILocation(line: 135, column: 5, scope: !2087)
!2093 = !DILocation(line: 136, column: 1, scope: !2060)
!2094 = distinct !DISubprogram(name: "dtotimespec", scope: !701, file: !701, line: 30, type: !2095, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !2101)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!2097, !181}
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !304, line: 10, size: 128, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2097, file: !304, line: 12, baseType: !307, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2097, file: !304, line: 16, baseType: !309, size: 64, offset: 64)
!2101 = !{!2102, !2103, !2107, !2108}
!2102 = !DILocalVariable(name: "sec", arg: 1, scope: !2094, file: !701, line: 30, type: !181)
!2103 = !DILocalVariable(name: "s", scope: !2104, file: !701, line: 38, type: !707)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !701, line: 37, column: 5)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !701, line: 34, column: 12)
!2106 = distinct !DILexicalBlock(scope: !2094, file: !701, line: 32, column: 7)
!2107 = !DILocalVariable(name: "frac", scope: !2104, file: !701, line: 39, type: !181)
!2108 = !DILocalVariable(name: "ns", scope: !2104, file: !701, line: 40, type: !53)
!2109 = !DILocation(line: 0, scope: !2094)
!2110 = !DILocation(line: 32, column: 32, scope: !2106)
!2111 = !DILocation(line: 32, column: 7, scope: !2094)
!2112 = !DILocation(line: 34, column: 19, scope: !2105)
!2113 = !DILocation(line: 34, column: 12, scope: !2106)
!2114 = !DILocation(line: 38, column: 18, scope: !2104)
!2115 = !DILocation(line: 0, scope: !2104)
!2116 = !DILocation(line: 39, column: 42, scope: !2104)
!2117 = !DILocation(line: 39, column: 40, scope: !2104)
!2118 = !DILocation(line: 39, column: 33, scope: !2104)
!2119 = !DILocation(line: 40, column: 17, scope: !2104)
!2120 = !DILocation(line: 41, column: 13, scope: !2104)
!2121 = !DILocation(line: 41, column: 16, scope: !2104)
!2122 = !DILocation(line: 41, column: 10, scope: !2104)
!2123 = !DILocation(line: 42, column: 15, scope: !2104)
!2124 = !DILocation(line: 42, column: 9, scope: !2104)
!2125 = !DILocation(line: 43, column: 10, scope: !2104)
!2126 = !DILocation(line: 45, column: 14, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2104, file: !701, line: 45, column: 11)
!2128 = !DILocation(line: 45, column: 11, scope: !2104)
!2129 = !DILocation(line: 0, scope: !2106)
!2130 = !DILocation(line: 53, column: 1, scope: !2094)
!2131 = distinct !DISubprogram(name: "set_program_name", scope: !455, file: !455, line: 39, type: !87, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2132)
!2132 = !{!2133, !2134, !2135}
!2133 = !DILocalVariable(name: "argv0", arg: 1, scope: !2131, file: !455, line: 39, type: !20)
!2134 = !DILocalVariable(name: "slash", scope: !2131, file: !455, line: 46, type: !20)
!2135 = !DILocalVariable(name: "base", scope: !2131, file: !455, line: 47, type: !20)
!2136 = !DILocation(line: 0, scope: !2131)
!2137 = !DILocation(line: 51, column: 13, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2131, file: !455, line: 51, column: 7)
!2139 = !DILocation(line: 51, column: 7, scope: !2131)
!2140 = !DILocation(line: 55, column: 14, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !455, line: 52, column: 5)
!2142 = !DILocation(line: 54, column: 7, scope: !2141)
!2143 = !DILocation(line: 56, column: 7, scope: !2141)
!2144 = !DILocation(line: 59, column: 11, scope: !2131)
!2145 = !DILocation(line: 60, column: 17, scope: !2131)
!2146 = !DILocation(line: 60, column: 11, scope: !2131)
!2147 = !DILocation(line: 61, column: 12, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2131, file: !455, line: 61, column: 7)
!2149 = !DILocation(line: 61, column: 20, scope: !2148)
!2150 = !DILocation(line: 61, column: 25, scope: !2148)
!2151 = !DILocation(line: 61, column: 42, scope: !2148)
!2152 = !DILocation(line: 61, column: 28, scope: !2148)
!2153 = !DILocation(line: 61, column: 61, scope: !2148)
!2154 = !DILocation(line: 61, column: 7, scope: !2131)
!2155 = !DILocation(line: 64, column: 11, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !455, line: 64, column: 11)
!2157 = distinct !DILexicalBlock(scope: !2148, file: !455, line: 62, column: 5)
!2158 = !DILocation(line: 64, column: 36, scope: !2156)
!2159 = !DILocation(line: 64, column: 11, scope: !2157)
!2160 = !DILocation(line: 66, column: 24, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2156, file: !455, line: 65, column: 9)
!2162 = !DILocation(line: 70, column: 41, scope: !2161)
!2163 = !DILocation(line: 72, column: 9, scope: !2161)
!2164 = !DILocation(line: 84, column: 16, scope: !2131)
!2165 = !DILocation(line: 90, column: 27, scope: !2131)
!2166 = !DILocation(line: 92, column: 1, scope: !2131)
!2167 = distinct !DISubprogram(name: "clone_quoting_options", scope: !496, file: !496, line: 122, type: !2168, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2171)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!2170, !2170}
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!2171 = !{!2172, !2173, !2174}
!2172 = !DILocalVariable(name: "o", arg: 1, scope: !2167, file: !496, line: 122, type: !2170)
!2173 = !DILocalVariable(name: "e", scope: !2167, file: !496, line: 124, type: !22)
!2174 = !DILocalVariable(name: "p", scope: !2167, file: !496, line: 125, type: !2170)
!2175 = !DILocation(line: 0, scope: !2167)
!2176 = !DILocation(line: 124, column: 11, scope: !2167)
!2177 = !DILocation(line: 125, column: 40, scope: !2167)
!2178 = !DILocation(line: 125, column: 31, scope: !2167)
!2179 = !DILocation(line: 127, column: 9, scope: !2167)
!2180 = !DILocation(line: 128, column: 3, scope: !2167)
!2181 = distinct !DISubprogram(name: "get_quoting_style", scope: !496, file: !496, line: 133, type: !2182, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2184)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!498, !542}
!2184 = !{!2185}
!2185 = !DILocalVariable(name: "o", arg: 1, scope: !2181, file: !496, line: 133, type: !542)
!2186 = !DILocation(line: 0, scope: !2181)
!2187 = !DILocation(line: 135, column: 11, scope: !2181)
!2188 = !DILocation(line: 135, column: 46, scope: !2181)
!2189 = !{!2190, !1402, i64 0}
!2190 = !{!"quoting_options", !1402, i64 0, !1511, i64 4, !1402, i64 8, !1401, i64 40, !1401, i64 48}
!2191 = !DILocation(line: 135, column: 3, scope: !2181)
!2192 = distinct !DISubprogram(name: "set_quoting_style", scope: !496, file: !496, line: 141, type: !2193, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !2170, !498}
!2195 = !{!2196, !2197}
!2196 = !DILocalVariable(name: "o", arg: 1, scope: !2192, file: !496, line: 141, type: !2170)
!2197 = !DILocalVariable(name: "s", arg: 2, scope: !2192, file: !496, line: 141, type: !498)
!2198 = !DILocation(line: 0, scope: !2192)
!2199 = !DILocation(line: 143, column: 4, scope: !2192)
!2200 = !DILocation(line: 143, column: 39, scope: !2192)
!2201 = !DILocation(line: 143, column: 45, scope: !2192)
!2202 = !DILocation(line: 144, column: 1, scope: !2192)
!2203 = distinct !DISubprogram(name: "set_char_quoting", scope: !496, file: !496, line: 152, type: !2204, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!22, !2170, !19, !22}
!2206 = !{!2207, !2208, !2209, !2210, !2212, !2214, !2215}
!2207 = !DILocalVariable(name: "o", arg: 1, scope: !2203, file: !496, line: 152, type: !2170)
!2208 = !DILocalVariable(name: "c", arg: 2, scope: !2203, file: !496, line: 152, type: !19)
!2209 = !DILocalVariable(name: "i", arg: 3, scope: !2203, file: !496, line: 152, type: !22)
!2210 = !DILocalVariable(name: "uc", scope: !2203, file: !496, line: 154, type: !2211)
!2211 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!2212 = !DILocalVariable(name: "p", scope: !2203, file: !496, line: 155, type: !2213)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2214 = !DILocalVariable(name: "shift", scope: !2203, file: !496, line: 157, type: !22)
!2215 = !DILocalVariable(name: "r", scope: !2203, file: !496, line: 158, type: !22)
!2216 = !DILocation(line: 0, scope: !2203)
!2217 = !DILocation(line: 156, column: 6, scope: !2203)
!2218 = !DILocation(line: 156, column: 62, scope: !2203)
!2219 = !DILocation(line: 156, column: 57, scope: !2203)
!2220 = !DILocation(line: 157, column: 15, scope: !2203)
!2221 = !DILocation(line: 158, column: 12, scope: !2203)
!2222 = !DILocation(line: 158, column: 15, scope: !2203)
!2223 = !DILocation(line: 158, column: 25, scope: !2203)
!2224 = !DILocation(line: 159, column: 13, scope: !2203)
!2225 = !DILocation(line: 159, column: 18, scope: !2203)
!2226 = !DILocation(line: 159, column: 23, scope: !2203)
!2227 = !DILocation(line: 159, column: 6, scope: !2203)
!2228 = !DILocation(line: 160, column: 3, scope: !2203)
!2229 = distinct !DISubprogram(name: "set_quoting_flags", scope: !496, file: !496, line: 168, type: !2230, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!22, !2170, !22}
!2232 = !{!2233, !2234, !2235}
!2233 = !DILocalVariable(name: "o", arg: 1, scope: !2229, file: !496, line: 168, type: !2170)
!2234 = !DILocalVariable(name: "i", arg: 2, scope: !2229, file: !496, line: 168, type: !22)
!2235 = !DILocalVariable(name: "r", scope: !2229, file: !496, line: 170, type: !22)
!2236 = !DILocation(line: 0, scope: !2229)
!2237 = !DILocation(line: 171, column: 8, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2229, file: !496, line: 171, column: 7)
!2239 = !DILocation(line: 171, column: 7, scope: !2229)
!2240 = !DILocation(line: 173, column: 10, scope: !2229)
!2241 = !{!2190, !1511, i64 4}
!2242 = !DILocation(line: 174, column: 12, scope: !2229)
!2243 = !DILocation(line: 175, column: 3, scope: !2229)
!2244 = distinct !DISubprogram(name: "set_custom_quoting", scope: !496, file: !496, line: 179, type: !2245, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{null, !2170, !20, !20}
!2247 = !{!2248, !2249, !2250}
!2248 = !DILocalVariable(name: "o", arg: 1, scope: !2244, file: !496, line: 179, type: !2170)
!2249 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2244, file: !496, line: 180, type: !20)
!2250 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2244, file: !496, line: 180, type: !20)
!2251 = !DILocation(line: 0, scope: !2244)
!2252 = !DILocation(line: 182, column: 8, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2244, file: !496, line: 182, column: 7)
!2254 = !DILocation(line: 182, column: 7, scope: !2244)
!2255 = !DILocation(line: 184, column: 6, scope: !2244)
!2256 = !DILocation(line: 184, column: 12, scope: !2244)
!2257 = !DILocation(line: 185, column: 8, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2244, file: !496, line: 185, column: 7)
!2259 = !DILocation(line: 185, column: 23, scope: !2258)
!2260 = !DILocation(line: 185, column: 19, scope: !2258)
!2261 = !DILocation(line: 186, column: 5, scope: !2258)
!2262 = !DILocation(line: 187, column: 6, scope: !2244)
!2263 = !DILocation(line: 187, column: 17, scope: !2244)
!2264 = !{!2190, !1401, i64 40}
!2265 = !DILocation(line: 188, column: 6, scope: !2244)
!2266 = !DILocation(line: 188, column: 18, scope: !2244)
!2267 = !{!2190, !1401, i64 48}
!2268 = !DILocation(line: 189, column: 1, scope: !2244)
!2269 = distinct !DISubprogram(name: "quotearg_buffer", scope: !496, file: !496, line: 784, type: !2270, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!77, !18, !77, !20, !77, !542}
!2272 = !{!2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280}
!2273 = !DILocalVariable(name: "buffer", arg: 1, scope: !2269, file: !496, line: 784, type: !18)
!2274 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2269, file: !496, line: 784, type: !77)
!2275 = !DILocalVariable(name: "arg", arg: 3, scope: !2269, file: !496, line: 785, type: !20)
!2276 = !DILocalVariable(name: "argsize", arg: 4, scope: !2269, file: !496, line: 785, type: !77)
!2277 = !DILocalVariable(name: "o", arg: 5, scope: !2269, file: !496, line: 786, type: !542)
!2278 = !DILocalVariable(name: "p", scope: !2269, file: !496, line: 788, type: !542)
!2279 = !DILocalVariable(name: "e", scope: !2269, file: !496, line: 789, type: !22)
!2280 = !DILocalVariable(name: "r", scope: !2269, file: !496, line: 790, type: !77)
!2281 = !DILocation(line: 0, scope: !2269)
!2282 = !DILocation(line: 788, column: 37, scope: !2269)
!2283 = !DILocation(line: 789, column: 11, scope: !2269)
!2284 = !DILocation(line: 791, column: 43, scope: !2269)
!2285 = !DILocation(line: 791, column: 53, scope: !2269)
!2286 = !DILocation(line: 791, column: 60, scope: !2269)
!2287 = !DILocation(line: 792, column: 43, scope: !2269)
!2288 = !DILocation(line: 792, column: 58, scope: !2269)
!2289 = !DILocation(line: 790, column: 14, scope: !2269)
!2290 = !DILocation(line: 793, column: 9, scope: !2269)
!2291 = !DILocation(line: 794, column: 3, scope: !2269)
!2292 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !496, file: !496, line: 256, type: !2293, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2297)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!77, !18, !77, !20, !77, !498, !22, !2295, !20, !20}
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2322, !2323, !2324, !2325, !2326, !2329, !2330, !2336, !2339, !2340, !2347, !2350, !2351, !2352, !2353, !2354, !2355}
!2298 = !DILocalVariable(name: "buffer", arg: 1, scope: !2292, file: !496, line: 256, type: !18)
!2299 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2292, file: !496, line: 256, type: !77)
!2300 = !DILocalVariable(name: "arg", arg: 3, scope: !2292, file: !496, line: 257, type: !20)
!2301 = !DILocalVariable(name: "argsize", arg: 4, scope: !2292, file: !496, line: 257, type: !77)
!2302 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2292, file: !496, line: 258, type: !498)
!2303 = !DILocalVariable(name: "flags", arg: 6, scope: !2292, file: !496, line: 258, type: !22)
!2304 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2292, file: !496, line: 259, type: !2295)
!2305 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2292, file: !496, line: 260, type: !20)
!2306 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2292, file: !496, line: 261, type: !20)
!2307 = !DILocalVariable(name: "i", scope: !2292, file: !496, line: 263, type: !77)
!2308 = !DILocalVariable(name: "len", scope: !2292, file: !496, line: 264, type: !77)
!2309 = !DILocalVariable(name: "orig_buffersize", scope: !2292, file: !496, line: 265, type: !77)
!2310 = !DILocalVariable(name: "quote_string", scope: !2292, file: !496, line: 266, type: !20)
!2311 = !DILocalVariable(name: "quote_string_len", scope: !2292, file: !496, line: 267, type: !77)
!2312 = !DILocalVariable(name: "backslash_escapes", scope: !2292, file: !496, line: 268, type: !178)
!2313 = !DILocalVariable(name: "unibyte_locale", scope: !2292, file: !496, line: 269, type: !178)
!2314 = !DILocalVariable(name: "elide_outer_quotes", scope: !2292, file: !496, line: 270, type: !178)
!2315 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2292, file: !496, line: 271, type: !178)
!2316 = !DILocalVariable(name: "encountered_single_quote", scope: !2292, file: !496, line: 272, type: !178)
!2317 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2292, file: !496, line: 273, type: !178)
!2318 = !DILocalVariable(name: "c", scope: !2319, file: !496, line: 402, type: !2211)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !496, line: 401, column: 5)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !496, line: 400, column: 3)
!2321 = distinct !DILexicalBlock(scope: !2292, file: !496, line: 400, column: 3)
!2322 = !DILocalVariable(name: "esc", scope: !2319, file: !496, line: 403, type: !2211)
!2323 = !DILocalVariable(name: "is_right_quote", scope: !2319, file: !496, line: 404, type: !178)
!2324 = !DILocalVariable(name: "escaping", scope: !2319, file: !496, line: 405, type: !178)
!2325 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2319, file: !496, line: 406, type: !178)
!2326 = !DILocalVariable(name: "m", scope: !2327, file: !496, line: 610, type: !77)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !496, line: 608, column: 11)
!2328 = distinct !DILexicalBlock(scope: !2319, file: !496, line: 426, column: 9)
!2329 = !DILocalVariable(name: "printable", scope: !2327, file: !496, line: 612, type: !178)
!2330 = !DILocalVariable(name: "mbstate", scope: !2331, file: !496, line: 621, type: !2333)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !496, line: 620, column: 15)
!2332 = distinct !DILexicalBlock(scope: !2327, file: !496, line: 614, column: 17)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2334, line: 6, baseType: !2335)
!2334 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !564, line: 21, baseType: !563)
!2336 = !DILocalVariable(name: "w", scope: !2337, file: !496, line: 631, type: !2338)
!2337 = distinct !DILexicalBlock(scope: !2331, file: !496, line: 630, column: 19)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !78, line: 74, baseType: !22)
!2339 = !DILocalVariable(name: "bytes", scope: !2337, file: !496, line: 632, type: !77)
!2340 = !DILocalVariable(name: "j", scope: !2341, file: !496, line: 657, type: !77)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !496, line: 656, column: 27)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !496, line: 654, column: 29)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !496, line: 649, column: 23)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !496, line: 641, column: 30)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !496, line: 636, column: 30)
!2346 = distinct !DILexicalBlock(scope: !2337, file: !496, line: 634, column: 25)
!2347 = !DILocalVariable(name: "ilim", scope: !2348, file: !496, line: 684, type: !77)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !496, line: 681, column: 15)
!2349 = distinct !DILexicalBlock(scope: !2327, file: !496, line: 680, column: 17)
!2350 = !DILabel(scope: !2292, name: "process_input", file: !496, line: 314)
!2351 = !DILabel(scope: !2328, name: "c_and_shell_escape", file: !496, line: 512)
!2352 = !DILabel(scope: !2328, name: "c_escape", file: !496, line: 517)
!2353 = !DILabel(scope: !2319, name: "store_escape", file: !496, line: 719)
!2354 = !DILabel(scope: !2319, name: "store_c", file: !496, line: 722)
!2355 = !DILabel(scope: !2292, name: "force_outer_quoting_style", file: !496, line: 763)
!2356 = !DILocation(line: 0, scope: !2292)
!2357 = !DILocation(line: 269, column: 25, scope: !2292)
!2358 = !DILocation(line: 269, column: 36, scope: !2292)
!2359 = !DILocation(line: 270, column: 8, scope: !2292)
!2360 = !DILocation(line: 0, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2328, file: !496, line: 526, column: 15)
!2362 = !DILocation(line: 0, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !496, line: 462, column: 19)
!2364 = distinct !DILexicalBlock(scope: !2328, file: !496, line: 455, column: 13)
!2365 = !DILocation(line: 0, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !496, line: 449, column: 20)
!2367 = distinct !DILexicalBlock(scope: !2328, file: !496, line: 428, column: 15)
!2368 = !DILocation(line: 0, scope: !2331)
!2369 = !DILocation(line: 0, scope: !2337)
!2370 = !DILocation(line: 0, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2319, file: !496, line: 712, column: 11)
!2372 = !DILocation(line: 273, column: 3, scope: !2292)
!2373 = !DILocation(line: 265, column: 10, scope: !2292)
!2374 = !DILocation(line: 266, column: 15, scope: !2292)
!2375 = !DILocation(line: 267, column: 10, scope: !2292)
!2376 = !DILocation(line: 268, column: 8, scope: !2292)
!2377 = !DILocation(line: 271, column: 8, scope: !2292)
!2378 = !DILocation(line: 272, column: 8, scope: !2292)
!2379 = !DILocation(line: 273, column: 8, scope: !2292)
!2380 = !DILocation(line: 314, column: 2, scope: !2292)
!2381 = !DILocation(line: 316, column: 3, scope: !2292)
!2382 = !DILocation(line: 323, column: 11, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2292, file: !496, line: 317, column: 5)
!2384 = !DILocation(line: 323, column: 12, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2383, file: !496, line: 323, column: 11)
!2386 = !DILocation(line: 324, column: 9, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !496, line: 324, column: 9)
!2388 = distinct !DILexicalBlock(scope: !2385, file: !496, line: 324, column: 9)
!2389 = !DILocation(line: 324, column: 9, scope: !2388)
!2390 = !DILocation(line: 362, column: 26, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !496, line: 340, column: 11)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !496, line: 339, column: 13)
!2393 = distinct !DILexicalBlock(scope: !2383, file: !496, line: 338, column: 7)
!2394 = !DILocation(line: 363, column: 27, scope: !2391)
!2395 = !DILocation(line: 364, column: 11, scope: !2391)
!2396 = !DILocation(line: 365, column: 14, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2393, file: !496, line: 365, column: 13)
!2398 = !DILocation(line: 365, column: 13, scope: !2393)
!2399 = !DILocation(line: 366, column: 43, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !496, line: 366, column: 11)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !496, line: 366, column: 11)
!2402 = !DILocation(line: 366, column: 11, scope: !2401)
!2403 = !DILocation(line: 367, column: 13, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !496, line: 367, column: 13)
!2405 = distinct !DILexicalBlock(scope: !2400, file: !496, line: 367, column: 13)
!2406 = !DILocation(line: 367, column: 13, scope: !2405)
!2407 = !DILocation(line: 366, column: 70, scope: !2400)
!2408 = distinct !{!2408, !2402, !2409}
!2409 = !DILocation(line: 367, column: 13, scope: !2401)
!2410 = !DILocation(line: 264, column: 10, scope: !2292)
!2411 = !DILocation(line: 370, column: 28, scope: !2393)
!2412 = !DILocation(line: 372, column: 7, scope: !2383)
!2413 = !DILocation(line: 376, column: 7, scope: !2383)
!2414 = !DILocation(line: 379, column: 7, scope: !2383)
!2415 = !DILocation(line: 381, column: 12, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2383, file: !496, line: 381, column: 11)
!2417 = !DILocation(line: 381, column: 11, scope: !2383)
!2418 = !DILocation(line: 386, column: 12, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2383, file: !496, line: 386, column: 11)
!2420 = !DILocation(line: 386, column: 11, scope: !2383)
!2421 = !DILocation(line: 387, column: 9, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !496, line: 387, column: 9)
!2423 = distinct !DILexicalBlock(scope: !2419, file: !496, line: 387, column: 9)
!2424 = !DILocation(line: 387, column: 9, scope: !2423)
!2425 = !DILocation(line: 394, column: 7, scope: !2383)
!2426 = !DILocation(line: 397, column: 7, scope: !2383)
!2427 = !DILocation(line: 0, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2319, file: !496, line: 408, column: 11)
!2429 = !DILocation(line: 0, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !496, line: 419, column: 15)
!2431 = distinct !DILexicalBlock(scope: !2428, file: !496, line: 418, column: 9)
!2432 = !DILocation(line: 0, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2328, file: !496, line: 556, column: 15)
!2434 = !DILocation(line: 0, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2328, file: !496, line: 548, column: 15)
!2436 = !DILocation(line: 0, scope: !2342)
!2437 = !DILocation(line: 0, scope: !2349)
!2438 = !DILocation(line: 0, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2328, file: !496, line: 509, column: 15)
!2440 = !DILocation(line: 400, column: 8, scope: !2321)
!2441 = !DILocation(line: 0, scope: !2321)
!2442 = !DILocation(line: 400, column: 27, scope: !2320)
!2443 = !DILocation(line: 400, column: 19, scope: !2320)
!2444 = !DILocation(line: 400, column: 41, scope: !2320)
!2445 = !DILocation(line: 400, column: 48, scope: !2320)
!2446 = !DILocation(line: 400, column: 3, scope: !2321)
!2447 = !DILocation(line: 400, column: 60, scope: !2320)
!2448 = !DILocation(line: 0, scope: !2319)
!2449 = !DILocation(line: 409, column: 11, scope: !2428)
!2450 = !DILocation(line: 411, column: 17, scope: !2428)
!2451 = !DILocation(line: 412, column: 39, scope: !2428)
!2452 = !DILocation(line: 416, column: 32, scope: !2428)
!2453 = !DILocation(line: 412, column: 19, scope: !2428)
!2454 = !DILocation(line: 412, column: 15, scope: !2428)
!2455 = !DILocation(line: 417, column: 11, scope: !2428)
!2456 = !DILocation(line: 417, column: 26, scope: !2428)
!2457 = !DILocation(line: 417, column: 14, scope: !2428)
!2458 = !DILocation(line: 417, column: 63, scope: !2428)
!2459 = !DILocation(line: 408, column: 11, scope: !2319)
!2460 = !DILocation(line: 424, column: 11, scope: !2319)
!2461 = !DILocation(line: 425, column: 7, scope: !2319)
!2462 = !DILocation(line: 428, column: 15, scope: !2328)
!2463 = !DILocation(line: 430, column: 15, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !496, line: 430, column: 15)
!2465 = distinct !DILexicalBlock(scope: !2367, file: !496, line: 429, column: 13)
!2466 = !DILocation(line: 430, column: 15, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2464, file: !496, line: 430, column: 15)
!2468 = !DILocation(line: 430, column: 15, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !496, line: 430, column: 15)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !496, line: 430, column: 15)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !496, line: 430, column: 15)
!2472 = !DILocation(line: 430, column: 15, scope: !2470)
!2473 = !DILocation(line: 430, column: 15, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !496, line: 430, column: 15)
!2475 = distinct !DILexicalBlock(scope: !2471, file: !496, line: 430, column: 15)
!2476 = !DILocation(line: 430, column: 15, scope: !2475)
!2477 = !DILocation(line: 430, column: 15, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !496, line: 430, column: 15)
!2479 = distinct !DILexicalBlock(scope: !2471, file: !496, line: 430, column: 15)
!2480 = !DILocation(line: 430, column: 15, scope: !2479)
!2481 = !DILocation(line: 430, column: 15, scope: !2471)
!2482 = !DILocation(line: 430, column: 15, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !496, line: 430, column: 15)
!2484 = distinct !DILexicalBlock(scope: !2464, file: !496, line: 430, column: 15)
!2485 = !DILocation(line: 430, column: 15, scope: !2484)
!2486 = !DILocation(line: 438, column: 19, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2465, file: !496, line: 437, column: 19)
!2488 = !DILocation(line: 438, column: 24, scope: !2487)
!2489 = !DILocation(line: 438, column: 28, scope: !2487)
!2490 = !DILocation(line: 438, column: 38, scope: !2487)
!2491 = !DILocation(line: 438, column: 48, scope: !2487)
!2492 = !DILocation(line: 438, column: 59, scope: !2487)
!2493 = !DILocation(line: 440, column: 19, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !496, line: 440, column: 19)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !496, line: 440, column: 19)
!2496 = distinct !DILexicalBlock(scope: !2487, file: !496, line: 439, column: 17)
!2497 = !DILocation(line: 440, column: 19, scope: !2495)
!2498 = !DILocation(line: 441, column: 19, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !496, line: 441, column: 19)
!2500 = distinct !DILexicalBlock(scope: !2496, file: !496, line: 441, column: 19)
!2501 = !DILocation(line: 441, column: 19, scope: !2500)
!2502 = !DILocation(line: 442, column: 17, scope: !2496)
!2503 = !DILocation(line: 449, column: 20, scope: !2367)
!2504 = !DILocation(line: 454, column: 11, scope: !2328)
!2505 = !DILocation(line: 457, column: 19, scope: !2364)
!2506 = !DILocation(line: 463, column: 19, scope: !2363)
!2507 = !DILocation(line: 463, column: 24, scope: !2363)
!2508 = !DILocation(line: 463, column: 28, scope: !2363)
!2509 = !DILocation(line: 463, column: 38, scope: !2363)
!2510 = !DILocation(line: 463, column: 47, scope: !2363)
!2511 = !DILocation(line: 463, column: 41, scope: !2363)
!2512 = !DILocation(line: 463, column: 52, scope: !2363)
!2513 = !DILocation(line: 462, column: 19, scope: !2364)
!2514 = !DILocation(line: 464, column: 25, scope: !2363)
!2515 = !DILocation(line: 464, column: 17, scope: !2363)
!2516 = !DILocation(line: 471, column: 25, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2363, file: !496, line: 465, column: 19)
!2518 = !DILocation(line: 475, column: 21, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !496, line: 475, column: 21)
!2520 = distinct !DILexicalBlock(scope: !2517, file: !496, line: 475, column: 21)
!2521 = !DILocation(line: 475, column: 21, scope: !2520)
!2522 = !DILocation(line: 476, column: 21, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !496, line: 476, column: 21)
!2524 = distinct !DILexicalBlock(scope: !2517, file: !496, line: 476, column: 21)
!2525 = !DILocation(line: 476, column: 21, scope: !2524)
!2526 = !DILocation(line: 477, column: 21, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !496, line: 477, column: 21)
!2528 = distinct !DILexicalBlock(scope: !2517, file: !496, line: 477, column: 21)
!2529 = !DILocation(line: 477, column: 21, scope: !2528)
!2530 = !DILocation(line: 478, column: 21, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !496, line: 478, column: 21)
!2532 = distinct !DILexicalBlock(scope: !2517, file: !496, line: 478, column: 21)
!2533 = !DILocation(line: 478, column: 21, scope: !2532)
!2534 = !DILocation(line: 479, column: 21, scope: !2517)
!2535 = !DILocation(line: 492, column: 31, scope: !2328)
!2536 = !DILocation(line: 493, column: 31, scope: !2328)
!2537 = !DILocation(line: 495, column: 31, scope: !2328)
!2538 = !DILocation(line: 496, column: 31, scope: !2328)
!2539 = !DILocation(line: 497, column: 31, scope: !2328)
!2540 = !DILocation(line: 500, column: 15, scope: !2328)
!2541 = !DILocation(line: 502, column: 19, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !496, line: 501, column: 13)
!2543 = distinct !DILexicalBlock(scope: !2328, file: !496, line: 500, column: 15)
!2544 = !DILocation(line: 509, column: 33, scope: !2439)
!2545 = !DILocation(line: 0, scope: !2328)
!2546 = !DILocation(line: 512, column: 9, scope: !2328)
!2547 = !DILocation(line: 514, column: 15, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2328, file: !496, line: 513, column: 15)
!2549 = !DILocation(line: 517, column: 9, scope: !2328)
!2550 = !DILocation(line: 518, column: 15, scope: !2328)
!2551 = !DILocation(line: 526, column: 15, scope: !2328)
!2552 = !DILocation(line: 526, column: 40, scope: !2361)
!2553 = !DILocation(line: 526, column: 47, scope: !2361)
!2554 = !DILocation(line: 526, column: 18, scope: !2361)
!2555 = !DILocation(line: 530, column: 17, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2328, file: !496, line: 530, column: 15)
!2557 = !DILocation(line: 530, column: 15, scope: !2328)
!2558 = !DILocation(line: 535, column: 11, scope: !2328)
!2559 = !DILocation(line: 549, column: 15, scope: !2435)
!2560 = !DILocation(line: 556, column: 15, scope: !2328)
!2561 = !DILocation(line: 558, column: 19, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2433, file: !496, line: 557, column: 13)
!2563 = !DILocation(line: 561, column: 19, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2562, file: !496, line: 561, column: 19)
!2565 = !DILocation(line: 561, column: 35, scope: !2564)
!2566 = !DILocation(line: 561, column: 30, scope: !2564)
!2567 = !DILocation(line: 570, column: 15, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !496, line: 570, column: 15)
!2569 = distinct !DILexicalBlock(scope: !2562, file: !496, line: 570, column: 15)
!2570 = !DILocation(line: 570, column: 15, scope: !2569)
!2571 = !DILocation(line: 571, column: 15, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !496, line: 571, column: 15)
!2573 = distinct !DILexicalBlock(scope: !2562, file: !496, line: 571, column: 15)
!2574 = !DILocation(line: 571, column: 15, scope: !2573)
!2575 = !DILocation(line: 572, column: 15, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !496, line: 572, column: 15)
!2577 = distinct !DILexicalBlock(scope: !2562, file: !496, line: 572, column: 15)
!2578 = !DILocation(line: 572, column: 15, scope: !2577)
!2579 = !DILocation(line: 574, column: 13, scope: !2562)
!2580 = !DILocation(line: 614, column: 17, scope: !2327)
!2581 = !DILocation(line: 0, scope: !2327)
!2582 = !DILocation(line: 617, column: 29, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2332, file: !496, line: 615, column: 15)
!2584 = !{!2585, !2585, i64 0}
!2585 = !{!"short", !1402, i64 0}
!2586 = !DILocation(line: 617, column: 27, scope: !2583)
!2587 = !DILocation(line: 618, column: 15, scope: !2583)
!2588 = !DILocation(line: 621, column: 17, scope: !2331)
!2589 = !DILocation(line: 621, column: 27, scope: !2331)
!2590 = !DILocalVariable(name: "__dest", arg: 1, scope: !2591, file: !2592, line: 59, type: !75)
!2591 = distinct !DISubprogram(name: "memset", scope: !2592, file: !2592, line: 59, type: !2593, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2595)
!2592 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!75, !75, !22, !77}
!2595 = !{!2590, !2596, !2597}
!2596 = !DILocalVariable(name: "__ch", arg: 2, scope: !2591, file: !2592, line: 59, type: !22)
!2597 = !DILocalVariable(name: "__len", arg: 3, scope: !2591, file: !2592, line: 59, type: !77)
!2598 = !DILocation(line: 0, scope: !2591, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 622, column: 17, scope: !2331)
!2600 = !DILocation(line: 71, column: 10, scope: !2591, inlinedAt: !2599)
!2601 = !DILocation(line: 626, column: 29, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2331, file: !496, line: 626, column: 21)
!2603 = !DILocation(line: 626, column: 21, scope: !2331)
!2604 = !DILocation(line: 627, column: 29, scope: !2602)
!2605 = !DILocation(line: 627, column: 19, scope: !2602)
!2606 = !DILocation(line: 629, column: 17, scope: !2331)
!2607 = !DILocation(line: 624, column: 19, scope: !2331)
!2608 = !DILocation(line: 625, column: 27, scope: !2331)
!2609 = !DILocation(line: 631, column: 21, scope: !2337)
!2610 = !DILocation(line: 632, column: 56, scope: !2337)
!2611 = !DILocation(line: 632, column: 50, scope: !2337)
!2612 = !DILocation(line: 633, column: 53, scope: !2337)
!2613 = !DILocation(line: 632, column: 36, scope: !2337)
!2614 = !DILocation(line: 634, column: 25, scope: !2337)
!2615 = !DILocation(line: 644, column: 38, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2344, file: !496, line: 642, column: 23)
!2617 = !DILocation(line: 644, column: 48, scope: !2616)
!2618 = !DILocation(line: 644, column: 25, scope: !2616)
!2619 = !DILocation(line: 644, column: 51, scope: !2616)
!2620 = !DILocation(line: 645, column: 28, scope: !2616)
!2621 = !DILocation(line: 644, column: 34, scope: !2616)
!2622 = distinct !{!2622, !2618, !2620}
!2623 = !DILocation(line: 658, column: 43, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !496, line: 658, column: 29)
!2625 = distinct !DILexicalBlock(scope: !2341, file: !496, line: 658, column: 29)
!2626 = !DILocation(line: 655, column: 29, scope: !2342)
!2627 = !DILocation(line: 0, scope: !2341)
!2628 = !DILocation(line: 659, column: 49, scope: !2624)
!2629 = !DILocation(line: 659, column: 39, scope: !2624)
!2630 = !DILocation(line: 659, column: 31, scope: !2624)
!2631 = !DILocation(line: 658, column: 53, scope: !2624)
!2632 = !DILocation(line: 658, column: 29, scope: !2625)
!2633 = distinct !{!2633, !2632, !2634}
!2634 = !DILocation(line: 667, column: 33, scope: !2625)
!2635 = !DILocation(line: 674, column: 19, scope: !2331)
!2636 = !DILocation(line: 670, column: 41, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2343, file: !496, line: 670, column: 29)
!2638 = !DILocation(line: 670, column: 31, scope: !2637)
!2639 = !DILocation(line: 670, column: 29, scope: !2343)
!2640 = !DILocation(line: 672, column: 27, scope: !2343)
!2641 = !DILocation(line: 675, column: 26, scope: !2331)
!2642 = !DILocation(line: 675, column: 24, scope: !2331)
!2643 = !DILocation(line: 674, column: 19, scope: !2337)
!2644 = distinct !{!2644, !2606, !2645}
!2645 = !DILocation(line: 675, column: 44, scope: !2331)
!2646 = !DILocation(line: 676, column: 15, scope: !2332)
!2647 = !DILocation(line: 0, scope: !2332)
!2648 = !DILocation(line: 678, column: 40, scope: !2327)
!2649 = !DILocation(line: 680, column: 19, scope: !2349)
!2650 = !DILocation(line: 680, column: 45, scope: !2349)
!2651 = !DILocation(line: 680, column: 23, scope: !2349)
!2652 = !DILocation(line: 684, column: 33, scope: !2348)
!2653 = !DILocation(line: 0, scope: !2348)
!2654 = !DILocation(line: 686, column: 17, scope: !2348)
!2655 = !DILocation(line: 405, column: 12, scope: !2319)
!2656 = !DILocation(line: 688, column: 43, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !496, line: 688, column: 25)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !496, line: 687, column: 19)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !496, line: 686, column: 17)
!2660 = distinct !DILexicalBlock(scope: !2348, file: !496, line: 686, column: 17)
!2661 = !DILocation(line: 690, column: 25, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !496, line: 690, column: 25)
!2663 = distinct !DILexicalBlock(scope: !2657, file: !496, line: 689, column: 23)
!2664 = !DILocation(line: 690, column: 25, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2662, file: !496, line: 690, column: 25)
!2666 = !DILocation(line: 690, column: 25, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !496, line: 690, column: 25)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !496, line: 690, column: 25)
!2669 = distinct !DILexicalBlock(scope: !2665, file: !496, line: 690, column: 25)
!2670 = !DILocation(line: 690, column: 25, scope: !2668)
!2671 = !DILocation(line: 690, column: 25, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !496, line: 690, column: 25)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !496, line: 690, column: 25)
!2674 = !DILocation(line: 690, column: 25, scope: !2673)
!2675 = !DILocation(line: 690, column: 25, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !496, line: 690, column: 25)
!2677 = distinct !DILexicalBlock(scope: !2669, file: !496, line: 690, column: 25)
!2678 = !DILocation(line: 690, column: 25, scope: !2677)
!2679 = !DILocation(line: 690, column: 25, scope: !2669)
!2680 = !DILocation(line: 690, column: 25, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !496, line: 690, column: 25)
!2682 = distinct !DILexicalBlock(scope: !2662, file: !496, line: 690, column: 25)
!2683 = !DILocation(line: 690, column: 25, scope: !2682)
!2684 = !DILocation(line: 691, column: 25, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !496, line: 691, column: 25)
!2686 = distinct !DILexicalBlock(scope: !2663, file: !496, line: 691, column: 25)
!2687 = !DILocation(line: 691, column: 25, scope: !2686)
!2688 = !DILocation(line: 692, column: 25, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !496, line: 692, column: 25)
!2690 = distinct !DILexicalBlock(scope: !2663, file: !496, line: 692, column: 25)
!2691 = !DILocation(line: 692, column: 25, scope: !2690)
!2692 = !DILocation(line: 693, column: 38, scope: !2663)
!2693 = !DILocation(line: 693, column: 33, scope: !2663)
!2694 = !DILocation(line: 694, column: 23, scope: !2663)
!2695 = !DILocation(line: 695, column: 30, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2657, file: !496, line: 695, column: 30)
!2697 = !DILocation(line: 695, column: 30, scope: !2657)
!2698 = !DILocation(line: 697, column: 25, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !496, line: 697, column: 25)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !496, line: 697, column: 25)
!2701 = distinct !DILexicalBlock(scope: !2696, file: !496, line: 696, column: 23)
!2702 = !DILocation(line: 697, column: 25, scope: !2700)
!2703 = !DILocation(line: 699, column: 23, scope: !2701)
!2704 = !DILocation(line: 700, column: 35, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2658, file: !496, line: 700, column: 25)
!2706 = !DILocation(line: 700, column: 30, scope: !2705)
!2707 = !DILocation(line: 700, column: 25, scope: !2658)
!2708 = !DILocation(line: 702, column: 21, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !496, line: 702, column: 21)
!2710 = distinct !DILexicalBlock(scope: !2658, file: !496, line: 702, column: 21)
!2711 = !DILocation(line: 702, column: 21, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !496, line: 702, column: 21)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !496, line: 702, column: 21)
!2714 = distinct !DILexicalBlock(scope: !2709, file: !496, line: 702, column: 21)
!2715 = !DILocation(line: 702, column: 21, scope: !2713)
!2716 = !DILocation(line: 702, column: 21, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !496, line: 702, column: 21)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !496, line: 702, column: 21)
!2719 = !DILocation(line: 702, column: 21, scope: !2718)
!2720 = !DILocation(line: 702, column: 21, scope: !2714)
!2721 = !DILocation(line: 0, scope: !2658)
!2722 = !DILocation(line: 703, column: 21, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !496, line: 703, column: 21)
!2724 = distinct !DILexicalBlock(scope: !2658, file: !496, line: 703, column: 21)
!2725 = !DILocation(line: 703, column: 21, scope: !2724)
!2726 = !DILocation(line: 704, column: 25, scope: !2658)
!2727 = !DILocation(line: 686, column: 17, scope: !2659)
!2728 = distinct !{!2728, !2729, !2730}
!2729 = !DILocation(line: 686, column: 17, scope: !2660)
!2730 = !DILocation(line: 705, column: 19, scope: !2660)
!2731 = !DILocation(line: 416, column: 30, scope: !2428)
!2732 = !DILocation(line: 712, column: 34, scope: !2371)
!2733 = !DILocation(line: 715, column: 35, scope: !2371)
!2734 = !DILocation(line: 715, column: 17, scope: !2371)
!2735 = !DILocation(line: 715, column: 47, scope: !2371)
!2736 = !DILocation(line: 715, column: 65, scope: !2371)
!2737 = !DILocation(line: 716, column: 15, scope: !2371)
!2738 = !DILocation(line: 716, column: 11, scope: !2371)
!2739 = !DILocation(line: 712, column: 11, scope: !2319)
!2740 = !DILocation(line: 400, column: 10, scope: !2321)
!2741 = !DILocation(line: 719, column: 5, scope: !2319)
!2742 = !DILocation(line: 720, column: 7, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2319, file: !496, line: 720, column: 7)
!2744 = !DILocation(line: 720, column: 7, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2743, file: !496, line: 720, column: 7)
!2746 = !DILocation(line: 720, column: 7, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !496, line: 720, column: 7)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !496, line: 720, column: 7)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !496, line: 720, column: 7)
!2750 = !DILocation(line: 720, column: 7, scope: !2748)
!2751 = !DILocation(line: 720, column: 7, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !496, line: 720, column: 7)
!2753 = distinct !DILexicalBlock(scope: !2749, file: !496, line: 720, column: 7)
!2754 = !DILocation(line: 720, column: 7, scope: !2753)
!2755 = !DILocation(line: 720, column: 7, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !496, line: 720, column: 7)
!2757 = distinct !DILexicalBlock(scope: !2749, file: !496, line: 720, column: 7)
!2758 = !DILocation(line: 720, column: 7, scope: !2757)
!2759 = !DILocation(line: 720, column: 7, scope: !2749)
!2760 = !DILocation(line: 720, column: 7, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !496, line: 720, column: 7)
!2762 = distinct !DILexicalBlock(scope: !2743, file: !496, line: 720, column: 7)
!2763 = !DILocation(line: 720, column: 7, scope: !2762)
!2764 = !DILocation(line: 722, column: 5, scope: !2319)
!2765 = !DILocation(line: 723, column: 7, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !496, line: 723, column: 7)
!2767 = distinct !DILexicalBlock(scope: !2319, file: !496, line: 723, column: 7)
!2768 = !DILocation(line: 424, column: 9, scope: !2319)
!2769 = !DILocation(line: 723, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !496, line: 723, column: 7)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !496, line: 723, column: 7)
!2772 = distinct !DILexicalBlock(scope: !2766, file: !496, line: 723, column: 7)
!2773 = !DILocation(line: 723, column: 7, scope: !2771)
!2774 = !DILocation(line: 723, column: 7, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !496, line: 723, column: 7)
!2776 = distinct !DILexicalBlock(scope: !2772, file: !496, line: 723, column: 7)
!2777 = !DILocation(line: 723, column: 7, scope: !2776)
!2778 = !DILocation(line: 723, column: 7, scope: !2772)
!2779 = !DILocation(line: 724, column: 7, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !496, line: 724, column: 7)
!2781 = distinct !DILexicalBlock(scope: !2319, file: !496, line: 724, column: 7)
!2782 = !DILocation(line: 724, column: 7, scope: !2781)
!2783 = !DILocation(line: 726, column: 13, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2319, file: !496, line: 726, column: 11)
!2785 = !DILocation(line: 726, column: 11, scope: !2319)
!2786 = !DILocation(line: 728, column: 5, scope: !2320)
!2787 = !DILocation(line: 400, column: 75, scope: !2320)
!2788 = !DILocation(line: 400, column: 3, scope: !2320)
!2789 = distinct !{!2789, !2446, !2790}
!2790 = !DILocation(line: 728, column: 5, scope: !2321)
!2791 = !DILocation(line: 730, column: 11, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2292, file: !496, line: 730, column: 7)
!2793 = !DILocation(line: 730, column: 16, scope: !2792)
!2794 = !DILocation(line: 738, column: 51, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2292, file: !496, line: 738, column: 7)
!2796 = !DILocation(line: 739, column: 10, scope: !2795)
!2797 = !DILocation(line: 741, column: 11, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !496, line: 741, column: 11)
!2799 = distinct !DILexicalBlock(scope: !2795, file: !496, line: 740, column: 5)
!2800 = !DILocation(line: 741, column: 11, scope: !2799)
!2801 = !DILocation(line: 742, column: 16, scope: !2798)
!2802 = !DILocation(line: 742, column: 9, scope: !2798)
!2803 = !DILocation(line: 746, column: 18, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2798, file: !496, line: 746, column: 16)
!2805 = !DILocation(line: 746, column: 32, scope: !2804)
!2806 = !DILocation(line: 746, column: 29, scope: !2804)
!2807 = !DILocation(line: 755, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2292, file: !496, line: 755, column: 7)
!2809 = !DILocation(line: 755, column: 20, scope: !2808)
!2810 = !DILocation(line: 756, column: 12, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !496, line: 756, column: 5)
!2812 = distinct !DILexicalBlock(scope: !2808, file: !496, line: 756, column: 5)
!2813 = !DILocation(line: 756, column: 5, scope: !2812)
!2814 = !DILocation(line: 757, column: 7, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !496, line: 757, column: 7)
!2816 = distinct !DILexicalBlock(scope: !2811, file: !496, line: 757, column: 7)
!2817 = !DILocation(line: 757, column: 7, scope: !2816)
!2818 = !DILocation(line: 756, column: 39, scope: !2811)
!2819 = distinct !{!2819, !2813, !2820}
!2820 = !DILocation(line: 757, column: 7, scope: !2812)
!2821 = !DILocation(line: 759, column: 11, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2292, file: !496, line: 759, column: 7)
!2823 = !DILocation(line: 759, column: 7, scope: !2292)
!2824 = !DILocation(line: 760, column: 5, scope: !2822)
!2825 = !DILocation(line: 760, column: 17, scope: !2822)
!2826 = !DILocation(line: 763, column: 2, scope: !2292)
!2827 = !DILocation(line: 766, column: 51, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2292, file: !496, line: 766, column: 7)
!2829 = !DILocation(line: 766, column: 21, scope: !2828)
!2830 = !DILocation(line: 770, column: 42, scope: !2292)
!2831 = !DILocation(line: 768, column: 10, scope: !2292)
!2832 = !DILocation(line: 768, column: 3, scope: !2292)
!2833 = !DILocation(line: 772, column: 1, scope: !2292)
!2834 = distinct !DISubprogram(name: "gettext_quote", scope: !496, file: !496, line: 207, type: !2835, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!20, !20, !498}
!2837 = !{!2838, !2839, !2840, !2841}
!2838 = !DILocalVariable(name: "msgid", arg: 1, scope: !2834, file: !496, line: 207, type: !20)
!2839 = !DILocalVariable(name: "s", arg: 2, scope: !2834, file: !496, line: 207, type: !498)
!2840 = !DILocalVariable(name: "translation", scope: !2834, file: !496, line: 209, type: !20)
!2841 = !DILocalVariable(name: "locale_code", scope: !2834, file: !496, line: 210, type: !20)
!2842 = !DILocation(line: 0, scope: !2834)
!2843 = !DILocation(line: 209, column: 29, scope: !2834)
!2844 = !DILocation(line: 212, column: 19, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2834, file: !496, line: 212, column: 7)
!2846 = !DILocation(line: 212, column: 7, scope: !2834)
!2847 = !DILocation(line: 233, column: 17, scope: !2834)
!2848 = !DILocalVariable(name: "s1", arg: 1, scope: !2849, file: !2850, line: 160, type: !20)
!2849 = distinct !DISubprogram(name: "strcaseeq0", scope: !2850, file: !2850, line: 160, type: !2851, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2853)
!2850 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!22, !20, !20, !19, !19, !19, !19, !19, !19, !19, !19, !19}
!2853 = !{!2848, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863}
!2854 = !DILocalVariable(name: "s2", arg: 2, scope: !2849, file: !2850, line: 160, type: !20)
!2855 = !DILocalVariable(name: "s20", arg: 3, scope: !2849, file: !2850, line: 160, type: !19)
!2856 = !DILocalVariable(name: "s21", arg: 4, scope: !2849, file: !2850, line: 160, type: !19)
!2857 = !DILocalVariable(name: "s22", arg: 5, scope: !2849, file: !2850, line: 160, type: !19)
!2858 = !DILocalVariable(name: "s23", arg: 6, scope: !2849, file: !2850, line: 160, type: !19)
!2859 = !DILocalVariable(name: "s24", arg: 7, scope: !2849, file: !2850, line: 160, type: !19)
!2860 = !DILocalVariable(name: "s25", arg: 8, scope: !2849, file: !2850, line: 160, type: !19)
!2861 = !DILocalVariable(name: "s26", arg: 9, scope: !2849, file: !2850, line: 160, type: !19)
!2862 = !DILocalVariable(name: "s27", arg: 10, scope: !2849, file: !2850, line: 160, type: !19)
!2863 = !DILocalVariable(name: "s28", arg: 11, scope: !2849, file: !2850, line: 160, type: !19)
!2864 = !DILocation(line: 0, scope: !2849, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 234, column: 7, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2834, file: !496, line: 234, column: 7)
!2867 = !DILocation(line: 162, column: 7, scope: !2868, inlinedAt: !2865)
!2868 = distinct !DILexicalBlock(scope: !2849, file: !2850, line: 162, column: 7)
!2869 = !DILocalVariable(name: "s1", arg: 1, scope: !2870, file: !2850, line: 146, type: !20)
!2870 = distinct !DISubprogram(name: "strcaseeq1", scope: !2850, file: !2850, line: 146, type: !2871, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!22, !20, !20, !19, !19, !19, !19, !19, !19, !19, !19}
!2873 = !{!2869, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882}
!2874 = !DILocalVariable(name: "s2", arg: 2, scope: !2870, file: !2850, line: 146, type: !20)
!2875 = !DILocalVariable(name: "s21", arg: 3, scope: !2870, file: !2850, line: 146, type: !19)
!2876 = !DILocalVariable(name: "s22", arg: 4, scope: !2870, file: !2850, line: 146, type: !19)
!2877 = !DILocalVariable(name: "s23", arg: 5, scope: !2870, file: !2850, line: 146, type: !19)
!2878 = !DILocalVariable(name: "s24", arg: 6, scope: !2870, file: !2850, line: 146, type: !19)
!2879 = !DILocalVariable(name: "s25", arg: 7, scope: !2870, file: !2850, line: 146, type: !19)
!2880 = !DILocalVariable(name: "s26", arg: 8, scope: !2870, file: !2850, line: 146, type: !19)
!2881 = !DILocalVariable(name: "s27", arg: 9, scope: !2870, file: !2850, line: 146, type: !19)
!2882 = !DILocalVariable(name: "s28", arg: 10, scope: !2870, file: !2850, line: 146, type: !19)
!2883 = !DILocation(line: 0, scope: !2870, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 167, column: 16, scope: !2885, inlinedAt: !2865)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !2850, line: 164, column: 11)
!2886 = distinct !DILexicalBlock(scope: !2868, file: !2850, line: 163, column: 5)
!2887 = !DILocation(line: 148, column: 7, scope: !2888, inlinedAt: !2884)
!2888 = distinct !DILexicalBlock(scope: !2870, file: !2850, line: 148, column: 7)
!2889 = !DILocalVariable(name: "s1", arg: 1, scope: !2890, file: !2850, line: 132, type: !20)
!2890 = distinct !DISubprogram(name: "strcaseeq2", scope: !2850, file: !2850, line: 132, type: !2891, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!22, !20, !20, !19, !19, !19, !19, !19, !19, !19}
!2893 = !{!2889, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901}
!2894 = !DILocalVariable(name: "s2", arg: 2, scope: !2890, file: !2850, line: 132, type: !20)
!2895 = !DILocalVariable(name: "s22", arg: 3, scope: !2890, file: !2850, line: 132, type: !19)
!2896 = !DILocalVariable(name: "s23", arg: 4, scope: !2890, file: !2850, line: 132, type: !19)
!2897 = !DILocalVariable(name: "s24", arg: 5, scope: !2890, file: !2850, line: 132, type: !19)
!2898 = !DILocalVariable(name: "s25", arg: 6, scope: !2890, file: !2850, line: 132, type: !19)
!2899 = !DILocalVariable(name: "s26", arg: 7, scope: !2890, file: !2850, line: 132, type: !19)
!2900 = !DILocalVariable(name: "s27", arg: 8, scope: !2890, file: !2850, line: 132, type: !19)
!2901 = !DILocalVariable(name: "s28", arg: 9, scope: !2890, file: !2850, line: 132, type: !19)
!2902 = !DILocation(line: 0, scope: !2890, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 153, column: 16, scope: !2904, inlinedAt: !2884)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !2850, line: 150, column: 11)
!2905 = distinct !DILexicalBlock(scope: !2888, file: !2850, line: 149, column: 5)
!2906 = !DILocation(line: 134, column: 7, scope: !2907, inlinedAt: !2903)
!2907 = distinct !DILexicalBlock(scope: !2890, file: !2850, line: 134, column: 7)
!2908 = !DILocalVariable(name: "s1", arg: 1, scope: !2909, file: !2850, line: 118, type: !20)
!2909 = distinct !DISubprogram(name: "strcaseeq3", scope: !2850, file: !2850, line: 118, type: !2910, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!22, !20, !20, !19, !19, !19, !19, !19, !19}
!2912 = !{!2908, !2913, !2914, !2915, !2916, !2917, !2918, !2919}
!2913 = !DILocalVariable(name: "s2", arg: 2, scope: !2909, file: !2850, line: 118, type: !20)
!2914 = !DILocalVariable(name: "s23", arg: 3, scope: !2909, file: !2850, line: 118, type: !19)
!2915 = !DILocalVariable(name: "s24", arg: 4, scope: !2909, file: !2850, line: 118, type: !19)
!2916 = !DILocalVariable(name: "s25", arg: 5, scope: !2909, file: !2850, line: 118, type: !19)
!2917 = !DILocalVariable(name: "s26", arg: 6, scope: !2909, file: !2850, line: 118, type: !19)
!2918 = !DILocalVariable(name: "s27", arg: 7, scope: !2909, file: !2850, line: 118, type: !19)
!2919 = !DILocalVariable(name: "s28", arg: 8, scope: !2909, file: !2850, line: 118, type: !19)
!2920 = !DILocation(line: 0, scope: !2909, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 139, column: 16, scope: !2922, inlinedAt: !2903)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !2850, line: 136, column: 11)
!2923 = distinct !DILexicalBlock(scope: !2907, file: !2850, line: 135, column: 5)
!2924 = !DILocation(line: 120, column: 7, scope: !2925, inlinedAt: !2921)
!2925 = distinct !DILexicalBlock(scope: !2909, file: !2850, line: 120, column: 7)
!2926 = !DILocation(line: 120, column: 7, scope: !2909, inlinedAt: !2921)
!2927 = !DILocalVariable(name: "s1", arg: 1, scope: !2928, file: !2850, line: 104, type: !20)
!2928 = distinct !DISubprogram(name: "strcaseeq4", scope: !2850, file: !2850, line: 104, type: !2929, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!22, !20, !20, !19, !19, !19, !19, !19}
!2931 = !{!2927, !2932, !2933, !2934, !2935, !2936, !2937}
!2932 = !DILocalVariable(name: "s2", arg: 2, scope: !2928, file: !2850, line: 104, type: !20)
!2933 = !DILocalVariable(name: "s24", arg: 3, scope: !2928, file: !2850, line: 104, type: !19)
!2934 = !DILocalVariable(name: "s25", arg: 4, scope: !2928, file: !2850, line: 104, type: !19)
!2935 = !DILocalVariable(name: "s26", arg: 5, scope: !2928, file: !2850, line: 104, type: !19)
!2936 = !DILocalVariable(name: "s27", arg: 6, scope: !2928, file: !2850, line: 104, type: !19)
!2937 = !DILocalVariable(name: "s28", arg: 7, scope: !2928, file: !2850, line: 104, type: !19)
!2938 = !DILocation(line: 0, scope: !2928, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 125, column: 16, scope: !2940, inlinedAt: !2921)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !2850, line: 122, column: 11)
!2941 = distinct !DILexicalBlock(scope: !2925, file: !2850, line: 121, column: 5)
!2942 = !DILocation(line: 106, column: 7, scope: !2943, inlinedAt: !2939)
!2943 = distinct !DILexicalBlock(scope: !2928, file: !2850, line: 106, column: 7)
!2944 = !DILocation(line: 106, column: 7, scope: !2928, inlinedAt: !2939)
!2945 = !DILocalVariable(name: "s1", arg: 1, scope: !2946, file: !2850, line: 90, type: !20)
!2946 = distinct !DISubprogram(name: "strcaseeq5", scope: !2850, file: !2850, line: 90, type: !2947, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!22, !20, !20, !19, !19, !19, !19}
!2949 = !{!2945, !2950, !2951, !2952, !2953, !2954}
!2950 = !DILocalVariable(name: "s2", arg: 2, scope: !2946, file: !2850, line: 90, type: !20)
!2951 = !DILocalVariable(name: "s25", arg: 3, scope: !2946, file: !2850, line: 90, type: !19)
!2952 = !DILocalVariable(name: "s26", arg: 4, scope: !2946, file: !2850, line: 90, type: !19)
!2953 = !DILocalVariable(name: "s27", arg: 5, scope: !2946, file: !2850, line: 90, type: !19)
!2954 = !DILocalVariable(name: "s28", arg: 6, scope: !2946, file: !2850, line: 90, type: !19)
!2955 = !DILocation(line: 0, scope: !2946, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 111, column: 16, scope: !2957, inlinedAt: !2939)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !2850, line: 108, column: 11)
!2958 = distinct !DILexicalBlock(scope: !2943, file: !2850, line: 107, column: 5)
!2959 = !DILocation(line: 92, column: 7, scope: !2960, inlinedAt: !2956)
!2960 = distinct !DILexicalBlock(scope: !2946, file: !2850, line: 92, column: 7)
!2961 = !DILocation(line: 92, column: 7, scope: !2946, inlinedAt: !2956)
!2962 = !DILocation(line: 235, column: 12, scope: !2866)
!2963 = !DILocation(line: 235, column: 21, scope: !2866)
!2964 = !DILocation(line: 235, column: 5, scope: !2866)
!2965 = !DILocation(line: 0, scope: !2870, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 167, column: 16, scope: !2885, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 236, column: 7, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2834, file: !496, line: 236, column: 7)
!2969 = !DILocation(line: 148, column: 7, scope: !2888, inlinedAt: !2966)
!2970 = !DILocation(line: 0, scope: !2890, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 153, column: 16, scope: !2904, inlinedAt: !2966)
!2972 = !DILocation(line: 134, column: 7, scope: !2907, inlinedAt: !2971)
!2973 = !DILocation(line: 134, column: 7, scope: !2890, inlinedAt: !2971)
!2974 = !DILocation(line: 0, scope: !2909, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 139, column: 16, scope: !2922, inlinedAt: !2971)
!2976 = !DILocation(line: 120, column: 7, scope: !2925, inlinedAt: !2975)
!2977 = !DILocation(line: 120, column: 7, scope: !2909, inlinedAt: !2975)
!2978 = !DILocation(line: 0, scope: !2928, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 125, column: 16, scope: !2940, inlinedAt: !2975)
!2980 = !DILocation(line: 106, column: 7, scope: !2943, inlinedAt: !2979)
!2981 = !DILocation(line: 106, column: 7, scope: !2928, inlinedAt: !2979)
!2982 = !DILocation(line: 0, scope: !2946, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 111, column: 16, scope: !2957, inlinedAt: !2979)
!2984 = !DILocation(line: 92, column: 7, scope: !2960, inlinedAt: !2983)
!2985 = !DILocation(line: 92, column: 7, scope: !2946, inlinedAt: !2983)
!2986 = !DILocalVariable(name: "s1", arg: 1, scope: !2987, file: !2850, line: 76, type: !20)
!2987 = distinct !DISubprogram(name: "strcaseeq6", scope: !2850, file: !2850, line: 76, type: !2988, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !2990)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!22, !20, !20, !19, !19, !19}
!2990 = !{!2986, !2991, !2992, !2993, !2994}
!2991 = !DILocalVariable(name: "s2", arg: 2, scope: !2987, file: !2850, line: 76, type: !20)
!2992 = !DILocalVariable(name: "s26", arg: 3, scope: !2987, file: !2850, line: 76, type: !19)
!2993 = !DILocalVariable(name: "s27", arg: 4, scope: !2987, file: !2850, line: 76, type: !19)
!2994 = !DILocalVariable(name: "s28", arg: 5, scope: !2987, file: !2850, line: 76, type: !19)
!2995 = !DILocation(line: 0, scope: !2987, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 97, column: 16, scope: !2997, inlinedAt: !2983)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !2850, line: 94, column: 11)
!2998 = distinct !DILexicalBlock(scope: !2960, file: !2850, line: 93, column: 5)
!2999 = !DILocation(line: 78, column: 7, scope: !3000, inlinedAt: !2996)
!3000 = distinct !DILexicalBlock(scope: !2987, file: !2850, line: 78, column: 7)
!3001 = !DILocation(line: 78, column: 7, scope: !2987, inlinedAt: !2996)
!3002 = !DILocalVariable(name: "s1", arg: 1, scope: !3003, file: !2850, line: 62, type: !20)
!3003 = distinct !DISubprogram(name: "strcaseeq7", scope: !2850, file: !2850, line: 62, type: !3004, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!22, !20, !20, !19, !19}
!3006 = !{!3002, !3007, !3008, !3009}
!3007 = !DILocalVariable(name: "s2", arg: 2, scope: !3003, file: !2850, line: 62, type: !20)
!3008 = !DILocalVariable(name: "s27", arg: 3, scope: !3003, file: !2850, line: 62, type: !19)
!3009 = !DILocalVariable(name: "s28", arg: 4, scope: !3003, file: !2850, line: 62, type: !19)
!3010 = !DILocation(line: 0, scope: !3003, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 83, column: 16, scope: !3012, inlinedAt: !2996)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !2850, line: 80, column: 11)
!3013 = distinct !DILexicalBlock(scope: !3000, file: !2850, line: 79, column: 5)
!3014 = !DILocation(line: 64, column: 7, scope: !3015, inlinedAt: !3011)
!3015 = distinct !DILexicalBlock(scope: !3003, file: !2850, line: 64, column: 7)
!3016 = !DILocation(line: 236, column: 7, scope: !2834)
!3017 = !DILocation(line: 237, column: 12, scope: !2968)
!3018 = !DILocation(line: 237, column: 21, scope: !2968)
!3019 = !DILocation(line: 237, column: 5, scope: !2968)
!3020 = !DILocation(line: 239, column: 13, scope: !2834)
!3021 = !DILocation(line: 239, column: 11, scope: !2834)
!3022 = !DILocation(line: 239, column: 3, scope: !2834)
!3023 = !DILocation(line: 240, column: 1, scope: !2834)
!3024 = distinct !DISubprogram(name: "quotearg_alloc", scope: !496, file: !496, line: 799, type: !3025, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!18, !20, !77, !542}
!3027 = !{!3028, !3029, !3030}
!3028 = !DILocalVariable(name: "arg", arg: 1, scope: !3024, file: !496, line: 799, type: !20)
!3029 = !DILocalVariable(name: "argsize", arg: 2, scope: !3024, file: !496, line: 799, type: !77)
!3030 = !DILocalVariable(name: "o", arg: 3, scope: !3024, file: !496, line: 800, type: !542)
!3031 = !DILocation(line: 0, scope: !3024)
!3032 = !DILocalVariable(name: "arg", arg: 1, scope: !3033, file: !496, line: 812, type: !20)
!3033 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !496, file: !496, line: 812, type: !3034, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!18, !20, !77, !758, !542}
!3036 = !{!3032, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044}
!3037 = !DILocalVariable(name: "argsize", arg: 2, scope: !3033, file: !496, line: 812, type: !77)
!3038 = !DILocalVariable(name: "size", arg: 3, scope: !3033, file: !496, line: 812, type: !758)
!3039 = !DILocalVariable(name: "o", arg: 4, scope: !3033, file: !496, line: 813, type: !542)
!3040 = !DILocalVariable(name: "p", scope: !3033, file: !496, line: 815, type: !542)
!3041 = !DILocalVariable(name: "e", scope: !3033, file: !496, line: 816, type: !22)
!3042 = !DILocalVariable(name: "flags", scope: !3033, file: !496, line: 818, type: !22)
!3043 = !DILocalVariable(name: "bufsize", scope: !3033, file: !496, line: 819, type: !77)
!3044 = !DILocalVariable(name: "buf", scope: !3033, file: !496, line: 823, type: !18)
!3045 = !DILocation(line: 0, scope: !3033, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 802, column: 10, scope: !3024)
!3047 = !DILocation(line: 815, column: 37, scope: !3033, inlinedAt: !3046)
!3048 = !DILocation(line: 816, column: 11, scope: !3033, inlinedAt: !3046)
!3049 = !DILocation(line: 818, column: 18, scope: !3033, inlinedAt: !3046)
!3050 = !DILocation(line: 818, column: 24, scope: !3033, inlinedAt: !3046)
!3051 = !DILocation(line: 819, column: 69, scope: !3033, inlinedAt: !3046)
!3052 = !DILocation(line: 820, column: 53, scope: !3033, inlinedAt: !3046)
!3053 = !DILocation(line: 821, column: 49, scope: !3033, inlinedAt: !3046)
!3054 = !DILocation(line: 822, column: 49, scope: !3033, inlinedAt: !3046)
!3055 = !DILocation(line: 819, column: 20, scope: !3033, inlinedAt: !3046)
!3056 = !DILocation(line: 822, column: 62, scope: !3033, inlinedAt: !3046)
!3057 = !DILocalVariable(name: "n", arg: 1, scope: !3058, file: !533, line: 216, type: !77)
!3058 = distinct !DISubprogram(name: "xcharalloc", scope: !533, file: !533, line: 216, type: !3059, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!18, !77}
!3061 = !{!3057}
!3062 = !DILocation(line: 0, scope: !3058, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 823, column: 15, scope: !3033, inlinedAt: !3046)
!3064 = !DILocation(line: 218, column: 10, scope: !3058, inlinedAt: !3063)
!3065 = !DILocation(line: 824, column: 60, scope: !3033, inlinedAt: !3046)
!3066 = !DILocation(line: 826, column: 32, scope: !3033, inlinedAt: !3046)
!3067 = !DILocation(line: 826, column: 47, scope: !3033, inlinedAt: !3046)
!3068 = !DILocation(line: 824, column: 3, scope: !3033, inlinedAt: !3046)
!3069 = !DILocation(line: 827, column: 9, scope: !3033, inlinedAt: !3046)
!3070 = !DILocation(line: 802, column: 3, scope: !3024)
!3071 = !DILocation(line: 0, scope: !3033)
!3072 = !DILocation(line: 815, column: 37, scope: !3033)
!3073 = !DILocation(line: 816, column: 11, scope: !3033)
!3074 = !DILocation(line: 818, column: 18, scope: !3033)
!3075 = !DILocation(line: 818, column: 27, scope: !3033)
!3076 = !DILocation(line: 818, column: 24, scope: !3033)
!3077 = !DILocation(line: 819, column: 69, scope: !3033)
!3078 = !DILocation(line: 820, column: 53, scope: !3033)
!3079 = !DILocation(line: 821, column: 49, scope: !3033)
!3080 = !DILocation(line: 822, column: 49, scope: !3033)
!3081 = !DILocation(line: 819, column: 20, scope: !3033)
!3082 = !DILocation(line: 822, column: 62, scope: !3033)
!3083 = !DILocation(line: 0, scope: !3058, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 823, column: 15, scope: !3033)
!3085 = !DILocation(line: 218, column: 10, scope: !3058, inlinedAt: !3084)
!3086 = !DILocation(line: 824, column: 60, scope: !3033)
!3087 = !DILocation(line: 826, column: 32, scope: !3033)
!3088 = !DILocation(line: 826, column: 47, scope: !3033)
!3089 = !DILocation(line: 824, column: 3, scope: !3033)
!3090 = !DILocation(line: 827, column: 9, scope: !3033)
!3091 = !DILocation(line: 828, column: 7, scope: !3033)
!3092 = !DILocation(line: 829, column: 11, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3033, file: !496, line: 828, column: 7)
!3094 = !DILocation(line: 829, column: 5, scope: !3093)
!3095 = !DILocation(line: 830, column: 3, scope: !3033)
!3096 = distinct !DISubprogram(name: "quotearg_free", scope: !496, file: !496, line: 848, type: !104, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3097)
!3097 = !{!3098, !3099}
!3098 = !DILocalVariable(name: "sv", scope: !3096, file: !496, line: 850, type: !618)
!3099 = !DILocalVariable(name: "i", scope: !3096, file: !496, line: 851, type: !22)
!3100 = !DILocation(line: 850, column: 24, scope: !3096)
!3101 = !DILocation(line: 0, scope: !3096)
!3102 = !DILocation(line: 852, column: 19, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !496, line: 852, column: 3)
!3104 = distinct !DILexicalBlock(scope: !3096, file: !496, line: 852, column: 3)
!3105 = !DILocation(line: 852, column: 17, scope: !3103)
!3106 = !DILocation(line: 852, column: 3, scope: !3104)
!3107 = !DILocation(line: 853, column: 17, scope: !3103)
!3108 = !{!3109, !1401, i64 8}
!3109 = !{!"slotvec", !1880, i64 0, !1401, i64 8}
!3110 = !DILocation(line: 853, column: 5, scope: !3103)
!3111 = !DILocation(line: 852, column: 28, scope: !3103)
!3112 = distinct !{!3112, !3106, !3113}
!3113 = !DILocation(line: 853, column: 20, scope: !3104)
!3114 = !DILocation(line: 854, column: 13, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3096, file: !496, line: 854, column: 7)
!3116 = !DILocation(line: 854, column: 17, scope: !3115)
!3117 = !DILocation(line: 854, column: 7, scope: !3096)
!3118 = !DILocation(line: 856, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3115, file: !496, line: 855, column: 5)
!3120 = !DILocation(line: 857, column: 21, scope: !3119)
!3121 = !{!3109, !1880, i64 0}
!3122 = !DILocation(line: 858, column: 20, scope: !3119)
!3123 = !DILocation(line: 859, column: 5, scope: !3119)
!3124 = !DILocation(line: 860, column: 10, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3096, file: !496, line: 860, column: 7)
!3126 = !DILocation(line: 860, column: 7, scope: !3096)
!3127 = !DILocation(line: 862, column: 13, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3125, file: !496, line: 861, column: 5)
!3129 = !DILocation(line: 862, column: 7, scope: !3128)
!3130 = !DILocation(line: 863, column: 15, scope: !3128)
!3131 = !DILocation(line: 864, column: 5, scope: !3128)
!3132 = !DILocation(line: 865, column: 10, scope: !3096)
!3133 = !DILocation(line: 866, column: 1, scope: !3096)
!3134 = distinct !DISubprogram(name: "quotearg_n", scope: !496, file: !496, line: 931, type: !91, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3135)
!3135 = !{!3136, !3137}
!3136 = !DILocalVariable(name: "n", arg: 1, scope: !3134, file: !496, line: 931, type: !22)
!3137 = !DILocalVariable(name: "arg", arg: 2, scope: !3134, file: !496, line: 931, type: !20)
!3138 = !DILocation(line: 0, scope: !3134)
!3139 = !DILocation(line: 933, column: 10, scope: !3134)
!3140 = !DILocation(line: 933, column: 3, scope: !3134)
!3141 = distinct !DISubprogram(name: "quotearg_n_options", scope: !496, file: !496, line: 877, type: !3142, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!18, !22, !20, !77, !542}
!3144 = !{!3145, !3146, !3147, !3148, !3149, !3150, !3151, !3154, !3155, !3157, !3158, !3159}
!3145 = !DILocalVariable(name: "n", arg: 1, scope: !3141, file: !496, line: 877, type: !22)
!3146 = !DILocalVariable(name: "arg", arg: 2, scope: !3141, file: !496, line: 877, type: !20)
!3147 = !DILocalVariable(name: "argsize", arg: 3, scope: !3141, file: !496, line: 877, type: !77)
!3148 = !DILocalVariable(name: "options", arg: 4, scope: !3141, file: !496, line: 878, type: !542)
!3149 = !DILocalVariable(name: "e", scope: !3141, file: !496, line: 880, type: !22)
!3150 = !DILocalVariable(name: "sv", scope: !3141, file: !496, line: 882, type: !618)
!3151 = !DILocalVariable(name: "preallocated", scope: !3152, file: !496, line: 889, type: !178)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !496, line: 888, column: 5)
!3153 = distinct !DILexicalBlock(scope: !3141, file: !496, line: 887, column: 7)
!3154 = !DILocalVariable(name: "nmax", scope: !3152, file: !496, line: 890, type: !22)
!3155 = !DILocalVariable(name: "size", scope: !3156, file: !496, line: 903, type: !77)
!3156 = distinct !DILexicalBlock(scope: !3141, file: !496, line: 902, column: 3)
!3157 = !DILocalVariable(name: "val", scope: !3156, file: !496, line: 904, type: !18)
!3158 = !DILocalVariable(name: "flags", scope: !3156, file: !496, line: 906, type: !22)
!3159 = !DILocalVariable(name: "qsize", scope: !3156, file: !496, line: 907, type: !77)
!3160 = !DILocation(line: 0, scope: !3141)
!3161 = !DILocation(line: 880, column: 11, scope: !3141)
!3162 = !DILocation(line: 882, column: 24, scope: !3141)
!3163 = !DILocation(line: 884, column: 9, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3141, file: !496, line: 884, column: 7)
!3165 = !DILocation(line: 884, column: 7, scope: !3141)
!3166 = !DILocation(line: 885, column: 5, scope: !3164)
!3167 = !DILocation(line: 887, column: 7, scope: !3153)
!3168 = !DILocation(line: 887, column: 14, scope: !3153)
!3169 = !DILocation(line: 887, column: 7, scope: !3141)
!3170 = !DILocation(line: 889, column: 31, scope: !3152)
!3171 = !DILocation(line: 0, scope: !3152)
!3172 = !DILocation(line: 892, column: 16, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3152, file: !496, line: 892, column: 11)
!3174 = !DILocation(line: 892, column: 11, scope: !3152)
!3175 = !DILocation(line: 893, column: 9, scope: !3173)
!3176 = !DILocation(line: 895, column: 32, scope: !3152)
!3177 = !DILocation(line: 895, column: 61, scope: !3152)
!3178 = !DILocation(line: 895, column: 58, scope: !3152)
!3179 = !DILocation(line: 895, column: 66, scope: !3152)
!3180 = !DILocation(line: 895, column: 22, scope: !3152)
!3181 = !DILocation(line: 895, column: 15, scope: !3152)
!3182 = !DILocation(line: 896, column: 11, scope: !3152)
!3183 = !DILocation(line: 897, column: 15, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3152, file: !496, line: 896, column: 11)
!3185 = !{i64 0, i64 8, !1879, i64 8, i64 8, !1400}
!3186 = !DILocation(line: 897, column: 9, scope: !3184)
!3187 = !DILocation(line: 898, column: 20, scope: !3152)
!3188 = !DILocation(line: 898, column: 18, scope: !3152)
!3189 = !DILocation(line: 898, column: 15, scope: !3152)
!3190 = !DILocation(line: 898, column: 38, scope: !3152)
!3191 = !DILocation(line: 898, column: 31, scope: !3152)
!3192 = !DILocation(line: 898, column: 48, scope: !3152)
!3193 = !DILocation(line: 0, scope: !2591, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 898, column: 7, scope: !3152)
!3195 = !DILocation(line: 71, column: 10, scope: !2591, inlinedAt: !3194)
!3196 = !DILocation(line: 899, column: 14, scope: !3152)
!3197 = !DILocation(line: 900, column: 5, scope: !3152)
!3198 = !DILocation(line: 903, column: 19, scope: !3156)
!3199 = !DILocation(line: 903, column: 25, scope: !3156)
!3200 = !DILocation(line: 0, scope: !3156)
!3201 = !DILocation(line: 904, column: 23, scope: !3156)
!3202 = !DILocation(line: 906, column: 26, scope: !3156)
!3203 = !DILocation(line: 906, column: 32, scope: !3156)
!3204 = !DILocation(line: 908, column: 55, scope: !3156)
!3205 = !DILocation(line: 909, column: 46, scope: !3156)
!3206 = !DILocation(line: 910, column: 55, scope: !3156)
!3207 = !DILocation(line: 911, column: 55, scope: !3156)
!3208 = !DILocation(line: 907, column: 20, scope: !3156)
!3209 = !DILocation(line: 913, column: 14, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3156, file: !496, line: 913, column: 9)
!3211 = !DILocation(line: 913, column: 9, scope: !3156)
!3212 = !DILocation(line: 915, column: 35, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3210, file: !496, line: 914, column: 7)
!3214 = !DILocation(line: 915, column: 20, scope: !3213)
!3215 = !DILocation(line: 916, column: 17, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !496, line: 916, column: 13)
!3217 = !DILocation(line: 916, column: 13, scope: !3213)
!3218 = !DILocation(line: 917, column: 11, scope: !3216)
!3219 = !DILocation(line: 0, scope: !3058, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 918, column: 27, scope: !3213)
!3221 = !DILocation(line: 218, column: 10, scope: !3058, inlinedAt: !3220)
!3222 = !DILocation(line: 918, column: 19, scope: !3213)
!3223 = !DILocation(line: 919, column: 69, scope: !3213)
!3224 = !DILocation(line: 921, column: 44, scope: !3213)
!3225 = !DILocation(line: 922, column: 44, scope: !3213)
!3226 = !DILocation(line: 919, column: 9, scope: !3213)
!3227 = !DILocation(line: 923, column: 7, scope: !3213)
!3228 = !DILocation(line: 925, column: 11, scope: !3156)
!3229 = !DILocation(line: 926, column: 5, scope: !3156)
!3230 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !496, file: !496, line: 937, type: !3231, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!18, !22, !20, !77}
!3233 = !{!3234, !3235, !3236}
!3234 = !DILocalVariable(name: "n", arg: 1, scope: !3230, file: !496, line: 937, type: !22)
!3235 = !DILocalVariable(name: "arg", arg: 2, scope: !3230, file: !496, line: 937, type: !20)
!3236 = !DILocalVariable(name: "argsize", arg: 3, scope: !3230, file: !496, line: 937, type: !77)
!3237 = !DILocation(line: 0, scope: !3230)
!3238 = !DILocation(line: 939, column: 10, scope: !3230)
!3239 = !DILocation(line: 939, column: 3, scope: !3230)
!3240 = distinct !DISubprogram(name: "quotearg", scope: !496, file: !496, line: 943, type: !97, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3241)
!3241 = !{!3242}
!3242 = !DILocalVariable(name: "arg", arg: 1, scope: !3240, file: !496, line: 943, type: !20)
!3243 = !DILocation(line: 0, scope: !3240)
!3244 = !DILocation(line: 0, scope: !3134, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 945, column: 10, scope: !3240)
!3246 = !DILocation(line: 933, column: 10, scope: !3134, inlinedAt: !3245)
!3247 = !DILocation(line: 945, column: 3, scope: !3240)
!3248 = distinct !DISubprogram(name: "quotearg_mem", scope: !496, file: !496, line: 949, type: !3249, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!18, !20, !77}
!3251 = !{!3252, !3253}
!3252 = !DILocalVariable(name: "arg", arg: 1, scope: !3248, file: !496, line: 949, type: !20)
!3253 = !DILocalVariable(name: "argsize", arg: 2, scope: !3248, file: !496, line: 949, type: !77)
!3254 = !DILocation(line: 0, scope: !3248)
!3255 = !DILocation(line: 0, scope: !3230, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 951, column: 10, scope: !3248)
!3257 = !DILocation(line: 939, column: 10, scope: !3230, inlinedAt: !3256)
!3258 = !DILocation(line: 951, column: 3, scope: !3248)
!3259 = distinct !DISubprogram(name: "quotearg_n_style", scope: !496, file: !496, line: 955, type: !3260, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!18, !22, !498, !20}
!3262 = !{!3263, !3264, !3265, !3266}
!3263 = !DILocalVariable(name: "n", arg: 1, scope: !3259, file: !496, line: 955, type: !22)
!3264 = !DILocalVariable(name: "s", arg: 2, scope: !3259, file: !496, line: 955, type: !498)
!3265 = !DILocalVariable(name: "arg", arg: 3, scope: !3259, file: !496, line: 955, type: !20)
!3266 = !DILocalVariable(name: "o", scope: !3259, file: !496, line: 957, type: !543)
!3267 = !DILocation(line: 0, scope: !3259)
!3268 = !DILocation(line: 957, column: 3, scope: !3259)
!3269 = !DILocation(line: 957, column: 32, scope: !3259)
!3270 = !DILocalVariable(name: "style", arg: 1, scope: !3271, file: !496, line: 193, type: !498)
!3271 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !496, file: !496, line: 193, type: !3272, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!544, !498}
!3274 = !{!3270, !3275}
!3275 = !DILocalVariable(name: "o", scope: !3271, file: !496, line: 195, type: !544)
!3276 = !DILocation(line: 0, scope: !3271, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 957, column: 36, scope: !3259)
!3278 = !DILocation(line: 195, column: 26, scope: !3271, inlinedAt: !3277)
!3279 = !{!3280}
!3280 = distinct !{!3280, !3281, !"quoting_options_from_style: argument 0"}
!3281 = distinct !{!3281, !"quoting_options_from_style"}
!3282 = !DILocation(line: 196, column: 13, scope: !3283, inlinedAt: !3277)
!3283 = distinct !DILexicalBlock(scope: !3271, file: !496, line: 196, column: 7)
!3284 = !DILocation(line: 196, column: 7, scope: !3271, inlinedAt: !3277)
!3285 = !DILocation(line: 197, column: 5, scope: !3283, inlinedAt: !3277)
!3286 = !DILocation(line: 198, column: 5, scope: !3271, inlinedAt: !3277)
!3287 = !DILocation(line: 198, column: 11, scope: !3271, inlinedAt: !3277)
!3288 = !DILocation(line: 958, column: 10, scope: !3259)
!3289 = !DILocation(line: 959, column: 1, scope: !3259)
!3290 = !DILocation(line: 958, column: 3, scope: !3259)
!3291 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !496, file: !496, line: 962, type: !3292, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!18, !22, !498, !20, !77}
!3294 = !{!3295, !3296, !3297, !3298, !3299}
!3295 = !DILocalVariable(name: "n", arg: 1, scope: !3291, file: !496, line: 962, type: !22)
!3296 = !DILocalVariable(name: "s", arg: 2, scope: !3291, file: !496, line: 962, type: !498)
!3297 = !DILocalVariable(name: "arg", arg: 3, scope: !3291, file: !496, line: 963, type: !20)
!3298 = !DILocalVariable(name: "argsize", arg: 4, scope: !3291, file: !496, line: 963, type: !77)
!3299 = !DILocalVariable(name: "o", scope: !3291, file: !496, line: 965, type: !543)
!3300 = !DILocation(line: 0, scope: !3291)
!3301 = !DILocation(line: 965, column: 3, scope: !3291)
!3302 = !DILocation(line: 965, column: 32, scope: !3291)
!3303 = !DILocation(line: 0, scope: !3271, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 965, column: 36, scope: !3291)
!3305 = !DILocation(line: 195, column: 26, scope: !3271, inlinedAt: !3304)
!3306 = !{!3307}
!3307 = distinct !{!3307, !3308, !"quoting_options_from_style: argument 0"}
!3308 = distinct !{!3308, !"quoting_options_from_style"}
!3309 = !DILocation(line: 196, column: 13, scope: !3283, inlinedAt: !3304)
!3310 = !DILocation(line: 196, column: 7, scope: !3271, inlinedAt: !3304)
!3311 = !DILocation(line: 197, column: 5, scope: !3283, inlinedAt: !3304)
!3312 = !DILocation(line: 198, column: 5, scope: !3271, inlinedAt: !3304)
!3313 = !DILocation(line: 198, column: 11, scope: !3271, inlinedAt: !3304)
!3314 = !DILocation(line: 966, column: 10, scope: !3291)
!3315 = !DILocation(line: 967, column: 1, scope: !3291)
!3316 = !DILocation(line: 966, column: 3, scope: !3291)
!3317 = distinct !DISubprogram(name: "quotearg_style", scope: !496, file: !496, line: 970, type: !3318, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!18, !498, !20}
!3320 = !{!3321, !3322}
!3321 = !DILocalVariable(name: "s", arg: 1, scope: !3317, file: !496, line: 970, type: !498)
!3322 = !DILocalVariable(name: "arg", arg: 2, scope: !3317, file: !496, line: 970, type: !20)
!3323 = !DILocation(line: 195, column: 26, scope: !3271, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 957, column: 36, scope: !3259, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 972, column: 10, scope: !3317)
!3326 = !DILocation(line: 957, column: 32, scope: !3259, inlinedAt: !3325)
!3327 = !DILocation(line: 0, scope: !3317)
!3328 = !DILocation(line: 0, scope: !3259, inlinedAt: !3325)
!3329 = !DILocation(line: 957, column: 3, scope: !3259, inlinedAt: !3325)
!3330 = !DILocation(line: 0, scope: !3271, inlinedAt: !3324)
!3331 = !{!3332}
!3332 = distinct !{!3332, !3333, !"quoting_options_from_style: argument 0"}
!3333 = distinct !{!3333, !"quoting_options_from_style"}
!3334 = !DILocation(line: 196, column: 13, scope: !3283, inlinedAt: !3324)
!3335 = !DILocation(line: 196, column: 7, scope: !3271, inlinedAt: !3324)
!3336 = !DILocation(line: 197, column: 5, scope: !3283, inlinedAt: !3324)
!3337 = !DILocation(line: 198, column: 5, scope: !3271, inlinedAt: !3324)
!3338 = !DILocation(line: 198, column: 11, scope: !3271, inlinedAt: !3324)
!3339 = !DILocation(line: 958, column: 10, scope: !3259, inlinedAt: !3325)
!3340 = !DILocation(line: 959, column: 1, scope: !3259, inlinedAt: !3325)
!3341 = !DILocation(line: 972, column: 3, scope: !3317)
!3342 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !496, file: !496, line: 976, type: !3343, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!18, !498, !20, !77}
!3345 = !{!3346, !3347, !3348}
!3346 = !DILocalVariable(name: "s", arg: 1, scope: !3342, file: !496, line: 976, type: !498)
!3347 = !DILocalVariable(name: "arg", arg: 2, scope: !3342, file: !496, line: 976, type: !20)
!3348 = !DILocalVariable(name: "argsize", arg: 3, scope: !3342, file: !496, line: 976, type: !77)
!3349 = !DILocation(line: 195, column: 26, scope: !3271, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 965, column: 36, scope: !3291, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 978, column: 10, scope: !3342)
!3352 = !DILocation(line: 965, column: 32, scope: !3291, inlinedAt: !3351)
!3353 = !DILocation(line: 0, scope: !3342)
!3354 = !DILocation(line: 0, scope: !3291, inlinedAt: !3351)
!3355 = !DILocation(line: 965, column: 3, scope: !3291, inlinedAt: !3351)
!3356 = !DILocation(line: 0, scope: !3271, inlinedAt: !3350)
!3357 = !{!3358}
!3358 = distinct !{!3358, !3359, !"quoting_options_from_style: argument 0"}
!3359 = distinct !{!3359, !"quoting_options_from_style"}
!3360 = !DILocation(line: 196, column: 13, scope: !3283, inlinedAt: !3350)
!3361 = !DILocation(line: 196, column: 7, scope: !3271, inlinedAt: !3350)
!3362 = !DILocation(line: 197, column: 5, scope: !3283, inlinedAt: !3350)
!3363 = !DILocation(line: 198, column: 5, scope: !3271, inlinedAt: !3350)
!3364 = !DILocation(line: 198, column: 11, scope: !3271, inlinedAt: !3350)
!3365 = !DILocation(line: 966, column: 10, scope: !3291, inlinedAt: !3351)
!3366 = !DILocation(line: 967, column: 1, scope: !3291, inlinedAt: !3351)
!3367 = !DILocation(line: 978, column: 3, scope: !3342)
!3368 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !496, file: !496, line: 982, type: !3369, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3371)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!18, !20, !77, !19}
!3371 = !{!3372, !3373, !3374, !3375}
!3372 = !DILocalVariable(name: "arg", arg: 1, scope: !3368, file: !496, line: 982, type: !20)
!3373 = !DILocalVariable(name: "argsize", arg: 2, scope: !3368, file: !496, line: 982, type: !77)
!3374 = !DILocalVariable(name: "ch", arg: 3, scope: !3368, file: !496, line: 982, type: !19)
!3375 = !DILocalVariable(name: "options", scope: !3368, file: !496, line: 984, type: !544)
!3376 = !DILocation(line: 0, scope: !3368)
!3377 = !DILocation(line: 984, column: 3, scope: !3368)
!3378 = !DILocation(line: 984, column: 26, scope: !3368)
!3379 = !DILocation(line: 985, column: 13, scope: !3368)
!3380 = !{i64 0, i64 4, !1565, i64 4, i64 4, !1510, i64 8, i64 32, !1565, i64 40, i64 8, !1400, i64 48, i64 8, !1400}
!3381 = !DILocation(line: 0, scope: !2203, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 986, column: 3, scope: !3368)
!3383 = !DILocation(line: 156, column: 62, scope: !2203, inlinedAt: !3382)
!3384 = !DILocation(line: 156, column: 57, scope: !2203, inlinedAt: !3382)
!3385 = !DILocation(line: 157, column: 15, scope: !2203, inlinedAt: !3382)
!3386 = !DILocation(line: 158, column: 12, scope: !2203, inlinedAt: !3382)
!3387 = !DILocation(line: 158, column: 15, scope: !2203, inlinedAt: !3382)
!3388 = !DILocation(line: 158, column: 25, scope: !2203, inlinedAt: !3382)
!3389 = !DILocation(line: 159, column: 18, scope: !2203, inlinedAt: !3382)
!3390 = !DILocation(line: 159, column: 23, scope: !2203, inlinedAt: !3382)
!3391 = !DILocation(line: 159, column: 6, scope: !2203, inlinedAt: !3382)
!3392 = !DILocation(line: 987, column: 10, scope: !3368)
!3393 = !DILocation(line: 988, column: 1, scope: !3368)
!3394 = !DILocation(line: 987, column: 3, scope: !3368)
!3395 = distinct !DISubprogram(name: "quotearg_char", scope: !496, file: !496, line: 991, type: !3396, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!18, !20, !19}
!3398 = !{!3399, !3400}
!3399 = !DILocalVariable(name: "arg", arg: 1, scope: !3395, file: !496, line: 991, type: !20)
!3400 = !DILocalVariable(name: "ch", arg: 2, scope: !3395, file: !496, line: 991, type: !19)
!3401 = !DILocation(line: 984, column: 26, scope: !3368, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 993, column: 10, scope: !3395)
!3403 = !DILocation(line: 0, scope: !3395)
!3404 = !DILocation(line: 0, scope: !3368, inlinedAt: !3402)
!3405 = !DILocation(line: 984, column: 3, scope: !3368, inlinedAt: !3402)
!3406 = !DILocation(line: 985, column: 13, scope: !3368, inlinedAt: !3402)
!3407 = !DILocation(line: 0, scope: !2203, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 986, column: 3, scope: !3368, inlinedAt: !3402)
!3409 = !DILocation(line: 156, column: 62, scope: !2203, inlinedAt: !3408)
!3410 = !DILocation(line: 156, column: 57, scope: !2203, inlinedAt: !3408)
!3411 = !DILocation(line: 157, column: 15, scope: !2203, inlinedAt: !3408)
!3412 = !DILocation(line: 158, column: 12, scope: !2203, inlinedAt: !3408)
!3413 = !DILocation(line: 158, column: 15, scope: !2203, inlinedAt: !3408)
!3414 = !DILocation(line: 158, column: 25, scope: !2203, inlinedAt: !3408)
!3415 = !DILocation(line: 159, column: 18, scope: !2203, inlinedAt: !3408)
!3416 = !DILocation(line: 159, column: 23, scope: !2203, inlinedAt: !3408)
!3417 = !DILocation(line: 159, column: 6, scope: !2203, inlinedAt: !3408)
!3418 = !DILocation(line: 987, column: 10, scope: !3368, inlinedAt: !3402)
!3419 = !DILocation(line: 988, column: 1, scope: !3368, inlinedAt: !3402)
!3420 = !DILocation(line: 993, column: 3, scope: !3395)
!3421 = distinct !DISubprogram(name: "quotearg_colon", scope: !496, file: !496, line: 997, type: !97, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3422)
!3422 = !{!3423}
!3423 = !DILocalVariable(name: "arg", arg: 1, scope: !3421, file: !496, line: 997, type: !20)
!3424 = !DILocation(line: 984, column: 26, scope: !3368, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 993, column: 10, scope: !3395, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 999, column: 10, scope: !3421)
!3427 = !DILocation(line: 0, scope: !3421)
!3428 = !DILocation(line: 0, scope: !3395, inlinedAt: !3426)
!3429 = !DILocation(line: 0, scope: !3368, inlinedAt: !3425)
!3430 = !DILocation(line: 984, column: 3, scope: !3368, inlinedAt: !3425)
!3431 = !DILocation(line: 985, column: 13, scope: !3368, inlinedAt: !3425)
!3432 = !DILocation(line: 0, scope: !2203, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 986, column: 3, scope: !3368, inlinedAt: !3425)
!3434 = !DILocation(line: 156, column: 57, scope: !2203, inlinedAt: !3433)
!3435 = !DILocation(line: 158, column: 12, scope: !2203, inlinedAt: !3433)
!3436 = !DILocation(line: 159, column: 6, scope: !2203, inlinedAt: !3433)
!3437 = !DILocation(line: 987, column: 10, scope: !3368, inlinedAt: !3425)
!3438 = !DILocation(line: 988, column: 1, scope: !3368, inlinedAt: !3425)
!3439 = !DILocation(line: 999, column: 3, scope: !3421)
!3440 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !496, file: !496, line: 1003, type: !3249, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3441)
!3441 = !{!3442, !3443}
!3442 = !DILocalVariable(name: "arg", arg: 1, scope: !3440, file: !496, line: 1003, type: !20)
!3443 = !DILocalVariable(name: "argsize", arg: 2, scope: !3440, file: !496, line: 1003, type: !77)
!3444 = !DILocation(line: 984, column: 26, scope: !3368, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 1005, column: 10, scope: !3440)
!3446 = !DILocation(line: 0, scope: !3440)
!3447 = !DILocation(line: 0, scope: !3368, inlinedAt: !3445)
!3448 = !DILocation(line: 984, column: 3, scope: !3368, inlinedAt: !3445)
!3449 = !DILocation(line: 985, column: 13, scope: !3368, inlinedAt: !3445)
!3450 = !DILocation(line: 0, scope: !2203, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 986, column: 3, scope: !3368, inlinedAt: !3445)
!3452 = !DILocation(line: 156, column: 57, scope: !2203, inlinedAt: !3451)
!3453 = !DILocation(line: 158, column: 12, scope: !2203, inlinedAt: !3451)
!3454 = !DILocation(line: 159, column: 6, scope: !2203, inlinedAt: !3451)
!3455 = !DILocation(line: 987, column: 10, scope: !3368, inlinedAt: !3445)
!3456 = !DILocation(line: 988, column: 1, scope: !3368, inlinedAt: !3445)
!3457 = !DILocation(line: 1005, column: 3, scope: !3440)
!3458 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !496, file: !496, line: 1009, type: !3260, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3459)
!3459 = !{!3460, !3461, !3462, !3463}
!3460 = !DILocalVariable(name: "n", arg: 1, scope: !3458, file: !496, line: 1009, type: !22)
!3461 = !DILocalVariable(name: "s", arg: 2, scope: !3458, file: !496, line: 1009, type: !498)
!3462 = !DILocalVariable(name: "arg", arg: 3, scope: !3458, file: !496, line: 1009, type: !20)
!3463 = !DILocalVariable(name: "options", scope: !3458, file: !496, line: 1011, type: !544)
!3464 = !DILocation(line: 195, column: 26, scope: !3271, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 1012, column: 13, scope: !3458)
!3466 = !DILocation(line: 0, scope: !3458)
!3467 = !DILocation(line: 1011, column: 3, scope: !3458)
!3468 = !DILocation(line: 1011, column: 26, scope: !3458)
!3469 = !DILocation(line: 1012, column: 13, scope: !3458)
!3470 = !DILocation(line: 0, scope: !3271, inlinedAt: !3465)
!3471 = !{!3472}
!3472 = distinct !{!3472, !3473, !"quoting_options_from_style: argument 0"}
!3473 = distinct !{!3473, !"quoting_options_from_style"}
!3474 = !DILocation(line: 196, column: 13, scope: !3283, inlinedAt: !3465)
!3475 = !DILocation(line: 196, column: 7, scope: !3271, inlinedAt: !3465)
!3476 = !DILocation(line: 197, column: 5, scope: !3283, inlinedAt: !3465)
!3477 = !DILocation(line: 0, scope: !2203, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 1013, column: 3, scope: !3458)
!3479 = !DILocation(line: 156, column: 57, scope: !2203, inlinedAt: !3478)
!3480 = !DILocation(line: 158, column: 12, scope: !2203, inlinedAt: !3478)
!3481 = !DILocation(line: 159, column: 6, scope: !2203, inlinedAt: !3478)
!3482 = !DILocation(line: 1014, column: 10, scope: !3458)
!3483 = !DILocation(line: 1015, column: 1, scope: !3458)
!3484 = !DILocation(line: 1014, column: 3, scope: !3458)
!3485 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !496, file: !496, line: 1018, type: !3486, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3488)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!18, !22, !20, !20, !20}
!3488 = !{!3489, !3490, !3491, !3492}
!3489 = !DILocalVariable(name: "n", arg: 1, scope: !3485, file: !496, line: 1018, type: !22)
!3490 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3485, file: !496, line: 1018, type: !20)
!3491 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3485, file: !496, line: 1019, type: !20)
!3492 = !DILocalVariable(name: "arg", arg: 4, scope: !3485, file: !496, line: 1019, type: !20)
!3493 = !DILocalVariable(name: "o", scope: !3494, file: !496, line: 1030, type: !544)
!3494 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !496, file: !496, line: 1026, type: !3495, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!18, !22, !20, !20, !20, !77}
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3493}
!3498 = !DILocalVariable(name: "n", arg: 1, scope: !3494, file: !496, line: 1026, type: !22)
!3499 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3494, file: !496, line: 1026, type: !20)
!3500 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3494, file: !496, line: 1027, type: !20)
!3501 = !DILocalVariable(name: "arg", arg: 4, scope: !3494, file: !496, line: 1028, type: !20)
!3502 = !DILocalVariable(name: "argsize", arg: 5, scope: !3494, file: !496, line: 1028, type: !77)
!3503 = !DILocation(line: 1030, column: 26, scope: !3494, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 1021, column: 10, scope: !3485)
!3505 = !DILocation(line: 0, scope: !3485)
!3506 = !DILocation(line: 0, scope: !3494, inlinedAt: !3504)
!3507 = !DILocation(line: 1030, column: 3, scope: !3494, inlinedAt: !3504)
!3508 = !DILocation(line: 1030, column: 30, scope: !3494, inlinedAt: !3504)
!3509 = !DILocation(line: 0, scope: !2244, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 1031, column: 3, scope: !3494, inlinedAt: !3504)
!3511 = !DILocation(line: 184, column: 6, scope: !2244, inlinedAt: !3510)
!3512 = !DILocation(line: 184, column: 12, scope: !2244, inlinedAt: !3510)
!3513 = !DILocation(line: 185, column: 8, scope: !2258, inlinedAt: !3510)
!3514 = !DILocation(line: 185, column: 23, scope: !2258, inlinedAt: !3510)
!3515 = !DILocation(line: 185, column: 19, scope: !2258, inlinedAt: !3510)
!3516 = !DILocation(line: 186, column: 5, scope: !2258, inlinedAt: !3510)
!3517 = !DILocation(line: 187, column: 6, scope: !2244, inlinedAt: !3510)
!3518 = !DILocation(line: 187, column: 17, scope: !2244, inlinedAt: !3510)
!3519 = !DILocation(line: 188, column: 6, scope: !2244, inlinedAt: !3510)
!3520 = !DILocation(line: 188, column: 18, scope: !2244, inlinedAt: !3510)
!3521 = !DILocation(line: 1032, column: 10, scope: !3494, inlinedAt: !3504)
!3522 = !DILocation(line: 1033, column: 1, scope: !3494, inlinedAt: !3504)
!3523 = !DILocation(line: 1021, column: 3, scope: !3485)
!3524 = !DILocation(line: 0, scope: !3494)
!3525 = !DILocation(line: 1030, column: 3, scope: !3494)
!3526 = !DILocation(line: 1030, column: 26, scope: !3494)
!3527 = !DILocation(line: 1030, column: 30, scope: !3494)
!3528 = !DILocation(line: 0, scope: !2244, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 1031, column: 3, scope: !3494)
!3530 = !DILocation(line: 184, column: 6, scope: !2244, inlinedAt: !3529)
!3531 = !DILocation(line: 184, column: 12, scope: !2244, inlinedAt: !3529)
!3532 = !DILocation(line: 185, column: 8, scope: !2258, inlinedAt: !3529)
!3533 = !DILocation(line: 185, column: 23, scope: !2258, inlinedAt: !3529)
!3534 = !DILocation(line: 185, column: 19, scope: !2258, inlinedAt: !3529)
!3535 = !DILocation(line: 186, column: 5, scope: !2258, inlinedAt: !3529)
!3536 = !DILocation(line: 187, column: 6, scope: !2244, inlinedAt: !3529)
!3537 = !DILocation(line: 187, column: 17, scope: !2244, inlinedAt: !3529)
!3538 = !DILocation(line: 188, column: 6, scope: !2244, inlinedAt: !3529)
!3539 = !DILocation(line: 188, column: 18, scope: !2244, inlinedAt: !3529)
!3540 = !DILocation(line: 1032, column: 10, scope: !3494)
!3541 = !DILocation(line: 1033, column: 1, scope: !3494)
!3542 = !DILocation(line: 1032, column: 3, scope: !3494)
!3543 = distinct !DISubprogram(name: "quotearg_custom", scope: !496, file: !496, line: 1036, type: !3544, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!18, !20, !20, !20}
!3546 = !{!3547, !3548, !3549}
!3547 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3543, file: !496, line: 1036, type: !20)
!3548 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3543, file: !496, line: 1036, type: !20)
!3549 = !DILocalVariable(name: "arg", arg: 3, scope: !3543, file: !496, line: 1037, type: !20)
!3550 = !DILocation(line: 1030, column: 26, scope: !3494, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 1021, column: 10, scope: !3485, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 1039, column: 10, scope: !3543)
!3553 = !DILocation(line: 0, scope: !3543)
!3554 = !DILocation(line: 0, scope: !3485, inlinedAt: !3552)
!3555 = !DILocation(line: 0, scope: !3494, inlinedAt: !3551)
!3556 = !DILocation(line: 1030, column: 3, scope: !3494, inlinedAt: !3551)
!3557 = !DILocation(line: 1030, column: 30, scope: !3494, inlinedAt: !3551)
!3558 = !DILocation(line: 0, scope: !2244, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 1031, column: 3, scope: !3494, inlinedAt: !3551)
!3560 = !DILocation(line: 184, column: 6, scope: !2244, inlinedAt: !3559)
!3561 = !DILocation(line: 184, column: 12, scope: !2244, inlinedAt: !3559)
!3562 = !DILocation(line: 185, column: 8, scope: !2258, inlinedAt: !3559)
!3563 = !DILocation(line: 185, column: 23, scope: !2258, inlinedAt: !3559)
!3564 = !DILocation(line: 185, column: 19, scope: !2258, inlinedAt: !3559)
!3565 = !DILocation(line: 186, column: 5, scope: !2258, inlinedAt: !3559)
!3566 = !DILocation(line: 187, column: 6, scope: !2244, inlinedAt: !3559)
!3567 = !DILocation(line: 187, column: 17, scope: !2244, inlinedAt: !3559)
!3568 = !DILocation(line: 188, column: 6, scope: !2244, inlinedAt: !3559)
!3569 = !DILocation(line: 188, column: 18, scope: !2244, inlinedAt: !3559)
!3570 = !DILocation(line: 1032, column: 10, scope: !3494, inlinedAt: !3551)
!3571 = !DILocation(line: 1033, column: 1, scope: !3494, inlinedAt: !3551)
!3572 = !DILocation(line: 1039, column: 3, scope: !3543)
!3573 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !496, file: !496, line: 1043, type: !3574, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3576)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!18, !20, !20, !20, !77}
!3576 = !{!3577, !3578, !3579, !3580}
!3577 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3573, file: !496, line: 1043, type: !20)
!3578 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3573, file: !496, line: 1043, type: !20)
!3579 = !DILocalVariable(name: "arg", arg: 3, scope: !3573, file: !496, line: 1044, type: !20)
!3580 = !DILocalVariable(name: "argsize", arg: 4, scope: !3573, file: !496, line: 1044, type: !77)
!3581 = !DILocation(line: 1030, column: 26, scope: !3494, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 1046, column: 10, scope: !3573)
!3583 = !DILocation(line: 0, scope: !3573)
!3584 = !DILocation(line: 0, scope: !3494, inlinedAt: !3582)
!3585 = !DILocation(line: 1030, column: 3, scope: !3494, inlinedAt: !3582)
!3586 = !DILocation(line: 1030, column: 30, scope: !3494, inlinedAt: !3582)
!3587 = !DILocation(line: 0, scope: !2244, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 1031, column: 3, scope: !3494, inlinedAt: !3582)
!3589 = !DILocation(line: 184, column: 6, scope: !2244, inlinedAt: !3588)
!3590 = !DILocation(line: 184, column: 12, scope: !2244, inlinedAt: !3588)
!3591 = !DILocation(line: 185, column: 8, scope: !2258, inlinedAt: !3588)
!3592 = !DILocation(line: 185, column: 23, scope: !2258, inlinedAt: !3588)
!3593 = !DILocation(line: 185, column: 19, scope: !2258, inlinedAt: !3588)
!3594 = !DILocation(line: 186, column: 5, scope: !2258, inlinedAt: !3588)
!3595 = !DILocation(line: 187, column: 6, scope: !2244, inlinedAt: !3588)
!3596 = !DILocation(line: 187, column: 17, scope: !2244, inlinedAt: !3588)
!3597 = !DILocation(line: 188, column: 6, scope: !2244, inlinedAt: !3588)
!3598 = !DILocation(line: 188, column: 18, scope: !2244, inlinedAt: !3588)
!3599 = !DILocation(line: 1032, column: 10, scope: !3494, inlinedAt: !3582)
!3600 = !DILocation(line: 1033, column: 1, scope: !3494, inlinedAt: !3582)
!3601 = !DILocation(line: 1046, column: 3, scope: !3573)
!3602 = distinct !DISubprogram(name: "quote_n_mem", scope: !496, file: !496, line: 1061, type: !3603, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!20, !22, !20, !77}
!3605 = !{!3606, !3607, !3608}
!3606 = !DILocalVariable(name: "n", arg: 1, scope: !3602, file: !496, line: 1061, type: !22)
!3607 = !DILocalVariable(name: "arg", arg: 2, scope: !3602, file: !496, line: 1061, type: !20)
!3608 = !DILocalVariable(name: "argsize", arg: 3, scope: !3602, file: !496, line: 1061, type: !77)
!3609 = !DILocation(line: 0, scope: !3602)
!3610 = !DILocation(line: 1063, column: 10, scope: !3602)
!3611 = !DILocation(line: 1063, column: 3, scope: !3602)
!3612 = distinct !DISubprogram(name: "quote_mem", scope: !496, file: !496, line: 1067, type: !3613, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3615)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!20, !20, !77}
!3615 = !{!3616, !3617}
!3616 = !DILocalVariable(name: "arg", arg: 1, scope: !3612, file: !496, line: 1067, type: !20)
!3617 = !DILocalVariable(name: "argsize", arg: 2, scope: !3612, file: !496, line: 1067, type: !77)
!3618 = !DILocation(line: 0, scope: !3612)
!3619 = !DILocation(line: 0, scope: !3602, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 1069, column: 10, scope: !3612)
!3621 = !DILocation(line: 1063, column: 10, scope: !3602, inlinedAt: !3620)
!3622 = !DILocation(line: 1069, column: 3, scope: !3612)
!3623 = distinct !DISubprogram(name: "quote_n", scope: !496, file: !496, line: 1073, type: !3624, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3626)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!20, !22, !20}
!3626 = !{!3627, !3628}
!3627 = !DILocalVariable(name: "n", arg: 1, scope: !3623, file: !496, line: 1073, type: !22)
!3628 = !DILocalVariable(name: "arg", arg: 2, scope: !3623, file: !496, line: 1073, type: !20)
!3629 = !DILocation(line: 0, scope: !3623)
!3630 = !DILocation(line: 0, scope: !3602, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 1075, column: 10, scope: !3623)
!3632 = !DILocation(line: 1063, column: 10, scope: !3602, inlinedAt: !3631)
!3633 = !DILocation(line: 1075, column: 3, scope: !3623)
!3634 = distinct !DISubprogram(name: "quote", scope: !496, file: !496, line: 1079, type: !153, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3635)
!3635 = !{!3636}
!3636 = !DILocalVariable(name: "arg", arg: 1, scope: !3634, file: !496, line: 1079, type: !20)
!3637 = !DILocation(line: 0, scope: !3634)
!3638 = !DILocation(line: 0, scope: !3623, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 1081, column: 10, scope: !3634)
!3640 = !DILocation(line: 0, scope: !3602, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 1075, column: 10, scope: !3623, inlinedAt: !3639)
!3642 = !DILocation(line: 1063, column: 10, scope: !3602, inlinedAt: !3641)
!3643 = !DILocation(line: 1081, column: 3, scope: !3634)
!3644 = distinct !DISubprogram(name: "version_etc_arn", scope: !710, file: !710, line: 61, type: !3645, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3651)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{null, !3647, !20, !20, !20, !3650, !77}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3649, line: 7, baseType: !720)
!3649 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!3651 = !{!3652, !3653, !3654, !3655, !3656, !3657}
!3652 = !DILocalVariable(name: "stream", arg: 1, scope: !3644, file: !710, line: 61, type: !3647)
!3653 = !DILocalVariable(name: "command_name", arg: 2, scope: !3644, file: !710, line: 62, type: !20)
!3654 = !DILocalVariable(name: "package", arg: 3, scope: !3644, file: !710, line: 62, type: !20)
!3655 = !DILocalVariable(name: "version", arg: 4, scope: !3644, file: !710, line: 63, type: !20)
!3656 = !DILocalVariable(name: "authors", arg: 5, scope: !3644, file: !710, line: 64, type: !3650)
!3657 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3644, file: !710, line: 64, type: !77)
!3658 = !DILocation(line: 0, scope: !3644)
!3659 = !DILocation(line: 66, column: 7, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3644, file: !710, line: 66, column: 7)
!3661 = !DILocation(line: 66, column: 7, scope: !3644)
!3662 = !DILocation(line: 67, column: 5, scope: !3660)
!3663 = !DILocation(line: 69, column: 5, scope: !3660)
!3664 = !DILocation(line: 83, column: 3, scope: !3644)
!3665 = !DILocation(line: 85, column: 3, scope: !3644)
!3666 = !DILocation(line: 88, column: 3, scope: !3644)
!3667 = !DILocation(line: 95, column: 3, scope: !3644)
!3668 = !DILocation(line: 97, column: 3, scope: !3644)
!3669 = !DILocation(line: 105, column: 7, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3644, file: !710, line: 98, column: 5)
!3671 = !DILocation(line: 106, column: 7, scope: !3670)
!3672 = !DILocation(line: 109, column: 7, scope: !3670)
!3673 = !DILocation(line: 110, column: 7, scope: !3670)
!3674 = !DILocation(line: 113, column: 7, scope: !3670)
!3675 = !DILocation(line: 115, column: 7, scope: !3670)
!3676 = !DILocation(line: 120, column: 7, scope: !3670)
!3677 = !DILocation(line: 122, column: 7, scope: !3670)
!3678 = !DILocation(line: 127, column: 7, scope: !3670)
!3679 = !DILocation(line: 129, column: 7, scope: !3670)
!3680 = !DILocation(line: 134, column: 7, scope: !3670)
!3681 = !DILocation(line: 137, column: 7, scope: !3670)
!3682 = !DILocation(line: 142, column: 7, scope: !3670)
!3683 = !DILocation(line: 145, column: 7, scope: !3670)
!3684 = !DILocation(line: 150, column: 7, scope: !3670)
!3685 = !DILocation(line: 154, column: 7, scope: !3670)
!3686 = !DILocation(line: 159, column: 7, scope: !3670)
!3687 = !DILocation(line: 163, column: 7, scope: !3670)
!3688 = !DILocation(line: 170, column: 7, scope: !3670)
!3689 = !DILocation(line: 174, column: 7, scope: !3670)
!3690 = !DILocation(line: 176, column: 1, scope: !3644)
!3691 = distinct !DISubprogram(name: "version_etc_ar", scope: !710, file: !710, line: 183, type: !3692, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{null, !3647, !20, !20, !20, !3650}
!3694 = !{!3695, !3696, !3697, !3698, !3699, !3700}
!3695 = !DILocalVariable(name: "stream", arg: 1, scope: !3691, file: !710, line: 183, type: !3647)
!3696 = !DILocalVariable(name: "command_name", arg: 2, scope: !3691, file: !710, line: 184, type: !20)
!3697 = !DILocalVariable(name: "package", arg: 3, scope: !3691, file: !710, line: 184, type: !20)
!3698 = !DILocalVariable(name: "version", arg: 4, scope: !3691, file: !710, line: 185, type: !20)
!3699 = !DILocalVariable(name: "authors", arg: 5, scope: !3691, file: !710, line: 185, type: !3650)
!3700 = !DILocalVariable(name: "n_authors", scope: !3691, file: !710, line: 187, type: !77)
!3701 = !DILocation(line: 0, scope: !3691)
!3702 = !DILocation(line: 189, column: 8, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3691, file: !710, line: 189, column: 3)
!3704 = !DILocation(line: 0, scope: !3703)
!3705 = !DILocation(line: 189, column: 23, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3703, file: !710, line: 189, column: 3)
!3707 = !DILocation(line: 189, column: 3, scope: !3703)
!3708 = !DILocation(line: 189, column: 52, scope: !3706)
!3709 = distinct !{!3709, !3707, !3710}
!3710 = !DILocation(line: 190, column: 5, scope: !3703)
!3711 = !DILocation(line: 191, column: 3, scope: !3691)
!3712 = !DILocation(line: 192, column: 1, scope: !3691)
!3713 = distinct !DISubprogram(name: "version_etc_va", scope: !710, file: !710, line: 199, type: !3714, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3723)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{null, !3647, !20, !20, !20, !3716}
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !710, line: 192, size: 192, elements: !3718)
!3718 = !{!3719, !3720, !3721, !3722}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3717, file: !710, line: 192, baseType: !7, size: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3717, file: !710, line: 192, baseType: !7, size: 32, offset: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3717, file: !710, line: 192, baseType: !75, size: 64, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3717, file: !710, line: 192, baseType: !75, size: 64, offset: 128)
!3723 = !{!3724, !3725, !3726, !3727, !3728, !3729, !3730}
!3724 = !DILocalVariable(name: "stream", arg: 1, scope: !3713, file: !710, line: 199, type: !3647)
!3725 = !DILocalVariable(name: "command_name", arg: 2, scope: !3713, file: !710, line: 200, type: !20)
!3726 = !DILocalVariable(name: "package", arg: 3, scope: !3713, file: !710, line: 200, type: !20)
!3727 = !DILocalVariable(name: "version", arg: 4, scope: !3713, file: !710, line: 201, type: !20)
!3728 = !DILocalVariable(name: "authors", arg: 5, scope: !3713, file: !710, line: 201, type: !3716)
!3729 = !DILocalVariable(name: "n_authors", scope: !3713, file: !710, line: 203, type: !77)
!3730 = !DILocalVariable(name: "authtab", scope: !3713, file: !710, line: 204, type: !3731)
!3731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 640, elements: !605)
!3732 = !DILocation(line: 0, scope: !3713)
!3733 = !DILocation(line: 204, column: 3, scope: !3713)
!3734 = !DILocation(line: 204, column: 15, scope: !3713)
!3735 = !DILocation(line: 0, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !710, line: 206, column: 3)
!3737 = distinct !DILexicalBlock(scope: !3713, file: !710, line: 206, column: 3)
!3738 = !DILocation(line: 208, column: 35, scope: !3736)
!3739 = !DILocation(line: 208, column: 14, scope: !3736)
!3740 = !DILocation(line: 208, column: 33, scope: !3736)
!3741 = !DILocation(line: 208, column: 67, scope: !3736)
!3742 = !DILocation(line: 206, column: 3, scope: !3737)
!3743 = !DILocation(line: 0, scope: !3737)
!3744 = !DILocation(line: 211, column: 3, scope: !3713)
!3745 = !DILocation(line: 213, column: 1, scope: !3713)
!3746 = distinct !DISubprogram(name: "version_etc", scope: !710, file: !710, line: 230, type: !3747, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3749)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{null, !3647, !20, !20, !20, null}
!3749 = !{!3750, !3751, !3752, !3753, !3754}
!3750 = !DILocalVariable(name: "stream", arg: 1, scope: !3746, file: !710, line: 230, type: !3647)
!3751 = !DILocalVariable(name: "command_name", arg: 2, scope: !3746, file: !710, line: 231, type: !20)
!3752 = !DILocalVariable(name: "package", arg: 3, scope: !3746, file: !710, line: 231, type: !20)
!3753 = !DILocalVariable(name: "version", arg: 4, scope: !3746, file: !710, line: 232, type: !20)
!3754 = !DILocalVariable(name: "authors", scope: !3746, file: !710, line: 234, type: !3755)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !25, line: 52, baseType: !3756)
!3756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3757, line: 32, baseType: !3758)
!3757 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !710, line: 234, baseType: !3759)
!3759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3717, size: 192, elements: !60)
!3760 = !DILocation(line: 0, scope: !3746)
!3761 = !DILocation(line: 234, column: 3, scope: !3746)
!3762 = !DILocation(line: 234, column: 11, scope: !3746)
!3763 = !DILocation(line: 236, column: 3, scope: !3746)
!3764 = !DILocation(line: 237, column: 3, scope: !3746)
!3765 = !DILocation(line: 238, column: 3, scope: !3746)
!3766 = !DILocation(line: 239, column: 1, scope: !3746)
!3767 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !710, file: !710, line: 242, type: !104, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !23)
!3768 = !DILocation(line: 244, column: 3, scope: !3767)
!3769 = !DILocation(line: 249, column: 3, scope: !3767)
!3770 = !DILocation(line: 255, column: 3, scope: !3767)
!3771 = !DILocation(line: 260, column: 3, scope: !3767)
!3772 = !DILocation(line: 262, column: 1, scope: !3767)
!3773 = distinct !DISubprogram(name: "xnmalloc", scope: !533, file: !533, line: 99, type: !3774, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3776)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!75, !77, !77}
!3776 = !{!3777, !3778}
!3777 = !DILocalVariable(name: "n", arg: 1, scope: !3773, file: !533, line: 99, type: !77)
!3778 = !DILocalVariable(name: "s", arg: 2, scope: !3773, file: !533, line: 99, type: !77)
!3779 = !DILocation(line: 0, scope: !3773)
!3780 = !DILocation(line: 101, column: 7, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3773, file: !533, line: 101, column: 7)
!3782 = !DILocation(line: 101, column: 7, scope: !3773)
!3783 = !DILocation(line: 102, column: 5, scope: !3781)
!3784 = !DILocation(line: 103, column: 21, scope: !3773)
!3785 = !DILocalVariable(name: "n", arg: 1, scope: !3786, file: !752, line: 39, type: !77)
!3786 = distinct !DISubprogram(name: "xmalloc", scope: !752, file: !752, line: 39, type: !3787, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3789)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!75, !77}
!3789 = !{!3785, !3790}
!3790 = !DILocalVariable(name: "p", scope: !3786, file: !752, line: 41, type: !75)
!3791 = !DILocation(line: 0, scope: !3786, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 103, column: 10, scope: !3773)
!3793 = !DILocation(line: 41, column: 13, scope: !3786, inlinedAt: !3792)
!3794 = !DILocation(line: 42, column: 8, scope: !3795, inlinedAt: !3792)
!3795 = distinct !DILexicalBlock(scope: !3786, file: !752, line: 42, column: 7)
!3796 = !DILocation(line: 42, column: 15, scope: !3795, inlinedAt: !3792)
!3797 = !DILocation(line: 42, column: 10, scope: !3795, inlinedAt: !3792)
!3798 = !DILocation(line: 43, column: 5, scope: !3795, inlinedAt: !3792)
!3799 = !DILocation(line: 103, column: 3, scope: !3773)
!3800 = !DILocation(line: 0, scope: !3786)
!3801 = !DILocation(line: 41, column: 13, scope: !3786)
!3802 = !DILocation(line: 42, column: 8, scope: !3795)
!3803 = !DILocation(line: 42, column: 15, scope: !3795)
!3804 = !DILocation(line: 42, column: 10, scope: !3795)
!3805 = !DILocation(line: 43, column: 5, scope: !3795)
!3806 = !DILocation(line: 44, column: 3, scope: !3786)
!3807 = distinct !DISubprogram(name: "xnrealloc", scope: !533, file: !533, line: 112, type: !3808, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3810)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!75, !75, !77, !77}
!3810 = !{!3811, !3812, !3813}
!3811 = !DILocalVariable(name: "p", arg: 1, scope: !3807, file: !533, line: 112, type: !75)
!3812 = !DILocalVariable(name: "n", arg: 2, scope: !3807, file: !533, line: 112, type: !77)
!3813 = !DILocalVariable(name: "s", arg: 3, scope: !3807, file: !533, line: 112, type: !77)
!3814 = !DILocation(line: 0, scope: !3807)
!3815 = !DILocation(line: 114, column: 7, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3807, file: !533, line: 114, column: 7)
!3817 = !DILocation(line: 114, column: 7, scope: !3807)
!3818 = !DILocation(line: 115, column: 5, scope: !3816)
!3819 = !DILocation(line: 116, column: 25, scope: !3807)
!3820 = !DILocalVariable(name: "p", arg: 1, scope: !3821, file: !752, line: 51, type: !75)
!3821 = distinct !DISubprogram(name: "xrealloc", scope: !752, file: !752, line: 51, type: !3822, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3824)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!75, !75, !77}
!3824 = !{!3820, !3825}
!3825 = !DILocalVariable(name: "n", arg: 2, scope: !3821, file: !752, line: 51, type: !77)
!3826 = !DILocation(line: 0, scope: !3821, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 116, column: 10, scope: !3807)
!3828 = !DILocation(line: 53, column: 8, scope: !3829, inlinedAt: !3827)
!3829 = distinct !DILexicalBlock(scope: !3821, file: !752, line: 53, column: 7)
!3830 = !DILocation(line: 53, column: 13, scope: !3829, inlinedAt: !3827)
!3831 = !DILocation(line: 53, column: 10, scope: !3829, inlinedAt: !3827)
!3832 = !DILocation(line: 57, column: 7, scope: !3833, inlinedAt: !3827)
!3833 = distinct !DILexicalBlock(scope: !3829, file: !752, line: 54, column: 5)
!3834 = !DILocation(line: 58, column: 7, scope: !3833, inlinedAt: !3827)
!3835 = !DILocation(line: 61, column: 7, scope: !3821, inlinedAt: !3827)
!3836 = !DILocation(line: 62, column: 8, scope: !3837, inlinedAt: !3827)
!3837 = distinct !DILexicalBlock(scope: !3821, file: !752, line: 62, column: 7)
!3838 = !DILocation(line: 62, column: 13, scope: !3837, inlinedAt: !3827)
!3839 = !DILocation(line: 62, column: 10, scope: !3837, inlinedAt: !3827)
!3840 = !DILocation(line: 63, column: 5, scope: !3837, inlinedAt: !3827)
!3841 = !DILocation(line: 116, column: 3, scope: !3807)
!3842 = !DILocation(line: 0, scope: !3821)
!3843 = !DILocation(line: 53, column: 8, scope: !3829)
!3844 = !DILocation(line: 53, column: 13, scope: !3829)
!3845 = !DILocation(line: 53, column: 10, scope: !3829)
!3846 = !DILocation(line: 57, column: 7, scope: !3833)
!3847 = !DILocation(line: 58, column: 7, scope: !3833)
!3848 = !DILocation(line: 61, column: 7, scope: !3821)
!3849 = !DILocation(line: 62, column: 8, scope: !3837)
!3850 = !DILocation(line: 62, column: 13, scope: !3837)
!3851 = !DILocation(line: 62, column: 10, scope: !3837)
!3852 = !DILocation(line: 63, column: 5, scope: !3837)
!3853 = !DILocation(line: 65, column: 1, scope: !3821)
!3854 = !DILocation(line: 0, scope: !755)
!3855 = !DILocation(line: 176, column: 14, scope: !755)
!3856 = !DILocation(line: 178, column: 9, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !755, file: !533, line: 178, column: 7)
!3858 = !DILocation(line: 178, column: 7, scope: !755)
!3859 = !DILocation(line: 180, column: 13, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !533, line: 180, column: 11)
!3861 = distinct !DILexicalBlock(scope: !3857, file: !533, line: 179, column: 5)
!3862 = !DILocation(line: 180, column: 11, scope: !3861)
!3863 = !DILocation(line: 188, column: 30, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3860, file: !533, line: 181, column: 9)
!3865 = !DILocation(line: 189, column: 16, scope: !3864)
!3866 = !DILocation(line: 189, column: 13, scope: !3864)
!3867 = !DILocation(line: 190, column: 9, scope: !3864)
!3868 = !DILocation(line: 191, column: 11, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3861, file: !533, line: 191, column: 11)
!3870 = !DILocation(line: 191, column: 11, scope: !3861)
!3871 = !DILocation(line: 206, column: 7, scope: !755)
!3872 = !DILocation(line: 207, column: 25, scope: !755)
!3873 = !DILocation(line: 0, scope: !3821, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 207, column: 10, scope: !755)
!3875 = !DILocation(line: 53, column: 10, scope: !3829, inlinedAt: !3874)
!3876 = !DILocation(line: 192, column: 9, scope: !3869)
!3877 = !DILocation(line: 200, column: 69, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !533, line: 200, column: 11)
!3879 = distinct !DILexicalBlock(scope: !3857, file: !533, line: 195, column: 5)
!3880 = !DILocation(line: 201, column: 11, scope: !3878)
!3881 = !DILocation(line: 200, column: 11, scope: !3879)
!3882 = !DILocation(line: 202, column: 9, scope: !3878)
!3883 = !DILocation(line: 203, column: 14, scope: !3879)
!3884 = !DILocation(line: 203, column: 18, scope: !3879)
!3885 = !DILocation(line: 203, column: 9, scope: !3879)
!3886 = !DILocation(line: 53, column: 8, scope: !3829, inlinedAt: !3874)
!3887 = !DILocation(line: 57, column: 7, scope: !3833, inlinedAt: !3874)
!3888 = !DILocation(line: 58, column: 7, scope: !3833, inlinedAt: !3874)
!3889 = !DILocation(line: 61, column: 7, scope: !3821, inlinedAt: !3874)
!3890 = !DILocation(line: 62, column: 8, scope: !3837, inlinedAt: !3874)
!3891 = !DILocation(line: 62, column: 13, scope: !3837, inlinedAt: !3874)
!3892 = !DILocation(line: 62, column: 10, scope: !3837, inlinedAt: !3874)
!3893 = !DILocation(line: 63, column: 5, scope: !3837, inlinedAt: !3874)
!3894 = !DILocation(line: 207, column: 3, scope: !755)
!3895 = distinct !DISubprogram(name: "xcharalloc", scope: !533, file: !533, line: 216, type: !3059, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3896)
!3896 = !{!3897}
!3897 = !DILocalVariable(name: "n", arg: 1, scope: !3895, file: !533, line: 216, type: !77)
!3898 = !DILocation(line: 0, scope: !3895)
!3899 = !DILocation(line: 0, scope: !3786, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 218, column: 10, scope: !3895)
!3901 = !DILocation(line: 41, column: 13, scope: !3786, inlinedAt: !3900)
!3902 = !DILocation(line: 42, column: 8, scope: !3795, inlinedAt: !3900)
!3903 = !DILocation(line: 42, column: 15, scope: !3795, inlinedAt: !3900)
!3904 = !DILocation(line: 42, column: 10, scope: !3795, inlinedAt: !3900)
!3905 = !DILocation(line: 43, column: 5, scope: !3795, inlinedAt: !3900)
!3906 = !DILocation(line: 218, column: 3, scope: !3895)
!3907 = distinct !DISubprogram(name: "x2realloc", scope: !752, file: !752, line: 74, type: !3908, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3910)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!75, !75, !758}
!3910 = !{!3911, !3912}
!3911 = !DILocalVariable(name: "p", arg: 1, scope: !3907, file: !752, line: 74, type: !75)
!3912 = !DILocalVariable(name: "pn", arg: 2, scope: !3907, file: !752, line: 74, type: !758)
!3913 = !DILocation(line: 0, scope: !3907)
!3914 = !DILocation(line: 0, scope: !755, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 76, column: 10, scope: !3907)
!3916 = !DILocation(line: 176, column: 14, scope: !755, inlinedAt: !3915)
!3917 = !DILocation(line: 178, column: 9, scope: !3857, inlinedAt: !3915)
!3918 = !DILocation(line: 178, column: 7, scope: !755, inlinedAt: !3915)
!3919 = !DILocation(line: 180, column: 13, scope: !3860, inlinedAt: !3915)
!3920 = !DILocation(line: 180, column: 11, scope: !3861, inlinedAt: !3915)
!3921 = !DILocation(line: 191, column: 11, scope: !3869, inlinedAt: !3915)
!3922 = !DILocation(line: 191, column: 11, scope: !3861, inlinedAt: !3915)
!3923 = !DILocation(line: 206, column: 7, scope: !755, inlinedAt: !3915)
!3924 = !DILocation(line: 0, scope: !3821, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 207, column: 10, scope: !755, inlinedAt: !3915)
!3926 = !DILocation(line: 53, column: 10, scope: !3829, inlinedAt: !3925)
!3927 = !DILocation(line: 192, column: 9, scope: !3869, inlinedAt: !3915)
!3928 = !DILocation(line: 201, column: 11, scope: !3878, inlinedAt: !3915)
!3929 = !DILocation(line: 200, column: 11, scope: !3879, inlinedAt: !3915)
!3930 = !DILocation(line: 202, column: 9, scope: !3878, inlinedAt: !3915)
!3931 = !DILocation(line: 203, column: 14, scope: !3879, inlinedAt: !3915)
!3932 = !DILocation(line: 203, column: 18, scope: !3879, inlinedAt: !3915)
!3933 = !DILocation(line: 203, column: 9, scope: !3879, inlinedAt: !3915)
!3934 = !DILocation(line: 53, column: 8, scope: !3829, inlinedAt: !3925)
!3935 = !DILocation(line: 57, column: 7, scope: !3833, inlinedAt: !3925)
!3936 = !DILocation(line: 58, column: 7, scope: !3833, inlinedAt: !3925)
!3937 = !DILocation(line: 61, column: 7, scope: !3821, inlinedAt: !3925)
!3938 = !DILocation(line: 62, column: 8, scope: !3837, inlinedAt: !3925)
!3939 = !DILocation(line: 62, column: 13, scope: !3837, inlinedAt: !3925)
!3940 = !DILocation(line: 62, column: 10, scope: !3837, inlinedAt: !3925)
!3941 = !DILocation(line: 63, column: 5, scope: !3837, inlinedAt: !3925)
!3942 = !DILocation(line: 76, column: 3, scope: !3907)
!3943 = distinct !DISubprogram(name: "xzalloc", scope: !752, file: !752, line: 84, type: !3787, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3944)
!3944 = !{!3945}
!3945 = !DILocalVariable(name: "n", arg: 1, scope: !3943, file: !752, line: 84, type: !77)
!3946 = !DILocation(line: 0, scope: !3943)
!3947 = !DILocalVariable(name: "n", arg: 1, scope: !3948, file: !752, line: 93, type: !77)
!3948 = distinct !DISubprogram(name: "xcalloc", scope: !752, file: !752, line: 93, type: !3774, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3949)
!3949 = !{!3947, !3950, !3951}
!3950 = !DILocalVariable(name: "s", arg: 2, scope: !3948, file: !752, line: 93, type: !77)
!3951 = !DILocalVariable(name: "p", scope: !3948, file: !752, line: 95, type: !75)
!3952 = !DILocation(line: 0, scope: !3948, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 86, column: 10, scope: !3943)
!3954 = !DILocation(line: 100, column: 7, scope: !3955, inlinedAt: !3953)
!3955 = distinct !DILexicalBlock(scope: !3948, file: !752, line: 100, column: 7)
!3956 = !DILocation(line: 101, column: 7, scope: !3955, inlinedAt: !3953)
!3957 = !DILocation(line: 101, column: 18, scope: !3955, inlinedAt: !3953)
!3958 = !DILocation(line: 101, column: 16, scope: !3955, inlinedAt: !3953)
!3959 = !DILocation(line: 100, column: 7, scope: !3948, inlinedAt: !3953)
!3960 = !DILocation(line: 102, column: 5, scope: !3955, inlinedAt: !3953)
!3961 = !DILocation(line: 86, column: 3, scope: !3943)
!3962 = !DILocation(line: 0, scope: !3948)
!3963 = !DILocation(line: 100, column: 7, scope: !3955)
!3964 = !DILocation(line: 101, column: 7, scope: !3955)
!3965 = !DILocation(line: 101, column: 18, scope: !3955)
!3966 = !DILocation(line: 101, column: 16, scope: !3955)
!3967 = !DILocation(line: 100, column: 7, scope: !3948)
!3968 = !DILocation(line: 102, column: 5, scope: !3955)
!3969 = !DILocation(line: 103, column: 3, scope: !3948)
!3970 = distinct !DISubprogram(name: "xmemdup", scope: !752, file: !752, line: 111, type: !3971, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!75, !536, !77}
!3973 = !{!3974, !3975}
!3974 = !DILocalVariable(name: "p", arg: 1, scope: !3970, file: !752, line: 111, type: !536)
!3975 = !DILocalVariable(name: "s", arg: 2, scope: !3970, file: !752, line: 111, type: !77)
!3976 = !DILocation(line: 0, scope: !3970)
!3977 = !DILocation(line: 0, scope: !3786, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 113, column: 18, scope: !3970)
!3979 = !DILocation(line: 41, column: 13, scope: !3786, inlinedAt: !3978)
!3980 = !DILocation(line: 42, column: 8, scope: !3795, inlinedAt: !3978)
!3981 = !DILocation(line: 42, column: 15, scope: !3795, inlinedAt: !3978)
!3982 = !DILocation(line: 42, column: 10, scope: !3795, inlinedAt: !3978)
!3983 = !DILocation(line: 43, column: 5, scope: !3795, inlinedAt: !3978)
!3984 = !DILocalVariable(name: "__dest", arg: 1, scope: !3985, file: !2592, line: 31, type: !3988)
!3985 = distinct !DISubprogram(name: "memcpy", scope: !2592, file: !2592, line: 31, type: !3986, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3990)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!75, !3988, !3989, !77}
!3988 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!3989 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !536)
!3990 = !{!3984, !3991, !3992}
!3991 = !DILocalVariable(name: "__src", arg: 2, scope: !3985, file: !2592, line: 31, type: !3989)
!3992 = !DILocalVariable(name: "__len", arg: 3, scope: !3985, file: !2592, line: 31, type: !77)
!3993 = !DILocation(line: 0, scope: !3985, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 113, column: 10, scope: !3970)
!3995 = !DILocation(line: 34, column: 10, scope: !3985, inlinedAt: !3994)
!3996 = !DILocation(line: 113, column: 3, scope: !3970)
!3997 = distinct !DISubprogram(name: "xstrdup", scope: !752, file: !752, line: 119, type: !97, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3998)
!3998 = !{!3999}
!3999 = !DILocalVariable(name: "string", arg: 1, scope: !3997, file: !752, line: 119, type: !20)
!4000 = !DILocation(line: 0, scope: !3997)
!4001 = !DILocation(line: 121, column: 27, scope: !3997)
!4002 = !DILocation(line: 121, column: 43, scope: !3997)
!4003 = !DILocation(line: 0, scope: !3970, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 121, column: 10, scope: !3997)
!4005 = !DILocation(line: 0, scope: !3786, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 113, column: 18, scope: !3970, inlinedAt: !4004)
!4007 = !DILocation(line: 41, column: 13, scope: !3786, inlinedAt: !4006)
!4008 = !DILocation(line: 42, column: 8, scope: !3795, inlinedAt: !4006)
!4009 = !DILocation(line: 42, column: 15, scope: !3795, inlinedAt: !4006)
!4010 = !DILocation(line: 42, column: 10, scope: !3795, inlinedAt: !4006)
!4011 = !DILocation(line: 43, column: 5, scope: !3795, inlinedAt: !4006)
!4012 = !DILocation(line: 0, scope: !3985, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 113, column: 10, scope: !3970, inlinedAt: !4004)
!4014 = !DILocation(line: 34, column: 10, scope: !3985, inlinedAt: !4013)
!4015 = !DILocation(line: 121, column: 3, scope: !3997)
!4016 = distinct !DISubprogram(name: "xalloc_die", scope: !773, file: !773, line: 32, type: !104, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !23)
!4017 = !DILocation(line: 34, column: 10, scope: !4016)
!4018 = !DILocation(line: 34, column: 33, scope: !4016)
!4019 = !DILocation(line: 34, column: 3, scope: !4016)
!4020 = !DILocation(line: 40, column: 3, scope: !4016)
!4021 = distinct !DISubprogram(name: "xstrtod", scope: !776, file: !776, line: 44, type: !176, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4022)
!4022 = !{!4023, !4024, !4025, !4026, !4027, !4028, !4029}
!4023 = !DILocalVariable(name: "str", arg: 1, scope: !4021, file: !776, line: 44, type: !20)
!4024 = !DILocalVariable(name: "ptr", arg: 2, scope: !4021, file: !776, line: 44, type: !179)
!4025 = !DILocalVariable(name: "result", arg: 3, scope: !4021, file: !776, line: 44, type: !180)
!4026 = !DILocalVariable(name: "convert", arg: 4, scope: !4021, file: !776, line: 45, type: !182)
!4027 = !DILocalVariable(name: "val", scope: !4021, file: !776, line: 47, type: !181)
!4028 = !DILocalVariable(name: "terminator", scope: !4021, file: !776, line: 48, type: !18)
!4029 = !DILocalVariable(name: "ok", scope: !4021, file: !776, line: 49, type: !178)
!4030 = !DILocation(line: 0, scope: !4021)
!4031 = !DILocation(line: 48, column: 3, scope: !4021)
!4032 = !DILocation(line: 51, column: 3, scope: !4021)
!4033 = !DILocation(line: 51, column: 9, scope: !4021)
!4034 = !DILocation(line: 52, column: 9, scope: !4021)
!4035 = !DILocation(line: 55, column: 7, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4021, file: !776, line: 55, column: 7)
!4037 = !DILocation(line: 55, column: 18, scope: !4036)
!4038 = !DILocation(line: 55, column: 25, scope: !4036)
!4039 = !DILocation(line: 55, column: 33, scope: !4036)
!4040 = !DILocation(line: 55, column: 41, scope: !4036)
!4041 = !DILocation(line: 55, column: 44, scope: !4036)
!4042 = !DILocation(line: 55, column: 56, scope: !4036)
!4043 = !DILocation(line: 55, column: 7, scope: !4021)
!4044 = !DILocation(line: 62, column: 15, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !776, line: 62, column: 11)
!4046 = distinct !DILexicalBlock(scope: !4036, file: !776, line: 58, column: 5)
!4047 = !DILocation(line: 62, column: 20, scope: !4045)
!4048 = !DILocation(line: 62, column: 23, scope: !4045)
!4049 = !DILocation(line: 62, column: 29, scope: !4045)
!4050 = !DILocation(line: 62, column: 11, scope: !4046)
!4051 = !DILocation(line: 66, column: 11, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4021, file: !776, line: 66, column: 7)
!4053 = !DILocation(line: 66, column: 7, scope: !4021)
!4054 = !DILocation(line: 67, column: 10, scope: !4052)
!4055 = !DILocation(line: 67, column: 5, scope: !4052)
!4056 = !DILocation(line: 69, column: 11, scope: !4021)
!4057 = !DILocation(line: 71, column: 1, scope: !4021)
!4058 = !DILocation(line: 70, column: 3, scope: !4021)
!4059 = distinct !DISubprogram(name: "rpl_calloc", scope: !779, file: !779, line: 42, type: !3774, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4060)
!4060 = !{!4061, !4062, !4063, !4064}
!4061 = !DILocalVariable(name: "n", arg: 1, scope: !4059, file: !779, line: 42, type: !77)
!4062 = !DILocalVariable(name: "s", arg: 2, scope: !4059, file: !779, line: 42, type: !77)
!4063 = !DILocalVariable(name: "result", scope: !4059, file: !779, line: 44, type: !75)
!4064 = !DILocalVariable(name: "bytes", scope: !4065, file: !779, line: 56, type: !77)
!4065 = distinct !DILexicalBlock(scope: !4066, file: !779, line: 53, column: 5)
!4066 = distinct !DILexicalBlock(scope: !4059, file: !779, line: 47, column: 7)
!4067 = !DILocation(line: 0, scope: !4059)
!4068 = !DILocation(line: 47, column: 9, scope: !4066)
!4069 = !DILocation(line: 47, column: 19, scope: !4066)
!4070 = !DILocation(line: 47, column: 14, scope: !4066)
!4071 = !DILocation(line: 0, scope: !4065)
!4072 = !DILocation(line: 57, column: 21, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4065, file: !779, line: 57, column: 11)
!4074 = !DILocation(line: 57, column: 11, scope: !4065)
!4075 = !DILocation(line: 59, column: 11, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4073, file: !779, line: 58, column: 9)
!4077 = !DILocation(line: 59, column: 17, scope: !4076)
!4078 = !DILocation(line: 65, column: 12, scope: !4059)
!4079 = !DILocation(line: 72, column: 3, scope: !4059)
!4080 = !DILocation(line: 73, column: 1, scope: !4059)
!4081 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !781, file: !781, line: 86, type: !4082, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4088)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!77, !4084, !20, !77, !4085}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2334, line: 6, baseType: !4087)
!4087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !564, line: 21, baseType: !787)
!4088 = !{!4089, !4090, !4091, !4092, !4093, !4094, !4095}
!4089 = !DILocalVariable(name: "pwc", arg: 1, scope: !4081, file: !781, line: 86, type: !4084)
!4090 = !DILocalVariable(name: "s", arg: 2, scope: !4081, file: !781, line: 86, type: !20)
!4091 = !DILocalVariable(name: "n", arg: 3, scope: !4081, file: !781, line: 86, type: !77)
!4092 = !DILocalVariable(name: "ps", arg: 4, scope: !4081, file: !781, line: 86, type: !4085)
!4093 = !DILocalVariable(name: "ret", scope: !4081, file: !781, line: 88, type: !77)
!4094 = !DILocalVariable(name: "wc", scope: !4081, file: !781, line: 89, type: !2338)
!4095 = !DILocalVariable(name: "uc", scope: !4096, file: !781, line: 156, type: !2211)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !781, line: 155, column: 5)
!4097 = distinct !DILexicalBlock(scope: !4081, file: !781, line: 154, column: 7)
!4098 = !DILocation(line: 0, scope: !4081)
!4099 = !DILocation(line: 89, column: 3, scope: !4081)
!4100 = !DILocation(line: 105, column: 9, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4081, file: !781, line: 105, column: 7)
!4102 = !DILocation(line: 105, column: 7, scope: !4081)
!4103 = !DILocation(line: 145, column: 9, scope: !4081)
!4104 = !DILocation(line: 154, column: 19, scope: !4097)
!4105 = !DILocation(line: 154, column: 31, scope: !4097)
!4106 = !DILocation(line: 154, column: 26, scope: !4097)
!4107 = !DILocation(line: 154, column: 41, scope: !4097)
!4108 = !DILocation(line: 154, column: 7, scope: !4081)
!4109 = !DILocation(line: 156, column: 26, scope: !4096)
!4110 = !DILocation(line: 0, scope: !4096)
!4111 = !DILocation(line: 157, column: 14, scope: !4096)
!4112 = !DILocation(line: 157, column: 12, scope: !4096)
!4113 = !DILocation(line: 163, column: 1, scope: !4081)
!4114 = distinct !DISubprogram(name: "str2sig", scope: !642, file: !642, line: 304, type: !693, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !4115)
!4115 = !{!4116, !4117}
!4116 = !DILocalVariable(name: "signame", arg: 1, scope: !4114, file: !642, line: 304, type: !20)
!4117 = !DILocalVariable(name: "signum", arg: 2, scope: !4114, file: !642, line: 304, type: !119)
!4118 = !DILocation(line: 0, scope: !4114)
!4119 = !DILocalVariable(name: "signame", arg: 1, scope: !4120, file: !642, line: 261, type: !20)
!4120 = distinct !DISubprogram(name: "str2signum", scope: !642, file: !642, line: 261, type: !4121, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !4123)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!22, !20}
!4123 = !{!4119, !4124, !4127, !4128, !4130, !4132, !4133, !4134, !4137}
!4124 = !DILocalVariable(name: "endp", scope: !4125, file: !642, line: 265, type: !18)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !642, line: 264, column: 5)
!4126 = distinct !DILexicalBlock(scope: !4120, file: !642, line: 263, column: 7)
!4127 = !DILocalVariable(name: "n", scope: !4125, file: !642, line: 266, type: !53)
!4128 = !DILocalVariable(name: "i", scope: !4129, file: !642, line: 272, type: !7)
!4129 = distinct !DILexicalBlock(scope: !4126, file: !642, line: 271, column: 5)
!4130 = !DILocalVariable(name: "endp", scope: !4131, file: !642, line: 278, type: !18)
!4131 = distinct !DILexicalBlock(scope: !4129, file: !642, line: 277, column: 7)
!4132 = !DILocalVariable(name: "rtmin", scope: !4131, file: !642, line: 279, type: !22)
!4133 = !DILocalVariable(name: "rtmax", scope: !4131, file: !642, line: 280, type: !22)
!4134 = !DILocalVariable(name: "n", scope: !4135, file: !642, line: 284, type: !53)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !642, line: 283, column: 11)
!4136 = distinct !DILexicalBlock(scope: !4131, file: !642, line: 282, column: 13)
!4137 = !DILocalVariable(name: "n", scope: !4138, file: !642, line: 290, type: !53)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !642, line: 289, column: 11)
!4139 = distinct !DILexicalBlock(scope: !4136, file: !642, line: 288, column: 18)
!4140 = !DILocation(line: 0, scope: !4120, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 306, column: 13, scope: !4114)
!4142 = !DILocation(line: 263, column: 7, scope: !4126, inlinedAt: !4141)
!4143 = !DILocation(line: 263, column: 7, scope: !4120, inlinedAt: !4141)
!4144 = !DILocation(line: 265, column: 7, scope: !4125, inlinedAt: !4141)
!4145 = !DILocation(line: 0, scope: !4125, inlinedAt: !4141)
!4146 = !DILocation(line: 266, column: 20, scope: !4125, inlinedAt: !4141)
!4147 = !DILocation(line: 267, column: 14, scope: !4148, inlinedAt: !4141)
!4148 = distinct !DILexicalBlock(scope: !4125, file: !642, line: 267, column: 11)
!4149 = !DILocation(line: 267, column: 13, scope: !4148, inlinedAt: !4141)
!4150 = !DILocation(line: 267, column: 24, scope: !4148, inlinedAt: !4141)
!4151 = !DILocation(line: 268, column: 16, scope: !4148, inlinedAt: !4141)
!4152 = !DILocation(line: 267, column: 19, scope: !4148, inlinedAt: !4141)
!4153 = !DILocation(line: 269, column: 5, scope: !4126, inlinedAt: !4141)
!4154 = !DILocation(line: 273, column: 41, scope: !4155, inlinedAt: !4141)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !642, line: 273, column: 7)
!4156 = distinct !DILexicalBlock(scope: !4129, file: !642, line: 273, column: 7)
!4157 = !DILocation(line: 0, scope: !4129, inlinedAt: !4141)
!4158 = !DILocation(line: 273, column: 21, scope: !4155, inlinedAt: !4141)
!4159 = !DILocation(line: 273, column: 7, scope: !4156, inlinedAt: !4141)
!4160 = distinct !{!4160, !4159, !4161}
!4161 = !DILocation(line: 275, column: 35, scope: !4156, inlinedAt: !4141)
!4162 = !DILocation(line: 274, column: 21, scope: !4163, inlinedAt: !4141)
!4163 = distinct !DILexicalBlock(scope: !4155, file: !642, line: 274, column: 13)
!4164 = !DILocation(line: 274, column: 13, scope: !4163, inlinedAt: !4141)
!4165 = !DILocation(line: 274, column: 53, scope: !4163, inlinedAt: !4141)
!4166 = !DILocation(line: 274, column: 13, scope: !4155, inlinedAt: !4141)
!4167 = !DILocation(line: 273, column: 19, scope: !4155, inlinedAt: !4141)
!4168 = !DILocation(line: 275, column: 35, scope: !4163, inlinedAt: !4141)
!4169 = !{!4170, !1511, i64 0}
!4170 = !{!"numname", !1511, i64 0, !1402, i64 4}
!4171 = !DILocation(line: 278, column: 9, scope: !4131, inlinedAt: !4141)
!4172 = !DILocation(line: 279, column: 21, scope: !4131, inlinedAt: !4141)
!4173 = !DILocation(line: 0, scope: !4131, inlinedAt: !4141)
!4174 = !DILocation(line: 280, column: 21, scope: !4131, inlinedAt: !4141)
!4175 = !DILocation(line: 282, column: 15, scope: !4136, inlinedAt: !4141)
!4176 = !DILocation(line: 282, column: 23, scope: !4136, inlinedAt: !4141)
!4177 = !DILocation(line: 282, column: 26, scope: !4136, inlinedAt: !4141)
!4178 = !DILocation(line: 282, column: 56, scope: !4136, inlinedAt: !4141)
!4179 = !DILocation(line: 282, column: 13, scope: !4131, inlinedAt: !4141)
!4180 = !DILocation(line: 284, column: 42, scope: !4135, inlinedAt: !4141)
!4181 = !DILocation(line: 284, column: 26, scope: !4135, inlinedAt: !4141)
!4182 = !DILocation(line: 0, scope: !4135, inlinedAt: !4141)
!4183 = !DILocation(line: 285, column: 20, scope: !4184, inlinedAt: !4141)
!4184 = distinct !DILexicalBlock(scope: !4135, file: !642, line: 285, column: 17)
!4185 = !DILocation(line: 285, column: 19, scope: !4184, inlinedAt: !4141)
!4186 = !DILocation(line: 285, column: 30, scope: !4184, inlinedAt: !4141)
!4187 = !DILocation(line: 285, column: 25, scope: !4184, inlinedAt: !4141)
!4188 = !DILocation(line: 285, column: 49, scope: !4184, inlinedAt: !4141)
!4189 = !DILocation(line: 285, column: 43, scope: !4184, inlinedAt: !4141)
!4190 = !DILocation(line: 285, column: 40, scope: !4184, inlinedAt: !4141)
!4191 = !DILocation(line: 285, column: 17, scope: !4135, inlinedAt: !4141)
!4192 = !DILocation(line: 288, column: 20, scope: !4139, inlinedAt: !4141)
!4193 = !DILocation(line: 288, column: 28, scope: !4139, inlinedAt: !4141)
!4194 = !DILocation(line: 288, column: 31, scope: !4139, inlinedAt: !4141)
!4195 = !DILocation(line: 288, column: 61, scope: !4139, inlinedAt: !4141)
!4196 = !DILocation(line: 288, column: 18, scope: !4136, inlinedAt: !4141)
!4197 = !DILocation(line: 290, column: 42, scope: !4138, inlinedAt: !4141)
!4198 = !DILocation(line: 290, column: 26, scope: !4138, inlinedAt: !4141)
!4199 = !DILocation(line: 0, scope: !4138, inlinedAt: !4141)
!4200 = !DILocation(line: 291, column: 20, scope: !4201, inlinedAt: !4141)
!4201 = distinct !DILexicalBlock(scope: !4138, file: !642, line: 291, column: 17)
!4202 = !DILocation(line: 291, column: 19, scope: !4201, inlinedAt: !4141)
!4203 = !DILocation(line: 291, column: 25, scope: !4201, inlinedAt: !4141)
!4204 = !DILocation(line: 291, column: 34, scope: !4201, inlinedAt: !4141)
!4205 = !DILocation(line: 291, column: 28, scope: !4201, inlinedAt: !4141)
!4206 = !DILocation(line: 291, column: 42, scope: !4201, inlinedAt: !4141)
!4207 = !DILocation(line: 291, column: 52, scope: !4201, inlinedAt: !4141)
!4208 = !DILocation(line: 291, column: 47, scope: !4201, inlinedAt: !4141)
!4209 = !DILocation(line: 294, column: 7, scope: !4129, inlinedAt: !4141)
!4210 = !DILocation(line: 0, scope: !4136, inlinedAt: !4141)
!4211 = !DILocation(line: 297, column: 3, scope: !4120, inlinedAt: !4141)
!4212 = !DILocation(line: 306, column: 11, scope: !4114)
!4213 = !DILocation(line: 307, column: 10, scope: !4114)
!4214 = !DILocation(line: 307, column: 3, scope: !4114)
!4215 = distinct !DISubprogram(name: "sig2str", scope: !642, file: !642, line: 315, type: !290, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !4216)
!4216 = !{!4217, !4218, !4219, !4220, !4222, !4223, !4224}
!4217 = !DILocalVariable(name: "signum", arg: 1, scope: !4215, file: !642, line: 315, type: !22)
!4218 = !DILocalVariable(name: "signame", arg: 2, scope: !4215, file: !642, line: 315, type: !18)
!4219 = !DILocalVariable(name: "i", scope: !4215, file: !642, line: 317, type: !7)
!4220 = !DILocalVariable(name: "rtmin", scope: !4221, file: !642, line: 326, type: !22)
!4221 = distinct !DILexicalBlock(scope: !4215, file: !642, line: 325, column: 3)
!4222 = !DILocalVariable(name: "rtmax", scope: !4221, file: !642, line: 327, type: !22)
!4223 = !DILocalVariable(name: "base", scope: !4221, file: !642, line: 328, type: !22)
!4224 = !DILocalVariable(name: "delta", scope: !4221, file: !642, line: 328, type: !22)
!4225 = !DILocation(line: 0, scope: !4215)
!4226 = !DILocation(line: 318, column: 3, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4215, file: !642, line: 318, column: 3)
!4228 = !DILocation(line: 318, column: 37, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4227, file: !642, line: 318, column: 3)
!4230 = !DILocation(line: 319, column: 26, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4229, file: !642, line: 319, column: 9)
!4232 = !DILocation(line: 319, column: 30, scope: !4231)
!4233 = !DILocation(line: 319, column: 9, scope: !4229)
!4234 = !DILocation(line: 318, column: 15, scope: !4229)
!4235 = !DILocation(line: 321, column: 26, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4231, file: !642, line: 320, column: 7)
!4237 = !DILocalVariable(name: "__dest", arg: 1, scope: !4238, file: !2592, line: 88, type: !4241)
!4238 = distinct !DISubprogram(name: "strcpy", scope: !2592, file: !2592, line: 88, type: !4239, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !4243)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!18, !4241, !4242}
!4241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!4242 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!4243 = !{!4237, !4244}
!4244 = !DILocalVariable(name: "__src", arg: 2, scope: !4238, file: !2592, line: 88, type: !4242)
!4245 = !DILocation(line: 0, scope: !4238, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 321, column: 9, scope: !4236)
!4247 = !DILocation(line: 90, column: 10, scope: !4238, inlinedAt: !4246)
!4248 = !DILocation(line: 322, column: 9, scope: !4236)
!4249 = !DILocation(line: 326, column: 17, scope: !4221)
!4250 = !DILocation(line: 0, scope: !4221)
!4251 = !DILocation(line: 327, column: 17, scope: !4221)
!4252 = !DILocation(line: 330, column: 18, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4221, file: !642, line: 330, column: 9)
!4254 = !DILocation(line: 330, column: 38, scope: !4253)
!4255 = !DILocation(line: 330, column: 28, scope: !4253)
!4256 = !DILocation(line: 333, column: 34, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4221, file: !642, line: 333, column: 9)
!4258 = !DILocation(line: 333, column: 43, scope: !4257)
!4259 = !DILocation(line: 333, column: 25, scope: !4257)
!4260 = !DILocation(line: 333, column: 16, scope: !4257)
!4261 = !DILocation(line: 0, scope: !4238, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 340, column: 9, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4257, file: !642, line: 339, column: 7)
!4264 = !DILocation(line: 0, scope: !4238, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 335, column: 9, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4257, file: !642, line: 334, column: 7)
!4267 = !DILocation(line: 333, column: 9, scope: !4221)
!4268 = !DILocation(line: 90, column: 10, scope: !4238, inlinedAt: !4265)
!4269 = !DILocation(line: 337, column: 7, scope: !4266)
!4270 = !DILocation(line: 90, column: 10, scope: !4238, inlinedAt: !4262)
!4271 = !DILocation(line: 0, scope: !4257)
!4272 = !DILocation(line: 344, column: 20, scope: !4221)
!4273 = !DILocation(line: 345, column: 15, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4221, file: !642, line: 345, column: 9)
!4275 = !DILocation(line: 345, column: 9, scope: !4221)
!4276 = !DILocation(line: 346, column: 7, scope: !4274)
!4277 = !DILocation(line: 349, column: 1, scope: !4215)
!4278 = !DILocation(line: 318, column: 17, scope: !4229)
!4279 = distinct !{!4279, !4226, !4280}
!4280 = !DILocation(line: 323, column: 7, scope: !4227)
!4281 = distinct !DISubprogram(name: "c_strtod", scope: !656, file: !656, line: 65, type: !183, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4282)
!4282 = !{!4283, !4284, !4285, !4286}
!4283 = !DILocalVariable(name: "nptr", arg: 1, scope: !4281, file: !656, line: 65, type: !20)
!4284 = !DILocalVariable(name: "endptr", arg: 2, scope: !4281, file: !656, line: 65, type: !185)
!4285 = !DILocalVariable(name: "r", scope: !4281, file: !656, line: 67, type: !181)
!4286 = !DILocalVariable(name: "locale", scope: !4281, file: !656, line: 73, type: !680)
!4287 = !DILocation(line: 0, scope: !4281)
!4288 = !DILocation(line: 57, column: 8, scope: !4289, inlinedAt: !4293)
!4289 = distinct !DILexicalBlock(scope: !4290, file: !656, line: 57, column: 7)
!4290 = distinct !DISubprogram(name: "c_locale", scope: !656, file: !656, line: 55, type: !4291, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !23)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!680}
!4293 = distinct !DILocation(line: 73, column: 21, scope: !4281)
!4294 = !DILocation(line: 57, column: 7, scope: !4290, inlinedAt: !4293)
!4295 = !DILocation(line: 58, column: 22, scope: !4289, inlinedAt: !4293)
!4296 = !DILocation(line: 58, column: 20, scope: !4289, inlinedAt: !4293)
!4297 = !DILocation(line: 58, column: 5, scope: !4289, inlinedAt: !4293)
!4298 = !DILocation(line: 59, column: 10, scope: !4290, inlinedAt: !4293)
!4299 = !DILocation(line: 74, column: 8, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4281, file: !656, line: 74, column: 7)
!4301 = !DILocation(line: 74, column: 7, scope: !4281)
!4302 = !DILocation(line: 76, column: 11, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !656, line: 76, column: 11)
!4304 = distinct !DILexicalBlock(scope: !4300, file: !656, line: 75, column: 5)
!4305 = !DILocation(line: 76, column: 11, scope: !4304)
!4306 = !DILocation(line: 77, column: 17, scope: !4303)
!4307 = !DILocation(line: 77, column: 9, scope: !4303)
!4308 = !DILocation(line: 83, column: 7, scope: !4281)
!4309 = !DILocation(line: 134, column: 3, scope: !4281)
!4310 = !DILocation(line: 135, column: 1, scope: !4281)
!4311 = distinct !DISubprogram(name: "close_stream", scope: !800, file: !800, line: 56, type: !4312, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !4316)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!22, !4314}
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3649, line: 7, baseType: !807)
!4316 = !{!4317, !4318, !4320, !4321}
!4317 = !DILocalVariable(name: "stream", arg: 1, scope: !4311, file: !800, line: 56, type: !4314)
!4318 = !DILocalVariable(name: "some_pending", scope: !4311, file: !800, line: 58, type: !4319)
!4319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!4320 = !DILocalVariable(name: "prev_fail", scope: !4311, file: !800, line: 59, type: !4319)
!4321 = !DILocalVariable(name: "fclose_fail", scope: !4311, file: !800, line: 60, type: !4319)
!4322 = !DILocation(line: 0, scope: !4311)
!4323 = !DILocation(line: 58, column: 30, scope: !4311)
!4324 = !DILocalVariable(name: "__stream", arg: 1, scope: !4325, file: !4326, line: 135, type: !4314)
!4325 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4326, file: !4326, line: 135, type: !4312, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !4327)
!4326 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4327 = !{!4324}
!4328 = !DILocation(line: 0, scope: !4325, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 59, column: 27, scope: !4311)
!4330 = !DILocation(line: 137, column: 10, scope: !4325, inlinedAt: !4329)
!4331 = !{!4332, !1511, i64 0}
!4332 = !{!"_IO_FILE", !1511, i64 0, !1401, i64 8, !1401, i64 16, !1401, i64 24, !1401, i64 32, !1401, i64 40, !1401, i64 48, !1401, i64 56, !1401, i64 64, !1401, i64 72, !1401, i64 80, !1401, i64 88, !1401, i64 96, !1401, i64 104, !1511, i64 112, !1511, i64 116, !1880, i64 120, !2585, i64 128, !1402, i64 130, !1402, i64 131, !1401, i64 136, !1880, i64 144, !1401, i64 152, !1401, i64 160, !1401, i64 168, !1401, i64 176, !1880, i64 184, !1511, i64 192, !1402, i64 196}
!4333 = !DILocation(line: 59, column: 43, scope: !4311)
!4334 = !DILocation(line: 60, column: 29, scope: !4311)
!4335 = !DILocation(line: 60, column: 45, scope: !4311)
!4336 = !DILocation(line: 70, column: 17, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4311, file: !800, line: 70, column: 7)
!4338 = !DILocation(line: 58, column: 50, scope: !4311)
!4339 = !DILocation(line: 70, column: 33, scope: !4337)
!4340 = !DILocation(line: 70, column: 53, scope: !4337)
!4341 = !DILocation(line: 70, column: 59, scope: !4337)
!4342 = !DILocation(line: 70, column: 7, scope: !4311)
!4343 = !DILocation(line: 72, column: 11, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4337, file: !800, line: 71, column: 5)
!4345 = !DILocation(line: 73, column: 9, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4344, file: !800, line: 72, column: 11)
!4347 = !DILocation(line: 73, column: 15, scope: !4346)
!4348 = !DILocation(line: 78, column: 1, scope: !4311)
!4349 = distinct !DISubprogram(name: "hard_locale", scope: !839, file: !839, line: 27, type: !797, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !838, retainedNodes: !4350)
!4350 = !{!4351, !4352}
!4351 = !DILocalVariable(name: "category", arg: 1, scope: !4349, file: !839, line: 27, type: !22)
!4352 = !DILocalVariable(name: "locale", scope: !4349, file: !839, line: 29, type: !4353)
!4353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2056, elements: !4354)
!4354 = !{!4355}
!4355 = !DISubrange(count: 257)
!4356 = !DILocation(line: 0, scope: !4349)
!4357 = !DILocation(line: 29, column: 3, scope: !4349)
!4358 = !DILocation(line: 29, column: 8, scope: !4349)
!4359 = !DILocation(line: 31, column: 7, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4349, file: !839, line: 31, column: 7)
!4361 = !DILocation(line: 31, column: 7, scope: !4349)
!4362 = !DILocation(line: 34, column: 12, scope: !4349)
!4363 = !DILocation(line: 34, column: 38, scope: !4349)
!4364 = !DILocation(line: 34, column: 41, scope: !4349)
!4365 = !DILocation(line: 34, column: 66, scope: !4349)
!4366 = !DILocation(line: 35, column: 1, scope: !4349)
!4367 = distinct !DISubprogram(name: "locale_charset", scope: !846, file: !846, line: 831, type: !587, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !845, retainedNodes: !4368)
!4368 = !{!4369}
!4369 = !DILocalVariable(name: "codeset", scope: !4367, file: !846, line: 833, type: !20)
!4370 = !DILocation(line: 847, column: 13, scope: !4367)
!4371 = !DILocation(line: 0, scope: !4367)
!4372 = !DILocation(line: 911, column: 15, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4367, file: !846, line: 911, column: 7)
!4374 = !DILocation(line: 911, column: 7, scope: !4367)
!4375 = !DILocation(line: 1070, column: 13, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4377, file: !846, line: 1070, column: 13)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !846, line: 1060, column: 7)
!4378 = distinct !DILexicalBlock(scope: !4367, file: !846, line: 1019, column: 3)
!4379 = !DILocation(line: 1070, column: 24, scope: !4376)
!4380 = !DILocation(line: 1070, column: 13, scope: !4377)
!4381 = !DILocation(line: 1158, column: 3, scope: !4367)
!4382 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1239, file: !1239, line: 269, type: !4383, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1238, retainedNodes: !4385)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!22, !22, !18, !77}
!4385 = !{!4386, !4387, !4388}
!4386 = !DILocalVariable(name: "category", arg: 1, scope: !4382, file: !1239, line: 269, type: !22)
!4387 = !DILocalVariable(name: "buf", arg: 2, scope: !4382, file: !1239, line: 269, type: !18)
!4388 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4382, file: !1239, line: 269, type: !77)
!4389 = !DILocation(line: 0, scope: !4382)
!4390 = !DILocalVariable(name: "category", arg: 1, scope: !4391, file: !1239, line: 91, type: !22)
!4391 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1239, file: !1239, line: 91, type: !4383, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1238, retainedNodes: !4392)
!4392 = !{!4390, !4393, !4394, !4395, !4396}
!4393 = !DILocalVariable(name: "buf", arg: 2, scope: !4391, file: !1239, line: 91, type: !18)
!4394 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4391, file: !1239, line: 91, type: !77)
!4395 = !DILocalVariable(name: "result", scope: !4391, file: !1239, line: 140, type: !20)
!4396 = !DILocalVariable(name: "length", scope: !4397, file: !1239, line: 154, type: !77)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !1239, line: 153, column: 5)
!4398 = distinct !DILexicalBlock(scope: !4391, file: !1239, line: 142, column: 7)
!4399 = !DILocation(line: 0, scope: !4391, inlinedAt: !4400)
!4400 = distinct !DILocation(line: 274, column: 10, scope: !4382)
!4401 = !DILocalVariable(name: "category", arg: 1, scope: !4402, file: !1239, line: 60, type: !22)
!4402 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1239, file: !1239, line: 60, type: !4403, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1238, retainedNodes: !4405)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!20, !22}
!4405 = !{!4401, !4406}
!4406 = !DILocalVariable(name: "result", scope: !4402, file: !1239, line: 62, type: !20)
!4407 = !DILocation(line: 0, scope: !4402, inlinedAt: !4408)
!4408 = distinct !DILocation(line: 140, column: 24, scope: !4391, inlinedAt: !4400)
!4409 = !DILocation(line: 62, column: 24, scope: !4402, inlinedAt: !4408)
!4410 = !DILocation(line: 142, column: 14, scope: !4398, inlinedAt: !4400)
!4411 = !DILocation(line: 142, column: 7, scope: !4391, inlinedAt: !4400)
!4412 = !DILocation(line: 145, column: 19, scope: !4413, inlinedAt: !4400)
!4413 = distinct !DILexicalBlock(scope: !4414, file: !1239, line: 145, column: 11)
!4414 = distinct !DILexicalBlock(scope: !4398, file: !1239, line: 143, column: 5)
!4415 = !DILocation(line: 145, column: 11, scope: !4414, inlinedAt: !4400)
!4416 = !DILocation(line: 149, column: 16, scope: !4413, inlinedAt: !4400)
!4417 = !DILocation(line: 149, column: 9, scope: !4413, inlinedAt: !4400)
!4418 = !DILocation(line: 154, column: 23, scope: !4397, inlinedAt: !4400)
!4419 = !DILocation(line: 0, scope: !4397, inlinedAt: !4400)
!4420 = !DILocation(line: 155, column: 18, scope: !4421, inlinedAt: !4400)
!4421 = distinct !DILexicalBlock(scope: !4397, file: !1239, line: 155, column: 11)
!4422 = !DILocation(line: 155, column: 11, scope: !4397, inlinedAt: !4400)
!4423 = !DILocation(line: 157, column: 39, scope: !4424, inlinedAt: !4400)
!4424 = distinct !DILexicalBlock(scope: !4421, file: !1239, line: 156, column: 9)
!4425 = !DILocalVariable(name: "__dest", arg: 1, scope: !4426, file: !2592, line: 31, type: !3988)
!4426 = distinct !DISubprogram(name: "memcpy", scope: !2592, file: !2592, line: 31, type: !3986, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1238, retainedNodes: !4427)
!4427 = !{!4425, !4428, !4429}
!4428 = !DILocalVariable(name: "__src", arg: 2, scope: !4426, file: !2592, line: 31, type: !3989)
!4429 = !DILocalVariable(name: "__len", arg: 3, scope: !4426, file: !2592, line: 31, type: !77)
!4430 = !DILocation(line: 0, scope: !4426, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 157, column: 11, scope: !4424, inlinedAt: !4400)
!4432 = !DILocation(line: 34, column: 10, scope: !4426, inlinedAt: !4431)
!4433 = !DILocation(line: 158, column: 11, scope: !4424, inlinedAt: !4400)
!4434 = !DILocation(line: 162, column: 23, scope: !4435, inlinedAt: !4400)
!4435 = distinct !DILexicalBlock(scope: !4436, file: !1239, line: 162, column: 15)
!4436 = distinct !DILexicalBlock(scope: !4421, file: !1239, line: 161, column: 9)
!4437 = !DILocation(line: 162, column: 15, scope: !4436, inlinedAt: !4400)
!4438 = !DILocation(line: 167, column: 44, scope: !4439, inlinedAt: !4400)
!4439 = distinct !DILexicalBlock(scope: !4435, file: !1239, line: 163, column: 13)
!4440 = !DILocation(line: 0, scope: !4426, inlinedAt: !4441)
!4441 = distinct !DILocation(line: 167, column: 15, scope: !4439, inlinedAt: !4400)
!4442 = !DILocation(line: 34, column: 10, scope: !4426, inlinedAt: !4441)
!4443 = !DILocation(line: 168, column: 15, scope: !4439, inlinedAt: !4400)
!4444 = !DILocation(line: 168, column: 32, scope: !4439, inlinedAt: !4400)
!4445 = !DILocation(line: 169, column: 13, scope: !4439, inlinedAt: !4400)
!4446 = !DILocation(line: 0, scope: !4398, inlinedAt: !4400)
!4447 = !DILocation(line: 274, column: 3, scope: !4382)
!4448 = distinct !DISubprogram(name: "setlocale_null", scope: !1239, file: !1239, line: 301, type: !4403, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1238, retainedNodes: !4449)
!4449 = !{!4450}
!4450 = !DILocalVariable(name: "category", arg: 1, scope: !4448, file: !1239, line: 301, type: !22)
!4451 = !DILocation(line: 0, scope: !4448)
!4452 = !DILocation(line: 0, scope: !4402, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 304, column: 10, scope: !4448)
!4454 = !DILocation(line: 62, column: 24, scope: !4402, inlinedAt: !4453)
!4455 = !DILocation(line: 304, column: 3, scope: !4448)
!4456 = distinct !DISubprogram(name: "rpl_fclose", scope: !1242, file: !1242, line: 58, type: !4457, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1241, retainedNodes: !4461)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!22, !4459}
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3649, line: 7, baseType: !1248)
!4461 = !{!4462, !4463, !4464, !4465}
!4462 = !DILocalVariable(name: "fp", arg: 1, scope: !4456, file: !1242, line: 58, type: !4459)
!4463 = !DILocalVariable(name: "saved_errno", scope: !4456, file: !1242, line: 60, type: !22)
!4464 = !DILocalVariable(name: "fd", scope: !4456, file: !1242, line: 61, type: !22)
!4465 = !DILocalVariable(name: "result", scope: !4456, file: !1242, line: 62, type: !22)
!4466 = !DILocation(line: 0, scope: !4456)
!4467 = !DILocation(line: 65, column: 8, scope: !4456)
!4468 = !DILocation(line: 66, column: 10, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4456, file: !1242, line: 66, column: 7)
!4470 = !DILocation(line: 66, column: 7, scope: !4456)
!4471 = !DILocation(line: 67, column: 12, scope: !4469)
!4472 = !DILocation(line: 67, column: 5, scope: !4469)
!4473 = !DILocation(line: 72, column: 9, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4456, file: !1242, line: 72, column: 7)
!4475 = !DILocation(line: 72, column: 23, scope: !4474)
!4476 = !DILocation(line: 72, column: 33, scope: !4474)
!4477 = !DILocation(line: 72, column: 26, scope: !4474)
!4478 = !DILocation(line: 72, column: 59, scope: !4474)
!4479 = !DILocation(line: 73, column: 7, scope: !4474)
!4480 = !DILocation(line: 73, column: 10, scope: !4474)
!4481 = !DILocation(line: 72, column: 7, scope: !4456)
!4482 = !DILocation(line: 100, column: 12, scope: !4456)
!4483 = !DILocation(line: 105, column: 7, scope: !4456)
!4484 = !DILocation(line: 74, column: 19, scope: !4474)
!4485 = !DILocation(line: 105, column: 19, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4456, file: !1242, line: 105, column: 7)
!4487 = !DILocation(line: 107, column: 13, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4486, file: !1242, line: 106, column: 5)
!4489 = !DILocation(line: 109, column: 5, scope: !4488)
!4490 = !DILocation(line: 112, column: 1, scope: !4456)
!4491 = distinct !DISubprogram(name: "rpl_fflush", scope: !1285, file: !1285, line: 129, type: !4492, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1284, retainedNodes: !4496)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!22, !4494}
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3649, line: 7, baseType: !1291)
!4496 = !{!4497}
!4497 = !DILocalVariable(name: "stream", arg: 1, scope: !4491, file: !1285, line: 129, type: !4494)
!4498 = !DILocation(line: 0, scope: !4491)
!4499 = !DILocation(line: 150, column: 14, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4491, file: !1285, line: 150, column: 7)
!4501 = !DILocation(line: 150, column: 22, scope: !4500)
!4502 = !DILocation(line: 150, column: 27, scope: !4500)
!4503 = !DILocation(line: 150, column: 7, scope: !4491)
!4504 = !DILocation(line: 151, column: 12, scope: !4500)
!4505 = !DILocation(line: 151, column: 5, scope: !4500)
!4506 = !DILocalVariable(name: "fp", arg: 1, scope: !4507, file: !1285, line: 41, type: !4494)
!4507 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1285, file: !1285, line: 41, type: !4508, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1284, retainedNodes: !4510)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{null, !4494}
!4510 = !{!4506}
!4511 = !DILocation(line: 0, scope: !4507, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 156, column: 3, scope: !4491)
!4513 = !DILocation(line: 43, column: 11, scope: !4514, inlinedAt: !4512)
!4514 = distinct !DILexicalBlock(scope: !4507, file: !1285, line: 43, column: 7)
!4515 = !DILocation(line: 43, column: 18, scope: !4514, inlinedAt: !4512)
!4516 = !DILocation(line: 43, column: 7, scope: !4507, inlinedAt: !4512)
!4517 = !DILocation(line: 45, column: 5, scope: !4514, inlinedAt: !4512)
!4518 = !DILocation(line: 158, column: 10, scope: !4491)
!4519 = !DILocation(line: 158, column: 3, scope: !4491)
!4520 = !DILocation(line: 235, column: 1, scope: !4491)
!4521 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1326, file: !1326, line: 28, type: !4522, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1325, retainedNodes: !4527)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!22, !4524, !4526, !22}
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3649, line: 7, baseType: !1332)
!4526 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !25, line: 63, baseType: !51)
!4527 = !{!4528, !4529, !4530, !4531}
!4528 = !DILocalVariable(name: "fp", arg: 1, scope: !4521, file: !1326, line: 28, type: !4524)
!4529 = !DILocalVariable(name: "offset", arg: 2, scope: !4521, file: !1326, line: 28, type: !4526)
!4530 = !DILocalVariable(name: "whence", arg: 3, scope: !4521, file: !1326, line: 28, type: !22)
!4531 = !DILocalVariable(name: "pos", scope: !4532, file: !1326, line: 117, type: !4526)
!4532 = distinct !DILexicalBlock(scope: !4533, file: !1326, line: 113, column: 5)
!4533 = distinct !DILexicalBlock(scope: !4521, file: !1326, line: 52, column: 7)
!4534 = !DILocation(line: 0, scope: !4521)
!4535 = !DILocation(line: 52, column: 11, scope: !4533)
!4536 = !{!4332, !1401, i64 16}
!4537 = !DILocation(line: 52, column: 31, scope: !4533)
!4538 = !{!4332, !1401, i64 8}
!4539 = !DILocation(line: 52, column: 24, scope: !4533)
!4540 = !DILocation(line: 53, column: 7, scope: !4533)
!4541 = !DILocation(line: 53, column: 14, scope: !4533)
!4542 = !{!4332, !1401, i64 40}
!4543 = !DILocation(line: 53, column: 35, scope: !4533)
!4544 = !{!4332, !1401, i64 32}
!4545 = !DILocation(line: 53, column: 28, scope: !4533)
!4546 = !DILocation(line: 54, column: 7, scope: !4533)
!4547 = !DILocation(line: 54, column: 14, scope: !4533)
!4548 = !{!4332, !1401, i64 72}
!4549 = !DILocation(line: 54, column: 28, scope: !4533)
!4550 = !DILocation(line: 52, column: 7, scope: !4521)
!4551 = !DILocation(line: 117, column: 26, scope: !4532)
!4552 = !DILocation(line: 117, column: 19, scope: !4532)
!4553 = !DILocation(line: 0, scope: !4532)
!4554 = !DILocation(line: 118, column: 15, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4532, file: !1326, line: 118, column: 11)
!4556 = !DILocation(line: 118, column: 11, scope: !4532)
!4557 = !DILocation(line: 129, column: 11, scope: !4532)
!4558 = !DILocation(line: 129, column: 18, scope: !4532)
!4559 = !DILocation(line: 130, column: 11, scope: !4532)
!4560 = !DILocation(line: 130, column: 19, scope: !4532)
!4561 = !{!4332, !1880, i64 144}
!4562 = !DILocation(line: 161, column: 7, scope: !4532)
!4563 = !DILocation(line: 163, column: 10, scope: !4521)
!4564 = !DILocation(line: 163, column: 3, scope: !4521)
!4565 = !DILocation(line: 164, column: 1, scope: !4521)
