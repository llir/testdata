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
@kill_after = internal unnamed_addr global double 0.000000e+00, align 8, !dbg !33
@term_signal = internal unnamed_addr global i32 15, align 4, !dbg !47
@verbose = internal unnamed_addr global i1 false, align 1, !dbg !61
@foreground = internal unnamed_addr global i1 false, align 1, !dbg !62
@preserve_status = internal unnamed_addr global i1 false, align 1, !dbg !63
@.str.15 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@command = internal unnamed_addr global i8* null, align 8, !dbg !43
@monitored_pid = internal unnamed_addr global i32 0, align 4, !dbg !27
@.str.16 = private unnamed_addr constant [24 x i8] c"fork system call failed\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"warning: sigprocmask\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"error waiting for command\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"the monitored command dumped core\00", align 1
@timed_out = internal unnamed_addr global i1 false, align 4, !dbg !64
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), align 8, !dbg !65
@.str.55 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !71
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !76
@.str.60 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.61 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.62 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !78
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !84
@.str.71 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.72 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.73 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.75, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.77, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.78, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.79, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.82, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.83, i32 0, i32 0), i8* null], align 16, !dbg !90
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !135
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !141
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !151
@.str.11.84 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.85 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.86 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.87 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.88 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.89 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.90 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !158
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !165
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !153
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !167
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !173
@.str.1.132 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !181
@.str.142 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.146 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !195
@.str.149 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.154 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.157 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.158 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !680 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !682, metadata !DIExpression()), !dbg !683
  %3 = icmp eq i32 %0, 0, !dbg !684
  br i1 %3, label %9, label %4, !dbg !686

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !687, !tbaa !689
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #28, !dbg !687
  %7 = load i8*, i8** @program_name, align 8, !dbg !687, !tbaa !689
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #28, !dbg !687
  br label %73, !dbg !687

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 5) #28, !dbg !693
  %11 = load i8*, i8** @program_name, align 8, !dbg !693, !tbaa !689
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #28, !dbg !693
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 5) #28, !dbg !695
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !695, !tbaa !689
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !695
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #28, !dbg !696
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !696, !tbaa !689
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #28, !dbg !696
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([732 x i8], [732 x i8]* @.str.3, i64 0, i64 0), i32 5) #28, !dbg !701
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !701, !tbaa !689
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !701
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 5) #28, !dbg !702
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !702, !tbaa !689
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !702
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #28, !dbg !703
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !689
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !703
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #28, !dbg !704
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !689
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !704
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i64 0, i64 0), i32 5) #28, !dbg !705
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705, !tbaa !689
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !705
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([415 x i8], [415 x i8]* @.str.8, i64 0, i64 0), i32 5) #28, !dbg !706
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !706, !tbaa !689
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !706
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), metadata !707, metadata !DIExpression()) #28, !dbg !725
  %37 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !727
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %37) #28, !dbg !727
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !712, metadata !DIExpression()) #28, !dbg !728
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %37, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #28, !dbg !728
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), metadata !721, metadata !DIExpression()) #28, !dbg !725
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !722, metadata !DIExpression()) #28, !dbg !725
  %38 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !729
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !722, metadata !DIExpression()) #28, !dbg !725
  br label %39, !dbg !730

39:                                               ; preds = %44, %9
  %40 = phi i8* [ %47, %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %41 = phi %struct.infomap* [ %45, %44 ], [ %38, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !722, metadata !DIExpression()) #28, !dbg !725
  %42 = tail call i32 @strcmp(i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %40) #29, !dbg !731
  %43 = icmp eq i32 %42, 0, !dbg !731
  br i1 %43, label %49, label %44, !dbg !730

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 1, !dbg !732
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !722, metadata !DIExpression()) #28, !dbg !725
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 0, i32 0, !dbg !733
  %47 = load i8*, i8** %46, align 8, !dbg !733, !tbaa !734
  %48 = icmp eq i8* %47, null, !dbg !736
  br i1 %48, label %49, label %39, !dbg !737, !llvm.loop !738

49:                                               ; preds = %44, %39
  %50 = phi %struct.infomap* [ %41, %39 ], [ %45, %44 ]
  %51 = getelementptr inbounds %struct.infomap, %struct.infomap* %50, i64 0, i32 1, !dbg !740
  %52 = load i8*, i8** %51, align 8, !dbg !740, !tbaa !742
  %53 = icmp eq i8* %52, null, !dbg !743
  %54 = select i1 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %52, !dbg !744
  call void @llvm.dbg.value(metadata i8* %54, metadata !721, metadata !DIExpression()) #28, !dbg !725
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #28, !dbg !745
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #28, !dbg !745
  %57 = tail call i8* @setlocale(i32 5, i8* null) #28, !dbg !746
  call void @llvm.dbg.value(metadata i8* %57, metadata !724, metadata !DIExpression()) #28, !dbg !725
  %58 = icmp eq i8* %57, null, !dbg !747
  br i1 %58, label %66, label %59, !dbg !749

59:                                               ; preds = %49
  %60 = tail call i32 @strncmp(i8* nonnull %57, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #29, !dbg !750
  %61 = icmp eq i32 %60, 0, !dbg !750
  br i1 %61, label %66, label %62, !dbg !751

62:                                               ; preds = %59
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #28, !dbg !752
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !752, !tbaa !689
  %65 = tail call i32 @fputs_unlocked(i8* %63, %struct._IO_FILE* %64) #28, !dbg !752
  br label %66, !dbg !754

66:                                               ; preds = %49, %59, %62
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #28, !dbg !755
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #28, !dbg !755
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #28, !dbg !756
  %70 = icmp eq i8* %54, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), !dbg !756
  %71 = select i1 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !756
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %69, i8* %54, i8* %71) #28, !dbg !756
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %37) #28, !dbg !757
  br label %73

73:                                               ; preds = %66, %4
  tail call void @exit(i32 %0) #30, !dbg !758
  unreachable, !dbg !758
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !759 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !763 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !816 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !820 {
  %3 = alloca %struct.__sigset_t, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca [19 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.__sigset_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !825, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i8** %1, metadata !826, metadata !DIExpression()), !dbg !857
  %9 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0, !dbg !858
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %9) #28, !dbg !858
  call void @llvm.dbg.declare(metadata [19 x i8]* %6, metadata !828, metadata !DIExpression()), !dbg !859
  %10 = load i8*, i8** %1, align 8, !dbg !860, !tbaa !689
  tail call void @set_program_name(i8* %10) #28, !dbg !861
  %11 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #28, !dbg !862
  %12 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #28, !dbg !863
  %13 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #28, !dbg !864
  call void @llvm.dbg.value(metadata i32 125, metadata !865, metadata !DIExpression()), !dbg !868
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !870, !tbaa !872
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #28, !dbg !874
  br label %15, !dbg !875

15:                                               ; preds = %24, %2
  %16 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #28, !dbg !876
  call void @llvm.dbg.value(metadata i32 %16, metadata !832, metadata !DIExpression()), !dbg !857
  switch i32 %16, label %33 [
    i32 -1, label %34
    i32 107, label %17
    i32 115, label %20
    i32 118, label %26
    i32 128, label %27
    i32 129, label %28
    i32 -130, label %29
    i32 -131, label %30
  ], !dbg !875

17:                                               ; preds = %15
  %18 = load i8*, i8** @optarg, align 8, !dbg !877, !tbaa !689
  %19 = call fastcc double @parse_duration(i8* %18), !dbg !880
  store double %19, double* @kill_after, align 8, !dbg !881, !tbaa !882
  br label %24, !dbg !884

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8, !dbg !885, !tbaa !689
  %22 = call i32 @operand2sig(i8* %21, i8* nonnull %9) #28, !dbg !886
  store i32 %22, i32* @term_signal, align 4, !dbg !887, !tbaa !872
  %23 = icmp eq i32 %22, -1, !dbg !888
  br i1 %23, label %25, label %24, !dbg !890

24:                                               ; preds = %20, %28, %27, %26, %17
  br label %15, !dbg !876, !llvm.loop !891

25:                                               ; preds = %20
  call void @usage(i32 125) #31, !dbg !893
  unreachable, !dbg !893

26:                                               ; preds = %15
  store i1 true, i1* @verbose, align 1, !dbg !894
  br label %24, !dbg !895

27:                                               ; preds = %15
  store i1 true, i1* @foreground, align 1, !dbg !896
  br label %24, !dbg !897

28:                                               ; preds = %15
  store i1 true, i1* @preserve_status, align 1, !dbg !898
  br label %24, !dbg !899

29:                                               ; preds = %15
  call void @usage(i32 0) #31, !dbg !900
  unreachable, !dbg !900

30:                                               ; preds = %15
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !901, !tbaa !689
  %32 = load i8*, i8** @Version, align 8, !dbg !901, !tbaa !689
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* null) #28, !dbg !901
  call void @exit(i32 0) #30, !dbg !901
  unreachable, !dbg !901

33:                                               ; preds = %15
  call void @usage(i32 125) #31, !dbg !902
  unreachable, !dbg !902

34:                                               ; preds = %15
  %35 = load i32, i32* @optind, align 4, !dbg !903, !tbaa !872
  %36 = sub nsw i32 %0, %35, !dbg !905
  %37 = icmp slt i32 %36, 2, !dbg !906
  br i1 %37, label %38, label %39, !dbg !907

38:                                               ; preds = %34
  call void @usage(i32 125) #31, !dbg !908
  unreachable, !dbg !908

39:                                               ; preds = %34
  %40 = add nsw i32 %35, 1, !dbg !909
  store i32 %40, i32* @optind, align 4, !dbg !909, !tbaa !872
  %41 = sext i32 %35 to i64, !dbg !910
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41, !dbg !910
  %43 = load i8*, i8** %42, align 8, !dbg !910, !tbaa !689
  %44 = call fastcc double @parse_duration(i8* %43), !dbg !911
  call void @llvm.dbg.value(metadata double %44, metadata !827, metadata !DIExpression()), !dbg !857
  %45 = load i32, i32* @optind, align 4, !dbg !912, !tbaa !872
  %46 = sext i32 %45 to i64, !dbg !913
  %47 = getelementptr inbounds i8*, i8** %1, i64 %46, !dbg !913
  call void @llvm.dbg.value(metadata i8** %47, metadata !826, metadata !DIExpression()), !dbg !857
  %48 = load i8*, i8** %47, align 8, !dbg !914, !tbaa !689
  store i8* %48, i8** @command, align 8, !dbg !915, !tbaa !689
  %49 = load i1, i1* @foreground, align 1, !dbg !916
  br i1 %49, label %52, label %50, !dbg !918

50:                                               ; preds = %39
  %51 = call i32 @setpgid(i32 0, i32 0) #28, !dbg !919
  br label %52, !dbg !919

52:                                               ; preds = %50, %39
  %53 = load i32, i32* @term_signal, align 4, !dbg !920, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %53, metadata !921, metadata !DIExpression()) #28, !dbg !1016
  %54 = bitcast %struct.sigaction* %5 to i8*, !dbg !1018
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %54) #28, !dbg !1018
  call void @llvm.dbg.declare(metadata %struct.sigaction* %5, metadata !924, metadata !DIExpression()) #28, !dbg !1019
  %55 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 1, !dbg !1020
  %56 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %55) #28, !dbg !1021
  %57 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 0, i32 0, !dbg !1022
  store void (i32)* @cleanup, void (i32)** %57, align 8, !dbg !1023, !tbaa !1024
  %58 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i64 0, i32 2, !dbg !1025
  store i32 268435456, i32* %58, align 8, !dbg !1026, !tbaa !1027
  %59 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %5, %struct.sigaction* null) #28, !dbg !1030
  %60 = call i32 @sigaction(i32 2, %struct.sigaction* nonnull %5, %struct.sigaction* null) #28, !dbg !1031
  %61 = call i32 @sigaction(i32 3, %struct.sigaction* nonnull %5, %struct.sigaction* null) #28, !dbg !1032
  %62 = call i32 @sigaction(i32 1, %struct.sigaction* nonnull %5, %struct.sigaction* null) #28, !dbg !1033
  %63 = call i32 @sigaction(i32 15, %struct.sigaction* nonnull %5, %struct.sigaction* null) #28, !dbg !1034
  %64 = call i32 @sigaction(i32 %53, %struct.sigaction* nonnull %5, %struct.sigaction* null) #28, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %54) #28, !dbg !1036
  %65 = call void (i32)* @signal(i32 21, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #28, !dbg !1037
  %66 = call void (i32)* @signal(i32 22, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #28, !dbg !1038
  %67 = bitcast %struct.sigaction* %4 to i8*, !dbg !1039
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %67) #28, !dbg !1039
  call void @llvm.dbg.declare(metadata %struct.sigaction* %4, metadata !1042, metadata !DIExpression()) #28, !dbg !1044
  %68 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 1, !dbg !1045
  %69 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %68) #28, !dbg !1046
  %70 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 0, i32 0, !dbg !1047
  store void (i32)* @chld, void (i32)** %70, align 8, !dbg !1048, !tbaa !1024
  %71 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 2, !dbg !1049
  store i32 268435456, i32* %71, align 8, !dbg !1050, !tbaa !1027
  %72 = call i32 @sigaction(i32 17, %struct.sigaction* nonnull %4, %struct.sigaction* null) #28, !dbg !1051
  call fastcc void @unblock_signal(i32 17) #28, !dbg !1052
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %67) #28, !dbg !1053
  %73 = call i32 @fork() #28, !dbg !1054
  store i32 %73, i32* @monitored_pid, align 4, !dbg !1055, !tbaa !872
  switch i32 %73, label %90 [
    i32 -1, label %74
    i32 0, label %78
  ], !dbg !1056

74:                                               ; preds = %52
  %75 = tail call i32* @__errno_location() #32, !dbg !1057
  %76 = load i32, i32* %75, align 4, !dbg !1057, !tbaa !872
  %77 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 5) #28, !dbg !1059
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %76, i8* %77) #28, !dbg !1060
  br label %164, !dbg !1061

78:                                               ; preds = %52
  %79 = call void (i32)* @signal(i32 21, void (i32)* null) #28, !dbg !1062
  %80 = call void (i32)* @signal(i32 22, void (i32)* null) #28, !dbg !1063
  %81 = load i8*, i8** %47, align 8, !dbg !1064, !tbaa !689
  %82 = call i32 @execvp(i8* %81, i8** nonnull %47) #28, !dbg !1065
  %83 = tail call i32* @__errno_location() #32, !dbg !1066
  %84 = load i32, i32* %83, align 4, !dbg !1066, !tbaa !872
  %85 = icmp eq i32 %84, 2, !dbg !1067
  %86 = select i1 %85, i32 127, i32 126, !dbg !1066
  call void @llvm.dbg.value(metadata i32 %86, metadata !833, metadata !DIExpression()), !dbg !1068
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 5) #28, !dbg !1069
  %88 = load i8*, i8** @command, align 8, !dbg !1070, !tbaa !689
  %89 = call i8* @quote(i8* %88) #28, !dbg !1071
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %84, i8* %87, i8* %89) #28, !dbg !1072
  br label %164

90:                                               ; preds = %52
  %91 = bitcast i32* %7 to i8*, !dbg !1073
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %91) #28, !dbg !1073
  call fastcc void @unblock_signal(i32 14), !dbg !1074
  call fastcc void @settimeout(double %44, i1 zeroext true), !dbg !1075
  %92 = bitcast %struct.__sigset_t* %8 to i8*, !dbg !1076
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %92) #28, !dbg !1076
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %8, metadata !840, metadata !DIExpression()), !dbg !1077
  %93 = load i32, i32* @term_signal, align 4, !dbg !1078, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %93, metadata !1079, metadata !DIExpression()) #28, !dbg !1087
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %8, metadata !1085, metadata !DIExpression()) #28, !dbg !1087
  %94 = bitcast %struct.__sigset_t* %3 to i8*, !dbg !1089
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %94) #28, !dbg !1089
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %3, metadata !1086, metadata !DIExpression()) #28, !dbg !1090
  %95 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %3) #28, !dbg !1091
  %96 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 14) #28, !dbg !1092
  %97 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 2) #28, !dbg !1093
  %98 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 3) #28, !dbg !1094
  %99 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 1) #28, !dbg !1095
  %100 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 15) #28, !dbg !1096
  %101 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 %93) #28, !dbg !1097
  %102 = call i32 @sigaddset(%struct.__sigset_t* nonnull %3, i32 17) #28, !dbg !1098
  %103 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull %3, %struct.__sigset_t* nonnull %8) #28, !dbg !1099
  %104 = icmp eq i32 %103, 0, !dbg !1101
  br i1 %104, label %109, label %105, !dbg !1102

105:                                              ; preds = %90
  %106 = tail call i32* @__errno_location() #32, !dbg !1103
  %107 = load i32, i32* %106, align 4, !dbg !1103, !tbaa !872
  %108 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i32 5) #28, !dbg !1104
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %107, i8* %108) #28, !dbg !1105
  br label %109, !dbg !1105

109:                                              ; preds = %90, %105
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %94) #28, !dbg !1106
  %110 = load i32, i32* @monitored_pid, align 4, !dbg !1107, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %7, metadata !839, metadata !DIExpression(DW_OP_deref)), !dbg !1108
  %111 = call i32 @waitpid(i32 %110, i32* nonnull %7, i32 1) #28, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %111, metadata !837, metadata !DIExpression()), !dbg !1108
  %112 = icmp eq i32 %111, 0, !dbg !1110
  br i1 %112, label %113, label %118, !dbg !1111

113:                                              ; preds = %109, %113
  %114 = call i32 @sigsuspend(%struct.__sigset_t* nonnull %8) #28, !dbg !1112
  %115 = load i32, i32* @monitored_pid, align 4, !dbg !1107, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %7, metadata !839, metadata !DIExpression(DW_OP_deref)), !dbg !1108
  %116 = call i32 @waitpid(i32 %115, i32* nonnull %7, i32 1) #28, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %116, metadata !837, metadata !DIExpression()), !dbg !1108
  %117 = icmp eq i32 %116, 0, !dbg !1110
  br i1 %117, label %113, label %118, !dbg !1111, !llvm.loop !1113

118:                                              ; preds = %113, %109
  %119 = phi i32 [ %111, %109 ], [ %116, %113 ], !dbg !1109
  %120 = icmp slt i32 %119, 0, !dbg !1115
  br i1 %120, label %121, label %125, !dbg !1116

121:                                              ; preds = %118
  %122 = tail call i32* @__errno_location() #32, !dbg !1117
  %123 = load i32, i32* %122, align 4, !dbg !1117, !tbaa !872
  %124 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 5) #28, !dbg !1119
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %123, i8* %124) #28, !dbg !1120
  call void @llvm.dbg.value(metadata i32 125, metadata !839, metadata !DIExpression()), !dbg !1108
  br label %158, !dbg !1121

125:                                              ; preds = %118
  %126 = load i32, i32* %7, align 4, !dbg !1122, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %126, metadata !839, metadata !DIExpression()), !dbg !1108
  %127 = and i32 %126, 127, !dbg !1122
  %128 = icmp eq i32 %127, 0, !dbg !1122
  br i1 %128, label %129, label %132, !dbg !1123

129:                                              ; preds = %125
  %130 = lshr i32 %126, 8, !dbg !1124
  %131 = and i32 %130, 255, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %131, metadata !839, metadata !DIExpression()), !dbg !1108
  br label %158, !dbg !1125

132:                                              ; preds = %125
  %133 = shl nuw nsw i32 %127, 24, !dbg !1126
  %134 = add nuw i32 %133, 16777216, !dbg !1126
  %135 = icmp sgt i32 %134, 33554431, !dbg !1126
  br i1 %135, label %136, label %155, !dbg !1127

136:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i32 %127, metadata !851, metadata !DIExpression()), !dbg !1128
  %137 = trunc i32 %126 to i8, !dbg !1129
  %138 = icmp sgt i8 %137, -1, !dbg !1129
  br i1 %138, label %141, label %139, !dbg !1131

139:                                              ; preds = %136
  %140 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 5) #28, !dbg !1132
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %140) #28, !dbg !1133
  br label %141, !dbg !1133

141:                                              ; preds = %139, %136
  %142 = load i1, i1* @timed_out, align 4, !dbg !1134
  br i1 %142, label %153, label %143, !dbg !1136

143:                                              ; preds = %141
  %144 = call i32 (i32, ...) @prctl(i32 4, i32 0) #28, !dbg !1137
  %145 = icmp eq i32 %144, 0, !dbg !1143
  br i1 %145, label %150, label %146, !dbg !1144

146:                                              ; preds = %143
  %147 = tail call i32* @__errno_location() #32, !dbg !1145
  %148 = load i32, i32* %147, align 4, !dbg !1145, !tbaa !872
  %149 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i64 0, i64 0), i32 5) #28, !dbg !1146
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %148, i8* %149) #28, !dbg !1147
  br label %153, !dbg !1148

150:                                              ; preds = %143
  %151 = call void (i32)* @signal(i32 %127, void (i32)* null) #28, !dbg !1149
  call fastcc void @unblock_signal(i32 %127), !dbg !1151
  %152 = call i32 @raise(i32 %127) #28, !dbg !1152
  br label %153, !dbg !1153

153:                                              ; preds = %146, %150, %141
  %154 = or i32 %127, 128, !dbg !1154
  call void @llvm.dbg.value(metadata i32 %154, metadata !839, metadata !DIExpression()), !dbg !1108
  br label %158, !dbg !1155

155:                                              ; preds = %132
  %156 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 5) #28, !dbg !1156
  %157 = load i32, i32* %7, align 4, !dbg !1158, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %157, metadata !839, metadata !DIExpression()), !dbg !1108
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %156, i32 %157) #28, !dbg !1159
  call void @llvm.dbg.value(metadata i32 1, metadata !839, metadata !DIExpression()), !dbg !1108
  br label %158

158:                                              ; preds = %129, %155, %153, %121
  %159 = phi i32 [ %131, %129 ], [ 1, %155 ], [ %154, %153 ], [ 125, %121 ]
  %160 = load i1, i1* @timed_out, align 4, !dbg !1160
  %161 = load i1, i1* @preserve_status, align 1, !dbg !1162
  %162 = select i1 %161, i32 %159, i32 124, !dbg !1162
  %163 = select i1 %160, i32 %162, i32 %159, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %163, metadata !839, metadata !DIExpression()), !dbg !1108
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %92) #28, !dbg !1163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %91) #28, !dbg !1163
  br label %164

164:                                              ; preds = %158, %78, %74
  %165 = phi i32 [ 125, %74 ], [ %86, %78 ], [ %163, %158 ], !dbg !1164
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %9) #28, !dbg !1165
  ret i32 %165, !dbg !1165
}

; Function Attrs: nounwind
declare !dbg !1166 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1169 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1172 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1176 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc double @parse_duration(i8* %0) unnamed_addr #8 !dbg !1182 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1186, metadata !DIExpression()), !dbg !1189
  %4 = bitcast double* %2 to i8*, !dbg !1190
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #28, !dbg !1190
  %5 = bitcast i8** %3 to i8*, !dbg !1191
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #28, !dbg !1191
  call void @llvm.dbg.value(metadata double* %2, metadata !1187, metadata !DIExpression(DW_OP_deref)), !dbg !1189
  call void @llvm.dbg.value(metadata i8** %3, metadata !1188, metadata !DIExpression(DW_OP_deref)), !dbg !1189
  %6 = call zeroext i1 @xstrtod(i8* %0, i8** nonnull %3, double* nonnull %2, double (i8*, i8**)* nonnull @cl_strtod) #28, !dbg !1192
  br i1 %6, label %11, label %7, !dbg !1194

7:                                                ; preds = %1
  %8 = tail call i32* @__errno_location() #32, !dbg !1195
  %9 = load i32, i32* %8, align 4, !dbg !1195, !tbaa !872
  %10 = icmp eq i32 %9, 34, !dbg !1196
  br i1 %10, label %11, label %27, !dbg !1197

11:                                               ; preds = %7, %1
  %12 = load double, double* %2, align 8, !dbg !1198, !tbaa !882
  call void @llvm.dbg.value(metadata double %12, metadata !1187, metadata !DIExpression()), !dbg !1189
  %13 = fcmp ult double %12, 0.000000e+00, !dbg !1199
  br i1 %13, label %27, label %14, !dbg !1200

14:                                               ; preds = %11
  %15 = load i8*, i8** %3, align 8, !dbg !1201, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %15, metadata !1188, metadata !DIExpression()), !dbg !1189
  %16 = load i8, i8* %15, align 1, !dbg !1202, !tbaa !1024
  %17 = icmp eq i8 %16, 0, !dbg !1202
  br i1 %17, label %30, label %18, !dbg !1203

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !1204
  %20 = load i8, i8* %19, align 1, !dbg !1205, !tbaa !1024
  %21 = icmp eq i8 %20, 0, !dbg !1205
  br i1 %21, label %22, label %27, !dbg !1206

22:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i8* %15, metadata !1188, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double* %2, metadata !1187, metadata !DIExpression(DW_OP_deref)), !dbg !1189
  call void @llvm.dbg.value(metadata double* %2, metadata !1207, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %16, metadata !1213, metadata !DIExpression()), !dbg !1215
  %23 = sext i8 %16 to i32, !dbg !1217
  switch i32 %23, label %27 [
    i32 0, label %30
    i32 115, label %30
    i32 109, label %24
    i32 104, label %25
    i32 100, label %26
  ], !dbg !1218

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 60, metadata !1214, metadata !DIExpression()), !dbg !1215
  br label %30, !dbg !1219

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 3600, metadata !1214, metadata !DIExpression()), !dbg !1215
  br label %30, !dbg !1221

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 86400, metadata !1214, metadata !DIExpression()), !dbg !1215
  br label %30, !dbg !1222

27:                                               ; preds = %22, %18, %11, %7
  %28 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 5) #28, !dbg !1223
  %29 = call i8* @quote(i8* %0) #28, !dbg !1225
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %28, i8* %29) #28, !dbg !1226
  call void @usage(i32 125) #31, !dbg !1227
  unreachable, !dbg !1227

30:                                               ; preds = %14, %22, %22, %24, %25, %26
  %31 = phi double [ 8.640000e+04, %26 ], [ 3.600000e+03, %25 ], [ 6.000000e+01, %24 ], [ 1.000000e+00, %22 ], [ 1.000000e+00, %22 ], [ 1.000000e+00, %14 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1214, metadata !DIExpression()), !dbg !1215
  %32 = fmul double %12, %31, !dbg !1228
  call void @llvm.dbg.value(metadata double %32, metadata !1187, metadata !DIExpression()), !dbg !1189
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #28, !dbg !1229
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #28, !dbg !1229
  ret double %32, !dbg !1230
}

; Function Attrs: nounwind
declare !dbg !1231 i32 @setpgid(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1235 i32 @sigemptyset(%struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @cleanup(i32 %0) #8 !dbg !1239 {
  %2 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1241, metadata !DIExpression()), !dbg !1250
  %3 = icmp eq i32 %0, 14, !dbg !1251
  br i1 %3, label %4, label %6, !dbg !1253

4:                                                ; preds = %1
  store i1 true, i1* @timed_out, align 4, !dbg !1254
  %5 = load i32, i32* @term_signal, align 4, !dbg !1256, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %5, metadata !1241, metadata !DIExpression()), !dbg !1250
  br label %6, !dbg !1257

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !1241, metadata !DIExpression()), !dbg !1250
  %8 = load i32, i32* @monitored_pid, align 4, !dbg !1258, !tbaa !872
  %9 = icmp eq i32 %8, 0, !dbg !1258
  br i1 %9, label %48, label %10, !dbg !1259

10:                                               ; preds = %6
  %11 = load double, double* @kill_after, align 8, !dbg !1260, !tbaa !882
  %12 = fcmp une double %11, 0.000000e+00, !dbg !1260
  br i1 %12, label %13, label %16, !dbg !1261

13:                                               ; preds = %10
  %14 = tail call i32* @__errno_location() #32, !dbg !1262
  %15 = load i32, i32* %14, align 4, !dbg !1262, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %15, metadata !1242, metadata !DIExpression()), !dbg !1263
  store i32 9, i32* @term_signal, align 4, !dbg !1264, !tbaa !872
  tail call fastcc void @settimeout(double %11, i1 zeroext false), !dbg !1265
  store double 0.000000e+00, double* @kill_after, align 8, !dbg !1266, !tbaa !882
  store i32 %15, i32* %14, align 4, !dbg !1267, !tbaa !872
  br label %16, !dbg !1268

16:                                               ; preds = %13, %10
  %17 = load i1, i1* @verbose, align 1, !dbg !1269
  br i1 %17, label %18, label %28, !dbg !1270

18:                                               ; preds = %16
  %19 = getelementptr inbounds [19 x i8], [19 x i8]* %2, i64 0, i64 0, !dbg !1271
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %19) #28, !dbg !1271
  call void @llvm.dbg.declare(metadata [19 x i8]* %2, metadata !1247, metadata !DIExpression()), !dbg !1272
  %20 = call i32 @sig2str(i32 %7, i8* nonnull %19) #28, !dbg !1273
  %21 = icmp eq i32 %20, 0, !dbg !1275
  br i1 %21, label %24, label %22, !dbg !1276

22:                                               ; preds = %18
  %23 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* nonnull %19, i64 19, i32 1, i64 19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i32 %7) #28, !dbg !1277
  br label %24, !dbg !1277

24:                                               ; preds = %22, %18
  %25 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i64 0, i64 0), i32 5) #28, !dbg !1278
  %26 = load i8*, i8** @command, align 8, !dbg !1279, !tbaa !689
  %27 = call i8* @quote(i8* %26) #28, !dbg !1280
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %25, i8* nonnull %19, i8* %27) #28, !dbg !1281
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %19) #28, !dbg !1282
  br label %28, !dbg !1283

28:                                               ; preds = %24, %16
  %29 = load i32, i32* @monitored_pid, align 4, !dbg !1284, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %29, metadata !1285, metadata !DIExpression()) #28, !dbg !1291
  call void @llvm.dbg.value(metadata i32 %7, metadata !1290, metadata !DIExpression()) #28, !dbg !1291
  %30 = icmp eq i32 %29, 0, !dbg !1293
  br i1 %30, label %31, label %33, !dbg !1295

31:                                               ; preds = %28
  %32 = call void (i32)* @signal(i32 %7, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #28, !dbg !1296
  br label %33, !dbg !1296

33:                                               ; preds = %28, %31
  %34 = call i32 @kill(i32 %29, i32 %7) #28, !dbg !1297
  %35 = load i1, i1* @foreground, align 1, !dbg !1298
  br i1 %35, label %50, label %36, !dbg !1300

36:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 0, metadata !1285, metadata !DIExpression()) #28, !dbg !1301
  call void @llvm.dbg.value(metadata i32 %7, metadata !1290, metadata !DIExpression()) #28, !dbg !1301
  %37 = call void (i32)* @signal(i32 %7, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #28, !dbg !1304
  %38 = call i32 @kill(i32 0, i32 %7) #28, !dbg !1305
  switch i32 %7, label %39 [
    i32 18, label %50
    i32 9, label %50
  ], !dbg !1306

39:                                               ; preds = %36
  %40 = load i32, i32* @monitored_pid, align 4, !dbg !1308, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %40, metadata !1285, metadata !DIExpression()) #28, !dbg !1310
  call void @llvm.dbg.value(metadata i32 18, metadata !1290, metadata !DIExpression()) #28, !dbg !1310
  %41 = icmp eq i32 %40, 0, !dbg !1312
  br i1 %41, label %42, label %44, !dbg !1313

42:                                               ; preds = %39
  %43 = call void (i32)* @signal(i32 18, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #28, !dbg !1314
  br label %44, !dbg !1314

44:                                               ; preds = %39, %42
  %45 = call i32 @kill(i32 %40, i32 18) #28, !dbg !1315
  call void @llvm.dbg.value(metadata i32 0, metadata !1285, metadata !DIExpression()) #28, !dbg !1316
  call void @llvm.dbg.value(metadata i32 18, metadata !1290, metadata !DIExpression()) #28, !dbg !1316
  %46 = call void (i32)* @signal(i32 18, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #28, !dbg !1318
  %47 = call i32 @kill(i32 0, i32 18) #28, !dbg !1319
  br label %50, !dbg !1320

48:                                               ; preds = %6
  %49 = add nsw i32 %7, 128, !dbg !1321
  tail call void @_exit(i32 %49) #30, !dbg !1322
  unreachable, !dbg !1322

50:                                               ; preds = %36, %36, %33, %44
  ret void, !dbg !1323
}

; Function Attrs: nounwind
declare !dbg !1324 i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1330 void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readnone sspstrong uwtable willreturn
define internal void @chld(i32 %0) #9 !dbg !1333 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1335, metadata !DIExpression()), !dbg !1336
  ret void, !dbg !1337
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @unblock_signal(i32 %0) unnamed_addr #8 !dbg !1338 {
  %2 = alloca %struct.__sigset_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1340, metadata !DIExpression()), !dbg !1342
  %3 = bitcast %struct.__sigset_t* %2 to i8*, !dbg !1343
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #28, !dbg !1343
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %2, metadata !1341, metadata !DIExpression()), !dbg !1344
  %4 = call i32 @sigemptyset(%struct.__sigset_t* nonnull %2) #28, !dbg !1345
  %5 = call i32 @sigaddset(%struct.__sigset_t* nonnull %2, i32 %0) #28, !dbg !1346
  %6 = call i32 @sigprocmask(i32 1, %struct.__sigset_t* nonnull %2, %struct.__sigset_t* null) #28, !dbg !1347
  %7 = icmp eq i32 %6, 0, !dbg !1349
  br i1 %7, label %12, label %8, !dbg !1350

8:                                                ; preds = %1
  %9 = tail call i32* @__errno_location() #32, !dbg !1351
  %10 = load i32, i32* %9, align 4, !dbg !1351, !tbaa !872
  %11 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i32 5) #28, !dbg !1352
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* %11) #28, !dbg !1353
  br label %12, !dbg !1353

12:                                               ; preds = %8, %1
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #28, !dbg !1354
  ret void, !dbg !1354
}

; Function Attrs: nofree nounwind
declare !dbg !1355 i32 @fork() local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

declare !dbg !1358 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1362 i32 @execvp(i8*, i8**) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @settimeout(double %0, i1 zeroext %1) unnamed_addr #8 !dbg !1365 {
  %3 = alloca %struct.itimerspec, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !1369, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i1 %1, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1392
  %5 = tail call { i64, i64 } @dtotimespec(double %0) #32, !dbg !1393
  %6 = extractvalue { i64, i64 } %5, 0, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %6, metadata !1371, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1392
  %7 = extractvalue { i64, i64 } %5, 1, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %7, metadata !1371, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1392
  %8 = bitcast %struct.itimerspec* %3 to i8*, !dbg !1394
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #28, !dbg !1394
  call void @llvm.dbg.declare(metadata %struct.itimerspec* %3, metadata !1378, metadata !DIExpression()), !dbg !1395
  %9 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i64 0, i32 1, i32 0, !dbg !1396
  %10 = bitcast %struct.itimerspec* %3 to i8*, !dbg !1396
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !dbg !1397
  store i64 %6, i64* %9, align 8, !dbg !1396, !tbaa.struct !1398
  %11 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i64 0, i32 1, i32 1, !dbg !1396
  store i64 %7, i64* %11, align 8, !dbg !1396, !tbaa.struct !1401
  %12 = bitcast i8** %4 to i8*, !dbg !1402
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #28, !dbg !1402
  call void @llvm.dbg.value(metadata i8** %4, metadata !1384, metadata !DIExpression(DW_OP_deref)), !dbg !1392
  %13 = call i32 @timer_create(i32 0, %struct.sigevent* null, i8** nonnull %4) #28, !dbg !1403
  %14 = icmp eq i32 %13, 0, !dbg !1405
  br i1 %14, label %15, label %27, !dbg !1406

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8, !dbg !1407, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %16, metadata !1384, metadata !DIExpression()), !dbg !1392
  %17 = call i32 @timer_settime(i8* %16, i32 0, %struct.itimerspec* nonnull %3, %struct.itimerspec* null) #28, !dbg !1410
  %18 = icmp eq i32 %17, 0, !dbg !1411
  br i1 %18, label %45, label %19, !dbg !1412

19:                                               ; preds = %15
  br i1 %1, label %20, label %24, !dbg !1413

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #32, !dbg !1415
  %22 = load i32, i32* %21, align 4, !dbg !1415, !tbaa !872
  %23 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0), i32 5) #28, !dbg !1417
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %22, i8* %23) #28, !dbg !1418
  br label %24, !dbg !1418

24:                                               ; preds = %20, %19
  %25 = load i8*, i8** %4, align 8, !dbg !1419, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %25, metadata !1384, metadata !DIExpression()), !dbg !1392
  %26 = call i32 @timer_delete(i8* %25) #28, !dbg !1420
  br label %34, !dbg !1421

27:                                               ; preds = %2
  br i1 %1, label %28, label %34, !dbg !1422

28:                                               ; preds = %27
  %29 = tail call i32* @__errno_location() #32, !dbg !1424
  %30 = load i32, i32* %29, align 4, !dbg !1424, !tbaa !872
  %31 = icmp eq i32 %30, 38, !dbg !1425
  br i1 %31, label %34, label %32, !dbg !1426

32:                                               ; preds = %28
  %33 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i32 5) #28, !dbg !1427
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %30, i8* %33) #28, !dbg !1428
  br label %34, !dbg !1428

34:                                               ; preds = %27, %28, %32, %24
  %35 = fcmp ult double %0, 0x41EFFFFFFFE00000, !dbg !1429
  br i1 %35, label %36, label %42, !dbg !1430

36:                                               ; preds = %34
  %37 = fptoui double %0 to i32, !dbg !1431
  call void @llvm.dbg.value(metadata i32 %37, metadata !1389, metadata !DIExpression()), !dbg !1432
  %38 = uitofp i32 %37 to double, !dbg !1433
  %39 = fcmp olt double %38, %0, !dbg !1434
  %40 = zext i1 %39 to i32, !dbg !1434
  %41 = add i32 %40, %37, !dbg !1435
  call void @llvm.dbg.value(metadata i32 %41, metadata !1388, metadata !DIExpression()), !dbg !1392
  br label %42

42:                                               ; preds = %34, %36
  %43 = phi i32 [ %41, %36 ], [ -1, %34 ], !dbg !1436
  call void @llvm.dbg.value(metadata i32 %43, metadata !1388, metadata !DIExpression()), !dbg !1392
  %44 = call i32 @alarm(i32 %43) #28, !dbg !1437
  br label %45, !dbg !1438

45:                                               ; preds = %15, %42
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #28, !dbg !1438
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #28, !dbg !1438
  ret void, !dbg !1438
}

; Function Attrs: nounwind
declare !dbg !1439 i32 @sigaddset(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1442 i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) local_unnamed_addr #2

declare !dbg !1447 i32 @waitpid(i32, i32*, i32) local_unnamed_addr #3

declare !dbg !1451 i32 @sigsuspend(%struct.__sigset_t*) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1454 i32 @prctl(i32, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1458 i32 @raise(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nounwind
declare !dbg !1461 i32 @timer_create(i32, %struct.sigevent*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1499 i32 @timer_settime(i8*, i32, %struct.itimerspec*, %struct.itimerspec*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1505 i32 @timer_delete(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1508 i32 @alarm(i32) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1511 i32 @kill(i32, i32) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @operand2sig(i8* %0, i8* %1) local_unnamed_addr #8 !dbg !1512 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1516, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8* %1, metadata !1517, metadata !DIExpression()), !dbg !1527
  %5 = bitcast i32* %3 to i8*, !dbg !1528
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #28, !dbg !1528
  %6 = load i8, i8* %0, align 1, !dbg !1529, !tbaa !1024
  %7 = sext i8 %6 to i32, !dbg !1529
  %8 = add nsw i32 %7, -48, !dbg !1529
  %9 = icmp ult i32 %8, 10, !dbg !1529
  br i1 %9, label %10, label %38, !dbg !1530

10:                                               ; preds = %2
  %11 = bitcast i8** %4 to i8*, !dbg !1531
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #28, !dbg !1531
  %12 = tail call i32* @__errno_location() #32, !dbg !1532
  store i32 0, i32* %12, align 4, !dbg !1533, !tbaa !872
  call void @llvm.dbg.value(metadata i8** %4, metadata !1519, metadata !DIExpression(DW_OP_deref)), !dbg !1534
  %13 = call i64 @strtol(i8* nonnull %0, i8** nonnull %4, i32 10) #28, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %13, metadata !1522, metadata !DIExpression()), !dbg !1534
  %14 = trunc i64 %13 to i32, !dbg !1536
  call void @llvm.dbg.value(metadata i32 %14, metadata !1523, metadata !DIExpression()), !dbg !1534
  %15 = load i8*, i8** %4, align 8, !dbg !1537, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %15, metadata !1519, metadata !DIExpression()), !dbg !1534
  %16 = icmp eq i8* %15, %0, !dbg !1538
  br i1 %16, label %29, label %17, !dbg !1539

17:                                               ; preds = %10
  %18 = load i8, i8* %15, align 1, !dbg !1540, !tbaa !1024
  %19 = icmp eq i8 %18, 0, !dbg !1540
  br i1 %19, label %20, label %29, !dbg !1541

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4, !dbg !1542, !tbaa !872
  %22 = icmp eq i32 %21, 0, !dbg !1542
  %23 = add i64 %13, 2147483648
  %24 = icmp ult i64 %23, 4294967296
  %25 = and i1 %24, %22, !dbg !1543
  br i1 %25, label %26, label %29, !dbg !1543

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 %14, metadata !1518, metadata !DIExpression()), !dbg !1527
  %27 = icmp eq i32 %14, -1, !dbg !1544
  %28 = icmp slt i32 %14, 255, !dbg !1546
  br i1 %28, label %29, label %32, !dbg !1546

29:                                               ; preds = %10, %17, %20, %26
  %30 = phi i1 [ %27, %26 ], [ true, %20 ], [ true, %17 ], [ true, %10 ]
  %31 = phi i32 [ %14, %26 ], [ -1, %20 ], [ -1, %17 ], [ -1, %10 ]
  br label %32, !dbg !1546

32:                                               ; preds = %26, %29
  %33 = phi i1 [ %30, %29 ], [ %27, %26 ]
  %34 = phi i32 [ %31, %29 ], [ %14, %26 ]
  %35 = phi i32 [ 127, %29 ], [ 255, %26 ]
  %36 = select i1 %33, i32 -1, i32 %35, !dbg !1546
  %37 = and i32 %36, %34, !dbg !1546
  store i32 %37, i32* %3, align 4, !dbg !1534, !tbaa !872
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #28, !dbg !1547
  br label %75, !dbg !1548

38:                                               ; preds = %2
  %39 = tail call noalias i8* @xstrdup(i8* nonnull %0) #28, !dbg !1549
  call void @llvm.dbg.value(metadata i8* %39, metadata !1524, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %39, metadata !1526, metadata !DIExpression()), !dbg !1550
  %40 = load i8, i8* %39, align 1, !dbg !1551, !tbaa !1024
  %41 = icmp eq i8 %40, 0, !dbg !1554
  br i1 %41, label %54, label %42, !dbg !1554

42:                                               ; preds = %38, %50
  %43 = phi i8 [ %52, %50 ], [ %40, %38 ]
  %44 = phi i8* [ %51, %50 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i8* %44, metadata !1526, metadata !DIExpression()), !dbg !1550
  %45 = sext i8 %43 to i32, !dbg !1555
  %46 = tail call i8* @memchr(i8* nonnull dereferenceable(27) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0), i32 %45, i64 27), !dbg !1557
  %47 = icmp eq i8* %46, null, !dbg !1557
  br i1 %47, label %50, label %48, !dbg !1558

48:                                               ; preds = %42
  %49 = add i8 %43, -32, !dbg !1559
  store i8 %49, i8* %44, align 1, !dbg !1559, !tbaa !1024
  br label %50, !dbg !1560

50:                                               ; preds = %42, %48
  %51 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1561
  call void @llvm.dbg.value(metadata i8* %51, metadata !1526, metadata !DIExpression()), !dbg !1550
  %52 = load i8, i8* %51, align 1, !dbg !1551, !tbaa !1024
  %53 = icmp eq i8 %52, 0, !dbg !1554
  br i1 %53, label %54, label %42, !dbg !1554, !llvm.loop !1562

54:                                               ; preds = %50, %38
  call void @llvm.dbg.value(metadata i32* %3, metadata !1518, metadata !DIExpression(DW_OP_deref)), !dbg !1527
  %55 = call i32 @str2sig(i8* nonnull %39, i32* nonnull %3) #28, !dbg !1564
  %56 = icmp eq i32 %55, 0, !dbg !1566
  br i1 %56, label %73, label %57, !dbg !1567

57:                                               ; preds = %54
  %58 = load i8, i8* %39, align 1, !dbg !1568, !tbaa !1024
  %59 = icmp eq i8 %58, 83, !dbg !1569
  br i1 %59, label %60, label %72, !dbg !1570

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1571
  %62 = load i8, i8* %61, align 1, !dbg !1571, !tbaa !1024
  %63 = icmp eq i8 %62, 73, !dbg !1572
  br i1 %63, label %64, label %72, !dbg !1573

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !1574
  %66 = load i8, i8* %65, align 1, !dbg !1574, !tbaa !1024
  %67 = icmp eq i8 %66, 71, !dbg !1575
  br i1 %67, label %68, label %72, !dbg !1576

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !1577
  call void @llvm.dbg.value(metadata i32* %3, metadata !1518, metadata !DIExpression(DW_OP_deref)), !dbg !1527
  %70 = call i32 @str2sig(i8* nonnull %69, i32* nonnull %3) #28, !dbg !1578
  %71 = icmp eq i32 %70, 0, !dbg !1579
  br i1 %71, label %73, label %72, !dbg !1580

72:                                               ; preds = %68, %64, %60, %57
  call void @llvm.dbg.value(metadata i32 -1, metadata !1518, metadata !DIExpression()), !dbg !1527
  store i32 -1, i32* %3, align 4, !dbg !1581, !tbaa !872
  br label %73, !dbg !1582

73:                                               ; preds = %72, %68, %54
  call void @free(i8* %39) #28, !dbg !1583
  %74 = load i32, i32* %3, align 4, !dbg !1584, !tbaa !872
  br label %75

75:                                               ; preds = %73, %32
  %76 = phi i32 [ %74, %73 ], [ %37, %32 ], !dbg !1584
  call void @llvm.dbg.value(metadata i32 %76, metadata !1518, metadata !DIExpression()), !dbg !1527
  %77 = icmp slt i32 %76, 0, !dbg !1586
  br i1 %77, label %81, label %78, !dbg !1587

78:                                               ; preds = %75
  %79 = call i32 @sig2str(i32 %76, i8* %1) #28, !dbg !1588
  %80 = icmp eq i32 %79, 0, !dbg !1589
  br i1 %80, label %84, label %81, !dbg !1590

81:                                               ; preds = %78, %75
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.52, i64 0, i64 0), i32 5) #28, !dbg !1591
  %83 = call i8* @quote(i8* nonnull %0) #28, !dbg !1593
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82, i8* %83) #28, !dbg !1594
  br label %86, !dbg !1595

84:                                               ; preds = %78
  %85 = load i32, i32* %3, align 4, !dbg !1596, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %85, metadata !1518, metadata !DIExpression()), !dbg !1527
  br label %86, !dbg !1597

86:                                               ; preds = %84, %81
  %87 = phi i32 [ -1, %81 ], [ %85, %84 ], !dbg !1527
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #28, !dbg !1598
  ret i32 %87, !dbg !1598
}

; Function Attrs: nofree nounwind willreturn
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #14

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #15

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @cl_strtod(i8* %0, i8** noalias %1) #8 !dbg !1599 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1604, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i8** %1, metadata !1605, metadata !DIExpression()), !dbg !1613
  %5 = bitcast i8** %3 to i8*, !dbg !1614
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #28, !dbg !1614
  call void @llvm.dbg.value(metadata i8** %3, metadata !1606, metadata !DIExpression(DW_OP_deref)), !dbg !1613
  %6 = call double @strtod(i8* %0, i8** nonnull %3) #28, !dbg !1615
  call void @llvm.dbg.value(metadata double %6, metadata !1607, metadata !DIExpression()), !dbg !1613
  %7 = load i8*, i8** %3, align 8, !dbg !1616, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %7, metadata !1606, metadata !DIExpression()), !dbg !1613
  %8 = load i8, i8* %7, align 1, !dbg !1617, !tbaa !1024
  %9 = icmp eq i8 %8, 0, !dbg !1617
  br i1 %9, label %21, label %10, !dbg !1618

10:                                               ; preds = %2
  %11 = tail call i32* @__errno_location() #32, !dbg !1619
  %12 = load i32, i32* %11, align 4, !dbg !1619, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %12, metadata !1608, metadata !DIExpression()), !dbg !1620
  %13 = bitcast i8** %4 to i8*, !dbg !1621
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #28, !dbg !1621
  call void @llvm.dbg.value(metadata i8** %4, metadata !1611, metadata !DIExpression(DW_OP_deref)), !dbg !1620
  %14 = call double @c_strtod(i8* %0, i8** nonnull %4) #28, !dbg !1622
  call void @llvm.dbg.value(metadata double %14, metadata !1612, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8* %7, metadata !1606, metadata !DIExpression()), !dbg !1613
  %15 = load i8*, i8** %4, align 8, !dbg !1623, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %15, metadata !1611, metadata !DIExpression()), !dbg !1620
  %16 = icmp ult i8* %7, %15, !dbg !1625
  br i1 %16, label %18, label %17, !dbg !1626

17:                                               ; preds = %10
  store i32 %12, i32* %11, align 4, !dbg !1627, !tbaa !872
  br label %18

18:                                               ; preds = %10, %17
  %19 = phi i8* [ %7, %17 ], [ %15, %10 ]
  %20 = phi double [ %6, %17 ], [ %14, %10 ], !dbg !1613
  call void @llvm.dbg.value(metadata double %20, metadata !1607, metadata !DIExpression()), !dbg !1613
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #28, !dbg !1628
  br label %21, !dbg !1629

21:                                               ; preds = %18, %2
  %22 = phi i8* [ %19, %18 ], [ %7, %2 ]
  %23 = phi double [ %20, %18 ], [ %6, %2 ], !dbg !1613
  call void @llvm.dbg.value(metadata double %23, metadata !1607, metadata !DIExpression()), !dbg !1613
  %24 = icmp eq i8** %1, null, !dbg !1630
  br i1 %24, label %26, label %25, !dbg !1632

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8* %22, metadata !1606, metadata !DIExpression()), !dbg !1613
  store i8* %22, i8** %1, align 8, !dbg !1633, !tbaa !689
  br label %26, !dbg !1634

26:                                               ; preds = %25, %21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #28, !dbg !1635
  ret double %23, !dbg !1636
}

; Function Attrs: nofree nounwind willreturn
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #14

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #17 !dbg !1637 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1639, metadata !DIExpression()), !dbg !1640
  store i8* %0, i8** @file_name, align 8, !dbg !1641, !tbaa !689
  ret void, !dbg !1642
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #17 !dbg !1643 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1647, metadata !DIExpression()), !dbg !1648
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1649, !tbaa !1650
  ret void, !dbg !1652
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1653 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1658, !tbaa !689
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #28, !dbg !1659
  %3 = icmp eq i32 %2, 0, !dbg !1660
  br i1 %3, label %22, label %4, !dbg !1661

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1662, !tbaa !1650, !range !1663
  %6 = icmp eq i8 %5, 0, !dbg !1662
  br i1 %6, label %11, label %7, !dbg !1664

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #32, !dbg !1665
  %9 = load i32, i32* %8, align 4, !dbg !1665, !tbaa !872
  %10 = icmp eq i32 %9, 32, !dbg !1666
  br i1 %10, label %22, label %11, !dbg !1667

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i32 5) #28, !dbg !1668
  call void @llvm.dbg.value(metadata i8* %12, metadata !1655, metadata !DIExpression()), !dbg !1669
  %13 = load i8*, i8** @file_name, align 8, !dbg !1670, !tbaa !689
  %14 = icmp eq i8* %13, null, !dbg !1670
  %15 = tail call i32* @__errno_location() #32, !dbg !1672
  %16 = load i32, i32* %15, align 4, !dbg !1672, !tbaa !872
  br i1 %14, label %19, label %17, !dbg !1673

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #28, !dbg !1674
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.61, i64 0, i64 0), i8* %18, i8* %12) #28, !dbg !1675
  br label %20, !dbg !1675

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.62, i64 0, i64 0), i8* %12) #28, !dbg !1676
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1677, !tbaa !872
  tail call void @_exit(i32 %21) #30, !dbg !1678
  unreachable, !dbg !1678

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1679, !tbaa !689
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #28, !dbg !1681
  %25 = icmp eq i32 %24, 0, !dbg !1682
  br i1 %25, label %28, label %26, !dbg !1683

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1684, !tbaa !872
  tail call void @_exit(i32 %27) #30, !dbg !1685
  unreachable, !dbg !1685

28:                                               ; preds = %22
  ret void, !dbg !1686
}

; Function Attrs: norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local { i64, i64 } @dtotimespec(double %0) local_unnamed_addr #9 !dbg !1687 {
  call void @llvm.dbg.value(metadata double %0, metadata !1695, metadata !DIExpression()), !dbg !1702
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !1703
  br i1 %2, label %3, label %25, !dbg !1704

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !1705
  br i1 %4, label %5, label %25, !dbg !1706

5:                                                ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %6, metadata !1696, metadata !DIExpression()), !dbg !1708
  %7 = sitofp i64 %6 to double, !dbg !1709
  %8 = fsub double %0, %7, !dbg !1710
  %9 = fmul double %8, 1.000000e+09, !dbg !1711
  call void @llvm.dbg.value(metadata double %9, metadata !1700, metadata !DIExpression()), !dbg !1708
  %10 = fptosi double %9 to i64, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %10, metadata !1701, metadata !DIExpression()), !dbg !1708
  %11 = sitofp i64 %10 to double, !dbg !1713
  %12 = fcmp ogt double %9, %11, !dbg !1714
  %13 = zext i1 %12 to i64, !dbg !1713
  %14 = add nsw i64 %13, %10, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %14, metadata !1701, metadata !DIExpression()), !dbg !1708
  %15 = sdiv i64 %14, 1000000000, !dbg !1716
  %16 = add nsw i64 %15, %6, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %16, metadata !1696, metadata !DIExpression()), !dbg !1708
  %17 = srem i64 %14, 1000000000, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %17, metadata !1701, metadata !DIExpression()), !dbg !1708
  %18 = icmp slt i64 %17, 0, !dbg !1719
  %19 = add nsw i64 %17, 1000000000, !dbg !1721
  %20 = ashr i64 %17, 63, !dbg !1721
  %21 = add nsw i64 %16, %20, !dbg !1721
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %22, metadata !1701, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %21, metadata !1696, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %21, metadata !1722, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64 %22, metadata !1727, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64 %21, metadata !1728, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1729
  call void @llvm.dbg.value(metadata i64 %22, metadata !1728, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1729
  %23 = insertvalue { i64, i64 } undef, i64 %21, 0, !dbg !1731
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1, !dbg !1731
  br label %25

25:                                               ; preds = %3, %1, %5
  %26 = phi { i64, i64 } [ %24, %5 ], [ { i64 -9223372036854775808, i64 0 }, %1 ], [ { i64 9223372036854775807, i64 999999999 }, %3 ]
  ret { i64, i64 } %26, !dbg !1732
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1733 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1735, metadata !DIExpression()), !dbg !1738
  %2 = icmp eq i8* %0, null, !dbg !1739
  br i1 %2, label %3, label %6, !dbg !1741

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1742, !tbaa !689
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.71, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #33, !dbg !1744
  tail call void @abort() #30, !dbg !1745
  unreachable, !dbg !1745

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #29, !dbg !1746
  call void @llvm.dbg.value(metadata i8* %7, metadata !1736, metadata !DIExpression()), !dbg !1738
  %8 = icmp eq i8* %7, null, !dbg !1747
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1748
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1748
  call void @llvm.dbg.value(metadata i8* %10, metadata !1737, metadata !DIExpression()), !dbg !1738
  %11 = ptrtoint i8* %10 to i64, !dbg !1749
  %12 = ptrtoint i8* %0 to i64, !dbg !1749
  %13 = sub i64 %11, %12, !dbg !1749
  %14 = icmp sgt i64 %13, 6, !dbg !1751
  br i1 %14, label %15, label %24, !dbg !1752

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1753
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.72, i64 0, i64 0), i64 7) #29, !dbg !1754
  %18 = icmp eq i32 %17, 0, !dbg !1755
  br i1 %18, label %19, label %24, !dbg !1756

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1735, metadata !DIExpression()), !dbg !1738
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.73, i64 0, i64 0), i64 3) #29, !dbg !1757
  %21 = icmp eq i32 %20, 0, !dbg !1760
  br i1 %21, label %22, label %24, !dbg !1761

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1762
  call void @llvm.dbg.value(metadata i8* %23, metadata !1735, metadata !DIExpression()), !dbg !1738
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1764, !tbaa !689
  br label %24, !dbg !1765

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1735, metadata !DIExpression()), !dbg !1738
  store i8* %25, i8** @program_name, align 8, !dbg !1766, !tbaa !689
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1767, !tbaa !689
  ret void, !dbg !1768
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #18

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1769 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1774, metadata !DIExpression()), !dbg !1777
  %2 = tail call i32* @__errno_location() #32, !dbg !1778
  %3 = load i32, i32* %2, align 4, !dbg !1778, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %3, metadata !1775, metadata !DIExpression()), !dbg !1777
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1779
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1779
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1779
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #28, !dbg !1780
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1776, metadata !DIExpression()), !dbg !1777
  store i32 %3, i32* %2, align 4, !dbg !1781, !tbaa !872
  ret %struct.quoting_options* %8, !dbg !1782
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #19 !dbg !1783 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1789, metadata !DIExpression()), !dbg !1790
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1791
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1791
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1792
  %5 = load i32, i32* %4, align 8, !dbg !1792, !tbaa !1793
  ret i32 %5, !dbg !1795
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1796 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1800, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i32 %1, metadata !1801, metadata !DIExpression()), !dbg !1802
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1803
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1803
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1804
  store i32 %1, i32* %5, align 8, !dbg !1805, !tbaa !1793
  ret void, !dbg !1806
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #20 !dbg !1807 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1811, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 %1, metadata !1812, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i32 %2, metadata !1813, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 %1, metadata !1814, metadata !DIExpression()), !dbg !1820
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1821
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1821
  %6 = lshr i8 %1, 5, !dbg !1822
  %7 = zext i8 %6 to i64, !dbg !1822
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1823
  call void @llvm.dbg.value(metadata i32* %8, metadata !1816, metadata !DIExpression()), !dbg !1820
  %9 = and i8 %1, 31, !dbg !1824
  %10 = zext i8 %9 to i32, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %10, metadata !1818, metadata !DIExpression()), !dbg !1820
  %11 = load i32, i32* %8, align 4, !dbg !1825, !tbaa !872
  %12 = lshr i32 %11, %10, !dbg !1826
  %13 = and i32 %12, 1, !dbg !1827
  call void @llvm.dbg.value(metadata i32 %13, metadata !1819, metadata !DIExpression()), !dbg !1820
  %14 = and i32 %2, 1, !dbg !1828
  %15 = xor i32 %13, %14, !dbg !1829
  %16 = shl i32 %15, %10, !dbg !1830
  %17 = xor i32 %16, %11, !dbg !1831
  store i32 %17, i32* %8, align 4, !dbg !1831, !tbaa !872
  ret i32 %13, !dbg !1832
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #20 !dbg !1833 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1837, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %1, metadata !1838, metadata !DIExpression()), !dbg !1840
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1841
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1843
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1837, metadata !DIExpression()), !dbg !1840
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1844
  %6 = load i32, i32* %5, align 4, !dbg !1844, !tbaa !1845
  call void @llvm.dbg.value(metadata i32 %6, metadata !1839, metadata !DIExpression()), !dbg !1840
  store i32 %1, i32* %5, align 4, !dbg !1846, !tbaa !1845
  ret i32 %6, !dbg !1847
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1848 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1852, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %1, metadata !1853, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %2, metadata !1854, metadata !DIExpression()), !dbg !1855
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1856
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1858
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1852, metadata !DIExpression()), !dbg !1855
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1859
  store i32 10, i32* %6, align 8, !dbg !1860, !tbaa !1793
  %7 = icmp ne i8* %1, null, !dbg !1861
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1863
  br i1 %9, label %11, label %10, !dbg !1863

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !1864
  unreachable, !dbg !1864

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1865
  store i8* %1, i8** %12, align 8, !dbg !1866, !tbaa !1867
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1868
  store i8* %2, i8** %13, align 8, !dbg !1869, !tbaa !1870
  ret void, !dbg !1871
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1872 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1876, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 %1, metadata !1877, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8* %2, metadata !1878, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 %3, metadata !1879, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1880, metadata !DIExpression()), !dbg !1884
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1885
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1885
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1881, metadata !DIExpression()), !dbg !1884
  %8 = tail call i32* @__errno_location() #32, !dbg !1886
  %9 = load i32, i32* %8, align 4, !dbg !1886, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %9, metadata !1882, metadata !DIExpression()), !dbg !1884
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1887
  %11 = load i32, i32* %10, align 8, !dbg !1887, !tbaa !1793
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1888
  %13 = load i32, i32* %12, align 4, !dbg !1888, !tbaa !1845
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1889
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1890
  %16 = load i8*, i8** %15, align 8, !dbg !1890, !tbaa !1867
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1891
  %18 = load i8*, i8** %17, align 8, !dbg !1891, !tbaa !1870
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %19, metadata !1883, metadata !DIExpression()), !dbg !1884
  store i32 %9, i32* %8, align 4, !dbg !1893, !tbaa !872
  ret i64 %19, !dbg !1894
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1895 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1901, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %1, metadata !1902, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %2, metadata !1903, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %3, metadata !1904, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %4, metadata !1905, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %5, metadata !1906, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32* %6, metadata !1907, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %7, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %8, metadata !1909, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 0, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 0, metadata !1912, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* null, metadata !1913, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 0, metadata !1914, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 0, metadata !1915, metadata !DIExpression()), !dbg !1971
  %13 = tail call i64 @__ctype_get_mb_cur_max() #28, !dbg !1972
  %14 = icmp eq i64 %13, 1, !dbg !1973
  call void @llvm.dbg.value(metadata i1 %14, metadata !1916, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1971
  %15 = lshr i32 %5, 1, !dbg !1974
  %16 = trunc i32 %15 to i8, !dbg !1974
  %17 = and i8 %16, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i8 %17, metadata !1917, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 0, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 0, metadata !1919, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 1, metadata !1920, metadata !DIExpression()), !dbg !1971
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1975

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1976
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1977
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1978
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1979
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1971
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1980
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1981
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1982
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1902, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %38, metadata !1920, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %37, metadata !1919, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %36, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %35, metadata !1917, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %34, metadata !1904, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %33, metadata !1915, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %32, metadata !1914, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %31, metadata !1913, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %30, metadata !1912, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 0, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %29, metadata !1909, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %28, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %27, metadata !1905, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.label(metadata !1965), !dbg !1983
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
  ], !dbg !1984

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1917, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 5, metadata !1905, metadata !DIExpression()), !dbg !1971
  br label %92, !dbg !1985

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1917, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 5, metadata !1905, metadata !DIExpression()), !dbg !1971
  %42 = and i8 %35, 1, !dbg !1987
  %43 = icmp eq i8 %42, 0, !dbg !1987
  br i1 %43, label %44, label %92, !dbg !1985

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1989
  br i1 %45, label %92, label %46, !dbg !1992

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1989, !tbaa !1024
  br label %92, !dbg !1989

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.84, i64 0, i64 0), i32 %27), !dbg !1993
  call void @llvm.dbg.value(metadata i8* %48, metadata !1908, metadata !DIExpression()), !dbg !1971
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), i32 %27), !dbg !1997
  call void @llvm.dbg.value(metadata i8* %49, metadata !1909, metadata !DIExpression()), !dbg !1971
  br label %50, !dbg !1998

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1909, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %51, metadata !1908, metadata !DIExpression()), !dbg !1971
  %53 = and i8 %35, 1, !dbg !1999
  %54 = icmp eq i8 %53, 0, !dbg !1999
  br i1 %54, label %55, label %70, !dbg !2001

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1913, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 0, metadata !1911, metadata !DIExpression()), !dbg !1971
  %56 = load i8, i8* %51, align 1, !dbg !2002, !tbaa !1024
  %57 = icmp eq i8 %56, 0, !dbg !2005
  br i1 %57, label %70, label %58, !dbg !2005

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1913, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %61, metadata !1911, metadata !DIExpression()), !dbg !1971
  %62 = icmp ult i64 %61, %39, !dbg !2006
  br i1 %62, label %63, label %65, !dbg !2009

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2006
  store i8 %59, i8* %64, align 1, !dbg !2006, !tbaa !1024
  br label %65, !dbg !2006

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %66, metadata !1911, metadata !DIExpression()), !dbg !1971
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2010
  call void @llvm.dbg.value(metadata i8* %67, metadata !1913, metadata !DIExpression()), !dbg !1971
  %68 = load i8, i8* %67, align 1, !dbg !2002, !tbaa !1024
  %69 = icmp eq i8 %68, 0, !dbg !2005
  br i1 %69, label %70, label %58, !dbg !2005, !llvm.loop !2011

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2013
  call void @llvm.dbg.value(metadata i64 %71, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 1, metadata !1915, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %52, metadata !1913, metadata !DIExpression()), !dbg !1971
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #29, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %72, metadata !1914, metadata !DIExpression()), !dbg !1971
  br label %92, !dbg !2015

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1915, metadata !DIExpression()), !dbg !1971
  br label %74, !dbg !2016

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1971
  call void @llvm.dbg.value(metadata i8 %75, metadata !1915, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 1, metadata !1917, metadata !DIExpression()), !dbg !1971
  br label %76, !dbg !2017

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1979
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1971
  call void @llvm.dbg.value(metadata i8 %78, metadata !1917, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %77, metadata !1915, metadata !DIExpression()), !dbg !1971
  %79 = and i8 %78, 1, !dbg !2018
  %80 = icmp eq i8 %79, 0, !dbg !2018
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2020
  br label %82, !dbg !2020

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1971
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1974
  call void @llvm.dbg.value(metadata i8 %84, metadata !1917, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %83, metadata !1915, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 2, metadata !1905, metadata !DIExpression()), !dbg !1971
  %85 = and i8 %84, 1, !dbg !2021
  %86 = icmp eq i8 %85, 0, !dbg !2021
  br i1 %86, label %87, label %92, !dbg !2023

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2024
  br i1 %88, label %92, label %89, !dbg !2027

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2024, !tbaa !1024
  br label %92, !dbg !2024

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1917, metadata !DIExpression()), !dbg !1971
  br label %92, !dbg !2028

91:                                               ; preds = %26
  call void @abort() #30, !dbg !2029
  unreachable, !dbg !2029

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2013
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %40 ], !dbg !1971
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1971
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1971
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1971
  call void @llvm.dbg.value(metadata i8 %100, metadata !1917, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %99, metadata !1915, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %98, metadata !1914, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %97, metadata !1913, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %96, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %95, metadata !1909, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %94, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %93, metadata !1905, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 0, metadata !1910, metadata !DIExpression()), !dbg !1971
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
  br label %121, !dbg !2030

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2031
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2013
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1976
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1980
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1981
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1982
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1902, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %128, metadata !1920, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %127, metadata !1919, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %126, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %125, metadata !1904, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %124, metadata !1912, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %123, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %122, metadata !1910, metadata !DIExpression()), !dbg !1971
  %130 = icmp eq i64 %125, -1, !dbg !2032
  br i1 %130, label %131, label %135, !dbg !2033

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2034
  %133 = load i8, i8* %132, align 1, !dbg !2034, !tbaa !1024
  %134 = icmp eq i8 %133, 0, !dbg !2035
  br i1 %134, label %587, label %137, !dbg !2036

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2037
  br i1 %136, label %587, label %137, !dbg !2036

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1926, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 0, metadata !1927, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 0, metadata !1928, metadata !DIExpression()), !dbg !2038
  br i1 %106, label %138, label %153, !dbg !2039

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2041
  %140 = and i1 %107, %130, !dbg !2042
  br i1 %140, label %141, label %143, !dbg !2042

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %142, metadata !1904, metadata !DIExpression()), !dbg !1971
  br label %143, !dbg !2044

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2044
  call void @llvm.dbg.value(metadata i64 %144, metadata !1904, metadata !DIExpression()), !dbg !1971
  %145 = icmp ugt i64 %139, %144, !dbg !2045
  br i1 %145, label %153, label %146, !dbg !2046

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2047
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2048
  %149 = icmp ne i32 %148, 0, !dbg !2049
  %150 = or i1 %149, %109, !dbg !2050
  %151 = xor i1 %149, true, !dbg !2050
  %152 = zext i1 %151 to i8, !dbg !2050
  br i1 %150, label %153, label %646, !dbg !2050

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2038
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2038
  call void @llvm.dbg.value(metadata i8 %156, metadata !1926, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %154, metadata !1904, metadata !DIExpression()), !dbg !1971
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2051
  %158 = load i8, i8* %157, align 1, !dbg !2051, !tbaa !1024
  call void @llvm.dbg.value(metadata i8 %158, metadata !1921, metadata !DIExpression()), !dbg !2038
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
  ], !dbg !2052

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2053

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2054

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1927, metadata !DIExpression()), !dbg !2038
  %162 = and i8 %126, 1, !dbg !2058
  %163 = icmp eq i8 %162, 0, !dbg !2058
  %164 = and i1 %110, %163, !dbg !2058
  br i1 %164, label %165, label %181, !dbg !2058

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2060
  br i1 %166, label %167, label %169, !dbg !2064

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2060
  store i8 39, i8* %168, align 1, !dbg !2060, !tbaa !1024
  br label %169, !dbg !2060

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %170, metadata !1911, metadata !DIExpression()), !dbg !1971
  %171 = icmp ult i64 %170, %129, !dbg !2065
  br i1 %171, label %172, label %174, !dbg !2068

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2065
  store i8 36, i8* %173, align 1, !dbg !2065, !tbaa !1024
  br label %174, !dbg !2065

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %175, metadata !1911, metadata !DIExpression()), !dbg !1971
  %176 = icmp ult i64 %175, %129, !dbg !2069
  br i1 %176, label %177, label %179, !dbg !2072

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2069
  store i8 39, i8* %178, align 1, !dbg !2069, !tbaa !1024
  br label %179, !dbg !2069

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %180, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 1, metadata !1918, metadata !DIExpression()), !dbg !1971
  br label %181, !dbg !2073

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1971
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1971
  call void @llvm.dbg.value(metadata i8 %183, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %182, metadata !1911, metadata !DIExpression()), !dbg !1971
  %184 = icmp ult i64 %182, %129, !dbg !2074
  br i1 %184, label %185, label %187, !dbg !2077

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2074
  store i8 92, i8* %186, align 1, !dbg !2074, !tbaa !1024
  br label %187, !dbg !2074

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %188, metadata !1911, metadata !DIExpression()), !dbg !1971
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2078
  br i1 %191, label %192, label %473, !dbg !2078

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2080
  %194 = load i8, i8* %193, align 1, !dbg !2080, !tbaa !1024
  %195 = add i8 %194, -48, !dbg !2081
  %196 = icmp ult i8 %195, 10, !dbg !2081
  br i1 %196, label %197, label %473, !dbg !2081

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2082
  br i1 %198, label %199, label %201, !dbg !2086

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2082
  store i8 48, i8* %200, align 1, !dbg !2082, !tbaa !1024
  br label %201, !dbg !2082

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %202, metadata !1911, metadata !DIExpression()), !dbg !1971
  %203 = icmp ult i64 %202, %129, !dbg !2087
  br i1 %203, label %204, label %206, !dbg !2090

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2087
  store i8 48, i8* %205, align 1, !dbg !2087, !tbaa !1024
  br label %206, !dbg !2087

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %207, metadata !1911, metadata !DIExpression()), !dbg !1971
  br label %473, !dbg !2091

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2092

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2093

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2094

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2096
  br i1 %214, label %215, label %473, !dbg !2096

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2098
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2099
  %218 = load i8, i8* %217, align 1, !dbg !2099, !tbaa !1024
  %219 = icmp eq i8 %218, 63, !dbg !2100
  br i1 %219, label %220, label %473, !dbg !2101

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2102
  %222 = load i8, i8* %221, align 1, !dbg !2102, !tbaa !1024
  %223 = sext i8 %222 to i32, !dbg !2102
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
  ], !dbg !2103

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2104

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i64 undef, metadata !1910, metadata !DIExpression()), !dbg !1971
  %226 = icmp ult i64 %123, %129, !dbg !2106
  br i1 %226, label %227, label %229, !dbg !2109

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2106
  store i8 63, i8* %228, align 1, !dbg !2106, !tbaa !1024
  br label %229, !dbg !2106

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %230, metadata !1911, metadata !DIExpression()), !dbg !1971
  %231 = icmp ult i64 %230, %129, !dbg !2110
  br i1 %231, label %232, label %234, !dbg !2113

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2110
  store i8 34, i8* %233, align 1, !dbg !2110, !tbaa !1024
  br label %234, !dbg !2110

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %235, metadata !1911, metadata !DIExpression()), !dbg !1971
  %236 = icmp ult i64 %235, %129, !dbg !2114
  br i1 %236, label %237, label %239, !dbg !2117

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2114
  store i8 34, i8* %238, align 1, !dbg !2114, !tbaa !1024
  br label %239, !dbg !2114

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %240, metadata !1911, metadata !DIExpression()), !dbg !1971
  %241 = icmp ult i64 %240, %129, !dbg !2118
  br i1 %241, label %242, label %244, !dbg !2121

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2118
  store i8 63, i8* %243, align 1, !dbg !2118, !tbaa !1024
  br label %244, !dbg !2118

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %245, metadata !1911, metadata !DIExpression()), !dbg !1971
  br label %473, !dbg !2122

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1925, metadata !DIExpression()), !dbg !2038
  br label %256, !dbg !2123

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1925, metadata !DIExpression()), !dbg !2038
  br label %256, !dbg !2124

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1925, metadata !DIExpression()), !dbg !2038
  br label %254, !dbg !2125

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1925, metadata !DIExpression()), !dbg !2038
  br label %254, !dbg !2126

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1925, metadata !DIExpression()), !dbg !2038
  br label %256, !dbg !2127

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1925, metadata !DIExpression()), !dbg !2038
  br i1 %110, label %252, label %253, !dbg !2128

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2129

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2132

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2134
  call void @llvm.dbg.value(metadata i8 %255, metadata !1925, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.label(metadata !1966), !dbg !2135
  br i1 %111, label %256, label %631, !dbg !2136

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2134
  call void @llvm.dbg.value(metadata i8 %257, metadata !1925, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.label(metadata !1967), !dbg !2138
  br i1 %102, label %495, label %473, !dbg !2139

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2140

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2141, !tbaa !1024
  %261 = icmp eq i8 %260, 0, !dbg !2143
  br i1 %261, label %262, label %473, !dbg !2144

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2145
  br i1 %263, label %264, label %473, !dbg !2147

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1928, metadata !DIExpression()), !dbg !2038
  br label %265, !dbg !2148

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2038
  call void @llvm.dbg.value(metadata i8 %266, metadata !1928, metadata !DIExpression()), !dbg !2038
  br i1 %111, label %473, label %631, !dbg !2149

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1919, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 1, metadata !1928, metadata !DIExpression()), !dbg !2038
  br i1 %110, label %268, label %473, !dbg !2151

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2152

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2155
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2157
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2157
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %274, metadata !1902, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %273, metadata !1912, metadata !DIExpression()), !dbg !1971
  %275 = icmp ult i64 %123, %274, !dbg !2158
  br i1 %275, label %276, label %278, !dbg !2161

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2158
  store i8 39, i8* %277, align 1, !dbg !2158, !tbaa !1024
  br label %278, !dbg !2158

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %279, metadata !1911, metadata !DIExpression()), !dbg !1971
  %280 = icmp ult i64 %279, %274, !dbg !2162
  br i1 %280, label %281, label %283, !dbg !2165

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2162
  store i8 92, i8* %282, align 1, !dbg !2162, !tbaa !1024
  br label %283, !dbg !2162

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %284, metadata !1911, metadata !DIExpression()), !dbg !1971
  %285 = icmp ult i64 %284, %274, !dbg !2166
  br i1 %285, label %286, label %288, !dbg !2169

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2166
  store i8 39, i8* %287, align 1, !dbg !2166, !tbaa !1024
  br label %288, !dbg !2166

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %289, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 0, metadata !1918, metadata !DIExpression()), !dbg !1971
  br label %473, !dbg !2170

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2171

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1929, metadata !DIExpression()), !dbg !2172
  %292 = tail call i16** @__ctype_b_loc() #32, !dbg !2173
  %293 = load i16*, i16** %292, align 8, !dbg !2173, !tbaa !689
  %294 = zext i8 %158 to i64, !dbg !2173
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2173
  %296 = load i16, i16* %295, align 2, !dbg !2173, !tbaa !2175
  %297 = lshr i16 %296, 14, !dbg !2177
  %298 = trunc i16 %297 to i8, !dbg !2177
  %299 = and i8 %298, 1, !dbg !2177
  call void @llvm.dbg.value(metadata i8 %354, metadata !1932, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i64 %355, metadata !1929, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i64 %306, metadata !1904, metadata !DIExpression()), !dbg !1971
  %300 = icmp eq i8 %299, 0, !dbg !2178
  call void @llvm.dbg.value(metadata i1 %357, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2038
  br label %359, !dbg !2179

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2180
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1933, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8* %23, metadata !2182, metadata !DIExpression()) #28, !dbg !2190
  call void @llvm.dbg.value(metadata i32 0, metadata !2188, metadata !DIExpression()) #28, !dbg !2190
  call void @llvm.dbg.value(metadata i64 8, metadata !2189, metadata !DIExpression()) #28, !dbg !2190
  store i64 0, i64* %10, align 8, !dbg !2192
  call void @llvm.dbg.value(metadata i64 0, metadata !1929, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 1, metadata !1932, metadata !DIExpression()), !dbg !2172
  %302 = icmp eq i64 %154, -1, !dbg !2193
  br i1 %302, label %303, label %305, !dbg !2195

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %304, metadata !1904, metadata !DIExpression()), !dbg !1971
  br label %305, !dbg !2197

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2038
  call void @llvm.dbg.value(metadata i64 %306, metadata !1904, metadata !DIExpression()), !dbg !1971
  br label %307, !dbg !2198

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2199
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2200
  call void @llvm.dbg.value(metadata i8 %309, metadata !1932, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i64 %308, metadata !1929, metadata !DIExpression()), !dbg !2172
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2201
  %310 = add i64 %308, %122, !dbg !2202
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2203
  %312 = sub i64 %306, %310, !dbg !2204
  call void @llvm.dbg.value(metadata i32* %12, metadata !1951, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #28, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %313, metadata !1954, metadata !DIExpression()), !dbg !2205
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2207

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1929, metadata !DIExpression()), !dbg !2172
  %315 = icmp ugt i64 %306, %310, !dbg !2208
  br i1 %315, label %316, label %341, !dbg !2210

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2211
  br label %318, !dbg !2211

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1929, metadata !DIExpression()), !dbg !2172
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2212
  %322 = load i8, i8* %321, align 1, !dbg !2212, !tbaa !1024
  %323 = icmp eq i8 %322, 0, !dbg !2210
  br i1 %323, label %341, label %324, !dbg !2211

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %325, metadata !1929, metadata !DIExpression()), !dbg !2172
  %326 = add i64 %325, %122, !dbg !2214
  %327 = icmp ult i64 %326, %306, !dbg !2208
  br i1 %327, label %318, label %341, !dbg !2210, !llvm.loop !2215

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2216
  call void @llvm.dbg.value(metadata i64 1, metadata !1955, metadata !DIExpression()), !dbg !2217
  br i1 %330, label %331, label %344, !dbg !2216

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1955, metadata !DIExpression()), !dbg !2217
  %333 = add i64 %332, %310, !dbg !2218
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2221
  %335 = load i8, i8* %334, align 1, !dbg !2221, !tbaa !1024
  %336 = sext i8 %335 to i32, !dbg !2221
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2222

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %338, metadata !1955, metadata !DIExpression()), !dbg !2217
  %339 = icmp eq i64 %338, %313, !dbg !2224
  br i1 %339, label %344, label %331, !dbg !2225, !llvm.loop !2226

340:                                              ; preds = %307
  br label %341, !dbg !2228

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1932, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i64 undef, metadata !1929, metadata !DIExpression()), !dbg !2172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2228
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2229, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %345, metadata !1951, metadata !DIExpression()), !dbg !2205
  %346 = call i32 @iswprint(i32 %345) #28, !dbg !2231
  %347 = icmp eq i32 %346, 0, !dbg !2231
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2232
  call void @llvm.dbg.value(metadata i8 %348, metadata !1932, metadata !DIExpression()), !dbg !2172
  %349 = add i64 %313, %308, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %349, metadata !1929, metadata !DIExpression()), !dbg !2172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2228
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #29, !dbg !2234
  %351 = icmp eq i32 %350, 0, !dbg !2235
  br i1 %351, label %307, label %353, !dbg !2236, !llvm.loop !2237

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1932, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i64 undef, metadata !1929, metadata !DIExpression()), !dbg !2172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2239
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2239
  call void @llvm.dbg.value(metadata i8 %354, metadata !1932, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i64 %355, metadata !1929, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i64 %306, metadata !1904, metadata !DIExpression()), !dbg !1971
  %356 = and i8 %354, 1, !dbg !2178
  %357 = icmp eq i8 %356, 0, !dbg !2178
  call void @llvm.dbg.value(metadata i1 %357, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2038
  %358 = icmp ugt i64 %355, 1, !dbg !2240
  br i1 %358, label %367, label %359, !dbg !2179

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2241
  br i1 %364, label %367, label %365, !dbg !2241

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2038
  call void @llvm.dbg.value(metadata i8 %472, metadata !1928, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %441, metadata !1927, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %440, metadata !1926, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %439, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %438, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %371, metadata !1904, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %437, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %375, metadata !1910, metadata !DIExpression()), !dbg !1971
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %372, metadata !1962, metadata !DIExpression()), !dbg !2243
  %373 = and i1 %102, %368
  br label %374, !dbg !2244

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2031
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1971
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1980
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2038
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2038
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2245
  call void @llvm.dbg.value(metadata i8 %380, metadata !1927, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %379, metadata !1926, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %378, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %377, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %376, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %375, metadata !1910, metadata !DIExpression()), !dbg !1971
  br i1 %373, label %381, label %427, !dbg !2246

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2251

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1927, metadata !DIExpression()), !dbg !2038
  %383 = and i8 %377, 1, !dbg !2254
  %384 = icmp eq i8 %383, 0, !dbg !2254
  %385 = and i1 %110, %384, !dbg !2254
  br i1 %385, label %386, label %402, !dbg !2254

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2256
  br i1 %387, label %388, label %390, !dbg !2260

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2256
  store i8 39, i8* %389, align 1, !dbg !2256, !tbaa !1024
  br label %390, !dbg !2256

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %391, metadata !1911, metadata !DIExpression()), !dbg !1971
  %392 = icmp ult i64 %391, %129, !dbg !2261
  br i1 %392, label %393, label %395, !dbg !2264

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2261
  store i8 36, i8* %394, align 1, !dbg !2261, !tbaa !1024
  br label %395, !dbg !2261

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %396, metadata !1911, metadata !DIExpression()), !dbg !1971
  %397 = icmp ult i64 %396, %129, !dbg !2265
  br i1 %397, label %398, label %400, !dbg !2268

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2265
  store i8 39, i8* %399, align 1, !dbg !2265, !tbaa !1024
  br label %400, !dbg !2265

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %401, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 1, metadata !1918, metadata !DIExpression()), !dbg !1971
  br label %402, !dbg !2269

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1971
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1971
  call void @llvm.dbg.value(metadata i8 %404, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %403, metadata !1911, metadata !DIExpression()), !dbg !1971
  %405 = icmp ult i64 %403, %129, !dbg !2270
  br i1 %405, label %406, label %408, !dbg !2273

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2270
  store i8 92, i8* %407, align 1, !dbg !2270, !tbaa !1024
  br label %408, !dbg !2270

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %409, metadata !1911, metadata !DIExpression()), !dbg !1971
  %410 = icmp ult i64 %409, %129, !dbg !2274
  br i1 %410, label %411, label %415, !dbg !2277

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2274
  %413 = or i8 %412, 48, !dbg !2274
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2274
  store i8 %413, i8* %414, align 1, !dbg !2274, !tbaa !1024
  br label %415, !dbg !2274

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %416, metadata !1911, metadata !DIExpression()), !dbg !1971
  %417 = icmp ult i64 %416, %129, !dbg !2278
  br i1 %417, label %418, label %423, !dbg !2281

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2278
  %420 = and i8 %419, 7, !dbg !2278
  %421 = or i8 %420, 48, !dbg !2278
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2278
  store i8 %421, i8* %422, align 1, !dbg !2278, !tbaa !1024
  br label %423, !dbg !2278

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %424, metadata !1911, metadata !DIExpression()), !dbg !1971
  %425 = and i8 %378, 7, !dbg !2282
  %426 = or i8 %425, 48, !dbg !2283
  call void @llvm.dbg.value(metadata i8 %426, metadata !1921, metadata !DIExpression()), !dbg !2038
  br label %436, !dbg !2284

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2285
  %429 = icmp eq i8 %428, 0, !dbg !2285
  br i1 %429, label %436, label %430, !dbg !2287

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2288
  br i1 %431, label %432, label %434, !dbg !2292

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2288
  store i8 92, i8* %433, align 1, !dbg !2288, !tbaa !1024
  br label %434, !dbg !2288

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %435, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 0, metadata !1926, metadata !DIExpression()), !dbg !2038
  br label %436, !dbg !2293

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1971
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1980
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2038
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2038
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2038
  call void @llvm.dbg.value(metadata i8 %441, metadata !1927, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %440, metadata !1926, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %439, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %438, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %437, metadata !1911, metadata !DIExpression()), !dbg !1971
  %442 = add i64 %375, 1, !dbg !2294
  %443 = icmp ugt i64 %372, %442, !dbg !2296
  br i1 %443, label %444, label %471, !dbg !2297

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2298
  %446 = icmp ne i8 %445, 0, !dbg !2298
  %447 = and i8 %441, 1, !dbg !2298
  %448 = icmp eq i8 %447, 0, !dbg !2298
  %449 = and i1 %446, %448, !dbg !2298
  br i1 %449, label %450, label %461, !dbg !2298

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2301
  br i1 %451, label %452, label %454, !dbg !2305

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2301
  store i8 39, i8* %453, align 1, !dbg !2301, !tbaa !1024
  br label %454, !dbg !2301

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 %455, metadata !1911, metadata !DIExpression()), !dbg !1971
  %456 = icmp ult i64 %455, %129, !dbg !2306
  br i1 %456, label %457, label %459, !dbg !2309

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2306
  store i8 39, i8* %458, align 1, !dbg !2306, !tbaa !1024
  br label %459, !dbg !2306

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %460, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 0, metadata !1918, metadata !DIExpression()), !dbg !1971
  br label %461, !dbg !2310

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2311
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1971
  call void @llvm.dbg.value(metadata i8 %463, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %462, metadata !1911, metadata !DIExpression()), !dbg !1971
  %464 = icmp ult i64 %462, %129, !dbg !2312
  br i1 %464, label %465, label %467, !dbg !2315

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2312
  store i8 %439, i8* %466, align 1, !dbg !2312, !tbaa !1024
  br label %467, !dbg !2312

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %468, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %442, metadata !1910, metadata !DIExpression()), !dbg !1971
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2316
  %470 = load i8, i8* %469, align 1, !dbg !2316, !tbaa !1024
  call void @llvm.dbg.value(metadata i8 %470, metadata !1921, metadata !DIExpression()), !dbg !2038
  br label %374, !dbg !2317, !llvm.loop !2318

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2038
  call void @llvm.dbg.value(metadata i8 %472, metadata !1928, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %441, metadata !1927, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %440, metadata !1926, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %439, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %438, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %371, metadata !1904, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %437, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %375, metadata !1910, metadata !DIExpression()), !dbg !1971
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2031
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1971
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1976
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2321
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1971
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1971
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2038
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2038
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2038
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1902, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %482, metadata !1928, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %481, metadata !1927, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %156, metadata !1926, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %480, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %479, metadata !1919, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %478, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %477, metadata !1904, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %476, metadata !1912, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %475, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %474, metadata !1910, metadata !DIExpression()), !dbg !1971
  br i1 %116, label %494, label %484, !dbg !2322

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2324
  %486 = zext i8 %485 to i64, !dbg !2324
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2325
  %488 = load i32, i32* %487, align 4, !dbg !2325, !tbaa !872
  %489 = and i8 %480, 31, !dbg !2326
  %490 = zext i8 %489 to i32, !dbg !2326
  %491 = shl nuw i32 1, %490, !dbg !2327
  %492 = and i32 %488, %491, !dbg !2327
  %493 = icmp eq i32 %492, 0, !dbg !2327
  br i1 %493, label %494, label %495, !dbg !2328

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2329

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2330
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1971
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1976
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2321
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1980
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1981
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2038
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2038
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1902, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %503, metadata !1928, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %502, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %501, metadata !1919, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %500, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %499, metadata !1904, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %498, metadata !1912, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %497, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %496, metadata !1910, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.label(metadata !1968), !dbg !2331
  br i1 %109, label %505, label %635, !dbg !2332

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1927, metadata !DIExpression()), !dbg !2038
  %506 = and i8 %500, 1, !dbg !2334
  %507 = icmp eq i8 %506, 0, !dbg !2334
  %508 = and i1 %110, %507, !dbg !2334
  br i1 %508, label %509, label %525, !dbg !2334

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2336
  br i1 %510, label %511, label %513, !dbg !2340

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2336
  store i8 39, i8* %512, align 1, !dbg !2336, !tbaa !1024
  br label %513, !dbg !2336

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %514, metadata !1911, metadata !DIExpression()), !dbg !1971
  %515 = icmp ult i64 %514, %504, !dbg !2341
  br i1 %515, label %516, label %518, !dbg !2344

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2341
  store i8 36, i8* %517, align 1, !dbg !2341, !tbaa !1024
  br label %518, !dbg !2341

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %519, metadata !1911, metadata !DIExpression()), !dbg !1971
  %520 = icmp ult i64 %519, %504, !dbg !2345
  br i1 %520, label %521, label %523, !dbg !2348

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2345
  store i8 39, i8* %522, align 1, !dbg !2345, !tbaa !1024
  br label %523, !dbg !2345

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2348
  call void @llvm.dbg.value(metadata i64 %524, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 1, metadata !1918, metadata !DIExpression()), !dbg !1971
  br label %525, !dbg !2349

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2038
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1971
  call void @llvm.dbg.value(metadata i8 %527, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %526, metadata !1911, metadata !DIExpression()), !dbg !1971
  %528 = icmp ult i64 %526, %504, !dbg !2350
  br i1 %528, label %529, label %531, !dbg !2353

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2350
  store i8 92, i8* %530, align 1, !dbg !2350, !tbaa !1024
  br label %531, !dbg !2350

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %543, metadata !1902, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %542, metadata !1928, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %541, metadata !1927, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %540, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %539, metadata !1919, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %538, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %537, metadata !1904, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %536, metadata !1912, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %535, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %534, metadata !1910, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.label(metadata !1969), !dbg !2354
  br label %560, !dbg !2355

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2330
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1971
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1976
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2321
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1980
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1981
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2358
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2038
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2038
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1902, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %542, metadata !1928, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %541, metadata !1927, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %540, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %539, metadata !1919, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %538, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %537, metadata !1904, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %536, metadata !1912, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %535, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %534, metadata !1910, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.label(metadata !1969), !dbg !2354
  %544 = and i8 %538, 1, !dbg !2355
  %545 = icmp ne i8 %544, 0, !dbg !2355
  %546 = and i8 %541, 1, !dbg !2355
  %547 = icmp eq i8 %546, 0, !dbg !2355
  %548 = and i1 %545, %547, !dbg !2355
  br i1 %548, label %549, label %560, !dbg !2355

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2359
  br i1 %550, label %551, label %553, !dbg !2363

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2359
  store i8 39, i8* %552, align 1, !dbg !2359, !tbaa !1024
  br label %553, !dbg !2359

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %554, metadata !1911, metadata !DIExpression()), !dbg !1971
  %555 = icmp ult i64 %554, %543, !dbg !2364
  br i1 %555, label %556, label %558, !dbg !2367

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2364
  store i8 39, i8* %557, align 1, !dbg !2364, !tbaa !1024
  br label %558, !dbg !2364

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %559, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 0, metadata !1918, metadata !DIExpression()), !dbg !1971
  br label %560, !dbg !2368

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2038
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1971
  call void @llvm.dbg.value(metadata i8 %569, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %568, metadata !1911, metadata !DIExpression()), !dbg !1971
  %570 = icmp ult i64 %568, %561, !dbg !2369
  br i1 %570, label %571, label %573, !dbg !2372

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2369
  store i8 %563, i8* %572, align 1, !dbg !2369, !tbaa !1024
  br label %573, !dbg !2369

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %574, metadata !1911, metadata !DIExpression()), !dbg !1971
  %575 = icmp eq i8 %562, 0, !dbg !2373
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2375
  call void @llvm.dbg.value(metadata i8 %576, metadata !1920, metadata !DIExpression()), !dbg !1971
  br label %577, !dbg !2376

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2330
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1971
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1976
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2321
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1980
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1971
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1982
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1902, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %584, metadata !1920, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %583, metadata !1919, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %582, metadata !1918, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %581, metadata !1904, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %580, metadata !1912, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %579, metadata !1911, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %578, metadata !1910, metadata !DIExpression()), !dbg !1971
  %586 = add i64 %578, 1, !dbg !2377
  call void @llvm.dbg.value(metadata i64 %586, metadata !1910, metadata !DIExpression()), !dbg !1971
  br label %121, !dbg !2378, !llvm.loop !2379

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2381
  %590 = and i1 %110, %589, !dbg !2383
  %591 = xor i1 %590, true, !dbg !2383
  %592 = or i1 %109, %591, !dbg !2383
  br i1 %592, label %593, label %635, !dbg !2383

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2384
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2384
  br i1 %597, label %598, label %607, !dbg !2384

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2386
  %600 = icmp eq i8 %599, 0, !dbg !2386
  br i1 %600, label %603, label %601, !dbg !2389

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2390
  br label %652, !dbg !2391

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2392
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2394
  br i1 %606, label %26, label %607, !dbg !2394

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2395
  %610 = and i1 %609, %608, !dbg !2397
  br i1 %610, label %611, label %626, !dbg !2397

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1913, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %123, metadata !1911, metadata !DIExpression()), !dbg !1971
  %612 = load i8, i8* %97, align 1, !dbg !2398, !tbaa !1024
  %613 = icmp eq i8 %612, 0, !dbg !2401
  br i1 %613, label %626, label %614, !dbg !2401

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1913, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %617, metadata !1911, metadata !DIExpression()), !dbg !1971
  %618 = icmp ult i64 %617, %129, !dbg !2402
  br i1 %618, label %619, label %621, !dbg !2405

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2402
  store i8 %615, i8* %620, align 1, !dbg !2402, !tbaa !1024
  br label %621, !dbg !2402

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %622, metadata !1911, metadata !DIExpression()), !dbg !1971
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2406
  call void @llvm.dbg.value(metadata i8* %623, metadata !1913, metadata !DIExpression()), !dbg !1971
  %624 = load i8, i8* %623, align 1, !dbg !2398, !tbaa !1024
  %625 = icmp eq i8 %624, 0, !dbg !2401
  br i1 %625, label %626, label %614, !dbg !2401, !llvm.loop !2407

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2013
  call void @llvm.dbg.value(metadata i64 %627, metadata !1911, metadata !DIExpression()), !dbg !1971
  %628 = icmp ult i64 %627, %129, !dbg !2409
  br i1 %628, label %629, label %652, !dbg !2411

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2412
  store i8 0, i8* %630, align 1, !dbg !2413, !tbaa !1024
  br label %652, !dbg !2412

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1902, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %637, metadata !1904, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.label(metadata !1970), !dbg !2414
  %633 = icmp eq i8 %101, 0, !dbg !2415
  %634 = select i1 %633, i32 2, i32 4, !dbg !2415
  br label %642, !dbg !2415

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1902, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %637, metadata !1904, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.label(metadata !1970), !dbg !2414
  %639 = icmp eq i32 %93, 2, !dbg !2417
  %640 = icmp eq i8 %636, 0, !dbg !2415
  %641 = select i1 %640, i32 2, i32 4, !dbg !2415
  br i1 %639, label %642, label %646, !dbg !2415

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2415

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1905, metadata !DIExpression()), !dbg !1971
  %650 = and i32 %5, -3, !dbg !2418
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2419
  br label %652, !dbg !2420

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2421
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2422 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2426, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i32 %1, metadata !2427, metadata !DIExpression()), !dbg !2430
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #28, !dbg !2431
  call void @llvm.dbg.value(metadata i8* %3, metadata !2428, metadata !DIExpression()), !dbg !2430
  %4 = icmp eq i8* %3, %0, !dbg !2432
  br i1 %4, label %5, label %72, !dbg !2434

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #28, !dbg !2435
  call void @llvm.dbg.value(metadata i8* %6, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8* %6, metadata !2436, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* undef, metadata !2442, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 85, metadata !2443, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 84, metadata !2444, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 70, metadata !2445, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 45, metadata !2446, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 56, metadata !2447, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2448, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2449, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2450, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2451, metadata !DIExpression()), !dbg !2452
  %7 = load i8, i8* %6, align 1, !dbg !2455, !tbaa !1024
  %8 = and i8 %7, -33, !dbg !2455
  %9 = sext i8 %8 to i32, !dbg !2455
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2455

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2457, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* undef, metadata !2462, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 84, metadata !2463, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 70, metadata !2464, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 45, metadata !2465, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 56, metadata !2466, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2467, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2468, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2469, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2470, metadata !DIExpression()), !dbg !2471
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2475
  %12 = load i8, i8* %11, align 1, !dbg !2475, !tbaa !1024
  %13 = and i8 %12, -33, !dbg !2475
  %14 = icmp eq i8 %13, 84, !dbg !2475
  br i1 %14, label %15, label %69, !dbg !2475

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2477, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8* undef, metadata !2482, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 70, metadata !2483, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 45, metadata !2484, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 56, metadata !2485, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 0, metadata !2486, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 0, metadata !2487, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 0, metadata !2488, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 0, metadata !2489, metadata !DIExpression()), !dbg !2490
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2494
  %17 = load i8, i8* %16, align 1, !dbg !2494, !tbaa !1024
  %18 = and i8 %17, -33, !dbg !2494
  %19 = icmp eq i8 %18, 70, !dbg !2494
  br i1 %19, label %20, label %69, !dbg !2494

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2496, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8* undef, metadata !2501, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 45, metadata !2502, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 56, metadata !2503, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 0, metadata !2504, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 0, metadata !2505, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 0, metadata !2506, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 0, metadata !2507, metadata !DIExpression()), !dbg !2508
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2512
  %22 = load i8, i8* %21, align 1, !dbg !2512, !tbaa !1024
  %23 = icmp eq i8 %22, 45, !dbg !2512
  br i1 %23, label %24, label %69, !dbg !2514

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2515, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* undef, metadata !2520, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 56, metadata !2521, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2525, metadata !DIExpression()), !dbg !2526
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2530
  %26 = load i8, i8* %25, align 1, !dbg !2530, !tbaa !1024
  %27 = icmp eq i8 %26, 56, !dbg !2530
  br i1 %27, label %28, label %69, !dbg !2532

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2533, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8* undef, metadata !2538, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 0, metadata !2539, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 0, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 0, metadata !2541, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 0, metadata !2542, metadata !DIExpression()), !dbg !2543
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2547
  %30 = load i8, i8* %29, align 1, !dbg !2547, !tbaa !1024
  %31 = icmp eq i8 %30, 0, !dbg !2547
  br i1 %31, label %32, label %69, !dbg !2549

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2550, !tbaa !1024
  %34 = icmp eq i8 %33, 96, !dbg !2551
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.87, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.88, i64 0, i64 0), !dbg !2550
  br label %72, !dbg !2552

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2457, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8* undef, metadata !2462, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8 66, metadata !2463, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8 49, metadata !2464, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8 56, metadata !2465, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8 48, metadata !2466, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8 51, metadata !2467, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8 48, metadata !2468, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8 0, metadata !2469, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8 0, metadata !2470, metadata !DIExpression()), !dbg !2553
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2557
  %38 = load i8, i8* %37, align 1, !dbg !2557, !tbaa !1024
  %39 = and i8 %38, -33, !dbg !2557
  %40 = icmp eq i8 %39, 66, !dbg !2557
  br i1 %40, label %41, label %69, !dbg !2557

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2477, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8* undef, metadata !2482, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 49, metadata !2483, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 56, metadata !2484, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 48, metadata !2485, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 51, metadata !2486, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 48, metadata !2487, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 0, metadata !2488, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 0, metadata !2489, metadata !DIExpression()), !dbg !2558
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2560
  %43 = load i8, i8* %42, align 1, !dbg !2560, !tbaa !1024
  %44 = icmp eq i8 %43, 49, !dbg !2560
  br i1 %44, label %45, label %69, !dbg !2561

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2496, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8* undef, metadata !2501, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 56, metadata !2502, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 48, metadata !2503, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 51, metadata !2504, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 48, metadata !2505, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 0, metadata !2506, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 0, metadata !2507, metadata !DIExpression()), !dbg !2562
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2564
  %47 = load i8, i8* %46, align 1, !dbg !2564, !tbaa !1024
  %48 = icmp eq i8 %47, 56, !dbg !2564
  br i1 %48, label %49, label %69, !dbg !2565

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2515, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* undef, metadata !2520, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 48, metadata !2521, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 51, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 48, metadata !2523, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 0, metadata !2524, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 0, metadata !2525, metadata !DIExpression()), !dbg !2566
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2568
  %51 = load i8, i8* %50, align 1, !dbg !2568, !tbaa !1024
  %52 = icmp eq i8 %51, 48, !dbg !2568
  br i1 %52, label %53, label %69, !dbg !2569

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2533, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8* undef, metadata !2538, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 51, metadata !2539, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 48, metadata !2540, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 0, metadata !2541, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 0, metadata !2542, metadata !DIExpression()), !dbg !2570
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2572
  %55 = load i8, i8* %54, align 1, !dbg !2572, !tbaa !1024
  %56 = icmp eq i8 %55, 51, !dbg !2572
  br i1 %56, label %57, label %69, !dbg !2573

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2574, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* undef, metadata !2579, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8 48, metadata !2580, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8 0, metadata !2581, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2583
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2587
  %59 = load i8, i8* %58, align 1, !dbg !2587, !tbaa !1024
  %60 = icmp eq i8 %59, 48, !dbg !2587
  br i1 %60, label %61, label %69, !dbg !2589

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2590, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8* undef, metadata !2595, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 0, metadata !2597, metadata !DIExpression()), !dbg !2598
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2602
  %63 = load i8, i8* %62, align 1, !dbg !2602, !tbaa !1024
  %64 = icmp eq i8 %63, 0, !dbg !2602
  br i1 %64, label %65, label %69, !dbg !2604

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2605, !tbaa !1024
  %67 = icmp eq i8 %66, 96, !dbg !2606
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.89, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.90, i64 0, i64 0), !dbg !2605
  br label %72, !dbg !2607

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2608
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), !dbg !2609
  br label %72, !dbg !2610

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2430
  ret i8* %73, !dbg !2611
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !2612 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2616 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2622 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2626, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i64 %1, metadata !2627, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2628, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8* %0, metadata !2630, metadata !DIExpression()) #28, !dbg !2643
  call void @llvm.dbg.value(metadata i64 %1, metadata !2635, metadata !DIExpression()) #28, !dbg !2643
  call void @llvm.dbg.value(metadata i64* null, metadata !2636, metadata !DIExpression()) #28, !dbg !2643
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2637, metadata !DIExpression()) #28, !dbg !2643
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2645
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2638, metadata !DIExpression()) #28, !dbg !2643
  %6 = tail call i32* @__errno_location() #32, !dbg !2646
  %7 = load i32, i32* %6, align 4, !dbg !2646, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %7, metadata !2639, metadata !DIExpression()) #28, !dbg !2643
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2647
  %9 = load i32, i32* %8, align 4, !dbg !2647, !tbaa !1845
  %10 = or i32 %9, 1, !dbg !2648
  call void @llvm.dbg.value(metadata i32 %10, metadata !2640, metadata !DIExpression()) #28, !dbg !2643
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2649
  %12 = load i32, i32* %11, align 8, !dbg !2649, !tbaa !1793
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2650
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2651
  %15 = load i8*, i8** %14, align 8, !dbg !2651, !tbaa !1867
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2652
  %17 = load i8*, i8** %16, align 8, !dbg !2652, !tbaa !1870
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #28, !dbg !2653
  %19 = add i64 %18, 1, !dbg !2654
  call void @llvm.dbg.value(metadata i64 %19, metadata !2641, metadata !DIExpression()) #28, !dbg !2643
  call void @llvm.dbg.value(metadata i64 %19, metadata !2655, metadata !DIExpression()) #28, !dbg !2660
  %20 = tail call noalias i8* @xmalloc(i64 %19) #28, !dbg !2662
  call void @llvm.dbg.value(metadata i8* %20, metadata !2642, metadata !DIExpression()) #28, !dbg !2643
  %21 = load i32, i32* %11, align 8, !dbg !2663, !tbaa !1793
  %22 = load i8*, i8** %14, align 8, !dbg !2664, !tbaa !1867
  %23 = load i8*, i8** %16, align 8, !dbg !2665, !tbaa !1870
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #28, !dbg !2666
  store i32 %7, i32* %6, align 4, !dbg !2667, !tbaa !872
  ret i8* %20, !dbg !2668
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2631 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2630, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 %1, metadata !2635, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64* %2, metadata !2636, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2637, metadata !DIExpression()), !dbg !2669
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2670
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2670
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2638, metadata !DIExpression()), !dbg !2669
  %7 = tail call i32* @__errno_location() #32, !dbg !2671
  %8 = load i32, i32* %7, align 4, !dbg !2671, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %8, metadata !2639, metadata !DIExpression()), !dbg !2669
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2672
  %10 = load i32, i32* %9, align 4, !dbg !2672, !tbaa !1845
  %11 = icmp eq i64* %2, null, !dbg !2673
  %12 = zext i1 %11 to i32, !dbg !2673
  %13 = or i32 %10, %12, !dbg !2674
  call void @llvm.dbg.value(metadata i32 %13, metadata !2640, metadata !DIExpression()), !dbg !2669
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2675
  %15 = load i32, i32* %14, align 8, !dbg !2675, !tbaa !1793
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2676
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2677
  %18 = load i8*, i8** %17, align 8, !dbg !2677, !tbaa !1867
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2678
  %20 = load i8*, i8** %19, align 8, !dbg !2678, !tbaa !1870
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2679
  %22 = add i64 %21, 1, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %22, metadata !2641, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 %22, metadata !2655, metadata !DIExpression()) #28, !dbg !2681
  %23 = tail call noalias i8* @xmalloc(i64 %22) #28, !dbg !2683
  call void @llvm.dbg.value(metadata i8* %23, metadata !2642, metadata !DIExpression()), !dbg !2669
  %24 = load i32, i32* %14, align 8, !dbg !2684, !tbaa !1793
  %25 = load i8*, i8** %17, align 8, !dbg !2685, !tbaa !1867
  %26 = load i8*, i8** %19, align 8, !dbg !2686, !tbaa !1870
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2687
  store i32 %8, i32* %7, align 4, !dbg !2688, !tbaa !872
  br i1 %11, label %29, label %28, !dbg !2689

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2690, !tbaa !1399
  br label %29, !dbg !2692

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2693
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2694 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2698, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2696, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i32 1, metadata !2697, metadata !DIExpression()), !dbg !2699
  %2 = load i32, i32* @nslots, align 4, !dbg !2700, !tbaa !872
  %3 = icmp sgt i32 %2, 1, !dbg !2703
  br i1 %3, label %4, label %12, !dbg !2704

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2703
  br label %6, !dbg !2704

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2697, metadata !DIExpression()), !dbg !2699
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2705
  %9 = load i8*, i8** %8, align 8, !dbg !2705, !tbaa !2706
  tail call void @free(i8* %9) #28, !dbg !2708
  %10 = add nuw nsw i64 %7, 1, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %10, metadata !2697, metadata !DIExpression()), !dbg !2699
  %11 = icmp eq i64 %10, %5, !dbg !2703
  br i1 %11, label %12, label %6, !dbg !2704, !llvm.loop !2710

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2712
  %14 = load i8*, i8** %13, align 8, !dbg !2712, !tbaa !2706
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2714
  br i1 %15, label %17, label %16, !dbg !2715

16:                                               ; preds = %12
  tail call void @free(i8* %14) #28, !dbg !2716
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2718, !tbaa !2719
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2720, !tbaa !2706
  br label %17, !dbg !2721

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2722
  br i1 %18, label %21, label %19, !dbg !2724

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2725
  tail call void @free(i8* %20) #28, !dbg !2727
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2728, !tbaa !689
  br label %21, !dbg !2729

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2730, !tbaa !872
  ret void, !dbg !2731
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2732 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2734, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8* %1, metadata !2735, metadata !DIExpression()), !dbg !2736
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2737
  ret i8* %3, !dbg !2738
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2739 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2743, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* %1, metadata !2744, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %2, metadata !2745, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2746, metadata !DIExpression()), !dbg !2758
  %5 = tail call i32* @__errno_location() #32, !dbg !2759
  %6 = load i32, i32* %5, align 4, !dbg !2759, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %6, metadata !2747, metadata !DIExpression()), !dbg !2758
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2760, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2748, metadata !DIExpression()), !dbg !2758
  %8 = icmp slt i32 %0, 0, !dbg !2761
  br i1 %8, label %9, label %10, !dbg !2763

9:                                                ; preds = %4
  tail call void @abort() #30, !dbg !2764
  unreachable, !dbg !2764

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2765, !tbaa !872
  %12 = icmp sgt i32 %11, %0, !dbg !2766
  br i1 %12, label %34, label %13, !dbg !2767

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2768
  call void @llvm.dbg.value(metadata i1 %14, metadata !2749, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2769
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2752, metadata !DIExpression()), !dbg !2769
  %15 = icmp eq i32 %0, 2147483647, !dbg !2770
  br i1 %15, label %16, label %17, !dbg !2772

16:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !2773
  unreachable, !dbg !2773

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2774
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2774
  %20 = add nuw nsw i32 %0, 1, !dbg !2775
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2776
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #28, !dbg !2777
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2777
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2748, metadata !DIExpression()), !dbg !2758
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2778, !tbaa !689
  br i1 %14, label %25, label %26, !dbg !2779

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2780, !tbaa.struct !2782
  br label %26, !dbg !2783

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2784, !tbaa !872
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2785
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2786
  %31 = sub nsw i32 %20, %27, !dbg !2787
  %32 = sext i32 %31 to i64, !dbg !2788
  %33 = shl nsw i64 %32, 4, !dbg !2789
  call void @llvm.dbg.value(metadata i8* %30, metadata !2182, metadata !DIExpression()) #28, !dbg !2790
  call void @llvm.dbg.value(metadata i32 0, metadata !2188, metadata !DIExpression()) #28, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %33, metadata !2189, metadata !DIExpression()) #28, !dbg !2790
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #28, !dbg !2792
  store i32 %20, i32* @nslots, align 4, !dbg !2793, !tbaa !872
  br label %34, !dbg !2794

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2758
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2748, metadata !DIExpression()), !dbg !2758
  %36 = zext i32 %0 to i64, !dbg !2795
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2796
  %38 = load i64, i64* %37, align 8, !dbg !2796, !tbaa !2719
  call void @llvm.dbg.value(metadata i64 %38, metadata !2753, metadata !DIExpression()), !dbg !2797
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2798
  %40 = load i8*, i8** %39, align 8, !dbg !2798, !tbaa !2706
  call void @llvm.dbg.value(metadata i8* %40, metadata !2755, metadata !DIExpression()), !dbg !2797
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2799
  %42 = load i32, i32* %41, align 4, !dbg !2799, !tbaa !1845
  %43 = or i32 %42, 1, !dbg !2800
  call void @llvm.dbg.value(metadata i32 %43, metadata !2756, metadata !DIExpression()), !dbg !2797
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2801
  %45 = load i32, i32* %44, align 8, !dbg !2801, !tbaa !1793
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2802
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2803
  %48 = load i8*, i8** %47, align 8, !dbg !2803, !tbaa !1867
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2804
  %50 = load i8*, i8** %49, align 8, !dbg !2804, !tbaa !1870
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %51, metadata !2757, metadata !DIExpression()), !dbg !2797
  %52 = icmp ugt i64 %38, %51, !dbg !2806
  br i1 %52, label %63, label %53, !dbg !2808

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2809
  call void @llvm.dbg.value(metadata i64 %54, metadata !2753, metadata !DIExpression()), !dbg !2797
  store i64 %54, i64* %37, align 8, !dbg !2811, !tbaa !2719
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2812
  br i1 %55, label %57, label %56, !dbg !2814

56:                                               ; preds = %53
  tail call void @free(i8* %40) #28, !dbg !2815
  br label %57, !dbg !2815

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2655, metadata !DIExpression()) #28, !dbg !2816
  %58 = tail call noalias i8* @xmalloc(i64 %54) #28, !dbg !2818
  call void @llvm.dbg.value(metadata i8* %58, metadata !2755, metadata !DIExpression()), !dbg !2797
  store i8* %58, i8** %39, align 8, !dbg !2819, !tbaa !2706
  %59 = load i32, i32* %44, align 8, !dbg !2820, !tbaa !1793
  %60 = load i8*, i8** %47, align 8, !dbg !2821, !tbaa !1867
  %61 = load i8*, i8** %49, align 8, !dbg !2822, !tbaa !1870
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2823
  br label %63, !dbg !2824

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2797
  call void @llvm.dbg.value(metadata i8* %64, metadata !2755, metadata !DIExpression()), !dbg !2797
  store i32 %6, i32* %5, align 4, !dbg !2825, !tbaa !872
  ret i8* %64, !dbg !2826
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2827 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2831, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8* %1, metadata !2832, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %2, metadata !2833, metadata !DIExpression()), !dbg !2834
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2835
  ret i8* %4, !dbg !2836
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2837 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2839, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 0, metadata !2734, metadata !DIExpression()) #28, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %0, metadata !2735, metadata !DIExpression()) #28, !dbg !2841
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !2843
  ret i8* %2, !dbg !2844
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2845 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2849, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i64 %1, metadata !2850, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 0, metadata !2831, metadata !DIExpression()) #28, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %0, metadata !2832, metadata !DIExpression()) #28, !dbg !2852
  call void @llvm.dbg.value(metadata i64 %1, metadata !2833, metadata !DIExpression()) #28, !dbg !2852
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !2854
  ret i8* %3, !dbg !2855
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2856 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2860, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i32 %1, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %2, metadata !2862, metadata !DIExpression()), !dbg !2864
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2865
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2865
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2863, metadata !DIExpression()), !dbg !2866
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2867), !dbg !2870
  call void @llvm.dbg.value(metadata i32 %1, metadata !2871, metadata !DIExpression()) #28, !dbg !2877
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2876, metadata !DIExpression()) #28, !dbg !2879
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !2879, !alias.scope !2867
  %6 = icmp eq i32 %1, 10, !dbg !2880
  br i1 %6, label %7, label %8, !dbg !2882

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !2883, !noalias !2867
  unreachable, !dbg !2883

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2884
  store i32 %1, i32* %9, align 8, !dbg !2885, !tbaa !1793, !alias.scope !2867
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2886
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2887
  ret i8* %10, !dbg !2888
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2889 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2893, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i32 %1, metadata !2894, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8* %2, metadata !2895, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 %3, metadata !2896, metadata !DIExpression()), !dbg !2898
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2899
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2899
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2897, metadata !DIExpression()), !dbg !2900
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2901), !dbg !2904
  call void @llvm.dbg.value(metadata i32 %1, metadata !2871, metadata !DIExpression()) #28, !dbg !2905
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2876, metadata !DIExpression()) #28, !dbg !2907
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #28, !dbg !2907, !alias.scope !2901
  %7 = icmp eq i32 %1, 10, !dbg !2908
  br i1 %7, label %8, label %9, !dbg !2909

8:                                                ; preds = %4
  tail call void @abort() #30, !dbg !2910, !noalias !2901
  unreachable, !dbg !2910

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2911
  store i32 %1, i32* %10, align 8, !dbg !2912, !tbaa !1793, !alias.scope !2901
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2913
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2914
  ret i8* %11, !dbg !2915
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2916 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8* %1, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 0, metadata !2860, metadata !DIExpression()) #28, !dbg !2923
  call void @llvm.dbg.value(metadata i32 %0, metadata !2861, metadata !DIExpression()) #28, !dbg !2923
  call void @llvm.dbg.value(metadata i8* %1, metadata !2862, metadata !DIExpression()) #28, !dbg !2923
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2925
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2925
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2863, metadata !DIExpression()) #28, !dbg !2926
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2927) #28, !dbg !2930
  call void @llvm.dbg.value(metadata i32 %0, metadata !2871, metadata !DIExpression()) #28, !dbg !2931
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2876, metadata !DIExpression()) #28, !dbg !2933
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #28, !dbg !2933, !alias.scope !2927
  %5 = icmp eq i32 %0, 10, !dbg !2934
  br i1 %5, label %6, label %7, !dbg !2935

6:                                                ; preds = %2
  tail call void @abort() #30, !dbg !2936, !noalias !2927
  unreachable, !dbg !2936

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2937
  store i32 %0, i32* %8, align 8, !dbg !2938, !tbaa !1793, !alias.scope !2927
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !2939
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2940
  ret i8* %9, !dbg !2941
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2942 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2946, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8* %1, metadata !2947, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 %2, metadata !2948, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i32 0, metadata !2893, metadata !DIExpression()) #28, !dbg !2950
  call void @llvm.dbg.value(metadata i32 %0, metadata !2894, metadata !DIExpression()) #28, !dbg !2950
  call void @llvm.dbg.value(metadata i8* %1, metadata !2895, metadata !DIExpression()) #28, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %2, metadata !2896, metadata !DIExpression()) #28, !dbg !2950
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2952
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2952
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2897, metadata !DIExpression()) #28, !dbg !2953
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2954) #28, !dbg !2957
  call void @llvm.dbg.value(metadata i32 %0, metadata !2871, metadata !DIExpression()) #28, !dbg !2958
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2876, metadata !DIExpression()) #28, !dbg !2960
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !2960, !alias.scope !2954
  %6 = icmp eq i32 %0, 10, !dbg !2961
  br i1 %6, label %7, label %8, !dbg !2962

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !2963, !noalias !2954
  unreachable, !dbg !2963

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2964
  store i32 %0, i32* %9, align 8, !dbg !2965, !tbaa !1793, !alias.scope !2954
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #28, !dbg !2966
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2967
  ret i8* %10, !dbg !2968
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2969 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2973, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %1, metadata !2974, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 %2, metadata !2975, metadata !DIExpression()), !dbg !2977
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2978
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2978
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2976, metadata !DIExpression()), !dbg !2979
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2980, !tbaa.struct !2981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1811, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 %2, metadata !1812, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 1, metadata !1813, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 %2, metadata !1814, metadata !DIExpression()), !dbg !2982
  %6 = lshr i8 %2, 5, !dbg !2984
  %7 = zext i8 %6 to i64, !dbg !2984
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2985
  call void @llvm.dbg.value(metadata i32* %8, metadata !1816, metadata !DIExpression()), !dbg !2982
  %9 = and i8 %2, 31, !dbg !2986
  %10 = zext i8 %9 to i32, !dbg !2986
  call void @llvm.dbg.value(metadata i32 %10, metadata !1818, metadata !DIExpression()), !dbg !2982
  %11 = load i32, i32* %8, align 4, !dbg !2987, !tbaa !872
  %12 = lshr i32 %11, %10, !dbg !2988
  %13 = and i32 %12, 1, !dbg !2989
  call void @llvm.dbg.value(metadata i32 %13, metadata !1819, metadata !DIExpression()), !dbg !2982
  %14 = xor i32 %13, 1, !dbg !2990
  %15 = shl i32 %14, %10, !dbg !2991
  %16 = xor i32 %15, %11, !dbg !2992
  store i32 %16, i32* %8, align 4, !dbg !2992, !tbaa !872
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2993
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2994
  ret i8* %17, !dbg !2995
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2996 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3000, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8 %1, metadata !3001, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8* %0, metadata !2973, metadata !DIExpression()) #28, !dbg !3003
  call void @llvm.dbg.value(metadata i64 -1, metadata !2974, metadata !DIExpression()) #28, !dbg !3003
  call void @llvm.dbg.value(metadata i8 %1, metadata !2975, metadata !DIExpression()) #28, !dbg !3003
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3005
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3005
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2976, metadata !DIExpression()) #28, !dbg !3006
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3007, !tbaa.struct !2981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1811, metadata !DIExpression()) #28, !dbg !3008
  call void @llvm.dbg.value(metadata i8 %1, metadata !1812, metadata !DIExpression()) #28, !dbg !3008
  call void @llvm.dbg.value(metadata i32 1, metadata !1813, metadata !DIExpression()) #28, !dbg !3008
  call void @llvm.dbg.value(metadata i8 %1, metadata !1814, metadata !DIExpression()) #28, !dbg !3008
  %5 = lshr i8 %1, 5, !dbg !3010
  %6 = zext i8 %5 to i64, !dbg !3010
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3011
  call void @llvm.dbg.value(metadata i32* %7, metadata !1816, metadata !DIExpression()) #28, !dbg !3008
  %8 = and i8 %1, 31, !dbg !3012
  %9 = zext i8 %8 to i32, !dbg !3012
  call void @llvm.dbg.value(metadata i32 %9, metadata !1818, metadata !DIExpression()) #28, !dbg !3008
  %10 = load i32, i32* %7, align 4, !dbg !3013, !tbaa !872
  %11 = lshr i32 %10, %9, !dbg !3014
  %12 = and i32 %11, 1, !dbg !3015
  call void @llvm.dbg.value(metadata i32 %12, metadata !1819, metadata !DIExpression()) #28, !dbg !3008
  %13 = xor i32 %12, 1, !dbg !3016
  %14 = shl i32 %13, %9, !dbg !3017
  %15 = xor i32 %14, %10, !dbg !3018
  store i32 %15, i32* %7, align 4, !dbg !3018, !tbaa !872
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !3019
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3020
  ret i8* %16, !dbg !3021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3022 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8* %0, metadata !3000, metadata !DIExpression()) #28, !dbg !3026
  call void @llvm.dbg.value(metadata i8 58, metadata !3001, metadata !DIExpression()) #28, !dbg !3026
  call void @llvm.dbg.value(metadata i8* %0, metadata !2973, metadata !DIExpression()) #28, !dbg !3028
  call void @llvm.dbg.value(metadata i64 -1, metadata !2974, metadata !DIExpression()) #28, !dbg !3028
  call void @llvm.dbg.value(metadata i8 58, metadata !2975, metadata !DIExpression()) #28, !dbg !3028
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3030
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #28, !dbg !3030
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2976, metadata !DIExpression()) #28, !dbg !3031
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3032, !tbaa.struct !2981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1811, metadata !DIExpression()) #28, !dbg !3033
  call void @llvm.dbg.value(metadata i8 58, metadata !1812, metadata !DIExpression()) #28, !dbg !3033
  call void @llvm.dbg.value(metadata i32 1, metadata !1813, metadata !DIExpression()) #28, !dbg !3033
  call void @llvm.dbg.value(metadata i8 58, metadata !1814, metadata !DIExpression()) #28, !dbg !3033
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3035
  call void @llvm.dbg.value(metadata i32* %4, metadata !1816, metadata !DIExpression()) #28, !dbg !3033
  call void @llvm.dbg.value(metadata i32 26, metadata !1818, metadata !DIExpression()) #28, !dbg !3033
  %5 = load i32, i32* %4, align 4, !dbg !3036, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %5, metadata !1819, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !3033
  %6 = or i32 %5, 67108864, !dbg !3037
  store i32 %6, i32* %4, align 4, !dbg !3037, !tbaa !872
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #28, !dbg !3038
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #28, !dbg !3039
  ret i8* %7, !dbg !3040
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3041 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3043, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %1, metadata !3044, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8* %0, metadata !2973, metadata !DIExpression()) #28, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %1, metadata !2974, metadata !DIExpression()) #28, !dbg !3046
  call void @llvm.dbg.value(metadata i8 58, metadata !2975, metadata !DIExpression()) #28, !dbg !3046
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3048
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3048
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2976, metadata !DIExpression()) #28, !dbg !3049
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3050, !tbaa.struct !2981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1811, metadata !DIExpression()) #28, !dbg !3051
  call void @llvm.dbg.value(metadata i8 58, metadata !1812, metadata !DIExpression()) #28, !dbg !3051
  call void @llvm.dbg.value(metadata i32 1, metadata !1813, metadata !DIExpression()) #28, !dbg !3051
  call void @llvm.dbg.value(metadata i8 58, metadata !1814, metadata !DIExpression()) #28, !dbg !3051
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3053
  call void @llvm.dbg.value(metadata i32* %5, metadata !1816, metadata !DIExpression()) #28, !dbg !3051
  call void @llvm.dbg.value(metadata i32 26, metadata !1818, metadata !DIExpression()) #28, !dbg !3051
  %6 = load i32, i32* %5, align 4, !dbg !3054, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %6, metadata !1819, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !3051
  %7 = or i32 %6, 67108864, !dbg !3055
  store i32 %7, i32* %5, align 4, !dbg !3055, !tbaa !872
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #28, !dbg !3056
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3057
  ret i8* %8, !dbg !3058
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3059 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2876, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3065
  call void @llvm.dbg.value(metadata i32 %0, metadata !3061, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i32 %1, metadata !3062, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i8* %2, metadata !3063, metadata !DIExpression()), !dbg !3067
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3068
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3068
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3064, metadata !DIExpression()), !dbg !3069
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3070
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3070
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3071), !dbg !3070
  call void @llvm.dbg.value(metadata i32 %1, metadata !2871, metadata !DIExpression()) #28, !dbg !3074
  call void @llvm.dbg.value(metadata i32 0, metadata !2876, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3074
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3065, !alias.scope !3071
  %8 = icmp eq i32 %1, 10, !dbg !3075
  br i1 %8, label %9, label %10, !dbg !3076

9:                                                ; preds = %3
  tail call void @abort() #30, !dbg !3077, !noalias !3071
  unreachable, !dbg !3077

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2876, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3074
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3070
  store i32 %1, i32* %11, align 8, !dbg !3070, !tbaa.struct !2981
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3070
  %13 = bitcast i32* %12 to i8*, !dbg !3070
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3070, !tbaa.struct !3078
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3070
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1811, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8 58, metadata !1812, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i32 1, metadata !1813, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8 58, metadata !1814, metadata !DIExpression()), !dbg !3079
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3081
  call void @llvm.dbg.value(metadata i32* %14, metadata !1816, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i32 26, metadata !1818, metadata !DIExpression()), !dbg !3079
  %15 = load i32, i32* %14, align 4, !dbg !3082, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %15, metadata !1819, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3079
  %16 = or i32 %15, 67108864, !dbg !3083
  store i32 %16, i32* %14, align 4, !dbg !3083, !tbaa !872
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3084
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3085
  ret i8* %17, !dbg !3086
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3087 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3091, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8* %1, metadata !3092, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8* %2, metadata !3093, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8* %3, metadata !3094, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i32 %0, metadata !3096, metadata !DIExpression()) #28, !dbg !3106
  call void @llvm.dbg.value(metadata i8* %1, metadata !3101, metadata !DIExpression()) #28, !dbg !3106
  call void @llvm.dbg.value(metadata i8* %2, metadata !3102, metadata !DIExpression()) #28, !dbg !3106
  call void @llvm.dbg.value(metadata i8* %3, metadata !3103, metadata !DIExpression()) #28, !dbg !3106
  call void @llvm.dbg.value(metadata i64 -1, metadata !3104, metadata !DIExpression()) #28, !dbg !3106
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3108
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3108
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3105, metadata !DIExpression()) #28, !dbg !3109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3110, !tbaa.struct !2981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1852, metadata !DIExpression()) #28, !dbg !3111
  call void @llvm.dbg.value(metadata i8* %1, metadata !1853, metadata !DIExpression()) #28, !dbg !3111
  call void @llvm.dbg.value(metadata i8* %2, metadata !1854, metadata !DIExpression()) #28, !dbg !3111
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1852, metadata !DIExpression()) #28, !dbg !3111
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3113
  store i32 10, i32* %7, align 8, !dbg !3114, !tbaa !1793
  %8 = icmp ne i8* %1, null, !dbg !3115
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3116
  br i1 %10, label %12, label %11, !dbg !3116

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !3117
  unreachable, !dbg !3117

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3118
  store i8* %1, i8** %13, align 8, !dbg !3119, !tbaa !1867
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3120
  store i8* %2, i8** %14, align 8, !dbg !3121, !tbaa !1870
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #28, !dbg !3122
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3123
  ret i8* %15, !dbg !3124
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3097 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3096, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8* %1, metadata !3101, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8* %2, metadata !3102, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8* %3, metadata !3103, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i64 %4, metadata !3104, metadata !DIExpression()), !dbg !3125
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3126
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #28, !dbg !3126
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3105, metadata !DIExpression()), !dbg !3127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3128, !tbaa.struct !2981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1852, metadata !DIExpression()) #28, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %1, metadata !1853, metadata !DIExpression()) #28, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %2, metadata !1854, metadata !DIExpression()) #28, !dbg !3129
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1852, metadata !DIExpression()) #28, !dbg !3129
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3131
  store i32 10, i32* %8, align 8, !dbg !3132, !tbaa !1793
  %9 = icmp ne i8* %1, null, !dbg !3133
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3134
  br i1 %11, label %13, label %12, !dbg !3134

12:                                               ; preds = %5
  tail call void @abort() #30, !dbg !3135
  unreachable, !dbg !3135

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3136
  store i8* %1, i8** %14, align 8, !dbg !3137, !tbaa !1867
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3138
  store i8* %2, i8** %15, align 8, !dbg !3139, !tbaa !1870
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3140
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #28, !dbg !3141
  ret i8* %16, !dbg !3142
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3143 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3147, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i8* %1, metadata !3148, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i8* %2, metadata !3149, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i32 0, metadata !3091, metadata !DIExpression()) #28, !dbg !3151
  call void @llvm.dbg.value(metadata i8* %0, metadata !3092, metadata !DIExpression()) #28, !dbg !3151
  call void @llvm.dbg.value(metadata i8* %1, metadata !3093, metadata !DIExpression()) #28, !dbg !3151
  call void @llvm.dbg.value(metadata i8* %2, metadata !3094, metadata !DIExpression()) #28, !dbg !3151
  call void @llvm.dbg.value(metadata i32 0, metadata !3096, metadata !DIExpression()) #28, !dbg !3153
  call void @llvm.dbg.value(metadata i8* %0, metadata !3101, metadata !DIExpression()) #28, !dbg !3153
  call void @llvm.dbg.value(metadata i8* %1, metadata !3102, metadata !DIExpression()) #28, !dbg !3153
  call void @llvm.dbg.value(metadata i8* %2, metadata !3103, metadata !DIExpression()) #28, !dbg !3153
  call void @llvm.dbg.value(metadata i64 -1, metadata !3104, metadata !DIExpression()) #28, !dbg !3153
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3155
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3155
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3105, metadata !DIExpression()) #28, !dbg !3156
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3157, !tbaa.struct !2981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1852, metadata !DIExpression()) #28, !dbg !3158
  call void @llvm.dbg.value(metadata i8* %0, metadata !1853, metadata !DIExpression()) #28, !dbg !3158
  call void @llvm.dbg.value(metadata i8* %1, metadata !1854, metadata !DIExpression()) #28, !dbg !3158
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1852, metadata !DIExpression()) #28, !dbg !3158
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3160
  store i32 10, i32* %6, align 8, !dbg !3161, !tbaa !1793
  %7 = icmp ne i8* %0, null, !dbg !3162
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3163
  br i1 %9, label %11, label %10, !dbg !3163

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !3164
  unreachable, !dbg !3164

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3165
  store i8* %0, i8** %12, align 8, !dbg !3166, !tbaa !1867
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3167
  store i8* %1, i8** %13, align 8, !dbg !3168, !tbaa !1870
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #28, !dbg !3169
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3170
  ret i8* %14, !dbg !3171
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3172 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3176, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8* %1, metadata !3177, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8* %2, metadata !3178, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %3, metadata !3179, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i32 0, metadata !3096, metadata !DIExpression()) #28, !dbg !3181
  call void @llvm.dbg.value(metadata i8* %0, metadata !3101, metadata !DIExpression()) #28, !dbg !3181
  call void @llvm.dbg.value(metadata i8* %1, metadata !3102, metadata !DIExpression()) #28, !dbg !3181
  call void @llvm.dbg.value(metadata i8* %2, metadata !3103, metadata !DIExpression()) #28, !dbg !3181
  call void @llvm.dbg.value(metadata i64 %3, metadata !3104, metadata !DIExpression()) #28, !dbg !3181
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3183
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3183
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3105, metadata !DIExpression()) #28, !dbg !3184
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3185, !tbaa.struct !2981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1852, metadata !DIExpression()) #28, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %0, metadata !1853, metadata !DIExpression()) #28, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %1, metadata !1854, metadata !DIExpression()) #28, !dbg !3186
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1852, metadata !DIExpression()) #28, !dbg !3186
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3188
  store i32 10, i32* %7, align 8, !dbg !3189, !tbaa !1793
  %8 = icmp ne i8* %0, null, !dbg !3190
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3191
  br i1 %10, label %12, label %11, !dbg !3191

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !3192
  unreachable, !dbg !3192

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3193
  store i8* %0, i8** %13, align 8, !dbg !3194, !tbaa !1867
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3195
  store i8* %1, i8** %14, align 8, !dbg !3196, !tbaa !1870
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #28, !dbg !3197
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3198
  ret i8* %15, !dbg !3199
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3200 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3204, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8* %1, metadata !3205, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i64 %2, metadata !3206, metadata !DIExpression()), !dbg !3207
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3208
  ret i8* %4, !dbg !3209
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3210 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3214, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %1, metadata !3215, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 0, metadata !3204, metadata !DIExpression()) #28, !dbg !3217
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()) #28, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %1, metadata !3206, metadata !DIExpression()) #28, !dbg !3217
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3219
  ret i8* %3, !dbg !3220
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3221 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3225, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8* %1, metadata !3226, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 %0, metadata !3204, metadata !DIExpression()) #28, !dbg !3228
  call void @llvm.dbg.value(metadata i8* %1, metadata !3205, metadata !DIExpression()) #28, !dbg !3228
  call void @llvm.dbg.value(metadata i64 -1, metadata !3206, metadata !DIExpression()) #28, !dbg !3228
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3230
  ret i8* %3, !dbg !3231
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3232 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3236, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i32 0, metadata !3225, metadata !DIExpression()) #28, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %0, metadata !3226, metadata !DIExpression()) #28, !dbg !3238
  call void @llvm.dbg.value(metadata i32 0, metadata !3204, metadata !DIExpression()) #28, !dbg !3240
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()) #28, !dbg !3240
  call void @llvm.dbg.value(metadata i64 -1, metadata !3206, metadata !DIExpression()) #28, !dbg !3240
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3242
  ret i8* %2, !dbg !3243
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3244 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3284, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8* %1, metadata !3285, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8* %2, metadata !3286, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8* %3, metadata !3287, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8** %4, metadata !3288, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %5, metadata !3289, metadata !DIExpression()), !dbg !3290
  %7 = icmp eq i8* %1, null, !dbg !3291
  br i1 %7, label %10, label %8, !dbg !3293

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #28, !dbg !3294
  br label %12, !dbg !3294

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.96, i64 0, i64 0), i8* %2, i8* %3) #28, !dbg !3295
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.97, i64 0, i64 0), i32 5) #28, !dbg !3296
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #28, !dbg !3296
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.98, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3297
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.99, i64 0, i64 0), i32 5) #28, !dbg !3298
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.100, i64 0, i64 0)) #28, !dbg !3298
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.98, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3299
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
  ], !dbg !3300

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.101, i64 0, i64 0), i32 5) #28, !dbg !3301
  %21 = load i8*, i8** %4, align 8, !dbg !3301, !tbaa !689
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #28, !dbg !3301
  br label %147, !dbg !3303

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.102, i64 0, i64 0), i32 5) #28, !dbg !3304
  %25 = load i8*, i8** %4, align 8, !dbg !3304, !tbaa !689
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3304
  %27 = load i8*, i8** %26, align 8, !dbg !3304, !tbaa !689
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #28, !dbg !3304
  br label %147, !dbg !3305

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.103, i64 0, i64 0), i32 5) #28, !dbg !3306
  %31 = load i8*, i8** %4, align 8, !dbg !3306, !tbaa !689
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3306
  %33 = load i8*, i8** %32, align 8, !dbg !3306, !tbaa !689
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3306
  %35 = load i8*, i8** %34, align 8, !dbg !3306, !tbaa !689
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #28, !dbg !3306
  br label %147, !dbg !3307

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.104, i64 0, i64 0), i32 5) #28, !dbg !3308
  %39 = load i8*, i8** %4, align 8, !dbg !3308, !tbaa !689
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3308
  %41 = load i8*, i8** %40, align 8, !dbg !3308, !tbaa !689
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3308
  %43 = load i8*, i8** %42, align 8, !dbg !3308, !tbaa !689
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3308
  %45 = load i8*, i8** %44, align 8, !dbg !3308, !tbaa !689
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #28, !dbg !3308
  br label %147, !dbg !3309

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.105, i64 0, i64 0), i32 5) #28, !dbg !3310
  %49 = load i8*, i8** %4, align 8, !dbg !3310, !tbaa !689
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3310
  %51 = load i8*, i8** %50, align 8, !dbg !3310, !tbaa !689
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3310
  %53 = load i8*, i8** %52, align 8, !dbg !3310, !tbaa !689
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3310
  %55 = load i8*, i8** %54, align 8, !dbg !3310, !tbaa !689
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3310
  %57 = load i8*, i8** %56, align 8, !dbg !3310, !tbaa !689
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #28, !dbg !3310
  br label %147, !dbg !3311

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.106, i64 0, i64 0), i32 5) #28, !dbg !3312
  %61 = load i8*, i8** %4, align 8, !dbg !3312, !tbaa !689
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3312
  %63 = load i8*, i8** %62, align 8, !dbg !3312, !tbaa !689
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3312
  %65 = load i8*, i8** %64, align 8, !dbg !3312, !tbaa !689
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3312
  %67 = load i8*, i8** %66, align 8, !dbg !3312, !tbaa !689
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3312
  %69 = load i8*, i8** %68, align 8, !dbg !3312, !tbaa !689
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3312
  %71 = load i8*, i8** %70, align 8, !dbg !3312, !tbaa !689
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #28, !dbg !3312
  br label %147, !dbg !3313

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.107, i64 0, i64 0), i32 5) #28, !dbg !3314
  %75 = load i8*, i8** %4, align 8, !dbg !3314, !tbaa !689
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3314
  %77 = load i8*, i8** %76, align 8, !dbg !3314, !tbaa !689
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3314
  %79 = load i8*, i8** %78, align 8, !dbg !3314, !tbaa !689
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3314
  %81 = load i8*, i8** %80, align 8, !dbg !3314, !tbaa !689
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3314
  %83 = load i8*, i8** %82, align 8, !dbg !3314, !tbaa !689
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3314
  %85 = load i8*, i8** %84, align 8, !dbg !3314, !tbaa !689
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3314
  %87 = load i8*, i8** %86, align 8, !dbg !3314, !tbaa !689
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #28, !dbg !3314
  br label %147, !dbg !3315

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.108, i64 0, i64 0), i32 5) #28, !dbg !3316
  %91 = load i8*, i8** %4, align 8, !dbg !3316, !tbaa !689
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3316
  %93 = load i8*, i8** %92, align 8, !dbg !3316, !tbaa !689
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3316
  %95 = load i8*, i8** %94, align 8, !dbg !3316, !tbaa !689
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3316
  %97 = load i8*, i8** %96, align 8, !dbg !3316, !tbaa !689
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3316
  %99 = load i8*, i8** %98, align 8, !dbg !3316, !tbaa !689
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3316
  %101 = load i8*, i8** %100, align 8, !dbg !3316, !tbaa !689
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3316
  %103 = load i8*, i8** %102, align 8, !dbg !3316, !tbaa !689
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3316
  %105 = load i8*, i8** %104, align 8, !dbg !3316, !tbaa !689
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #28, !dbg !3316
  br label %147, !dbg !3317

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.109, i64 0, i64 0), i32 5) #28, !dbg !3318
  %109 = load i8*, i8** %4, align 8, !dbg !3318, !tbaa !689
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3318
  %111 = load i8*, i8** %110, align 8, !dbg !3318, !tbaa !689
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3318
  %113 = load i8*, i8** %112, align 8, !dbg !3318, !tbaa !689
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3318
  %115 = load i8*, i8** %114, align 8, !dbg !3318, !tbaa !689
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3318
  %117 = load i8*, i8** %116, align 8, !dbg !3318, !tbaa !689
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3318
  %119 = load i8*, i8** %118, align 8, !dbg !3318, !tbaa !689
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3318
  %121 = load i8*, i8** %120, align 8, !dbg !3318, !tbaa !689
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3318
  %123 = load i8*, i8** %122, align 8, !dbg !3318, !tbaa !689
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3318
  %125 = load i8*, i8** %124, align 8, !dbg !3318, !tbaa !689
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #28, !dbg !3318
  br label %147, !dbg !3319

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.110, i64 0, i64 0), i32 5) #28, !dbg !3320
  %129 = load i8*, i8** %4, align 8, !dbg !3320, !tbaa !689
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3320
  %131 = load i8*, i8** %130, align 8, !dbg !3320, !tbaa !689
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3320
  %133 = load i8*, i8** %132, align 8, !dbg !3320, !tbaa !689
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3320
  %135 = load i8*, i8** %134, align 8, !dbg !3320, !tbaa !689
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3320
  %137 = load i8*, i8** %136, align 8, !dbg !3320, !tbaa !689
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3320
  %139 = load i8*, i8** %138, align 8, !dbg !3320, !tbaa !689
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3320
  %141 = load i8*, i8** %140, align 8, !dbg !3320, !tbaa !689
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3320
  %143 = load i8*, i8** %142, align 8, !dbg !3320, !tbaa !689
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3320
  %145 = load i8*, i8** %144, align 8, !dbg !3320, !tbaa !689
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #28, !dbg !3320
  br label %147, !dbg !3321

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3322
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3323 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3327, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i8* %1, metadata !3328, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i8* %2, metadata !3329, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i8* %3, metadata !3330, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i8** %4, metadata !3331, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 0, metadata !3332, metadata !DIExpression()), !dbg !3333
  br label %6, !dbg !3334

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3336
  call void @llvm.dbg.value(metadata i64 %7, metadata !3332, metadata !DIExpression()), !dbg !3333
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3337
  %9 = load i8*, i8** %8, align 8, !dbg !3337, !tbaa !689
  %10 = icmp eq i8* %9, null, !dbg !3339
  %11 = add i64 %7, 1, !dbg !3340
  call void @llvm.dbg.value(metadata i64 %11, metadata !3332, metadata !DIExpression()), !dbg !3333
  br i1 %10, label %12, label %6, !dbg !3339, !llvm.loop !3341

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3343
  ret void, !dbg !3344
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3345 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3356, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8* %1, metadata !3357, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8* %2, metadata !3358, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8* %3, metadata !3359, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3360, metadata !DIExpression()), !dbg !3364
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3365
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #28, !dbg !3365
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3362, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i64 0, metadata !3361, metadata !DIExpression()), !dbg !3364
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3361, metadata !DIExpression()), !dbg !3364
  %11 = load i32, i32* %8, align 8, !dbg !3367
  %12 = icmp ult i32 %11, 41, !dbg !3367
  br i1 %12, label %13, label %18, !dbg !3367

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3367
  %15 = zext i32 %11 to i64, !dbg !3367
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3367
  %17 = add nuw nsw i32 %11, 8, !dbg !3367
  store i32 %17, i32* %8, align 8, !dbg !3367
  br label %21, !dbg !3367

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3367
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3367
  store i8* %20, i8** %9, align 8, !dbg !3367
  br label %21, !dbg !3367

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3367
  %25 = load i8*, i8** %24, align 8, !dbg !3367
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3370
  store i8* %25, i8** %26, align 16, !dbg !3371, !tbaa !689
  %27 = icmp eq i8* %25, null, !dbg !3372
  br i1 %27, label %30, label %28, !dbg !3373

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3361, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 1, metadata !3361, metadata !DIExpression()), !dbg !3364
  %29 = icmp ult i32 %22, 41, !dbg !3367
  br i1 %29, label %35, label %32, !dbg !3367

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3374
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3375
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #28, !dbg !3376
  ret void, !dbg !3376

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3367
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3367
  store i8* %34, i8** %9, align 8, !dbg !3367
  br label %40, !dbg !3367

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3367
  %37 = zext i32 %22 to i64, !dbg !3367
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3367
  %39 = add nuw nsw i32 %22, 8, !dbg !3367
  store i32 %39, i32* %8, align 8, !dbg !3367
  br label %40, !dbg !3367

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3367
  %44 = load i8*, i8** %43, align 8, !dbg !3367
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3370
  store i8* %44, i8** %45, align 8, !dbg !3371, !tbaa !689
  %46 = icmp eq i8* %44, null, !dbg !3372
  br i1 %46, label %30, label %47, !dbg !3373

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3361, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 2, metadata !3361, metadata !DIExpression()), !dbg !3364
  %48 = icmp ult i32 %41, 41, !dbg !3367
  br i1 %48, label %52, label %49, !dbg !3367

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3367
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3367
  store i8* %51, i8** %9, align 8, !dbg !3367
  br label %57, !dbg !3367

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3367
  %54 = zext i32 %41 to i64, !dbg !3367
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3367
  %56 = add nuw nsw i32 %41, 8, !dbg !3367
  store i32 %56, i32* %8, align 8, !dbg !3367
  br label %57, !dbg !3367

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3367
  %61 = load i8*, i8** %60, align 8, !dbg !3367
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3370
  store i8* %61, i8** %62, align 16, !dbg !3371, !tbaa !689
  %63 = icmp eq i8* %61, null, !dbg !3372
  br i1 %63, label %30, label %64, !dbg !3373

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3361, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 3, metadata !3361, metadata !DIExpression()), !dbg !3364
  %65 = icmp ult i32 %58, 41, !dbg !3367
  br i1 %65, label %69, label %66, !dbg !3367

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3367
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3367
  store i8* %68, i8** %9, align 8, !dbg !3367
  br label %74, !dbg !3367

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3367
  %71 = zext i32 %58 to i64, !dbg !3367
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3367
  %73 = add nuw nsw i32 %58, 8, !dbg !3367
  store i32 %73, i32* %8, align 8, !dbg !3367
  br label %74, !dbg !3367

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3367
  %78 = load i8*, i8** %77, align 8, !dbg !3367
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3370
  store i8* %78, i8** %79, align 8, !dbg !3371, !tbaa !689
  %80 = icmp eq i8* %78, null, !dbg !3372
  br i1 %80, label %30, label %81, !dbg !3373

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3361, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 4, metadata !3361, metadata !DIExpression()), !dbg !3364
  %82 = icmp ult i32 %75, 41, !dbg !3367
  br i1 %82, label %86, label %83, !dbg !3367

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3367
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3367
  store i8* %85, i8** %9, align 8, !dbg !3367
  br label %91, !dbg !3367

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3367
  %88 = zext i32 %75 to i64, !dbg !3367
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3367
  %90 = add nuw nsw i32 %75, 8, !dbg !3367
  store i32 %90, i32* %8, align 8, !dbg !3367
  br label %91, !dbg !3367

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3367
  %95 = load i8*, i8** %94, align 8, !dbg !3367
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3370
  store i8* %95, i8** %96, align 16, !dbg !3371, !tbaa !689
  %97 = icmp eq i8* %95, null, !dbg !3372
  br i1 %97, label %30, label %98, !dbg !3373

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3361, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 5, metadata !3361, metadata !DIExpression()), !dbg !3364
  %99 = icmp ult i32 %92, 41, !dbg !3367
  br i1 %99, label %103, label %100, !dbg !3367

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3367
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3367
  store i8* %102, i8** %9, align 8, !dbg !3367
  br label %108, !dbg !3367

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3367
  %105 = zext i32 %92 to i64, !dbg !3367
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3367
  %107 = add nuw nsw i32 %92, 8, !dbg !3367
  store i32 %107, i32* %8, align 8, !dbg !3367
  br label %108, !dbg !3367

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3367
  %111 = load i8*, i8** %110, align 8, !dbg !3367
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3370
  store i8* %111, i8** %112, align 8, !dbg !3371, !tbaa !689
  %113 = icmp eq i8* %111, null, !dbg !3372
  br i1 %113, label %30, label %114, !dbg !3373

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3361, metadata !DIExpression()), !dbg !3364
  %115 = load i8*, i8** %9, align 8, !dbg !3367
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3367
  store i8* %116, i8** %9, align 8, !dbg !3367
  %117 = bitcast i8* %115 to i8**, !dbg !3367
  %118 = load i8*, i8** %117, align 8, !dbg !3367
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3370
  store i8* %118, i8** %119, align 16, !dbg !3371, !tbaa !689
  %120 = icmp eq i8* %118, null, !dbg !3372
  br i1 %120, label %30, label %121, !dbg !3373

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3361, metadata !DIExpression()), !dbg !3364
  %122 = load i8*, i8** %9, align 8, !dbg !3367
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3367
  store i8* %123, i8** %9, align 8, !dbg !3367
  %124 = bitcast i8* %122 to i8**, !dbg !3367
  %125 = load i8*, i8** %124, align 8, !dbg !3367
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3370
  store i8* %125, i8** %126, align 8, !dbg !3371, !tbaa !689
  %127 = icmp eq i8* %125, null, !dbg !3372
  br i1 %127, label %30, label %128, !dbg !3373

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3361, metadata !DIExpression()), !dbg !3364
  %129 = load i8*, i8** %9, align 8, !dbg !3367
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3367
  store i8* %130, i8** %9, align 8, !dbg !3367
  %131 = bitcast i8* %129 to i8**, !dbg !3367
  %132 = load i8*, i8** %131, align 8, !dbg !3367
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3370
  store i8* %132, i8** %133, align 16, !dbg !3371, !tbaa !689
  %134 = icmp eq i8* %132, null, !dbg !3372
  br i1 %134, label %30, label %135, !dbg !3373

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3361, metadata !DIExpression()), !dbg !3364
  %136 = load i8*, i8** %9, align 8, !dbg !3367
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3367
  store i8* %137, i8** %9, align 8, !dbg !3367
  %138 = bitcast i8* %136 to i8**, !dbg !3367
  %139 = load i8*, i8** %138, align 8, !dbg !3367
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3370
  store i8* %139, i8** %140, align 8, !dbg !3371, !tbaa !689
  %141 = icmp eq i8* %139, null, !dbg !3372
  %142 = select i1 %141, i64 9, i64 10, !dbg !3373
  br label %30, !dbg !3373
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3377 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3381, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i8* %1, metadata !3382, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i8* %2, metadata !3383, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i8* %3, metadata !3384, metadata !DIExpression()), !dbg !3391
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3392
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #28, !dbg !3392
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3385, metadata !DIExpression()), !dbg !3393
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3394
  call void @llvm.va_start(i8* nonnull %6), !dbg !3394
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3395
  call void @llvm.va_end(i8* nonnull %6), !dbg !3396
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #28, !dbg !3397
  ret void, !dbg !3397
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #23

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3398 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3399, !tbaa !689
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.98, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3399
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.113, i64 0, i64 0), i32 5) #28, !dbg !3400
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.114, i64 0, i64 0)) #28, !dbg !3400
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.115, i64 0, i64 0), i32 5) #28, !dbg !3401
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.116, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.117, i64 0, i64 0)) #28, !dbg !3401
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.118, i64 0, i64 0), i32 5) #28, !dbg !3402
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.119, i64 0, i64 0)) #28, !dbg !3402
  ret void, !dbg !3403
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3404 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3408, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %1, metadata !3409, metadata !DIExpression()), !dbg !3410
  %3 = udiv i64 9223372036854775807, %1, !dbg !3411
  %4 = icmp ult i64 %3, %0, !dbg !3411
  br i1 %4, label %5, label %6, !dbg !3413

5:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !3414
  unreachable, !dbg !3414

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3415
  call void @llvm.dbg.value(metadata i64 %7, metadata !3416, metadata !DIExpression()) #28, !dbg !3422
  %8 = tail call noalias i8* @malloc(i64 %7) #28, !dbg !3424
  call void @llvm.dbg.value(metadata i8* %8, metadata !3421, metadata !DIExpression()) #28, !dbg !3422
  %9 = icmp eq i8* %8, null, !dbg !3425
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3427
  br i1 %11, label %12, label %13, !dbg !3427

12:                                               ; preds = %6
  tail call void @xalloc_die() #30, !dbg !3428
  unreachable, !dbg !3428

13:                                               ; preds = %6
  ret i8* %8, !dbg !3429
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3417 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3416, metadata !DIExpression()), !dbg !3430
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !3431
  call void @llvm.dbg.value(metadata i8* %2, metadata !3421, metadata !DIExpression()), !dbg !3430
  %3 = icmp eq i8* %2, null, !dbg !3432
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3433
  br i1 %5, label %6, label %7, !dbg !3433

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3434
  unreachable, !dbg !3434

7:                                                ; preds = %1
  ret i8* %2, !dbg !3435
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #24 !dbg !3436 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3440, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %1, metadata !3441, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %2, metadata !3442, metadata !DIExpression()), !dbg !3443
  %4 = udiv i64 9223372036854775807, %2, !dbg !3444
  %5 = icmp ult i64 %4, %1, !dbg !3444
  br i1 %5, label %6, label %7, !dbg !3446

6:                                                ; preds = %3
  tail call void @xalloc_die() #30, !dbg !3447
  unreachable, !dbg !3447

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3448
  call void @llvm.dbg.value(metadata i8* %0, metadata !3449, metadata !DIExpression()) #28, !dbg !3455
  call void @llvm.dbg.value(metadata i64 %8, metadata !3454, metadata !DIExpression()) #28, !dbg !3455
  %9 = icmp eq i64 %8, 0, !dbg !3457
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3459
  br i1 %11, label %12, label %13, !dbg !3459

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #28, !dbg !3460
  br label %19, !dbg !3462

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #28, !dbg !3463
  call void @llvm.dbg.value(metadata i8* %14, metadata !3449, metadata !DIExpression()) #28, !dbg !3455
  %15 = icmp eq i8* %14, null, !dbg !3464
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3466
  br i1 %17, label %18, label %19, !dbg !3466

18:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3467
  unreachable, !dbg !3467

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3455
  ret i8* %20, !dbg !3468
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3450 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3449, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i64 %1, metadata !3454, metadata !DIExpression()), !dbg !3469
  %3 = icmp eq i64 %1, 0, !dbg !3470
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3471
  br i1 %5, label %6, label %7, !dbg !3471

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #28, !dbg !3472
  br label %13, !dbg !3473

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #28, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %8, metadata !3449, metadata !DIExpression()), !dbg !3469
  %9 = icmp eq i8* %8, null, !dbg !3475
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3476
  br i1 %11, label %12, label %13, !dbg !3476

12:                                               ; preds = %7
  tail call void @xalloc_die() #30, !dbg !3477
  unreachable, !dbg !3477

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3469
  ret i8* %14, !dbg !3478
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #24 !dbg !252 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !257, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64* %1, metadata !258, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %2, metadata !259, metadata !DIExpression()), !dbg !3479
  %4 = load i64, i64* %1, align 8, !dbg !3480, !tbaa !1399
  call void @llvm.dbg.value(metadata i64 %4, metadata !260, metadata !DIExpression()), !dbg !3479
  %5 = icmp eq i8* %0, null, !dbg !3481
  br i1 %5, label %6, label %20, !dbg !3483

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3484
  br i1 %7, label %8, label %13, !dbg !3487

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3488
  call void @llvm.dbg.value(metadata i64 %9, metadata !260, metadata !DIExpression()), !dbg !3479
  %10 = icmp ugt i64 %2, 128, !dbg !3490
  %11 = zext i1 %10 to i64, !dbg !3490
  %12 = add nuw nsw i64 %9, %11, !dbg !3491
  call void @llvm.dbg.value(metadata i64 %12, metadata !260, metadata !DIExpression()), !dbg !3479
  br label %13, !dbg !3492

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3479
  call void @llvm.dbg.value(metadata i64 %14, metadata !260, metadata !DIExpression()), !dbg !3479
  %15 = udiv i64 9223372036854775807, %2, !dbg !3493
  %16 = icmp ult i64 %15, %14, !dbg !3493
  br i1 %16, label %19, label %17, !dbg !3495

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !260, metadata !DIExpression()), !dbg !3479
  store i64 %14, i64* %1, align 8, !dbg !3496, !tbaa !1399
  %18 = mul i64 %14, %2, !dbg !3497
  call void @llvm.dbg.value(metadata i8* %0, metadata !3449, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i64 %28, metadata !3454, metadata !DIExpression()) #28, !dbg !3498
  br label %31, !dbg !3500

19:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3501
  unreachable, !dbg !3501

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3502
  %22 = icmp ugt i64 %21, %4, !dbg !3505
  br i1 %22, label %24, label %23, !dbg !3506

23:                                               ; preds = %20
  tail call void @xalloc_die() #30, !dbg !3507
  unreachable, !dbg !3507

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3508
  %26 = add nuw i64 %4, 1, !dbg !3509
  %27 = add i64 %26, %25, !dbg !3510
  call void @llvm.dbg.value(metadata i64 %27, metadata !260, metadata !DIExpression()), !dbg !3479
  store i64 %27, i64* %1, align 8, !dbg !3496, !tbaa !1399
  %28 = mul i64 %27, %2, !dbg !3497
  call void @llvm.dbg.value(metadata i8* %0, metadata !3449, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i64 %28, metadata !3454, metadata !DIExpression()) #28, !dbg !3498
  %29 = icmp eq i64 %28, 0, !dbg !3511
  br i1 %29, label %30, label %31, !dbg !3500

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #28, !dbg !3512
  br label %38, !dbg !3513

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #28, !dbg !3514
  call void @llvm.dbg.value(metadata i8* %33, metadata !3449, metadata !DIExpression()) #28, !dbg !3498
  %34 = icmp eq i8* %33, null, !dbg !3515
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3516
  br i1 %36, label %37, label %38, !dbg !3516

37:                                               ; preds = %31
  tail call void @xalloc_die() #30, !dbg !3517
  unreachable, !dbg !3517

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3498
  ret i8* %39, !dbg !3518
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #24 !dbg !3519 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3521, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %0, metadata !3416, metadata !DIExpression()) #28, !dbg !3523
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !3525
  call void @llvm.dbg.value(metadata i8* %2, metadata !3421, metadata !DIExpression()) #28, !dbg !3523
  %3 = icmp eq i8* %2, null, !dbg !3526
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3527
  br i1 %5, label %6, label %7, !dbg !3527

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3528
  unreachable, !dbg !3528

7:                                                ; preds = %1
  ret i8* %2, !dbg !3529
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3530 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3534, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64* %1, metadata !3535, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i8* %0, metadata !257, metadata !DIExpression()) #28, !dbg !3537
  call void @llvm.dbg.value(metadata i64* %1, metadata !258, metadata !DIExpression()) #28, !dbg !3537
  call void @llvm.dbg.value(metadata i64 1, metadata !259, metadata !DIExpression()) #28, !dbg !3537
  %3 = load i64, i64* %1, align 8, !dbg !3539, !tbaa !1399
  call void @llvm.dbg.value(metadata i64 %3, metadata !260, metadata !DIExpression()) #28, !dbg !3537
  %4 = icmp eq i8* %0, null, !dbg !3540
  br i1 %4, label %5, label %10, !dbg !3541

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3542
  br i1 %6, label %17, label %7, !dbg !3543

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !260, metadata !DIExpression()) #28, !dbg !3537
  %8 = icmp slt i64 %3, 0, !dbg !3544
  br i1 %8, label %9, label %17, !dbg !3545

9:                                                ; preds = %7
  tail call void @xalloc_die() #30, !dbg !3546
  unreachable, !dbg !3546

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3547
  br i1 %11, label %13, label %12, !dbg !3548

12:                                               ; preds = %10
  tail call void @xalloc_die() #30, !dbg !3549
  unreachable, !dbg !3549

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3550
  %15 = add nuw nsw i64 %3, 1, !dbg !3551
  %16 = add nuw nsw i64 %15, %14, !dbg !3552
  call void @llvm.dbg.value(metadata i64 %16, metadata !260, metadata !DIExpression()) #28, !dbg !3537
  call void @llvm.dbg.value(metadata i8* %0, metadata !3449, metadata !DIExpression()) #28, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %16, metadata !3454, metadata !DIExpression()) #28, !dbg !3553
  br label %17, !dbg !3555

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3556
  store i64 %18, i64* %1, align 8, !dbg !3556, !tbaa !1399
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #28, !dbg !3557
  call void @llvm.dbg.value(metadata i8* %19, metadata !3449, metadata !DIExpression()) #28, !dbg !3553
  %20 = icmp eq i8* %19, null, !dbg !3558
  br i1 %20, label %21, label %22, !dbg !3559

21:                                               ; preds = %17
  tail call void @xalloc_die() #30, !dbg !3560
  unreachable, !dbg !3560

22:                                               ; preds = %17
  ret i8* %19, !dbg !3561
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3562 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3564, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %0, metadata !3566, metadata !DIExpression()) #28, !dbg !3571
  call void @llvm.dbg.value(metadata i64 1, metadata !3569, metadata !DIExpression()) #28, !dbg !3571
  %2 = icmp slt i64 %0, 0, !dbg !3573
  br i1 %2, label %6, label %3, !dbg !3575

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #28, !dbg !3576
  call void @llvm.dbg.value(metadata i8* %4, metadata !3570, metadata !DIExpression()) #28, !dbg !3571
  %5 = icmp eq i8* %4, null, !dbg !3577
  br i1 %5, label %6, label %7, !dbg !3578

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #30, !dbg !3579
  unreachable, !dbg !3579

7:                                                ; preds = %3
  ret i8* %4, !dbg !3580
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3567 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3566, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i64 %1, metadata !3569, metadata !DIExpression()), !dbg !3581
  %3 = udiv i64 9223372036854775807, %1, !dbg !3582
  %4 = icmp ult i64 %3, %0, !dbg !3582
  br i1 %4, label %8, label %5, !dbg !3583

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #28, !dbg !3584
  call void @llvm.dbg.value(metadata i8* %6, metadata !3570, metadata !DIExpression()), !dbg !3581
  %7 = icmp eq i8* %6, null, !dbg !3585
  br i1 %7, label %8, label %9, !dbg !3586

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #30, !dbg !3587
  unreachable, !dbg !3587

9:                                                ; preds = %5
  ret i8* %6, !dbg !3588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3589 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3595, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %1, metadata !3596, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %1, metadata !3416, metadata !DIExpression()) #28, !dbg !3598
  %3 = tail call noalias i8* @malloc(i64 %1) #28, !dbg !3600
  call void @llvm.dbg.value(metadata i8* %3, metadata !3421, metadata !DIExpression()) #28, !dbg !3598
  %4 = icmp eq i8* %3, null, !dbg !3601
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3602
  br i1 %6, label %7, label %8, !dbg !3602

7:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !3603
  unreachable, !dbg !3603

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3604, metadata !DIExpression()) #28, !dbg !3613
  call void @llvm.dbg.value(metadata i8* %0, metadata !3611, metadata !DIExpression()) #28, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %1, metadata !3612, metadata !DIExpression()) #28, !dbg !3613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #28, !dbg !3615
  ret i8* %3, !dbg !3616
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3617 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3619, metadata !DIExpression()), !dbg !3620
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #29, !dbg !3621
  %3 = add i64 %2, 1, !dbg !3622
  call void @llvm.dbg.value(metadata i8* %0, metadata !3595, metadata !DIExpression()) #28, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %3, metadata !3596, metadata !DIExpression()) #28, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %3, metadata !3416, metadata !DIExpression()) #28, !dbg !3625
  %4 = tail call noalias i8* @malloc(i64 %3) #28, !dbg !3627
  call void @llvm.dbg.value(metadata i8* %4, metadata !3421, metadata !DIExpression()) #28, !dbg !3625
  %5 = icmp eq i8* %4, null, !dbg !3628
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3629
  br i1 %7, label %8, label %9, !dbg !3629

8:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3630
  unreachable, !dbg !3630

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3604, metadata !DIExpression()) #28, !dbg !3631
  call void @llvm.dbg.value(metadata i8* %0, metadata !3611, metadata !DIExpression()) #28, !dbg !3631
  call void @llvm.dbg.value(metadata i64 %3, metadata !3612, metadata !DIExpression()) #28, !dbg !3631
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #28, !dbg !3633
  ret i8* %4, !dbg !3634
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3635 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3636, !tbaa !872
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.132, i64 0, i64 0), i32 5) #28, !dbg !3637
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), i8* %2) #28, !dbg !3638
  tail call void @abort() #30, !dbg !3639
  unreachable, !dbg !3639
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @xstrtod(i8* %0, i8** %1, double* nocapture %2, double (i8*, i8**)* nocapture %3) local_unnamed_addr #8 !dbg !3640 {
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3648, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i8** %1, metadata !3649, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata double* %2, metadata !3650, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata double (i8*, i8**)* %3, metadata !3651, metadata !DIExpression()), !dbg !3655
  %6 = bitcast i8** %5 to i8*, !dbg !3656
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #28, !dbg !3656
  call void @llvm.dbg.value(metadata i8 1, metadata !3654, metadata !DIExpression()), !dbg !3655
  %7 = tail call i32* @__errno_location() #32, !dbg !3657
  store i32 0, i32* %7, align 4, !dbg !3658, !tbaa !872
  call void @llvm.dbg.value(metadata i8** %5, metadata !3653, metadata !DIExpression(DW_OP_deref)), !dbg !3655
  %8 = call double %3(i8* %0, i8** nonnull %5) #28, !dbg !3659
  call void @llvm.dbg.value(metadata double %8, metadata !3652, metadata !DIExpression()), !dbg !3655
  %9 = load i8*, i8** %5, align 8, !dbg !3660, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %9, metadata !3653, metadata !DIExpression()), !dbg !3655
  %10 = icmp eq i8* %9, %0, !dbg !3662
  br i1 %10, label %21, label %11, !dbg !3663

11:                                               ; preds = %4
  %12 = icmp eq i8** %1, null, !dbg !3664
  br i1 %12, label %13, label %16, !dbg !3665

13:                                               ; preds = %11
  %14 = load i8, i8* %9, align 1, !dbg !3666, !tbaa !1024
  %15 = icmp eq i8 %14, 0, !dbg !3667
  br i1 %15, label %16, label %25, !dbg !3668

16:                                               ; preds = %13, %11
  %17 = fcmp une double %8, 0.000000e+00, !dbg !3669
  br i1 %17, label %18, label %21, !dbg !3672

18:                                               ; preds = %16
  %19 = load i32, i32* %7, align 4, !dbg !3673, !tbaa !872
  %20 = icmp ne i32 %19, 34, !dbg !3674
  br label %21, !dbg !3675

21:                                               ; preds = %18, %4, %16
  %22 = phi i1 [ true, %16 ], [ false, %4 ], [ %20, %18 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !3654, metadata !DIExpression()), !dbg !3655
  %23 = icmp eq i8** %1, null, !dbg !3676
  br i1 %23, label %25, label %24, !dbg !3678

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8* %9, metadata !3653, metadata !DIExpression()), !dbg !3655
  store i8* %9, i8** %1, align 8, !dbg !3679, !tbaa !689
  br label %25, !dbg !3680

25:                                               ; preds = %13, %24, %21
  %26 = phi i1 [ %22, %24 ], [ %22, %21 ], [ false, %13 ]
  store double %8, double* %2, align 8, !dbg !3681, !tbaa !882
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #28, !dbg !3682
  ret i1 %26, !dbg !3683
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #26 !dbg !3684 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3686, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %1, metadata !3687, metadata !DIExpression()), !dbg !3692
  %3 = icmp eq i64 %0, 0, !dbg !3693
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3694
  br i1 %5, label %11, label %6, !dbg !3694

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3689, metadata !DIExpression()), !dbg !3695
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3696
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3696
  br i1 %8, label %9, label %11, !dbg !3698

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #32, !dbg !3699
  store i32 12, i32* %10, align 4, !dbg !3701, !tbaa !872
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3686, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %12, metadata !3687, metadata !DIExpression()), !dbg !3692
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #28, !dbg !3702
  call void @llvm.dbg.value(metadata i8* %14, metadata !3688, metadata !DIExpression()), !dbg !3692
  br label %15, !dbg !3703

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3692
  ret i8* %16, !dbg !3704
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3705 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3721, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8* %1, metadata !3722, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %2, metadata !3723, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3724, metadata !DIExpression()), !dbg !3730
  %6 = bitcast i32* %5 to i8*, !dbg !3731
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #28, !dbg !3731
  %7 = icmp eq i32* %0, null, !dbg !3732
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3734
  call void @llvm.dbg.value(metadata i32* %8, metadata !3721, metadata !DIExpression()), !dbg !3730
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #28, !dbg !3735
  call void @llvm.dbg.value(metadata i64 %9, metadata !3725, metadata !DIExpression()), !dbg !3730
  %10 = icmp ugt i64 %9, -3, !dbg !3736
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3737
  br i1 %12, label %13, label %18, !dbg !3737

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #28, !dbg !3738
  br i1 %14, label %18, label %15, !dbg !3739

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3740, !tbaa !1024
  call void @llvm.dbg.value(metadata i8 %16, metadata !3727, metadata !DIExpression()), !dbg !3741
  %17 = zext i8 %16 to i32, !dbg !3742
  store i32 %17, i32* %8, align 4, !dbg !3743, !tbaa !872
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3730
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #28, !dbg !3744
  ret i64 %19, !dbg !3744
}

; Function Attrs: nounwind
declare !dbg !3745 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @str2sig(i8* %0, i32* nocapture %1) local_unnamed_addr #8 !dbg !3749 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3753, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i32* %1, metadata !3754, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8* %0, metadata !3756, metadata !DIExpression()) #28, !dbg !3777
  %5 = load i8, i8* %0, align 1, !dbg !3779, !tbaa !1024
  %6 = sext i8 %5 to i32, !dbg !3779
  %7 = add nsw i32 %6, -48, !dbg !3779
  %8 = icmp ult i32 %7, 10, !dbg !3779
  br i1 %8, label %9, label %21, !dbg !3780

9:                                                ; preds = %2
  %10 = bitcast i8** %3 to i8*, !dbg !3781
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #28, !dbg !3781
  call void @llvm.dbg.value(metadata i8** %3, metadata !3761, metadata !DIExpression(DW_OP_deref)) #28, !dbg !3782
  %11 = call i64 @strtol(i8* nonnull %0, i8** nonnull %3, i32 10) #28, !dbg !3783
  call void @llvm.dbg.value(metadata i64 %11, metadata !3764, metadata !DIExpression()) #28, !dbg !3782
  %12 = load i8*, i8** %3, align 8, !dbg !3784, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %12, metadata !3761, metadata !DIExpression()) #28, !dbg !3782
  %13 = load i8, i8* %12, align 1, !dbg !3786, !tbaa !1024
  %14 = icmp eq i8 %13, 0, !dbg !3786
  %15 = icmp slt i64 %11, 65
  %16 = and i1 %15, %14, !dbg !3787
  %17 = trunc i64 %11 to i32, !dbg !3787
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #28, !dbg !3788
  br i1 %16, label %74, label %73

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %22, 1, !dbg !3789
  call void @llvm.dbg.value(metadata i64 %19, metadata !3765, metadata !DIExpression()) #28, !dbg !3792
  call void @llvm.dbg.value(metadata i64 %22, metadata !3765, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #28, !dbg !3792
  %20 = icmp eq i64 %19, 35, !dbg !3793
  br i1 %20, label %30, label %21, !dbg !3794, !llvm.loop !3795

21:                                               ; preds = %2, %18
  %22 = phi i64 [ %19, %18 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !3765, metadata !DIExpression()) #28, !dbg !3792
  %23 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 1, i64 0, !dbg !3797
  %24 = tail call i32 @strcmp(i8* nonnull %23, i8* nonnull %0) #29, !dbg !3799
  %25 = icmp eq i32 %24, 0, !dbg !3800
  call void @llvm.dbg.value(metadata i64 %22, metadata !3765, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #28, !dbg !3792
  br i1 %25, label %26, label %18, !dbg !3801

26:                                               ; preds = %21
  %27 = and i64 %22, 4294967295, !dbg !3802
  %28 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %27, i32 0, !dbg !3803
  %29 = load i32, i32* %28, align 4, !dbg !3803, !tbaa !3804
  br label %74

30:                                               ; preds = %18
  %31 = bitcast i8** %4 to i8*, !dbg !3806
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #28, !dbg !3806
  %32 = tail call i32 @__libc_current_sigrtmin() #28, !dbg !3807
  call void @llvm.dbg.value(metadata i32 %32, metadata !3769, metadata !DIExpression()) #28, !dbg !3808
  %33 = tail call i32 @__libc_current_sigrtmax() #28, !dbg !3809
  call void @llvm.dbg.value(metadata i32 %33, metadata !3770, metadata !DIExpression()) #28, !dbg !3808
  %34 = icmp sgt i32 %32, 0, !dbg !3810
  br i1 %34, label %35, label %50, !dbg !3811

35:                                               ; preds = %30
  %36 = tail call i32 @strncmp(i8* nonnull %0, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i64 0, i64 0), i64 5) #29, !dbg !3812
  %37 = icmp eq i32 %36, 0, !dbg !3813
  br i1 %37, label %38, label %50, !dbg !3814

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3815
  call void @llvm.dbg.value(metadata i8** %4, metadata !3767, metadata !DIExpression(DW_OP_deref)) #28, !dbg !3808
  %40 = call i64 @strtol(i8* nonnull %39, i8** nonnull %4, i32 10) #28, !dbg !3816
  call void @llvm.dbg.value(metadata i64 %40, metadata !3771, metadata !DIExpression()) #28, !dbg !3817
  %41 = load i8*, i8** %4, align 8, !dbg !3818, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %41, metadata !3767, metadata !DIExpression()) #28, !dbg !3808
  %42 = load i8, i8* %41, align 1, !dbg !3820, !tbaa !1024
  %43 = icmp eq i8 %42, 0, !dbg !3820
  %44 = icmp sgt i64 %40, -1
  %45 = and i1 %44, %43, !dbg !3821
  br i1 %45, label %46, label %67, !dbg !3821

46:                                               ; preds = %38
  %47 = sub nsw i32 %33, %32, !dbg !3822
  %48 = sext i32 %47 to i64, !dbg !3823
  %49 = icmp sgt i64 %40, %48, !dbg !3824
  br i1 %49, label %67, label %68, !dbg !3825

50:                                               ; preds = %35, %30
  %51 = icmp sgt i32 %33, 0, !dbg !3826
  br i1 %51, label %52, label %67, !dbg !3827

52:                                               ; preds = %50
  %53 = tail call i32 @strncmp(i8* nonnull %0, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i64 5) #29, !dbg !3828
  %54 = icmp eq i32 %53, 0, !dbg !3829
  br i1 %54, label %55, label %67, !dbg !3830

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3831
  call void @llvm.dbg.value(metadata i8** %4, metadata !3767, metadata !DIExpression(DW_OP_deref)) #28, !dbg !3808
  %57 = call i64 @strtol(i8* nonnull %56, i8** nonnull %4, i32 10) #28, !dbg !3832
  call void @llvm.dbg.value(metadata i64 %57, metadata !3774, metadata !DIExpression()) #28, !dbg !3833
  %58 = load i8*, i8** %4, align 8, !dbg !3834, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %58, metadata !3767, metadata !DIExpression()) #28, !dbg !3808
  %59 = load i8, i8* %58, align 1, !dbg !3836, !tbaa !1024
  %60 = icmp eq i8 %59, 0, !dbg !3836
  br i1 %60, label %61, label %67, !dbg !3837

61:                                               ; preds = %55
  %62 = sub nsw i32 %32, %33, !dbg !3838
  %63 = sext i32 %62 to i64, !dbg !3839
  %64 = icmp sge i64 %57, %63, !dbg !3840
  %65 = icmp slt i64 %57, 1
  %66 = and i1 %64, %65, !dbg !3841
  br i1 %66, label %68, label %67, !dbg !3841

67:                                               ; preds = %61, %55, %52, %50, %46, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #28, !dbg !3842
  br label %73

68:                                               ; preds = %61, %46
  %69 = phi i64 [ %40, %46 ], [ %57, %61 ]
  %70 = phi i32 [ %32, %46 ], [ %33, %61 ]
  %71 = trunc i64 %69 to i32, !dbg !3843
  %72 = add i32 %70, %71, !dbg !3843
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #28, !dbg !3842
  br label %74

73:                                               ; preds = %67, %9
  br label %74, !dbg !3844

74:                                               ; preds = %9, %26, %68, %73
  %75 = phi i32 [ -1, %73 ], [ %17, %9 ], [ %72, %68 ], [ %29, %26 ], !dbg !3777
  store i32 %75, i32* %1, align 4, !dbg !3845, !tbaa !872
  %76 = ashr i32 %75, 31, !dbg !3846
  ret i32 %76, !dbg !3847
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @sig2str(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3848 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3852, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i8* %1, metadata !3853, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i32 0, metadata !3854, metadata !DIExpression()), !dbg !3860
  br label %8, !dbg !3861

3:                                                ; preds = %8
  %4 = add nuw nsw i64 %9, 1, !dbg !3863
  call void @llvm.dbg.value(metadata i64 %4, metadata !3854, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %9, metadata !3854, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %4, metadata !3854, metadata !DIExpression()), !dbg !3860
  %5 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %4, i32 0, !dbg !3865
  %6 = load i32, i32* %5, align 4, !dbg !3865, !tbaa !3804
  %7 = icmp eq i32 %6, %0, !dbg !3867
  call void @llvm.dbg.value(metadata i64 %4, metadata !3854, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3860
  br i1 %7, label %13, label %40, !dbg !3868

8:                                                ; preds = %55, %2
  %9 = phi i64 [ 0, %2 ], [ %56, %55 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !3854, metadata !DIExpression()), !dbg !3860
  %10 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %9, i32 0, !dbg !3865
  %11 = load i32, i32* %10, align 4, !dbg !3865, !tbaa !3804
  %12 = icmp eq i32 %11, %0, !dbg !3867
  call void @llvm.dbg.value(metadata i64 %9, metadata !3854, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3860
  br i1 %12, label %13, label %3, !dbg !3868

13:                                               ; preds = %50, %45, %40, %3, %8
  %14 = phi i64 [ %9, %8 ], [ %4, %3 ], [ %41, %40 ], [ %46, %45 ], [ %51, %50 ]
  %15 = and i64 %14, 4294967295, !dbg !3869
  %16 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %15, i32 1, i64 0, !dbg !3870
  call void @llvm.dbg.value(metadata i8* %1, metadata !3872, metadata !DIExpression()) #28, !dbg !3880
  call void @llvm.dbg.value(metadata i8* %16, metadata !3879, metadata !DIExpression()) #28, !dbg !3880
  %17 = call i8* @strcpy(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(1) %16), !dbg !3882
  br label %38, !dbg !3883

18:                                               ; preds = %55
  %19 = tail call i32 @__libc_current_sigrtmin() #28, !dbg !3884
  call void @llvm.dbg.value(metadata i32 %19, metadata !3855, metadata !DIExpression()), !dbg !3885
  %20 = tail call i32 @__libc_current_sigrtmax() #28, !dbg !3886
  call void @llvm.dbg.value(metadata i32 %20, metadata !3857, metadata !DIExpression()), !dbg !3885
  %21 = icmp sgt i32 %19, %0, !dbg !3887
  %22 = icmp slt i32 %20, %0
  %23 = or i1 %21, %22, !dbg !3889
  br i1 %23, label %38, label %24, !dbg !3889

24:                                               ; preds = %18
  %25 = sub nsw i32 %20, %19, !dbg !3890
  %26 = sdiv i32 %25, 2, !dbg !3892
  %27 = add nsw i32 %26, %19, !dbg !3893
  %28 = icmp slt i32 %27, %0, !dbg !3894
  call void @llvm.dbg.value(metadata i8* %1, metadata !3872, metadata !DIExpression()) #28, !dbg !3895
  call void @llvm.dbg.value(metadata i8* %1, metadata !3872, metadata !DIExpression()) #28, !dbg !3898
  br i1 %28, label %30, label %29, !dbg !3901

29:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i64 0, i64 0), metadata !3879, metadata !DIExpression()) #28, !dbg !3898
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i64 0, i64 0), i64 6, i1 false), !dbg !3902
  call void @llvm.dbg.value(metadata i32 %19, metadata !3858, metadata !DIExpression()), !dbg !3885
  br label %31, !dbg !3903

30:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), metadata !3879, metadata !DIExpression()) #28, !dbg !3895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i64 6, i1 false), !dbg !3904
  call void @llvm.dbg.value(metadata i32 %20, metadata !3858, metadata !DIExpression()), !dbg !3885
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i32 [ %19, %29 ], [ %20, %30 ], !dbg !3905
  call void @llvm.dbg.value(metadata i32 %32, metadata !3858, metadata !DIExpression()), !dbg !3885
  %33 = sub nsw i32 %0, %32, !dbg !3906
  call void @llvm.dbg.value(metadata i32 %33, metadata !3859, metadata !DIExpression()), !dbg !3885
  %34 = icmp eq i32 %33, 0, !dbg !3907
  br i1 %34, label %38, label %35, !dbg !3909

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !3910
  %37 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %36, i32 1, i64 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.146, i64 0, i64 0), i32 %33) #28, !dbg !3910
  br label %38, !dbg !3910

38:                                               ; preds = %18, %35, %31, %13
  %39 = phi i32 [ 0, %13 ], [ -1, %18 ], [ 0, %35 ], [ 0, %31 ], !dbg !3860
  ret i32 %39, !dbg !3911

40:                                               ; preds = %3
  %41 = add nuw nsw i64 %9, 2, !dbg !3863
  call void @llvm.dbg.value(metadata i64 %41, metadata !3854, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %4, metadata !3854, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %41, metadata !3854, metadata !DIExpression()), !dbg !3860
  %42 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %41, i32 0, !dbg !3865
  %43 = load i32, i32* %42, align 4, !dbg !3865, !tbaa !3804
  %44 = icmp eq i32 %43, %0, !dbg !3867
  call void @llvm.dbg.value(metadata i64 %41, metadata !3854, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3860
  br i1 %44, label %13, label %45, !dbg !3868

45:                                               ; preds = %40
  %46 = add nuw nsw i64 %9, 3, !dbg !3863
  call void @llvm.dbg.value(metadata i64 %46, metadata !3854, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %41, metadata !3854, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %46, metadata !3854, metadata !DIExpression()), !dbg !3860
  %47 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %46, i32 0, !dbg !3865
  %48 = load i32, i32* %47, align 4, !dbg !3865, !tbaa !3804
  %49 = icmp eq i32 %48, %0, !dbg !3867
  call void @llvm.dbg.value(metadata i64 %46, metadata !3854, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3860
  br i1 %49, label %13, label %50, !dbg !3868

50:                                               ; preds = %45
  %51 = add nuw nsw i64 %9, 4, !dbg !3863
  call void @llvm.dbg.value(metadata i64 %51, metadata !3854, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %46, metadata !3854, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %51, metadata !3854, metadata !DIExpression()), !dbg !3860
  %52 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %51, i32 0, !dbg !3865
  %53 = load i32, i32* %52, align 4, !dbg !3865, !tbaa !3804
  %54 = icmp eq i32 %53, %0, !dbg !3867
  call void @llvm.dbg.value(metadata i64 %51, metadata !3854, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3860
  br i1 %54, label %13, label %55, !dbg !3868

55:                                               ; preds = %50
  %56 = add nuw nsw i64 %9, 5, !dbg !3863
  call void @llvm.dbg.value(metadata i64 %56, metadata !3854, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %51, metadata !3854, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3860
  %57 = icmp eq i64 %56, 35, !dbg !3912
  br i1 %57, label %18, label %8, !dbg !3861, !llvm.loop !3913
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #27

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @c_strtod(i8* %0, i8** %1) local_unnamed_addr #8 !dbg !3915 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3917, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i8** %1, metadata !3918, metadata !DIExpression()), !dbg !3921
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3922, !tbaa !689
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !3922
  br i1 %4, label %5, label %7, !dbg !3928

5:                                                ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.149, i64 0, i64 0), %struct.__locale_struct* null) #28, !dbg !3929
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3930, !tbaa !689
  br label %7, !dbg !3931

7:                                                ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3932, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !3920, metadata !DIExpression()), !dbg !3921
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !3933
  br i1 %9, label %10, label %13, !dbg !3935

10:                                               ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !3936
  br i1 %11, label %15, label %12, !dbg !3939

12:                                               ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !3940, !tbaa !689
  br label %15, !dbg !3941

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #28, !dbg !3942
  call void @llvm.dbg.value(metadata double %14, metadata !3919, metadata !DIExpression()), !dbg !3921
  br label %15, !dbg !3943

15:                                               ; preds = %10, %12, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ], !dbg !3921
  ret double %16, !dbg !3944
}

; Function Attrs: nounwind
declare !dbg !3945 %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3948 double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3951 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3989, metadata !DIExpression()), !dbg !3994
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #28, !dbg !3995
  call void @llvm.dbg.value(metadata i1 undef, metadata !3990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3994
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3996, metadata !DIExpression()), !dbg !4000
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4002
  %4 = load i32, i32* %3, align 8, !dbg !4002, !tbaa !4003
  %5 = and i32 %4, 32, !dbg !4005
  %6 = icmp eq i32 %5, 0, !dbg !4005
  call void @llvm.dbg.value(metadata i1 %6, metadata !3992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3994
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #28, !dbg !4006
  %8 = icmp eq i32 %7, 0, !dbg !4007
  call void @llvm.dbg.value(metadata i1 %8, metadata !3993, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3994
  br i1 %6, label %9, label %19, !dbg !4008

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4010
  call void @llvm.dbg.value(metadata i1 %10, metadata !3990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3994
  %11 = or i1 %10, %8, !dbg !4011
  %12 = xor i1 %8, true, !dbg !4011
  %13 = sext i1 %12 to i32, !dbg !4011
  br i1 %11, label %22, label %14, !dbg !4011

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #32, !dbg !4012
  %16 = load i32, i32* %15, align 4, !dbg !4012, !tbaa !872
  %17 = icmp ne i32 %16, 9, !dbg !4013
  %18 = sext i1 %17 to i32, !dbg !4014
  br label %22, !dbg !4014

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4015

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #32, !dbg !4017
  store i32 0, i32* %21, align 4, !dbg !4019, !tbaa !872
  br label %22, !dbg !4017

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3994
  ret i32 %23, !dbg !4020
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4021 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4025, metadata !DIExpression()), !dbg !4030
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4031
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #28, !dbg !4031
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4026, metadata !DIExpression()), !dbg !4032
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #28, !dbg !4033
  %5 = icmp eq i32 %4, 0, !dbg !4033
  br i1 %5, label %6, label %13, !dbg !4035

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4036
  %8 = load i16, i16* %7, align 16, !dbg !4036
  %9 = icmp eq i16 %8, 67, !dbg !4036
  br i1 %9, label %13, label %10, !dbg !4037

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.154, i64 0, i64 0), i64 6), !dbg !4038
  %12 = icmp ne i32 %11, 0, !dbg !4039
  br label %13, !dbg !4037

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4030
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #28, !dbg !4040
  ret i1 %14, !dbg !4040
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4041 {
  %1 = tail call i8* @nl_langinfo(i32 14) #28, !dbg !4046
  call void @llvm.dbg.value(metadata i8* %1, metadata !4045, metadata !DIExpression()), !dbg !4047
  %2 = icmp eq i8* %1, null, !dbg !4048
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.157, i64 0, i64 0), i8* %1, !dbg !4050
  call void @llvm.dbg.value(metadata i8* %3, metadata !4045, metadata !DIExpression()), !dbg !4047
  %4 = load i8, i8* %3, align 1, !dbg !4051, !tbaa !1024
  %5 = icmp eq i8 %4, 0, !dbg !4055
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.158, i64 0, i64 0), i8* %3, !dbg !4056
  call void @llvm.dbg.value(metadata i8* %6, metadata !4045, metadata !DIExpression()), !dbg !4047
  ret i8* %6, !dbg !4057
}

; Function Attrs: nounwind
declare !dbg !4058 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4061 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4065, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i8* %1, metadata !4066, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i64 %2, metadata !4067, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i32 %0, metadata !4069, metadata !DIExpression()) #28, !dbg !4078
  call void @llvm.dbg.value(metadata i8* %1, metadata !4072, metadata !DIExpression()) #28, !dbg !4078
  call void @llvm.dbg.value(metadata i64 %2, metadata !4073, metadata !DIExpression()) #28, !dbg !4078
  call void @llvm.dbg.value(metadata i32 %0, metadata !4080, metadata !DIExpression()) #28, !dbg !4086
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !4088
  call void @llvm.dbg.value(metadata i8* %4, metadata !4085, metadata !DIExpression()) #28, !dbg !4086
  call void @llvm.dbg.value(metadata i8* %4, metadata !4074, metadata !DIExpression()) #28, !dbg !4078
  %5 = icmp eq i8* %4, null, !dbg !4089
  br i1 %5, label %6, label %9, !dbg !4090

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4091
  br i1 %7, label %19, label %8, !dbg !4094

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4095, !tbaa !1024
  br label %19, !dbg !4096

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #29, !dbg !4097
  call void @llvm.dbg.value(metadata i64 %10, metadata !4075, metadata !DIExpression()) #28, !dbg !4098
  %11 = icmp ult i64 %10, %2, !dbg !4099
  br i1 %11, label %12, label %14, !dbg !4101

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4102
  call void @llvm.dbg.value(metadata i8* %1, metadata !4104, metadata !DIExpression()) #28, !dbg !4109
  call void @llvm.dbg.value(metadata i8* %4, metadata !4107, metadata !DIExpression()) #28, !dbg !4109
  call void @llvm.dbg.value(metadata i64 %13, metadata !4108, metadata !DIExpression()) #28, !dbg !4109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #28, !dbg !4111
  br label %19, !dbg !4112

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4113
  br i1 %15, label %19, label %16, !dbg !4116

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4117
  call void @llvm.dbg.value(metadata i8* %1, metadata !4104, metadata !DIExpression()) #28, !dbg !4119
  call void @llvm.dbg.value(metadata i8* %4, metadata !4107, metadata !DIExpression()) #28, !dbg !4119
  call void @llvm.dbg.value(metadata i64 %17, metadata !4108, metadata !DIExpression()) #28, !dbg !4119
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #28, !dbg !4121
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4122
  store i8 0, i8* %18, align 1, !dbg !4123, !tbaa !1024
  br label %19, !dbg !4124

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4125
  ret i32 %20, !dbg !4126
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4127 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4129, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i32 %0, metadata !4080, metadata !DIExpression()) #28, !dbg !4131
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !4133
  call void @llvm.dbg.value(metadata i8* %2, metadata !4085, metadata !DIExpression()) #28, !dbg !4131
  ret i8* %2, !dbg !4134
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4135 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4173, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i32 0, metadata !4174, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i32 0, metadata !4176, metadata !DIExpression()), !dbg !4177
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4178
  call void @llvm.dbg.value(metadata i32 %2, metadata !4175, metadata !DIExpression()), !dbg !4177
  %3 = icmp slt i32 %2, 0, !dbg !4179
  br i1 %3, label %4, label %6, !dbg !4181

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4182
  br label %24, !dbg !4183

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !4184
  %8 = icmp eq i32 %7, 0, !dbg !4184
  br i1 %8, label %13, label %9, !dbg !4186

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4187
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #28, !dbg !4188
  %12 = icmp eq i64 %11, -1, !dbg !4189
  br i1 %12, label %16, label %13, !dbg !4190

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #28, !dbg !4191
  %15 = icmp eq i32 %14, 0, !dbg !4191
  br i1 %15, label %16, label %18, !dbg !4192

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4174, metadata !DIExpression()), !dbg !4177
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4193
  call void @llvm.dbg.value(metadata i32 %21, metadata !4176, metadata !DIExpression()), !dbg !4177
  br label %24, !dbg !4194

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #32, !dbg !4195
  %20 = load i32, i32* %19, align 4, !dbg !4195, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %20, metadata !4174, metadata !DIExpression()), !dbg !4177
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4193
  call void @llvm.dbg.value(metadata i32 %21, metadata !4176, metadata !DIExpression()), !dbg !4177
  %22 = icmp eq i32 %20, 0, !dbg !4196
  br i1 %22, label %24, label %23, !dbg !4194

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4198, !tbaa !872
  call void @llvm.dbg.value(metadata i32 -1, metadata !4176, metadata !DIExpression()), !dbg !4177
  br label %24, !dbg !4200

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4177
  ret i32 %25, !dbg !4201
}

; Function Attrs: nofree nounwind
declare !dbg !4202 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4205 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4206 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4209 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4247, metadata !DIExpression()), !dbg !4248
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4249
  br i1 %2, label %6, label %3, !dbg !4251

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !4252
  %5 = icmp eq i32 %4, 0, !dbg !4252
  br i1 %5, label %6, label %8, !dbg !4253

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4254
  br label %17, !dbg !4255

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4256, metadata !DIExpression()) #28, !dbg !4261
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4263
  %10 = load i32, i32* %9, align 8, !dbg !4263, !tbaa !4003
  %11 = and i32 %10, 256, !dbg !4265
  %12 = icmp eq i32 %11, 0, !dbg !4265
  br i1 %12, label %15, label %13, !dbg !4266

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #28, !dbg !4267
  br label %15, !dbg !4267

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4268
  br label %17, !dbg !4269

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4248
  ret i32 %18, !dbg !4270
}

; Function Attrs: nofree nounwind
declare !dbg !4271 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4274 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4313, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 %1, metadata !4314, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i32 %2, metadata !4315, metadata !DIExpression()), !dbg !4319
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4320
  %5 = load i8*, i8** %4, align 8, !dbg !4320, !tbaa !4321
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4322
  %7 = load i8*, i8** %6, align 8, !dbg !4322, !tbaa !4323
  %8 = icmp eq i8* %5, %7, !dbg !4324
  br i1 %8, label %9, label %28, !dbg !4325

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4326
  %11 = load i8*, i8** %10, align 8, !dbg !4326, !tbaa !4327
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4328
  %13 = load i8*, i8** %12, align 8, !dbg !4328, !tbaa !4329
  %14 = icmp eq i8* %11, %13, !dbg !4330
  br i1 %14, label %15, label %28, !dbg !4331

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4332
  %17 = load i8*, i8** %16, align 8, !dbg !4332, !tbaa !4333
  %18 = icmp eq i8* %17, null, !dbg !4334
  br i1 %18, label %19, label %28, !dbg !4335

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4336
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #28, !dbg !4337
  call void @llvm.dbg.value(metadata i64 %21, metadata !4316, metadata !DIExpression()), !dbg !4338
  %22 = icmp eq i64 %21, -1, !dbg !4339
  br i1 %22, label %30, label %23, !dbg !4341

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4342
  %25 = load i32, i32* %24, align 8, !dbg !4343, !tbaa !4003
  %26 = and i32 %25, -17, !dbg !4343
  store i32 %26, i32* %24, align 8, !dbg !4343, !tbaa !4003
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4344
  store i64 %21, i64* %27, align 8, !dbg !4345, !tbaa !4346
  br label %30, !dbg !4347

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4348
  br label %30, !dbg !4349

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4319
  ret i32 %31, !dbg !4350
}

; Function Attrs: nofree nounwind
declare !dbg !4351 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { norecurse nounwind readnone sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #12 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind }
attributes #19 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #23 = { nofree nosync nounwind willreturn }
attributes #24 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { argmemonly nofree nounwind willreturn }
attributes #28 = { nounwind }
attributes #29 = { nounwind readonly willreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { noreturn }
attributes #32 = { nounwind readnone willreturn }
attributes #33 = { cold }

!llvm.dbg.cu = !{!2, !224, !67, !226, !73, !228, !80, !86, !92, !240, !175, !247, !264, !266, !268, !270, !183, !197, !273, !275, !277, !666, !668, !670, !672}
!llvm.ident = !{!674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674}
!llvm.module.flags = !{!675, !676, !677, !678, !679}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 96, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !24, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/timeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!13 = !{!14, !16, !17, !23}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !18, line: 72, baseType: !19)
!18 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{!25, !27, !33, !36, !39, !41, !43, !0, !47}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "timed_out", scope: !2, file: !3, line: 80, type: !22, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "monitored_pid", scope: !2, file: !3, line: 82, type: !29, isLocal: true, isDefinition: true)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !30, line: 97, baseType: !31)
!30 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !32, line: 154, baseType: !22)
!32 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "kill_after", scope: !2, file: !3, line: 83, type: !35, isLocal: true, isDefinition: true)
!35 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "foreground", scope: !2, file: !3, line: 84, type: !38, isLocal: true, isDefinition: true)
!38 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "preserve_status", scope: !2, file: !3, line: 85, type: !38, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 86, type: !38, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "command", scope: !2, file: !3, line: 87, type: !45, isLocal: true, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "term_signal", scope: !2, file: !3, line: 81, type: !22, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, elements: !59)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !52, line: 50, size: 256, elements: !53)
!52 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!53 = !{!54, !55, !56, !58}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !51, file: !52, line: 52, baseType: !45, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !51, file: !52, line: 55, baseType: !22, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !51, file: !52, line: 56, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !51, file: !52, line: 57, baseType: !22, size: 32, offset: 192)
!59 = !{!60}
!60 = !DISubrange(count: 8)
!61 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!62 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!63 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!64 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "Version", scope: !67, file: !68, line: 2, type: !45, isLocal: false, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !70, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!69 = !{}
!70 = !{!65}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "file_name", scope: !73, file: !74, line: 46, type: !45, isLocal: true, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !75, splitDebugInlining: false, nameTableKind: None)
!74 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!75 = !{!71, !76}
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !73, file: !74, line: 56, type: !38, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "exit_failure", scope: !80, file: !81, line: 24, type: !83, isLocal: false, isDefinition: true)
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !82, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!82 = !{!78}
!83 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "program_name", scope: !86, file: !87, line: 33, type: !45, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !88, globals: !89, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!88 = !{!16, !14}
!89 = !{!84}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !92, file: !93, line: 85, type: !169, isLocal: false, isDefinition: true)
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !129, globals: !134, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!94 = !{!95, !109, !114}
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !96, line: 32, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!98 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!99 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!100 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!101 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!102 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!103 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!104 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!105 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!106 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!107 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!108 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !96, line: 242, baseType: !7, size: 32, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 46, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!117 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!118 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!119 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!120 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!121 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!122 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!123 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!124 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!125 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!127 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!128 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!129 = !{!22, !130, !131, !14}
!130 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 46, baseType: !133)
!132 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!133 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!134 = !{!90, !135, !141, !151, !153, !158, !165, !167}
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !92, file: !93, line: 101, type: !137, isLocal: false, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 320, elements: !139)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!139 = !{!140}
!140 = !DISubrange(count: 10)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !92, file: !93, line: 1052, type: !143, isLocal: false, isDefinition: true)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !93, line: 65, size: 448, elements: !144)
!144 = !{!145, !146, !147, !149, !150}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !143, file: !93, line: 68, baseType: !95, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !93, line: 71, baseType: !22, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !143, file: !93, line: 75, baseType: !148, size: 256, offset: 64)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !59)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !143, file: !93, line: 78, baseType: !45, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !143, file: !93, line: 81, baseType: !45, size: 64, offset: 384)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !92, file: !93, line: 116, type: !143, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "slot0", scope: !92, file: !93, line: 842, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 256)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "slotvec", scope: !92, file: !93, line: 845, type: !160, isLocal: true, isDefinition: true)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !93, line: 834, size: 128, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !161, file: !93, line: 836, baseType: !131, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !161, file: !93, line: 837, baseType: !14, size: 64, offset: 64)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "nslots", scope: !92, file: !93, line: 843, type: !22, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "slotvec0", scope: !92, file: !93, line: 844, type: !161, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 704, elements: !171)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!171 = !{!172}
!172 = !DISubrange(count: 11)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !175, file: !176, line: 26, type: !178, isLocal: false, isDefinition: true)
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !177, splitDebugInlining: false, nameTableKind: None)
!176 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!177 = !{!173}
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 376, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 47)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "numname_table", scope: !183, file: !184, line: 41, type: !187, isLocal: true, isDefinition: true)
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !185, globals: !186, splitDebugInlining: false, nameTableKind: None)
!184 = !DIFile(filename: "lib/sig2str.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!185 = !{!7}
!186 = !{!181}
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 3360, elements: !193)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !184, line: 41, size: 96, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !188, file: !184, line: 41, baseType: !22, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !184, line: 41, baseType: !192, size: 64, offset: 32)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !59)
!193 = !{!194}
!194 = !DISubrange(count: 35)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !197, file: !198, line: 50, type: !223, isLocal: true, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !199, globals: !222, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "lib/c-strtod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!199 = !{!14, !200}
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !201, line: 24, baseType: !202)
!201 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !203, line: 42, baseType: !204)
!203 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "")
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !203, line: 28, size: 1856, elements: !206)
!206 = !{!207, !213, !216, !219, !220}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !205, file: !203, line: 31, baseType: !208, size: 832)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 832, elements: !211)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !203, line: 31, flags: DIFlagFwdDecl)
!211 = !{!212}
!212 = !DISubrange(count: 13)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !205, file: !203, line: 34, baseType: !214, size: 64, offset: 832)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !205, file: !203, line: 35, baseType: !217, size: 64, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !205, file: !203, line: 36, baseType: !217, size: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !205, file: !203, line: 39, baseType: !221, size: 832, offset: 1024)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 832, elements: !211)
!222 = !{!195}
!223 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !200)
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !185, splitDebugInlining: false, nameTableKind: None)
!225 = !DIFile(filename: "src/operand2sig.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/cl-strtod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, retainedTypes: !235, splitDebugInlining: false, nameTableKind: None)
!229 = !DIFile(filename: "lib/dtotimespec.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!230 = !{!231}
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !232, line: 42, baseType: !7, size: 32, elements: !233)
!232 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!233 = !{!234}
!234 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000, isUnsigned: true)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !237, line: 7, baseType: !238)
!237 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !32, line: 160, baseType: !239)
!239 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, retainedTypes: !246, splitDebugInlining: false, nameTableKind: None)
!241 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!242 = !{!243}
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 40, baseType: !7, size: 32, elements: !244)
!244 = !{!245}
!245 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!246 = !{!16}
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !249, retainedTypes: !263, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!249 = !{!250}
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !252, file: !251, line: 186, baseType: !7, size: 32, elements: !261)
!251 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!252 = distinct !DISubprogram(name: "x2nrealloc", scope: !251, file: !251, line: 174, type: !253, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !256)
!253 = !DISubroutineType(types: !254)
!254 = !{!16, !16, !255, !131}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!256 = !{!257, !258, !259, !260}
!257 = !DILocalVariable(name: "p", arg: 1, scope: !252, file: !251, line: 174, type: !16)
!258 = !DILocalVariable(name: "pn", arg: 2, scope: !252, file: !251, line: 174, type: !255)
!259 = !DILocalVariable(name: "s", arg: 3, scope: !252, file: !251, line: 174, type: !131)
!260 = !DILocalVariable(name: "n", scope: !252, file: !251, line: 176, type: !131)
!261 = !{!262}
!262 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!263 = !{!131, !14, !16}
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !246, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/xstrtod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !246, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !272, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!272 = !{!131}
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, splitDebugInlining: false, nameTableKind: None)
!274 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, splitDebugInlining: false, nameTableKind: None)
!276 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!277 = distinct !DICompileUnit(language: DW_LANG_C99, file: !278, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !279, retainedTypes: !246, splitDebugInlining: false, nameTableKind: None)
!278 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!279 = !{!280}
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !281, line: 41, baseType: !7, size: 32, elements: !282)
!281 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!283 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!284 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!285 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!286 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!287 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!288 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!289 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!290 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!291 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!292 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!293 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!294 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!295 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!296 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!297 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!298 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!299 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!300 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!301 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!302 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!303 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!304 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!305 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!306 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!307 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!308 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!309 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!310 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!311 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!312 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!313 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!314 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!315 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!316 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!317 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!318 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!319 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!320 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!321 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!322 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!323 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!324 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!325 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!326 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!327 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!328 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!329 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!330 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!331 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!332 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!391 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!394 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!395 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!396 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!397 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!398 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!399 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!400 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!401 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!402 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!403 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!404 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!405 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!478 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!551 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!552 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!553 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!554 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!555 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!556 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!557 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!558 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!559 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!560 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!561 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!562 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!563 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!564 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!565 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!567 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!568 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!569 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!570 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!571 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!572 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!598 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!599 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!600 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!601 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!602 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!607 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!608 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!609 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!610 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!666 = distinct !DICompileUnit(language: DW_LANG_C99, file: !667, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !246, splitDebugInlining: false, nameTableKind: None)
!667 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !669, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, splitDebugInlining: false, nameTableKind: None)
!669 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!670 = distinct !DICompileUnit(language: DW_LANG_C99, file: !671, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !246, splitDebugInlining: false, nameTableKind: None)
!671 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !246, splitDebugInlining: false, nameTableKind: None)
!673 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!674 = !{!"clang version 12.0.1"}
!675 = !{i32 7, !"Dwarf Version", i32 4}
!676 = !{i32 2, !"Debug Info Version", i32 3}
!677 = !{i32 1, !"wchar_size", i32 4}
!678 = !{i32 7, !"PIC Level", i32 2}
!679 = !{i32 7, !"PIE Level", i32 2}
!680 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 229, type: !20, scopeLine: 230, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !681)
!681 = !{!682}
!682 = !DILocalVariable(name: "status", arg: 1, scope: !680, file: !3, line: 229, type: !22)
!683 = !DILocation(line: 0, scope: !680)
!684 = !DILocation(line: 231, column: 14, scope: !685)
!685 = distinct !DILexicalBlock(scope: !680, file: !3, line: 231, column: 7)
!686 = !DILocation(line: 231, column: 7, scope: !680)
!687 = !DILocation(line: 232, column: 5, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !3, line: 232, column: 5)
!689 = !{!690, !690, i64 0}
!690 = !{!"any pointer", !691, i64 0}
!691 = !{!"omnipotent char", !692, i64 0}
!692 = !{!"Simple C/C++ TBAA"}
!693 = !DILocation(line: 235, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !685, file: !3, line: 234, column: 5)
!695 = !DILocation(line: 239, column: 7, scope: !694)
!696 = !DILocation(line: 590, column: 3, scope: !697, inlinedAt: !700)
!697 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 588, type: !698, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !69)
!698 = !DISubroutineType(types: !699)
!699 = !{null}
!700 = distinct !DILocation(line: 243, column: 7, scope: !694)
!701 = !DILocation(line: 245, column: 7, scope: !694)
!702 = !DILocation(line: 260, column: 7, scope: !694)
!703 = !DILocation(line: 263, column: 7, scope: !694)
!704 = !DILocation(line: 264, column: 7, scope: !694)
!705 = !DILocation(line: 266, column: 7, scope: !694)
!706 = !DILocation(line: 271, column: 7, scope: !694)
!707 = !DILocalVariable(name: "program", arg: 1, scope: !708, file: !6, line: 634, type: !45)
!708 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 634, type: !709, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !711)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !45}
!711 = !{!707, !712, !721, !722, !724}
!712 = !DILocalVariable(name: "infomap", scope: !708, file: !6, line: 636, type: !713)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 896, elements: !719)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !708, file: !6, line: 636, size: 128, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !715, file: !6, line: 636, baseType: !45, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !6, line: 636, baseType: !45, size: 64, offset: 64)
!719 = !{!720}
!720 = !DISubrange(count: 7)
!721 = !DILocalVariable(name: "node", scope: !708, file: !6, line: 646, type: !45)
!722 = !DILocalVariable(name: "map_prog", scope: !708, file: !6, line: 647, type: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!724 = !DILocalVariable(name: "lc_messages", scope: !708, file: !6, line: 659, type: !45)
!725 = !DILocation(line: 0, scope: !708, inlinedAt: !726)
!726 = distinct !DILocation(line: 278, column: 7, scope: !694)
!727 = !DILocation(line: 636, column: 3, scope: !708, inlinedAt: !726)
!728 = !DILocation(line: 636, column: 67, scope: !708, inlinedAt: !726)
!729 = !DILocation(line: 647, column: 36, scope: !708, inlinedAt: !726)
!730 = !DILocation(line: 649, column: 3, scope: !708, inlinedAt: !726)
!731 = !DILocation(line: 649, column: 33, scope: !708, inlinedAt: !726)
!732 = !DILocation(line: 650, column: 13, scope: !708, inlinedAt: !726)
!733 = !DILocation(line: 649, column: 20, scope: !708, inlinedAt: !726)
!734 = !{!735, !690, i64 0}
!735 = !{!"infomap", !690, i64 0, !690, i64 8}
!736 = !DILocation(line: 649, column: 10, scope: !708, inlinedAt: !726)
!737 = !DILocation(line: 649, column: 28, scope: !708, inlinedAt: !726)
!738 = distinct !{!738, !730, !732, !739}
!739 = !{!"llvm.loop.mustprogress"}
!740 = !DILocation(line: 652, column: 17, scope: !741, inlinedAt: !726)
!741 = distinct !DILexicalBlock(scope: !708, file: !6, line: 652, column: 7)
!742 = !{!735, !690, i64 8}
!743 = !DILocation(line: 652, column: 7, scope: !741, inlinedAt: !726)
!744 = !DILocation(line: 652, column: 7, scope: !708, inlinedAt: !726)
!745 = !DILocation(line: 655, column: 3, scope: !708, inlinedAt: !726)
!746 = !DILocation(line: 659, column: 29, scope: !708, inlinedAt: !726)
!747 = !DILocation(line: 660, column: 7, scope: !748, inlinedAt: !726)
!748 = distinct !DILexicalBlock(scope: !708, file: !6, line: 660, column: 7)
!749 = !DILocation(line: 660, column: 19, scope: !748, inlinedAt: !726)
!750 = !DILocation(line: 660, column: 22, scope: !748, inlinedAt: !726)
!751 = !DILocation(line: 660, column: 7, scope: !708, inlinedAt: !726)
!752 = !DILocation(line: 666, column: 7, scope: !753, inlinedAt: !726)
!753 = distinct !DILexicalBlock(scope: !748, file: !6, line: 661, column: 5)
!754 = !DILocation(line: 668, column: 5, scope: !753, inlinedAt: !726)
!755 = !DILocation(line: 669, column: 3, scope: !708, inlinedAt: !726)
!756 = !DILocation(line: 671, column: 3, scope: !708, inlinedAt: !726)
!757 = !DILocation(line: 673, column: 1, scope: !708, inlinedAt: !726)
!758 = !DILocation(line: 280, column: 3, scope: !680)
!759 = !DISubprogram(name: "dcgettext", scope: !760, file: !760, line: 51, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!760 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!761 = !DISubroutineType(types: !762)
!762 = !{!14, !45, !45, !22}
!763 = !DISubprogram(name: "fputs_unlocked", scope: !764, file: !764, line: 667, type: !765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!764 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!765 = !DISubroutineType(types: !766)
!766 = !{!22, !45, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !769, line: 49, size: 1728, elements: !770)
!769 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !786, !787, !788, !789, !791, !792, !793, !797, !800, !802, !805, !808, !809, !810, !811, !812}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !768, file: !769, line: 51, baseType: !22, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !768, file: !769, line: 54, baseType: !14, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !768, file: !769, line: 55, baseType: !14, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !768, file: !769, line: 56, baseType: !14, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !768, file: !769, line: 57, baseType: !14, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !768, file: !769, line: 58, baseType: !14, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !768, file: !769, line: 59, baseType: !14, size: 64, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !768, file: !769, line: 60, baseType: !14, size: 64, offset: 448)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !768, file: !769, line: 61, baseType: !14, size: 64, offset: 512)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !768, file: !769, line: 64, baseType: !14, size: 64, offset: 576)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !768, file: !769, line: 65, baseType: !14, size: 64, offset: 640)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !768, file: !769, line: 66, baseType: !14, size: 64, offset: 704)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !768, file: !769, line: 68, baseType: !784, size: 64, offset: 768)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !769, line: 36, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !768, file: !769, line: 70, baseType: !767, size: 64, offset: 832)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !768, file: !769, line: 72, baseType: !22, size: 32, offset: 896)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !768, file: !769, line: 73, baseType: !22, size: 32, offset: 928)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !768, file: !769, line: 74, baseType: !790, size: 64, offset: 960)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !32, line: 152, baseType: !239)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !768, file: !769, line: 77, baseType: !130, size: 16, offset: 1024)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !768, file: !769, line: 78, baseType: !23, size: 8, offset: 1040)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !768, file: !769, line: 79, baseType: !794, size: 8, offset: 1048)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 1)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !768, file: !769, line: 81, baseType: !798, size: 64, offset: 1088)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !769, line: 43, baseType: null)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !768, file: !769, line: 89, baseType: !801, size: 64, offset: 1152)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !32, line: 153, baseType: !239)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !768, file: !769, line: 91, baseType: !803, size: 64, offset: 1216)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !769, line: 37, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !768, file: !769, line: 92, baseType: !806, size: 64, offset: 1280)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !769, line: 38, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !768, file: !769, line: 93, baseType: !767, size: 64, offset: 1344)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !768, file: !769, line: 94, baseType: !16, size: 64, offset: 1408)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !768, file: !769, line: 95, baseType: !131, size: 64, offset: 1472)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !768, file: !769, line: 96, baseType: !22, size: 32, offset: 1536)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !768, file: !769, line: 98, baseType: !813, size: 160, offset: 1568)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 20)
!816 = !DISubprogram(name: "setlocale", scope: !817, file: !817, line: 122, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!817 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!818 = !DISubroutineType(types: !819)
!819 = !{!14, !22, !45}
!820 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 430, type: !821, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !824)
!821 = !DISubroutineType(types: !822)
!822 = !{!22, !22, !823}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!824 = !{!825, !826, !827, !828, !832, !833, !837, !839, !840, !851}
!825 = !DILocalVariable(name: "argc", arg: 1, scope: !820, file: !3, line: 430, type: !22)
!826 = !DILocalVariable(name: "argv", arg: 2, scope: !820, file: !3, line: 430, type: !823)
!827 = !DILocalVariable(name: "timeout", scope: !820, file: !3, line: 432, type: !35)
!828 = !DILocalVariable(name: "signame", scope: !820, file: !3, line: 433, type: !829)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 152, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 19)
!832 = !DILocalVariable(name: "c", scope: !820, file: !3, line: 434, type: !22)
!833 = !DILocalVariable(name: "exit_status", scope: !834, file: !3, line: 518, type: !22)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 510, column: 5)
!835 = distinct !DILexicalBlock(scope: !836, file: !3, line: 509, column: 12)
!836 = distinct !DILexicalBlock(scope: !820, file: !3, line: 504, column: 7)
!837 = !DILocalVariable(name: "wait_result", scope: !838, file: !3, line: 524, type: !29)
!838 = distinct !DILexicalBlock(scope: !835, file: !3, line: 523, column: 5)
!839 = !DILocalVariable(name: "status", scope: !838, file: !3, line: 525, type: !22)
!840 = !DILocalVariable(name: "cleanup_set", scope: !838, file: !3, line: 535, type: !841)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !842, line: 7, baseType: !843)
!842 = !DIFile(filename: "/usr/include/bits/types/sigset_t.h", directory: "")
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !844, line: 8, baseType: !845)
!844 = !DIFile(filename: "/usr/include/bits/types/__sigset_t.h", directory: "")
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !844, line: 5, size: 1024, elements: !846)
!846 = !{!847}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !845, file: !844, line: 7, baseType: !848, size: 1024)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 1024, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 16)
!851 = !DILocalVariable(name: "sig", scope: !852, file: !3, line: 553, type: !22)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 552, column: 13)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 551, column: 20)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 549, column: 15)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 548, column: 9)
!856 = distinct !DILexicalBlock(scope: !838, file: !3, line: 541, column: 11)
!857 = !DILocation(line: 0, scope: !820)
!858 = !DILocation(line: 433, column: 3, scope: !820)
!859 = !DILocation(line: 433, column: 8, scope: !820)
!860 = !DILocation(line: 437, column: 21, scope: !820)
!861 = !DILocation(line: 437, column: 3, scope: !820)
!862 = !DILocation(line: 438, column: 3, scope: !820)
!863 = !DILocation(line: 439, column: 3, scope: !820)
!864 = !DILocation(line: 440, column: 3, scope: !820)
!865 = !DILocalVariable(name: "status", arg: 1, scope: !866, file: !6, line: 99, type: !22)
!866 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !20, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !867)
!867 = !{!865}
!868 = !DILocation(line: 0, scope: !866, inlinedAt: !869)
!869 = distinct !DILocation(line: 442, column: 3, scope: !820)
!870 = !DILocation(line: 102, column: 18, scope: !871, inlinedAt: !869)
!871 = distinct !DILexicalBlock(scope: !866, file: !6, line: 101, column: 7)
!872 = !{!873, !873, i64 0}
!873 = !{!"int", !691, i64 0}
!874 = !DILocation(line: 443, column: 3, scope: !820)
!875 = !DILocation(line: 445, column: 3, scope: !820)
!876 = !DILocation(line: 445, column: 15, scope: !820)
!877 = !DILocation(line: 450, column: 40, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 448, column: 9)
!879 = distinct !DILexicalBlock(scope: !820, file: !3, line: 446, column: 5)
!880 = !DILocation(line: 450, column: 24, scope: !878)
!881 = !DILocation(line: 450, column: 22, scope: !878)
!882 = !{!883, !883, i64 0}
!883 = !{!"double", !691, i64 0}
!884 = !DILocation(line: 451, column: 11, scope: !878)
!885 = !DILocation(line: 454, column: 38, scope: !878)
!886 = !DILocation(line: 454, column: 25, scope: !878)
!887 = !DILocation(line: 454, column: 23, scope: !878)
!888 = !DILocation(line: 455, column: 27, scope: !889)
!889 = distinct !DILexicalBlock(scope: !878, file: !3, line: 455, column: 15)
!890 = !DILocation(line: 455, column: 15, scope: !878)
!891 = distinct !{!891, !875, !892, !739}
!892 = !DILocation(line: 479, column: 5, scope: !820)
!893 = !DILocation(line: 456, column: 13, scope: !889)
!894 = !DILocation(line: 460, column: 19, scope: !878)
!895 = !DILocation(line: 461, column: 11, scope: !878)
!896 = !DILocation(line: 464, column: 22, scope: !878)
!897 = !DILocation(line: 465, column: 11, scope: !878)
!898 = !DILocation(line: 468, column: 27, scope: !878)
!899 = !DILocation(line: 469, column: 11, scope: !878)
!900 = !DILocation(line: 471, column: 9, scope: !878)
!901 = !DILocation(line: 473, column: 9, scope: !878)
!902 = !DILocation(line: 476, column: 11, scope: !878)
!903 = !DILocation(line: 481, column: 14, scope: !904)
!904 = distinct !DILexicalBlock(scope: !820, file: !3, line: 481, column: 7)
!905 = !DILocation(line: 481, column: 12, scope: !904)
!906 = !DILocation(line: 481, column: 21, scope: !904)
!907 = !DILocation(line: 481, column: 7, scope: !820)
!908 = !DILocation(line: 482, column: 5, scope: !904)
!909 = !DILocation(line: 484, column: 40, scope: !820)
!910 = !DILocation(line: 484, column: 29, scope: !820)
!911 = !DILocation(line: 484, column: 13, scope: !820)
!912 = !DILocation(line: 486, column: 11, scope: !820)
!913 = !DILocation(line: 486, column: 8, scope: !820)
!914 = !DILocation(line: 487, column: 13, scope: !820)
!915 = !DILocation(line: 487, column: 11, scope: !820)
!916 = !DILocation(line: 493, column: 8, scope: !917)
!917 = distinct !DILexicalBlock(scope: !820, file: !3, line: 493, column: 7)
!918 = !DILocation(line: 493, column: 7, scope: !820)
!919 = !DILocation(line: 494, column: 5, scope: !917)
!920 = !DILocation(line: 498, column: 20, scope: !820)
!921 = !DILocalVariable(name: "sigterm", arg: 1, scope: !922, file: !3, line: 366, type: !22)
!922 = distinct !DISubprogram(name: "install_cleanup", scope: !3, file: !3, line: 366, type: !20, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !923)
!923 = !{!921, !924}
!924 = !DILocalVariable(name: "sa", scope: !922, file: !3, line: 368, type: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !926, line: 27, size: 1216, elements: !927)
!926 = !DIFile(filename: "/usr/include/bits/sigaction.h", directory: "")
!927 = !{!928, !1012, !1013, !1014}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !925, file: !926, line: 38, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !926, line: 31, size: 64, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !929, file: !926, line: 34, baseType: !17, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !929, file: !926, line: 36, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !22, !936, !16}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !938, line: 124, baseType: !939)
!938 = !DIFile(filename: "/usr/include/bits/types/siginfo_t.h", directory: "")
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !938, line: 36, size: 1024, elements: !940)
!940 = !{!941, !942, !943, !944, !945}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !939, file: !938, line: 38, baseType: !22, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !939, file: !938, line: 40, baseType: !22, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !939, file: !938, line: 42, baseType: !22, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !939, file: !938, line: 48, baseType: !22, size: 32, offset: 96)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !939, file: !938, line: 123, baseType: !946, size: 896, offset: 128)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !938, line: 51, size: 896, elements: !947)
!947 = !{!948, !952, !958, !970, !976, !985, !1001, !1006}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !946, file: !938, line: 53, baseType: !949, size: 896)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 896, elements: !950)
!950 = !{!951}
!951 = !DISubrange(count: 28)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !946, file: !938, line: 60, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !938, line: 56, size: 64, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !953, file: !938, line: 58, baseType: !31, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !953, file: !938, line: 59, baseType: !957, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !32, line: 146, baseType: !7)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !946, file: !938, line: 68, baseType: !959, size: 128)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !938, line: 63, size: 128, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !959, file: !938, line: 65, baseType: !22, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !959, file: !938, line: 66, baseType: !22, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !959, file: !938, line: 67, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !965, line: 30, baseType: !966)
!965 = !DIFile(filename: "/usr/include/bits/types/__sigval_t.h", directory: "")
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !965, line: 24, size: 64, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !966, file: !965, line: 26, baseType: !22, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !966, file: !965, line: 27, baseType: !16, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !946, file: !938, line: 76, baseType: !971, size: 128)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !938, line: 71, size: 128, elements: !972)
!972 = !{!973, !974, !975}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !971, file: !938, line: 73, baseType: !31, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !971, file: !938, line: 74, baseType: !957, size: 32, offset: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !971, file: !938, line: 75, baseType: !964, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !946, file: !938, line: 86, baseType: !977, size: 256)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !938, line: 79, size: 256, elements: !978)
!978 = !{!979, !980, !981, !982, !984}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !977, file: !938, line: 81, baseType: !31, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !977, file: !938, line: 82, baseType: !957, size: 32, offset: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !977, file: !938, line: 83, baseType: !22, size: 32, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !977, file: !938, line: 84, baseType: !983, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !32, line: 156, baseType: !239)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !977, file: !938, line: 85, baseType: !983, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !946, file: !938, line: 105, baseType: !986, size: 256)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !938, line: 89, size: 256, elements: !987)
!987 = !{!988, !989, !991}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !986, file: !938, line: 91, baseType: !16, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !986, file: !938, line: 93, baseType: !990, size: 16, offset: 64)
!990 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !986, file: !938, line: 104, baseType: !992, size: 128, offset: 128)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !986, file: !938, line: 94, size: 128, elements: !993)
!993 = !{!994, !999}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !992, file: !938, line: 101, baseType: !995, size: 128)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !938, line: 97, size: 128, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !995, file: !938, line: 99, baseType: !16, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !995, file: !938, line: 100, baseType: !16, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !992, file: !938, line: 103, baseType: !1000, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !32, line: 42, baseType: !7)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !946, file: !938, line: 112, baseType: !1002, size: 128)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !938, line: 108, size: 128, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1002, file: !938, line: 110, baseType: !239, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1002, file: !938, line: 111, baseType: !22, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !946, file: !938, line: 121, baseType: !1007, size: 128)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !938, line: 116, size: 128, elements: !1008)
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1007, file: !938, line: 118, baseType: !16, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1007, file: !938, line: 119, baseType: !22, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1007, file: !938, line: 120, baseType: !7, size: 32, offset: 96)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !925, file: !926, line: 46, baseType: !843, size: 1024, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !925, file: !926, line: 49, baseType: !22, size: 32, offset: 1088)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !925, file: !926, line: 52, baseType: !1015, size: 64, offset: 1152)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!1016 = !DILocation(line: 0, scope: !922, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 498, column: 3, scope: !820)
!1018 = !DILocation(line: 368, column: 3, scope: !922, inlinedAt: !1017)
!1019 = !DILocation(line: 368, column: 20, scope: !922, inlinedAt: !1017)
!1020 = !DILocation(line: 369, column: 20, scope: !922, inlinedAt: !1017)
!1021 = !DILocation(line: 369, column: 3, scope: !922, inlinedAt: !1017)
!1022 = !DILocation(line: 370, column: 6, scope: !922, inlinedAt: !1017)
!1023 = !DILocation(line: 370, column: 17, scope: !922, inlinedAt: !1017)
!1024 = !{!691, !691, i64 0}
!1025 = !DILocation(line: 371, column: 6, scope: !922, inlinedAt: !1017)
!1026 = !DILocation(line: 371, column: 15, scope: !922, inlinedAt: !1017)
!1027 = !{!1028, !873, i64 136}
!1028 = !{!"sigaction", !691, i64 0, !1029, i64 8, !873, i64 136, !690, i64 144}
!1029 = !{!"", !691, i64 0}
!1030 = !DILocation(line: 374, column: 3, scope: !922, inlinedAt: !1017)
!1031 = !DILocation(line: 375, column: 3, scope: !922, inlinedAt: !1017)
!1032 = !DILocation(line: 376, column: 3, scope: !922, inlinedAt: !1017)
!1033 = !DILocation(line: 377, column: 3, scope: !922, inlinedAt: !1017)
!1034 = !DILocation(line: 378, column: 3, scope: !922, inlinedAt: !1017)
!1035 = !DILocation(line: 379, column: 3, scope: !922, inlinedAt: !1017)
!1036 = !DILocation(line: 380, column: 1, scope: !922, inlinedAt: !1017)
!1037 = !DILocation(line: 499, column: 3, scope: !820)
!1038 = !DILocation(line: 500, column: 3, scope: !820)
!1039 = !DILocation(line: 352, column: 3, scope: !1040, inlinedAt: !1043)
!1040 = distinct !DISubprogram(name: "install_sigchld", scope: !3, file: !3, line: 350, type: !698, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1041)
!1041 = !{!1042}
!1042 = !DILocalVariable(name: "sa", scope: !1040, file: !3, line: 352, type: !925)
!1043 = distinct !DILocation(line: 501, column: 3, scope: !820)
!1044 = !DILocation(line: 352, column: 20, scope: !1040, inlinedAt: !1043)
!1045 = !DILocation(line: 353, column: 20, scope: !1040, inlinedAt: !1043)
!1046 = !DILocation(line: 353, column: 3, scope: !1040, inlinedAt: !1043)
!1047 = !DILocation(line: 354, column: 6, scope: !1040, inlinedAt: !1043)
!1048 = !DILocation(line: 354, column: 17, scope: !1040, inlinedAt: !1043)
!1049 = !DILocation(line: 355, column: 6, scope: !1040, inlinedAt: !1043)
!1050 = !DILocation(line: 355, column: 15, scope: !1040, inlinedAt: !1043)
!1051 = !DILocation(line: 358, column: 3, scope: !1040, inlinedAt: !1043)
!1052 = !DILocation(line: 362, column: 3, scope: !1040, inlinedAt: !1043)
!1053 = !DILocation(line: 363, column: 1, scope: !1040, inlinedAt: !1043)
!1054 = !DILocation(line: 503, column: 19, scope: !820)
!1055 = !DILocation(line: 503, column: 17, scope: !820)
!1056 = !DILocation(line: 504, column: 7, scope: !820)
!1057 = !DILocation(line: 506, column: 17, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !836, file: !3, line: 505, column: 5)
!1059 = !DILocation(line: 506, column: 24, scope: !1058)
!1060 = !DILocation(line: 506, column: 7, scope: !1058)
!1061 = !DILocation(line: 507, column: 7, scope: !1058)
!1062 = !DILocation(line: 512, column: 7, scope: !834)
!1063 = !DILocation(line: 513, column: 7, scope: !834)
!1064 = !DILocation(line: 515, column: 15, scope: !834)
!1065 = !DILocation(line: 515, column: 7, scope: !834)
!1066 = !DILocation(line: 518, column: 25, scope: !834)
!1067 = !DILocation(line: 518, column: 31, scope: !834)
!1068 = !DILocation(line: 0, scope: !834)
!1069 = !DILocation(line: 519, column: 24, scope: !834)
!1070 = !DILocation(line: 519, column: 62, scope: !834)
!1071 = !DILocation(line: 519, column: 55, scope: !834)
!1072 = !DILocation(line: 519, column: 7, scope: !834)
!1073 = !DILocation(line: 525, column: 7, scope: !838)
!1074 = !DILocation(line: 529, column: 7, scope: !838)
!1075 = !DILocation(line: 531, column: 7, scope: !838)
!1076 = !DILocation(line: 535, column: 7, scope: !838)
!1077 = !DILocation(line: 535, column: 16, scope: !838)
!1078 = !DILocation(line: 536, column: 31, scope: !838)
!1079 = !DILocalVariable(name: "sigterm", arg: 1, scope: !1080, file: !3, line: 388, type: !22)
!1080 = distinct !DISubprogram(name: "block_cleanup_and_chld", scope: !3, file: !3, line: 388, type: !1081, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1084)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !22, !1083}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!1084 = !{!1079, !1085, !1086}
!1085 = !DILocalVariable(name: "old_set", arg: 2, scope: !1080, file: !3, line: 388, type: !1083)
!1086 = !DILocalVariable(name: "block_set", scope: !1080, file: !3, line: 390, type: !841)
!1087 = !DILocation(line: 0, scope: !1080, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 536, column: 7, scope: !838)
!1089 = !DILocation(line: 390, column: 3, scope: !1080, inlinedAt: !1088)
!1090 = !DILocation(line: 390, column: 12, scope: !1080, inlinedAt: !1088)
!1091 = !DILocation(line: 391, column: 3, scope: !1080, inlinedAt: !1088)
!1092 = !DILocation(line: 393, column: 3, scope: !1080, inlinedAt: !1088)
!1093 = !DILocation(line: 394, column: 3, scope: !1080, inlinedAt: !1088)
!1094 = !DILocation(line: 395, column: 3, scope: !1080, inlinedAt: !1088)
!1095 = !DILocation(line: 396, column: 3, scope: !1080, inlinedAt: !1088)
!1096 = !DILocation(line: 397, column: 3, scope: !1080, inlinedAt: !1088)
!1097 = !DILocation(line: 398, column: 3, scope: !1080, inlinedAt: !1088)
!1098 = !DILocation(line: 400, column: 3, scope: !1080, inlinedAt: !1088)
!1099 = !DILocation(line: 402, column: 7, scope: !1100, inlinedAt: !1088)
!1100 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 402, column: 7)
!1101 = !DILocation(line: 402, column: 52, scope: !1100, inlinedAt: !1088)
!1102 = !DILocation(line: 402, column: 7, scope: !1080, inlinedAt: !1088)
!1103 = !DILocation(line: 403, column: 15, scope: !1100, inlinedAt: !1088)
!1104 = !DILocation(line: 403, column: 22, scope: !1100, inlinedAt: !1088)
!1105 = !DILocation(line: 403, column: 5, scope: !1100, inlinedAt: !1088)
!1106 = !DILocation(line: 404, column: 1, scope: !1080, inlinedAt: !1088)
!1107 = !DILocation(line: 538, column: 38, scope: !838)
!1108 = !DILocation(line: 0, scope: !838)
!1109 = !DILocation(line: 538, column: 29, scope: !838)
!1110 = !DILocation(line: 538, column: 72, scope: !838)
!1111 = !DILocation(line: 538, column: 7, scope: !838)
!1112 = !DILocation(line: 539, column: 9, scope: !838)
!1113 = distinct !{!1113, !1111, !1114, !739}
!1114 = !DILocation(line: 539, column: 33, scope: !838)
!1115 = !DILocation(line: 541, column: 23, scope: !856)
!1116 = !DILocation(line: 541, column: 11, scope: !838)
!1117 = !DILocation(line: 544, column: 21, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !856, file: !3, line: 542, column: 9)
!1119 = !DILocation(line: 544, column: 28, scope: !1118)
!1120 = !DILocation(line: 544, column: 11, scope: !1118)
!1121 = !DILocation(line: 546, column: 9, scope: !1118)
!1122 = !DILocation(line: 549, column: 15, scope: !854)
!1123 = !DILocation(line: 549, column: 15, scope: !855)
!1124 = !DILocation(line: 550, column: 22, scope: !854)
!1125 = !DILocation(line: 550, column: 13, scope: !854)
!1126 = !DILocation(line: 551, column: 20, scope: !853)
!1127 = !DILocation(line: 551, column: 20, scope: !854)
!1128 = !DILocation(line: 0, scope: !852)
!1129 = !DILocation(line: 554, column: 19, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !852, file: !3, line: 554, column: 19)
!1131 = !DILocation(line: 554, column: 19, scope: !852)
!1132 = !DILocation(line: 555, column: 30, scope: !1130)
!1133 = !DILocation(line: 555, column: 17, scope: !1130)
!1134 = !DILocation(line: 556, column: 20, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !852, file: !3, line: 556, column: 19)
!1136 = !DILocation(line: 556, column: 30, scope: !1135)
!1137 = !DILocation(line: 412, column: 7, scope: !1138, inlinedAt: !1142)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 412, column: 7)
!1139 = distinct !DISubprogram(name: "disable_core_dumps", scope: !3, file: !3, line: 409, type: !1140, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !69)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!38}
!1142 = distinct !DILocation(line: 556, column: 33, scope: !1135)
!1143 = !DILocation(line: 412, column: 34, scope: !1138, inlinedAt: !1142)
!1144 = !DILocation(line: 412, column: 7, scope: !1139, inlinedAt: !1142)
!1145 = !DILocation(line: 425, column: 13, scope: !1139, inlinedAt: !1142)
!1146 = !DILocation(line: 425, column: 20, scope: !1139, inlinedAt: !1142)
!1147 = !DILocation(line: 425, column: 3, scope: !1139, inlinedAt: !1142)
!1148 = !DILocation(line: 556, column: 19, scope: !852)
!1149 = !DILocation(line: 559, column: 19, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 557, column: 17)
!1151 = !DILocation(line: 560, column: 19, scope: !1150)
!1152 = !DILocation(line: 561, column: 19, scope: !1150)
!1153 = !DILocation(line: 562, column: 17, scope: !1150)
!1154 = !DILocation(line: 563, column: 28, scope: !852)
!1155 = !DILocation(line: 564, column: 13, scope: !852)
!1156 = !DILocation(line: 568, column: 28, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !853, file: !3, line: 566, column: 13)
!1158 = !DILocation(line: 568, column: 67, scope: !1157)
!1159 = !DILocation(line: 568, column: 15, scope: !1157)
!1160 = !DILocation(line: 573, column: 11, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !838, file: !3, line: 573, column: 11)
!1162 = !DILocation(line: 573, column: 21, scope: !1161)
!1163 = !DILocation(line: 576, column: 5, scope: !835)
!1164 = !DILocation(line: 0, scope: !836)
!1165 = !DILocation(line: 577, column: 1, scope: !820)
!1166 = !DISubprogram(name: "bindtextdomain", scope: !760, file: !760, line: 86, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!14, !45, !45}
!1169 = !DISubprogram(name: "textdomain", scope: !760, file: !760, line: 82, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!14, !45}
!1172 = !DISubprogram(name: "atexit", scope: !1173, file: !1173, line: 595, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1173 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!22, !1015}
!1176 = !DISubprogram(name: "getopt_long", scope: !52, file: !52, line: 66, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!22, !22, !1179, !45, !1181, !57}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!1182 = distinct !DISubprogram(name: "parse_duration", scope: !3, file: !3, line: 319, type: !1183, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!35, !45}
!1185 = !{!1186, !1187, !1188}
!1186 = !DILocalVariable(name: "str", arg: 1, scope: !1182, file: !3, line: 319, type: !45)
!1187 = !DILocalVariable(name: "duration", scope: !1182, file: !3, line: 321, type: !35)
!1188 = !DILocalVariable(name: "ep", scope: !1182, file: !3, line: 322, type: !45)
!1189 = !DILocation(line: 0, scope: !1182)
!1190 = !DILocation(line: 321, column: 3, scope: !1182)
!1191 = !DILocation(line: 322, column: 3, scope: !1182)
!1192 = !DILocation(line: 324, column: 10, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 324, column: 7)
!1194 = !DILocation(line: 324, column: 51, scope: !1193)
!1195 = !DILocation(line: 324, column: 54, scope: !1193)
!1196 = !DILocation(line: 324, column: 60, scope: !1193)
!1197 = !DILocation(line: 326, column: 7, scope: !1193)
!1198 = !DILocation(line: 326, column: 18, scope: !1193)
!1199 = !DILocation(line: 326, column: 15, scope: !1193)
!1200 = !DILocation(line: 328, column: 7, scope: !1193)
!1201 = !DILocation(line: 328, column: 12, scope: !1193)
!1202 = !DILocation(line: 328, column: 11, scope: !1193)
!1203 = !DILocation(line: 328, column: 15, scope: !1193)
!1204 = !DILocation(line: 328, column: 23, scope: !1193)
!1205 = !DILocation(line: 328, column: 18, scope: !1193)
!1206 = !DILocation(line: 330, column: 7, scope: !1193)
!1207 = !DILocalVariable(name: "x", arg: 1, scope: !1208, file: !3, line: 290, type: !1211)
!1208 = distinct !DISubprogram(name: "apply_time_suffix", scope: !3, file: !3, line: 290, type: !1209, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1212)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!38, !1211, !15}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!1212 = !{!1207, !1213, !1214}
!1213 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1208, file: !3, line: 290, type: !15)
!1214 = !DILocalVariable(name: "multiplier", scope: !1208, file: !3, line: 292, type: !22)
!1215 = !DILocation(line: 0, scope: !1208, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 330, column: 11, scope: !1193)
!1217 = !DILocation(line: 294, column: 11, scope: !1208, inlinedAt: !1216)
!1218 = !DILocation(line: 294, column: 3, scope: !1208, inlinedAt: !1216)
!1219 = !DILocation(line: 302, column: 7, scope: !1220, inlinedAt: !1216)
!1220 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 295, column: 5)
!1221 = !DILocation(line: 305, column: 7, scope: !1220, inlinedAt: !1216)
!1222 = !DILocation(line: 308, column: 7, scope: !1220, inlinedAt: !1216)
!1223 = !DILocation(line: 332, column: 20, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 331, column: 5)
!1225 = !DILocation(line: 332, column: 51, scope: !1224)
!1226 = !DILocation(line: 332, column: 7, scope: !1224)
!1227 = !DILocation(line: 333, column: 7, scope: !1224)
!1228 = !DILocation(line: 313, column: 6, scope: !1208, inlinedAt: !1216)
!1229 = !DILocation(line: 337, column: 1, scope: !1182)
!1230 = !DILocation(line: 336, column: 3, scope: !1182)
!1231 = !DISubprogram(name: "setpgid", scope: !1232, file: !1232, line: 658, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1232 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!22, !22, !22}
!1235 = !DISubprogram(name: "sigemptyset", scope: !18, file: !18, line: 199, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!22, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!1239 = distinct !DISubprogram(name: "cleanup", scope: !3, file: !3, line: 180, type: !20, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1240)
!1240 = !{!1241, !1242, !1247}
!1241 = !DILocalVariable(name: "sig", arg: 1, scope: !1239, file: !3, line: 180, type: !22)
!1242 = !DILocalVariable(name: "saved_errno", scope: !1243, file: !3, line: 191, type: !22)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 190, column: 9)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 189, column: 11)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 188, column: 5)
!1246 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 187, column: 7)
!1247 = !DILocalVariable(name: "signame", scope: !1248, file: !3, line: 204, type: !829)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 203, column: 9)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 202, column: 11)
!1250 = !DILocation(line: 0, scope: !1239)
!1251 = !DILocation(line: 182, column: 11, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 182, column: 7)
!1253 = !DILocation(line: 182, column: 7, scope: !1239)
!1254 = !DILocation(line: 184, column: 17, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 183, column: 5)
!1256 = !DILocation(line: 185, column: 13, scope: !1255)
!1257 = !DILocation(line: 186, column: 5, scope: !1255)
!1258 = !DILocation(line: 187, column: 7, scope: !1246)
!1259 = !DILocation(line: 187, column: 7, scope: !1239)
!1260 = !DILocation(line: 189, column: 11, scope: !1244)
!1261 = !DILocation(line: 189, column: 11, scope: !1245)
!1262 = !DILocation(line: 191, column: 29, scope: !1243)
!1263 = !DILocation(line: 0, scope: !1243)
!1264 = !DILocation(line: 193, column: 23, scope: !1243)
!1265 = !DILocation(line: 194, column: 11, scope: !1243)
!1266 = !DILocation(line: 195, column: 22, scope: !1243)
!1267 = !DILocation(line: 196, column: 17, scope: !1243)
!1268 = !DILocation(line: 197, column: 9, scope: !1243)
!1269 = !DILocation(line: 202, column: 11, scope: !1249)
!1270 = !DILocation(line: 202, column: 11, scope: !1245)
!1271 = !DILocation(line: 204, column: 11, scope: !1248)
!1272 = !DILocation(line: 204, column: 16, scope: !1248)
!1273 = !DILocation(line: 205, column: 15, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 205, column: 15)
!1275 = !DILocation(line: 205, column: 38, scope: !1274)
!1276 = !DILocation(line: 205, column: 15, scope: !1248)
!1277 = !DILocation(line: 206, column: 13, scope: !1274)
!1278 = !DILocation(line: 207, column: 24, scope: !1248)
!1279 = !DILocation(line: 208, column: 34, scope: !1248)
!1280 = !DILocation(line: 208, column: 27, scope: !1248)
!1281 = !DILocation(line: 207, column: 11, scope: !1248)
!1282 = !DILocation(line: 209, column: 9, scope: !1249)
!1283 = !DILocation(line: 209, column: 9, scope: !1248)
!1284 = !DILocation(line: 210, column: 17, scope: !1245)
!1285 = !DILocalVariable(name: "where", arg: 1, scope: !1286, file: !3, line: 157, type: !29)
!1286 = distinct !DISubprogram(name: "send_sig", scope: !3, file: !3, line: 157, type: !1287, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1289)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!22, !29, !22}
!1289 = !{!1285, !1290}
!1290 = !DILocalVariable(name: "sig", arg: 2, scope: !1286, file: !3, line: 157, type: !22)
!1291 = !DILocation(line: 0, scope: !1286, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 210, column: 7, scope: !1245)
!1293 = !DILocation(line: 166, column: 13, scope: !1294, inlinedAt: !1292)
!1294 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 166, column: 7)
!1295 = !DILocation(line: 166, column: 7, scope: !1286, inlinedAt: !1292)
!1296 = !DILocation(line: 167, column: 5, scope: !1294, inlinedAt: !1292)
!1297 = !DILocation(line: 168, column: 10, scope: !1286, inlinedAt: !1292)
!1298 = !DILocation(line: 214, column: 12, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 214, column: 11)
!1300 = !DILocation(line: 214, column: 11, scope: !1245)
!1301 = !DILocation(line: 0, scope: !1286, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 216, column: 11, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 215, column: 9)
!1304 = !DILocation(line: 167, column: 5, scope: !1294, inlinedAt: !1302)
!1305 = !DILocation(line: 168, column: 10, scope: !1286, inlinedAt: !1302)
!1306 = !DILocation(line: 217, column: 30, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 217, column: 15)
!1308 = !DILocation(line: 219, column: 25, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 218, column: 13)
!1310 = !DILocation(line: 0, scope: !1286, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 219, column: 15, scope: !1309)
!1312 = !DILocation(line: 166, column: 13, scope: !1294, inlinedAt: !1311)
!1313 = !DILocation(line: 166, column: 7, scope: !1286, inlinedAt: !1311)
!1314 = !DILocation(line: 167, column: 5, scope: !1294, inlinedAt: !1311)
!1315 = !DILocation(line: 168, column: 10, scope: !1286, inlinedAt: !1311)
!1316 = !DILocation(line: 0, scope: !1286, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 220, column: 15, scope: !1309)
!1318 = !DILocation(line: 167, column: 5, scope: !1294, inlinedAt: !1317)
!1319 = !DILocation(line: 168, column: 10, scope: !1286, inlinedAt: !1317)
!1320 = !DILocation(line: 221, column: 13, scope: !1309)
!1321 = !DILocation(line: 225, column: 16, scope: !1246)
!1322 = !DILocation(line: 225, column: 5, scope: !1246)
!1323 = !DILocation(line: 226, column: 1, scope: !1239)
!1324 = !DISubprogram(name: "sigaction", scope: !18, file: !18, line: 243, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!22, !22, !1327, !1329}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!1330 = !DISubprogram(name: "signal", scope: !18, file: !18, line: 88, type: !1331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!19, !22, !19}
!1333 = distinct !DISubprogram(name: "chld", scope: !3, file: !3, line: 174, type: !20, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1334)
!1334 = !{!1335}
!1335 = !DILocalVariable(name: "sig", arg: 1, scope: !1333, file: !3, line: 174, type: !22)
!1336 = !DILocation(line: 0, scope: !1333)
!1337 = !DILocation(line: 176, column: 1, scope: !1333)
!1338 = distinct !DISubprogram(name: "unblock_signal", scope: !3, file: !3, line: 340, type: !20, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1339)
!1339 = !{!1340, !1341}
!1340 = !DILocalVariable(name: "sig", arg: 1, scope: !1338, file: !3, line: 340, type: !22)
!1341 = !DILocalVariable(name: "unblock_set", scope: !1338, file: !3, line: 342, type: !841)
!1342 = !DILocation(line: 0, scope: !1338)
!1343 = !DILocation(line: 342, column: 3, scope: !1338)
!1344 = !DILocation(line: 342, column: 12, scope: !1338)
!1345 = !DILocation(line: 343, column: 3, scope: !1338)
!1346 = !DILocation(line: 344, column: 3, scope: !1338)
!1347 = !DILocation(line: 345, column: 7, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 345, column: 7)
!1349 = !DILocation(line: 345, column: 53, scope: !1348)
!1350 = !DILocation(line: 345, column: 7, scope: !1338)
!1351 = !DILocation(line: 346, column: 15, scope: !1348)
!1352 = !DILocation(line: 346, column: 22, scope: !1348)
!1353 = !DILocation(line: 346, column: 5, scope: !1348)
!1354 = !DILocation(line: 347, column: 1, scope: !1338)
!1355 = !DISubprogram(name: "fork", scope: !1232, file: !1232, line: 768, type: !1356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!22}
!1358 = !DISubprogram(name: "error", scope: !1359, file: !1359, line: 52, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1359 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !22, !22, !45, null}
!1362 = !DISubprogram(name: "execvp", scope: !1232, file: !1232, line: 589, type: !1363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!22, !45, !1179}
!1365 = distinct !DISubprogram(name: "settimeout", scope: !3, file: !3, line: 114, type: !1366, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !35, !38}
!1368 = !{!1369, !1370, !1371, !1378, !1384, !1388, !1389}
!1369 = !DILocalVariable(name: "duration", arg: 1, scope: !1365, file: !3, line: 114, type: !35)
!1370 = !DILocalVariable(name: "warn", arg: 2, scope: !1365, file: !3, line: 114, type: !38)
!1371 = !DILocalVariable(name: "ts", scope: !1365, file: !3, line: 125, type: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1373, line: 10, size: 128, elements: !1374)
!1373 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1372, file: !1373, line: 12, baseType: !238, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1372, file: !1373, line: 16, baseType: !1377, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !32, line: 197, baseType: !239)
!1378 = !DILocalVariable(name: "its", scope: !1365, file: !3, line: 126, type: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerspec", file: !1380, line: 8, size: 256, elements: !1381)
!1380 = !DIFile(filename: "/usr/include/bits/types/struct_itimerspec.h", directory: "")
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !1379, file: !1380, line: 10, baseType: !1372, size: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !1379, file: !1380, line: 11, baseType: !1372, size: 128, offset: 128)
!1384 = !DILocalVariable(name: "timerid", scope: !1365, file: !3, line: 127, type: !1385)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "timer_t", file: !1386, line: 7, baseType: !1387)
!1386 = !DIFile(filename: "/usr/include/bits/types/timer_t.h", directory: "")
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__timer_t", file: !32, line: 172, baseType: !16)
!1388 = !DILocalVariable(name: "timeint", scope: !1365, file: !3, line: 143, type: !7)
!1389 = !DILocalVariable(name: "duration_floor", scope: !1390, file: !3, line: 148, type: !7)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 147, column: 5)
!1391 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 144, column: 7)
!1392 = !DILocation(line: 0, scope: !1365)
!1393 = !DILocation(line: 125, column: 24, scope: !1365)
!1394 = !DILocation(line: 126, column: 3, scope: !1365)
!1395 = !DILocation(line: 126, column: 21, scope: !1365)
!1396 = !DILocation(line: 126, column: 37, scope: !1365)
!1397 = !DILocation(line: 126, column: 29, scope: !1365)
!1398 = !{i64 0, i64 8, !1399, i64 8, i64 8, !1399}
!1399 = !{!1400, !1400, i64 0}
!1400 = !{!"long", !691, i64 0}
!1401 = !{i64 0, i64 8, !1399}
!1402 = !DILocation(line: 127, column: 3, scope: !1365)
!1403 = !DILocation(line: 128, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 128, column: 7)
!1405 = !DILocation(line: 128, column: 53, scope: !1404)
!1406 = !DILocation(line: 128, column: 7, scope: !1365)
!1407 = !DILocation(line: 130, column: 26, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 130, column: 11)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 129, column: 5)
!1410 = !DILocation(line: 130, column: 11, scope: !1408)
!1411 = !DILocation(line: 130, column: 50, scope: !1408)
!1412 = !DILocation(line: 130, column: 11, scope: !1409)
!1413 = !DILocation(line: 134, column: 15, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 133, column: 9)
!1415 = !DILocation(line: 135, column: 23, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 134, column: 15)
!1417 = !DILocation(line: 135, column: 30, scope: !1416)
!1418 = !DILocation(line: 135, column: 13, scope: !1416)
!1419 = !DILocation(line: 136, column: 25, scope: !1414)
!1420 = !DILocation(line: 136, column: 11, scope: !1414)
!1421 = !DILocation(line: 138, column: 5, scope: !1409)
!1422 = !DILocation(line: 139, column: 17, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 139, column: 12)
!1424 = !DILocation(line: 139, column: 20, scope: !1423)
!1425 = !DILocation(line: 139, column: 26, scope: !1423)
!1426 = !DILocation(line: 139, column: 12, scope: !1404)
!1427 = !DILocation(line: 140, column: 22, scope: !1423)
!1428 = !DILocation(line: 140, column: 5, scope: !1423)
!1429 = !DILocation(line: 144, column: 16, scope: !1391)
!1430 = !DILocation(line: 144, column: 7, scope: !1365)
!1431 = !DILocation(line: 148, column: 37, scope: !1390)
!1432 = !DILocation(line: 0, scope: !1390)
!1433 = !DILocation(line: 149, column: 35, scope: !1390)
!1434 = !DILocation(line: 149, column: 50, scope: !1390)
!1435 = !DILocation(line: 149, column: 32, scope: !1390)
!1436 = !DILocation(line: 0, scope: !1391)
!1437 = !DILocation(line: 151, column: 3, scope: !1365)
!1438 = !DILocation(line: 152, column: 1, scope: !1365)
!1439 = !DISubprogram(name: "sigaddset", scope: !18, file: !18, line: 205, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!22, !1238, !22}
!1442 = !DISubprogram(name: "sigprocmask", scope: !18, file: !18, line: 232, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!22, !22, !1445, !1238}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!1447 = !DISubprogram(name: "waitpid", scope: !1448, file: !1448, line: 111, type: !1449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1448 = !DIFile(filename: "/usr/include/sys/wait.h", directory: "")
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!22, !22, !57, !22}
!1451 = !DISubprogram(name: "sigsuspend", scope: !18, file: !18, line: 240, type: !1452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!22, !1445}
!1454 = !DISubprogram(name: "prctl", scope: !1455, file: !1455, line: 45, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1455 = !DIFile(filename: "/usr/include/sys/prctl.h", directory: "")
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!22, !22, null}
!1458 = !DISubprogram(name: "raise", scope: !18, file: !18, line: 123, type: !1459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!22, !22}
!1461 = !DISubprogram(name: "timer_create", scope: !1462, file: !1462, line: 234, type: !1463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1462 = !DIFile(filename: "/usr/include/time.h", directory: "")
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!22, !22, !1465, !1498}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigevent", file: !1467, line: 22, size: 512, elements: !1468)
!1467 = !DIFile(filename: "/usr/include/bits/types/sigevent_t.h", directory: "")
!1468 = !{!1469, !1470, !1471, !1472}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_value", scope: !1466, file: !1467, line: 24, baseType: !964, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_signo", scope: !1466, file: !1467, line: 25, baseType: !22, size: 32, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_notify", scope: !1466, file: !1467, line: 26, baseType: !22, size: 32, offset: 96)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_un", scope: !1466, file: !1467, line: 41, baseType: !1473, size: 384, offset: 128)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1466, file: !1467, line: 28, size: 384, elements: !1474)
!1474 = !{!1475, !1479, !1480}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1473, file: !1467, line: 30, baseType: !1476, size: 384)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 384, elements: !1477)
!1477 = !{!1478}
!1478 = !DISubrange(count: 12)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1473, file: !1467, line: 34, baseType: !31, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_thread", scope: !1473, file: !1467, line: 40, baseType: !1481, size: 128)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1473, file: !1467, line: 36, size: 128, elements: !1482)
!1482 = !{!1483, !1487}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_function", scope: !1481, file: !1467, line: 38, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !964}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_attribute", scope: !1481, file: !1467, line: 39, baseType: !1488, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !1490, line: 62, baseType: !1491)
!1490 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !1490, line: 56, size: 448, elements: !1492)
!1492 = !{!1493, !1497}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1491, file: !1490, line: 58, baseType: !1494, size: 448)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 448, elements: !1495)
!1495 = !{!1496}
!1496 = !DISubrange(count: 56)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1491, file: !1490, line: 59, baseType: !239, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!1499 = !DISubprogram(name: "timer_settime", scope: !1462, file: !1462, line: 242, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!22, !16, !22, !1502, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1505 = !DISubprogram(name: "timer_delete", scope: !1462, file: !1462, line: 239, type: !1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!22, !16}
!1508 = !DISubprogram(name: "alarm", scope: !1232, file: !1232, line: 441, type: !1509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!7, !7}
!1511 = !DISubprogram(name: "kill", scope: !18, file: !18, line: 112, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!1512 = distinct !DISubprogram(name: "operand2sig", scope: !225, file: !225, line: 36, type: !1513, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!22, !45, !14}
!1515 = !{!1516, !1517, !1518, !1519, !1522, !1523, !1524, !1526}
!1516 = !DILocalVariable(name: "operand", arg: 1, scope: !1512, file: !225, line: 36, type: !45)
!1517 = !DILocalVariable(name: "signame", arg: 2, scope: !1512, file: !225, line: 36, type: !14)
!1518 = !DILocalVariable(name: "signum", scope: !1512, file: !225, line: 38, type: !22)
!1519 = !DILocalVariable(name: "endp", scope: !1520, file: !225, line: 53, type: !14)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !225, line: 41, column: 5)
!1521 = distinct !DILexicalBlock(scope: !1512, file: !225, line: 40, column: 7)
!1522 = !DILocalVariable(name: "l", scope: !1520, file: !225, line: 54, type: !239)
!1523 = !DILocalVariable(name: "i", scope: !1520, file: !225, line: 55, type: !22)
!1524 = !DILocalVariable(name: "upcased", scope: !1525, file: !225, line: 70, type: !14)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !225, line: 67, column: 5)
!1526 = !DILocalVariable(name: "p", scope: !1525, file: !225, line: 71, type: !14)
!1527 = !DILocation(line: 0, scope: !1512)
!1528 = !DILocation(line: 38, column: 3, scope: !1512)
!1529 = !DILocation(line: 40, column: 7, scope: !1521)
!1530 = !DILocation(line: 40, column: 7, scope: !1512)
!1531 = !DILocation(line: 53, column: 7, scope: !1520)
!1532 = !DILocation(line: 54, column: 21, scope: !1520)
!1533 = !DILocation(line: 54, column: 27, scope: !1520)
!1534 = !DILocation(line: 0, scope: !1520)
!1535 = !DILocation(line: 54, column: 32, scope: !1520)
!1536 = !DILocation(line: 55, column: 15, scope: !1520)
!1537 = !DILocation(line: 56, column: 28, scope: !1520)
!1538 = !DILocation(line: 56, column: 25, scope: !1520)
!1539 = !DILocation(line: 56, column: 33, scope: !1520)
!1540 = !DILocation(line: 56, column: 36, scope: !1520)
!1541 = !DILocation(line: 56, column: 42, scope: !1520)
!1542 = !DILocation(line: 56, column: 45, scope: !1520)
!1543 = !DILocation(line: 56, column: 51, scope: !1520)
!1544 = !DILocation(line: 58, column: 18, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1520, file: !225, line: 58, column: 11)
!1546 = !DILocation(line: 58, column: 11, scope: !1520)
!1547 = !DILocation(line: 65, column: 5, scope: !1521)
!1548 = !DILocation(line: 65, column: 5, scope: !1520)
!1549 = !DILocation(line: 70, column: 23, scope: !1525)
!1550 = !DILocation(line: 0, scope: !1525)
!1551 = !DILocation(line: 72, column: 25, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !225, line: 72, column: 7)
!1553 = distinct !DILexicalBlock(scope: !1525, file: !225, line: 72, column: 7)
!1554 = !DILocation(line: 72, column: 7, scope: !1553)
!1555 = !DILocation(line: 73, column: 51, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !225, line: 73, column: 13)
!1557 = !DILocation(line: 73, column: 13, scope: !1556)
!1558 = !DILocation(line: 73, column: 13, scope: !1552)
!1559 = !DILocation(line: 74, column: 14, scope: !1556)
!1560 = !DILocation(line: 74, column: 11, scope: !1556)
!1561 = !DILocation(line: 72, column: 30, scope: !1552)
!1562 = distinct !{!1562, !1554, !1563, !739}
!1563 = !DILocation(line: 74, column: 23, scope: !1553)
!1564 = !DILocation(line: 78, column: 13, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1525, file: !225, line: 78, column: 11)
!1566 = !DILocation(line: 78, column: 40, scope: !1565)
!1567 = !DILocation(line: 79, column: 13, scope: !1565)
!1568 = !DILocation(line: 79, column: 17, scope: !1565)
!1569 = !DILocation(line: 79, column: 28, scope: !1565)
!1570 = !DILocation(line: 79, column: 35, scope: !1565)
!1571 = !DILocation(line: 79, column: 38, scope: !1565)
!1572 = !DILocation(line: 79, column: 49, scope: !1565)
!1573 = !DILocation(line: 79, column: 56, scope: !1565)
!1574 = !DILocation(line: 79, column: 59, scope: !1565)
!1575 = !DILocation(line: 79, column: 70, scope: !1565)
!1576 = !DILocation(line: 80, column: 17, scope: !1565)
!1577 = !DILocation(line: 80, column: 37, scope: !1565)
!1578 = !DILocation(line: 80, column: 20, scope: !1565)
!1579 = !DILocation(line: 80, column: 51, scope: !1565)
!1580 = !DILocation(line: 78, column: 11, scope: !1525)
!1581 = !DILocation(line: 81, column: 16, scope: !1565)
!1582 = !DILocation(line: 81, column: 9, scope: !1565)
!1583 = !DILocation(line: 83, column: 7, scope: !1525)
!1584 = !DILocation(line: 86, column: 7, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1512, file: !225, line: 86, column: 7)
!1586 = !DILocation(line: 86, column: 14, scope: !1585)
!1587 = !DILocation(line: 86, column: 18, scope: !1585)
!1588 = !DILocation(line: 86, column: 21, scope: !1585)
!1589 = !DILocation(line: 86, column: 47, scope: !1585)
!1590 = !DILocation(line: 86, column: 7, scope: !1512)
!1591 = !DILocation(line: 88, column: 20, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1585, file: !225, line: 87, column: 5)
!1593 = !DILocation(line: 88, column: 45, scope: !1592)
!1594 = !DILocation(line: 88, column: 7, scope: !1592)
!1595 = !DILocation(line: 89, column: 7, scope: !1592)
!1596 = !DILocation(line: 92, column: 10, scope: !1512)
!1597 = !DILocation(line: 92, column: 3, scope: !1512)
!1598 = !DILocation(line: 93, column: 1, scope: !1512)
!1599 = distinct !DISubprogram(name: "cl_strtod", scope: !227, file: !227, line: 59, type: !1600, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1603)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!35, !45, !1602}
!1602 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !823)
!1603 = !{!1604, !1605, !1606, !1607, !1608, !1611, !1612}
!1604 = !DILocalVariable(name: "nptr", arg: 1, scope: !1599, file: !227, line: 59, type: !45)
!1605 = !DILocalVariable(name: "endptr", arg: 2, scope: !1599, file: !227, line: 59, type: !1602)
!1606 = !DILocalVariable(name: "end", scope: !1599, file: !227, line: 61, type: !14)
!1607 = !DILocalVariable(name: "d", scope: !1599, file: !227, line: 62, type: !35)
!1608 = !DILocalVariable(name: "strtod_errno", scope: !1609, file: !227, line: 65, type: !22)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !227, line: 64, column: 5)
!1610 = distinct !DILexicalBlock(scope: !1599, file: !227, line: 63, column: 7)
!1611 = !DILocalVariable(name: "c_end", scope: !1609, file: !227, line: 66, type: !14)
!1612 = !DILocalVariable(name: "c", scope: !1609, file: !227, line: 67, type: !35)
!1613 = !DILocation(line: 0, scope: !1599)
!1614 = !DILocation(line: 61, column: 3, scope: !1599)
!1615 = !DILocation(line: 62, column: 14, scope: !1599)
!1616 = !DILocation(line: 63, column: 8, scope: !1610)
!1617 = !DILocation(line: 63, column: 7, scope: !1610)
!1618 = !DILocation(line: 63, column: 7, scope: !1599)
!1619 = !DILocation(line: 65, column: 26, scope: !1609)
!1620 = !DILocation(line: 0, scope: !1609)
!1621 = !DILocation(line: 66, column: 7, scope: !1609)
!1622 = !DILocation(line: 67, column: 18, scope: !1609)
!1623 = !DILocation(line: 68, column: 17, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1609, file: !227, line: 68, column: 11)
!1625 = !DILocation(line: 68, column: 15, scope: !1624)
!1626 = !DILocation(line: 68, column: 11, scope: !1609)
!1627 = !DILocation(line: 71, column: 15, scope: !1624)
!1628 = !DILocation(line: 72, column: 5, scope: !1610)
!1629 = !DILocation(line: 72, column: 5, scope: !1609)
!1630 = !DILocation(line: 73, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1599, file: !227, line: 73, column: 7)
!1632 = !DILocation(line: 73, column: 7, scope: !1599)
!1633 = !DILocation(line: 74, column: 13, scope: !1631)
!1634 = !DILocation(line: 74, column: 5, scope: !1631)
!1635 = !DILocation(line: 76, column: 1, scope: !1599)
!1636 = !DILocation(line: 75, column: 3, scope: !1599)
!1637 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !74, file: !74, line: 51, type: !709, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1638)
!1638 = !{!1639}
!1639 = !DILocalVariable(name: "file", arg: 1, scope: !1637, file: !74, line: 51, type: !45)
!1640 = !DILocation(line: 0, scope: !1637)
!1641 = !DILocation(line: 53, column: 13, scope: !1637)
!1642 = !DILocation(line: 54, column: 1, scope: !1637)
!1643 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !74, file: !74, line: 88, type: !1644, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1646)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !38}
!1646 = !{!1647}
!1647 = !DILocalVariable(name: "ignore", arg: 1, scope: !1643, file: !74, line: 88, type: !38)
!1648 = !DILocation(line: 0, scope: !1643)
!1649 = !DILocation(line: 90, column: 16, scope: !1643)
!1650 = !{!1651, !1651, i64 0}
!1651 = !{!"_Bool", !691, i64 0}
!1652 = !DILocation(line: 91, column: 1, scope: !1643)
!1653 = distinct !DISubprogram(name: "close_stdout", scope: !74, file: !74, line: 117, type: !698, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1654)
!1654 = !{!1655}
!1655 = !DILocalVariable(name: "write_error", scope: !1656, file: !74, line: 122, type: !45)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !74, line: 121, column: 5)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !74, line: 119, column: 7)
!1658 = !DILocation(line: 119, column: 21, scope: !1657)
!1659 = !DILocation(line: 119, column: 7, scope: !1657)
!1660 = !DILocation(line: 119, column: 29, scope: !1657)
!1661 = !DILocation(line: 120, column: 7, scope: !1657)
!1662 = !DILocation(line: 120, column: 12, scope: !1657)
!1663 = !{i8 0, i8 2}
!1664 = !DILocation(line: 120, column: 25, scope: !1657)
!1665 = !DILocation(line: 120, column: 28, scope: !1657)
!1666 = !DILocation(line: 120, column: 34, scope: !1657)
!1667 = !DILocation(line: 119, column: 7, scope: !1653)
!1668 = !DILocation(line: 122, column: 33, scope: !1656)
!1669 = !DILocation(line: 0, scope: !1656)
!1670 = !DILocation(line: 123, column: 11, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1656, file: !74, line: 123, column: 11)
!1672 = !DILocation(line: 0, scope: !1671)
!1673 = !DILocation(line: 123, column: 11, scope: !1656)
!1674 = !DILocation(line: 124, column: 36, scope: !1671)
!1675 = !DILocation(line: 124, column: 9, scope: !1671)
!1676 = !DILocation(line: 127, column: 9, scope: !1671)
!1677 = !DILocation(line: 129, column: 14, scope: !1656)
!1678 = !DILocation(line: 129, column: 7, scope: !1656)
!1679 = !DILocation(line: 134, column: 42, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1653, file: !74, line: 134, column: 7)
!1681 = !DILocation(line: 134, column: 28, scope: !1680)
!1682 = !DILocation(line: 134, column: 50, scope: !1680)
!1683 = !DILocation(line: 134, column: 7, scope: !1653)
!1684 = !DILocation(line: 135, column: 12, scope: !1680)
!1685 = !DILocation(line: 135, column: 5, scope: !1680)
!1686 = !DILocation(line: 136, column: 1, scope: !1653)
!1687 = distinct !DISubprogram(name: "dtotimespec", scope: !229, file: !229, line: 30, type: !1688, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !228, retainedNodes: !1694)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!1690, !35}
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1373, line: 10, size: 128, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1690, file: !1373, line: 12, baseType: !238, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1690, file: !1373, line: 16, baseType: !1377, size: 64, offset: 64)
!1694 = !{!1695, !1696, !1700, !1701}
!1695 = !DILocalVariable(name: "sec", arg: 1, scope: !1687, file: !229, line: 30, type: !35)
!1696 = !DILocalVariable(name: "s", scope: !1697, file: !229, line: 38, type: !236)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !229, line: 37, column: 5)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !229, line: 34, column: 12)
!1699 = distinct !DILexicalBlock(scope: !1687, file: !229, line: 32, column: 7)
!1700 = !DILocalVariable(name: "frac", scope: !1697, file: !229, line: 39, type: !35)
!1701 = !DILocalVariable(name: "ns", scope: !1697, file: !229, line: 40, type: !239)
!1702 = !DILocation(line: 0, scope: !1687)
!1703 = !DILocation(line: 32, column: 32, scope: !1699)
!1704 = !DILocation(line: 32, column: 7, scope: !1687)
!1705 = !DILocation(line: 34, column: 19, scope: !1698)
!1706 = !DILocation(line: 34, column: 12, scope: !1699)
!1707 = !DILocation(line: 38, column: 18, scope: !1697)
!1708 = !DILocation(line: 0, scope: !1697)
!1709 = !DILocation(line: 39, column: 42, scope: !1697)
!1710 = !DILocation(line: 39, column: 40, scope: !1697)
!1711 = !DILocation(line: 39, column: 33, scope: !1697)
!1712 = !DILocation(line: 40, column: 17, scope: !1697)
!1713 = !DILocation(line: 41, column: 13, scope: !1697)
!1714 = !DILocation(line: 41, column: 16, scope: !1697)
!1715 = !DILocation(line: 41, column: 10, scope: !1697)
!1716 = !DILocation(line: 42, column: 15, scope: !1697)
!1717 = !DILocation(line: 42, column: 9, scope: !1697)
!1718 = !DILocation(line: 43, column: 10, scope: !1697)
!1719 = !DILocation(line: 45, column: 14, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1697, file: !229, line: 45, column: 11)
!1721 = !DILocation(line: 45, column: 11, scope: !1697)
!1722 = !DILocalVariable(name: "s", arg: 1, scope: !1723, file: !232, line: 54, type: !236)
!1723 = distinct !DISubprogram(name: "make_timespec", scope: !232, file: !232, line: 54, type: !1724, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !228, retainedNodes: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!1690, !236, !239}
!1726 = !{!1722, !1727, !1728}
!1727 = !DILocalVariable(name: "ns", arg: 2, scope: !1723, file: !232, line: 54, type: !239)
!1728 = !DILocalVariable(name: "r", scope: !1723, file: !232, line: 56, type: !1690)
!1729 = !DILocation(line: 0, scope: !1723, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 51, column: 14, scope: !1697)
!1731 = !DILocation(line: 59, column: 3, scope: !1723, inlinedAt: !1730)
!1732 = !DILocation(line: 53, column: 1, scope: !1687)
!1733 = distinct !DISubprogram(name: "set_program_name", scope: !87, file: !87, line: 39, type: !709, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !1734)
!1734 = !{!1735, !1736, !1737}
!1735 = !DILocalVariable(name: "argv0", arg: 1, scope: !1733, file: !87, line: 39, type: !45)
!1736 = !DILocalVariable(name: "slash", scope: !1733, file: !87, line: 46, type: !45)
!1737 = !DILocalVariable(name: "base", scope: !1733, file: !87, line: 47, type: !45)
!1738 = !DILocation(line: 0, scope: !1733)
!1739 = !DILocation(line: 51, column: 13, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1733, file: !87, line: 51, column: 7)
!1741 = !DILocation(line: 51, column: 7, scope: !1733)
!1742 = !DILocation(line: 55, column: 14, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1740, file: !87, line: 52, column: 5)
!1744 = !DILocation(line: 54, column: 7, scope: !1743)
!1745 = !DILocation(line: 56, column: 7, scope: !1743)
!1746 = !DILocation(line: 59, column: 11, scope: !1733)
!1747 = !DILocation(line: 60, column: 17, scope: !1733)
!1748 = !DILocation(line: 60, column: 11, scope: !1733)
!1749 = !DILocation(line: 61, column: 12, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1733, file: !87, line: 61, column: 7)
!1751 = !DILocation(line: 61, column: 20, scope: !1750)
!1752 = !DILocation(line: 61, column: 25, scope: !1750)
!1753 = !DILocation(line: 61, column: 42, scope: !1750)
!1754 = !DILocation(line: 61, column: 28, scope: !1750)
!1755 = !DILocation(line: 61, column: 61, scope: !1750)
!1756 = !DILocation(line: 61, column: 7, scope: !1733)
!1757 = !DILocation(line: 64, column: 11, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !87, line: 64, column: 11)
!1759 = distinct !DILexicalBlock(scope: !1750, file: !87, line: 62, column: 5)
!1760 = !DILocation(line: 64, column: 36, scope: !1758)
!1761 = !DILocation(line: 64, column: 11, scope: !1759)
!1762 = !DILocation(line: 66, column: 24, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1758, file: !87, line: 65, column: 9)
!1764 = !DILocation(line: 70, column: 41, scope: !1763)
!1765 = !DILocation(line: 72, column: 9, scope: !1763)
!1766 = !DILocation(line: 84, column: 16, scope: !1733)
!1767 = !DILocation(line: 90, column: 27, scope: !1733)
!1768 = !DILocation(line: 92, column: 1, scope: !1733)
!1769 = distinct !DISubprogram(name: "clone_quoting_options", scope: !93, file: !93, line: 122, type: !1770, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1773)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!1772, !1772}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!1773 = !{!1774, !1775, !1776}
!1774 = !DILocalVariable(name: "o", arg: 1, scope: !1769, file: !93, line: 122, type: !1772)
!1775 = !DILocalVariable(name: "e", scope: !1769, file: !93, line: 124, type: !22)
!1776 = !DILocalVariable(name: "p", scope: !1769, file: !93, line: 125, type: !1772)
!1777 = !DILocation(line: 0, scope: !1769)
!1778 = !DILocation(line: 124, column: 11, scope: !1769)
!1779 = !DILocation(line: 125, column: 40, scope: !1769)
!1780 = !DILocation(line: 125, column: 31, scope: !1769)
!1781 = !DILocation(line: 127, column: 9, scope: !1769)
!1782 = !DILocation(line: 128, column: 3, scope: !1769)
!1783 = distinct !DISubprogram(name: "get_quoting_style", scope: !93, file: !93, line: 133, type: !1784, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1788)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!95, !1786}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!1788 = !{!1789}
!1789 = !DILocalVariable(name: "o", arg: 1, scope: !1783, file: !93, line: 133, type: !1786)
!1790 = !DILocation(line: 0, scope: !1783)
!1791 = !DILocation(line: 135, column: 11, scope: !1783)
!1792 = !DILocation(line: 135, column: 46, scope: !1783)
!1793 = !{!1794, !691, i64 0}
!1794 = !{!"quoting_options", !691, i64 0, !873, i64 4, !691, i64 8, !690, i64 40, !690, i64 48}
!1795 = !DILocation(line: 135, column: 3, scope: !1783)
!1796 = distinct !DISubprogram(name: "set_quoting_style", scope: !93, file: !93, line: 141, type: !1797, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !1772, !95}
!1799 = !{!1800, !1801}
!1800 = !DILocalVariable(name: "o", arg: 1, scope: !1796, file: !93, line: 141, type: !1772)
!1801 = !DILocalVariable(name: "s", arg: 2, scope: !1796, file: !93, line: 141, type: !95)
!1802 = !DILocation(line: 0, scope: !1796)
!1803 = !DILocation(line: 143, column: 4, scope: !1796)
!1804 = !DILocation(line: 143, column: 39, scope: !1796)
!1805 = !DILocation(line: 143, column: 45, scope: !1796)
!1806 = !DILocation(line: 144, column: 1, scope: !1796)
!1807 = distinct !DISubprogram(name: "set_char_quoting", scope: !93, file: !93, line: 152, type: !1808, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1810)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!22, !1772, !15, !22}
!1810 = !{!1811, !1812, !1813, !1814, !1816, !1818, !1819}
!1811 = !DILocalVariable(name: "o", arg: 1, scope: !1807, file: !93, line: 152, type: !1772)
!1812 = !DILocalVariable(name: "c", arg: 2, scope: !1807, file: !93, line: 152, type: !15)
!1813 = !DILocalVariable(name: "i", arg: 3, scope: !1807, file: !93, line: 152, type: !22)
!1814 = !DILocalVariable(name: "uc", scope: !1807, file: !93, line: 154, type: !1815)
!1815 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1816 = !DILocalVariable(name: "p", scope: !1807, file: !93, line: 155, type: !1817)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1818 = !DILocalVariable(name: "shift", scope: !1807, file: !93, line: 157, type: !22)
!1819 = !DILocalVariable(name: "r", scope: !1807, file: !93, line: 158, type: !22)
!1820 = !DILocation(line: 0, scope: !1807)
!1821 = !DILocation(line: 156, column: 6, scope: !1807)
!1822 = !DILocation(line: 156, column: 62, scope: !1807)
!1823 = !DILocation(line: 156, column: 57, scope: !1807)
!1824 = !DILocation(line: 157, column: 15, scope: !1807)
!1825 = !DILocation(line: 158, column: 12, scope: !1807)
!1826 = !DILocation(line: 158, column: 15, scope: !1807)
!1827 = !DILocation(line: 158, column: 25, scope: !1807)
!1828 = !DILocation(line: 159, column: 13, scope: !1807)
!1829 = !DILocation(line: 159, column: 18, scope: !1807)
!1830 = !DILocation(line: 159, column: 23, scope: !1807)
!1831 = !DILocation(line: 159, column: 6, scope: !1807)
!1832 = !DILocation(line: 160, column: 3, scope: !1807)
!1833 = distinct !DISubprogram(name: "set_quoting_flags", scope: !93, file: !93, line: 168, type: !1834, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!22, !1772, !22}
!1836 = !{!1837, !1838, !1839}
!1837 = !DILocalVariable(name: "o", arg: 1, scope: !1833, file: !93, line: 168, type: !1772)
!1838 = !DILocalVariable(name: "i", arg: 2, scope: !1833, file: !93, line: 168, type: !22)
!1839 = !DILocalVariable(name: "r", scope: !1833, file: !93, line: 170, type: !22)
!1840 = !DILocation(line: 0, scope: !1833)
!1841 = !DILocation(line: 171, column: 8, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1833, file: !93, line: 171, column: 7)
!1843 = !DILocation(line: 171, column: 7, scope: !1833)
!1844 = !DILocation(line: 173, column: 10, scope: !1833)
!1845 = !{!1794, !873, i64 4}
!1846 = !DILocation(line: 174, column: 12, scope: !1833)
!1847 = !DILocation(line: 175, column: 3, scope: !1833)
!1848 = distinct !DISubprogram(name: "set_custom_quoting", scope: !93, file: !93, line: 179, type: !1849, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1851)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !1772, !45, !45}
!1851 = !{!1852, !1853, !1854}
!1852 = !DILocalVariable(name: "o", arg: 1, scope: !1848, file: !93, line: 179, type: !1772)
!1853 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1848, file: !93, line: 180, type: !45)
!1854 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1848, file: !93, line: 180, type: !45)
!1855 = !DILocation(line: 0, scope: !1848)
!1856 = !DILocation(line: 182, column: 8, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1848, file: !93, line: 182, column: 7)
!1858 = !DILocation(line: 182, column: 7, scope: !1848)
!1859 = !DILocation(line: 184, column: 6, scope: !1848)
!1860 = !DILocation(line: 184, column: 12, scope: !1848)
!1861 = !DILocation(line: 185, column: 8, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1848, file: !93, line: 185, column: 7)
!1863 = !DILocation(line: 185, column: 19, scope: !1862)
!1864 = !DILocation(line: 186, column: 5, scope: !1862)
!1865 = !DILocation(line: 187, column: 6, scope: !1848)
!1866 = !DILocation(line: 187, column: 17, scope: !1848)
!1867 = !{!1794, !690, i64 40}
!1868 = !DILocation(line: 188, column: 6, scope: !1848)
!1869 = !DILocation(line: 188, column: 18, scope: !1848)
!1870 = !{!1794, !690, i64 48}
!1871 = !DILocation(line: 189, column: 1, scope: !1848)
!1872 = distinct !DISubprogram(name: "quotearg_buffer", scope: !93, file: !93, line: 784, type: !1873, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!131, !14, !131, !45, !131, !1786}
!1875 = !{!1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883}
!1876 = !DILocalVariable(name: "buffer", arg: 1, scope: !1872, file: !93, line: 784, type: !14)
!1877 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1872, file: !93, line: 784, type: !131)
!1878 = !DILocalVariable(name: "arg", arg: 3, scope: !1872, file: !93, line: 785, type: !45)
!1879 = !DILocalVariable(name: "argsize", arg: 4, scope: !1872, file: !93, line: 785, type: !131)
!1880 = !DILocalVariable(name: "o", arg: 5, scope: !1872, file: !93, line: 786, type: !1786)
!1881 = !DILocalVariable(name: "p", scope: !1872, file: !93, line: 788, type: !1786)
!1882 = !DILocalVariable(name: "e", scope: !1872, file: !93, line: 789, type: !22)
!1883 = !DILocalVariable(name: "r", scope: !1872, file: !93, line: 790, type: !131)
!1884 = !DILocation(line: 0, scope: !1872)
!1885 = !DILocation(line: 788, column: 37, scope: !1872)
!1886 = !DILocation(line: 789, column: 11, scope: !1872)
!1887 = !DILocation(line: 791, column: 43, scope: !1872)
!1888 = !DILocation(line: 791, column: 53, scope: !1872)
!1889 = !DILocation(line: 791, column: 60, scope: !1872)
!1890 = !DILocation(line: 792, column: 43, scope: !1872)
!1891 = !DILocation(line: 792, column: 58, scope: !1872)
!1892 = !DILocation(line: 790, column: 14, scope: !1872)
!1893 = !DILocation(line: 793, column: 9, scope: !1872)
!1894 = !DILocation(line: 794, column: 3, scope: !1872)
!1895 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !93, file: !93, line: 256, type: !1896, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1900)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!131, !14, !131, !45, !131, !95, !22, !1898, !45, !45}
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1900 = !{!1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1925, !1926, !1927, !1928, !1929, !1932, !1933, !1951, !1954, !1955, !1962, !1965, !1966, !1967, !1968, !1969, !1970}
!1901 = !DILocalVariable(name: "buffer", arg: 1, scope: !1895, file: !93, line: 256, type: !14)
!1902 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1895, file: !93, line: 256, type: !131)
!1903 = !DILocalVariable(name: "arg", arg: 3, scope: !1895, file: !93, line: 257, type: !45)
!1904 = !DILocalVariable(name: "argsize", arg: 4, scope: !1895, file: !93, line: 257, type: !131)
!1905 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1895, file: !93, line: 258, type: !95)
!1906 = !DILocalVariable(name: "flags", arg: 6, scope: !1895, file: !93, line: 258, type: !22)
!1907 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1895, file: !93, line: 259, type: !1898)
!1908 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1895, file: !93, line: 260, type: !45)
!1909 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1895, file: !93, line: 261, type: !45)
!1910 = !DILocalVariable(name: "i", scope: !1895, file: !93, line: 263, type: !131)
!1911 = !DILocalVariable(name: "len", scope: !1895, file: !93, line: 264, type: !131)
!1912 = !DILocalVariable(name: "orig_buffersize", scope: !1895, file: !93, line: 265, type: !131)
!1913 = !DILocalVariable(name: "quote_string", scope: !1895, file: !93, line: 266, type: !45)
!1914 = !DILocalVariable(name: "quote_string_len", scope: !1895, file: !93, line: 267, type: !131)
!1915 = !DILocalVariable(name: "backslash_escapes", scope: !1895, file: !93, line: 268, type: !38)
!1916 = !DILocalVariable(name: "unibyte_locale", scope: !1895, file: !93, line: 269, type: !38)
!1917 = !DILocalVariable(name: "elide_outer_quotes", scope: !1895, file: !93, line: 270, type: !38)
!1918 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1895, file: !93, line: 271, type: !38)
!1919 = !DILocalVariable(name: "encountered_single_quote", scope: !1895, file: !93, line: 272, type: !38)
!1920 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1895, file: !93, line: 273, type: !38)
!1921 = !DILocalVariable(name: "c", scope: !1922, file: !93, line: 402, type: !1815)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !93, line: 401, column: 5)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !93, line: 400, column: 3)
!1924 = distinct !DILexicalBlock(scope: !1895, file: !93, line: 400, column: 3)
!1925 = !DILocalVariable(name: "esc", scope: !1922, file: !93, line: 403, type: !1815)
!1926 = !DILocalVariable(name: "is_right_quote", scope: !1922, file: !93, line: 404, type: !38)
!1927 = !DILocalVariable(name: "escaping", scope: !1922, file: !93, line: 405, type: !38)
!1928 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1922, file: !93, line: 406, type: !38)
!1929 = !DILocalVariable(name: "m", scope: !1930, file: !93, line: 610, type: !131)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !93, line: 608, column: 11)
!1931 = distinct !DILexicalBlock(scope: !1922, file: !93, line: 426, column: 9)
!1932 = !DILocalVariable(name: "printable", scope: !1930, file: !93, line: 612, type: !38)
!1933 = !DILocalVariable(name: "mbstate", scope: !1934, file: !93, line: 621, type: !1936)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !93, line: 620, column: 15)
!1935 = distinct !DILexicalBlock(scope: !1930, file: !93, line: 614, column: 17)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1937, line: 6, baseType: !1938)
!1937 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1939, line: 21, baseType: !1940)
!1939 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1939, line: 13, size: 64, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1940, file: !1939, line: 15, baseType: !22, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1940, file: !1939, line: 20, baseType: !1944, size: 32, offset: 32)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1940, file: !1939, line: 16, size: 32, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1944, file: !1939, line: 18, baseType: !7, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1944, file: !1939, line: 19, baseType: !1948, size: 32)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32, elements: !1949)
!1949 = !{!1950}
!1950 = !DISubrange(count: 4)
!1951 = !DILocalVariable(name: "w", scope: !1952, file: !93, line: 631, type: !1953)
!1952 = distinct !DILexicalBlock(scope: !1934, file: !93, line: 630, column: 19)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !132, line: 74, baseType: !22)
!1954 = !DILocalVariable(name: "bytes", scope: !1952, file: !93, line: 632, type: !131)
!1955 = !DILocalVariable(name: "j", scope: !1956, file: !93, line: 657, type: !131)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !93, line: 656, column: 27)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !93, line: 654, column: 29)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !93, line: 649, column: 23)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !93, line: 641, column: 30)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !93, line: 636, column: 30)
!1961 = distinct !DILexicalBlock(scope: !1952, file: !93, line: 634, column: 25)
!1962 = !DILocalVariable(name: "ilim", scope: !1963, file: !93, line: 684, type: !131)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !93, line: 681, column: 15)
!1964 = distinct !DILexicalBlock(scope: !1930, file: !93, line: 680, column: 17)
!1965 = !DILabel(scope: !1895, name: "process_input", file: !93, line: 314)
!1966 = !DILabel(scope: !1931, name: "c_and_shell_escape", file: !93, line: 512)
!1967 = !DILabel(scope: !1931, name: "c_escape", file: !93, line: 517)
!1968 = !DILabel(scope: !1922, name: "store_escape", file: !93, line: 719)
!1969 = !DILabel(scope: !1922, name: "store_c", file: !93, line: 722)
!1970 = !DILabel(scope: !1895, name: "force_outer_quoting_style", file: !93, line: 763)
!1971 = !DILocation(line: 0, scope: !1895)
!1972 = !DILocation(line: 269, column: 25, scope: !1895)
!1973 = !DILocation(line: 269, column: 36, scope: !1895)
!1974 = !DILocation(line: 270, column: 8, scope: !1895)
!1975 = !DILocation(line: 273, column: 3, scope: !1895)
!1976 = !DILocation(line: 265, column: 10, scope: !1895)
!1977 = !DILocation(line: 266, column: 15, scope: !1895)
!1978 = !DILocation(line: 267, column: 10, scope: !1895)
!1979 = !DILocation(line: 268, column: 8, scope: !1895)
!1980 = !DILocation(line: 271, column: 8, scope: !1895)
!1981 = !DILocation(line: 272, column: 8, scope: !1895)
!1982 = !DILocation(line: 273, column: 8, scope: !1895)
!1983 = !DILocation(line: 314, column: 2, scope: !1895)
!1984 = !DILocation(line: 316, column: 3, scope: !1895)
!1985 = !DILocation(line: 323, column: 11, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1895, file: !93, line: 317, column: 5)
!1987 = !DILocation(line: 323, column: 12, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1986, file: !93, line: 323, column: 11)
!1989 = !DILocation(line: 324, column: 9, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !93, line: 324, column: 9)
!1991 = distinct !DILexicalBlock(scope: !1988, file: !93, line: 324, column: 9)
!1992 = !DILocation(line: 324, column: 9, scope: !1991)
!1993 = !DILocation(line: 362, column: 26, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !93, line: 340, column: 11)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !93, line: 339, column: 13)
!1996 = distinct !DILexicalBlock(scope: !1986, file: !93, line: 338, column: 7)
!1997 = !DILocation(line: 363, column: 27, scope: !1994)
!1998 = !DILocation(line: 364, column: 11, scope: !1994)
!1999 = !DILocation(line: 365, column: 14, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1996, file: !93, line: 365, column: 13)
!2001 = !DILocation(line: 365, column: 13, scope: !1996)
!2002 = !DILocation(line: 366, column: 43, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !93, line: 366, column: 11)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !93, line: 366, column: 11)
!2005 = !DILocation(line: 366, column: 11, scope: !2004)
!2006 = !DILocation(line: 367, column: 13, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !93, line: 367, column: 13)
!2008 = distinct !DILexicalBlock(scope: !2003, file: !93, line: 367, column: 13)
!2009 = !DILocation(line: 367, column: 13, scope: !2008)
!2010 = !DILocation(line: 366, column: 70, scope: !2003)
!2011 = distinct !{!2011, !2005, !2012, !739}
!2012 = !DILocation(line: 367, column: 13, scope: !2004)
!2013 = !DILocation(line: 264, column: 10, scope: !1895)
!2014 = !DILocation(line: 370, column: 28, scope: !1996)
!2015 = !DILocation(line: 372, column: 7, scope: !1986)
!2016 = !DILocation(line: 376, column: 7, scope: !1986)
!2017 = !DILocation(line: 379, column: 7, scope: !1986)
!2018 = !DILocation(line: 381, column: 12, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1986, file: !93, line: 381, column: 11)
!2020 = !DILocation(line: 381, column: 11, scope: !1986)
!2021 = !DILocation(line: 386, column: 12, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1986, file: !93, line: 386, column: 11)
!2023 = !DILocation(line: 386, column: 11, scope: !1986)
!2024 = !DILocation(line: 387, column: 9, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !93, line: 387, column: 9)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !93, line: 387, column: 9)
!2027 = !DILocation(line: 387, column: 9, scope: !2026)
!2028 = !DILocation(line: 394, column: 7, scope: !1986)
!2029 = !DILocation(line: 397, column: 7, scope: !1986)
!2030 = !DILocation(line: 400, column: 8, scope: !1924)
!2031 = !DILocation(line: 0, scope: !1924)
!2032 = !DILocation(line: 400, column: 27, scope: !1923)
!2033 = !DILocation(line: 400, column: 19, scope: !1923)
!2034 = !DILocation(line: 400, column: 41, scope: !1923)
!2035 = !DILocation(line: 400, column: 48, scope: !1923)
!2036 = !DILocation(line: 400, column: 3, scope: !1924)
!2037 = !DILocation(line: 400, column: 60, scope: !1923)
!2038 = !DILocation(line: 0, scope: !1922)
!2039 = !DILocation(line: 409, column: 11, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1922, file: !93, line: 408, column: 11)
!2041 = !DILocation(line: 411, column: 17, scope: !2040)
!2042 = !DILocation(line: 412, column: 39, scope: !2040)
!2043 = !DILocation(line: 416, column: 32, scope: !2040)
!2044 = !DILocation(line: 412, column: 19, scope: !2040)
!2045 = !DILocation(line: 412, column: 15, scope: !2040)
!2046 = !DILocation(line: 417, column: 11, scope: !2040)
!2047 = !DILocation(line: 417, column: 26, scope: !2040)
!2048 = !DILocation(line: 417, column: 14, scope: !2040)
!2049 = !DILocation(line: 417, column: 63, scope: !2040)
!2050 = !DILocation(line: 408, column: 11, scope: !1922)
!2051 = !DILocation(line: 424, column: 11, scope: !1922)
!2052 = !DILocation(line: 425, column: 7, scope: !1922)
!2053 = !DILocation(line: 428, column: 15, scope: !1931)
!2054 = !DILocation(line: 430, column: 15, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !93, line: 430, column: 15)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !93, line: 429, column: 13)
!2057 = distinct !DILexicalBlock(scope: !1931, file: !93, line: 428, column: 15)
!2058 = !DILocation(line: 430, column: 15, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2055, file: !93, line: 430, column: 15)
!2060 = !DILocation(line: 430, column: 15, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !93, line: 430, column: 15)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !93, line: 430, column: 15)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !93, line: 430, column: 15)
!2064 = !DILocation(line: 430, column: 15, scope: !2062)
!2065 = !DILocation(line: 430, column: 15, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !93, line: 430, column: 15)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !93, line: 430, column: 15)
!2068 = !DILocation(line: 430, column: 15, scope: !2067)
!2069 = !DILocation(line: 430, column: 15, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !93, line: 430, column: 15)
!2071 = distinct !DILexicalBlock(scope: !2063, file: !93, line: 430, column: 15)
!2072 = !DILocation(line: 430, column: 15, scope: !2071)
!2073 = !DILocation(line: 430, column: 15, scope: !2063)
!2074 = !DILocation(line: 430, column: 15, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !93, line: 430, column: 15)
!2076 = distinct !DILexicalBlock(scope: !2055, file: !93, line: 430, column: 15)
!2077 = !DILocation(line: 430, column: 15, scope: !2076)
!2078 = !DILocation(line: 438, column: 19, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2056, file: !93, line: 437, column: 19)
!2080 = !DILocation(line: 438, column: 48, scope: !2079)
!2081 = !DILocation(line: 438, column: 59, scope: !2079)
!2082 = !DILocation(line: 440, column: 19, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !93, line: 440, column: 19)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !93, line: 440, column: 19)
!2085 = distinct !DILexicalBlock(scope: !2079, file: !93, line: 439, column: 17)
!2086 = !DILocation(line: 440, column: 19, scope: !2084)
!2087 = !DILocation(line: 441, column: 19, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !93, line: 441, column: 19)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !93, line: 441, column: 19)
!2090 = !DILocation(line: 441, column: 19, scope: !2089)
!2091 = !DILocation(line: 442, column: 17, scope: !2085)
!2092 = !DILocation(line: 449, column: 20, scope: !2057)
!2093 = !DILocation(line: 454, column: 11, scope: !1931)
!2094 = !DILocation(line: 457, column: 19, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1931, file: !93, line: 455, column: 13)
!2096 = !DILocation(line: 463, column: 19, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2095, file: !93, line: 462, column: 19)
!2098 = !DILocation(line: 463, column: 47, scope: !2097)
!2099 = !DILocation(line: 463, column: 41, scope: !2097)
!2100 = !DILocation(line: 463, column: 52, scope: !2097)
!2101 = !DILocation(line: 462, column: 19, scope: !2095)
!2102 = !DILocation(line: 464, column: 25, scope: !2097)
!2103 = !DILocation(line: 464, column: 17, scope: !2097)
!2104 = !DILocation(line: 471, column: 25, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2097, file: !93, line: 465, column: 19)
!2106 = !DILocation(line: 475, column: 21, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !93, line: 475, column: 21)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !93, line: 475, column: 21)
!2109 = !DILocation(line: 475, column: 21, scope: !2108)
!2110 = !DILocation(line: 476, column: 21, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !93, line: 476, column: 21)
!2112 = distinct !DILexicalBlock(scope: !2105, file: !93, line: 476, column: 21)
!2113 = !DILocation(line: 476, column: 21, scope: !2112)
!2114 = !DILocation(line: 477, column: 21, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !93, line: 477, column: 21)
!2116 = distinct !DILexicalBlock(scope: !2105, file: !93, line: 477, column: 21)
!2117 = !DILocation(line: 477, column: 21, scope: !2116)
!2118 = !DILocation(line: 478, column: 21, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !93, line: 478, column: 21)
!2120 = distinct !DILexicalBlock(scope: !2105, file: !93, line: 478, column: 21)
!2121 = !DILocation(line: 478, column: 21, scope: !2120)
!2122 = !DILocation(line: 479, column: 21, scope: !2105)
!2123 = !DILocation(line: 492, column: 31, scope: !1931)
!2124 = !DILocation(line: 493, column: 31, scope: !1931)
!2125 = !DILocation(line: 495, column: 31, scope: !1931)
!2126 = !DILocation(line: 496, column: 31, scope: !1931)
!2127 = !DILocation(line: 497, column: 31, scope: !1931)
!2128 = !DILocation(line: 500, column: 15, scope: !1931)
!2129 = !DILocation(line: 502, column: 19, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !93, line: 501, column: 13)
!2131 = distinct !DILexicalBlock(scope: !1931, file: !93, line: 500, column: 15)
!2132 = !DILocation(line: 509, column: 33, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1931, file: !93, line: 509, column: 15)
!2134 = !DILocation(line: 0, scope: !1931)
!2135 = !DILocation(line: 512, column: 9, scope: !1931)
!2136 = !DILocation(line: 514, column: 15, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !1931, file: !93, line: 513, column: 15)
!2138 = !DILocation(line: 517, column: 9, scope: !1931)
!2139 = !DILocation(line: 518, column: 15, scope: !1931)
!2140 = !DILocation(line: 526, column: 15, scope: !1931)
!2141 = !DILocation(line: 526, column: 40, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1931, file: !93, line: 526, column: 15)
!2143 = !DILocation(line: 526, column: 47, scope: !2142)
!2144 = !DILocation(line: 526, column: 18, scope: !2142)
!2145 = !DILocation(line: 530, column: 17, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !1931, file: !93, line: 530, column: 15)
!2147 = !DILocation(line: 530, column: 15, scope: !1931)
!2148 = !DILocation(line: 535, column: 11, scope: !1931)
!2149 = !DILocation(line: 549, column: 15, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1931, file: !93, line: 548, column: 15)
!2151 = !DILocation(line: 556, column: 15, scope: !1931)
!2152 = !DILocation(line: 558, column: 19, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !93, line: 557, column: 13)
!2154 = distinct !DILexicalBlock(scope: !1931, file: !93, line: 556, column: 15)
!2155 = !DILocation(line: 561, column: 19, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2153, file: !93, line: 561, column: 19)
!2157 = !DILocation(line: 561, column: 30, scope: !2156)
!2158 = !DILocation(line: 570, column: 15, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !93, line: 570, column: 15)
!2160 = distinct !DILexicalBlock(scope: !2153, file: !93, line: 570, column: 15)
!2161 = !DILocation(line: 570, column: 15, scope: !2160)
!2162 = !DILocation(line: 571, column: 15, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !93, line: 571, column: 15)
!2164 = distinct !DILexicalBlock(scope: !2153, file: !93, line: 571, column: 15)
!2165 = !DILocation(line: 571, column: 15, scope: !2164)
!2166 = !DILocation(line: 572, column: 15, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !93, line: 572, column: 15)
!2168 = distinct !DILexicalBlock(scope: !2153, file: !93, line: 572, column: 15)
!2169 = !DILocation(line: 572, column: 15, scope: !2168)
!2170 = !DILocation(line: 574, column: 13, scope: !2153)
!2171 = !DILocation(line: 614, column: 17, scope: !1930)
!2172 = !DILocation(line: 0, scope: !1930)
!2173 = !DILocation(line: 617, column: 29, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !1935, file: !93, line: 615, column: 15)
!2175 = !{!2176, !2176, i64 0}
!2176 = !{!"short", !691, i64 0}
!2177 = !DILocation(line: 617, column: 27, scope: !2174)
!2178 = !DILocation(line: 678, column: 40, scope: !1930)
!2179 = !DILocation(line: 680, column: 23, scope: !1964)
!2180 = !DILocation(line: 621, column: 17, scope: !1934)
!2181 = !DILocation(line: 621, column: 27, scope: !1934)
!2182 = !DILocalVariable(name: "__dest", arg: 1, scope: !2183, file: !2184, line: 57, type: !16)
!2183 = distinct !DISubprogram(name: "memset", scope: !2184, file: !2184, line: 57, type: !2185, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2187)
!2184 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!16, !16, !22, !131}
!2187 = !{!2182, !2188, !2189}
!2188 = !DILocalVariable(name: "__ch", arg: 2, scope: !2183, file: !2184, line: 57, type: !22)
!2189 = !DILocalVariable(name: "__len", arg: 3, scope: !2183, file: !2184, line: 57, type: !131)
!2190 = !DILocation(line: 0, scope: !2183, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 622, column: 17, scope: !1934)
!2192 = !DILocation(line: 59, column: 10, scope: !2183, inlinedAt: !2191)
!2193 = !DILocation(line: 626, column: 29, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !1934, file: !93, line: 626, column: 21)
!2195 = !DILocation(line: 626, column: 21, scope: !1934)
!2196 = !DILocation(line: 627, column: 29, scope: !2194)
!2197 = !DILocation(line: 627, column: 19, scope: !2194)
!2198 = !DILocation(line: 629, column: 17, scope: !1934)
!2199 = !DILocation(line: 624, column: 19, scope: !1934)
!2200 = !DILocation(line: 625, column: 27, scope: !1934)
!2201 = !DILocation(line: 631, column: 21, scope: !1952)
!2202 = !DILocation(line: 632, column: 56, scope: !1952)
!2203 = !DILocation(line: 632, column: 50, scope: !1952)
!2204 = !DILocation(line: 633, column: 53, scope: !1952)
!2205 = !DILocation(line: 0, scope: !1952)
!2206 = !DILocation(line: 632, column: 36, scope: !1952)
!2207 = !DILocation(line: 634, column: 25, scope: !1952)
!2208 = !DILocation(line: 644, column: 38, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !1959, file: !93, line: 642, column: 23)
!2210 = !DILocation(line: 644, column: 48, scope: !2209)
!2211 = !DILocation(line: 644, column: 25, scope: !2209)
!2212 = !DILocation(line: 644, column: 51, scope: !2209)
!2213 = !DILocation(line: 645, column: 28, scope: !2209)
!2214 = !DILocation(line: 644, column: 34, scope: !2209)
!2215 = distinct !{!2215, !2211, !2213, !739}
!2216 = !DILocation(line: 655, column: 29, scope: !1957)
!2217 = !DILocation(line: 0, scope: !1956)
!2218 = !DILocation(line: 659, column: 49, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !93, line: 658, column: 29)
!2220 = distinct !DILexicalBlock(scope: !1956, file: !93, line: 658, column: 29)
!2221 = !DILocation(line: 659, column: 39, scope: !2219)
!2222 = !DILocation(line: 659, column: 31, scope: !2219)
!2223 = !DILocation(line: 658, column: 53, scope: !2219)
!2224 = !DILocation(line: 658, column: 43, scope: !2219)
!2225 = !DILocation(line: 658, column: 29, scope: !2220)
!2226 = distinct !{!2226, !2225, !2227, !739}
!2227 = !DILocation(line: 667, column: 33, scope: !2220)
!2228 = !DILocation(line: 674, column: 19, scope: !1934)
!2229 = !DILocation(line: 670, column: 41, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !1958, file: !93, line: 670, column: 29)
!2231 = !DILocation(line: 670, column: 31, scope: !2230)
!2232 = !DILocation(line: 670, column: 29, scope: !1958)
!2233 = !DILocation(line: 672, column: 27, scope: !1958)
!2234 = !DILocation(line: 675, column: 26, scope: !1934)
!2235 = !DILocation(line: 675, column: 24, scope: !1934)
!2236 = !DILocation(line: 674, column: 19, scope: !1952)
!2237 = distinct !{!2237, !2198, !2238, !739}
!2238 = !DILocation(line: 675, column: 44, scope: !1934)
!2239 = !DILocation(line: 676, column: 15, scope: !1935)
!2240 = !DILocation(line: 680, column: 19, scope: !1964)
!2241 = !DILocation(line: 680, column: 45, scope: !1964)
!2242 = !DILocation(line: 684, column: 33, scope: !1963)
!2243 = !DILocation(line: 0, scope: !1963)
!2244 = !DILocation(line: 686, column: 17, scope: !1963)
!2245 = !DILocation(line: 405, column: 12, scope: !1922)
!2246 = !DILocation(line: 688, column: 43, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !93, line: 688, column: 25)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !93, line: 687, column: 19)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !93, line: 686, column: 17)
!2250 = distinct !DILexicalBlock(scope: !1963, file: !93, line: 686, column: 17)
!2251 = !DILocation(line: 690, column: 25, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !93, line: 690, column: 25)
!2253 = distinct !DILexicalBlock(scope: !2247, file: !93, line: 689, column: 23)
!2254 = !DILocation(line: 690, column: 25, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !93, line: 690, column: 25)
!2256 = !DILocation(line: 690, column: 25, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !93, line: 690, column: 25)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !93, line: 690, column: 25)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !93, line: 690, column: 25)
!2260 = !DILocation(line: 690, column: 25, scope: !2258)
!2261 = !DILocation(line: 690, column: 25, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !93, line: 690, column: 25)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !93, line: 690, column: 25)
!2264 = !DILocation(line: 690, column: 25, scope: !2263)
!2265 = !DILocation(line: 690, column: 25, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !93, line: 690, column: 25)
!2267 = distinct !DILexicalBlock(scope: !2259, file: !93, line: 690, column: 25)
!2268 = !DILocation(line: 690, column: 25, scope: !2267)
!2269 = !DILocation(line: 690, column: 25, scope: !2259)
!2270 = !DILocation(line: 690, column: 25, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !93, line: 690, column: 25)
!2272 = distinct !DILexicalBlock(scope: !2252, file: !93, line: 690, column: 25)
!2273 = !DILocation(line: 690, column: 25, scope: !2272)
!2274 = !DILocation(line: 691, column: 25, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !93, line: 691, column: 25)
!2276 = distinct !DILexicalBlock(scope: !2253, file: !93, line: 691, column: 25)
!2277 = !DILocation(line: 691, column: 25, scope: !2276)
!2278 = !DILocation(line: 692, column: 25, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !93, line: 692, column: 25)
!2280 = distinct !DILexicalBlock(scope: !2253, file: !93, line: 692, column: 25)
!2281 = !DILocation(line: 692, column: 25, scope: !2280)
!2282 = !DILocation(line: 693, column: 38, scope: !2253)
!2283 = !DILocation(line: 693, column: 33, scope: !2253)
!2284 = !DILocation(line: 694, column: 23, scope: !2253)
!2285 = !DILocation(line: 695, column: 30, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2247, file: !93, line: 695, column: 30)
!2287 = !DILocation(line: 695, column: 30, scope: !2247)
!2288 = !DILocation(line: 697, column: 25, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !93, line: 697, column: 25)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !93, line: 697, column: 25)
!2291 = distinct !DILexicalBlock(scope: !2286, file: !93, line: 696, column: 23)
!2292 = !DILocation(line: 697, column: 25, scope: !2290)
!2293 = !DILocation(line: 699, column: 23, scope: !2291)
!2294 = !DILocation(line: 700, column: 35, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2248, file: !93, line: 700, column: 25)
!2296 = !DILocation(line: 700, column: 30, scope: !2295)
!2297 = !DILocation(line: 700, column: 25, scope: !2248)
!2298 = !DILocation(line: 702, column: 21, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !93, line: 702, column: 21)
!2300 = distinct !DILexicalBlock(scope: !2248, file: !93, line: 702, column: 21)
!2301 = !DILocation(line: 702, column: 21, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !93, line: 702, column: 21)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !93, line: 702, column: 21)
!2304 = distinct !DILexicalBlock(scope: !2299, file: !93, line: 702, column: 21)
!2305 = !DILocation(line: 702, column: 21, scope: !2303)
!2306 = !DILocation(line: 702, column: 21, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !93, line: 702, column: 21)
!2308 = distinct !DILexicalBlock(scope: !2304, file: !93, line: 702, column: 21)
!2309 = !DILocation(line: 702, column: 21, scope: !2308)
!2310 = !DILocation(line: 702, column: 21, scope: !2304)
!2311 = !DILocation(line: 0, scope: !2248)
!2312 = !DILocation(line: 703, column: 21, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !93, line: 703, column: 21)
!2314 = distinct !DILexicalBlock(scope: !2248, file: !93, line: 703, column: 21)
!2315 = !DILocation(line: 703, column: 21, scope: !2314)
!2316 = !DILocation(line: 704, column: 25, scope: !2248)
!2317 = !DILocation(line: 686, column: 17, scope: !2249)
!2318 = distinct !{!2318, !2319, !2320}
!2319 = !DILocation(line: 686, column: 17, scope: !2250)
!2320 = !DILocation(line: 705, column: 19, scope: !2250)
!2321 = !DILocation(line: 416, column: 30, scope: !2040)
!2322 = !DILocation(line: 712, column: 34, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !1922, file: !93, line: 712, column: 11)
!2324 = !DILocation(line: 715, column: 35, scope: !2323)
!2325 = !DILocation(line: 715, column: 17, scope: !2323)
!2326 = !DILocation(line: 715, column: 47, scope: !2323)
!2327 = !DILocation(line: 715, column: 65, scope: !2323)
!2328 = !DILocation(line: 716, column: 11, scope: !2323)
!2329 = !DILocation(line: 712, column: 11, scope: !1922)
!2330 = !DILocation(line: 400, column: 10, scope: !1924)
!2331 = !DILocation(line: 719, column: 5, scope: !1922)
!2332 = !DILocation(line: 720, column: 7, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !1922, file: !93, line: 720, column: 7)
!2334 = !DILocation(line: 720, column: 7, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2333, file: !93, line: 720, column: 7)
!2336 = !DILocation(line: 720, column: 7, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !93, line: 720, column: 7)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !93, line: 720, column: 7)
!2339 = distinct !DILexicalBlock(scope: !2335, file: !93, line: 720, column: 7)
!2340 = !DILocation(line: 720, column: 7, scope: !2338)
!2341 = !DILocation(line: 720, column: 7, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !93, line: 720, column: 7)
!2343 = distinct !DILexicalBlock(scope: !2339, file: !93, line: 720, column: 7)
!2344 = !DILocation(line: 720, column: 7, scope: !2343)
!2345 = !DILocation(line: 720, column: 7, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !93, line: 720, column: 7)
!2347 = distinct !DILexicalBlock(scope: !2339, file: !93, line: 720, column: 7)
!2348 = !DILocation(line: 720, column: 7, scope: !2347)
!2349 = !DILocation(line: 720, column: 7, scope: !2339)
!2350 = !DILocation(line: 720, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !93, line: 720, column: 7)
!2352 = distinct !DILexicalBlock(scope: !2333, file: !93, line: 720, column: 7)
!2353 = !DILocation(line: 720, column: 7, scope: !2352)
!2354 = !DILocation(line: 722, column: 5, scope: !1922)
!2355 = !DILocation(line: 723, column: 7, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !93, line: 723, column: 7)
!2357 = distinct !DILexicalBlock(scope: !1922, file: !93, line: 723, column: 7)
!2358 = !DILocation(line: 424, column: 9, scope: !1922)
!2359 = !DILocation(line: 723, column: 7, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !93, line: 723, column: 7)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !93, line: 723, column: 7)
!2362 = distinct !DILexicalBlock(scope: !2356, file: !93, line: 723, column: 7)
!2363 = !DILocation(line: 723, column: 7, scope: !2361)
!2364 = !DILocation(line: 723, column: 7, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !93, line: 723, column: 7)
!2366 = distinct !DILexicalBlock(scope: !2362, file: !93, line: 723, column: 7)
!2367 = !DILocation(line: 723, column: 7, scope: !2366)
!2368 = !DILocation(line: 723, column: 7, scope: !2362)
!2369 = !DILocation(line: 724, column: 7, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !93, line: 724, column: 7)
!2371 = distinct !DILexicalBlock(scope: !1922, file: !93, line: 724, column: 7)
!2372 = !DILocation(line: 724, column: 7, scope: !2371)
!2373 = !DILocation(line: 726, column: 13, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !1922, file: !93, line: 726, column: 11)
!2375 = !DILocation(line: 726, column: 11, scope: !1922)
!2376 = !DILocation(line: 728, column: 5, scope: !1923)
!2377 = !DILocation(line: 400, column: 75, scope: !1923)
!2378 = !DILocation(line: 400, column: 3, scope: !1923)
!2379 = distinct !{!2379, !2036, !2380, !739}
!2380 = !DILocation(line: 728, column: 5, scope: !1924)
!2381 = !DILocation(line: 730, column: 11, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !1895, file: !93, line: 730, column: 7)
!2383 = !DILocation(line: 730, column: 16, scope: !2382)
!2384 = !DILocation(line: 738, column: 51, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !1895, file: !93, line: 738, column: 7)
!2386 = !DILocation(line: 741, column: 11, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !93, line: 741, column: 11)
!2388 = distinct !DILexicalBlock(scope: !2385, file: !93, line: 740, column: 5)
!2389 = !DILocation(line: 741, column: 11, scope: !2388)
!2390 = !DILocation(line: 742, column: 16, scope: !2387)
!2391 = !DILocation(line: 742, column: 9, scope: !2387)
!2392 = !DILocation(line: 746, column: 18, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2387, file: !93, line: 746, column: 16)
!2394 = !DILocation(line: 746, column: 29, scope: !2393)
!2395 = !DILocation(line: 755, column: 7, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !1895, file: !93, line: 755, column: 7)
!2397 = !DILocation(line: 755, column: 20, scope: !2396)
!2398 = !DILocation(line: 756, column: 12, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !93, line: 756, column: 5)
!2400 = distinct !DILexicalBlock(scope: !2396, file: !93, line: 756, column: 5)
!2401 = !DILocation(line: 756, column: 5, scope: !2400)
!2402 = !DILocation(line: 757, column: 7, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !93, line: 757, column: 7)
!2404 = distinct !DILexicalBlock(scope: !2399, file: !93, line: 757, column: 7)
!2405 = !DILocation(line: 757, column: 7, scope: !2404)
!2406 = !DILocation(line: 756, column: 39, scope: !2399)
!2407 = distinct !{!2407, !2401, !2408, !739}
!2408 = !DILocation(line: 757, column: 7, scope: !2400)
!2409 = !DILocation(line: 759, column: 11, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !1895, file: !93, line: 759, column: 7)
!2411 = !DILocation(line: 759, column: 7, scope: !1895)
!2412 = !DILocation(line: 760, column: 5, scope: !2410)
!2413 = !DILocation(line: 760, column: 17, scope: !2410)
!2414 = !DILocation(line: 763, column: 2, scope: !1895)
!2415 = !DILocation(line: 766, column: 51, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !1895, file: !93, line: 766, column: 7)
!2417 = !DILocation(line: 766, column: 21, scope: !2416)
!2418 = !DILocation(line: 770, column: 42, scope: !1895)
!2419 = !DILocation(line: 768, column: 10, scope: !1895)
!2420 = !DILocation(line: 768, column: 3, scope: !1895)
!2421 = !DILocation(line: 772, column: 1, scope: !1895)
!2422 = distinct !DISubprogram(name: "gettext_quote", scope: !93, file: !93, line: 207, type: !2423, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!45, !45, !95}
!2425 = !{!2426, !2427, !2428, !2429}
!2426 = !DILocalVariable(name: "msgid", arg: 1, scope: !2422, file: !93, line: 207, type: !45)
!2427 = !DILocalVariable(name: "s", arg: 2, scope: !2422, file: !93, line: 207, type: !95)
!2428 = !DILocalVariable(name: "translation", scope: !2422, file: !93, line: 209, type: !45)
!2429 = !DILocalVariable(name: "locale_code", scope: !2422, file: !93, line: 210, type: !45)
!2430 = !DILocation(line: 0, scope: !2422)
!2431 = !DILocation(line: 209, column: 29, scope: !2422)
!2432 = !DILocation(line: 212, column: 19, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2422, file: !93, line: 212, column: 7)
!2434 = !DILocation(line: 212, column: 7, scope: !2422)
!2435 = !DILocation(line: 233, column: 17, scope: !2422)
!2436 = !DILocalVariable(name: "s1", arg: 1, scope: !2437, file: !2438, line: 160, type: !45)
!2437 = distinct !DISubprogram(name: "strcaseeq0", scope: !2438, file: !2438, line: 160, type: !2439, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2441)
!2438 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!22, !45, !45, !15, !15, !15, !15, !15, !15, !15, !15, !15}
!2441 = !{!2436, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451}
!2442 = !DILocalVariable(name: "s2", arg: 2, scope: !2437, file: !2438, line: 160, type: !45)
!2443 = !DILocalVariable(name: "s20", arg: 3, scope: !2437, file: !2438, line: 160, type: !15)
!2444 = !DILocalVariable(name: "s21", arg: 4, scope: !2437, file: !2438, line: 160, type: !15)
!2445 = !DILocalVariable(name: "s22", arg: 5, scope: !2437, file: !2438, line: 160, type: !15)
!2446 = !DILocalVariable(name: "s23", arg: 6, scope: !2437, file: !2438, line: 160, type: !15)
!2447 = !DILocalVariable(name: "s24", arg: 7, scope: !2437, file: !2438, line: 160, type: !15)
!2448 = !DILocalVariable(name: "s25", arg: 8, scope: !2437, file: !2438, line: 160, type: !15)
!2449 = !DILocalVariable(name: "s26", arg: 9, scope: !2437, file: !2438, line: 160, type: !15)
!2450 = !DILocalVariable(name: "s27", arg: 10, scope: !2437, file: !2438, line: 160, type: !15)
!2451 = !DILocalVariable(name: "s28", arg: 11, scope: !2437, file: !2438, line: 160, type: !15)
!2452 = !DILocation(line: 0, scope: !2437, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 234, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2422, file: !93, line: 234, column: 7)
!2455 = !DILocation(line: 162, column: 7, scope: !2456, inlinedAt: !2453)
!2456 = distinct !DILexicalBlock(scope: !2437, file: !2438, line: 162, column: 7)
!2457 = !DILocalVariable(name: "s1", arg: 1, scope: !2458, file: !2438, line: 146, type: !45)
!2458 = distinct !DISubprogram(name: "strcaseeq1", scope: !2438, file: !2438, line: 146, type: !2459, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!22, !45, !45, !15, !15, !15, !15, !15, !15, !15, !15}
!2461 = !{!2457, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470}
!2462 = !DILocalVariable(name: "s2", arg: 2, scope: !2458, file: !2438, line: 146, type: !45)
!2463 = !DILocalVariable(name: "s21", arg: 3, scope: !2458, file: !2438, line: 146, type: !15)
!2464 = !DILocalVariable(name: "s22", arg: 4, scope: !2458, file: !2438, line: 146, type: !15)
!2465 = !DILocalVariable(name: "s23", arg: 5, scope: !2458, file: !2438, line: 146, type: !15)
!2466 = !DILocalVariable(name: "s24", arg: 6, scope: !2458, file: !2438, line: 146, type: !15)
!2467 = !DILocalVariable(name: "s25", arg: 7, scope: !2458, file: !2438, line: 146, type: !15)
!2468 = !DILocalVariable(name: "s26", arg: 8, scope: !2458, file: !2438, line: 146, type: !15)
!2469 = !DILocalVariable(name: "s27", arg: 9, scope: !2458, file: !2438, line: 146, type: !15)
!2470 = !DILocalVariable(name: "s28", arg: 10, scope: !2458, file: !2438, line: 146, type: !15)
!2471 = !DILocation(line: 0, scope: !2458, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 167, column: 16, scope: !2473, inlinedAt: !2453)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !2438, line: 164, column: 11)
!2474 = distinct !DILexicalBlock(scope: !2456, file: !2438, line: 163, column: 5)
!2475 = !DILocation(line: 148, column: 7, scope: !2476, inlinedAt: !2472)
!2476 = distinct !DILexicalBlock(scope: !2458, file: !2438, line: 148, column: 7)
!2477 = !DILocalVariable(name: "s1", arg: 1, scope: !2478, file: !2438, line: 132, type: !45)
!2478 = distinct !DISubprogram(name: "strcaseeq2", scope: !2438, file: !2438, line: 132, type: !2479, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!22, !45, !45, !15, !15, !15, !15, !15, !15, !15}
!2481 = !{!2477, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489}
!2482 = !DILocalVariable(name: "s2", arg: 2, scope: !2478, file: !2438, line: 132, type: !45)
!2483 = !DILocalVariable(name: "s22", arg: 3, scope: !2478, file: !2438, line: 132, type: !15)
!2484 = !DILocalVariable(name: "s23", arg: 4, scope: !2478, file: !2438, line: 132, type: !15)
!2485 = !DILocalVariable(name: "s24", arg: 5, scope: !2478, file: !2438, line: 132, type: !15)
!2486 = !DILocalVariable(name: "s25", arg: 6, scope: !2478, file: !2438, line: 132, type: !15)
!2487 = !DILocalVariable(name: "s26", arg: 7, scope: !2478, file: !2438, line: 132, type: !15)
!2488 = !DILocalVariable(name: "s27", arg: 8, scope: !2478, file: !2438, line: 132, type: !15)
!2489 = !DILocalVariable(name: "s28", arg: 9, scope: !2478, file: !2438, line: 132, type: !15)
!2490 = !DILocation(line: 0, scope: !2478, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 153, column: 16, scope: !2492, inlinedAt: !2472)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !2438, line: 150, column: 11)
!2493 = distinct !DILexicalBlock(scope: !2476, file: !2438, line: 149, column: 5)
!2494 = !DILocation(line: 134, column: 7, scope: !2495, inlinedAt: !2491)
!2495 = distinct !DILexicalBlock(scope: !2478, file: !2438, line: 134, column: 7)
!2496 = !DILocalVariable(name: "s1", arg: 1, scope: !2497, file: !2438, line: 118, type: !45)
!2497 = distinct !DISubprogram(name: "strcaseeq3", scope: !2438, file: !2438, line: 118, type: !2498, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!22, !45, !45, !15, !15, !15, !15, !15, !15}
!2500 = !{!2496, !2501, !2502, !2503, !2504, !2505, !2506, !2507}
!2501 = !DILocalVariable(name: "s2", arg: 2, scope: !2497, file: !2438, line: 118, type: !45)
!2502 = !DILocalVariable(name: "s23", arg: 3, scope: !2497, file: !2438, line: 118, type: !15)
!2503 = !DILocalVariable(name: "s24", arg: 4, scope: !2497, file: !2438, line: 118, type: !15)
!2504 = !DILocalVariable(name: "s25", arg: 5, scope: !2497, file: !2438, line: 118, type: !15)
!2505 = !DILocalVariable(name: "s26", arg: 6, scope: !2497, file: !2438, line: 118, type: !15)
!2506 = !DILocalVariable(name: "s27", arg: 7, scope: !2497, file: !2438, line: 118, type: !15)
!2507 = !DILocalVariable(name: "s28", arg: 8, scope: !2497, file: !2438, line: 118, type: !15)
!2508 = !DILocation(line: 0, scope: !2497, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 139, column: 16, scope: !2510, inlinedAt: !2491)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !2438, line: 136, column: 11)
!2511 = distinct !DILexicalBlock(scope: !2495, file: !2438, line: 135, column: 5)
!2512 = !DILocation(line: 120, column: 7, scope: !2513, inlinedAt: !2509)
!2513 = distinct !DILexicalBlock(scope: !2497, file: !2438, line: 120, column: 7)
!2514 = !DILocation(line: 120, column: 7, scope: !2497, inlinedAt: !2509)
!2515 = !DILocalVariable(name: "s1", arg: 1, scope: !2516, file: !2438, line: 104, type: !45)
!2516 = distinct !DISubprogram(name: "strcaseeq4", scope: !2438, file: !2438, line: 104, type: !2517, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!22, !45, !45, !15, !15, !15, !15, !15}
!2519 = !{!2515, !2520, !2521, !2522, !2523, !2524, !2525}
!2520 = !DILocalVariable(name: "s2", arg: 2, scope: !2516, file: !2438, line: 104, type: !45)
!2521 = !DILocalVariable(name: "s24", arg: 3, scope: !2516, file: !2438, line: 104, type: !15)
!2522 = !DILocalVariable(name: "s25", arg: 4, scope: !2516, file: !2438, line: 104, type: !15)
!2523 = !DILocalVariable(name: "s26", arg: 5, scope: !2516, file: !2438, line: 104, type: !15)
!2524 = !DILocalVariable(name: "s27", arg: 6, scope: !2516, file: !2438, line: 104, type: !15)
!2525 = !DILocalVariable(name: "s28", arg: 7, scope: !2516, file: !2438, line: 104, type: !15)
!2526 = !DILocation(line: 0, scope: !2516, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 125, column: 16, scope: !2528, inlinedAt: !2509)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !2438, line: 122, column: 11)
!2529 = distinct !DILexicalBlock(scope: !2513, file: !2438, line: 121, column: 5)
!2530 = !DILocation(line: 106, column: 7, scope: !2531, inlinedAt: !2527)
!2531 = distinct !DILexicalBlock(scope: !2516, file: !2438, line: 106, column: 7)
!2532 = !DILocation(line: 106, column: 7, scope: !2516, inlinedAt: !2527)
!2533 = !DILocalVariable(name: "s1", arg: 1, scope: !2534, file: !2438, line: 90, type: !45)
!2534 = distinct !DISubprogram(name: "strcaseeq5", scope: !2438, file: !2438, line: 90, type: !2535, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!22, !45, !45, !15, !15, !15, !15}
!2537 = !{!2533, !2538, !2539, !2540, !2541, !2542}
!2538 = !DILocalVariable(name: "s2", arg: 2, scope: !2534, file: !2438, line: 90, type: !45)
!2539 = !DILocalVariable(name: "s25", arg: 3, scope: !2534, file: !2438, line: 90, type: !15)
!2540 = !DILocalVariable(name: "s26", arg: 4, scope: !2534, file: !2438, line: 90, type: !15)
!2541 = !DILocalVariable(name: "s27", arg: 5, scope: !2534, file: !2438, line: 90, type: !15)
!2542 = !DILocalVariable(name: "s28", arg: 6, scope: !2534, file: !2438, line: 90, type: !15)
!2543 = !DILocation(line: 0, scope: !2534, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 111, column: 16, scope: !2545, inlinedAt: !2527)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !2438, line: 108, column: 11)
!2546 = distinct !DILexicalBlock(scope: !2531, file: !2438, line: 107, column: 5)
!2547 = !DILocation(line: 92, column: 7, scope: !2548, inlinedAt: !2544)
!2548 = distinct !DILexicalBlock(scope: !2534, file: !2438, line: 92, column: 7)
!2549 = !DILocation(line: 92, column: 7, scope: !2534, inlinedAt: !2544)
!2550 = !DILocation(line: 235, column: 12, scope: !2454)
!2551 = !DILocation(line: 235, column: 21, scope: !2454)
!2552 = !DILocation(line: 235, column: 5, scope: !2454)
!2553 = !DILocation(line: 0, scope: !2458, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 167, column: 16, scope: !2473, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 236, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2422, file: !93, line: 236, column: 7)
!2557 = !DILocation(line: 148, column: 7, scope: !2476, inlinedAt: !2554)
!2558 = !DILocation(line: 0, scope: !2478, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 153, column: 16, scope: !2492, inlinedAt: !2554)
!2560 = !DILocation(line: 134, column: 7, scope: !2495, inlinedAt: !2559)
!2561 = !DILocation(line: 134, column: 7, scope: !2478, inlinedAt: !2559)
!2562 = !DILocation(line: 0, scope: !2497, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 139, column: 16, scope: !2510, inlinedAt: !2559)
!2564 = !DILocation(line: 120, column: 7, scope: !2513, inlinedAt: !2563)
!2565 = !DILocation(line: 120, column: 7, scope: !2497, inlinedAt: !2563)
!2566 = !DILocation(line: 0, scope: !2516, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 125, column: 16, scope: !2528, inlinedAt: !2563)
!2568 = !DILocation(line: 106, column: 7, scope: !2531, inlinedAt: !2567)
!2569 = !DILocation(line: 106, column: 7, scope: !2516, inlinedAt: !2567)
!2570 = !DILocation(line: 0, scope: !2534, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 111, column: 16, scope: !2545, inlinedAt: !2567)
!2572 = !DILocation(line: 92, column: 7, scope: !2548, inlinedAt: !2571)
!2573 = !DILocation(line: 92, column: 7, scope: !2534, inlinedAt: !2571)
!2574 = !DILocalVariable(name: "s1", arg: 1, scope: !2575, file: !2438, line: 76, type: !45)
!2575 = distinct !DISubprogram(name: "strcaseeq6", scope: !2438, file: !2438, line: 76, type: !2576, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2578)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!22, !45, !45, !15, !15, !15}
!2578 = !{!2574, !2579, !2580, !2581, !2582}
!2579 = !DILocalVariable(name: "s2", arg: 2, scope: !2575, file: !2438, line: 76, type: !45)
!2580 = !DILocalVariable(name: "s26", arg: 3, scope: !2575, file: !2438, line: 76, type: !15)
!2581 = !DILocalVariable(name: "s27", arg: 4, scope: !2575, file: !2438, line: 76, type: !15)
!2582 = !DILocalVariable(name: "s28", arg: 5, scope: !2575, file: !2438, line: 76, type: !15)
!2583 = !DILocation(line: 0, scope: !2575, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 97, column: 16, scope: !2585, inlinedAt: !2571)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !2438, line: 94, column: 11)
!2586 = distinct !DILexicalBlock(scope: !2548, file: !2438, line: 93, column: 5)
!2587 = !DILocation(line: 78, column: 7, scope: !2588, inlinedAt: !2584)
!2588 = distinct !DILexicalBlock(scope: !2575, file: !2438, line: 78, column: 7)
!2589 = !DILocation(line: 78, column: 7, scope: !2575, inlinedAt: !2584)
!2590 = !DILocalVariable(name: "s1", arg: 1, scope: !2591, file: !2438, line: 62, type: !45)
!2591 = distinct !DISubprogram(name: "strcaseeq7", scope: !2438, file: !2438, line: 62, type: !2592, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!22, !45, !45, !15, !15}
!2594 = !{!2590, !2595, !2596, !2597}
!2595 = !DILocalVariable(name: "s2", arg: 2, scope: !2591, file: !2438, line: 62, type: !45)
!2596 = !DILocalVariable(name: "s27", arg: 3, scope: !2591, file: !2438, line: 62, type: !15)
!2597 = !DILocalVariable(name: "s28", arg: 4, scope: !2591, file: !2438, line: 62, type: !15)
!2598 = !DILocation(line: 0, scope: !2591, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 83, column: 16, scope: !2600, inlinedAt: !2584)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !2438, line: 80, column: 11)
!2601 = distinct !DILexicalBlock(scope: !2588, file: !2438, line: 79, column: 5)
!2602 = !DILocation(line: 64, column: 7, scope: !2603, inlinedAt: !2599)
!2603 = distinct !DILexicalBlock(scope: !2591, file: !2438, line: 64, column: 7)
!2604 = !DILocation(line: 236, column: 7, scope: !2422)
!2605 = !DILocation(line: 237, column: 12, scope: !2556)
!2606 = !DILocation(line: 237, column: 21, scope: !2556)
!2607 = !DILocation(line: 237, column: 5, scope: !2556)
!2608 = !DILocation(line: 239, column: 13, scope: !2422)
!2609 = !DILocation(line: 239, column: 11, scope: !2422)
!2610 = !DILocation(line: 239, column: 3, scope: !2422)
!2611 = !DILocation(line: 240, column: 1, scope: !2422)
!2612 = !DISubprogram(name: "iswprint", scope: !2613, file: !2613, line: 120, type: !2614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!2613 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!22, !7}
!2616 = !DISubprogram(name: "mbsinit", scope: !2617, file: !2617, line: 292, type: !2618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!2617 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!22, !2620}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1940)
!2622 = distinct !DISubprogram(name: "quotearg_alloc", scope: !93, file: !93, line: 799, type: !2623, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!14, !45, !131, !1786}
!2625 = !{!2626, !2627, !2628}
!2626 = !DILocalVariable(name: "arg", arg: 1, scope: !2622, file: !93, line: 799, type: !45)
!2627 = !DILocalVariable(name: "argsize", arg: 2, scope: !2622, file: !93, line: 799, type: !131)
!2628 = !DILocalVariable(name: "o", arg: 3, scope: !2622, file: !93, line: 800, type: !1786)
!2629 = !DILocation(line: 0, scope: !2622)
!2630 = !DILocalVariable(name: "arg", arg: 1, scope: !2631, file: !93, line: 812, type: !45)
!2631 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !93, file: !93, line: 812, type: !2632, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!14, !45, !131, !255, !1786}
!2634 = !{!2630, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642}
!2635 = !DILocalVariable(name: "argsize", arg: 2, scope: !2631, file: !93, line: 812, type: !131)
!2636 = !DILocalVariable(name: "size", arg: 3, scope: !2631, file: !93, line: 812, type: !255)
!2637 = !DILocalVariable(name: "o", arg: 4, scope: !2631, file: !93, line: 813, type: !1786)
!2638 = !DILocalVariable(name: "p", scope: !2631, file: !93, line: 815, type: !1786)
!2639 = !DILocalVariable(name: "e", scope: !2631, file: !93, line: 816, type: !22)
!2640 = !DILocalVariable(name: "flags", scope: !2631, file: !93, line: 818, type: !22)
!2641 = !DILocalVariable(name: "bufsize", scope: !2631, file: !93, line: 819, type: !131)
!2642 = !DILocalVariable(name: "buf", scope: !2631, file: !93, line: 823, type: !14)
!2643 = !DILocation(line: 0, scope: !2631, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 802, column: 10, scope: !2622)
!2645 = !DILocation(line: 815, column: 37, scope: !2631, inlinedAt: !2644)
!2646 = !DILocation(line: 816, column: 11, scope: !2631, inlinedAt: !2644)
!2647 = !DILocation(line: 818, column: 18, scope: !2631, inlinedAt: !2644)
!2648 = !DILocation(line: 818, column: 24, scope: !2631, inlinedAt: !2644)
!2649 = !DILocation(line: 819, column: 69, scope: !2631, inlinedAt: !2644)
!2650 = !DILocation(line: 820, column: 53, scope: !2631, inlinedAt: !2644)
!2651 = !DILocation(line: 821, column: 49, scope: !2631, inlinedAt: !2644)
!2652 = !DILocation(line: 822, column: 49, scope: !2631, inlinedAt: !2644)
!2653 = !DILocation(line: 819, column: 20, scope: !2631, inlinedAt: !2644)
!2654 = !DILocation(line: 822, column: 62, scope: !2631, inlinedAt: !2644)
!2655 = !DILocalVariable(name: "n", arg: 1, scope: !2656, file: !251, line: 216, type: !131)
!2656 = distinct !DISubprogram(name: "xcharalloc", scope: !251, file: !251, line: 216, type: !2657, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!14, !131}
!2659 = !{!2655}
!2660 = !DILocation(line: 0, scope: !2656, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 823, column: 15, scope: !2631, inlinedAt: !2644)
!2662 = !DILocation(line: 218, column: 10, scope: !2656, inlinedAt: !2661)
!2663 = !DILocation(line: 824, column: 60, scope: !2631, inlinedAt: !2644)
!2664 = !DILocation(line: 826, column: 32, scope: !2631, inlinedAt: !2644)
!2665 = !DILocation(line: 826, column: 47, scope: !2631, inlinedAt: !2644)
!2666 = !DILocation(line: 824, column: 3, scope: !2631, inlinedAt: !2644)
!2667 = !DILocation(line: 827, column: 9, scope: !2631, inlinedAt: !2644)
!2668 = !DILocation(line: 802, column: 3, scope: !2622)
!2669 = !DILocation(line: 0, scope: !2631)
!2670 = !DILocation(line: 815, column: 37, scope: !2631)
!2671 = !DILocation(line: 816, column: 11, scope: !2631)
!2672 = !DILocation(line: 818, column: 18, scope: !2631)
!2673 = !DILocation(line: 818, column: 27, scope: !2631)
!2674 = !DILocation(line: 818, column: 24, scope: !2631)
!2675 = !DILocation(line: 819, column: 69, scope: !2631)
!2676 = !DILocation(line: 820, column: 53, scope: !2631)
!2677 = !DILocation(line: 821, column: 49, scope: !2631)
!2678 = !DILocation(line: 822, column: 49, scope: !2631)
!2679 = !DILocation(line: 819, column: 20, scope: !2631)
!2680 = !DILocation(line: 822, column: 62, scope: !2631)
!2681 = !DILocation(line: 0, scope: !2656, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 823, column: 15, scope: !2631)
!2683 = !DILocation(line: 218, column: 10, scope: !2656, inlinedAt: !2682)
!2684 = !DILocation(line: 824, column: 60, scope: !2631)
!2685 = !DILocation(line: 826, column: 32, scope: !2631)
!2686 = !DILocation(line: 826, column: 47, scope: !2631)
!2687 = !DILocation(line: 824, column: 3, scope: !2631)
!2688 = !DILocation(line: 827, column: 9, scope: !2631)
!2689 = !DILocation(line: 828, column: 7, scope: !2631)
!2690 = !DILocation(line: 829, column: 11, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2631, file: !93, line: 828, column: 7)
!2692 = !DILocation(line: 829, column: 5, scope: !2691)
!2693 = !DILocation(line: 830, column: 3, scope: !2631)
!2694 = distinct !DISubprogram(name: "quotearg_free", scope: !93, file: !93, line: 848, type: !698, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2695)
!2695 = !{!2696, !2697}
!2696 = !DILocalVariable(name: "sv", scope: !2694, file: !93, line: 850, type: !160)
!2697 = !DILocalVariable(name: "i", scope: !2694, file: !93, line: 851, type: !22)
!2698 = !DILocation(line: 850, column: 24, scope: !2694)
!2699 = !DILocation(line: 0, scope: !2694)
!2700 = !DILocation(line: 852, column: 19, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !93, line: 852, column: 3)
!2702 = distinct !DILexicalBlock(scope: !2694, file: !93, line: 852, column: 3)
!2703 = !DILocation(line: 852, column: 17, scope: !2701)
!2704 = !DILocation(line: 852, column: 3, scope: !2702)
!2705 = !DILocation(line: 853, column: 17, scope: !2701)
!2706 = !{!2707, !690, i64 8}
!2707 = !{!"slotvec", !1400, i64 0, !690, i64 8}
!2708 = !DILocation(line: 853, column: 5, scope: !2701)
!2709 = !DILocation(line: 852, column: 28, scope: !2701)
!2710 = distinct !{!2710, !2704, !2711, !739}
!2711 = !DILocation(line: 853, column: 20, scope: !2702)
!2712 = !DILocation(line: 854, column: 13, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2694, file: !93, line: 854, column: 7)
!2714 = !DILocation(line: 854, column: 17, scope: !2713)
!2715 = !DILocation(line: 854, column: 7, scope: !2694)
!2716 = !DILocation(line: 856, column: 7, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2713, file: !93, line: 855, column: 5)
!2718 = !DILocation(line: 857, column: 21, scope: !2717)
!2719 = !{!2707, !1400, i64 0}
!2720 = !DILocation(line: 858, column: 20, scope: !2717)
!2721 = !DILocation(line: 859, column: 5, scope: !2717)
!2722 = !DILocation(line: 860, column: 10, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2694, file: !93, line: 860, column: 7)
!2724 = !DILocation(line: 860, column: 7, scope: !2694)
!2725 = !DILocation(line: 862, column: 13, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2723, file: !93, line: 861, column: 5)
!2727 = !DILocation(line: 862, column: 7, scope: !2726)
!2728 = !DILocation(line: 863, column: 15, scope: !2726)
!2729 = !DILocation(line: 864, column: 5, scope: !2726)
!2730 = !DILocation(line: 865, column: 10, scope: !2694)
!2731 = !DILocation(line: 866, column: 1, scope: !2694)
!2732 = distinct !DISubprogram(name: "quotearg_n", scope: !93, file: !93, line: 931, type: !818, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2733)
!2733 = !{!2734, !2735}
!2734 = !DILocalVariable(name: "n", arg: 1, scope: !2732, file: !93, line: 931, type: !22)
!2735 = !DILocalVariable(name: "arg", arg: 2, scope: !2732, file: !93, line: 931, type: !45)
!2736 = !DILocation(line: 0, scope: !2732)
!2737 = !DILocation(line: 933, column: 10, scope: !2732)
!2738 = !DILocation(line: 933, column: 3, scope: !2732)
!2739 = distinct !DISubprogram(name: "quotearg_n_options", scope: !93, file: !93, line: 877, type: !2740, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!14, !22, !45, !131, !1786}
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2748, !2749, !2752, !2753, !2755, !2756, !2757}
!2743 = !DILocalVariable(name: "n", arg: 1, scope: !2739, file: !93, line: 877, type: !22)
!2744 = !DILocalVariable(name: "arg", arg: 2, scope: !2739, file: !93, line: 877, type: !45)
!2745 = !DILocalVariable(name: "argsize", arg: 3, scope: !2739, file: !93, line: 877, type: !131)
!2746 = !DILocalVariable(name: "options", arg: 4, scope: !2739, file: !93, line: 878, type: !1786)
!2747 = !DILocalVariable(name: "e", scope: !2739, file: !93, line: 880, type: !22)
!2748 = !DILocalVariable(name: "sv", scope: !2739, file: !93, line: 882, type: !160)
!2749 = !DILocalVariable(name: "preallocated", scope: !2750, file: !93, line: 889, type: !38)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !93, line: 888, column: 5)
!2751 = distinct !DILexicalBlock(scope: !2739, file: !93, line: 887, column: 7)
!2752 = !DILocalVariable(name: "nmax", scope: !2750, file: !93, line: 890, type: !22)
!2753 = !DILocalVariable(name: "size", scope: !2754, file: !93, line: 903, type: !131)
!2754 = distinct !DILexicalBlock(scope: !2739, file: !93, line: 902, column: 3)
!2755 = !DILocalVariable(name: "val", scope: !2754, file: !93, line: 904, type: !14)
!2756 = !DILocalVariable(name: "flags", scope: !2754, file: !93, line: 906, type: !22)
!2757 = !DILocalVariable(name: "qsize", scope: !2754, file: !93, line: 907, type: !131)
!2758 = !DILocation(line: 0, scope: !2739)
!2759 = !DILocation(line: 880, column: 11, scope: !2739)
!2760 = !DILocation(line: 882, column: 24, scope: !2739)
!2761 = !DILocation(line: 884, column: 9, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2739, file: !93, line: 884, column: 7)
!2763 = !DILocation(line: 884, column: 7, scope: !2739)
!2764 = !DILocation(line: 885, column: 5, scope: !2762)
!2765 = !DILocation(line: 887, column: 7, scope: !2751)
!2766 = !DILocation(line: 887, column: 14, scope: !2751)
!2767 = !DILocation(line: 887, column: 7, scope: !2739)
!2768 = !DILocation(line: 889, column: 31, scope: !2750)
!2769 = !DILocation(line: 0, scope: !2750)
!2770 = !DILocation(line: 892, column: 16, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2750, file: !93, line: 892, column: 11)
!2772 = !DILocation(line: 892, column: 11, scope: !2750)
!2773 = !DILocation(line: 893, column: 9, scope: !2771)
!2774 = !DILocation(line: 895, column: 32, scope: !2750)
!2775 = !DILocation(line: 895, column: 61, scope: !2750)
!2776 = !DILocation(line: 895, column: 66, scope: !2750)
!2777 = !DILocation(line: 895, column: 22, scope: !2750)
!2778 = !DILocation(line: 895, column: 15, scope: !2750)
!2779 = !DILocation(line: 896, column: 11, scope: !2750)
!2780 = !DILocation(line: 897, column: 15, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2750, file: !93, line: 896, column: 11)
!2782 = !{i64 0, i64 8, !1399, i64 8, i64 8, !689}
!2783 = !DILocation(line: 897, column: 9, scope: !2781)
!2784 = !DILocation(line: 898, column: 20, scope: !2750)
!2785 = !DILocation(line: 898, column: 18, scope: !2750)
!2786 = !DILocation(line: 898, column: 15, scope: !2750)
!2787 = !DILocation(line: 898, column: 38, scope: !2750)
!2788 = !DILocation(line: 898, column: 31, scope: !2750)
!2789 = !DILocation(line: 898, column: 48, scope: !2750)
!2790 = !DILocation(line: 0, scope: !2183, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 898, column: 7, scope: !2750)
!2792 = !DILocation(line: 59, column: 10, scope: !2183, inlinedAt: !2791)
!2793 = !DILocation(line: 899, column: 14, scope: !2750)
!2794 = !DILocation(line: 900, column: 5, scope: !2750)
!2795 = !DILocation(line: 903, column: 19, scope: !2754)
!2796 = !DILocation(line: 903, column: 25, scope: !2754)
!2797 = !DILocation(line: 0, scope: !2754)
!2798 = !DILocation(line: 904, column: 23, scope: !2754)
!2799 = !DILocation(line: 906, column: 26, scope: !2754)
!2800 = !DILocation(line: 906, column: 32, scope: !2754)
!2801 = !DILocation(line: 908, column: 55, scope: !2754)
!2802 = !DILocation(line: 909, column: 46, scope: !2754)
!2803 = !DILocation(line: 910, column: 55, scope: !2754)
!2804 = !DILocation(line: 911, column: 55, scope: !2754)
!2805 = !DILocation(line: 907, column: 20, scope: !2754)
!2806 = !DILocation(line: 913, column: 14, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2754, file: !93, line: 913, column: 9)
!2808 = !DILocation(line: 913, column: 9, scope: !2754)
!2809 = !DILocation(line: 915, column: 35, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2807, file: !93, line: 914, column: 7)
!2811 = !DILocation(line: 915, column: 20, scope: !2810)
!2812 = !DILocation(line: 916, column: 17, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2810, file: !93, line: 916, column: 13)
!2814 = !DILocation(line: 916, column: 13, scope: !2810)
!2815 = !DILocation(line: 917, column: 11, scope: !2813)
!2816 = !DILocation(line: 0, scope: !2656, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 918, column: 27, scope: !2810)
!2818 = !DILocation(line: 218, column: 10, scope: !2656, inlinedAt: !2817)
!2819 = !DILocation(line: 918, column: 19, scope: !2810)
!2820 = !DILocation(line: 919, column: 69, scope: !2810)
!2821 = !DILocation(line: 921, column: 44, scope: !2810)
!2822 = !DILocation(line: 922, column: 44, scope: !2810)
!2823 = !DILocation(line: 919, column: 9, scope: !2810)
!2824 = !DILocation(line: 923, column: 7, scope: !2810)
!2825 = !DILocation(line: 925, column: 11, scope: !2754)
!2826 = !DILocation(line: 926, column: 5, scope: !2754)
!2827 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !93, file: !93, line: 937, type: !2828, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2830)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!14, !22, !45, !131}
!2830 = !{!2831, !2832, !2833}
!2831 = !DILocalVariable(name: "n", arg: 1, scope: !2827, file: !93, line: 937, type: !22)
!2832 = !DILocalVariable(name: "arg", arg: 2, scope: !2827, file: !93, line: 937, type: !45)
!2833 = !DILocalVariable(name: "argsize", arg: 3, scope: !2827, file: !93, line: 937, type: !131)
!2834 = !DILocation(line: 0, scope: !2827)
!2835 = !DILocation(line: 939, column: 10, scope: !2827)
!2836 = !DILocation(line: 939, column: 3, scope: !2827)
!2837 = distinct !DISubprogram(name: "quotearg", scope: !93, file: !93, line: 943, type: !1170, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2838)
!2838 = !{!2839}
!2839 = !DILocalVariable(name: "arg", arg: 1, scope: !2837, file: !93, line: 943, type: !45)
!2840 = !DILocation(line: 0, scope: !2837)
!2841 = !DILocation(line: 0, scope: !2732, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 945, column: 10, scope: !2837)
!2843 = !DILocation(line: 933, column: 10, scope: !2732, inlinedAt: !2842)
!2844 = !DILocation(line: 945, column: 3, scope: !2837)
!2845 = distinct !DISubprogram(name: "quotearg_mem", scope: !93, file: !93, line: 949, type: !2846, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!14, !45, !131}
!2848 = !{!2849, !2850}
!2849 = !DILocalVariable(name: "arg", arg: 1, scope: !2845, file: !93, line: 949, type: !45)
!2850 = !DILocalVariable(name: "argsize", arg: 2, scope: !2845, file: !93, line: 949, type: !131)
!2851 = !DILocation(line: 0, scope: !2845)
!2852 = !DILocation(line: 0, scope: !2827, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 951, column: 10, scope: !2845)
!2854 = !DILocation(line: 939, column: 10, scope: !2827, inlinedAt: !2853)
!2855 = !DILocation(line: 951, column: 3, scope: !2845)
!2856 = distinct !DISubprogram(name: "quotearg_n_style", scope: !93, file: !93, line: 955, type: !2857, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!14, !22, !95, !45}
!2859 = !{!2860, !2861, !2862, !2863}
!2860 = !DILocalVariable(name: "n", arg: 1, scope: !2856, file: !93, line: 955, type: !22)
!2861 = !DILocalVariable(name: "s", arg: 2, scope: !2856, file: !93, line: 955, type: !95)
!2862 = !DILocalVariable(name: "arg", arg: 3, scope: !2856, file: !93, line: 955, type: !45)
!2863 = !DILocalVariable(name: "o", scope: !2856, file: !93, line: 957, type: !1787)
!2864 = !DILocation(line: 0, scope: !2856)
!2865 = !DILocation(line: 957, column: 3, scope: !2856)
!2866 = !DILocation(line: 957, column: 32, scope: !2856)
!2867 = !{!2868}
!2868 = distinct !{!2868, !2869, !"quoting_options_from_style: argument 0"}
!2869 = distinct !{!2869, !"quoting_options_from_style"}
!2870 = !DILocation(line: 957, column: 36, scope: !2856)
!2871 = !DILocalVariable(name: "style", arg: 1, scope: !2872, file: !93, line: 193, type: !95)
!2872 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !93, file: !93, line: 193, type: !2873, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!143, !95}
!2875 = !{!2871, !2876}
!2876 = !DILocalVariable(name: "o", scope: !2872, file: !93, line: 195, type: !143)
!2877 = !DILocation(line: 0, scope: !2872, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 957, column: 36, scope: !2856)
!2879 = !DILocation(line: 195, column: 26, scope: !2872, inlinedAt: !2878)
!2880 = !DILocation(line: 196, column: 13, scope: !2881, inlinedAt: !2878)
!2881 = distinct !DILexicalBlock(scope: !2872, file: !93, line: 196, column: 7)
!2882 = !DILocation(line: 196, column: 7, scope: !2872, inlinedAt: !2878)
!2883 = !DILocation(line: 197, column: 5, scope: !2881, inlinedAt: !2878)
!2884 = !DILocation(line: 198, column: 5, scope: !2872, inlinedAt: !2878)
!2885 = !DILocation(line: 198, column: 11, scope: !2872, inlinedAt: !2878)
!2886 = !DILocation(line: 958, column: 10, scope: !2856)
!2887 = !DILocation(line: 959, column: 1, scope: !2856)
!2888 = !DILocation(line: 958, column: 3, scope: !2856)
!2889 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !93, file: !93, line: 962, type: !2890, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!14, !22, !95, !45, !131}
!2892 = !{!2893, !2894, !2895, !2896, !2897}
!2893 = !DILocalVariable(name: "n", arg: 1, scope: !2889, file: !93, line: 962, type: !22)
!2894 = !DILocalVariable(name: "s", arg: 2, scope: !2889, file: !93, line: 962, type: !95)
!2895 = !DILocalVariable(name: "arg", arg: 3, scope: !2889, file: !93, line: 963, type: !45)
!2896 = !DILocalVariable(name: "argsize", arg: 4, scope: !2889, file: !93, line: 963, type: !131)
!2897 = !DILocalVariable(name: "o", scope: !2889, file: !93, line: 965, type: !1787)
!2898 = !DILocation(line: 0, scope: !2889)
!2899 = !DILocation(line: 965, column: 3, scope: !2889)
!2900 = !DILocation(line: 965, column: 32, scope: !2889)
!2901 = !{!2902}
!2902 = distinct !{!2902, !2903, !"quoting_options_from_style: argument 0"}
!2903 = distinct !{!2903, !"quoting_options_from_style"}
!2904 = !DILocation(line: 965, column: 36, scope: !2889)
!2905 = !DILocation(line: 0, scope: !2872, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 965, column: 36, scope: !2889)
!2907 = !DILocation(line: 195, column: 26, scope: !2872, inlinedAt: !2906)
!2908 = !DILocation(line: 196, column: 13, scope: !2881, inlinedAt: !2906)
!2909 = !DILocation(line: 196, column: 7, scope: !2872, inlinedAt: !2906)
!2910 = !DILocation(line: 197, column: 5, scope: !2881, inlinedAt: !2906)
!2911 = !DILocation(line: 198, column: 5, scope: !2872, inlinedAt: !2906)
!2912 = !DILocation(line: 198, column: 11, scope: !2872, inlinedAt: !2906)
!2913 = !DILocation(line: 966, column: 10, scope: !2889)
!2914 = !DILocation(line: 967, column: 1, scope: !2889)
!2915 = !DILocation(line: 966, column: 3, scope: !2889)
!2916 = distinct !DISubprogram(name: "quotearg_style", scope: !93, file: !93, line: 970, type: !2917, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!14, !95, !45}
!2919 = !{!2920, !2921}
!2920 = !DILocalVariable(name: "s", arg: 1, scope: !2916, file: !93, line: 970, type: !95)
!2921 = !DILocalVariable(name: "arg", arg: 2, scope: !2916, file: !93, line: 970, type: !45)
!2922 = !DILocation(line: 0, scope: !2916)
!2923 = !DILocation(line: 0, scope: !2856, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 972, column: 10, scope: !2916)
!2925 = !DILocation(line: 957, column: 3, scope: !2856, inlinedAt: !2924)
!2926 = !DILocation(line: 957, column: 32, scope: !2856, inlinedAt: !2924)
!2927 = !{!2928}
!2928 = distinct !{!2928, !2929, !"quoting_options_from_style: argument 0"}
!2929 = distinct !{!2929, !"quoting_options_from_style"}
!2930 = !DILocation(line: 957, column: 36, scope: !2856, inlinedAt: !2924)
!2931 = !DILocation(line: 0, scope: !2872, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 957, column: 36, scope: !2856, inlinedAt: !2924)
!2933 = !DILocation(line: 195, column: 26, scope: !2872, inlinedAt: !2932)
!2934 = !DILocation(line: 196, column: 13, scope: !2881, inlinedAt: !2932)
!2935 = !DILocation(line: 196, column: 7, scope: !2872, inlinedAt: !2932)
!2936 = !DILocation(line: 197, column: 5, scope: !2881, inlinedAt: !2932)
!2937 = !DILocation(line: 198, column: 5, scope: !2872, inlinedAt: !2932)
!2938 = !DILocation(line: 198, column: 11, scope: !2872, inlinedAt: !2932)
!2939 = !DILocation(line: 958, column: 10, scope: !2856, inlinedAt: !2924)
!2940 = !DILocation(line: 959, column: 1, scope: !2856, inlinedAt: !2924)
!2941 = !DILocation(line: 972, column: 3, scope: !2916)
!2942 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !93, file: !93, line: 976, type: !2943, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!14, !95, !45, !131}
!2945 = !{!2946, !2947, !2948}
!2946 = !DILocalVariable(name: "s", arg: 1, scope: !2942, file: !93, line: 976, type: !95)
!2947 = !DILocalVariable(name: "arg", arg: 2, scope: !2942, file: !93, line: 976, type: !45)
!2948 = !DILocalVariable(name: "argsize", arg: 3, scope: !2942, file: !93, line: 976, type: !131)
!2949 = !DILocation(line: 0, scope: !2942)
!2950 = !DILocation(line: 0, scope: !2889, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 978, column: 10, scope: !2942)
!2952 = !DILocation(line: 965, column: 3, scope: !2889, inlinedAt: !2951)
!2953 = !DILocation(line: 965, column: 32, scope: !2889, inlinedAt: !2951)
!2954 = !{!2955}
!2955 = distinct !{!2955, !2956, !"quoting_options_from_style: argument 0"}
!2956 = distinct !{!2956, !"quoting_options_from_style"}
!2957 = !DILocation(line: 965, column: 36, scope: !2889, inlinedAt: !2951)
!2958 = !DILocation(line: 0, scope: !2872, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 965, column: 36, scope: !2889, inlinedAt: !2951)
!2960 = !DILocation(line: 195, column: 26, scope: !2872, inlinedAt: !2959)
!2961 = !DILocation(line: 196, column: 13, scope: !2881, inlinedAt: !2959)
!2962 = !DILocation(line: 196, column: 7, scope: !2872, inlinedAt: !2959)
!2963 = !DILocation(line: 197, column: 5, scope: !2881, inlinedAt: !2959)
!2964 = !DILocation(line: 198, column: 5, scope: !2872, inlinedAt: !2959)
!2965 = !DILocation(line: 198, column: 11, scope: !2872, inlinedAt: !2959)
!2966 = !DILocation(line: 966, column: 10, scope: !2889, inlinedAt: !2951)
!2967 = !DILocation(line: 967, column: 1, scope: !2889, inlinedAt: !2951)
!2968 = !DILocation(line: 978, column: 3, scope: !2942)
!2969 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !93, file: !93, line: 982, type: !2970, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2972)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!14, !45, !131, !15}
!2972 = !{!2973, !2974, !2975, !2976}
!2973 = !DILocalVariable(name: "arg", arg: 1, scope: !2969, file: !93, line: 982, type: !45)
!2974 = !DILocalVariable(name: "argsize", arg: 2, scope: !2969, file: !93, line: 982, type: !131)
!2975 = !DILocalVariable(name: "ch", arg: 3, scope: !2969, file: !93, line: 982, type: !15)
!2976 = !DILocalVariable(name: "options", scope: !2969, file: !93, line: 984, type: !143)
!2977 = !DILocation(line: 0, scope: !2969)
!2978 = !DILocation(line: 984, column: 3, scope: !2969)
!2979 = !DILocation(line: 984, column: 26, scope: !2969)
!2980 = !DILocation(line: 985, column: 13, scope: !2969)
!2981 = !{i64 0, i64 4, !1024, i64 4, i64 4, !872, i64 8, i64 32, !1024, i64 40, i64 8, !689, i64 48, i64 8, !689}
!2982 = !DILocation(line: 0, scope: !1807, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 986, column: 3, scope: !2969)
!2984 = !DILocation(line: 156, column: 62, scope: !1807, inlinedAt: !2983)
!2985 = !DILocation(line: 156, column: 57, scope: !1807, inlinedAt: !2983)
!2986 = !DILocation(line: 157, column: 15, scope: !1807, inlinedAt: !2983)
!2987 = !DILocation(line: 158, column: 12, scope: !1807, inlinedAt: !2983)
!2988 = !DILocation(line: 158, column: 15, scope: !1807, inlinedAt: !2983)
!2989 = !DILocation(line: 158, column: 25, scope: !1807, inlinedAt: !2983)
!2990 = !DILocation(line: 159, column: 18, scope: !1807, inlinedAt: !2983)
!2991 = !DILocation(line: 159, column: 23, scope: !1807, inlinedAt: !2983)
!2992 = !DILocation(line: 159, column: 6, scope: !1807, inlinedAt: !2983)
!2993 = !DILocation(line: 987, column: 10, scope: !2969)
!2994 = !DILocation(line: 988, column: 1, scope: !2969)
!2995 = !DILocation(line: 987, column: 3, scope: !2969)
!2996 = distinct !DISubprogram(name: "quotearg_char", scope: !93, file: !93, line: 991, type: !2997, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!14, !45, !15}
!2999 = !{!3000, !3001}
!3000 = !DILocalVariable(name: "arg", arg: 1, scope: !2996, file: !93, line: 991, type: !45)
!3001 = !DILocalVariable(name: "ch", arg: 2, scope: !2996, file: !93, line: 991, type: !15)
!3002 = !DILocation(line: 0, scope: !2996)
!3003 = !DILocation(line: 0, scope: !2969, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 993, column: 10, scope: !2996)
!3005 = !DILocation(line: 984, column: 3, scope: !2969, inlinedAt: !3004)
!3006 = !DILocation(line: 984, column: 26, scope: !2969, inlinedAt: !3004)
!3007 = !DILocation(line: 985, column: 13, scope: !2969, inlinedAt: !3004)
!3008 = !DILocation(line: 0, scope: !1807, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 986, column: 3, scope: !2969, inlinedAt: !3004)
!3010 = !DILocation(line: 156, column: 62, scope: !1807, inlinedAt: !3009)
!3011 = !DILocation(line: 156, column: 57, scope: !1807, inlinedAt: !3009)
!3012 = !DILocation(line: 157, column: 15, scope: !1807, inlinedAt: !3009)
!3013 = !DILocation(line: 158, column: 12, scope: !1807, inlinedAt: !3009)
!3014 = !DILocation(line: 158, column: 15, scope: !1807, inlinedAt: !3009)
!3015 = !DILocation(line: 158, column: 25, scope: !1807, inlinedAt: !3009)
!3016 = !DILocation(line: 159, column: 18, scope: !1807, inlinedAt: !3009)
!3017 = !DILocation(line: 159, column: 23, scope: !1807, inlinedAt: !3009)
!3018 = !DILocation(line: 159, column: 6, scope: !1807, inlinedAt: !3009)
!3019 = !DILocation(line: 987, column: 10, scope: !2969, inlinedAt: !3004)
!3020 = !DILocation(line: 988, column: 1, scope: !2969, inlinedAt: !3004)
!3021 = !DILocation(line: 993, column: 3, scope: !2996)
!3022 = distinct !DISubprogram(name: "quotearg_colon", scope: !93, file: !93, line: 997, type: !1170, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !3023)
!3023 = !{!3024}
!3024 = !DILocalVariable(name: "arg", arg: 1, scope: !3022, file: !93, line: 997, type: !45)
!3025 = !DILocation(line: 0, scope: !3022)
!3026 = !DILocation(line: 0, scope: !2996, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 999, column: 10, scope: !3022)
!3028 = !DILocation(line: 0, scope: !2969, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 993, column: 10, scope: !2996, inlinedAt: !3027)
!3030 = !DILocation(line: 984, column: 3, scope: !2969, inlinedAt: !3029)
!3031 = !DILocation(line: 984, column: 26, scope: !2969, inlinedAt: !3029)
!3032 = !DILocation(line: 985, column: 13, scope: !2969, inlinedAt: !3029)
!3033 = !DILocation(line: 0, scope: !1807, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 986, column: 3, scope: !2969, inlinedAt: !3029)
!3035 = !DILocation(line: 156, column: 57, scope: !1807, inlinedAt: !3034)
!3036 = !DILocation(line: 158, column: 12, scope: !1807, inlinedAt: !3034)
!3037 = !DILocation(line: 159, column: 6, scope: !1807, inlinedAt: !3034)
!3038 = !DILocation(line: 987, column: 10, scope: !2969, inlinedAt: !3029)
!3039 = !DILocation(line: 988, column: 1, scope: !2969, inlinedAt: !3029)
!3040 = !DILocation(line: 999, column: 3, scope: !3022)
!3041 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !93, file: !93, line: 1003, type: !2846, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !3042)
!3042 = !{!3043, !3044}
!3043 = !DILocalVariable(name: "arg", arg: 1, scope: !3041, file: !93, line: 1003, type: !45)
!3044 = !DILocalVariable(name: "argsize", arg: 2, scope: !3041, file: !93, line: 1003, type: !131)
!3045 = !DILocation(line: 0, scope: !3041)
!3046 = !DILocation(line: 0, scope: !2969, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 1005, column: 10, scope: !3041)
!3048 = !DILocation(line: 984, column: 3, scope: !2969, inlinedAt: !3047)
!3049 = !DILocation(line: 984, column: 26, scope: !2969, inlinedAt: !3047)
!3050 = !DILocation(line: 985, column: 13, scope: !2969, inlinedAt: !3047)
!3051 = !DILocation(line: 0, scope: !1807, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 986, column: 3, scope: !2969, inlinedAt: !3047)
!3053 = !DILocation(line: 156, column: 57, scope: !1807, inlinedAt: !3052)
!3054 = !DILocation(line: 158, column: 12, scope: !1807, inlinedAt: !3052)
!3055 = !DILocation(line: 159, column: 6, scope: !1807, inlinedAt: !3052)
!3056 = !DILocation(line: 987, column: 10, scope: !2969, inlinedAt: !3047)
!3057 = !DILocation(line: 988, column: 1, scope: !2969, inlinedAt: !3047)
!3058 = !DILocation(line: 1005, column: 3, scope: !3041)
!3059 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !93, file: !93, line: 1009, type: !2857, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !3060)
!3060 = !{!3061, !3062, !3063, !3064}
!3061 = !DILocalVariable(name: "n", arg: 1, scope: !3059, file: !93, line: 1009, type: !22)
!3062 = !DILocalVariable(name: "s", arg: 2, scope: !3059, file: !93, line: 1009, type: !95)
!3063 = !DILocalVariable(name: "arg", arg: 3, scope: !3059, file: !93, line: 1009, type: !45)
!3064 = !DILocalVariable(name: "options", scope: !3059, file: !93, line: 1011, type: !143)
!3065 = !DILocation(line: 195, column: 26, scope: !2872, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 1012, column: 13, scope: !3059)
!3067 = !DILocation(line: 0, scope: !3059)
!3068 = !DILocation(line: 1011, column: 3, scope: !3059)
!3069 = !DILocation(line: 1011, column: 26, scope: !3059)
!3070 = !DILocation(line: 1012, column: 13, scope: !3059)
!3071 = !{!3072}
!3072 = distinct !{!3072, !3073, !"quoting_options_from_style: argument 0"}
!3073 = distinct !{!3073, !"quoting_options_from_style"}
!3074 = !DILocation(line: 0, scope: !2872, inlinedAt: !3066)
!3075 = !DILocation(line: 196, column: 13, scope: !2881, inlinedAt: !3066)
!3076 = !DILocation(line: 196, column: 7, scope: !2872, inlinedAt: !3066)
!3077 = !DILocation(line: 197, column: 5, scope: !2881, inlinedAt: !3066)
!3078 = !{i64 0, i64 4, !872, i64 4, i64 32, !1024, i64 36, i64 8, !689, i64 44, i64 8, !689}
!3079 = !DILocation(line: 0, scope: !1807, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 1013, column: 3, scope: !3059)
!3081 = !DILocation(line: 156, column: 57, scope: !1807, inlinedAt: !3080)
!3082 = !DILocation(line: 158, column: 12, scope: !1807, inlinedAt: !3080)
!3083 = !DILocation(line: 159, column: 6, scope: !1807, inlinedAt: !3080)
!3084 = !DILocation(line: 1014, column: 10, scope: !3059)
!3085 = !DILocation(line: 1015, column: 1, scope: !3059)
!3086 = !DILocation(line: 1014, column: 3, scope: !3059)
!3087 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !93, file: !93, line: 1018, type: !3088, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!14, !22, !45, !45, !45}
!3090 = !{!3091, !3092, !3093, !3094}
!3091 = !DILocalVariable(name: "n", arg: 1, scope: !3087, file: !93, line: 1018, type: !22)
!3092 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3087, file: !93, line: 1018, type: !45)
!3093 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3087, file: !93, line: 1019, type: !45)
!3094 = !DILocalVariable(name: "arg", arg: 4, scope: !3087, file: !93, line: 1019, type: !45)
!3095 = !DILocation(line: 0, scope: !3087)
!3096 = !DILocalVariable(name: "n", arg: 1, scope: !3097, file: !93, line: 1026, type: !22)
!3097 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !93, file: !93, line: 1026, type: !3098, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!14, !22, !45, !45, !45, !131}
!3100 = !{!3096, !3101, !3102, !3103, !3104, !3105}
!3101 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3097, file: !93, line: 1026, type: !45)
!3102 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3097, file: !93, line: 1027, type: !45)
!3103 = !DILocalVariable(name: "arg", arg: 4, scope: !3097, file: !93, line: 1028, type: !45)
!3104 = !DILocalVariable(name: "argsize", arg: 5, scope: !3097, file: !93, line: 1028, type: !131)
!3105 = !DILocalVariable(name: "o", scope: !3097, file: !93, line: 1030, type: !143)
!3106 = !DILocation(line: 0, scope: !3097, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 1021, column: 10, scope: !3087)
!3108 = !DILocation(line: 1030, column: 3, scope: !3097, inlinedAt: !3107)
!3109 = !DILocation(line: 1030, column: 26, scope: !3097, inlinedAt: !3107)
!3110 = !DILocation(line: 1030, column: 30, scope: !3097, inlinedAt: !3107)
!3111 = !DILocation(line: 0, scope: !1848, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 1031, column: 3, scope: !3097, inlinedAt: !3107)
!3113 = !DILocation(line: 184, column: 6, scope: !1848, inlinedAt: !3112)
!3114 = !DILocation(line: 184, column: 12, scope: !1848, inlinedAt: !3112)
!3115 = !DILocation(line: 185, column: 8, scope: !1862, inlinedAt: !3112)
!3116 = !DILocation(line: 185, column: 19, scope: !1862, inlinedAt: !3112)
!3117 = !DILocation(line: 186, column: 5, scope: !1862, inlinedAt: !3112)
!3118 = !DILocation(line: 187, column: 6, scope: !1848, inlinedAt: !3112)
!3119 = !DILocation(line: 187, column: 17, scope: !1848, inlinedAt: !3112)
!3120 = !DILocation(line: 188, column: 6, scope: !1848, inlinedAt: !3112)
!3121 = !DILocation(line: 188, column: 18, scope: !1848, inlinedAt: !3112)
!3122 = !DILocation(line: 1032, column: 10, scope: !3097, inlinedAt: !3107)
!3123 = !DILocation(line: 1033, column: 1, scope: !3097, inlinedAt: !3107)
!3124 = !DILocation(line: 1021, column: 3, scope: !3087)
!3125 = !DILocation(line: 0, scope: !3097)
!3126 = !DILocation(line: 1030, column: 3, scope: !3097)
!3127 = !DILocation(line: 1030, column: 26, scope: !3097)
!3128 = !DILocation(line: 1030, column: 30, scope: !3097)
!3129 = !DILocation(line: 0, scope: !1848, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 1031, column: 3, scope: !3097)
!3131 = !DILocation(line: 184, column: 6, scope: !1848, inlinedAt: !3130)
!3132 = !DILocation(line: 184, column: 12, scope: !1848, inlinedAt: !3130)
!3133 = !DILocation(line: 185, column: 8, scope: !1862, inlinedAt: !3130)
!3134 = !DILocation(line: 185, column: 19, scope: !1862, inlinedAt: !3130)
!3135 = !DILocation(line: 186, column: 5, scope: !1862, inlinedAt: !3130)
!3136 = !DILocation(line: 187, column: 6, scope: !1848, inlinedAt: !3130)
!3137 = !DILocation(line: 187, column: 17, scope: !1848, inlinedAt: !3130)
!3138 = !DILocation(line: 188, column: 6, scope: !1848, inlinedAt: !3130)
!3139 = !DILocation(line: 188, column: 18, scope: !1848, inlinedAt: !3130)
!3140 = !DILocation(line: 1032, column: 10, scope: !3097)
!3141 = !DILocation(line: 1033, column: 1, scope: !3097)
!3142 = !DILocation(line: 1032, column: 3, scope: !3097)
!3143 = distinct !DISubprogram(name: "quotearg_custom", scope: !93, file: !93, line: 1036, type: !3144, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!14, !45, !45, !45}
!3146 = !{!3147, !3148, !3149}
!3147 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3143, file: !93, line: 1036, type: !45)
!3148 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3143, file: !93, line: 1036, type: !45)
!3149 = !DILocalVariable(name: "arg", arg: 3, scope: !3143, file: !93, line: 1037, type: !45)
!3150 = !DILocation(line: 0, scope: !3143)
!3151 = !DILocation(line: 0, scope: !3087, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 1039, column: 10, scope: !3143)
!3153 = !DILocation(line: 0, scope: !3097, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 1021, column: 10, scope: !3087, inlinedAt: !3152)
!3155 = !DILocation(line: 1030, column: 3, scope: !3097, inlinedAt: !3154)
!3156 = !DILocation(line: 1030, column: 26, scope: !3097, inlinedAt: !3154)
!3157 = !DILocation(line: 1030, column: 30, scope: !3097, inlinedAt: !3154)
!3158 = !DILocation(line: 0, scope: !1848, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 1031, column: 3, scope: !3097, inlinedAt: !3154)
!3160 = !DILocation(line: 184, column: 6, scope: !1848, inlinedAt: !3159)
!3161 = !DILocation(line: 184, column: 12, scope: !1848, inlinedAt: !3159)
!3162 = !DILocation(line: 185, column: 8, scope: !1862, inlinedAt: !3159)
!3163 = !DILocation(line: 185, column: 19, scope: !1862, inlinedAt: !3159)
!3164 = !DILocation(line: 186, column: 5, scope: !1862, inlinedAt: !3159)
!3165 = !DILocation(line: 187, column: 6, scope: !1848, inlinedAt: !3159)
!3166 = !DILocation(line: 187, column: 17, scope: !1848, inlinedAt: !3159)
!3167 = !DILocation(line: 188, column: 6, scope: !1848, inlinedAt: !3159)
!3168 = !DILocation(line: 188, column: 18, scope: !1848, inlinedAt: !3159)
!3169 = !DILocation(line: 1032, column: 10, scope: !3097, inlinedAt: !3154)
!3170 = !DILocation(line: 1033, column: 1, scope: !3097, inlinedAt: !3154)
!3171 = !DILocation(line: 1039, column: 3, scope: !3143)
!3172 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !93, file: !93, line: 1043, type: !3173, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !3175)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!14, !45, !45, !45, !131}
!3175 = !{!3176, !3177, !3178, !3179}
!3176 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3172, file: !93, line: 1043, type: !45)
!3177 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3172, file: !93, line: 1043, type: !45)
!3178 = !DILocalVariable(name: "arg", arg: 3, scope: !3172, file: !93, line: 1044, type: !45)
!3179 = !DILocalVariable(name: "argsize", arg: 4, scope: !3172, file: !93, line: 1044, type: !131)
!3180 = !DILocation(line: 0, scope: !3172)
!3181 = !DILocation(line: 0, scope: !3097, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 1046, column: 10, scope: !3172)
!3183 = !DILocation(line: 1030, column: 3, scope: !3097, inlinedAt: !3182)
!3184 = !DILocation(line: 1030, column: 26, scope: !3097, inlinedAt: !3182)
!3185 = !DILocation(line: 1030, column: 30, scope: !3097, inlinedAt: !3182)
!3186 = !DILocation(line: 0, scope: !1848, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 1031, column: 3, scope: !3097, inlinedAt: !3182)
!3188 = !DILocation(line: 184, column: 6, scope: !1848, inlinedAt: !3187)
!3189 = !DILocation(line: 184, column: 12, scope: !1848, inlinedAt: !3187)
!3190 = !DILocation(line: 185, column: 8, scope: !1862, inlinedAt: !3187)
!3191 = !DILocation(line: 185, column: 19, scope: !1862, inlinedAt: !3187)
!3192 = !DILocation(line: 186, column: 5, scope: !1862, inlinedAt: !3187)
!3193 = !DILocation(line: 187, column: 6, scope: !1848, inlinedAt: !3187)
!3194 = !DILocation(line: 187, column: 17, scope: !1848, inlinedAt: !3187)
!3195 = !DILocation(line: 188, column: 6, scope: !1848, inlinedAt: !3187)
!3196 = !DILocation(line: 188, column: 18, scope: !1848, inlinedAt: !3187)
!3197 = !DILocation(line: 1032, column: 10, scope: !3097, inlinedAt: !3182)
!3198 = !DILocation(line: 1033, column: 1, scope: !3097, inlinedAt: !3182)
!3199 = !DILocation(line: 1046, column: 3, scope: !3172)
!3200 = distinct !DISubprogram(name: "quote_n_mem", scope: !93, file: !93, line: 1061, type: !3201, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!45, !22, !45, !131}
!3203 = !{!3204, !3205, !3206}
!3204 = !DILocalVariable(name: "n", arg: 1, scope: !3200, file: !93, line: 1061, type: !22)
!3205 = !DILocalVariable(name: "arg", arg: 2, scope: !3200, file: !93, line: 1061, type: !45)
!3206 = !DILocalVariable(name: "argsize", arg: 3, scope: !3200, file: !93, line: 1061, type: !131)
!3207 = !DILocation(line: 0, scope: !3200)
!3208 = !DILocation(line: 1063, column: 10, scope: !3200)
!3209 = !DILocation(line: 1063, column: 3, scope: !3200)
!3210 = distinct !DISubprogram(name: "quote_mem", scope: !93, file: !93, line: 1067, type: !3211, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!45, !45, !131}
!3213 = !{!3214, !3215}
!3214 = !DILocalVariable(name: "arg", arg: 1, scope: !3210, file: !93, line: 1067, type: !45)
!3215 = !DILocalVariable(name: "argsize", arg: 2, scope: !3210, file: !93, line: 1067, type: !131)
!3216 = !DILocation(line: 0, scope: !3210)
!3217 = !DILocation(line: 0, scope: !3200, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 1069, column: 10, scope: !3210)
!3219 = !DILocation(line: 1063, column: 10, scope: !3200, inlinedAt: !3218)
!3220 = !DILocation(line: 1069, column: 3, scope: !3210)
!3221 = distinct !DISubprogram(name: "quote_n", scope: !93, file: !93, line: 1073, type: !3222, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !3224)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!45, !22, !45}
!3224 = !{!3225, !3226}
!3225 = !DILocalVariable(name: "n", arg: 1, scope: !3221, file: !93, line: 1073, type: !22)
!3226 = !DILocalVariable(name: "arg", arg: 2, scope: !3221, file: !93, line: 1073, type: !45)
!3227 = !DILocation(line: 0, scope: !3221)
!3228 = !DILocation(line: 0, scope: !3200, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 1075, column: 10, scope: !3221)
!3230 = !DILocation(line: 1063, column: 10, scope: !3200, inlinedAt: !3229)
!3231 = !DILocation(line: 1075, column: 3, scope: !3221)
!3232 = distinct !DISubprogram(name: "quote", scope: !93, file: !93, line: 1079, type: !3233, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!45, !45}
!3235 = !{!3236}
!3236 = !DILocalVariable(name: "arg", arg: 1, scope: !3232, file: !93, line: 1079, type: !45)
!3237 = !DILocation(line: 0, scope: !3232)
!3238 = !DILocation(line: 0, scope: !3221, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 1081, column: 10, scope: !3232)
!3240 = !DILocation(line: 0, scope: !3200, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 1075, column: 10, scope: !3221, inlinedAt: !3239)
!3242 = !DILocation(line: 1063, column: 10, scope: !3200, inlinedAt: !3241)
!3243 = !DILocation(line: 1081, column: 3, scope: !3232)
!3244 = distinct !DISubprogram(name: "version_etc_arn", scope: !241, file: !241, line: 61, type: !3245, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3283)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !3247, !45, !45, !45, !3282, !131}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3249, line: 7, baseType: !3250)
!3249 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !769, line: 49, size: 1728, elements: !3251)
!3251 = !{!3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3250, file: !769, line: 51, baseType: !22, size: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3250, file: !769, line: 54, baseType: !14, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3250, file: !769, line: 55, baseType: !14, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3250, file: !769, line: 56, baseType: !14, size: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3250, file: !769, line: 57, baseType: !14, size: 64, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3250, file: !769, line: 58, baseType: !14, size: 64, offset: 320)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3250, file: !769, line: 59, baseType: !14, size: 64, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3250, file: !769, line: 60, baseType: !14, size: 64, offset: 448)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3250, file: !769, line: 61, baseType: !14, size: 64, offset: 512)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3250, file: !769, line: 64, baseType: !14, size: 64, offset: 576)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3250, file: !769, line: 65, baseType: !14, size: 64, offset: 640)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3250, file: !769, line: 66, baseType: !14, size: 64, offset: 704)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3250, file: !769, line: 68, baseType: !784, size: 64, offset: 768)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3250, file: !769, line: 70, baseType: !3266, size: 64, offset: 832)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3250, file: !769, line: 72, baseType: !22, size: 32, offset: 896)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3250, file: !769, line: 73, baseType: !22, size: 32, offset: 928)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3250, file: !769, line: 74, baseType: !790, size: 64, offset: 960)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3250, file: !769, line: 77, baseType: !130, size: 16, offset: 1024)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3250, file: !769, line: 78, baseType: !23, size: 8, offset: 1040)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3250, file: !769, line: 79, baseType: !794, size: 8, offset: 1048)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3250, file: !769, line: 81, baseType: !798, size: 64, offset: 1088)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3250, file: !769, line: 89, baseType: !801, size: 64, offset: 1152)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3250, file: !769, line: 91, baseType: !803, size: 64, offset: 1216)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3250, file: !769, line: 92, baseType: !806, size: 64, offset: 1280)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3250, file: !769, line: 93, baseType: !3266, size: 64, offset: 1344)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3250, file: !769, line: 94, baseType: !16, size: 64, offset: 1408)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3250, file: !769, line: 95, baseType: !131, size: 64, offset: 1472)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3250, file: !769, line: 96, baseType: !22, size: 32, offset: 1536)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3250, file: !769, line: 98, baseType: !813, size: 160, offset: 1568)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!3283 = !{!3284, !3285, !3286, !3287, !3288, !3289}
!3284 = !DILocalVariable(name: "stream", arg: 1, scope: !3244, file: !241, line: 61, type: !3247)
!3285 = !DILocalVariable(name: "command_name", arg: 2, scope: !3244, file: !241, line: 62, type: !45)
!3286 = !DILocalVariable(name: "package", arg: 3, scope: !3244, file: !241, line: 62, type: !45)
!3287 = !DILocalVariable(name: "version", arg: 4, scope: !3244, file: !241, line: 63, type: !45)
!3288 = !DILocalVariable(name: "authors", arg: 5, scope: !3244, file: !241, line: 64, type: !3282)
!3289 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3244, file: !241, line: 64, type: !131)
!3290 = !DILocation(line: 0, scope: !3244)
!3291 = !DILocation(line: 66, column: 7, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3244, file: !241, line: 66, column: 7)
!3293 = !DILocation(line: 66, column: 7, scope: !3244)
!3294 = !DILocation(line: 67, column: 5, scope: !3292)
!3295 = !DILocation(line: 69, column: 5, scope: !3292)
!3296 = !DILocation(line: 83, column: 3, scope: !3244)
!3297 = !DILocation(line: 85, column: 3, scope: !3244)
!3298 = !DILocation(line: 88, column: 3, scope: !3244)
!3299 = !DILocation(line: 95, column: 3, scope: !3244)
!3300 = !DILocation(line: 97, column: 3, scope: !3244)
!3301 = !DILocation(line: 105, column: 7, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3244, file: !241, line: 98, column: 5)
!3303 = !DILocation(line: 106, column: 7, scope: !3302)
!3304 = !DILocation(line: 109, column: 7, scope: !3302)
!3305 = !DILocation(line: 110, column: 7, scope: !3302)
!3306 = !DILocation(line: 113, column: 7, scope: !3302)
!3307 = !DILocation(line: 115, column: 7, scope: !3302)
!3308 = !DILocation(line: 120, column: 7, scope: !3302)
!3309 = !DILocation(line: 122, column: 7, scope: !3302)
!3310 = !DILocation(line: 127, column: 7, scope: !3302)
!3311 = !DILocation(line: 129, column: 7, scope: !3302)
!3312 = !DILocation(line: 134, column: 7, scope: !3302)
!3313 = !DILocation(line: 137, column: 7, scope: !3302)
!3314 = !DILocation(line: 142, column: 7, scope: !3302)
!3315 = !DILocation(line: 145, column: 7, scope: !3302)
!3316 = !DILocation(line: 150, column: 7, scope: !3302)
!3317 = !DILocation(line: 154, column: 7, scope: !3302)
!3318 = !DILocation(line: 159, column: 7, scope: !3302)
!3319 = !DILocation(line: 163, column: 7, scope: !3302)
!3320 = !DILocation(line: 170, column: 7, scope: !3302)
!3321 = !DILocation(line: 174, column: 7, scope: !3302)
!3322 = !DILocation(line: 176, column: 1, scope: !3244)
!3323 = distinct !DISubprogram(name: "version_etc_ar", scope: !241, file: !241, line: 183, type: !3324, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3326)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{null, !3247, !45, !45, !45, !3282}
!3326 = !{!3327, !3328, !3329, !3330, !3331, !3332}
!3327 = !DILocalVariable(name: "stream", arg: 1, scope: !3323, file: !241, line: 183, type: !3247)
!3328 = !DILocalVariable(name: "command_name", arg: 2, scope: !3323, file: !241, line: 184, type: !45)
!3329 = !DILocalVariable(name: "package", arg: 3, scope: !3323, file: !241, line: 184, type: !45)
!3330 = !DILocalVariable(name: "version", arg: 4, scope: !3323, file: !241, line: 185, type: !45)
!3331 = !DILocalVariable(name: "authors", arg: 5, scope: !3323, file: !241, line: 185, type: !3282)
!3332 = !DILocalVariable(name: "n_authors", scope: !3323, file: !241, line: 187, type: !131)
!3333 = !DILocation(line: 0, scope: !3323)
!3334 = !DILocation(line: 189, column: 8, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3323, file: !241, line: 189, column: 3)
!3336 = !DILocation(line: 0, scope: !3335)
!3337 = !DILocation(line: 189, column: 23, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3335, file: !241, line: 189, column: 3)
!3339 = !DILocation(line: 189, column: 3, scope: !3335)
!3340 = !DILocation(line: 189, column: 52, scope: !3338)
!3341 = distinct !{!3341, !3339, !3342, !739}
!3342 = !DILocation(line: 190, column: 5, scope: !3335)
!3343 = !DILocation(line: 191, column: 3, scope: !3323)
!3344 = !DILocation(line: 192, column: 1, scope: !3323)
!3345 = distinct !DISubprogram(name: "version_etc_va", scope: !241, file: !241, line: 199, type: !3346, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3355)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !3247, !45, !45, !45, !3348}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3350)
!3350 = !{!3351, !3352, !3353, !3354}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3349, file: !241, line: 192, baseType: !7, size: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3349, file: !241, line: 192, baseType: !7, size: 32, offset: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3349, file: !241, line: 192, baseType: !16, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3349, file: !241, line: 192, baseType: !16, size: 64, offset: 128)
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362}
!3356 = !DILocalVariable(name: "stream", arg: 1, scope: !3345, file: !241, line: 199, type: !3247)
!3357 = !DILocalVariable(name: "command_name", arg: 2, scope: !3345, file: !241, line: 200, type: !45)
!3358 = !DILocalVariable(name: "package", arg: 3, scope: !3345, file: !241, line: 200, type: !45)
!3359 = !DILocalVariable(name: "version", arg: 4, scope: !3345, file: !241, line: 201, type: !45)
!3360 = !DILocalVariable(name: "authors", arg: 5, scope: !3345, file: !241, line: 201, type: !3348)
!3361 = !DILocalVariable(name: "n_authors", scope: !3345, file: !241, line: 203, type: !131)
!3362 = !DILocalVariable(name: "authtab", scope: !3345, file: !241, line: 204, type: !3363)
!3363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 640, elements: !139)
!3364 = !DILocation(line: 0, scope: !3345)
!3365 = !DILocation(line: 204, column: 3, scope: !3345)
!3366 = !DILocation(line: 204, column: 15, scope: !3345)
!3367 = !DILocation(line: 208, column: 35, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !241, line: 206, column: 3)
!3369 = distinct !DILexicalBlock(scope: !3345, file: !241, line: 206, column: 3)
!3370 = !DILocation(line: 208, column: 14, scope: !3368)
!3371 = !DILocation(line: 208, column: 33, scope: !3368)
!3372 = !DILocation(line: 208, column: 67, scope: !3368)
!3373 = !DILocation(line: 206, column: 3, scope: !3369)
!3374 = !DILocation(line: 0, scope: !3369)
!3375 = !DILocation(line: 211, column: 3, scope: !3345)
!3376 = !DILocation(line: 213, column: 1, scope: !3345)
!3377 = distinct !DISubprogram(name: "version_etc", scope: !241, file: !241, line: 230, type: !3378, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{null, !3247, !45, !45, !45, null}
!3380 = !{!3381, !3382, !3383, !3384, !3385}
!3381 = !DILocalVariable(name: "stream", arg: 1, scope: !3377, file: !241, line: 230, type: !3247)
!3382 = !DILocalVariable(name: "command_name", arg: 2, scope: !3377, file: !241, line: 231, type: !45)
!3383 = !DILocalVariable(name: "package", arg: 3, scope: !3377, file: !241, line: 231, type: !45)
!3384 = !DILocalVariable(name: "version", arg: 4, scope: !3377, file: !241, line: 232, type: !45)
!3385 = !DILocalVariable(name: "authors", scope: !3377, file: !241, line: 234, type: !3386)
!3386 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !764, line: 52, baseType: !3387)
!3387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3388, line: 32, baseType: !3389)
!3388 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !241, baseType: !3390)
!3390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3349, size: 192, elements: !795)
!3391 = !DILocation(line: 0, scope: !3377)
!3392 = !DILocation(line: 234, column: 3, scope: !3377)
!3393 = !DILocation(line: 234, column: 11, scope: !3377)
!3394 = !DILocation(line: 236, column: 3, scope: !3377)
!3395 = !DILocation(line: 237, column: 3, scope: !3377)
!3396 = !DILocation(line: 238, column: 3, scope: !3377)
!3397 = !DILocation(line: 239, column: 1, scope: !3377)
!3398 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !241, file: !241, line: 242, type: !698, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !69)
!3399 = !DILocation(line: 244, column: 3, scope: !3398)
!3400 = !DILocation(line: 249, column: 3, scope: !3398)
!3401 = !DILocation(line: 255, column: 3, scope: !3398)
!3402 = !DILocation(line: 260, column: 3, scope: !3398)
!3403 = !DILocation(line: 262, column: 1, scope: !3398)
!3404 = distinct !DISubprogram(name: "xnmalloc", scope: !251, file: !251, line: 99, type: !3405, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!16, !131, !131}
!3407 = !{!3408, !3409}
!3408 = !DILocalVariable(name: "n", arg: 1, scope: !3404, file: !251, line: 99, type: !131)
!3409 = !DILocalVariable(name: "s", arg: 2, scope: !3404, file: !251, line: 99, type: !131)
!3410 = !DILocation(line: 0, scope: !3404)
!3411 = !DILocation(line: 101, column: 7, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3404, file: !251, line: 101, column: 7)
!3413 = !DILocation(line: 101, column: 7, scope: !3404)
!3414 = !DILocation(line: 102, column: 5, scope: !3412)
!3415 = !DILocation(line: 103, column: 21, scope: !3404)
!3416 = !DILocalVariable(name: "n", arg: 1, scope: !3417, file: !248, line: 39, type: !131)
!3417 = distinct !DISubprogram(name: "xmalloc", scope: !248, file: !248, line: 39, type: !3418, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3420)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!16, !131}
!3420 = !{!3416, !3421}
!3421 = !DILocalVariable(name: "p", scope: !3417, file: !248, line: 41, type: !16)
!3422 = !DILocation(line: 0, scope: !3417, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 103, column: 10, scope: !3404)
!3424 = !DILocation(line: 41, column: 13, scope: !3417, inlinedAt: !3423)
!3425 = !DILocation(line: 42, column: 8, scope: !3426, inlinedAt: !3423)
!3426 = distinct !DILexicalBlock(scope: !3417, file: !248, line: 42, column: 7)
!3427 = !DILocation(line: 42, column: 10, scope: !3426, inlinedAt: !3423)
!3428 = !DILocation(line: 43, column: 5, scope: !3426, inlinedAt: !3423)
!3429 = !DILocation(line: 103, column: 3, scope: !3404)
!3430 = !DILocation(line: 0, scope: !3417)
!3431 = !DILocation(line: 41, column: 13, scope: !3417)
!3432 = !DILocation(line: 42, column: 8, scope: !3426)
!3433 = !DILocation(line: 42, column: 10, scope: !3426)
!3434 = !DILocation(line: 43, column: 5, scope: !3426)
!3435 = !DILocation(line: 44, column: 3, scope: !3417)
!3436 = distinct !DISubprogram(name: "xnrealloc", scope: !251, file: !251, line: 112, type: !3437, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!16, !16, !131, !131}
!3439 = !{!3440, !3441, !3442}
!3440 = !DILocalVariable(name: "p", arg: 1, scope: !3436, file: !251, line: 112, type: !16)
!3441 = !DILocalVariable(name: "n", arg: 2, scope: !3436, file: !251, line: 112, type: !131)
!3442 = !DILocalVariable(name: "s", arg: 3, scope: !3436, file: !251, line: 112, type: !131)
!3443 = !DILocation(line: 0, scope: !3436)
!3444 = !DILocation(line: 114, column: 7, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3436, file: !251, line: 114, column: 7)
!3446 = !DILocation(line: 114, column: 7, scope: !3436)
!3447 = !DILocation(line: 115, column: 5, scope: !3445)
!3448 = !DILocation(line: 116, column: 25, scope: !3436)
!3449 = !DILocalVariable(name: "p", arg: 1, scope: !3450, file: !248, line: 51, type: !16)
!3450 = distinct !DISubprogram(name: "xrealloc", scope: !248, file: !248, line: 51, type: !3451, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!16, !16, !131}
!3453 = !{!3449, !3454}
!3454 = !DILocalVariable(name: "n", arg: 2, scope: !3450, file: !248, line: 51, type: !131)
!3455 = !DILocation(line: 0, scope: !3450, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 116, column: 10, scope: !3436)
!3457 = !DILocation(line: 53, column: 8, scope: !3458, inlinedAt: !3456)
!3458 = distinct !DILexicalBlock(scope: !3450, file: !248, line: 53, column: 7)
!3459 = !DILocation(line: 53, column: 10, scope: !3458, inlinedAt: !3456)
!3460 = !DILocation(line: 57, column: 7, scope: !3461, inlinedAt: !3456)
!3461 = distinct !DILexicalBlock(scope: !3458, file: !248, line: 54, column: 5)
!3462 = !DILocation(line: 58, column: 7, scope: !3461, inlinedAt: !3456)
!3463 = !DILocation(line: 61, column: 7, scope: !3450, inlinedAt: !3456)
!3464 = !DILocation(line: 62, column: 8, scope: !3465, inlinedAt: !3456)
!3465 = distinct !DILexicalBlock(scope: !3450, file: !248, line: 62, column: 7)
!3466 = !DILocation(line: 62, column: 10, scope: !3465, inlinedAt: !3456)
!3467 = !DILocation(line: 63, column: 5, scope: !3465, inlinedAt: !3456)
!3468 = !DILocation(line: 116, column: 3, scope: !3436)
!3469 = !DILocation(line: 0, scope: !3450)
!3470 = !DILocation(line: 53, column: 8, scope: !3458)
!3471 = !DILocation(line: 53, column: 10, scope: !3458)
!3472 = !DILocation(line: 57, column: 7, scope: !3461)
!3473 = !DILocation(line: 58, column: 7, scope: !3461)
!3474 = !DILocation(line: 61, column: 7, scope: !3450)
!3475 = !DILocation(line: 62, column: 8, scope: !3465)
!3476 = !DILocation(line: 62, column: 10, scope: !3465)
!3477 = !DILocation(line: 63, column: 5, scope: !3465)
!3478 = !DILocation(line: 65, column: 1, scope: !3450)
!3479 = !DILocation(line: 0, scope: !252)
!3480 = !DILocation(line: 176, column: 14, scope: !252)
!3481 = !DILocation(line: 178, column: 9, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !252, file: !251, line: 178, column: 7)
!3483 = !DILocation(line: 178, column: 7, scope: !252)
!3484 = !DILocation(line: 180, column: 13, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !251, line: 180, column: 11)
!3486 = distinct !DILexicalBlock(scope: !3482, file: !251, line: 179, column: 5)
!3487 = !DILocation(line: 180, column: 11, scope: !3486)
!3488 = !DILocation(line: 188, column: 30, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3485, file: !251, line: 181, column: 9)
!3490 = !DILocation(line: 189, column: 16, scope: !3489)
!3491 = !DILocation(line: 189, column: 13, scope: !3489)
!3492 = !DILocation(line: 190, column: 9, scope: !3489)
!3493 = !DILocation(line: 191, column: 11, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3486, file: !251, line: 191, column: 11)
!3495 = !DILocation(line: 191, column: 11, scope: !3486)
!3496 = !DILocation(line: 206, column: 7, scope: !252)
!3497 = !DILocation(line: 207, column: 25, scope: !252)
!3498 = !DILocation(line: 0, scope: !3450, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 207, column: 10, scope: !252)
!3500 = !DILocation(line: 53, column: 10, scope: !3458, inlinedAt: !3499)
!3501 = !DILocation(line: 192, column: 9, scope: !3494)
!3502 = !DILocation(line: 200, column: 69, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !251, line: 200, column: 11)
!3504 = distinct !DILexicalBlock(scope: !3482, file: !251, line: 195, column: 5)
!3505 = !DILocation(line: 201, column: 11, scope: !3503)
!3506 = !DILocation(line: 200, column: 11, scope: !3504)
!3507 = !DILocation(line: 202, column: 9, scope: !3503)
!3508 = !DILocation(line: 203, column: 14, scope: !3504)
!3509 = !DILocation(line: 203, column: 18, scope: !3504)
!3510 = !DILocation(line: 203, column: 9, scope: !3504)
!3511 = !DILocation(line: 53, column: 8, scope: !3458, inlinedAt: !3499)
!3512 = !DILocation(line: 57, column: 7, scope: !3461, inlinedAt: !3499)
!3513 = !DILocation(line: 58, column: 7, scope: !3461, inlinedAt: !3499)
!3514 = !DILocation(line: 61, column: 7, scope: !3450, inlinedAt: !3499)
!3515 = !DILocation(line: 62, column: 8, scope: !3465, inlinedAt: !3499)
!3516 = !DILocation(line: 62, column: 10, scope: !3465, inlinedAt: !3499)
!3517 = !DILocation(line: 63, column: 5, scope: !3465, inlinedAt: !3499)
!3518 = !DILocation(line: 207, column: 3, scope: !252)
!3519 = distinct !DISubprogram(name: "xcharalloc", scope: !251, file: !251, line: 216, type: !2657, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3520)
!3520 = !{!3521}
!3521 = !DILocalVariable(name: "n", arg: 1, scope: !3519, file: !251, line: 216, type: !131)
!3522 = !DILocation(line: 0, scope: !3519)
!3523 = !DILocation(line: 0, scope: !3417, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 218, column: 10, scope: !3519)
!3525 = !DILocation(line: 41, column: 13, scope: !3417, inlinedAt: !3524)
!3526 = !DILocation(line: 42, column: 8, scope: !3426, inlinedAt: !3524)
!3527 = !DILocation(line: 42, column: 10, scope: !3426, inlinedAt: !3524)
!3528 = !DILocation(line: 43, column: 5, scope: !3426, inlinedAt: !3524)
!3529 = !DILocation(line: 218, column: 3, scope: !3519)
!3530 = distinct !DISubprogram(name: "x2realloc", scope: !248, file: !248, line: 74, type: !3531, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!16, !16, !255}
!3533 = !{!3534, !3535}
!3534 = !DILocalVariable(name: "p", arg: 1, scope: !3530, file: !248, line: 74, type: !16)
!3535 = !DILocalVariable(name: "pn", arg: 2, scope: !3530, file: !248, line: 74, type: !255)
!3536 = !DILocation(line: 0, scope: !3530)
!3537 = !DILocation(line: 0, scope: !252, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 76, column: 10, scope: !3530)
!3539 = !DILocation(line: 176, column: 14, scope: !252, inlinedAt: !3538)
!3540 = !DILocation(line: 178, column: 9, scope: !3482, inlinedAt: !3538)
!3541 = !DILocation(line: 178, column: 7, scope: !252, inlinedAt: !3538)
!3542 = !DILocation(line: 180, column: 13, scope: !3485, inlinedAt: !3538)
!3543 = !DILocation(line: 180, column: 11, scope: !3486, inlinedAt: !3538)
!3544 = !DILocation(line: 191, column: 11, scope: !3494, inlinedAt: !3538)
!3545 = !DILocation(line: 191, column: 11, scope: !3486, inlinedAt: !3538)
!3546 = !DILocation(line: 192, column: 9, scope: !3494, inlinedAt: !3538)
!3547 = !DILocation(line: 201, column: 11, scope: !3503, inlinedAt: !3538)
!3548 = !DILocation(line: 200, column: 11, scope: !3504, inlinedAt: !3538)
!3549 = !DILocation(line: 202, column: 9, scope: !3503, inlinedAt: !3538)
!3550 = !DILocation(line: 203, column: 14, scope: !3504, inlinedAt: !3538)
!3551 = !DILocation(line: 203, column: 18, scope: !3504, inlinedAt: !3538)
!3552 = !DILocation(line: 203, column: 9, scope: !3504, inlinedAt: !3538)
!3553 = !DILocation(line: 0, scope: !3450, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 207, column: 10, scope: !252, inlinedAt: !3538)
!3555 = !DILocation(line: 53, column: 10, scope: !3458, inlinedAt: !3554)
!3556 = !DILocation(line: 206, column: 7, scope: !252, inlinedAt: !3538)
!3557 = !DILocation(line: 61, column: 7, scope: !3450, inlinedAt: !3554)
!3558 = !DILocation(line: 62, column: 8, scope: !3465, inlinedAt: !3554)
!3559 = !DILocation(line: 62, column: 10, scope: !3465, inlinedAt: !3554)
!3560 = !DILocation(line: 63, column: 5, scope: !3465, inlinedAt: !3554)
!3561 = !DILocation(line: 76, column: 3, scope: !3530)
!3562 = distinct !DISubprogram(name: "xzalloc", scope: !248, file: !248, line: 84, type: !3418, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3563)
!3563 = !{!3564}
!3564 = !DILocalVariable(name: "n", arg: 1, scope: !3562, file: !248, line: 84, type: !131)
!3565 = !DILocation(line: 0, scope: !3562)
!3566 = !DILocalVariable(name: "n", arg: 1, scope: !3567, file: !248, line: 93, type: !131)
!3567 = distinct !DISubprogram(name: "xcalloc", scope: !248, file: !248, line: 93, type: !3405, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3568)
!3568 = !{!3566, !3569, !3570}
!3569 = !DILocalVariable(name: "s", arg: 2, scope: !3567, file: !248, line: 93, type: !131)
!3570 = !DILocalVariable(name: "p", scope: !3567, file: !248, line: 95, type: !16)
!3571 = !DILocation(line: 0, scope: !3567, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 86, column: 10, scope: !3562)
!3573 = !DILocation(line: 100, column: 7, scope: !3574, inlinedAt: !3572)
!3574 = distinct !DILexicalBlock(scope: !3567, file: !248, line: 100, column: 7)
!3575 = !DILocation(line: 101, column: 7, scope: !3574, inlinedAt: !3572)
!3576 = !DILocation(line: 101, column: 18, scope: !3574, inlinedAt: !3572)
!3577 = !DILocation(line: 101, column: 16, scope: !3574, inlinedAt: !3572)
!3578 = !DILocation(line: 100, column: 7, scope: !3567, inlinedAt: !3572)
!3579 = !DILocation(line: 102, column: 5, scope: !3574, inlinedAt: !3572)
!3580 = !DILocation(line: 86, column: 3, scope: !3562)
!3581 = !DILocation(line: 0, scope: !3567)
!3582 = !DILocation(line: 100, column: 7, scope: !3574)
!3583 = !DILocation(line: 101, column: 7, scope: !3574)
!3584 = !DILocation(line: 101, column: 18, scope: !3574)
!3585 = !DILocation(line: 101, column: 16, scope: !3574)
!3586 = !DILocation(line: 100, column: 7, scope: !3567)
!3587 = !DILocation(line: 102, column: 5, scope: !3574)
!3588 = !DILocation(line: 103, column: 3, scope: !3567)
!3589 = distinct !DISubprogram(name: "xmemdup", scope: !248, file: !248, line: 111, type: !3590, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3594)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!16, !3592, !131}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3594 = !{!3595, !3596}
!3595 = !DILocalVariable(name: "p", arg: 1, scope: !3589, file: !248, line: 111, type: !3592)
!3596 = !DILocalVariable(name: "s", arg: 2, scope: !3589, file: !248, line: 111, type: !131)
!3597 = !DILocation(line: 0, scope: !3589)
!3598 = !DILocation(line: 0, scope: !3417, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 113, column: 18, scope: !3589)
!3600 = !DILocation(line: 41, column: 13, scope: !3417, inlinedAt: !3599)
!3601 = !DILocation(line: 42, column: 8, scope: !3426, inlinedAt: !3599)
!3602 = !DILocation(line: 42, column: 10, scope: !3426, inlinedAt: !3599)
!3603 = !DILocation(line: 43, column: 5, scope: !3426, inlinedAt: !3599)
!3604 = !DILocalVariable(name: "__dest", arg: 1, scope: !3605, file: !2184, line: 26, type: !3608)
!3605 = distinct !DISubprogram(name: "memcpy", scope: !2184, file: !2184, line: 26, type: !3606, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3610)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!16, !3608, !3609, !131}
!3608 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!3609 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3592)
!3610 = !{!3604, !3611, !3612}
!3611 = !DILocalVariable(name: "__src", arg: 2, scope: !3605, file: !2184, line: 26, type: !3609)
!3612 = !DILocalVariable(name: "__len", arg: 3, scope: !3605, file: !2184, line: 26, type: !131)
!3613 = !DILocation(line: 0, scope: !3605, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 113, column: 10, scope: !3589)
!3615 = !DILocation(line: 29, column: 10, scope: !3605, inlinedAt: !3614)
!3616 = !DILocation(line: 113, column: 3, scope: !3589)
!3617 = distinct !DISubprogram(name: "xstrdup", scope: !248, file: !248, line: 119, type: !1170, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3618)
!3618 = !{!3619}
!3619 = !DILocalVariable(name: "string", arg: 1, scope: !3617, file: !248, line: 119, type: !45)
!3620 = !DILocation(line: 0, scope: !3617)
!3621 = !DILocation(line: 121, column: 27, scope: !3617)
!3622 = !DILocation(line: 121, column: 43, scope: !3617)
!3623 = !DILocation(line: 0, scope: !3589, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 121, column: 10, scope: !3617)
!3625 = !DILocation(line: 0, scope: !3417, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 113, column: 18, scope: !3589, inlinedAt: !3624)
!3627 = !DILocation(line: 41, column: 13, scope: !3417, inlinedAt: !3626)
!3628 = !DILocation(line: 42, column: 8, scope: !3426, inlinedAt: !3626)
!3629 = !DILocation(line: 42, column: 10, scope: !3426, inlinedAt: !3626)
!3630 = !DILocation(line: 43, column: 5, scope: !3426, inlinedAt: !3626)
!3631 = !DILocation(line: 0, scope: !3605, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 113, column: 10, scope: !3589, inlinedAt: !3624)
!3633 = !DILocation(line: 29, column: 10, scope: !3605, inlinedAt: !3632)
!3634 = !DILocation(line: 121, column: 3, scope: !3617)
!3635 = distinct !DISubprogram(name: "xalloc_die", scope: !265, file: !265, line: 32, type: !698, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !69)
!3636 = !DILocation(line: 34, column: 10, scope: !3635)
!3637 = !DILocation(line: 34, column: 33, scope: !3635)
!3638 = !DILocation(line: 34, column: 3, scope: !3635)
!3639 = !DILocation(line: 40, column: 3, scope: !3635)
!3640 = distinct !DISubprogram(name: "xstrtod", scope: !267, file: !267, line: 44, type: !3641, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3647)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!38, !45, !3643, !1211, !3644}
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!35, !45, !823}
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653, !3654}
!3648 = !DILocalVariable(name: "str", arg: 1, scope: !3640, file: !267, line: 44, type: !45)
!3649 = !DILocalVariable(name: "ptr", arg: 2, scope: !3640, file: !267, line: 44, type: !3643)
!3650 = !DILocalVariable(name: "result", arg: 3, scope: !3640, file: !267, line: 44, type: !1211)
!3651 = !DILocalVariable(name: "convert", arg: 4, scope: !3640, file: !267, line: 45, type: !3644)
!3652 = !DILocalVariable(name: "val", scope: !3640, file: !267, line: 47, type: !35)
!3653 = !DILocalVariable(name: "terminator", scope: !3640, file: !267, line: 48, type: !14)
!3654 = !DILocalVariable(name: "ok", scope: !3640, file: !267, line: 49, type: !38)
!3655 = !DILocation(line: 0, scope: !3640)
!3656 = !DILocation(line: 48, column: 3, scope: !3640)
!3657 = !DILocation(line: 51, column: 3, scope: !3640)
!3658 = !DILocation(line: 51, column: 9, scope: !3640)
!3659 = !DILocation(line: 52, column: 9, scope: !3640)
!3660 = !DILocation(line: 55, column: 7, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3640, file: !267, line: 55, column: 7)
!3662 = !DILocation(line: 55, column: 18, scope: !3661)
!3663 = !DILocation(line: 55, column: 25, scope: !3661)
!3664 = !DILocation(line: 55, column: 33, scope: !3661)
!3665 = !DILocation(line: 55, column: 41, scope: !3661)
!3666 = !DILocation(line: 55, column: 44, scope: !3661)
!3667 = !DILocation(line: 55, column: 56, scope: !3661)
!3668 = !DILocation(line: 55, column: 7, scope: !3640)
!3669 = !DILocation(line: 62, column: 15, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !267, line: 62, column: 11)
!3671 = distinct !DILexicalBlock(scope: !3661, file: !267, line: 58, column: 5)
!3672 = !DILocation(line: 62, column: 20, scope: !3670)
!3673 = !DILocation(line: 62, column: 23, scope: !3670)
!3674 = !DILocation(line: 62, column: 29, scope: !3670)
!3675 = !DILocation(line: 62, column: 11, scope: !3671)
!3676 = !DILocation(line: 66, column: 11, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3640, file: !267, line: 66, column: 7)
!3678 = !DILocation(line: 66, column: 7, scope: !3640)
!3679 = !DILocation(line: 67, column: 10, scope: !3677)
!3680 = !DILocation(line: 67, column: 5, scope: !3677)
!3681 = !DILocation(line: 69, column: 11, scope: !3640)
!3682 = !DILocation(line: 71, column: 1, scope: !3640)
!3683 = !DILocation(line: 70, column: 3, scope: !3640)
!3684 = distinct !DISubprogram(name: "rpl_calloc", scope: !269, file: !269, line: 42, type: !3405, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !3685)
!3685 = !{!3686, !3687, !3688, !3689}
!3686 = !DILocalVariable(name: "n", arg: 1, scope: !3684, file: !269, line: 42, type: !131)
!3687 = !DILocalVariable(name: "s", arg: 2, scope: !3684, file: !269, line: 42, type: !131)
!3688 = !DILocalVariable(name: "result", scope: !3684, file: !269, line: 44, type: !16)
!3689 = !DILocalVariable(name: "bytes", scope: !3690, file: !269, line: 56, type: !131)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !269, line: 53, column: 5)
!3691 = distinct !DILexicalBlock(scope: !3684, file: !269, line: 47, column: 7)
!3692 = !DILocation(line: 0, scope: !3684)
!3693 = !DILocation(line: 47, column: 9, scope: !3691)
!3694 = !DILocation(line: 47, column: 14, scope: !3691)
!3695 = !DILocation(line: 0, scope: !3690)
!3696 = !DILocation(line: 57, column: 21, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3690, file: !269, line: 57, column: 11)
!3698 = !DILocation(line: 57, column: 11, scope: !3690)
!3699 = !DILocation(line: 59, column: 11, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3697, file: !269, line: 58, column: 9)
!3701 = !DILocation(line: 59, column: 17, scope: !3700)
!3702 = !DILocation(line: 65, column: 12, scope: !3684)
!3703 = !DILocation(line: 72, column: 3, scope: !3684)
!3704 = !DILocation(line: 73, column: 1, scope: !3684)
!3705 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !271, file: !271, line: 86, type: !3706, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !3720)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!131, !3708, !45, !131, !3709}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1937, line: 6, baseType: !3711)
!3711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1939, line: 21, baseType: !3712)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1939, line: 13, size: 64, elements: !3713)
!3713 = !{!3714, !3715}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3712, file: !1939, line: 15, baseType: !22, size: 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3712, file: !1939, line: 20, baseType: !3716, size: 32, offset: 32)
!3716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3712, file: !1939, line: 16, size: 32, elements: !3717)
!3717 = !{!3718, !3719}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3716, file: !1939, line: 18, baseType: !7, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3716, file: !1939, line: 19, baseType: !1948, size: 32)
!3720 = !{!3721, !3722, !3723, !3724, !3725, !3726, !3727}
!3721 = !DILocalVariable(name: "pwc", arg: 1, scope: !3705, file: !271, line: 86, type: !3708)
!3722 = !DILocalVariable(name: "s", arg: 2, scope: !3705, file: !271, line: 86, type: !45)
!3723 = !DILocalVariable(name: "n", arg: 3, scope: !3705, file: !271, line: 86, type: !131)
!3724 = !DILocalVariable(name: "ps", arg: 4, scope: !3705, file: !271, line: 86, type: !3709)
!3725 = !DILocalVariable(name: "ret", scope: !3705, file: !271, line: 88, type: !131)
!3726 = !DILocalVariable(name: "wc", scope: !3705, file: !271, line: 89, type: !1953)
!3727 = !DILocalVariable(name: "uc", scope: !3728, file: !271, line: 156, type: !1815)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !271, line: 155, column: 5)
!3729 = distinct !DILexicalBlock(scope: !3705, file: !271, line: 154, column: 7)
!3730 = !DILocation(line: 0, scope: !3705)
!3731 = !DILocation(line: 89, column: 3, scope: !3705)
!3732 = !DILocation(line: 105, column: 9, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3705, file: !271, line: 105, column: 7)
!3734 = !DILocation(line: 105, column: 7, scope: !3705)
!3735 = !DILocation(line: 145, column: 9, scope: !3705)
!3736 = !DILocation(line: 154, column: 19, scope: !3729)
!3737 = !DILocation(line: 154, column: 26, scope: !3729)
!3738 = !DILocation(line: 154, column: 41, scope: !3729)
!3739 = !DILocation(line: 154, column: 7, scope: !3705)
!3740 = !DILocation(line: 156, column: 26, scope: !3728)
!3741 = !DILocation(line: 0, scope: !3728)
!3742 = !DILocation(line: 157, column: 14, scope: !3728)
!3743 = !DILocation(line: 157, column: 12, scope: !3728)
!3744 = !DILocation(line: 163, column: 1, scope: !3705)
!3745 = !DISubprogram(name: "mbrtowc", scope: !2617, file: !2617, line: 296, type: !3746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!133, !57, !45, !133, !3748}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3749 = distinct !DISubprogram(name: "str2sig", scope: !184, file: !184, line: 304, type: !3750, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!22, !45, !57}
!3752 = !{!3753, !3754}
!3753 = !DILocalVariable(name: "signame", arg: 1, scope: !3749, file: !184, line: 304, type: !45)
!3754 = !DILocalVariable(name: "signum", arg: 2, scope: !3749, file: !184, line: 304, type: !57)
!3755 = !DILocation(line: 0, scope: !3749)
!3756 = !DILocalVariable(name: "signame", arg: 1, scope: !3757, file: !184, line: 261, type: !45)
!3757 = distinct !DISubprogram(name: "str2signum", scope: !184, file: !184, line: 261, type: !3758, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!22, !45}
!3760 = !{!3756, !3761, !3764, !3765, !3767, !3769, !3770, !3771, !3774}
!3761 = !DILocalVariable(name: "endp", scope: !3762, file: !184, line: 265, type: !14)
!3762 = distinct !DILexicalBlock(scope: !3763, file: !184, line: 264, column: 5)
!3763 = distinct !DILexicalBlock(scope: !3757, file: !184, line: 263, column: 7)
!3764 = !DILocalVariable(name: "n", scope: !3762, file: !184, line: 266, type: !239)
!3765 = !DILocalVariable(name: "i", scope: !3766, file: !184, line: 272, type: !7)
!3766 = distinct !DILexicalBlock(scope: !3763, file: !184, line: 271, column: 5)
!3767 = !DILocalVariable(name: "endp", scope: !3768, file: !184, line: 278, type: !14)
!3768 = distinct !DILexicalBlock(scope: !3766, file: !184, line: 277, column: 7)
!3769 = !DILocalVariable(name: "rtmin", scope: !3768, file: !184, line: 279, type: !22)
!3770 = !DILocalVariable(name: "rtmax", scope: !3768, file: !184, line: 280, type: !22)
!3771 = !DILocalVariable(name: "n", scope: !3772, file: !184, line: 284, type: !239)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !184, line: 283, column: 11)
!3773 = distinct !DILexicalBlock(scope: !3768, file: !184, line: 282, column: 13)
!3774 = !DILocalVariable(name: "n", scope: !3775, file: !184, line: 290, type: !239)
!3775 = distinct !DILexicalBlock(scope: !3776, file: !184, line: 289, column: 11)
!3776 = distinct !DILexicalBlock(scope: !3773, file: !184, line: 288, column: 18)
!3777 = !DILocation(line: 0, scope: !3757, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 306, column: 13, scope: !3749)
!3779 = !DILocation(line: 263, column: 7, scope: !3763, inlinedAt: !3778)
!3780 = !DILocation(line: 263, column: 7, scope: !3757, inlinedAt: !3778)
!3781 = !DILocation(line: 265, column: 7, scope: !3762, inlinedAt: !3778)
!3782 = !DILocation(line: 0, scope: !3762, inlinedAt: !3778)
!3783 = !DILocation(line: 266, column: 20, scope: !3762, inlinedAt: !3778)
!3784 = !DILocation(line: 267, column: 14, scope: !3785, inlinedAt: !3778)
!3785 = distinct !DILexicalBlock(scope: !3762, file: !184, line: 267, column: 11)
!3786 = !DILocation(line: 267, column: 13, scope: !3785, inlinedAt: !3778)
!3787 = !DILocation(line: 267, column: 19, scope: !3785, inlinedAt: !3778)
!3788 = !DILocation(line: 269, column: 5, scope: !3763, inlinedAt: !3778)
!3789 = !DILocation(line: 273, column: 41, scope: !3790, inlinedAt: !3778)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !184, line: 273, column: 7)
!3791 = distinct !DILexicalBlock(scope: !3766, file: !184, line: 273, column: 7)
!3792 = !DILocation(line: 0, scope: !3766, inlinedAt: !3778)
!3793 = !DILocation(line: 273, column: 21, scope: !3790, inlinedAt: !3778)
!3794 = !DILocation(line: 273, column: 7, scope: !3791, inlinedAt: !3778)
!3795 = distinct !{!3795, !3794, !3796, !739}
!3796 = !DILocation(line: 275, column: 35, scope: !3791, inlinedAt: !3778)
!3797 = !DILocation(line: 274, column: 21, scope: !3798, inlinedAt: !3778)
!3798 = distinct !DILexicalBlock(scope: !3790, file: !184, line: 274, column: 13)
!3799 = !DILocation(line: 274, column: 13, scope: !3798, inlinedAt: !3778)
!3800 = !DILocation(line: 274, column: 53, scope: !3798, inlinedAt: !3778)
!3801 = !DILocation(line: 274, column: 13, scope: !3790, inlinedAt: !3778)
!3802 = !DILocation(line: 273, column: 19, scope: !3790, inlinedAt: !3778)
!3803 = !DILocation(line: 275, column: 35, scope: !3798, inlinedAt: !3778)
!3804 = !{!3805, !873, i64 0}
!3805 = !{!"numname", !873, i64 0, !691, i64 4}
!3806 = !DILocation(line: 278, column: 9, scope: !3768, inlinedAt: !3778)
!3807 = !DILocation(line: 279, column: 21, scope: !3768, inlinedAt: !3778)
!3808 = !DILocation(line: 0, scope: !3768, inlinedAt: !3778)
!3809 = !DILocation(line: 280, column: 21, scope: !3768, inlinedAt: !3778)
!3810 = !DILocation(line: 282, column: 15, scope: !3773, inlinedAt: !3778)
!3811 = !DILocation(line: 282, column: 23, scope: !3773, inlinedAt: !3778)
!3812 = !DILocation(line: 282, column: 26, scope: !3773, inlinedAt: !3778)
!3813 = !DILocation(line: 282, column: 56, scope: !3773, inlinedAt: !3778)
!3814 = !DILocation(line: 282, column: 13, scope: !3768, inlinedAt: !3778)
!3815 = !DILocation(line: 284, column: 42, scope: !3772, inlinedAt: !3778)
!3816 = !DILocation(line: 284, column: 26, scope: !3772, inlinedAt: !3778)
!3817 = !DILocation(line: 0, scope: !3772, inlinedAt: !3778)
!3818 = !DILocation(line: 285, column: 20, scope: !3819, inlinedAt: !3778)
!3819 = distinct !DILexicalBlock(scope: !3772, file: !184, line: 285, column: 17)
!3820 = !DILocation(line: 285, column: 19, scope: !3819, inlinedAt: !3778)
!3821 = !DILocation(line: 285, column: 25, scope: !3819, inlinedAt: !3778)
!3822 = !DILocation(line: 285, column: 49, scope: !3819, inlinedAt: !3778)
!3823 = !DILocation(line: 285, column: 43, scope: !3819, inlinedAt: !3778)
!3824 = !DILocation(line: 285, column: 40, scope: !3819, inlinedAt: !3778)
!3825 = !DILocation(line: 285, column: 17, scope: !3772, inlinedAt: !3778)
!3826 = !DILocation(line: 288, column: 20, scope: !3776, inlinedAt: !3778)
!3827 = !DILocation(line: 288, column: 28, scope: !3776, inlinedAt: !3778)
!3828 = !DILocation(line: 288, column: 31, scope: !3776, inlinedAt: !3778)
!3829 = !DILocation(line: 288, column: 61, scope: !3776, inlinedAt: !3778)
!3830 = !DILocation(line: 288, column: 18, scope: !3773, inlinedAt: !3778)
!3831 = !DILocation(line: 290, column: 42, scope: !3775, inlinedAt: !3778)
!3832 = !DILocation(line: 290, column: 26, scope: !3775, inlinedAt: !3778)
!3833 = !DILocation(line: 0, scope: !3775, inlinedAt: !3778)
!3834 = !DILocation(line: 291, column: 20, scope: !3835, inlinedAt: !3778)
!3835 = distinct !DILexicalBlock(scope: !3775, file: !184, line: 291, column: 17)
!3836 = !DILocation(line: 291, column: 19, scope: !3835, inlinedAt: !3778)
!3837 = !DILocation(line: 291, column: 25, scope: !3835, inlinedAt: !3778)
!3838 = !DILocation(line: 291, column: 34, scope: !3835, inlinedAt: !3778)
!3839 = !DILocation(line: 291, column: 28, scope: !3835, inlinedAt: !3778)
!3840 = !DILocation(line: 291, column: 42, scope: !3835, inlinedAt: !3778)
!3841 = !DILocation(line: 291, column: 47, scope: !3835, inlinedAt: !3778)
!3842 = !DILocation(line: 294, column: 7, scope: !3766, inlinedAt: !3778)
!3843 = !DILocation(line: 0, scope: !3773, inlinedAt: !3778)
!3844 = !DILocation(line: 297, column: 3, scope: !3757, inlinedAt: !3778)
!3845 = !DILocation(line: 306, column: 11, scope: !3749)
!3846 = !DILocation(line: 307, column: 10, scope: !3749)
!3847 = !DILocation(line: 307, column: 3, scope: !3749)
!3848 = distinct !DISubprogram(name: "sig2str", scope: !184, file: !184, line: 315, type: !3849, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!22, !22, !14}
!3851 = !{!3852, !3853, !3854, !3855, !3857, !3858, !3859}
!3852 = !DILocalVariable(name: "signum", arg: 1, scope: !3848, file: !184, line: 315, type: !22)
!3853 = !DILocalVariable(name: "signame", arg: 2, scope: !3848, file: !184, line: 315, type: !14)
!3854 = !DILocalVariable(name: "i", scope: !3848, file: !184, line: 317, type: !7)
!3855 = !DILocalVariable(name: "rtmin", scope: !3856, file: !184, line: 326, type: !22)
!3856 = distinct !DILexicalBlock(scope: !3848, file: !184, line: 325, column: 3)
!3857 = !DILocalVariable(name: "rtmax", scope: !3856, file: !184, line: 327, type: !22)
!3858 = !DILocalVariable(name: "base", scope: !3856, file: !184, line: 328, type: !22)
!3859 = !DILocalVariable(name: "delta", scope: !3856, file: !184, line: 328, type: !22)
!3860 = !DILocation(line: 0, scope: !3848)
!3861 = !DILocation(line: 318, column: 3, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3848, file: !184, line: 318, column: 3)
!3863 = !DILocation(line: 318, column: 37, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3862, file: !184, line: 318, column: 3)
!3865 = !DILocation(line: 319, column: 26, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3864, file: !184, line: 319, column: 9)
!3867 = !DILocation(line: 319, column: 30, scope: !3866)
!3868 = !DILocation(line: 319, column: 9, scope: !3864)
!3869 = !DILocation(line: 318, column: 15, scope: !3864)
!3870 = !DILocation(line: 321, column: 26, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3866, file: !184, line: 320, column: 7)
!3872 = !DILocalVariable(name: "__dest", arg: 1, scope: !3873, file: !2184, line: 77, type: !3876)
!3873 = distinct !DISubprogram(name: "strcpy", scope: !2184, file: !2184, line: 77, type: !3874, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !3878)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!14, !3876, !3877}
!3876 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!3877 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!3878 = !{!3872, !3879}
!3879 = !DILocalVariable(name: "__src", arg: 2, scope: !3873, file: !2184, line: 77, type: !3877)
!3880 = !DILocation(line: 0, scope: !3873, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 321, column: 9, scope: !3871)
!3882 = !DILocation(line: 79, column: 10, scope: !3873, inlinedAt: !3881)
!3883 = !DILocation(line: 322, column: 9, scope: !3871)
!3884 = !DILocation(line: 326, column: 17, scope: !3856)
!3885 = !DILocation(line: 0, scope: !3856)
!3886 = !DILocation(line: 327, column: 17, scope: !3856)
!3887 = !DILocation(line: 330, column: 18, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3856, file: !184, line: 330, column: 9)
!3889 = !DILocation(line: 330, column: 28, scope: !3888)
!3890 = !DILocation(line: 333, column: 34, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3856, file: !184, line: 333, column: 9)
!3892 = !DILocation(line: 333, column: 43, scope: !3891)
!3893 = !DILocation(line: 333, column: 25, scope: !3891)
!3894 = !DILocation(line: 333, column: 16, scope: !3891)
!3895 = !DILocation(line: 0, scope: !3873, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 340, column: 9, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3891, file: !184, line: 339, column: 7)
!3898 = !DILocation(line: 0, scope: !3873, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 335, column: 9, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3891, file: !184, line: 334, column: 7)
!3901 = !DILocation(line: 333, column: 9, scope: !3856)
!3902 = !DILocation(line: 79, column: 10, scope: !3873, inlinedAt: !3899)
!3903 = !DILocation(line: 337, column: 7, scope: !3900)
!3904 = !DILocation(line: 79, column: 10, scope: !3873, inlinedAt: !3896)
!3905 = !DILocation(line: 0, scope: !3891)
!3906 = !DILocation(line: 344, column: 20, scope: !3856)
!3907 = !DILocation(line: 345, column: 15, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3856, file: !184, line: 345, column: 9)
!3909 = !DILocation(line: 345, column: 9, scope: !3856)
!3910 = !DILocation(line: 346, column: 7, scope: !3908)
!3911 = !DILocation(line: 349, column: 1, scope: !3848)
!3912 = !DILocation(line: 318, column: 17, scope: !3864)
!3913 = distinct !{!3913, !3861, !3914, !739}
!3914 = !DILocation(line: 323, column: 7, scope: !3862)
!3915 = distinct !DISubprogram(name: "c_strtod", scope: !198, file: !198, line: 65, type: !3645, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !3916)
!3916 = !{!3917, !3918, !3919, !3920}
!3917 = !DILocalVariable(name: "nptr", arg: 1, scope: !3915, file: !198, line: 65, type: !45)
!3918 = !DILocalVariable(name: "endptr", arg: 2, scope: !3915, file: !198, line: 65, type: !823)
!3919 = !DILocalVariable(name: "r", scope: !3915, file: !198, line: 67, type: !35)
!3920 = !DILocalVariable(name: "locale", scope: !3915, file: !198, line: 73, type: !200)
!3921 = !DILocation(line: 0, scope: !3915)
!3922 = !DILocation(line: 57, column: 8, scope: !3923, inlinedAt: !3927)
!3923 = distinct !DILexicalBlock(scope: !3924, file: !198, line: 57, column: 7)
!3924 = distinct !DISubprogram(name: "c_locale", scope: !198, file: !198, line: 55, type: !3925, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !69)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!200}
!3927 = distinct !DILocation(line: 73, column: 21, scope: !3915)
!3928 = !DILocation(line: 57, column: 7, scope: !3924, inlinedAt: !3927)
!3929 = !DILocation(line: 58, column: 22, scope: !3923, inlinedAt: !3927)
!3930 = !DILocation(line: 58, column: 20, scope: !3923, inlinedAt: !3927)
!3931 = !DILocation(line: 58, column: 5, scope: !3923, inlinedAt: !3927)
!3932 = !DILocation(line: 59, column: 10, scope: !3924, inlinedAt: !3927)
!3933 = !DILocation(line: 74, column: 8, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3915, file: !198, line: 74, column: 7)
!3935 = !DILocation(line: 74, column: 7, scope: !3915)
!3936 = !DILocation(line: 76, column: 11, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3938, file: !198, line: 76, column: 11)
!3938 = distinct !DILexicalBlock(scope: !3934, file: !198, line: 75, column: 5)
!3939 = !DILocation(line: 76, column: 11, scope: !3938)
!3940 = !DILocation(line: 77, column: 17, scope: !3937)
!3941 = !DILocation(line: 77, column: 9, scope: !3937)
!3942 = !DILocation(line: 83, column: 7, scope: !3915)
!3943 = !DILocation(line: 134, column: 3, scope: !3915)
!3944 = !DILocation(line: 135, column: 1, scope: !3915)
!3945 = !DISubprogram(name: "newlocale", scope: !817, file: !817, line: 141, type: !3946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!204, !22, !45, !204}
!3948 = !DISubprogram(name: "strtod_l", scope: !1173, file: !1173, line: 295, type: !3949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!35, !45, !823, !204}
!3951 = distinct !DISubprogram(name: "close_stream", scope: !274, file: !274, line: 56, type: !3952, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3988)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!22, !3954}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3249, line: 7, baseType: !3956)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !769, line: 49, size: 1728, elements: !3957)
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3956, file: !769, line: 51, baseType: !22, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3956, file: !769, line: 54, baseType: !14, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3956, file: !769, line: 55, baseType: !14, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3956, file: !769, line: 56, baseType: !14, size: 64, offset: 192)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3956, file: !769, line: 57, baseType: !14, size: 64, offset: 256)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3956, file: !769, line: 58, baseType: !14, size: 64, offset: 320)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3956, file: !769, line: 59, baseType: !14, size: 64, offset: 384)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3956, file: !769, line: 60, baseType: !14, size: 64, offset: 448)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3956, file: !769, line: 61, baseType: !14, size: 64, offset: 512)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3956, file: !769, line: 64, baseType: !14, size: 64, offset: 576)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3956, file: !769, line: 65, baseType: !14, size: 64, offset: 640)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3956, file: !769, line: 66, baseType: !14, size: 64, offset: 704)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3956, file: !769, line: 68, baseType: !784, size: 64, offset: 768)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3956, file: !769, line: 70, baseType: !3972, size: 64, offset: 832)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3956, file: !769, line: 72, baseType: !22, size: 32, offset: 896)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3956, file: !769, line: 73, baseType: !22, size: 32, offset: 928)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3956, file: !769, line: 74, baseType: !790, size: 64, offset: 960)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3956, file: !769, line: 77, baseType: !130, size: 16, offset: 1024)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3956, file: !769, line: 78, baseType: !23, size: 8, offset: 1040)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3956, file: !769, line: 79, baseType: !794, size: 8, offset: 1048)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3956, file: !769, line: 81, baseType: !798, size: 64, offset: 1088)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3956, file: !769, line: 89, baseType: !801, size: 64, offset: 1152)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3956, file: !769, line: 91, baseType: !803, size: 64, offset: 1216)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3956, file: !769, line: 92, baseType: !806, size: 64, offset: 1280)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3956, file: !769, line: 93, baseType: !3972, size: 64, offset: 1344)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3956, file: !769, line: 94, baseType: !16, size: 64, offset: 1408)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3956, file: !769, line: 95, baseType: !131, size: 64, offset: 1472)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3956, file: !769, line: 96, baseType: !22, size: 32, offset: 1536)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3956, file: !769, line: 98, baseType: !813, size: 160, offset: 1568)
!3988 = !{!3989, !3990, !3992, !3993}
!3989 = !DILocalVariable(name: "stream", arg: 1, scope: !3951, file: !274, line: 56, type: !3954)
!3990 = !DILocalVariable(name: "some_pending", scope: !3951, file: !274, line: 58, type: !3991)
!3991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3992 = !DILocalVariable(name: "prev_fail", scope: !3951, file: !274, line: 59, type: !3991)
!3993 = !DILocalVariable(name: "fclose_fail", scope: !3951, file: !274, line: 60, type: !3991)
!3994 = !DILocation(line: 0, scope: !3951)
!3995 = !DILocation(line: 58, column: 30, scope: !3951)
!3996 = !DILocalVariable(name: "__stream", arg: 1, scope: !3997, file: !3998, line: 135, type: !3954)
!3997 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3998, file: !3998, line: 135, type: !3952, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3999)
!3998 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3999 = !{!3996}
!4000 = !DILocation(line: 0, scope: !3997, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 59, column: 27, scope: !3951)
!4002 = !DILocation(line: 137, column: 10, scope: !3997, inlinedAt: !4001)
!4003 = !{!4004, !873, i64 0}
!4004 = !{!"_IO_FILE", !873, i64 0, !690, i64 8, !690, i64 16, !690, i64 24, !690, i64 32, !690, i64 40, !690, i64 48, !690, i64 56, !690, i64 64, !690, i64 72, !690, i64 80, !690, i64 88, !690, i64 96, !690, i64 104, !873, i64 112, !873, i64 116, !1400, i64 120, !2176, i64 128, !691, i64 130, !691, i64 131, !690, i64 136, !1400, i64 144, !690, i64 152, !690, i64 160, !690, i64 168, !690, i64 176, !1400, i64 184, !873, i64 192, !691, i64 196}
!4005 = !DILocation(line: 59, column: 43, scope: !3951)
!4006 = !DILocation(line: 60, column: 29, scope: !3951)
!4007 = !DILocation(line: 60, column: 45, scope: !3951)
!4008 = !DILocation(line: 70, column: 17, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3951, file: !274, line: 70, column: 7)
!4010 = !DILocation(line: 58, column: 50, scope: !3951)
!4011 = !DILocation(line: 70, column: 33, scope: !4009)
!4012 = !DILocation(line: 70, column: 53, scope: !4009)
!4013 = !DILocation(line: 70, column: 59, scope: !4009)
!4014 = !DILocation(line: 70, column: 7, scope: !3951)
!4015 = !DILocation(line: 72, column: 11, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4009, file: !274, line: 71, column: 5)
!4017 = !DILocation(line: 73, column: 9, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4016, file: !274, line: 72, column: 11)
!4019 = !DILocation(line: 73, column: 15, scope: !4018)
!4020 = !DILocation(line: 78, column: 1, scope: !3951)
!4021 = distinct !DISubprogram(name: "hard_locale", scope: !276, file: !276, line: 27, type: !4022, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !4024)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!38, !22}
!4024 = !{!4025, !4026}
!4025 = !DILocalVariable(name: "category", arg: 1, scope: !4021, file: !276, line: 27, type: !22)
!4026 = !DILocalVariable(name: "locale", scope: !4021, file: !276, line: 29, type: !4027)
!4027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2056, elements: !4028)
!4028 = !{!4029}
!4029 = !DISubrange(count: 257)
!4030 = !DILocation(line: 0, scope: !4021)
!4031 = !DILocation(line: 29, column: 3, scope: !4021)
!4032 = !DILocation(line: 29, column: 8, scope: !4021)
!4033 = !DILocation(line: 31, column: 7, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4021, file: !276, line: 31, column: 7)
!4035 = !DILocation(line: 31, column: 7, scope: !4021)
!4036 = !DILocation(line: 34, column: 12, scope: !4021)
!4037 = !DILocation(line: 34, column: 38, scope: !4021)
!4038 = !DILocation(line: 34, column: 41, scope: !4021)
!4039 = !DILocation(line: 34, column: 66, scope: !4021)
!4040 = !DILocation(line: 35, column: 1, scope: !4021)
!4041 = distinct !DISubprogram(name: "locale_charset", scope: !278, file: !278, line: 831, type: !4042, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !277, retainedNodes: !4044)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!45}
!4044 = !{!4045}
!4045 = !DILocalVariable(name: "codeset", scope: !4041, file: !278, line: 833, type: !45)
!4046 = !DILocation(line: 847, column: 13, scope: !4041)
!4047 = !DILocation(line: 0, scope: !4041)
!4048 = !DILocation(line: 911, column: 15, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4041, file: !278, line: 911, column: 7)
!4050 = !DILocation(line: 911, column: 7, scope: !4041)
!4051 = !DILocation(line: 1070, column: 13, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !278, line: 1070, column: 13)
!4053 = distinct !DILexicalBlock(scope: !4054, file: !278, line: 1060, column: 7)
!4054 = distinct !DILexicalBlock(scope: !4041, file: !278, line: 1019, column: 3)
!4055 = !DILocation(line: 1070, column: 24, scope: !4052)
!4056 = !DILocation(line: 1070, column: 13, scope: !4053)
!4057 = !DILocation(line: 1158, column: 3, scope: !4041)
!4058 = !DISubprogram(name: "nl_langinfo", scope: !281, file: !281, line: 661, type: !4059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!14, !22}
!4061 = distinct !DISubprogram(name: "setlocale_null_r", scope: !667, file: !667, line: 269, type: !4062, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !666, retainedNodes: !4064)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!22, !22, !14, !131}
!4064 = !{!4065, !4066, !4067}
!4065 = !DILocalVariable(name: "category", arg: 1, scope: !4061, file: !667, line: 269, type: !22)
!4066 = !DILocalVariable(name: "buf", arg: 2, scope: !4061, file: !667, line: 269, type: !14)
!4067 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4061, file: !667, line: 269, type: !131)
!4068 = !DILocation(line: 0, scope: !4061)
!4069 = !DILocalVariable(name: "category", arg: 1, scope: !4070, file: !667, line: 91, type: !22)
!4070 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !667, file: !667, line: 91, type: !4062, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !666, retainedNodes: !4071)
!4071 = !{!4069, !4072, !4073, !4074, !4075}
!4072 = !DILocalVariable(name: "buf", arg: 2, scope: !4070, file: !667, line: 91, type: !14)
!4073 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4070, file: !667, line: 91, type: !131)
!4074 = !DILocalVariable(name: "result", scope: !4070, file: !667, line: 140, type: !45)
!4075 = !DILocalVariable(name: "length", scope: !4076, file: !667, line: 154, type: !131)
!4076 = distinct !DILexicalBlock(scope: !4077, file: !667, line: 153, column: 5)
!4077 = distinct !DILexicalBlock(scope: !4070, file: !667, line: 142, column: 7)
!4078 = !DILocation(line: 0, scope: !4070, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 274, column: 10, scope: !4061)
!4080 = !DILocalVariable(name: "category", arg: 1, scope: !4081, file: !667, line: 60, type: !22)
!4081 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !667, file: !667, line: 60, type: !4082, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !666, retainedNodes: !4084)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!45, !22}
!4084 = !{!4080, !4085}
!4085 = !DILocalVariable(name: "result", scope: !4081, file: !667, line: 62, type: !45)
!4086 = !DILocation(line: 0, scope: !4081, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 140, column: 24, scope: !4070, inlinedAt: !4079)
!4088 = !DILocation(line: 62, column: 24, scope: !4081, inlinedAt: !4087)
!4089 = !DILocation(line: 142, column: 14, scope: !4077, inlinedAt: !4079)
!4090 = !DILocation(line: 142, column: 7, scope: !4070, inlinedAt: !4079)
!4091 = !DILocation(line: 145, column: 19, scope: !4092, inlinedAt: !4079)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !667, line: 145, column: 11)
!4093 = distinct !DILexicalBlock(scope: !4077, file: !667, line: 143, column: 5)
!4094 = !DILocation(line: 145, column: 11, scope: !4093, inlinedAt: !4079)
!4095 = !DILocation(line: 149, column: 16, scope: !4092, inlinedAt: !4079)
!4096 = !DILocation(line: 149, column: 9, scope: !4092, inlinedAt: !4079)
!4097 = !DILocation(line: 154, column: 23, scope: !4076, inlinedAt: !4079)
!4098 = !DILocation(line: 0, scope: !4076, inlinedAt: !4079)
!4099 = !DILocation(line: 155, column: 18, scope: !4100, inlinedAt: !4079)
!4100 = distinct !DILexicalBlock(scope: !4076, file: !667, line: 155, column: 11)
!4101 = !DILocation(line: 155, column: 11, scope: !4076, inlinedAt: !4079)
!4102 = !DILocation(line: 157, column: 39, scope: !4103, inlinedAt: !4079)
!4103 = distinct !DILexicalBlock(scope: !4100, file: !667, line: 156, column: 9)
!4104 = !DILocalVariable(name: "__dest", arg: 1, scope: !4105, file: !2184, line: 26, type: !3608)
!4105 = distinct !DISubprogram(name: "memcpy", scope: !2184, file: !2184, line: 26, type: !3606, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !666, retainedNodes: !4106)
!4106 = !{!4104, !4107, !4108}
!4107 = !DILocalVariable(name: "__src", arg: 2, scope: !4105, file: !2184, line: 26, type: !3609)
!4108 = !DILocalVariable(name: "__len", arg: 3, scope: !4105, file: !2184, line: 26, type: !131)
!4109 = !DILocation(line: 0, scope: !4105, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 157, column: 11, scope: !4103, inlinedAt: !4079)
!4111 = !DILocation(line: 29, column: 10, scope: !4105, inlinedAt: !4110)
!4112 = !DILocation(line: 158, column: 11, scope: !4103, inlinedAt: !4079)
!4113 = !DILocation(line: 162, column: 23, scope: !4114, inlinedAt: !4079)
!4114 = distinct !DILexicalBlock(scope: !4115, file: !667, line: 162, column: 15)
!4115 = distinct !DILexicalBlock(scope: !4100, file: !667, line: 161, column: 9)
!4116 = !DILocation(line: 162, column: 15, scope: !4115, inlinedAt: !4079)
!4117 = !DILocation(line: 167, column: 44, scope: !4118, inlinedAt: !4079)
!4118 = distinct !DILexicalBlock(scope: !4114, file: !667, line: 163, column: 13)
!4119 = !DILocation(line: 0, scope: !4105, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 167, column: 15, scope: !4118, inlinedAt: !4079)
!4121 = !DILocation(line: 29, column: 10, scope: !4105, inlinedAt: !4120)
!4122 = !DILocation(line: 168, column: 15, scope: !4118, inlinedAt: !4079)
!4123 = !DILocation(line: 168, column: 32, scope: !4118, inlinedAt: !4079)
!4124 = !DILocation(line: 169, column: 13, scope: !4118, inlinedAt: !4079)
!4125 = !DILocation(line: 0, scope: !4077, inlinedAt: !4079)
!4126 = !DILocation(line: 274, column: 3, scope: !4061)
!4127 = distinct !DISubprogram(name: "setlocale_null", scope: !667, file: !667, line: 301, type: !4082, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !666, retainedNodes: !4128)
!4128 = !{!4129}
!4129 = !DILocalVariable(name: "category", arg: 1, scope: !4127, file: !667, line: 301, type: !22)
!4130 = !DILocation(line: 0, scope: !4127)
!4131 = !DILocation(line: 0, scope: !4081, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 304, column: 10, scope: !4127)
!4133 = !DILocation(line: 62, column: 24, scope: !4081, inlinedAt: !4132)
!4134 = !DILocation(line: 304, column: 3, scope: !4127)
!4135 = distinct !DISubprogram(name: "rpl_fclose", scope: !669, file: !669, line: 58, type: !4136, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !4172)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!22, !4138}
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3249, line: 7, baseType: !4140)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !769, line: 49, size: 1728, elements: !4141)
!4141 = !{!4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4140, file: !769, line: 51, baseType: !22, size: 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4140, file: !769, line: 54, baseType: !14, size: 64, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4140, file: !769, line: 55, baseType: !14, size: 64, offset: 128)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4140, file: !769, line: 56, baseType: !14, size: 64, offset: 192)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4140, file: !769, line: 57, baseType: !14, size: 64, offset: 256)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4140, file: !769, line: 58, baseType: !14, size: 64, offset: 320)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4140, file: !769, line: 59, baseType: !14, size: 64, offset: 384)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4140, file: !769, line: 60, baseType: !14, size: 64, offset: 448)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4140, file: !769, line: 61, baseType: !14, size: 64, offset: 512)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4140, file: !769, line: 64, baseType: !14, size: 64, offset: 576)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4140, file: !769, line: 65, baseType: !14, size: 64, offset: 640)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4140, file: !769, line: 66, baseType: !14, size: 64, offset: 704)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4140, file: !769, line: 68, baseType: !784, size: 64, offset: 768)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4140, file: !769, line: 70, baseType: !4156, size: 64, offset: 832)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4140, file: !769, line: 72, baseType: !22, size: 32, offset: 896)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4140, file: !769, line: 73, baseType: !22, size: 32, offset: 928)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4140, file: !769, line: 74, baseType: !790, size: 64, offset: 960)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4140, file: !769, line: 77, baseType: !130, size: 16, offset: 1024)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4140, file: !769, line: 78, baseType: !23, size: 8, offset: 1040)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4140, file: !769, line: 79, baseType: !794, size: 8, offset: 1048)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4140, file: !769, line: 81, baseType: !798, size: 64, offset: 1088)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4140, file: !769, line: 89, baseType: !801, size: 64, offset: 1152)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4140, file: !769, line: 91, baseType: !803, size: 64, offset: 1216)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4140, file: !769, line: 92, baseType: !806, size: 64, offset: 1280)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4140, file: !769, line: 93, baseType: !4156, size: 64, offset: 1344)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4140, file: !769, line: 94, baseType: !16, size: 64, offset: 1408)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4140, file: !769, line: 95, baseType: !131, size: 64, offset: 1472)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4140, file: !769, line: 96, baseType: !22, size: 32, offset: 1536)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4140, file: !769, line: 98, baseType: !813, size: 160, offset: 1568)
!4172 = !{!4173, !4174, !4175, !4176}
!4173 = !DILocalVariable(name: "fp", arg: 1, scope: !4135, file: !669, line: 58, type: !4138)
!4174 = !DILocalVariable(name: "saved_errno", scope: !4135, file: !669, line: 60, type: !22)
!4175 = !DILocalVariable(name: "fd", scope: !4135, file: !669, line: 61, type: !22)
!4176 = !DILocalVariable(name: "result", scope: !4135, file: !669, line: 62, type: !22)
!4177 = !DILocation(line: 0, scope: !4135)
!4178 = !DILocation(line: 65, column: 8, scope: !4135)
!4179 = !DILocation(line: 66, column: 10, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4135, file: !669, line: 66, column: 7)
!4181 = !DILocation(line: 66, column: 7, scope: !4135)
!4182 = !DILocation(line: 67, column: 12, scope: !4180)
!4183 = !DILocation(line: 67, column: 5, scope: !4180)
!4184 = !DILocation(line: 72, column: 9, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4135, file: !669, line: 72, column: 7)
!4186 = !DILocation(line: 72, column: 23, scope: !4185)
!4187 = !DILocation(line: 72, column: 33, scope: !4185)
!4188 = !DILocation(line: 72, column: 26, scope: !4185)
!4189 = !DILocation(line: 72, column: 59, scope: !4185)
!4190 = !DILocation(line: 73, column: 7, scope: !4185)
!4191 = !DILocation(line: 73, column: 10, scope: !4185)
!4192 = !DILocation(line: 72, column: 7, scope: !4135)
!4193 = !DILocation(line: 100, column: 12, scope: !4135)
!4194 = !DILocation(line: 105, column: 7, scope: !4135)
!4195 = !DILocation(line: 74, column: 19, scope: !4185)
!4196 = !DILocation(line: 105, column: 19, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4135, file: !669, line: 105, column: 7)
!4198 = !DILocation(line: 107, column: 13, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4197, file: !669, line: 106, column: 5)
!4200 = !DILocation(line: 109, column: 5, scope: !4199)
!4201 = !DILocation(line: 112, column: 1, scope: !4135)
!4202 = !DISubprogram(name: "fileno", scope: !764, file: !764, line: 785, type: !4203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!22, !4156}
!4205 = !DISubprogram(name: "fclose", scope: !764, file: !764, line: 213, type: !4203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!4206 = !DISubprogram(name: "lseek", scope: !1232, file: !1232, line: 334, type: !4207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!239, !22, !239, !22}
!4209 = distinct !DISubprogram(name: "rpl_fflush", scope: !671, file: !671, line: 129, type: !4210, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !4246)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!22, !4212}
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3249, line: 7, baseType: !4214)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !769, line: 49, size: 1728, elements: !4215)
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4214, file: !769, line: 51, baseType: !22, size: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4214, file: !769, line: 54, baseType: !14, size: 64, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4214, file: !769, line: 55, baseType: !14, size: 64, offset: 128)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4214, file: !769, line: 56, baseType: !14, size: 64, offset: 192)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4214, file: !769, line: 57, baseType: !14, size: 64, offset: 256)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4214, file: !769, line: 58, baseType: !14, size: 64, offset: 320)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4214, file: !769, line: 59, baseType: !14, size: 64, offset: 384)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4214, file: !769, line: 60, baseType: !14, size: 64, offset: 448)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4214, file: !769, line: 61, baseType: !14, size: 64, offset: 512)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4214, file: !769, line: 64, baseType: !14, size: 64, offset: 576)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4214, file: !769, line: 65, baseType: !14, size: 64, offset: 640)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4214, file: !769, line: 66, baseType: !14, size: 64, offset: 704)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4214, file: !769, line: 68, baseType: !784, size: 64, offset: 768)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4214, file: !769, line: 70, baseType: !4230, size: 64, offset: 832)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4214, file: !769, line: 72, baseType: !22, size: 32, offset: 896)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4214, file: !769, line: 73, baseType: !22, size: 32, offset: 928)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4214, file: !769, line: 74, baseType: !790, size: 64, offset: 960)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4214, file: !769, line: 77, baseType: !130, size: 16, offset: 1024)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4214, file: !769, line: 78, baseType: !23, size: 8, offset: 1040)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4214, file: !769, line: 79, baseType: !794, size: 8, offset: 1048)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4214, file: !769, line: 81, baseType: !798, size: 64, offset: 1088)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4214, file: !769, line: 89, baseType: !801, size: 64, offset: 1152)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4214, file: !769, line: 91, baseType: !803, size: 64, offset: 1216)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4214, file: !769, line: 92, baseType: !806, size: 64, offset: 1280)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4214, file: !769, line: 93, baseType: !4230, size: 64, offset: 1344)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4214, file: !769, line: 94, baseType: !16, size: 64, offset: 1408)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4214, file: !769, line: 95, baseType: !131, size: 64, offset: 1472)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4214, file: !769, line: 96, baseType: !22, size: 32, offset: 1536)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4214, file: !769, line: 98, baseType: !813, size: 160, offset: 1568)
!4246 = !{!4247}
!4247 = !DILocalVariable(name: "stream", arg: 1, scope: !4209, file: !671, line: 129, type: !4212)
!4248 = !DILocation(line: 0, scope: !4209)
!4249 = !DILocation(line: 150, column: 14, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4209, file: !671, line: 150, column: 7)
!4251 = !DILocation(line: 150, column: 22, scope: !4250)
!4252 = !DILocation(line: 150, column: 27, scope: !4250)
!4253 = !DILocation(line: 150, column: 7, scope: !4209)
!4254 = !DILocation(line: 151, column: 12, scope: !4250)
!4255 = !DILocation(line: 151, column: 5, scope: !4250)
!4256 = !DILocalVariable(name: "fp", arg: 1, scope: !4257, file: !671, line: 41, type: !4212)
!4257 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !671, file: !671, line: 41, type: !4258, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !4260)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !4212}
!4260 = !{!4256}
!4261 = !DILocation(line: 0, scope: !4257, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 156, column: 3, scope: !4209)
!4263 = !DILocation(line: 43, column: 11, scope: !4264, inlinedAt: !4262)
!4264 = distinct !DILexicalBlock(scope: !4257, file: !671, line: 43, column: 7)
!4265 = !DILocation(line: 43, column: 18, scope: !4264, inlinedAt: !4262)
!4266 = !DILocation(line: 43, column: 7, scope: !4257, inlinedAt: !4262)
!4267 = !DILocation(line: 45, column: 5, scope: !4264, inlinedAt: !4262)
!4268 = !DILocation(line: 158, column: 10, scope: !4209)
!4269 = !DILocation(line: 158, column: 3, scope: !4209)
!4270 = !DILocation(line: 235, column: 1, scope: !4209)
!4271 = !DISubprogram(name: "fflush", scope: !764, file: !764, line: 218, type: !4272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!22, !4230}
!4274 = distinct !DISubprogram(name: "rpl_fseeko", scope: !673, file: !673, line: 28, type: !4275, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !4312)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!22, !4277, !4311, !22}
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3249, line: 7, baseType: !4279)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !769, line: 49, size: 1728, elements: !4280)
!4280 = !{!4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4279, file: !769, line: 51, baseType: !22, size: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4279, file: !769, line: 54, baseType: !14, size: 64, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4279, file: !769, line: 55, baseType: !14, size: 64, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4279, file: !769, line: 56, baseType: !14, size: 64, offset: 192)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4279, file: !769, line: 57, baseType: !14, size: 64, offset: 256)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4279, file: !769, line: 58, baseType: !14, size: 64, offset: 320)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4279, file: !769, line: 59, baseType: !14, size: 64, offset: 384)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4279, file: !769, line: 60, baseType: !14, size: 64, offset: 448)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4279, file: !769, line: 61, baseType: !14, size: 64, offset: 512)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4279, file: !769, line: 64, baseType: !14, size: 64, offset: 576)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4279, file: !769, line: 65, baseType: !14, size: 64, offset: 640)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4279, file: !769, line: 66, baseType: !14, size: 64, offset: 704)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4279, file: !769, line: 68, baseType: !784, size: 64, offset: 768)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4279, file: !769, line: 70, baseType: !4295, size: 64, offset: 832)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4279, file: !769, line: 72, baseType: !22, size: 32, offset: 896)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4279, file: !769, line: 73, baseType: !22, size: 32, offset: 928)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4279, file: !769, line: 74, baseType: !790, size: 64, offset: 960)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4279, file: !769, line: 77, baseType: !130, size: 16, offset: 1024)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4279, file: !769, line: 78, baseType: !23, size: 8, offset: 1040)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4279, file: !769, line: 79, baseType: !794, size: 8, offset: 1048)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4279, file: !769, line: 81, baseType: !798, size: 64, offset: 1088)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4279, file: !769, line: 89, baseType: !801, size: 64, offset: 1152)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4279, file: !769, line: 91, baseType: !803, size: 64, offset: 1216)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4279, file: !769, line: 92, baseType: !806, size: 64, offset: 1280)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4279, file: !769, line: 93, baseType: !4295, size: 64, offset: 1344)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4279, file: !769, line: 94, baseType: !16, size: 64, offset: 1408)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4279, file: !769, line: 95, baseType: !131, size: 64, offset: 1472)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4279, file: !769, line: 96, baseType: !22, size: 32, offset: 1536)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4279, file: !769, line: 98, baseType: !813, size: 160, offset: 1568)
!4311 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !764, line: 63, baseType: !790)
!4312 = !{!4313, !4314, !4315, !4316}
!4313 = !DILocalVariable(name: "fp", arg: 1, scope: !4274, file: !673, line: 28, type: !4277)
!4314 = !DILocalVariable(name: "offset", arg: 2, scope: !4274, file: !673, line: 28, type: !4311)
!4315 = !DILocalVariable(name: "whence", arg: 3, scope: !4274, file: !673, line: 28, type: !22)
!4316 = !DILocalVariable(name: "pos", scope: !4317, file: !673, line: 117, type: !4311)
!4317 = distinct !DILexicalBlock(scope: !4318, file: !673, line: 113, column: 5)
!4318 = distinct !DILexicalBlock(scope: !4274, file: !673, line: 52, column: 7)
!4319 = !DILocation(line: 0, scope: !4274)
!4320 = !DILocation(line: 52, column: 11, scope: !4318)
!4321 = !{!4004, !690, i64 16}
!4322 = !DILocation(line: 52, column: 31, scope: !4318)
!4323 = !{!4004, !690, i64 8}
!4324 = !DILocation(line: 52, column: 24, scope: !4318)
!4325 = !DILocation(line: 53, column: 7, scope: !4318)
!4326 = !DILocation(line: 53, column: 14, scope: !4318)
!4327 = !{!4004, !690, i64 40}
!4328 = !DILocation(line: 53, column: 35, scope: !4318)
!4329 = !{!4004, !690, i64 32}
!4330 = !DILocation(line: 53, column: 28, scope: !4318)
!4331 = !DILocation(line: 54, column: 7, scope: !4318)
!4332 = !DILocation(line: 54, column: 14, scope: !4318)
!4333 = !{!4004, !690, i64 72}
!4334 = !DILocation(line: 54, column: 28, scope: !4318)
!4335 = !DILocation(line: 52, column: 7, scope: !4274)
!4336 = !DILocation(line: 117, column: 26, scope: !4317)
!4337 = !DILocation(line: 117, column: 19, scope: !4317)
!4338 = !DILocation(line: 0, scope: !4317)
!4339 = !DILocation(line: 118, column: 15, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4317, file: !673, line: 118, column: 11)
!4341 = !DILocation(line: 118, column: 11, scope: !4317)
!4342 = !DILocation(line: 129, column: 11, scope: !4317)
!4343 = !DILocation(line: 129, column: 18, scope: !4317)
!4344 = !DILocation(line: 130, column: 11, scope: !4317)
!4345 = !DILocation(line: 130, column: 19, scope: !4317)
!4346 = !{!4004, !1400, i64 144}
!4347 = !DILocation(line: 161, column: 7, scope: !4317)
!4348 = !DILocation(line: 163, column: 10, scope: !4274)
!4349 = !DILocation(line: 163, column: 3, scope: !4274)
!4350 = !DILocation(line: 164, column: 1, scope: !4274)
!4351 = !DISubprogram(name: "fseeko", scope: !764, file: !764, line: 712, type: !4352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !69)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!22, !4295, !239, !22}
