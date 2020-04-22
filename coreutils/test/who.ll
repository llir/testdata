; ModuleID = 'coreutils-8.32/src/who.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Usage: %s [OPTION]... [ FILE | ARG1 ARG2 ]\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Print information about users who are currently logged in.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [195 x i8] c"\0A  -a, --all         same as -b -d --login -p -r -t -T -u\0A  -b, --boot        time of last system boot\0A  -d, --dead        print dead processes\0A  -H, --heading     print line of column headings\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"  -l, --login       print system login processes\0A\00", align 1
@.str.5 = private unnamed_addr constant [187 x i8] c"      --lookup      attempt to canonicalize hostnames via DNS\0A  -m                only hostname and user associated with stdin\0A  -p, --process     print active processes spawned by init\0A\00", align 1
@.str.6 = private unnamed_addr constant [223 x i8] c"  -q, --count       all login names and number of users logged on\0A  -r, --runlevel    print current runlevel\0A  -s, --short       print only name, line, and time (default)\0A  -t, --time        print last system clock change\0A\00", align 1
@.str.7 = private unnamed_addr constant [163 x i8] c"  -T, -w, --mesg    add user's message status as +, - or ?\0A  -u, --users       list users logged in\0A      --message     same as -T\0A      --writable    same as -T\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [125 x i8] c"\0AIf FILE is not specified, use %s.  %s as FILE is common.\0AIf ARG1 ARG2 given, -m presumed: 'am i' or 'mom likes' are usual.\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.25 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.36 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"abdlmpqrstuwHT\00", align 1
@longopts = internal constant [18 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 72 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@need_boottime = internal unnamed_addr global i1 false, align 1, !dbg !440
@need_deadprocs = internal unnamed_addr global i1 false, align 1, !dbg !441
@need_login = internal unnamed_addr global i1 false, align 1, !dbg !442
@need_initspawn = internal unnamed_addr global i1 false, align 1, !dbg !443
@need_runlevel = internal unnamed_addr global i1 false, align 1, !dbg !444
@need_clockchange = internal unnamed_addr global i1 false, align 1, !dbg !445
@need_users = internal unnamed_addr global i1 false, align 1, !dbg !446
@include_mesg = internal unnamed_addr global i1 false, align 1, !dbg !447
@include_idle = internal unnamed_addr global i1 false, align 1, !dbg !448
@.str.19 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@do_lookup = internal unnamed_addr global i1 false, align 1, !dbg !449
@short_output = internal unnamed_addr global i1 false, align 1, !dbg !450
@short_list = internal unnamed_addr global i1 false, align 1, !dbg !451
@my_line_only = internal unnamed_addr global i1 false, align 1, !dbg !452
@include_heading = internal unnamed_addr global i1 false, align 1, !dbg !453
@include_exit = internal unnamed_addr global i1 false, align 1, !dbg !454
@.str.22 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"%b %e %H:%M\00", align 1
@time_format = internal unnamed_addr global i8* null, align 8, !dbg !284
@time_format_width = internal unnamed_addr global i32 0, align 4, !dbg !286
@optind = external local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"\0A# users=%lu\0A\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"LINE\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@idle_string.now = internal global i64 -9223372036854775808, align 8, !dbg !390
@.str.80 = private unnamed_addr constant [30 x i8] c"seconds_idle / (60 * 60) < 24\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"src/who.c\00", align 1
@__PRETTY_FUNCTION__.idle_string = private unnamed_addr constant [40 x i8] c"const char *idle_string(time_t, time_t)\00", align 1
@idle_string.idle_hhmm = internal global [6 x i8] zeroinitializer, align 1, !dbg !401
@.str.82 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c" old \00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"  .  \00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"  ?\00", align 1
@print_user.hostlen = internal unnamed_addr global i64 0, align 8, !dbg !388
@print_user.hoststr = internal unnamed_addr global i8* null, align 8, !dbg !320
@.str.77 = private unnamed_addr constant [8 x i8] c"(%s:%s)\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@time_string.buf = internal global [33 x i8] zeroinitializer, align 16, !dbg !406
@print_runlevel.runlevline = internal unnamed_addr global i8* null, align 8, !dbg !418
@.str.84 = private unnamed_addr constant [10 x i8] c"run-level\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"%s %c\00", align 1
@print_runlevel.comment = internal unnamed_addr global i8* null, align 8, !dbg !428
@.str.86 = private unnamed_addr constant [6 x i8] c"last=\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"system boot\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"clock change\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"id=\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"LOGIN\00", align 1
@print_deadprocs.exitstr = internal unnamed_addr global i8* null, align 8, !dbg !430
@.str.92 = private unnamed_addr constant [6 x i8] c"term=\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"exit=\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"%s%d %s%d\00", align 1
@print_line.mesg = internal global [3 x i8] c" x\00", align 1, !dbg !288
@.str.69 = private unnamed_addr constant [6 x i8] c" %-6s\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c" %10s\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c" %-12s\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"   .\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"%-8.*s%s %-12.*s %-*s%s%s %-8s%s\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"heading\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"lookup\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"mesg\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"runlevel\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i64 0, i64 0), align 8, !dbg !455
@.str.95 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@last_cherror = internal unnamed_addr global i32 0, align 4, !dbg !460
@canon_host_r.hints = internal global %struct.addrinfo zeroinitializer, align 8, !dbg !506
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !515
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !558
@.str.100 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.101 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.102 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !560
@.str.1.107 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !566
@.str.114 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.115 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.116 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.120, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.121, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.122, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.123, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.124, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.125, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.126, i32 0, i32 0), i8* null], align 16, !dbg !607
@.str.117 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.118 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.119 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.120 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.121 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.122 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.123 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.124 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.125 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.126 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !690
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !696
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !698
@.str.11.127 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.128 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.129 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.130 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.131 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.132 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.133 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !702
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !709
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !700
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !711
@.str.142 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.143 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.144 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.145 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.146 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.147 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.148 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.149 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.150 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.151 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.152 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.153 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.154 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.155 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.156 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.157 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.160 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.161 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.162 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.163 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.164 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.165 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.166 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !717
@.str.1.177 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.178 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.191 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.192 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1430 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1435, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 %0, metadata !1434, metadata !DIExpression()), !dbg !1454
  %3 = icmp eq i32 %0, 0, !dbg !1455
  br i1 %3, label %9, label %4, !dbg !1456

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1457, !tbaa !1459
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #19, !dbg !1457
  %7 = load i8*, i8** @program_name, align 8, !dbg !1457, !tbaa !1459
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #19, !dbg !1457
  br label %75, !dbg !1457

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 5) #19, !dbg !1463
  %11 = load i8*, i8** @program_name, align 8, !dbg !1463, !tbaa !1459
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #19, !dbg !1463
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #19, !dbg !1464
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1464, !tbaa !1459
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1464
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.3, i64 0, i64 0), i32 5) #19, !dbg !1465
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1465, !tbaa !1459
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1465
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 5) #19, !dbg !1466
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1466, !tbaa !1459
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1466
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.5, i64 0, i64 0), i32 5) #19, !dbg !1467
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1467, !tbaa !1459
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1467
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str.6, i64 0, i64 0), i32 5) #19, !dbg !1468
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1468, !tbaa !1459
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1468
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.7, i64 0, i64 0), i32 5) #19, !dbg !1469
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1469, !tbaa !1459
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1469
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #19, !dbg !1470
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1470, !tbaa !1459
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1470
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #19, !dbg !1471
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1471, !tbaa !1459
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !1471
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.10, i64 0, i64 0), i32 5) #19, !dbg !1472
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)) #19, !dbg !1472
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), metadata !1439, metadata !DIExpression()) #19, !dbg !1473
  %39 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1474
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %39) #19, !dbg !1474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %39, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #19, !dbg !1450
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), metadata !1440, metadata !DIExpression()) #19, !dbg !1473
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1441, metadata !DIExpression()) #19, !dbg !1473
  %40 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1475
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !1441, metadata !DIExpression()) #19, !dbg !1473
  br label %41, !dbg !1476

41:                                               ; preds = %46, %9
  %42 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), %9 ]
  %43 = phi %struct.infomap* [ %47, %46 ], [ %40, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !1441, metadata !DIExpression()) #19, !dbg !1473
  %44 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* nonnull %42) #22, !dbg !1477
  %45 = icmp eq i32 %44, 0, !dbg !1477
  br i1 %45, label %51, label %46, !dbg !1476

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 1, !dbg !1478
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !1441, metadata !DIExpression()) #19, !dbg !1473
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 0, !dbg !1479
  %49 = load i8*, i8** %48, align 8, !dbg !1479, !tbaa !1480
  %50 = icmp eq i8* %49, null, !dbg !1482
  br i1 %50, label %51, label %41, !dbg !1483, !llvm.loop !1484

51:                                               ; preds = %46, %41
  %52 = phi %struct.infomap* [ %47, %46 ], [ %43, %41 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %52, metadata !1441, metadata !DIExpression()) #19, !dbg !1473
  call void @llvm.dbg.value(metadata %struct.infomap* %52, metadata !1441, metadata !DIExpression()) #19, !dbg !1473
  %53 = getelementptr inbounds %struct.infomap, %struct.infomap* %52, i64 0, i32 1, !dbg !1485
  %54 = load i8*, i8** %53, align 8, !dbg !1485, !tbaa !1487
  %55 = icmp eq i8* %54, null, !dbg !1488
  %56 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %54, !dbg !1489
  call void @llvm.dbg.value(metadata i8* %56, metadata !1440, metadata !DIExpression()) #19, !dbg !1473
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32 5) #19, !dbg !1490
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0)) #19, !dbg !1490
  %59 = tail call i8* @setlocale(i32 5, i8* null) #19, !dbg !1491
  call void @llvm.dbg.value(metadata i8* %59, metadata !1448, metadata !DIExpression()) #19, !dbg !1473
  %60 = icmp eq i8* %59, null, !dbg !1492
  br i1 %60, label %68, label %61, !dbg !1494

61:                                               ; preds = %51
  %62 = tail call i32 @strncmp(i8* nonnull %59, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i64 3) #22, !dbg !1495
  %63 = icmp eq i32 %62, 0, !dbg !1495
  br i1 %63, label %68, label %64, !dbg !1496

64:                                               ; preds = %61
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.36, i64 0, i64 0), i32 5) #19, !dbg !1497
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1497, !tbaa !1459
  %67 = tail call i32 @fputs_unlocked(i8* %65, %struct._IO_FILE* %66) #19, !dbg !1497
  br label %68, !dbg !1499

68:                                               ; preds = %51, %61, %64
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i32 5) #19, !dbg !1500
  %70 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #19, !dbg !1500
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 5) #19, !dbg !1501
  %72 = icmp eq i8* %56, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), !dbg !1501
  %73 = select i1 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !1501
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* %56, i8* %73) #19, !dbg !1501
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %39) #19, !dbg !1502
  br label %75

75:                                               ; preds = %68, %4
  tail call void @exit(i32 %0) #23, !dbg !1503
  unreachable, !dbg !1503
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !26 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !36 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !101 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1504 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1509, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8** %1, metadata !1510, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 1, metadata !1512, metadata !DIExpression()), !dbg !1513
  %3 = load i8*, i8** %1, align 8, !dbg !1514, !tbaa !1459
  tail call void @set_program_name(i8* %3) #19, !dbg !1515
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !1516
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #19, !dbg !1517
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #19, !dbg !1518
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #19, !dbg !1519
  br label %8, !dbg !1520

8:                                                ; preds = %29, %2
  %9 = phi i8 [ 1, %2 ], [ %31, %29 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %9, metadata !1512, metadata !DIExpression()), !dbg !1513
  %10 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([18 x %struct.option], [18 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #19, !dbg !1522
  call void @llvm.dbg.value(metadata i32 %10, metadata !1511, metadata !DIExpression()), !dbg !1513
  switch i32 %10, label %28 [
    i32 -1, label %32
    i32 97, label %11
    i32 98, label %29
    i32 100, label %12
    i32 72, label %13
    i32 108, label %14
    i32 109, label %15
    i32 112, label %16
    i32 113, label %17
    i32 114, label %18
    i32 115, label %19
    i32 116, label %20
    i32 84, label %21
    i32 119, label %21
    i32 117, label %22
    i32 128, label %23
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !1520

11:                                               ; preds = %8
  store i1 true, i1* @need_boottime, align 1, !dbg !1523
  store i1 true, i1* @need_deadprocs, align 1, !dbg !1526
  store i1 true, i1* @need_login, align 1, !dbg !1527
  store i1 true, i1* @need_initspawn, align 1, !dbg !1528
  store i1 true, i1* @need_runlevel, align 1, !dbg !1529
  store i1 true, i1* @need_clockchange, align 1, !dbg !1530
  store i1 true, i1* @need_users, align 1, !dbg !1531
  store i1 true, i1* @include_mesg, align 1, !dbg !1532
  store i1 true, i1* @include_idle, align 1, !dbg !1533
  call void @llvm.dbg.value(metadata i8 0, metadata !1512, metadata !DIExpression()), !dbg !1513
  br label %29, !dbg !1534

12:                                               ; preds = %8
  store i1 true, i1* @need_deadprocs, align 1, !dbg !1535
  store i1 true, i1* @include_idle, align 1, !dbg !1536
  call void @llvm.dbg.value(metadata i8 0, metadata !1512, metadata !DIExpression()), !dbg !1513
  br label %29, !dbg !1537

13:                                               ; preds = %8
  br label %29, !dbg !1538

14:                                               ; preds = %8
  store i1 true, i1* @need_login, align 1, !dbg !1539
  call void @llvm.dbg.value(metadata i8 0, metadata !1512, metadata !DIExpression()), !dbg !1513
  br label %29, !dbg !1540

15:                                               ; preds = %8
  br label %29, !dbg !1541

16:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 0, metadata !1512, metadata !DIExpression()), !dbg !1513
  br label %29, !dbg !1542

17:                                               ; preds = %8
  br label %29, !dbg !1543

18:                                               ; preds = %8
  store i1 true, i1* @need_runlevel, align 1, !dbg !1544
  call void @llvm.dbg.value(metadata i8 0, metadata !1512, metadata !DIExpression()), !dbg !1513
  br label %29, !dbg !1545

19:                                               ; preds = %8
  br label %29, !dbg !1546

20:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 0, metadata !1512, metadata !DIExpression()), !dbg !1513
  br label %29, !dbg !1547

21:                                               ; preds = %8, %8
  br label %29, !dbg !1548

22:                                               ; preds = %8
  store i1 true, i1* @need_users, align 1, !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, metadata !1512, metadata !DIExpression()), !dbg !1513
  br label %29, !dbg !1550

23:                                               ; preds = %8
  br label %29, !dbg !1551

24:                                               ; preds = %8
  tail call void @usage(i32 0) #24, !dbg !1552
  unreachable, !dbg !1552

25:                                               ; preds = %8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1553, !tbaa !1459
  %27 = load i8*, i8** @Version, align 8, !dbg !1553, !tbaa !1459
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* null) #19, !dbg !1553
  tail call void @exit(i32 0) #23, !dbg !1553
  unreachable, !dbg !1553

28:                                               ; preds = %8
  tail call void @usage(i32 1) #24, !dbg !1554
  unreachable, !dbg !1554

29:                                               ; preds = %8, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11
  %30 = phi i1* [ @do_lookup, %23 ], [ @include_idle, %22 ], [ @include_mesg, %21 ], [ @need_clockchange, %20 ], [ @short_output, %19 ], [ @include_idle, %18 ], [ @short_list, %17 ], [ @need_initspawn, %16 ], [ @my_line_only, %15 ], [ @include_idle, %14 ], [ @include_heading, %13 ], [ @include_exit, %12 ], [ @include_exit, %11 ], [ @need_boottime, %8 ]
  %31 = phi i8 [ %9, %23 ], [ 0, %22 ], [ %9, %21 ], [ 0, %20 ], [ %9, %19 ], [ 0, %18 ], [ %9, %17 ], [ 0, %16 ], [ %9, %15 ], [ 0, %14 ], [ %9, %13 ], [ 0, %12 ], [ 0, %11 ], [ 0, %8 ], !dbg !1513
  store i1 true, i1* %30, align 1, !dbg !1555
  call void @llvm.dbg.value(metadata i8 %31, metadata !1512, metadata !DIExpression()), !dbg !1513
  br label %8, !dbg !1520, !llvm.loop !1556

32:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 %9, metadata !1512, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %9, metadata !1512, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %9, metadata !1512, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %9, metadata !1512, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %9, metadata !1512, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %9, metadata !1512, metadata !DIExpression()), !dbg !1513
  %33 = and i8 %9, 1, !dbg !1558
  %34 = icmp eq i8 %33, 0, !dbg !1558
  br i1 %34, label %36, label %35, !dbg !1560

35:                                               ; preds = %32
  store i1 true, i1* @need_users, align 1, !dbg !1561
  store i1 true, i1* @short_output, align 1, !dbg !1563
  br label %36, !dbg !1564

36:                                               ; preds = %32, %35
  %37 = load i1, i1* @include_exit, align 1, !dbg !1565
  br i1 %37, label %38, label %39, !dbg !1567

38:                                               ; preds = %36
  store i1 false, i1* @short_output, align 1, !dbg !1568
  br label %39, !dbg !1570

39:                                               ; preds = %38, %36
  %40 = tail call zeroext i1 @hard_locale(i32 2) #19, !dbg !1571
  %41 = select i1 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0)
  %42 = select i1 %40, i32 16, i32 12
  store i8* %41, i8** @time_format, align 8, !dbg !1573, !tbaa !1459
  store i32 %42, i32* @time_format_width, align 4, !dbg !1573, !tbaa !1574
  %43 = load i32, i32* @optind, align 4, !dbg !1576, !tbaa !1574
  %44 = sub nsw i32 %0, %43, !dbg !1577
  switch i32 %44, label %51 [
    i32 2, label %45
    i32 -1, label %46
    i32 0, label %46
    i32 1, label %47
  ], !dbg !1578

45:                                               ; preds = %39
  store i1 true, i1* @my_line_only, align 1, !dbg !1579
  br label %46, !dbg !1581

46:                                               ; preds = %39, %39, %45
  tail call fastcc void @who(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 1), !dbg !1582
  br label %59, !dbg !1583

47:                                               ; preds = %39
  %48 = sext i32 %43 to i64, !dbg !1584
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48, !dbg !1584
  %50 = load i8*, i8** %49, align 8, !dbg !1584, !tbaa !1459
  tail call fastcc void @who(i8* %50, i32 0), !dbg !1585
  br label %59, !dbg !1586

51:                                               ; preds = %39
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 5) #19, !dbg !1587
  %53 = load i32, i32* @optind, align 4, !dbg !1588, !tbaa !1574
  %54 = add nsw i32 %53, 2, !dbg !1589
  %55 = sext i32 %54 to i64, !dbg !1590
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !1590
  %57 = load i8*, i8** %56, align 8, !dbg !1590, !tbaa !1459
  %58 = tail call i8* @quote(i8* %57) #19, !dbg !1591
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52, i8* %58) #19, !dbg !1592
  tail call void @usage(i32 1) #24, !dbg !1593
  unreachable, !dbg !1593

59:                                               ; preds = %47, %46
  ret i32 0, !dbg !1594
}

; Function Attrs: nounwind
declare !dbg !105 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !108 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !111 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !118 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @who(i8* %0, i32 %1) unnamed_addr #8 !dbg !1595 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %10, metadata !331, metadata !DIExpression()), !dbg !1604
  %11 = alloca [7 x i8], align 1
  call void @llvm.dbg.declare(metadata [7 x i8]* %11, metadata !367, metadata !DIExpression()), !dbg !1620
  %12 = alloca [38 x i8], align 16
  call void @llvm.dbg.declare(metadata [38 x i8]* %12, metadata !371, metadata !DIExpression()), !dbg !1621
  %13 = alloca [12 x i8], align 1
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !376, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !1623, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !1634, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !436, metadata !DIExpression()), !dbg !1642
  %14 = alloca [257 x i8], align 16
  call void @llvm.dbg.declare(metadata [257 x i8]* %14, metadata !380, metadata !DIExpression()), !dbg !1645
  %15 = alloca i64, align 8
  %16 = alloca %struct.utmpx*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1599, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i32 %1, metadata !1600, metadata !DIExpression()), !dbg !1646
  %17 = bitcast i64* %15 to i8*, !dbg !1647
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #19, !dbg !1647
  %18 = bitcast %struct.utmpx** %16 to i8*, !dbg !1648
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #19, !dbg !1648
  call void @llvm.dbg.value(metadata i64* %15, metadata !1601, metadata !DIExpression(DW_OP_deref)), !dbg !1646
  call void @llvm.dbg.value(metadata %struct.utmpx** %16, metadata !1602, metadata !DIExpression(DW_OP_deref)), !dbg !1646
  %19 = call i32 @read_utmp(i8* %0, i64* nonnull %15, %struct.utmpx** nonnull %16, i32 %1) #19, !dbg !1649
  %20 = icmp eq i32 %19, 0, !dbg !1651
  br i1 %20, label %25, label %21, !dbg !1652

21:                                               ; preds = %2
  %22 = tail call i32* @__errno_location() #25, !dbg !1653
  %23 = load i32, i32* %22, align 4, !dbg !1653, !tbaa !1574
  %24 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #19, !dbg !1653
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), i8* %24) #19, !dbg !1653
  unreachable, !dbg !1653

25:                                               ; preds = %2
  %26 = load i1, i1* @short_list, align 1, !dbg !1654
  %27 = load i64, i64* %15, align 8, !dbg !1655, !tbaa !1656
  call void @llvm.dbg.value(metadata i64 %27, metadata !1601, metadata !DIExpression()), !dbg !1646
  %28 = load %struct.utmpx*, %struct.utmpx** %16, align 8, !dbg !1655, !tbaa !1459
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, metadata !1602, metadata !DIExpression()), !dbg !1646
  br i1 %26, label %29, label %57, !dbg !1658

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %27, metadata !1659, metadata !DIExpression()) #19, !dbg !1669
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, metadata !1662, metadata !DIExpression()) #19, !dbg !1669
  call void @llvm.dbg.value(metadata i64 0, metadata !1663, metadata !DIExpression()) #19, !dbg !1669
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), metadata !1664, metadata !DIExpression()) #19, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %27, metadata !1659, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #19, !dbg !1669
  %30 = icmp eq i64 %27, 0, !dbg !1671
  br i1 %30, label %53, label %31, !dbg !1671

31:                                               ; preds = %29, %48
  %32 = phi i64 [ %36, %48 ], [ %27, %29 ]
  %33 = phi i8* [ %50, %48 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %29 ]
  %34 = phi i64 [ %49, %48 ], [ 0, %29 ]
  %35 = phi %struct.utmpx* [ %51, %48 ], [ %28, %29 ]
  %36 = add i64 %32, -1, !dbg !1672
  call void @llvm.dbg.value(metadata i8* %33, metadata !1664, metadata !DIExpression()) #19, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %34, metadata !1663, metadata !DIExpression()) #19, !dbg !1669
  call void @llvm.dbg.value(metadata %struct.utmpx* %35, metadata !1662, metadata !DIExpression()) #19, !dbg !1669
  %37 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %35, i64 0, i32 4, i64 0, !dbg !1673
  %38 = load i8, i8* %37, align 4, !dbg !1673, !tbaa !1674
  %39 = icmp eq i8 %38, 0, !dbg !1673
  br i1 %39, label %48, label %40, !dbg !1673

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %35, i64 0, i32 0, !dbg !1673
  %42 = load i16, i16* %41, align 4, !dbg !1673, !tbaa !1675
  %43 = icmp eq i16 %42, 7, !dbg !1673
  br i1 %43, label %44, label %48, !dbg !1680

44:                                               ; preds = %40
  %45 = call i8* @extract_trimmed_name(%struct.utmpx* nonnull %35) #19, !dbg !1681
  call void @llvm.dbg.value(metadata i8* %45, metadata !1665, metadata !DIExpression()) #19, !dbg !1682
  %46 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), i8* %33, i8* %45) #19, !dbg !1683
  call void @free(i8* %45) #19, !dbg !1684
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), metadata !1664, metadata !DIExpression()) #19, !dbg !1669
  %47 = add i64 %34, 1, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %47, metadata !1663, metadata !DIExpression()) #19, !dbg !1669
  br label %48, !dbg !1686

48:                                               ; preds = %44, %40, %31
  %49 = phi i64 [ %47, %44 ], [ %34, %40 ], [ %34, %31 ], !dbg !1669
  %50 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %44 ], [ %33, %40 ], [ %33, %31 ], !dbg !1669
  call void @llvm.dbg.value(metadata i8* %50, metadata !1664, metadata !DIExpression()) #19, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %49, metadata !1663, metadata !DIExpression()) #19, !dbg !1669
  %51 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %35, i64 1, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %36, metadata !1659, metadata !DIExpression()) #19, !dbg !1669
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, metadata !1662, metadata !DIExpression()) #19, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %36, metadata !1659, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #19, !dbg !1669
  %52 = icmp eq i64 %36, 0, !dbg !1671
  br i1 %52, label %53, label %31, !dbg !1671, !llvm.loop !1688

53:                                               ; preds = %48, %29
  %54 = phi i64 [ 0, %29 ], [ %49, %48 ], !dbg !1669
  call void @llvm.dbg.value(metadata i64 %54, metadata !1663, metadata !DIExpression()) #19, !dbg !1669
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i32 5) #19, !dbg !1690
  %56 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i64 %54) #19, !dbg !1690
  br label %509, !dbg !1691

57:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %27, metadata !1614, metadata !DIExpression()) #19, !dbg !1692
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, metadata !1615, metadata !DIExpression()) #19, !dbg !1692
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, metadata !1617, metadata !DIExpression()) #19, !dbg !1692
  %58 = load i1, i1* @include_heading, align 1, !dbg !1693
  br i1 %58, label %59, label %67, !dbg !1695

59:                                               ; preds = %57
  %60 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i32 5) #19, !dbg !1696
  %61 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i32 5) #19, !dbg !1699
  %62 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32 5) #19, !dbg !1700
  %63 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i32 5) #19, !dbg !1701
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0), i32 5) #19, !dbg !1702
  %65 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i32 5) #19, !dbg !1703
  %66 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i32 5) #19, !dbg !1704
  call fastcc void @print_line(i32 -1, i8* %60, i8 signext 32, i32 -1, i8* %61, i8* %62, i8* %63, i8* %64, i8* %65, i8* %66) #19, !dbg !1705
  br label %67, !dbg !1706

67:                                               ; preds = %59, %57
  %68 = load i1, i1* @my_line_only, align 1, !dbg !1707
  br i1 %68, label %69, label %77, !dbg !1709

69:                                               ; preds = %67
  %70 = call i8* @ttyname(i32 0) #19, !dbg !1710
  call void @llvm.dbg.value(metadata i8* %70, metadata !1616, metadata !DIExpression()) #19, !dbg !1692
  %71 = icmp eq i8* %70, null, !dbg !1712
  br i1 %71, label %509, label %72, !dbg !1714

72:                                               ; preds = %69
  %73 = call i32 @strncmp(i8* nonnull %70, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i64 5) #22, !dbg !1715
  %74 = icmp eq i32 %73, 0, !dbg !1717
  %75 = getelementptr inbounds i8, i8* %70, i64 5, !dbg !1718
  %76 = select i1 %74, i8* %75, i8* %70, !dbg !1719
  br label %77, !dbg !1719

77:                                               ; preds = %72, %67
  %78 = phi i8* [ undef, %67 ], [ %76, %72 ]
  call void @llvm.dbg.value(metadata i8* %78, metadata !1616, metadata !DIExpression()) #19, !dbg !1692
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, metadata !1617, metadata !DIExpression()) #19, !dbg !1692
  call void @llvm.dbg.value(metadata %struct.utmpx* %28, metadata !1615, metadata !DIExpression()) #19, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %27, metadata !1614, metadata !DIExpression()) #19, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %27, metadata !1614, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #19, !dbg !1692
  %79 = icmp eq i64 %27, 0, !dbg !1720
  br i1 %79, label %509, label %80, !dbg !1720

80:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i64 %27, metadata !1614, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #19, !dbg !1692
  %81 = bitcast %struct.stat* %10 to i8*, !dbg !1721
  %82 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0, !dbg !1721
  %83 = getelementptr inbounds [38 x i8], [38 x i8]* %12, i64 0, i64 0, !dbg !1721
  %84 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0, !dbg !1721
  %85 = getelementptr inbounds [38 x i8], [38 x i8]* %12, i64 0, i64 5, !dbg !1722
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %10, i64 0, i32 3, !dbg !1734
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %10, i64 0, i32 11, i32 0, !dbg !1745
  %88 = getelementptr inbounds [257 x i8], [257 x i8]* %14, i64 0, i64 0, !dbg !1746
  %89 = bitcast i64* %9 to i8*, !dbg !1747
  %90 = bitcast i64* %3 to i8*, !dbg !1749
  %91 = bitcast i64* %4 to i8*, !dbg !1751
  %92 = bitcast i64* %5 to i8*, !dbg !1753
  %93 = bitcast i64* %6 to i8*, !dbg !1755
  %94 = bitcast i64* %7 to i8*, !dbg !1761
  %95 = bitcast i64* %8 to i8*, !dbg !1767
  br label %96, !dbg !1720

96:                                               ; preds = %505, %80
  %97 = phi i64 [ %27, %80 ], [ %100, %505 ]
  %98 = phi i64 [ -9223372036854775808, %80 ], [ %506, %505 ]
  %99 = phi %struct.utmpx* [ %28, %80 ], [ %507, %505 ]
  %100 = add i64 %97, -1, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %98, metadata !1617, metadata !DIExpression()) #19, !dbg !1692
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1615, metadata !DIExpression()) #19, !dbg !1692
  %101 = load i1, i1* @my_line_only, align 1, !dbg !1771
  br i1 %101, label %102, label %106, !dbg !1772

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 2, i64 0, !dbg !1773
  %104 = call i32 @strncmp(i8* nonnull dereferenceable(1) %78, i8* nonnull %103, i64 32) #22, !dbg !1773
  %105 = icmp eq i32 %104, 0, !dbg !1773
  br i1 %105, label %106, label %497, !dbg !1774

106:                                              ; preds = %102, %96
  %107 = load i1, i1* @need_users, align 1, !dbg !1775
  br i1 %107, label %108, label %279, !dbg !1776

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 4, i64 0, !dbg !1777
  %110 = load i8, i8* %109, align 4, !dbg !1777, !tbaa !1674
  %111 = icmp eq i8 %110, 0, !dbg !1777
  br i1 %111, label %279, label %112, !dbg !1777

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !1777
  %114 = load i16, i16* %113, align 4, !dbg !1777, !tbaa !1675
  %115 = icmp eq i16 %114, 7, !dbg !1777
  br i1 %115, label %116, label %279, !dbg !1778

116:                                              ; preds = %112
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !329, metadata !DIExpression()) #19, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %98, metadata !330, metadata !DIExpression()) #19, !dbg !1721
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %81) #19, !dbg !1779
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %82) #19, !dbg !1780
  call void @llvm.lifetime.start.p0i8(i64 38, i8* nonnull %83) #19, !dbg !1781
  call void @llvm.dbg.value(metadata i8* %83, metadata !375, metadata !DIExpression()) #19, !dbg !1721
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %84) #19, !dbg !1622
  %117 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 1, !dbg !1622
  %118 = load i32, i32* %117, align 4, !dbg !1622, !tbaa !1782
  %119 = sext i32 %118 to i64, !dbg !1622
  %120 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %84, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %119) #19, !dbg !1622
  %121 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 2, i64 0, !dbg !1783
  %122 = load i8, i8* %121, align 4, !dbg !1783, !tbaa !1674
  %123 = icmp eq i8 %122, 47, !dbg !1783
  br i1 %123, label %126, label %124, !dbg !1784

124:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i8* %83, metadata !1730, metadata !DIExpression()) #19, !dbg !1722
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), metadata !1731, metadata !DIExpression()) #19, !dbg !1722
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(6) %83, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i64 6, i1 false) #19, !dbg !1785
  call void @llvm.dbg.value(metadata i8* %85, metadata !375, metadata !DIExpression()) #19, !dbg !1721
  call void @llvm.dbg.value(metadata i8* %85, metadata !375, metadata !DIExpression()) #19, !dbg !1721
  call void @llvm.dbg.value(metadata i8* %85, metadata !1786, metadata !DIExpression()) #19, !dbg !1794
  call void @llvm.dbg.value(metadata i8* %121, metadata !1791, metadata !DIExpression()) #19, !dbg !1794
  call void @llvm.dbg.value(metadata i64 32, metadata !1792, metadata !DIExpression()) #19, !dbg !1794
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1793, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)) #19, !dbg !1794
  call void @llvm.dbg.value(metadata i8* %85, metadata !1786, metadata !DIExpression()) #19, !dbg !1794
  call void @llvm.dbg.value(metadata i8* %121, metadata !1791, metadata !DIExpression()) #19, !dbg !1794
  %125 = icmp eq i8 %122, 0, !dbg !1796
  br i1 %125, label %139, label %126, !dbg !1797

126:                                              ; preds = %116, %124
  %127 = phi i8* [ %85, %124 ], [ %83, %116 ]
  %128 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 2, i64 32, !dbg !1798
  br label %129, !dbg !1796

129:                                              ; preds = %136, %126
  %130 = phi i8* [ %133, %136 ], [ %121, %126 ]
  %131 = phi i8* [ %134, %136 ], [ %127, %126 ]
  %132 = phi i8 [ %137, %136 ], [ %122, %126 ]
  call void @llvm.dbg.value(metadata i8* %130, metadata !1791, metadata !DIExpression()) #19, !dbg !1794
  call void @llvm.dbg.value(metadata i8* %131, metadata !1786, metadata !DIExpression()) #19, !dbg !1794
  %133 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !1799
  call void @llvm.dbg.value(metadata i8* %133, metadata !1791, metadata !DIExpression()) #19, !dbg !1794
  %134 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !1800
  call void @llvm.dbg.value(metadata i8* %134, metadata !1786, metadata !DIExpression()) #19, !dbg !1794
  store i8 %132, i8* %131, align 1, !dbg !1801, !tbaa !1674, !alias.scope !1802, !noalias !1805
  %135 = icmp ult i8* %133, %128, !dbg !1807
  br i1 %135, label %136, label %139, !dbg !1796, !llvm.loop !1808

136:                                              ; preds = %129
  %137 = load i8, i8* %133, align 1, !dbg !1809, !tbaa !1674, !alias.scope !1805, !noalias !1802
  call void @llvm.dbg.value(metadata i8* %134, metadata !1786, metadata !DIExpression()) #19, !dbg !1794
  call void @llvm.dbg.value(metadata i8* %133, metadata !1791, metadata !DIExpression()) #19, !dbg !1794
  %138 = icmp eq i8 %137, 0, !dbg !1796
  br i1 %138, label %139, label %129, !dbg !1797

139:                                              ; preds = %136, %129, %124
  %140 = phi i8* [ %85, %124 ], [ %134, %129 ], [ %134, %136 ]
  call void @llvm.dbg.value(metadata i8* %140, metadata !1786, metadata !DIExpression()) #19, !dbg !1794
  call void @llvm.dbg.value(metadata i8* %140, metadata !1786, metadata !DIExpression()) #19, !dbg !1794
  store i8 0, i8* %140, align 1, !dbg !1810, !tbaa !1674, !alias.scope !1802, !noalias !1805
  call void @llvm.dbg.value(metadata i8* %83, metadata !1811, metadata !DIExpression()) #19, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.stat* %10, metadata !1818, metadata !DIExpression()) #19, !dbg !1819
  %141 = call i32 @__xstat(i32 1, i8* nonnull %83, %struct.stat* nonnull %10) #19, !dbg !1821
  %142 = icmp eq i32 %141, 0, !dbg !1822
  br i1 %142, label %143, label %182, !dbg !1823

143:                                              ; preds = %139
  call void @llvm.dbg.value(metadata %struct.stat* %10, metadata !1741, metadata !DIExpression()) #19, !dbg !1734
  %144 = load i32, i32* %86, align 8, !dbg !1824, !tbaa !1825
  %145 = and i32 %144, 16, !dbg !1828
  %146 = icmp eq i32 %145, 0, !dbg !1829
  %147 = select i1 %146, i8 45, i8 43, !dbg !1830
  call void @llvm.dbg.value(metadata i8 %147, metadata !366, metadata !DIExpression()) #19, !dbg !1721
  %148 = load i64, i64* %87, align 8, !dbg !1831, !tbaa !1832
  call void @llvm.dbg.value(metadata i64 %148, metadata !365, metadata !DIExpression()) #19, !dbg !1721
  call void @llvm.dbg.value(metadata i8 %147, metadata !366, metadata !DIExpression()) #19, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %148, metadata !365, metadata !DIExpression()) #19, !dbg !1721
  %149 = icmp eq i64 %148, 0, !dbg !1833
  br i1 %149, label %182, label %150, !dbg !1835

150:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i64 %148, metadata !396, metadata !DIExpression()) #19, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %98, metadata !397, metadata !DIExpression()) #19, !dbg !1836
  %151 = load i64, i64* @idle_string.now, align 8, !dbg !1838, !tbaa !1656
  %152 = icmp eq i64 %151, -9223372036854775808, !dbg !1840
  br i1 %152, label %153, label %155, !dbg !1841

153:                                              ; preds = %150
  %154 = call i64 @time(i64* nonnull @idle_string.now) #19, !dbg !1842
  br label %155, !dbg !1842

155:                                              ; preds = %153, %150
  %156 = icmp sgt i64 %148, %98, !dbg !1843
  br i1 %156, label %157, label %177, !dbg !1844

157:                                              ; preds = %155
  %158 = load i64, i64* @idle_string.now, align 8, !dbg !1845, !tbaa !1656
  %159 = add nsw i64 %158, -86400, !dbg !1846
  %160 = icmp sge i64 %159, %148, !dbg !1847
  %161 = icmp slt i64 %158, %148, !dbg !1848
  %162 = or i1 %161, %160, !dbg !1849
  br i1 %162, label %177, label %163, !dbg !1849

163:                                              ; preds = %157
  %164 = sub nsw i64 %158, %148, !dbg !1850
  %165 = trunc i64 %164 to i32, !dbg !1851
  call void @llvm.dbg.value(metadata i32 %165, metadata !398, metadata !DIExpression()) #19, !dbg !1852
  %166 = icmp slt i32 %165, 60, !dbg !1853
  br i1 %166, label %179, label %167, !dbg !1855

167:                                              ; preds = %163
  %168 = icmp slt i32 %165, 86400, !dbg !1856
  br i1 %168, label %170, label %169, !dbg !1860

169:                                              ; preds = %167
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 205, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.idle_string, i64 0, i64 0)) #23, !dbg !1856
  unreachable, !dbg !1856

170:                                              ; preds = %167
  %171 = udiv i32 %165, 3600, !dbg !1856
  %172 = urem i32 %165, 3600, !dbg !1861
  %173 = trunc i32 %172 to i16, !dbg !1861
  %174 = udiv i16 %173, 60, !dbg !1861
  %175 = zext i16 %174 to i32, !dbg !1861
  %176 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @idle_string.idle_hhmm, i64 0, i64 0), i32 1, i64 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0), i32 %171, i32 %175) #19, !dbg !1861
  br label %179, !dbg !1862

177:                                              ; preds = %157, %155
  %178 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0), i32 5) #19, !dbg !1863
  br label %179, !dbg !1864

179:                                              ; preds = %177, %170, %163
  %180 = phi i8* [ %178, %177 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @idle_string.idle_hhmm, i64 0, i64 0), %170 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0), %163 ], !dbg !1836
  %181 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %82, i32 1, i64 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i32 6, i8* %180) #19, !dbg !1865
  br label %185, !dbg !1865

182:                                              ; preds = %143, %139
  %183 = phi i8 [ %147, %143 ], [ 63, %139 ]
  %184 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %82, i32 1, i64 7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #19, !dbg !1866
  br label %185

185:                                              ; preds = %182, %179
  %186 = phi i8 [ %183, %182 ], [ %147, %179 ]
  %187 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 5, i64 0, !dbg !1867
  %188 = load i8, i8* %187, align 4, !dbg !1867, !tbaa !1674
  %189 = icmp eq i8 %188, 0, !dbg !1867
  br i1 %189, label %251, label %190, !dbg !1868

190:                                              ; preds = %185
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %88) #19, !dbg !1869
  call void @llvm.dbg.value(metadata i8* null, metadata !386, metadata !DIExpression()) #19, !dbg !1746
  call void @llvm.dbg.value(metadata i8* null, metadata !387, metadata !DIExpression()) #19, !dbg !1746
  call void @llvm.dbg.value(metadata i8* %88, metadata !1786, metadata !DIExpression()) #19, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %187, metadata !1791, metadata !DIExpression()) #19, !dbg !1870
  call void @llvm.dbg.value(metadata i64 256, metadata !1792, metadata !DIExpression()) #19, !dbg !1870
  %191 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 5, i64 256, !dbg !1872
  call void @llvm.dbg.value(metadata i8* %191, metadata !1793, metadata !DIExpression()) #19, !dbg !1870
  br label %192, !dbg !1873

192:                                              ; preds = %199, %190
  %193 = phi i8* [ %187, %190 ], [ %196, %199 ]
  %194 = phi i8* [ %88, %190 ], [ %197, %199 ]
  %195 = phi i8 [ %188, %190 ], [ %200, %199 ]
  call void @llvm.dbg.value(metadata i8* %193, metadata !1791, metadata !DIExpression()) #19, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %194, metadata !1786, metadata !DIExpression()) #19, !dbg !1870
  %196 = getelementptr inbounds i8, i8* %193, i64 1, !dbg !1874
  call void @llvm.dbg.value(metadata i8* %196, metadata !1791, metadata !DIExpression()) #19, !dbg !1870
  %197 = getelementptr inbounds i8, i8* %194, i64 1, !dbg !1875
  call void @llvm.dbg.value(metadata i8* %197, metadata !1786, metadata !DIExpression()) #19, !dbg !1870
  store i8 %195, i8* %194, align 1, !dbg !1876, !tbaa !1674, !alias.scope !1877, !noalias !1880
  %198 = icmp ult i8* %196, %191, !dbg !1882
  br i1 %198, label %199, label %202, !dbg !1883, !llvm.loop !1884

199:                                              ; preds = %192
  %200 = load i8, i8* %196, align 1, !dbg !1885, !tbaa !1674, !alias.scope !1880, !noalias !1877
  call void @llvm.dbg.value(metadata i8* %197, metadata !1786, metadata !DIExpression()) #19, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %196, metadata !1791, metadata !DIExpression()) #19, !dbg !1870
  %201 = icmp eq i8 %200, 0, !dbg !1883
  br i1 %201, label %202, label %192, !dbg !1873

202:                                              ; preds = %199, %192
  call void @llvm.dbg.value(metadata i8* %197, metadata !1786, metadata !DIExpression()) #19, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %197, metadata !1786, metadata !DIExpression()) #19, !dbg !1870
  store i8 0, i8* %197, align 1, !dbg !1886, !tbaa !1674, !alias.scope !1877, !noalias !1880
  %203 = call i8* @strchr(i8* nonnull %88, i32 58) #22, !dbg !1887
  call void @llvm.dbg.value(metadata i8* %203, metadata !387, metadata !DIExpression()) #19, !dbg !1746
  %204 = icmp eq i8* %203, null, !dbg !1888
  br i1 %204, label %207, label %205, !dbg !1890

205:                                              ; preds = %202
  %206 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !1891
  call void @llvm.dbg.value(metadata i8* %206, metadata !387, metadata !DIExpression()) #19, !dbg !1746
  store i8 0, i8* %203, align 1, !dbg !1892, !tbaa !1674
  br label %207, !dbg !1893

207:                                              ; preds = %205, %202
  %208 = phi i8* [ %206, %205 ], [ null, %202 ], !dbg !1746
  call void @llvm.dbg.value(metadata i8* %208, metadata !387, metadata !DIExpression()) #19, !dbg !1746
  %209 = load i8, i8* %88, align 16, !dbg !1894, !tbaa !1674
  %210 = icmp eq i8 %209, 0, !dbg !1894
  br i1 %210, label %215, label %211, !dbg !1896

211:                                              ; preds = %207
  %212 = load i1, i1* @do_lookup, align 1, !dbg !1897
  br i1 %212, label %213, label %215, !dbg !1898

213:                                              ; preds = %211
  %214 = call noalias i8* @canon_host(i8* nonnull %88) #19, !dbg !1899
  call void @llvm.dbg.value(metadata i8* %214, metadata !386, metadata !DIExpression()) #19, !dbg !1746
  br label %215, !dbg !1901

215:                                              ; preds = %213, %211, %207
  %216 = phi i8* [ %214, %213 ], [ null, %211 ], [ null, %207 ], !dbg !1746
  call void @llvm.dbg.value(metadata i8* %216, metadata !386, metadata !DIExpression()) #19, !dbg !1746
  %217 = icmp eq i8* %216, null, !dbg !1902
  %218 = select i1 %217, i8* %88, i8* %216, !dbg !1904
  call void @llvm.dbg.value(metadata i8* %218, metadata !386, metadata !DIExpression()) #19, !dbg !1746
  %219 = icmp eq i8* %208, null, !dbg !1905
  %220 = load i64, i64* @print_user.hostlen, align 8, !dbg !1907, !tbaa !1656
  %221 = call i64 @strlen(i8* nonnull dereferenceable(1) %218) #22, !dbg !1907
  br i1 %219, label %236, label %222, !dbg !1908

222:                                              ; preds = %215
  %223 = call i64 @strlen(i8* nonnull %208) #22, !dbg !1909
  %224 = add i64 %221, 4, !dbg !1912
  %225 = add i64 %224, %223, !dbg !1913
  %226 = icmp ult i64 %220, %225, !dbg !1914
  br i1 %226, label %229, label %227, !dbg !1915

227:                                              ; preds = %222
  %228 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1916, !tbaa !1459
  br label %233, !dbg !1915

229:                                              ; preds = %222
  store i64 %225, i64* @print_user.hostlen, align 8, !dbg !1917, !tbaa !1656
  %230 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1919, !tbaa !1459
  call void @free(i8* %230) #19, !dbg !1920
  %231 = load i64, i64* @print_user.hostlen, align 8, !dbg !1921, !tbaa !1656
  %232 = call noalias i8* @xmalloc(i64 %231) #19, !dbg !1922
  store i8* %232, i8** @print_user.hoststr, align 8, !dbg !1923, !tbaa !1459
  br label %233, !dbg !1924

233:                                              ; preds = %229, %227
  %234 = phi i8* [ %228, %227 ], [ %232, %229 ], !dbg !1916
  %235 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %234, i32 1, i64 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), i8* %218, i8* nonnull %208) #19, !dbg !1916
  br label %248, !dbg !1925

236:                                              ; preds = %215
  %237 = add i64 %221, 3, !dbg !1926
  %238 = icmp ult i64 %220, %237, !dbg !1929
  br i1 %238, label %241, label %239, !dbg !1930

239:                                              ; preds = %236
  %240 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1931, !tbaa !1459
  br label %245, !dbg !1930

241:                                              ; preds = %236
  store i64 %237, i64* @print_user.hostlen, align 8, !dbg !1932, !tbaa !1656
  %242 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1934, !tbaa !1459
  call void @free(i8* %242) #19, !dbg !1935
  %243 = load i64, i64* @print_user.hostlen, align 8, !dbg !1936, !tbaa !1656
  %244 = call noalias i8* @xmalloc(i64 %243) #19, !dbg !1937
  store i8* %244, i8** @print_user.hoststr, align 8, !dbg !1938, !tbaa !1459
  br label %245, !dbg !1939

245:                                              ; preds = %241, %239
  %246 = phi i8* [ %240, %239 ], [ %244, %241 ], !dbg !1931
  %247 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %246, i32 1, i64 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i8* %218) #19, !dbg !1931
  br label %248

248:                                              ; preds = %245, %233
  br i1 %217, label %250, label %249, !dbg !1940

249:                                              ; preds = %248
  call void @free(i8* %218) #19, !dbg !1941
  br label %250, !dbg !1941

250:                                              ; preds = %249, %248
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %88) #19, !dbg !1943
  br label %262, !dbg !1944

251:                                              ; preds = %185
  %252 = load i64, i64* @print_user.hostlen, align 8, !dbg !1945, !tbaa !1656
  %253 = icmp eq i64 %252, 0, !dbg !1948
  br i1 %253, label %256, label %254, !dbg !1949

254:                                              ; preds = %251
  %255 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1950, !tbaa !1459
  br label %260, !dbg !1949

256:                                              ; preds = %251
  store i64 1, i64* @print_user.hostlen, align 8, !dbg !1951, !tbaa !1656
  %257 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1953, !tbaa !1459
  call void @free(i8* %257) #19, !dbg !1954
  %258 = load i64, i64* @print_user.hostlen, align 8, !dbg !1955, !tbaa !1656
  %259 = call noalias i8* @xmalloc(i64 %258) #19, !dbg !1956
  store i8* %259, i8** @print_user.hoststr, align 8, !dbg !1957, !tbaa !1459
  br label %260, !dbg !1958

260:                                              ; preds = %256, %254
  %261 = phi i8* [ %255, %254 ], [ %259, %256 ], !dbg !1950
  store i8 0, i8* %261, align 1, !dbg !1959, !tbaa !1674
  br label %262

262:                                              ; preds = %260, %250
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !412, metadata !DIExpression()) #19, !dbg !1747
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %89) #19, !dbg !1960
  %263 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !1961
  %264 = load i32, i32* %263, align 4, !dbg !1961, !tbaa !1962
  %265 = sext i32 %264 to i64, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %265, metadata !413, metadata !DIExpression()) #19, !dbg !1747
  store i64 %265, i64* %9, align 8, !dbg !1963, !tbaa !1656
  call void @llvm.dbg.value(metadata i64* %9, metadata !413, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1747
  %266 = call %struct.tm* @localtime(i64* nonnull %9) #19, !dbg !1964
  call void @llvm.dbg.value(metadata %struct.tm* %266, metadata !414, metadata !DIExpression()) #19, !dbg !1747
  %267 = icmp eq %struct.tm* %266, null, !dbg !1965
  br i1 %267, label %271, label %268, !dbg !1967

268:                                              ; preds = %262
  %269 = load i8*, i8** @time_format, align 8, !dbg !1968, !tbaa !1459
  %270 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %269, %struct.tm* nonnull %266) #19, !dbg !1970
  br label %274, !dbg !1971

271:                                              ; preds = %262
  %272 = load i64, i64* %9, align 8, !dbg !1972, !tbaa !1656
  call void @llvm.dbg.value(metadata i64 %272, metadata !413, metadata !DIExpression()) #19, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %272, metadata !1973, metadata !DIExpression()) #19, !dbg !1979
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1978, metadata !DIExpression()) #19, !dbg !1979
  %273 = call i8* @imaxtostr(i64 %272, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #19, !dbg !1981
  br label %274, !dbg !1982

274:                                              ; preds = %271, %268
  %275 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %268 ], [ %273, %271 ], !dbg !1983
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %89) #19, !dbg !1984
  %276 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1985, !tbaa !1459
  %277 = icmp eq i8* %276, null, !dbg !1985
  %278 = select i1 %277, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* %276, !dbg !1985
  call fastcc void @print_line(i32 32, i8* nonnull %109, i8 signext %186, i32 32, i8* nonnull %121, i8* %275, i8* nonnull %82, i8* nonnull %84, i8* %278, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !1986
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %84) #19, !dbg !1987
  call void @llvm.lifetime.end.p0i8(i64 38, i8* nonnull %83) #19, !dbg !1987
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %82) #19, !dbg !1987
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %81) #19, !dbg !1987
  br label %497, !dbg !1988

279:                                              ; preds = %112, %108, %106
  %280 = load i1, i1* @need_runlevel, align 1, !dbg !1989
  br i1 %280, label %281, label %333, !dbg !1990

281:                                              ; preds = %279
  %282 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !1991
  %283 = load i16, i16* %282, align 4, !dbg !1991, !tbaa !1675
  %284 = icmp eq i16 %283, 1, !dbg !1991
  br i1 %284, label %285, label %333, !dbg !1992

285:                                              ; preds = %281
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !424, metadata !DIExpression()) #19, !dbg !1993
  %286 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 1, !dbg !1994
  %287 = load i32, i32* %286, align 4, !dbg !1994, !tbaa !1782
  %288 = sdiv i32 %287, 256, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %288, metadata !425, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %287, metadata !427, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1993
  %289 = load i8*, i8** @print_runlevel.runlevline, align 8, !dbg !1996, !tbaa !1459
  %290 = icmp eq i8* %289, null, !dbg !1996
  br i1 %290, label %291, label %296, !dbg !1998

291:                                              ; preds = %285
  %292 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0), i32 5) #19, !dbg !1999
  %293 = call i64 @strlen(i8* nonnull dereferenceable(1) %292) #22, !dbg !2000
  %294 = add i64 %293, 3, !dbg !2001
  %295 = call noalias i8* @xmalloc(i64 %294) #19, !dbg !2002
  store i8* %295, i8** @print_runlevel.runlevline, align 8, !dbg !2003, !tbaa !1459
  br label %296, !dbg !2004

296:                                              ; preds = %291, %285
  %297 = phi i8* [ %289, %285 ], [ %295, %291 ], !dbg !2005
  %298 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0), i32 5) #19, !dbg !2005
  %299 = and i32 %287, 255, !dbg !2005
  %300 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %297, i32 1, i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* %298, i32 %299) #19, !dbg !2005
  %301 = load i8*, i8** @print_runlevel.comment, align 8, !dbg !2006, !tbaa !1459
  %302 = icmp eq i8* %301, null, !dbg !2006
  br i1 %302, label %303, label %308, !dbg !2008

303:                                              ; preds = %296
  %304 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0), i32 5) #19, !dbg !2009
  %305 = call i64 @strlen(i8* nonnull dereferenceable(1) %304) #22, !dbg !2010
  %306 = add i64 %305, 2, !dbg !2011
  %307 = call noalias i8* @xmalloc(i64 %306) #19, !dbg !2012
  store i8* %307, i8** @print_runlevel.comment, align 8, !dbg !2013, !tbaa !1459
  br label %308, !dbg !2014

308:                                              ; preds = %303, %296
  %309 = phi i8* [ %301, %296 ], [ %307, %303 ], !dbg !2015
  %310 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0), i32 5) #19, !dbg !2015
  %311 = and i32 %288, 255, !dbg !2015
  %312 = icmp eq i32 %311, 78, !dbg !2015
  %313 = select i1 %312, i32 83, i32 %311, !dbg !2015
  %314 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %309, i32 1, i64 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), i8* %310, i32 %313) #19, !dbg !2015
  %315 = load i8*, i8** @print_runlevel.runlevline, align 8, !dbg !2016, !tbaa !1459
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !412, metadata !DIExpression()) #19, !dbg !1767
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %95) #19, !dbg !2017
  %316 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !2018
  %317 = load i32, i32* %316, align 4, !dbg !2018, !tbaa !1962
  %318 = sext i32 %317 to i64, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %318, metadata !413, metadata !DIExpression()) #19, !dbg !1767
  store i64 %318, i64* %8, align 8, !dbg !2019, !tbaa !1656
  call void @llvm.dbg.value(metadata i64* %8, metadata !413, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1767
  %319 = call %struct.tm* @localtime(i64* nonnull %8) #19, !dbg !2020
  call void @llvm.dbg.value(metadata %struct.tm* %319, metadata !414, metadata !DIExpression()) #19, !dbg !1767
  %320 = icmp eq %struct.tm* %319, null, !dbg !2021
  br i1 %320, label %324, label %321, !dbg !2022

321:                                              ; preds = %308
  %322 = load i8*, i8** @time_format, align 8, !dbg !2023, !tbaa !1459
  %323 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %322, %struct.tm* nonnull %319) #19, !dbg !2024
  br label %327, !dbg !2025

324:                                              ; preds = %308
  %325 = load i64, i64* %8, align 8, !dbg !2026, !tbaa !1656
  call void @llvm.dbg.value(metadata i64 %325, metadata !413, metadata !DIExpression()) #19, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %325, metadata !1973, metadata !DIExpression()) #19, !dbg !2027
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1978, metadata !DIExpression()) #19, !dbg !2027
  %326 = call i8* @imaxtostr(i64 %325, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #19, !dbg !2029
  br label %327, !dbg !2030

327:                                              ; preds = %324, %321
  %328 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %321 ], [ %326, %324 ], !dbg !2031
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %95) #19, !dbg !2032
  call void @llvm.dbg.value(metadata i32 %311, metadata !2033, metadata !DIExpression()) #19, !dbg !2037
  %329 = add nsw i32 %311, -32, !dbg !2039
  %330 = icmp ult i32 %329, 95, !dbg !2039
  %331 = load i8*, i8** @print_runlevel.comment, align 8, !dbg !2040
  %332 = select i1 %330, i8* %331, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !2040
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %315, i8* %328, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* %332, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !2041
  br label %497, !dbg !2042

333:                                              ; preds = %281, %279
  %334 = load i1, i1* @need_boottime, align 1, !dbg !2043
  br i1 %334, label %335, label %354, !dbg !2044

335:                                              ; preds = %333
  %336 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !2045
  %337 = load i16, i16* %336, align 4, !dbg !2045, !tbaa !1675
  %338 = icmp eq i16 %337, 2, !dbg !2045
  br i1 %338, label %339, label %354, !dbg !2046

339:                                              ; preds = %335
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1765, metadata !DIExpression()) #19, !dbg !2047
  %340 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0), i32 5) #19, !dbg !2048
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !412, metadata !DIExpression()) #19, !dbg !1761
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %94) #19, !dbg !2049
  %341 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !2050
  %342 = load i32, i32* %341, align 4, !dbg !2050, !tbaa !1962
  %343 = sext i32 %342 to i64, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %343, metadata !413, metadata !DIExpression()) #19, !dbg !1761
  store i64 %343, i64* %7, align 8, !dbg !2051, !tbaa !1656
  call void @llvm.dbg.value(metadata i64* %7, metadata !413, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1761
  %344 = call %struct.tm* @localtime(i64* nonnull %7) #19, !dbg !2052
  call void @llvm.dbg.value(metadata %struct.tm* %344, metadata !414, metadata !DIExpression()) #19, !dbg !1761
  %345 = icmp eq %struct.tm* %344, null, !dbg !2053
  br i1 %345, label %349, label %346, !dbg !2054

346:                                              ; preds = %339
  %347 = load i8*, i8** @time_format, align 8, !dbg !2055, !tbaa !1459
  %348 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %347, %struct.tm* nonnull %344) #19, !dbg !2056
  br label %352, !dbg !2057

349:                                              ; preds = %339
  %350 = load i64, i64* %7, align 8, !dbg !2058, !tbaa !1656
  call void @llvm.dbg.value(metadata i64 %350, metadata !413, metadata !DIExpression()) #19, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %350, metadata !1973, metadata !DIExpression()) #19, !dbg !2059
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1978, metadata !DIExpression()) #19, !dbg !2059
  %351 = call i8* @imaxtostr(i64 %350, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #19, !dbg !2061
  br label %352, !dbg !2062

352:                                              ; preds = %349, %346
  %353 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %346 ], [ %351, %349 ], !dbg !2063
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %94) #19, !dbg !2064
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %340, i8* %353, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !2065
  br label %497, !dbg !2066

354:                                              ; preds = %335, %333
  %355 = load i1, i1* @need_clockchange, align 1, !dbg !2067
  br i1 %355, label %356, label %375, !dbg !2068

356:                                              ; preds = %354
  %357 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !2069
  %358 = load i16, i16* %357, align 4, !dbg !2069, !tbaa !1675
  %359 = icmp eq i16 %358, 3, !dbg !2069
  br i1 %359, label %360, label %375, !dbg !2070

360:                                              ; preds = %356
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1759, metadata !DIExpression()) #19, !dbg !2071
  %361 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i64 0, i64 0), i32 5) #19, !dbg !2072
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !412, metadata !DIExpression()) #19, !dbg !1755
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %93) #19, !dbg !2073
  %362 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !2074
  %363 = load i32, i32* %362, align 4, !dbg !2074, !tbaa !1962
  %364 = sext i32 %363 to i64, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %364, metadata !413, metadata !DIExpression()) #19, !dbg !1755
  store i64 %364, i64* %6, align 8, !dbg !2075, !tbaa !1656
  call void @llvm.dbg.value(metadata i64* %6, metadata !413, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1755
  %365 = call %struct.tm* @localtime(i64* nonnull %6) #19, !dbg !2076
  call void @llvm.dbg.value(metadata %struct.tm* %365, metadata !414, metadata !DIExpression()) #19, !dbg !1755
  %366 = icmp eq %struct.tm* %365, null, !dbg !2077
  br i1 %366, label %370, label %367, !dbg !2078

367:                                              ; preds = %360
  %368 = load i8*, i8** @time_format, align 8, !dbg !2079, !tbaa !1459
  %369 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %368, %struct.tm* nonnull %365) #19, !dbg !2080
  br label %373, !dbg !2081

370:                                              ; preds = %360
  %371 = load i64, i64* %6, align 8, !dbg !2082, !tbaa !1656
  call void @llvm.dbg.value(metadata i64 %371, metadata !413, metadata !DIExpression()) #19, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %371, metadata !1973, metadata !DIExpression()) #19, !dbg !2083
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1978, metadata !DIExpression()) #19, !dbg !2083
  %372 = call i8* @imaxtostr(i64 %371, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #19, !dbg !2085
  br label %373, !dbg !2086

373:                                              ; preds = %370, %367
  %374 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %367 ], [ %372, %370 ], !dbg !2087
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %93) #19, !dbg !2088
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %361, i8* %374, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !2089
  br label %497, !dbg !2090

375:                                              ; preds = %356, %354
  %376 = load i1, i1* @need_initspawn, align 1, !dbg !2091
  br i1 %376, label %377, label %408, !dbg !2092

377:                                              ; preds = %375
  %378 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !2093
  %379 = load i16, i16* %378, align 4, !dbg !2093, !tbaa !1675
  %380 = icmp eq i16 %379, 5, !dbg !2093
  br i1 %380, label %381, label %408, !dbg !2094

381:                                              ; preds = %377
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1626, metadata !DIExpression()) #19, !dbg !2095
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !2096, metadata !DIExpression()) #19, !dbg !2103
  call void @llvm.dbg.value(metadata i64 4, metadata !2101, metadata !DIExpression()) #19, !dbg !2103
  %382 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #19, !dbg !2105
  %383 = call i64 @strlen(i8* nonnull dereferenceable(1) %382) #22, !dbg !2106
  %384 = add i64 %383, 5, !dbg !2107
  %385 = call noalias i8* @xmalloc(i64 %384) #19, !dbg !2108
  call void @llvm.dbg.value(metadata i8* %385, metadata !2102, metadata !DIExpression()) #19, !dbg !2103
  %386 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #19, !dbg !2109
  call void @llvm.dbg.value(metadata i8* %385, metadata !2110, metadata !DIExpression()) #19, !dbg !2114
  call void @llvm.dbg.value(metadata i8* %386, metadata !2113, metadata !DIExpression()) #19, !dbg !2114
  %387 = call i8* @strcpy(i8* nonnull dereferenceable(1) %385, i8* nonnull dereferenceable(1) %386), !dbg !2116
  %388 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 3, i64 0, !dbg !2117
  call void @llvm.dbg.value(metadata i8* %385, metadata !2118, metadata !DIExpression()) #19, !dbg !2123
  call void @llvm.dbg.value(metadata i8* %388, metadata !2121, metadata !DIExpression()) #19, !dbg !2123
  call void @llvm.dbg.value(metadata i64 4, metadata !2122, metadata !DIExpression()) #19, !dbg !2123
  %389 = call i8* @strncat(i8* nonnull dereferenceable(1) %385, i8* nonnull dereferenceable(1) %388, i64 4), !dbg !2125
  call void @llvm.dbg.value(metadata i8* %385, metadata !1627, metadata !DIExpression()) #19, !dbg !2095
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %84) #19, !dbg !1628
  %390 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 1, !dbg !1628
  %391 = load i32, i32* %390, align 4, !dbg !1628, !tbaa !1782
  %392 = sext i32 %391 to i64, !dbg !1628
  %393 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %84, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %392) #19, !dbg !1628
  %394 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 2, i64 0, !dbg !2126
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !412, metadata !DIExpression()) #19, !dbg !1753
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %92) #19, !dbg !2127
  %395 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !2128
  %396 = load i32, i32* %395, align 4, !dbg !2128, !tbaa !1962
  %397 = sext i32 %396 to i64, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %397, metadata !413, metadata !DIExpression()) #19, !dbg !1753
  store i64 %397, i64* %5, align 8, !dbg !2129, !tbaa !1656
  call void @llvm.dbg.value(metadata i64* %5, metadata !413, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1753
  %398 = call %struct.tm* @localtime(i64* nonnull %5) #19, !dbg !2130
  call void @llvm.dbg.value(metadata %struct.tm* %398, metadata !414, metadata !DIExpression()) #19, !dbg !1753
  %399 = icmp eq %struct.tm* %398, null, !dbg !2131
  br i1 %399, label %403, label %400, !dbg !2132

400:                                              ; preds = %381
  %401 = load i8*, i8** @time_format, align 8, !dbg !2133, !tbaa !1459
  %402 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %401, %struct.tm* nonnull %398) #19, !dbg !2134
  br label %406, !dbg !2135

403:                                              ; preds = %381
  %404 = load i64, i64* %5, align 8, !dbg !2136, !tbaa !1656
  call void @llvm.dbg.value(metadata i64 %404, metadata !413, metadata !DIExpression()) #19, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %404, metadata !1973, metadata !DIExpression()) #19, !dbg !2137
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1978, metadata !DIExpression()) #19, !dbg !2137
  %405 = call i8* @imaxtostr(i64 %404, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #19, !dbg !2139
  br label %406, !dbg !2140

406:                                              ; preds = %403, %400
  %407 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %400 ], [ %405, %403 ], !dbg !2141
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %92) #19, !dbg !2142
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 32, i8* nonnull %394, i8* %407, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %84, i8* %385, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !2143
  call void @free(i8* %385) #19, !dbg !2144
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %84) #19, !dbg !2145
  br label %497, !dbg !2146

408:                                              ; preds = %377, %375
  %409 = load i1, i1* @need_login, align 1, !dbg !2147
  br i1 %409, label %410, label %442, !dbg !2148

410:                                              ; preds = %408
  %411 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !2149
  %412 = load i16, i16* %411, align 4, !dbg !2149, !tbaa !1675
  %413 = icmp eq i16 %412, 6, !dbg !2149
  br i1 %413, label %414, label %442, !dbg !2150

414:                                              ; preds = %410
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !1637, metadata !DIExpression()) #19, !dbg !2151
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !2096, metadata !DIExpression()) #19, !dbg !2152
  call void @llvm.dbg.value(metadata i64 4, metadata !2101, metadata !DIExpression()) #19, !dbg !2152
  %415 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #19, !dbg !2154
  %416 = call i64 @strlen(i8* nonnull dereferenceable(1) %415) #22, !dbg !2155
  %417 = add i64 %416, 5, !dbg !2156
  %418 = call noalias i8* @xmalloc(i64 %417) #19, !dbg !2157
  call void @llvm.dbg.value(metadata i8* %418, metadata !2102, metadata !DIExpression()) #19, !dbg !2152
  %419 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #19, !dbg !2158
  call void @llvm.dbg.value(metadata i8* %418, metadata !2110, metadata !DIExpression()) #19, !dbg !2159
  call void @llvm.dbg.value(metadata i8* %419, metadata !2113, metadata !DIExpression()) #19, !dbg !2159
  %420 = call i8* @strcpy(i8* nonnull dereferenceable(1) %418, i8* nonnull dereferenceable(1) %419), !dbg !2161
  %421 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 3, i64 0, !dbg !2162
  call void @llvm.dbg.value(metadata i8* %418, metadata !2118, metadata !DIExpression()) #19, !dbg !2163
  call void @llvm.dbg.value(metadata i8* %421, metadata !2121, metadata !DIExpression()) #19, !dbg !2163
  call void @llvm.dbg.value(metadata i64 4, metadata !2122, metadata !DIExpression()) #19, !dbg !2163
  %422 = call i8* @strncat(i8* nonnull dereferenceable(1) %418, i8* nonnull dereferenceable(1) %421, i64 4), !dbg !2165
  call void @llvm.dbg.value(metadata i8* %418, metadata !1638, metadata !DIExpression()) #19, !dbg !2151
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %84) #19, !dbg !1639
  %423 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 1, !dbg !1639
  %424 = load i32, i32* %423, align 4, !dbg !1639, !tbaa !1782
  %425 = sext i32 %424 to i64, !dbg !1639
  %426 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %84, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %425) #19, !dbg !1639
  %427 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0), i32 5) #19, !dbg !2166
  %428 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 2, i64 0, !dbg !2167
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !412, metadata !DIExpression()) #19, !dbg !1751
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %91) #19, !dbg !2168
  %429 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !2169
  %430 = load i32, i32* %429, align 4, !dbg !2169, !tbaa !1962
  %431 = sext i32 %430 to i64, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %431, metadata !413, metadata !DIExpression()) #19, !dbg !1751
  store i64 %431, i64* %4, align 8, !dbg !2170, !tbaa !1656
  call void @llvm.dbg.value(metadata i64* %4, metadata !413, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1751
  %432 = call %struct.tm* @localtime(i64* nonnull %4) #19, !dbg !2171
  call void @llvm.dbg.value(metadata %struct.tm* %432, metadata !414, metadata !DIExpression()) #19, !dbg !1751
  %433 = icmp eq %struct.tm* %432, null, !dbg !2172
  br i1 %433, label %437, label %434, !dbg !2173

434:                                              ; preds = %414
  %435 = load i8*, i8** @time_format, align 8, !dbg !2174, !tbaa !1459
  %436 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %435, %struct.tm* nonnull %432) #19, !dbg !2175
  br label %440, !dbg !2176

437:                                              ; preds = %414
  %438 = load i64, i64* %4, align 8, !dbg !2177, !tbaa !1656
  call void @llvm.dbg.value(metadata i64 %438, metadata !413, metadata !DIExpression()) #19, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %438, metadata !1973, metadata !DIExpression()) #19, !dbg !2178
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1978, metadata !DIExpression()) #19, !dbg !2178
  %439 = call i8* @imaxtostr(i64 %438, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #19, !dbg !2180
  br label %440, !dbg !2181

440:                                              ; preds = %437, %434
  %441 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %434 ], [ %439, %437 ], !dbg !2182
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %91) #19, !dbg !2183
  call fastcc void @print_line(i32 -1, i8* %427, i8 signext 32, i32 32, i8* nonnull %428, i8* %441, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %84, i8* %418, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !2184
  call void @free(i8* %418) #19, !dbg !2185
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %84) #19, !dbg !2186
  br label %497, !dbg !2187

442:                                              ; preds = %410, %408
  %443 = load i1, i1* @need_deadprocs, align 1, !dbg !2188
  br i1 %443, label %444, label %497, !dbg !2189

444:                                              ; preds = %442
  %445 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !2190
  %446 = load i16, i16* %445, align 4, !dbg !2190, !tbaa !1675
  %447 = icmp eq i16 %446, 8, !dbg !2190
  br i1 %447, label %448, label %497, !dbg !2191

448:                                              ; preds = %444
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !434, metadata !DIExpression()) #19, !dbg !2192
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !2096, metadata !DIExpression()) #19, !dbg !2193
  call void @llvm.dbg.value(metadata i64 4, metadata !2101, metadata !DIExpression()) #19, !dbg !2193
  %449 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #19, !dbg !2195
  %450 = call i64 @strlen(i8* nonnull dereferenceable(1) %449) #22, !dbg !2196
  %451 = add i64 %450, 5, !dbg !2197
  %452 = call noalias i8* @xmalloc(i64 %451) #19, !dbg !2198
  call void @llvm.dbg.value(metadata i8* %452, metadata !2102, metadata !DIExpression()) #19, !dbg !2193
  %453 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #19, !dbg !2199
  call void @llvm.dbg.value(metadata i8* %452, metadata !2110, metadata !DIExpression()) #19, !dbg !2200
  call void @llvm.dbg.value(metadata i8* %453, metadata !2113, metadata !DIExpression()) #19, !dbg !2200
  %454 = call i8* @strcpy(i8* nonnull dereferenceable(1) %452, i8* nonnull dereferenceable(1) %453), !dbg !2202
  %455 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 3, i64 0, !dbg !2203
  call void @llvm.dbg.value(metadata i8* %452, metadata !2118, metadata !DIExpression()) #19, !dbg !2204
  call void @llvm.dbg.value(metadata i8* %455, metadata !2121, metadata !DIExpression()) #19, !dbg !2204
  call void @llvm.dbg.value(metadata i64 4, metadata !2122, metadata !DIExpression()) #19, !dbg !2204
  %456 = call i8* @strncat(i8* nonnull dereferenceable(1) %452, i8* nonnull dereferenceable(1) %455, i64 4), !dbg !2206
  call void @llvm.dbg.value(metadata i8* %452, metadata !435, metadata !DIExpression()) #19, !dbg !2192
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %84) #19, !dbg !1642
  %457 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 1, !dbg !1642
  %458 = load i32, i32* %457, align 4, !dbg !1642, !tbaa !1782
  %459 = sext i32 %458 to i64, !dbg !1642
  %460 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %84, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %459) #19, !dbg !1642
  %461 = load i8*, i8** @print_deadprocs.exitstr, align 8, !dbg !2207, !tbaa !1459
  %462 = icmp eq i8* %461, null, !dbg !2207
  br i1 %462, label %463, label %471, !dbg !2209

463:                                              ; preds = %448
  %464 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i32 5) #19, !dbg !2210
  %465 = call i64 @strlen(i8* nonnull dereferenceable(1) %464) #22, !dbg !2211
  %466 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i32 5) #19, !dbg !2212
  %467 = call i64 @strlen(i8* nonnull dereferenceable(1) %466) #22, !dbg !2213
  %468 = add i64 %465, 14, !dbg !2214
  %469 = add i64 %468, %467, !dbg !2215
  %470 = call noalias i8* @xmalloc(i64 %469) #19, !dbg !2216
  store i8* %470, i8** @print_deadprocs.exitstr, align 8, !dbg !2217, !tbaa !1459
  br label %471, !dbg !2218

471:                                              ; preds = %463, %448
  %472 = phi i8* [ %461, %448 ], [ %470, %463 ], !dbg !2219
  %473 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i32 5) #19, !dbg !2219
  %474 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 6, i32 0, !dbg !2219
  %475 = load i16, i16* %474, align 4, !dbg !2219, !tbaa !2220
  %476 = sext i16 %475 to i32, !dbg !2219
  %477 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i32 5) #19, !dbg !2219
  %478 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 6, i32 1, !dbg !2219
  %479 = load i16, i16* %478, align 2, !dbg !2219, !tbaa !2221
  %480 = sext i16 %479 to i32, !dbg !2219
  %481 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %472, i32 1, i64 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i64 0, i64 0), i8* %473, i32 %476, i8* %477, i32 %480) #19, !dbg !2219
  %482 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 2, i64 0, !dbg !2222
  call void @llvm.dbg.value(metadata %struct.utmpx* %99, metadata !412, metadata !DIExpression()) #19, !dbg !1749
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %90) #19, !dbg !2223
  %483 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !2224
  %484 = load i32, i32* %483, align 4, !dbg !2224, !tbaa !1962
  %485 = sext i32 %484 to i64, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %485, metadata !413, metadata !DIExpression()) #19, !dbg !1749
  store i64 %485, i64* %3, align 8, !dbg !2225, !tbaa !1656
  call void @llvm.dbg.value(metadata i64* %3, metadata !413, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1749
  %486 = call %struct.tm* @localtime(i64* nonnull %3) #19, !dbg !2226
  call void @llvm.dbg.value(metadata %struct.tm* %486, metadata !414, metadata !DIExpression()) #19, !dbg !1749
  %487 = icmp eq %struct.tm* %486, null, !dbg !2227
  br i1 %487, label %491, label %488, !dbg !2228

488:                                              ; preds = %471
  %489 = load i8*, i8** @time_format, align 8, !dbg !2229, !tbaa !1459
  %490 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %489, %struct.tm* nonnull %486) #19, !dbg !2230
  br label %494, !dbg !2231

491:                                              ; preds = %471
  %492 = load i64, i64* %3, align 8, !dbg !2232, !tbaa !1656
  call void @llvm.dbg.value(metadata i64 %492, metadata !413, metadata !DIExpression()) #19, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %492, metadata !1973, metadata !DIExpression()) #19, !dbg !2233
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1978, metadata !DIExpression()) #19, !dbg !2233
  %493 = call i8* @imaxtostr(i64 %492, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #19, !dbg !2235
  br label %494, !dbg !2236

494:                                              ; preds = %491, %488
  %495 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %488 ], [ %493, %491 ], !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %90) #19, !dbg !2238
  %496 = load i8*, i8** @print_deadprocs.exitstr, align 8, !dbg !2239, !tbaa !1459
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 32, i8* nonnull %482, i8* %495, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %84, i8* %452, i8* %496) #19, !dbg !2240
  call void @free(i8* %452) #19, !dbg !2241
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %84) #19, !dbg !2242
  br label %497, !dbg !2243

497:                                              ; preds = %494, %444, %442, %440, %406, %373, %352, %327, %274, %102
  %498 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 0, !dbg !2244
  %499 = load i16, i16* %498, align 4, !dbg !2244, !tbaa !1675
  %500 = icmp eq i16 %499, 2, !dbg !2244
  br i1 %500, label %501, label %505, !dbg !2246

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 0, i32 8, i32 0, !dbg !2247
  %503 = load i32, i32* %502, align 4, !dbg !2247, !tbaa !1962
  %504 = sext i32 %503 to i64, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %504, metadata !1617, metadata !DIExpression()) #19, !dbg !1692
  br label %505, !dbg !2248

505:                                              ; preds = %501, %497
  %506 = phi i64 [ %504, %501 ], [ %98, %497 ], !dbg !1692
  call void @llvm.dbg.value(metadata i64 %506, metadata !1617, metadata !DIExpression()) #19, !dbg !1692
  %507 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %99, i64 1, !dbg !2249
  call void @llvm.dbg.value(metadata %struct.utmpx* %507, metadata !1615, metadata !DIExpression()) #19, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %100, metadata !1614, metadata !DIExpression()) #19, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %100, metadata !1614, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #19, !dbg !1692
  %508 = icmp eq i64 %100, 0, !dbg !1720
  br i1 %508, label %509, label %96, !dbg !1720, !llvm.loop !2250

509:                                              ; preds = %505, %77, %69, %53
  %510 = bitcast %struct.utmpx** %16 to i8**, !dbg !2252
  %511 = load i8*, i8** %510, align 8, !dbg !2252, !tbaa !1459
  call void @llvm.dbg.value(metadata %struct.utmpx* undef, metadata !1602, metadata !DIExpression()), !dbg !1646
  call void @free(i8* %511) #19, !dbg !2253
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #19, !dbg !2254
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #19, !dbg !2254
  ret void, !dbg !2254
}

declare !dbg !146 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !194 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_line(i32 %0, i8* %1, i8 signext %2, i32 %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9) unnamed_addr #8 !dbg !290 {
  %11 = alloca i8*, align 8
  %12 = alloca [8 x i8], align 1
  %13 = alloca [13 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !294, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %1, metadata !295, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 %2, metadata !296, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 %3, metadata !297, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %4, metadata !298, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %5, metadata !299, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %6, metadata !300, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %7, metadata !301, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %8, metadata !302, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %9, metadata !303, metadata !DIExpression()), !dbg !2255
  %14 = bitcast i8** %11 to i8*, !dbg !2256
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #19, !dbg !2256
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !2257
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #19, !dbg !2257
  call void @llvm.dbg.declare(metadata [8 x i8]* %12, metadata !305, metadata !DIExpression()), !dbg !2258
  %16 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 0, !dbg !2259
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %16) #19, !dbg !2259
  call void @llvm.dbg.declare(metadata [13 x i8]* %13, metadata !309, metadata !DIExpression()), !dbg !2260
  store i8 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @print_line.mesg, i64 0, i64 1), align 1, !dbg !2261, !tbaa !1674
  %17 = load i1, i1* @include_idle, align 1, !dbg !2262
  br i1 %17, label %18, label %25, !dbg !2264

18:                                               ; preds = %10
  %19 = load i1, i1* @short_output, align 1, !dbg !2265
  br i1 %19, label %25, label %20, !dbg !2266

20:                                               ; preds = %18
  %21 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %6) #22, !dbg !2267
  %22 = icmp ult i64 %21, 7, !dbg !2268
  br i1 %22, label %23, label %25, !dbg !2269

23:                                               ; preds = %20
  %24 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %15, i32 1, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0), i8* %6) #19, !dbg !2270
  br label %26, !dbg !2270

25:                                               ; preds = %20, %18, %10
  store i8 0, i8* %15, align 1, !dbg !2271, !tbaa !1674
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i1, i1* @short_output, align 1, !dbg !2272
  br i1 %27, label %33, label %28, !dbg !2274

28:                                               ; preds = %26
  %29 = call i64 @strlen(i8* nonnull dereferenceable(1) %7) #22, !dbg !2275
  %30 = icmp ult i64 %29, 12, !dbg !2276
  br i1 %30, label %31, label %33, !dbg !2277

31:                                               ; preds = %28
  %32 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %16, i32 1, i64 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i8* %7) #19, !dbg !2278
  br label %34, !dbg !2278

33:                                               ; preds = %28, %26
  store i8 0, i8* %16, align 1, !dbg !2279, !tbaa !1674
  br label %34

34:                                               ; preds = %33, %31
  %35 = load i1, i1* @include_exit, align 1, !dbg !2280
  br i1 %35, label %36, label %41, !dbg !2280

36:                                               ; preds = %34
  %37 = call i64 @strlen(i8* nonnull dereferenceable(1) %9) #22, !dbg !2281
  %38 = icmp ult i64 %37, 12, !dbg !2281
  %39 = add i64 %37, 2, !dbg !2281
  %40 = select i1 %38, i64 14, i64 %39, !dbg !2281
  br label %41, !dbg !2280

41:                                               ; preds = %34, %36
  %42 = phi i64 [ %40, %36 ], [ 1, %34 ], !dbg !2280
  %43 = call noalias i8* @xmalloc(i64 %42) #19, !dbg !2282
  call void @llvm.dbg.value(metadata i8* %43, metadata !313, metadata !DIExpression()), !dbg !2255
  %44 = load i1, i1* @include_exit, align 1, !dbg !2283
  br i1 %44, label %45, label %47, !dbg !2285

45:                                               ; preds = %41
  %46 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %43, i32 1, i64 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i8* %9) #19, !dbg !2286
  br label %48, !dbg !2286

47:                                               ; preds = %41
  store i8 0, i8* %43, align 1, !dbg !2287, !tbaa !1674
  br label %48

48:                                               ; preds = %47, %45
  %49 = icmp eq i8* %1, null, !dbg !2288
  %50 = select i1 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* %1, !dbg !2288
  %51 = load i1, i1* @include_mesg, align 1, !dbg !2288
  %52 = select i1 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @print_line.mesg, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !2288
  %53 = load i32, i32* @time_format_width, align 4, !dbg !2288, !tbaa !1574
  call void @llvm.dbg.value(metadata i8** %11, metadata !304, metadata !DIExpression(DW_OP_deref)), !dbg !2255
  %54 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %11, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i32 %0, i8* %50, i8* %52, i32 %3, i8* %4, i32 %53, i8* %5, i8* nonnull %15, i8* nonnull %16, i8* %8, i8* %43) #19, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %54, metadata !314, metadata !DIExpression()), !dbg !2255
  %55 = icmp eq i32 %54, -1, !dbg !2289
  br i1 %55, label %56, label %57, !dbg !2291

56:                                               ; preds = %48
  call void @xalloc_die() #23, !dbg !2292
  unreachable, !dbg !2292

57:                                               ; preds = %48
  %58 = load i8*, i8** %11, align 8, !dbg !2293, !tbaa !1459
  call void @llvm.dbg.value(metadata i8* %58, metadata !304, metadata !DIExpression()), !dbg !2255
  %59 = call i64 @strlen(i8* nonnull dereferenceable(1) %58) #22, !dbg !2294
  %60 = getelementptr inbounds i8, i8* %58, i64 %59, !dbg !2295
  call void @llvm.dbg.value(metadata i8* %60, metadata !315, metadata !DIExpression()), !dbg !2296
  br label %61, !dbg !2297

61:                                               ; preds = %61, %57
  %62 = phi i8* [ %60, %57 ], [ %63, %61 ], !dbg !2296
  call void @llvm.dbg.value(metadata i8* %62, metadata !315, metadata !DIExpression()), !dbg !2296
  %63 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !2298
  call void @llvm.dbg.value(metadata i8* %63, metadata !315, metadata !DIExpression()), !dbg !2296
  %64 = load i8, i8* %63, align 1, !dbg !2299, !tbaa !1674
  %65 = icmp eq i8 %64, 32, !dbg !2300
  br i1 %65, label %61, label %66, !dbg !2297, !llvm.loop !2301

66:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i8* %62, metadata !315, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8* %62, metadata !315, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8* %62, metadata !315, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8* %62, metadata !315, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8* %62, metadata !315, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8* %62, metadata !315, metadata !DIExpression()), !dbg !2296
  store i8 0, i8* %62, align 1, !dbg !2303, !tbaa !1674
  %67 = load i8*, i8** %11, align 8, !dbg !2304, !tbaa !1459
  call void @llvm.dbg.value(metadata i8* %67, metadata !304, metadata !DIExpression()), !dbg !2255
  %68 = call i32 @puts(i8* nonnull dereferenceable(1) %67), !dbg !2305
  %69 = load i8*, i8** %11, align 8, !dbg !2306, !tbaa !1459
  call void @llvm.dbg.value(metadata i8* %69, metadata !304, metadata !DIExpression()), !dbg !2255
  call void @free(i8* %69) #19, !dbg !2307
  call void @free(i8* %43) #19, !dbg !2308
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %16) #19, !dbg !2309
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #19, !dbg !2309
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #19, !dbg !2309
  ret void, !dbg !2309
}

; Function Attrs: nounwind
declare !dbg !205 i8* @ttyname(i32) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !219 i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !224 %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !244 i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i8* @strcpy(i8* noalias returned, i8* noalias nocapture readonly) #12

; Function Attrs: nofree nounwind
declare i8* @strncat(i8* returned, i8* nocapture readonly, i64) #12

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !214 i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @canon_host(i8* %0) local_unnamed_addr #8 !dbg !2310 {
  %2 = alloca %struct.addrinfo*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2312, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i8* %0, metadata !510, metadata !DIExpression()) #19, !dbg !2314
  call void @llvm.dbg.value(metadata i32* @last_cherror, metadata !511, metadata !DIExpression()) #19, !dbg !2314
  call void @llvm.dbg.value(metadata i8* null, metadata !512, metadata !DIExpression()) #19, !dbg !2314
  %3 = bitcast %struct.addrinfo** %2 to i8*, !dbg !2316
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #19, !dbg !2316
  call void @llvm.dbg.value(metadata %struct.addrinfo* null, metadata !513, metadata !DIExpression()) #19, !dbg !2314
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8, !dbg !2317, !tbaa !1459
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !2318, !tbaa !2319
  call void @llvm.dbg.value(metadata %struct.addrinfo** %2, metadata !513, metadata !DIExpression(DW_OP_deref)) #19, !dbg !2314
  %4 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %2) #19, !dbg !2321
  call void @llvm.dbg.value(metadata i32 %4, metadata !514, metadata !DIExpression()) #19, !dbg !2314
  %5 = icmp eq i32 %4, 0, !dbg !2322
  br i1 %5, label %6, label %17, !dbg !2324

6:                                                ; preds = %1
  %7 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !2325, !tbaa !1459
  call void @llvm.dbg.value(metadata %struct.addrinfo* %7, metadata !513, metadata !DIExpression()) #19, !dbg !2314
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i64 0, i32 6, !dbg !2327
  %9 = load i8*, i8** %8, align 8, !dbg !2327, !tbaa !2328
  %10 = icmp eq i8* %9, null, !dbg !2325
  %11 = select i1 %10, i8* %0, i8* %9, !dbg !2325
  %12 = call noalias i8* @strdup(i8* %11) #19, !dbg !2329
  call void @llvm.dbg.value(metadata i8* %12, metadata !512, metadata !DIExpression()) #19, !dbg !2314
  %13 = icmp eq i8* %12, null, !dbg !2330
  br i1 %13, label %14, label %15, !dbg !2332

14:                                               ; preds = %6
  store i32 -10, i32* @last_cherror, align 4, !dbg !2333, !tbaa !1574
  br label %15, !dbg !2334

15:                                               ; preds = %14, %6
  %16 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !2335, !tbaa !1459
  call void @llvm.dbg.value(metadata %struct.addrinfo* %16, metadata !513, metadata !DIExpression()) #19, !dbg !2314
  call void @freeaddrinfo(%struct.addrinfo* %16) #19, !dbg !2336
  br label %18, !dbg !2337

17:                                               ; preds = %1
  store i32 %4, i32* @last_cherror, align 4, !dbg !2338, !tbaa !1574
  br label %18, !dbg !2340

18:                                               ; preds = %15, %17
  %19 = phi i8* [ null, %17 ], [ %12, %15 ], !dbg !2314
  call void @llvm.dbg.value(metadata i8* %19, metadata !512, metadata !DIExpression()) #19, !dbg !2314
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #19, !dbg !2341
  ret i8* %19, !dbg !2342
}

declare !dbg !468 i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias i8* @strdup(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !499 void @freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @canon_host_r(i8* %0, i32* %1) local_unnamed_addr #8 !dbg !508 {
  %3 = alloca %struct.addrinfo*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !510, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i32* %1, metadata !511, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8* null, metadata !512, metadata !DIExpression()), !dbg !2343
  %4 = bitcast %struct.addrinfo** %3 to i8*, !dbg !2344
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #19, !dbg !2344
  call void @llvm.dbg.value(metadata %struct.addrinfo* null, metadata !513, metadata !DIExpression()), !dbg !2343
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8, !dbg !2345, !tbaa !1459
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !2346, !tbaa !2319
  call void @llvm.dbg.value(metadata %struct.addrinfo** %3, metadata !513, metadata !DIExpression(DW_OP_deref)), !dbg !2343
  %5 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %3) #19, !dbg !2347
  call void @llvm.dbg.value(metadata i32 %5, metadata !514, metadata !DIExpression()), !dbg !2343
  %6 = icmp eq i32 %5, 0, !dbg !2348
  br i1 %6, label %7, label %20, !dbg !2349

7:                                                ; preds = %2
  %8 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !2350, !tbaa !1459
  call void @llvm.dbg.value(metadata %struct.addrinfo* %8, metadata !513, metadata !DIExpression()), !dbg !2343
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i64 0, i32 6, !dbg !2351
  %10 = load i8*, i8** %9, align 8, !dbg !2351, !tbaa !2328
  %11 = icmp eq i8* %10, null, !dbg !2350
  %12 = select i1 %11, i8* %0, i8* %10, !dbg !2350
  %13 = call noalias i8* @strdup(i8* %12) #19, !dbg !2352
  call void @llvm.dbg.value(metadata i8* %13, metadata !512, metadata !DIExpression()), !dbg !2343
  %14 = icmp eq i8* %13, null, !dbg !2353
  %15 = icmp ne i32* %1, null, !dbg !2354
  %16 = and i1 %15, %14, !dbg !2355
  br i1 %16, label %17, label %18, !dbg !2355

17:                                               ; preds = %7
  store i32 -10, i32* %1, align 4, !dbg !2356, !tbaa !1574
  br label %18, !dbg !2357

18:                                               ; preds = %7, %17
  %19 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !2358, !tbaa !1459
  call void @llvm.dbg.value(metadata %struct.addrinfo* %19, metadata !513, metadata !DIExpression()), !dbg !2343
  call void @freeaddrinfo(%struct.addrinfo* %19) #19, !dbg !2359
  br label %23, !dbg !2360

20:                                               ; preds = %2
  %21 = icmp eq i32* %1, null, !dbg !2361
  br i1 %21, label %23, label %22, !dbg !2362

22:                                               ; preds = %20
  store i32 %5, i32* %1, align 4, !dbg !2363, !tbaa !1574
  br label %23, !dbg !2364

23:                                               ; preds = %20, %22, %18
  %24 = phi i8* [ null, %22 ], [ null, %20 ], [ %13, %18 ], !dbg !2343
  call void @llvm.dbg.value(metadata i8* %24, metadata !512, metadata !DIExpression()), !dbg !2343
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #19, !dbg !2365
  ret i8* %24, !dbg !2366
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @ch_strerror() local_unnamed_addr #8 !dbg !2367 {
  %1 = load i32, i32* @last_cherror, align 4, !dbg !2368, !tbaa !1574
  %2 = tail call i8* @gai_strerror(i32 %1) #19, !dbg !2369
  ret i8* %2, !dbg !2370
}

; Function Attrs: nounwind
declare !dbg !502 i8* @gai_strerror(i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !2371 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2373, metadata !DIExpression()), !dbg !2374
  store i8* %0, i8** @file_name, align 8, !dbg !2375, !tbaa !1459
  ret void, !dbg !2376
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !2377 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2381, metadata !DIExpression()), !dbg !2382
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2383, !tbaa !2384
  ret void, !dbg !2386
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2387 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2392, !tbaa !1459
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #19, !dbg !2393
  %3 = icmp eq i32 %2, 0, !dbg !2394
  br i1 %3, label %22, label %4, !dbg !2395

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2396, !tbaa !2384, !range !2397
  %6 = icmp eq i8 %5, 0, !dbg !2396
  br i1 %6, label %11, label %7, !dbg !2398

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !2399
  %9 = load i32, i32* %8, align 4, !dbg !2399, !tbaa !1574
  %10 = icmp eq i32 %9, 32, !dbg !2400
  br i1 %10, label %22, label %11, !dbg !2401

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i64 0, i64 0), i32 5) #19, !dbg !2402
  call void @llvm.dbg.value(metadata i8* %12, metadata !2389, metadata !DIExpression()), !dbg !2403
  %13 = load i8*, i8** @file_name, align 8, !dbg !2404, !tbaa !1459
  %14 = icmp eq i8* %13, null, !dbg !2404
  %15 = tail call i32* @__errno_location() #25, !dbg !2406
  %16 = load i32, i32* %15, align 4, !dbg !2406, !tbaa !1574
  br i1 %14, label %19, label %17, !dbg !2407

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #19, !dbg !2408
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.101, i64 0, i64 0), i8* %18, i8* %12) #19, !dbg !2409
  br label %20, !dbg !2409

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.102, i64 0, i64 0), i8* %12) #19, !dbg !2410
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2411, !tbaa !1574
  tail call void @_exit(i32 %21) #23, !dbg !2412
  unreachable, !dbg !2412

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2413, !tbaa !1459
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #19, !dbg !2415
  %25 = icmp eq i32 %24, 0, !dbg !2416
  br i1 %25, label %28, label %26, !dbg !2417

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2418, !tbaa !1574
  tail call void @_exit(i32 %27) #23, !dbg !2419
  unreachable, !dbg !2419

28:                                               ; preds = %22
  ret void, !dbg !2420
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !2421 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()), !dbg !2425
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !2426
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #19, !dbg !2426
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !2424, metadata !DIExpression()), !dbg !2427
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #19, !dbg !2428
  %5 = icmp eq i32 %4, 0, !dbg !2428
  br i1 %5, label %6, label %13, !dbg !2430

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !2431
  %8 = load i16, i16* %7, align 16, !dbg !2431
  %9 = icmp eq i16 %8, 67, !dbg !2431
  br i1 %9, label %13, label %10, !dbg !2432

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.107, i64 0, i64 0), i64 6), !dbg !2433
  %12 = icmp ne i32 %11, 0, !dbg !2434
  br label %13, !dbg !2432

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !2425
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #19, !dbg !2435
  ret i1 %14, !dbg !2435
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @imaxtostr(i64 %0, i8* %1) local_unnamed_addr #13 !dbg !2436 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2441, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %1, metadata !2442, metadata !DIExpression()), !dbg !2444
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2445
  call void @llvm.dbg.value(metadata i8* %3, metadata !2443, metadata !DIExpression()), !dbg !2444
  store i8 0, i8* %3, align 1, !dbg !2446, !tbaa !1674
  %4 = icmp slt i64 %0, 0, !dbg !2447
  br i1 %4, label %5, label %17, !dbg !2449

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %0, %2 ]
  %7 = phi i8* [ %11, %5 ], [ %3, %2 ], !dbg !2444
  call void @llvm.dbg.value(metadata i8* %7, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %6, metadata !2441, metadata !DIExpression()), !dbg !2444
  %8 = srem i64 %6, 10, !dbg !2450
  %9 = trunc i64 %8 to i8, !dbg !2452
  %10 = sub nsw i8 48, %9, !dbg !2452
  %11 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !2453
  call void @llvm.dbg.value(metadata i8* %11, metadata !2443, metadata !DIExpression()), !dbg !2444
  store i8 %10, i8* %11, align 1, !dbg !2454, !tbaa !1674
  %12 = sdiv i64 %6, 10, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %12, metadata !2441, metadata !DIExpression()), !dbg !2444
  %13 = add i64 %6, 9, !dbg !2456
  %14 = icmp ugt i64 %13, 18, !dbg !2456
  br i1 %14, label %5, label %15, !dbg !2457, !llvm.loop !2458

15:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %7, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %7, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %7, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %7, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %7, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %7, metadata !2443, metadata !DIExpression()), !dbg !2444
  %16 = getelementptr inbounds i8, i8* %7, i64 -2, !dbg !2461
  call void @llvm.dbg.value(metadata i8* %16, metadata !2443, metadata !DIExpression()), !dbg !2444
  store i8 45, i8* %16, align 1, !dbg !2462, !tbaa !1674
  br label %27, !dbg !2463

17:                                               ; preds = %2, %17
  %18 = phi i64 [ %24, %17 ], [ %0, %2 ]
  %19 = phi i8* [ %23, %17 ], [ %3, %2 ], !dbg !2444
  call void @llvm.dbg.value(metadata i8* %19, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %18, metadata !2441, metadata !DIExpression()), !dbg !2444
  %20 = srem i64 %18, 10, !dbg !2464
  %21 = trunc i64 %20 to i8, !dbg !2466
  %22 = add nsw i8 %21, 48, !dbg !2466
  %23 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2467
  call void @llvm.dbg.value(metadata i8* %23, metadata !2443, metadata !DIExpression()), !dbg !2444
  store i8 %22, i8* %23, align 1, !dbg !2468, !tbaa !1674
  %24 = sdiv i64 %18, 10, !dbg !2469
  call void @llvm.dbg.value(metadata i64 %24, metadata !2441, metadata !DIExpression()), !dbg !2444
  %25 = add i64 %18, 9, !dbg !2470
  %26 = icmp ugt i64 %25, 18, !dbg !2470
  br i1 %26, label %17, label %27, !dbg !2471, !llvm.loop !2472

27:                                               ; preds = %17, %15
  %28 = phi i8* [ %16, %15 ], [ %23, %17 ], !dbg !2475
  call void @llvm.dbg.value(metadata i8* %28, metadata !2443, metadata !DIExpression()), !dbg !2444
  ret i8* %28, !dbg !2476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2477 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2479, metadata !DIExpression()), !dbg !2482
  %2 = icmp eq i8* %0, null, !dbg !2483
  br i1 %2, label %3, label %6, !dbg !2485

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2486, !tbaa !1459
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.114, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !2488
  tail call void @abort() #23, !dbg !2489
  unreachable, !dbg !2489

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %7, metadata !2480, metadata !DIExpression()), !dbg !2482
  %8 = icmp eq i8* %7, null, !dbg !2491
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2492
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %10, metadata !2481, metadata !DIExpression()), !dbg !2482
  %11 = ptrtoint i8* %10 to i64, !dbg !2493
  %12 = ptrtoint i8* %0 to i64, !dbg !2493
  %13 = sub i64 %11, %12, !dbg !2493
  %14 = icmp sgt i64 %13, 6, !dbg !2495
  br i1 %14, label %15, label %24, !dbg !2496

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2497
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.115, i64 0, i64 0), i64 7) #22, !dbg !2498
  %18 = icmp eq i32 %17, 0, !dbg !2499
  br i1 %18, label %19, label %24, !dbg !2500

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2479, metadata !DIExpression()), !dbg !2482
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.116, i64 0, i64 0), i64 3) #22, !dbg !2501
  %21 = icmp eq i32 %20, 0, !dbg !2504
  br i1 %21, label %22, label %24, !dbg !2505

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2506
  call void @llvm.dbg.value(metadata i8* %23, metadata !2479, metadata !DIExpression()), !dbg !2482
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2508, !tbaa !1459
  br label %24, !dbg !2509

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2479, metadata !DIExpression()), !dbg !2482
  store i8* %25, i8** @program_name, align 8, !dbg !2510, !tbaa !1459
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2511, !tbaa !1459
  ret void, !dbg !2512
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2513 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2518, metadata !DIExpression()), !dbg !2521
  %2 = tail call i32* @__errno_location() #25, !dbg !2522
  %3 = load i32, i32* %2, align 4, !dbg !2522, !tbaa !1574
  call void @llvm.dbg.value(metadata i32 %3, metadata !2519, metadata !DIExpression()), !dbg !2521
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2523
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2523
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2523
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #19, !dbg !2524
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2520, metadata !DIExpression()), !dbg !2521
  store i32 %3, i32* %2, align 4, !dbg !2525, !tbaa !1574
  ret %struct.quoting_options* %8, !dbg !2526
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !2527 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2531, metadata !DIExpression()), !dbg !2532
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2533
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2533
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2534
  %5 = load i32, i32* %4, align 8, !dbg !2534, !tbaa !2535
  ret i32 %5, !dbg !2537
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !2538 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2542, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i32 %1, metadata !2543, metadata !DIExpression()), !dbg !2544
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2545
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2545
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2546
  store i32 %1, i32* %5, align 8, !dbg !2547, !tbaa !2535
  ret void, !dbg !2548
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !2549 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2553, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 %1, metadata !2554, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 %2, metadata !2555, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 %1, metadata !2556, metadata !DIExpression()), !dbg !2561
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2562
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2562
  %6 = lshr i8 %1, 5, !dbg !2563
  %7 = zext i8 %6 to i64, !dbg !2563
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2564
  call void @llvm.dbg.value(metadata i32* %8, metadata !2557, metadata !DIExpression()), !dbg !2561
  %9 = and i8 %1, 31, !dbg !2565
  %10 = zext i8 %9 to i32, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %10, metadata !2559, metadata !DIExpression()), !dbg !2561
  %11 = load i32, i32* %8, align 4, !dbg !2566, !tbaa !1574
  %12 = lshr i32 %11, %10, !dbg !2567
  %13 = and i32 %12, 1, !dbg !2568
  call void @llvm.dbg.value(metadata i32 %13, metadata !2560, metadata !DIExpression()), !dbg !2561
  %14 = and i32 %2, 1, !dbg !2569
  %15 = xor i32 %13, %14, !dbg !2570
  %16 = shl i32 %15, %10, !dbg !2571
  %17 = xor i32 %16, %11, !dbg !2572
  store i32 %17, i32* %8, align 4, !dbg !2572, !tbaa !1574
  ret i32 %13, !dbg !2573
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !2574 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2578, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32 %1, metadata !2579, metadata !DIExpression()), !dbg !2581
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2582
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2584
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2578, metadata !DIExpression()), !dbg !2581
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2585
  %6 = load i32, i32* %5, align 4, !dbg !2585, !tbaa !2586
  call void @llvm.dbg.value(metadata i32 %6, metadata !2580, metadata !DIExpression()), !dbg !2581
  store i32 %1, i32* %5, align 4, !dbg !2587, !tbaa !2586
  ret i32 %6, !dbg !2588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2589 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8* %1, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8* %2, metadata !2595, metadata !DIExpression()), !dbg !2596
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2597
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2599
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2593, metadata !DIExpression()), !dbg !2596
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2600
  store i32 10, i32* %6, align 8, !dbg !2601, !tbaa !2535
  %7 = icmp ne i8* %1, null, !dbg !2602
  %8 = icmp ne i8* %2, null, !dbg !2604
  %9 = and i1 %7, %8, !dbg !2605
  br i1 %9, label %11, label %10, !dbg !2605

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2606
  unreachable, !dbg !2606

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2607
  store i8* %1, i8** %12, align 8, !dbg !2608, !tbaa !2609
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2610
  store i8* %2, i8** %13, align 8, !dbg !2611, !tbaa !2612
  ret void, !dbg !2613
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2614 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2618, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i64 %1, metadata !2619, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8* %2, metadata !2620, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i64 %3, metadata !2621, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2622, metadata !DIExpression()), !dbg !2626
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2627
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2627
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2623, metadata !DIExpression()), !dbg !2626
  %8 = tail call i32* @__errno_location() #25, !dbg !2628
  %9 = load i32, i32* %8, align 4, !dbg !2628, !tbaa !1574
  call void @llvm.dbg.value(metadata i32 %9, metadata !2624, metadata !DIExpression()), !dbg !2626
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2629
  %11 = load i32, i32* %10, align 8, !dbg !2629, !tbaa !2535
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2630
  %13 = load i32, i32* %12, align 4, !dbg !2630, !tbaa !2586
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2631
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2632
  %16 = load i8*, i8** %15, align 8, !dbg !2632, !tbaa !2609
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2633
  %18 = load i8*, i8** %17, align 8, !dbg !2633, !tbaa !2612
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2634
  call void @llvm.dbg.value(metadata i64 %19, metadata !2625, metadata !DIExpression()), !dbg !2626
  store i32 %9, i32* %8, align 4, !dbg !2635, !tbaa !1574
  ret i64 %19, !dbg !2636
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2637 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2643, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %1, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %2, metadata !2645, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %3, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 %4, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 %5, metadata !2648, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32* %6, metadata !2649, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %7, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %8, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 0, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 0, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* null, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 0, metadata !2656, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 0, metadata !2657, metadata !DIExpression()), !dbg !2701
  %13 = tail call i64 @__ctype_get_mb_cur_max() #19, !dbg !2702
  %14 = icmp eq i64 %13, 1, !dbg !2703
  call void @llvm.dbg.value(metadata i1 %14, metadata !2658, metadata !DIExpression()), !dbg !2701
  %15 = lshr i32 %5, 1, !dbg !2704
  %16 = trunc i32 %15 to i8, !dbg !2704
  %17 = and i8 %16, 1, !dbg !2704
  call void @llvm.dbg.value(metadata i8 %17, metadata !2659, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 0, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 0, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 1, metadata !2662, metadata !DIExpression()), !dbg !2701
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2705
  %19 = and i32 %5, 4, !dbg !2707
  %20 = icmp eq i32 %19, 0, !dbg !2707
  %21 = and i32 %5, 1, !dbg !2710
  %22 = icmp eq i32 %21, 0, !dbg !2710
  %23 = bitcast i64* %10 to i8*, !dbg !2713
  %24 = bitcast i32* %12 to i8*, !dbg !2714
  %25 = icmp eq i32* %6, null, !dbg !2715
  br label %26, !dbg !2717

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2718
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2719
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2720
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2721
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2701
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2722
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2723
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2724
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %38, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %37, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %36, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %35, metadata !2659, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %34, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %33, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %32, metadata !2656, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %31, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %30, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 0, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %29, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %28, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 %27, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.label(metadata !2695), !dbg !2725
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
  ], !dbg !2726

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 1, metadata !2659, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %35, metadata !2659, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 5, metadata !2647, metadata !DIExpression()), !dbg !2701
  br label %92, !dbg !2727

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2659, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 5, metadata !2647, metadata !DIExpression()), !dbg !2701
  %42 = and i8 %35, 1, !dbg !2729
  %43 = icmp eq i8 %42, 0, !dbg !2729
  br i1 %43, label %44, label %92, !dbg !2727

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2731
  br i1 %45, label %92, label %46, !dbg !2734

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2731, !tbaa !1674
  br label %92, !dbg !2731

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.127, i64 0, i64 0), i32 %27), !dbg !2735
  call void @llvm.dbg.value(metadata i8* %48, metadata !2650, metadata !DIExpression()), !dbg !2701
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.128, i64 0, i64 0), i32 %27), !dbg !2739
  call void @llvm.dbg.value(metadata i8* %49, metadata !2651, metadata !DIExpression()), !dbg !2701
  br label %50, !dbg !2740

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %51, metadata !2650, metadata !DIExpression()), !dbg !2701
  %53 = and i8 %35, 1, !dbg !2741
  %54 = icmp eq i8 %53, 0, !dbg !2741
  br i1 %54, label %55, label %70, !dbg !2743

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 0, metadata !2653, metadata !DIExpression()), !dbg !2701
  %56 = load i8, i8* %51, align 1, !dbg !2744, !tbaa !1674
  %57 = icmp eq i8 %56, 0, !dbg !2747
  br i1 %57, label %70, label %58, !dbg !2747

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %61, metadata !2653, metadata !DIExpression()), !dbg !2701
  %62 = icmp ult i64 %61, %39, !dbg !2748
  br i1 %62, label %63, label %65, !dbg !2751

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2748
  store i8 %59, i8* %64, align 1, !dbg !2748, !tbaa !1674
  br label %65, !dbg !2748

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %66, metadata !2653, metadata !DIExpression()), !dbg !2701
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %67, metadata !2655, metadata !DIExpression()), !dbg !2701
  %68 = load i8, i8* %67, align 1, !dbg !2744, !tbaa !1674
  %69 = icmp eq i8 %68, 0, !dbg !2747
  br i1 %69, label %70, label %58, !dbg !2747, !llvm.loop !2753

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2755
  call void @llvm.dbg.value(metadata i64 %71, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 1, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %52, metadata !2655, metadata !DIExpression()), !dbg !2701
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !2756
  call void @llvm.dbg.value(metadata i64 %72, metadata !2656, metadata !DIExpression()), !dbg !2701
  br label %92, !dbg !2757

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2657, metadata !DIExpression()), !dbg !2701
  br label %74, !dbg !2758

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2701
  call void @llvm.dbg.value(metadata i8 %75, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 1, metadata !2659, metadata !DIExpression()), !dbg !2701
  br label %76, !dbg !2759

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2721
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2701
  call void @llvm.dbg.value(metadata i8 %78, metadata !2659, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %77, metadata !2657, metadata !DIExpression()), !dbg !2701
  %79 = and i8 %78, 1, !dbg !2760
  %80 = icmp eq i8 %79, 0, !dbg !2760
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2762
  br label %82, !dbg !2762

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2701
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2704
  call void @llvm.dbg.value(metadata i8 %84, metadata !2659, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %83, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 2, metadata !2647, metadata !DIExpression()), !dbg !2701
  %85 = and i8 %84, 1, !dbg !2763
  %86 = icmp eq i8 %85, 0, !dbg !2763
  br i1 %86, label %87, label %92, !dbg !2765

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2766
  br i1 %88, label %92, label %89, !dbg !2769

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2766, !tbaa !1674
  br label %92, !dbg !2766

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2659, metadata !DIExpression()), !dbg !2701
  br label %92, !dbg !2770

91:                                               ; preds = %26
  call void @abort() #23, !dbg !2771
  unreachable, !dbg !2771

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2755
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.129, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.129, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.129, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.128, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.128, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.128, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.129, i64 0, i64 0), %40 ], !dbg !2701
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2701
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2701
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2701
  call void @llvm.dbg.value(metadata i8 %100, metadata !2659, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %99, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %98, metadata !2656, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %96, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 %93, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 0, metadata !2652, metadata !DIExpression()), !dbg !2701
  %101 = and i8 %99, 1, !dbg !2772
  %102 = icmp ne i8 %101, 0, !dbg !2772
  %103 = icmp ne i32 %93, 2, !dbg !2772
  %104 = and i1 %103, %102, !dbg !2772
  %105 = icmp ne i64 %98, 0, !dbg !2772
  %106 = and i1 %105, %104, !dbg !2772
  %107 = icmp ugt i64 %98, 1, !dbg !2772
  %108 = and i8 %100, 1, !dbg !2774
  %109 = icmp eq i8 %108, 0, !dbg !2774
  %110 = icmp eq i32 %93, 2, !dbg !2777
  %111 = or i1 %103, %109, !dbg !2779
  %112 = icmp ne i8 %108, 0, !dbg !2781
  %113 = and i1 %110, %112, !dbg !2781
  %114 = xor i1 %102, true, !dbg !2782
  %115 = xor i1 %104, true, !dbg !2715
  %116 = and i1 %109, %115, !dbg !2715
  %117 = or i1 %25, %116, !dbg !2715
  %118 = and i8 %99, %100, !dbg !2783
  %119 = and i8 %118, 1, !dbg !2783
  %120 = icmp ne i8 %119, 0, !dbg !2783
  %121 = and i1 %120, %105, !dbg !2783
  br label %122, !dbg !2785

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2786
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2755
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2718
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2722
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2723
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2724
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %129, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %128, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %127, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %126, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %123, metadata !2652, metadata !DIExpression()), !dbg !2701
  %131 = icmp eq i64 %126, -1, !dbg !2787
  br i1 %131, label %132, label %136, !dbg !2788

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2789
  %134 = load i8, i8* %133, align 1, !dbg !2789, !tbaa !1674
  %135 = icmp eq i8 %134, 0, !dbg !2790
  br i1 %135, label %581, label %138, !dbg !2791

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2792
  br i1 %137, label %581, label %138, !dbg !2791

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2668, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 0, metadata !2669, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 0, metadata !2670, metadata !DIExpression()), !dbg !2793
  br i1 %106, label %139, label %154, !dbg !2794

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2795
  %141 = and i1 %107, %131, !dbg !2796
  br i1 %141, label %142, label %144, !dbg !2796

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2797
  call void @llvm.dbg.value(metadata i64 %143, metadata !2646, metadata !DIExpression()), !dbg !2701
  br label %144, !dbg !2798

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2646, metadata !DIExpression()), !dbg !2701
  %146 = icmp ugt i64 %140, %145, !dbg !2799
  br i1 %146, label %154, label %147, !dbg !2800

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2801
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2802
  %150 = icmp ne i32 %149, 0, !dbg !2803
  %151 = or i1 %150, %109, !dbg !2804
  %152 = xor i1 %150, true, !dbg !2804
  %153 = zext i1 %152 to i8, !dbg !2804
  br i1 %151, label %154, label %639, !dbg !2804

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2793
  call void @llvm.dbg.value(metadata i8 %156, metadata !2668, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %155, metadata !2646, metadata !DIExpression()), !dbg !2701
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2805
  %158 = load i8, i8* %157, align 1, !dbg !2805, !tbaa !1674
  call void @llvm.dbg.value(metadata i8 %158, metadata !2663, metadata !DIExpression()), !dbg !2793
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
  ], !dbg !2806

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2807

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2808

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2669, metadata !DIExpression()), !dbg !2793
  %162 = and i8 %127, 1, !dbg !2811
  %163 = icmp eq i8 %162, 0, !dbg !2811
  %164 = and i1 %110, %163, !dbg !2811
  br i1 %164, label %165, label %181, !dbg !2811

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2813
  br i1 %166, label %167, label %169, !dbg !2817

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2813
  store i8 39, i8* %168, align 1, !dbg !2813, !tbaa !1674
  br label %169, !dbg !2813

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %170, metadata !2653, metadata !DIExpression()), !dbg !2701
  %171 = icmp ult i64 %170, %130, !dbg !2818
  br i1 %171, label %172, label %174, !dbg !2821

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2818
  store i8 36, i8* %173, align 1, !dbg !2818, !tbaa !1674
  br label %174, !dbg !2818

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2821
  call void @llvm.dbg.value(metadata i64 %175, metadata !2653, metadata !DIExpression()), !dbg !2701
  %176 = icmp ult i64 %175, %130, !dbg !2822
  br i1 %176, label %177, label %179, !dbg !2825

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2822
  store i8 39, i8* %178, align 1, !dbg !2822, !tbaa !1674
  br label %179, !dbg !2822

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2825
  call void @llvm.dbg.value(metadata i64 %180, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 1, metadata !2660, metadata !DIExpression()), !dbg !2701
  br label %181, !dbg !2826

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2701
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2701
  call void @llvm.dbg.value(metadata i8 %183, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %182, metadata !2653, metadata !DIExpression()), !dbg !2701
  %184 = icmp ult i64 %182, %130, !dbg !2827
  br i1 %184, label %185, label %187, !dbg !2830

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2827
  store i8 92, i8* %186, align 1, !dbg !2827, !tbaa !1674
  br label %187, !dbg !2827

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %188, metadata !2653, metadata !DIExpression()), !dbg !2701
  br i1 %103, label %189, label %463, !dbg !2831

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2833
  %191 = icmp ult i64 %190, %155, !dbg !2834
  br i1 %191, label %192, label %463, !dbg !2835

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2836
  %194 = load i8, i8* %193, align 1, !dbg !2836, !tbaa !1674
  %195 = add i8 %194, -48, !dbg !2837
  %196 = icmp ult i8 %195, 10, !dbg !2837
  br i1 %196, label %197, label %463, !dbg !2837

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2838
  br i1 %198, label %199, label %201, !dbg !2842

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2838
  store i8 48, i8* %200, align 1, !dbg !2838, !tbaa !1674
  br label %201, !dbg !2838

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2842
  call void @llvm.dbg.value(metadata i64 %202, metadata !2653, metadata !DIExpression()), !dbg !2701
  %203 = icmp ult i64 %202, %130, !dbg !2843
  br i1 %203, label %204, label %206, !dbg !2846

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2843
  store i8 48, i8* %205, align 1, !dbg !2843, !tbaa !1674
  br label %206, !dbg !2843

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %207, metadata !2653, metadata !DIExpression()), !dbg !2701
  br label %463, !dbg !2847

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2848

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2849

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2850

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2851

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2852
  %214 = icmp ult i64 %213, %155, !dbg !2853
  br i1 %214, label %215, label %463, !dbg !2854

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2855
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2856
  %218 = load i8, i8* %217, align 1, !dbg !2856, !tbaa !1674
  %219 = icmp eq i8 %218, 63, !dbg !2857
  br i1 %219, label %220, label %463, !dbg !2858

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2859
  %222 = load i8, i8* %221, align 1, !dbg !2859, !tbaa !1674
  %223 = sext i8 %222 to i32, !dbg !2859
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
  ], !dbg !2860

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2861

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2663, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %213, metadata !2652, metadata !DIExpression()), !dbg !2701
  %226 = icmp ult i64 %124, %130, !dbg !2863
  br i1 %226, label %227, label %229, !dbg !2866

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2863
  store i8 63, i8* %228, align 1, !dbg !2863, !tbaa !1674
  br label %229, !dbg !2863

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %230, metadata !2653, metadata !DIExpression()), !dbg !2701
  %231 = icmp ult i64 %230, %130, !dbg !2867
  br i1 %231, label %232, label %234, !dbg !2870

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2867
  store i8 34, i8* %233, align 1, !dbg !2867, !tbaa !1674
  br label %234, !dbg !2867

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %235, metadata !2653, metadata !DIExpression()), !dbg !2701
  %236 = icmp ult i64 %235, %130, !dbg !2871
  br i1 %236, label %237, label %239, !dbg !2874

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2871
  store i8 34, i8* %238, align 1, !dbg !2871, !tbaa !1674
  br label %239, !dbg !2871

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2874
  call void @llvm.dbg.value(metadata i64 %240, metadata !2653, metadata !DIExpression()), !dbg !2701
  %241 = icmp ult i64 %240, %130, !dbg !2875
  br i1 %241, label %242, label %244, !dbg !2878

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2875
  store i8 63, i8* %243, align 1, !dbg !2875, !tbaa !1674
  br label %244, !dbg !2875

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2878
  call void @llvm.dbg.value(metadata i64 %245, metadata !2653, metadata !DIExpression()), !dbg !2701
  br label %463, !dbg !2879

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2667, metadata !DIExpression()), !dbg !2793
  br label %256, !dbg !2880

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2667, metadata !DIExpression()), !dbg !2793
  br label %256, !dbg !2881

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2667, metadata !DIExpression()), !dbg !2793
  br label %254, !dbg !2882

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2667, metadata !DIExpression()), !dbg !2793
  br label %254, !dbg !2883

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2667, metadata !DIExpression()), !dbg !2793
  br label %256, !dbg !2884

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2667, metadata !DIExpression()), !dbg !2793
  br i1 %110, label %252, label %253, !dbg !2885

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2886

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2889

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2890
  call void @llvm.dbg.value(metadata i8 %255, metadata !2667, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.label(metadata !2696), !dbg !2891
  br i1 %111, label %256, label %625, !dbg !2892

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2890
  call void @llvm.dbg.value(metadata i8 %257, metadata !2667, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.label(metadata !2697), !dbg !2894
  br i1 %102, label %488, label %463, !dbg !2895

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2896

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2897, !tbaa !1674
  %261 = icmp eq i8 %260, 0, !dbg !2898
  br i1 %261, label %262, label %463, !dbg !2899

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2900
  br i1 %263, label %264, label %463, !dbg !2902

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2670, metadata !DIExpression()), !dbg !2793
  br label %265, !dbg !2903

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2793
  call void @llvm.dbg.value(metadata i8 %266, metadata !2670, metadata !DIExpression()), !dbg !2793
  br i1 %111, label %463, label %625, !dbg !2904

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 1, metadata !2670, metadata !DIExpression()), !dbg !2793
  br i1 %110, label %268, label %463, !dbg !2905

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2906

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2908
  %271 = icmp ne i64 %125, 0, !dbg !2910
  %272 = or i1 %271, %270, !dbg !2911
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2911
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %274, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %273, metadata !2654, metadata !DIExpression()), !dbg !2701
  %275 = icmp ult i64 %124, %274, !dbg !2912
  br i1 %275, label %276, label %278, !dbg !2915

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2912
  store i8 39, i8* %277, align 1, !dbg !2912, !tbaa !1674
  br label %278, !dbg !2912

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2915
  call void @llvm.dbg.value(metadata i64 %279, metadata !2653, metadata !DIExpression()), !dbg !2701
  %280 = icmp ult i64 %279, %274, !dbg !2916
  br i1 %280, label %281, label %283, !dbg !2919

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2916
  store i8 92, i8* %282, align 1, !dbg !2916, !tbaa !1674
  br label %283, !dbg !2916

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %284, metadata !2653, metadata !DIExpression()), !dbg !2701
  %285 = icmp ult i64 %284, %274, !dbg !2920
  br i1 %285, label %286, label %288, !dbg !2923

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2920
  store i8 39, i8* %287, align 1, !dbg !2920, !tbaa !1674
  br label %288, !dbg !2920

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2923
  call void @llvm.dbg.value(metadata i64 %289, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 0, metadata !2660, metadata !DIExpression()), !dbg !2701
  br label %463, !dbg !2924

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2925

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2671, metadata !DIExpression()), !dbg !2926
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !2927
  %293 = load i16*, i16** %292, align 8, !dbg !2927, !tbaa !1459
  %294 = zext i8 %158 to i64, !dbg !2927
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2927
  %296 = load i16, i16* %295, align 2, !dbg !2927, !tbaa !2929
  %297 = lshr i16 %296, 14, !dbg !2930
  %298 = trunc i16 %297 to i8, !dbg !2930
  %299 = and i8 %298, 1, !dbg !2930
  call void @llvm.dbg.value(metadata i8 %299, metadata !2674, metadata !DIExpression()), !dbg !2926
  br label %355, !dbg !2931

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2932
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2675, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8* %23, metadata !2934, metadata !DIExpression()) #19, !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2939, metadata !DIExpression()) #19, !dbg !2941
  call void @llvm.dbg.value(metadata i64 8, metadata !2940, metadata !DIExpression()) #19, !dbg !2941
  store i64 0, i64* %10, align 8, !dbg !2943
  call void @llvm.dbg.value(metadata i64 0, metadata !2671, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 1, metadata !2674, metadata !DIExpression()), !dbg !2926
  %301 = icmp eq i64 %155, -1, !dbg !2944
  br i1 %301, label %302, label %304, !dbg !2946

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2947
  call void @llvm.dbg.value(metadata i64 %303, metadata !2646, metadata !DIExpression()), !dbg !2701
  br label %304, !dbg !2948

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2793
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  br label %306, !dbg !2949

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2950
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2951
  call void @llvm.dbg.value(metadata i8 %308, metadata !2674, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %307, metadata !2671, metadata !DIExpression()), !dbg !2926
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2952
  %309 = add i64 %307, %123, !dbg !2953
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2954
  %311 = sub i64 %305, %309, !dbg !2955
  call void @llvm.dbg.value(metadata i32* %12, metadata !2681, metadata !DIExpression(DW_OP_deref)), !dbg !2714
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #19, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %312, metadata !2684, metadata !DIExpression()), !dbg !2714
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2957

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2671, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %307, metadata !2671, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %307, metadata !2671, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %307, metadata !2671, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %307, metadata !2671, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %307, metadata !2671, metadata !DIExpression()), !dbg !2926
  %314 = icmp ugt i64 %305, %309, !dbg !2958
  br i1 %314, label %315, label %340, !dbg !2960

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2961
  br label %317, !dbg !2961

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2671, metadata !DIExpression()), !dbg !2926
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2962
  %321 = load i8, i8* %320, align 1, !dbg !2962, !tbaa !1674
  %322 = icmp eq i8 %321, 0, !dbg !2960
  br i1 %322, label %340, label %323, !dbg !2961

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2963
  call void @llvm.dbg.value(metadata i64 %324, metadata !2671, metadata !DIExpression()), !dbg !2926
  %325 = add i64 %324, %123, !dbg !2964
  %326 = icmp ult i64 %325, %305, !dbg !2958
  br i1 %326, label %317, label %340, !dbg !2960, !llvm.loop !2965

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2966
  %329 = and i1 %113, %328, !dbg !2969
  call void @llvm.dbg.value(metadata i64 1, metadata !2685, metadata !DIExpression()), !dbg !2970
  br i1 %329, label %330, label %343, !dbg !2969

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2685, metadata !DIExpression()), !dbg !2970
  %332 = add i64 %331, %309, !dbg !2971
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2972
  %334 = load i8, i8* %333, align 1, !dbg !2972, !tbaa !1674
  %335 = sext i8 %334 to i32, !dbg !2972
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2973

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2974
  call void @llvm.dbg.value(metadata i64 %337, metadata !2685, metadata !DIExpression()), !dbg !2970
  %338 = icmp eq i64 %337, %312, !dbg !2966
  br i1 %338, label %343, label %330, !dbg !2975, !llvm.loop !2976

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2671, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 %308, metadata !2674, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %307, metadata !2671, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 %308, metadata !2674, metadata !DIExpression()), !dbg !2926
  br label %340, !dbg !2978

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2978
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2979, !tbaa !1574
  call void @llvm.dbg.value(metadata i32 %344, metadata !2681, metadata !DIExpression()), !dbg !2714
  %345 = call i32 @iswprint(i32 %344) #19, !dbg !2981
  %346 = icmp eq i32 %345, 0, !dbg !2981
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2982
  call void @llvm.dbg.value(metadata i8 %347, metadata !2674, metadata !DIExpression()), !dbg !2926
  %348 = add i64 %312, %307, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %348, metadata !2671, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 %347, metadata !2674, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %348, metadata !2671, metadata !DIExpression()), !dbg !2926
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2978
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2984
  %350 = icmp eq i32 %349, 0, !dbg !2985
  br i1 %350, label %306, label %351, !dbg !2986, !llvm.loop !2987

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2989
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 2, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 2, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 2, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 2, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 2, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %99, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %99, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %99, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %99, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %99, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 2, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 2, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 2, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 2, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 2, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %99, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %99, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %99, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %99, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %99, metadata !2657, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %305, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2978
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2989
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2793
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2990
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2990
  call void @llvm.dbg.value(metadata i8 %358, metadata !2674, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %357, metadata !2671, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %356, metadata !2646, metadata !DIExpression()), !dbg !2701
  %359 = and i8 %358, 1, !dbg !2991
  %360 = icmp ne i8 %359, 0, !dbg !2991
  call void @llvm.dbg.value(metadata i8 %359, metadata !2670, metadata !DIExpression()), !dbg !2793
  %361 = icmp ult i64 %357, 2, !dbg !2992
  %362 = or i1 %360, %114, !dbg !2993
  %363 = and i1 %361, %362, !dbg !2994
  br i1 %363, label %463, label %364, !dbg !2994

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %365, metadata !2692, metadata !DIExpression()), !dbg !2996
  br label %366, !dbg !2997

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2786
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2701
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2722
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2793
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2793
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2998
  call void @llvm.dbg.value(metadata i8 %372, metadata !2669, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %371, metadata !2668, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %370, metadata !2663, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %369, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %368, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %367, metadata !2652, metadata !DIExpression()), !dbg !2701
  br i1 %362, label %419, label %373, !dbg !2999

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !3004

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2669, metadata !DIExpression()), !dbg !2793
  %375 = and i8 %369, 1, !dbg !3007
  %376 = icmp eq i8 %375, 0, !dbg !3007
  %377 = and i1 %110, %376, !dbg !3007
  br i1 %377, label %378, label %394, !dbg !3007

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !3009
  br i1 %379, label %380, label %382, !dbg !3013

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3009
  store i8 39, i8* %381, align 1, !dbg !3009, !tbaa !1674
  br label %382, !dbg !3009

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !3013
  call void @llvm.dbg.value(metadata i64 %383, metadata !2653, metadata !DIExpression()), !dbg !2701
  %384 = icmp ult i64 %383, %130, !dbg !3014
  br i1 %384, label %385, label %387, !dbg !3017

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !3014
  store i8 36, i8* %386, align 1, !dbg !3014, !tbaa !1674
  br label %387, !dbg !3014

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %388, metadata !2653, metadata !DIExpression()), !dbg !2701
  %389 = icmp ult i64 %388, %130, !dbg !3018
  br i1 %389, label %390, label %392, !dbg !3021

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !3018
  store i8 39, i8* %391, align 1, !dbg !3018, !tbaa !1674
  br label %392, !dbg !3018

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !3021
  call void @llvm.dbg.value(metadata i64 %393, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 1, metadata !2660, metadata !DIExpression()), !dbg !2701
  br label %394, !dbg !3022

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2701
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2701
  call void @llvm.dbg.value(metadata i8 %396, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %395, metadata !2653, metadata !DIExpression()), !dbg !2701
  %397 = icmp ult i64 %395, %130, !dbg !3023
  br i1 %397, label %398, label %400, !dbg !3026

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !3023
  store i8 92, i8* %399, align 1, !dbg !3023, !tbaa !1674
  br label %400, !dbg !3023

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %401, metadata !2653, metadata !DIExpression()), !dbg !2701
  %402 = icmp ult i64 %401, %130, !dbg !3027
  br i1 %402, label %403, label %407, !dbg !3030

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !3027
  %405 = or i8 %404, 48, !dbg !3027
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3027
  store i8 %405, i8* %406, align 1, !dbg !3027, !tbaa !1674
  br label %407, !dbg !3027

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !3030
  call void @llvm.dbg.value(metadata i64 %408, metadata !2653, metadata !DIExpression()), !dbg !2701
  %409 = icmp ult i64 %408, %130, !dbg !3031
  br i1 %409, label %410, label %415, !dbg !3034

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !3031
  %412 = and i8 %411, 7, !dbg !3031
  %413 = or i8 %412, 48, !dbg !3031
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3031
  store i8 %413, i8* %414, align 1, !dbg !3031, !tbaa !1674
  br label %415, !dbg !3031

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %416, metadata !2653, metadata !DIExpression()), !dbg !2701
  %417 = and i8 %370, 7, !dbg !3035
  %418 = or i8 %417, 48, !dbg !3036
  call void @llvm.dbg.value(metadata i8 %418, metadata !2663, metadata !DIExpression()), !dbg !2793
  br label %428, !dbg !3037

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !3038
  %421 = icmp eq i8 %420, 0, !dbg !3038
  br i1 %421, label %428, label %422, !dbg !3040

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !3041
  br i1 %423, label %424, label %426, !dbg !3045

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3041
  store i8 92, i8* %425, align 1, !dbg !3041, !tbaa !1674
  br label %426, !dbg !3041

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !3045
  call void @llvm.dbg.value(metadata i64 %427, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 0, metadata !2668, metadata !DIExpression()), !dbg !2793
  br label %428, !dbg !3046

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2701
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2722
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2793
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2793
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2793
  call void @llvm.dbg.value(metadata i8 %433, metadata !2669, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %432, metadata !2668, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %431, metadata !2663, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %430, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %429, metadata !2653, metadata !DIExpression()), !dbg !2701
  %434 = add i64 %367, 1, !dbg !3047
  %435 = icmp ugt i64 %365, %434, !dbg !3049
  br i1 %435, label %436, label %526, !dbg !3050

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !3051
  %438 = icmp ne i8 %437, 0, !dbg !3051
  %439 = and i8 %433, 1, !dbg !3051
  %440 = icmp eq i8 %439, 0, !dbg !3051
  %441 = and i1 %438, %440, !dbg !3051
  br i1 %441, label %442, label %453, !dbg !3051

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !3054
  br i1 %443, label %444, label %446, !dbg !3058

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !3054
  store i8 39, i8* %445, align 1, !dbg !3054, !tbaa !1674
  br label %446, !dbg !3054

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !3058
  call void @llvm.dbg.value(metadata i64 %447, metadata !2653, metadata !DIExpression()), !dbg !2701
  %448 = icmp ult i64 %447, %130, !dbg !3059
  br i1 %448, label %449, label %451, !dbg !3062

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !3059
  store i8 39, i8* %450, align 1, !dbg !3059, !tbaa !1674
  br label %451, !dbg !3059

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %452, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 0, metadata !2660, metadata !DIExpression()), !dbg !2701
  br label %453, !dbg !3063

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !3064
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2701
  call void @llvm.dbg.value(metadata i8 %455, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %454, metadata !2653, metadata !DIExpression()), !dbg !2701
  %456 = icmp ult i64 %454, %130, !dbg !3065
  br i1 %456, label %457, label %459, !dbg !3068

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3065
  store i8 %431, i8* %458, align 1, !dbg !3065, !tbaa !1674
  br label %459, !dbg !3065

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %460, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %434, metadata !2652, metadata !DIExpression()), !dbg !2701
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !3069
  %462 = load i8, i8* %461, align 1, !dbg !3069, !tbaa !1674
  call void @llvm.dbg.value(metadata i8 %462, metadata !2663, metadata !DIExpression()), !dbg !2793
  br label %366, !dbg !3070, !llvm.loop !3071

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2786
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2701
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2718
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !3074
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2701
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2701
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2793
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2793
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2793
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %472, metadata !2670, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %471, metadata !2669, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %156, metadata !2668, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %470, metadata !2663, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %469, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %468, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %467, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %466, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %465, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %464, metadata !2652, metadata !DIExpression()), !dbg !2701
  br i1 %117, label %486, label %474, !dbg !3075

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !3076
  %476 = zext i8 %475 to i64, !dbg !3076
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !3077
  %478 = load i32, i32* %477, align 4, !dbg !3077, !tbaa !1574
  %479 = and i8 %470, 31, !dbg !3078
  %480 = zext i8 %479 to i32, !dbg !3078
  %481 = shl nuw i32 1, %480, !dbg !3079
  %482 = and i32 %478, %481, !dbg !3079
  %483 = icmp eq i32 %482, 0, !dbg !3079
  %484 = icmp eq i8 %156, 0, !dbg !3080
  %485 = and i1 %484, %483, !dbg !3081
  br i1 %485, label %526, label %488, !dbg !3081

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !3080
  br i1 %487, label %526, label %488, !dbg !3082

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !3083
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2701
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2718
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !3074
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2722
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2723
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2793
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2793
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %496, metadata !2670, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %495, metadata !2663, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %494, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %493, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %492, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %491, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %490, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %489, metadata !2652, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.label(metadata !2698), !dbg !3084
  br i1 %109, label %498, label %629, !dbg !3085

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2669, metadata !DIExpression()), !dbg !2793
  %499 = and i8 %493, 1, !dbg !3087
  %500 = icmp eq i8 %499, 0, !dbg !3087
  %501 = and i1 %110, %500, !dbg !3087
  br i1 %501, label %502, label %518, !dbg !3087

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !3089
  br i1 %503, label %504, label %506, !dbg !3093

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !3089
  store i8 39, i8* %505, align 1, !dbg !3089, !tbaa !1674
  br label %506, !dbg !3089

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %507, metadata !2653, metadata !DIExpression()), !dbg !2701
  %508 = icmp ult i64 %507, %497, !dbg !3094
  br i1 %508, label %509, label %511, !dbg !3097

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !3094
  store i8 36, i8* %510, align 1, !dbg !3094, !tbaa !1674
  br label %511, !dbg !3094

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %512, metadata !2653, metadata !DIExpression()), !dbg !2701
  %513 = icmp ult i64 %512, %497, !dbg !3098
  br i1 %513, label %514, label %516, !dbg !3101

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3098
  store i8 39, i8* %515, align 1, !dbg !3098, !tbaa !1674
  br label %516, !dbg !3098

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %517, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 1, metadata !2660, metadata !DIExpression()), !dbg !2701
  br label %518, !dbg !3102

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2793
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2701
  call void @llvm.dbg.value(metadata i8 %520, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %519, metadata !2653, metadata !DIExpression()), !dbg !2701
  %521 = icmp ult i64 %519, %497, !dbg !3103
  br i1 %521, label %522, label %524, !dbg !3106

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3103
  store i8 92, i8* %523, align 1, !dbg !3103, !tbaa !1674
  br label %524, !dbg !3103

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %525, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %536, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %535, metadata !2670, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %534, metadata !2669, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %533, metadata !2663, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %532, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %531, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %530, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %529, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %528, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %527, metadata !2652, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.label(metadata !2699), !dbg !3107
  br label %553, !dbg !3108

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !3083
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2701
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2718
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !3074
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2722
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2723
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !3111
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2793
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2793
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %535, metadata !2670, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %534, metadata !2669, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %533, metadata !2663, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %532, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %531, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %530, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %529, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %528, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %527, metadata !2652, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.label(metadata !2699), !dbg !3107
  %537 = and i8 %531, 1, !dbg !3108
  %538 = icmp ne i8 %537, 0, !dbg !3108
  %539 = and i8 %534, 1, !dbg !3108
  %540 = icmp eq i8 %539, 0, !dbg !3108
  %541 = and i1 %538, %540, !dbg !3108
  br i1 %541, label %542, label %553, !dbg !3108

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !3112
  br i1 %543, label %544, label %546, !dbg !3116

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3112
  store i8 39, i8* %545, align 1, !dbg !3112, !tbaa !1674
  br label %546, !dbg !3112

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %547, metadata !2653, metadata !DIExpression()), !dbg !2701
  %548 = icmp ult i64 %547, %536, !dbg !3117
  br i1 %548, label %549, label %551, !dbg !3120

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !3117
  store i8 39, i8* %550, align 1, !dbg !3117, !tbaa !1674
  br label %551, !dbg !3117

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %552, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 0, metadata !2660, metadata !DIExpression()), !dbg !2701
  br label %553, !dbg !3121

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2793
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2701
  call void @llvm.dbg.value(metadata i8 %562, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %561, metadata !2653, metadata !DIExpression()), !dbg !2701
  %563 = icmp ult i64 %561, %554, !dbg !3122
  br i1 %563, label %564, label %566, !dbg !3125

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !3122
  store i8 %556, i8* %565, align 1, !dbg !3122, !tbaa !1674
  br label %566, !dbg !3122

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %567, metadata !2653, metadata !DIExpression()), !dbg !2701
  %568 = and i8 %555, 1, !dbg !3126
  %569 = icmp eq i8 %568, 0, !dbg !3126
  %570 = select i1 %569, i8 0, i8 %129, !dbg !3128
  call void @llvm.dbg.value(metadata i8 %570, metadata !2662, metadata !DIExpression()), !dbg !2701
  br label %571, !dbg !3129

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !3083
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2701
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2718
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !3074
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2722
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2701
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2724
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %578, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %577, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %576, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %575, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %574, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %573, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %572, metadata !2652, metadata !DIExpression()), !dbg !2701
  %580 = add i64 %572, 1, !dbg !3130
  call void @llvm.dbg.value(metadata i64 %580, metadata !2652, metadata !DIExpression()), !dbg !2701
  br label %122, !dbg !3131, !llvm.loop !3132

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %127, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %127, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %128, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %128, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %129, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %129, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %127, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %127, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %128, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %128, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %129, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %129, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %127, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %127, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %128, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %128, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %129, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %129, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %127, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %127, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %128, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %128, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %129, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %129, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %582, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %582, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %127, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %127, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %128, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %128, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %129, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %129, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %582, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %582, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %127, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %127, metadata !2660, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %128, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %128, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %129, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %129, metadata !2662, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  %583 = icmp eq i64 %124, 0, !dbg !3134
  %584 = and i1 %110, %583, !dbg !3136
  %585 = xor i1 %584, true, !dbg !3136
  %586 = or i1 %109, %585, !dbg !3136
  br i1 %586, label %587, label %629, !dbg !3136

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !3137
  %589 = xor i1 %588, true, !dbg !3137
  %590 = and i8 %128, 1, !dbg !3139
  %591 = icmp eq i8 %590, 0, !dbg !3139
  %592 = or i1 %591, %589, !dbg !3137
  br i1 %592, label %602, label %593, !dbg !3137

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !3140
  %595 = icmp eq i8 %594, 0, !dbg !3140
  br i1 %595, label %598, label %596, !dbg !3143

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %582, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %582, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %582, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %582, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %94, metadata !2650, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %95, metadata !2651, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %125, metadata !2654, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %582, metadata !2646, metadata !DIExpression()), !dbg !2701
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3144
  br label %645, !dbg !3145

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !3146
  %600 = icmp ne i64 %125, 0, !dbg !3148
  %601 = and i1 %600, %599, !dbg !3149
  br i1 %601, label %26, label %602, !dbg !3149

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %130, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  %603 = icmp ne i8* %97, null, !dbg !3150
  %604 = and i1 %603, %109, !dbg !3152
  br i1 %604, label %605, label %620, !dbg !3152

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %124, metadata !2653, metadata !DIExpression()), !dbg !2701
  %606 = load i8, i8* %97, align 1, !dbg !3153, !tbaa !1674
  %607 = icmp eq i8 %606, 0, !dbg !3156
  br i1 %607, label %620, label %608, !dbg !3156

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2655, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %611, metadata !2653, metadata !DIExpression()), !dbg !2701
  %612 = icmp ult i64 %611, %130, !dbg !3157
  br i1 %612, label %613, label %615, !dbg !3160

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !3157
  store i8 %609, i8* %614, align 1, !dbg !3157, !tbaa !1674
  br label %615, !dbg !3157

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %616, metadata !2653, metadata !DIExpression()), !dbg !2701
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !3161
  call void @llvm.dbg.value(metadata i8* %617, metadata !2655, metadata !DIExpression()), !dbg !2701
  %618 = load i8, i8* %617, align 1, !dbg !3153, !tbaa !1674
  %619 = icmp eq i8 %618, 0, !dbg !3156
  br i1 %619, label %620, label %608, !dbg !3156, !llvm.loop !3162

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2755
  call void @llvm.dbg.value(metadata i64 %621, metadata !2653, metadata !DIExpression()), !dbg !2701
  %622 = icmp ult i64 %621, %130, !dbg !3164
  br i1 %622, label %623, label %645, !dbg !3166

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3167
  store i8 0, i8* %624, align 1, !dbg !3168, !tbaa !1674
  br label %645, !dbg !3167

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %630, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.label(metadata !2700), !dbg !3169
  %627 = icmp eq i8 %101, 0, !dbg !3170
  %628 = select i1 %627, i32 2, i32 4, !dbg !3170
  br label %635, !dbg !3170

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2644, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %630, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.label(metadata !2700), !dbg !3169
  %632 = icmp eq i32 %93, 2, !dbg !3172
  %633 = icmp eq i8 %101, 0, !dbg !3170
  %634 = select i1 %633, i32 2, i32 4, !dbg !3170
  br i1 %632, label %635, label %639, !dbg !3170

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !3170

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2647, metadata !DIExpression()), !dbg !2701
  %643 = and i32 %5, -3, !dbg !3173
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !3174
  br label %645, !dbg !3175

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !3176
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3177 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3181, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i32 %1, metadata !3182, metadata !DIExpression()), !dbg !3185
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #19, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %3, metadata !3183, metadata !DIExpression()), !dbg !3185
  %4 = icmp eq i8* %3, %0, !dbg !3187
  br i1 %4, label %5, label %71, !dbg !3189

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #19, !dbg !3190
  call void @llvm.dbg.value(metadata i8* %6, metadata !3184, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i8* %6, metadata !3191, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8* undef, metadata !3197, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8 85, metadata !3198, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8 84, metadata !3199, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8 70, metadata !3200, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8 45, metadata !3201, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8 56, metadata !3202, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8 0, metadata !3203, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8 0, metadata !3204, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8 0, metadata !3205, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8 0, metadata !3206, metadata !DIExpression()), !dbg !3207
  %7 = load i8, i8* %6, align 1, !dbg !3210, !tbaa !1674
  %8 = and i8 %7, -33, !dbg !3210
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3210

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3212, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8* undef, metadata !3217, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8 84, metadata !3218, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8 70, metadata !3219, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8 45, metadata !3220, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8 56, metadata !3221, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8 0, metadata !3222, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8 0, metadata !3223, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8 0, metadata !3224, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8 0, metadata !3225, metadata !DIExpression()), !dbg !3226
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3230
  %11 = load i8, i8* %10, align 1, !dbg !3230, !tbaa !1674
  %12 = and i8 %11, -33, !dbg !3230
  %13 = icmp eq i8 %12, 84, !dbg !3230
  br i1 %13, label %14, label %68, !dbg !3230

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3232, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8* undef, metadata !3237, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8 70, metadata !3238, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8 45, metadata !3239, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8 56, metadata !3240, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8 0, metadata !3241, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8 0, metadata !3242, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8 0, metadata !3243, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8 0, metadata !3244, metadata !DIExpression()), !dbg !3245
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3249
  %16 = load i8, i8* %15, align 1, !dbg !3249, !tbaa !1674
  %17 = and i8 %16, -33, !dbg !3249
  %18 = icmp eq i8 %17, 70, !dbg !3249
  br i1 %18, label %19, label %68, !dbg !3249

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3251, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8* undef, metadata !3256, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8 45, metadata !3257, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8 56, metadata !3258, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8 0, metadata !3259, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8 0, metadata !3260, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8 0, metadata !3261, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8 0, metadata !3262, metadata !DIExpression()), !dbg !3263
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3267
  %21 = load i8, i8* %20, align 1, !dbg !3267, !tbaa !1674
  %22 = icmp eq i8 %21, 45, !dbg !3267
  br i1 %22, label %23, label %68, !dbg !3269

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3270, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* undef, metadata !3275, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 56, metadata !3276, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 0, metadata !3277, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 0, metadata !3278, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 0, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 0, metadata !3280, metadata !DIExpression()), !dbg !3281
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3285
  %25 = load i8, i8* %24, align 1, !dbg !3285, !tbaa !1674
  %26 = icmp eq i8 %25, 56, !dbg !3285
  br i1 %26, label %27, label %68, !dbg !3287

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3288, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8* undef, metadata !3293, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 0, metadata !3294, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 0, metadata !3295, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 0, metadata !3296, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 0, metadata !3297, metadata !DIExpression()), !dbg !3298
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3302
  %29 = load i8, i8* %28, align 1, !dbg !3302, !tbaa !1674
  %30 = icmp eq i8 %29, 0, !dbg !3302
  br i1 %30, label %31, label %68, !dbg !3304

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3305, !tbaa !1674
  %33 = icmp eq i8 %32, 96, !dbg !3306
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.130, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.131, i64 0, i64 0), !dbg !3305
  br label %71, !dbg !3307

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3212, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8* undef, metadata !3217, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 66, metadata !3218, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 49, metadata !3219, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 56, metadata !3220, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 48, metadata !3221, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 51, metadata !3222, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 48, metadata !3223, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 0, metadata !3224, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 0, metadata !3225, metadata !DIExpression()), !dbg !3308
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3312
  %37 = load i8, i8* %36, align 1, !dbg !3312, !tbaa !1674
  %38 = and i8 %37, -33, !dbg !3312
  %39 = icmp eq i8 %38, 66, !dbg !3312
  br i1 %39, label %40, label %68, !dbg !3312

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3232, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8* undef, metadata !3237, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8 49, metadata !3238, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8 56, metadata !3239, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8 48, metadata !3240, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8 51, metadata !3241, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8 48, metadata !3242, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8 0, metadata !3243, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8 0, metadata !3244, metadata !DIExpression()), !dbg !3313
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3315
  %42 = load i8, i8* %41, align 1, !dbg !3315, !tbaa !1674
  %43 = icmp eq i8 %42, 49, !dbg !3315
  br i1 %43, label %44, label %68, !dbg !3316

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3251, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8* undef, metadata !3256, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 56, metadata !3257, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 48, metadata !3258, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 51, metadata !3259, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 48, metadata !3260, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 0, metadata !3261, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 0, metadata !3262, metadata !DIExpression()), !dbg !3317
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3319
  %46 = load i8, i8* %45, align 1, !dbg !3319, !tbaa !1674
  %47 = icmp eq i8 %46, 56, !dbg !3319
  br i1 %47, label %48, label %68, !dbg !3320

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3270, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8* undef, metadata !3275, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8 48, metadata !3276, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8 51, metadata !3277, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8 48, metadata !3278, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8 0, metadata !3279, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8 0, metadata !3280, metadata !DIExpression()), !dbg !3321
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3323
  %50 = load i8, i8* %49, align 1, !dbg !3323, !tbaa !1674
  %51 = icmp eq i8 %50, 48, !dbg !3323
  br i1 %51, label %52, label %68, !dbg !3324

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3288, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8* undef, metadata !3293, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8 51, metadata !3294, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8 48, metadata !3295, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8 0, metadata !3296, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8 0, metadata !3297, metadata !DIExpression()), !dbg !3325
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3327
  %54 = load i8, i8* %53, align 1, !dbg !3327, !tbaa !1674
  %55 = icmp eq i8 %54, 51, !dbg !3327
  br i1 %55, label %56, label %68, !dbg !3328

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3329, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8* undef, metadata !3334, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 48, metadata !3335, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 0, metadata !3336, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 0, metadata !3337, metadata !DIExpression()), !dbg !3338
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3342
  %58 = load i8, i8* %57, align 1, !dbg !3342, !tbaa !1674
  %59 = icmp eq i8 %58, 48, !dbg !3342
  br i1 %59, label %60, label %68, !dbg !3344

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3345, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8* undef, metadata !3350, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8 0, metadata !3351, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8 0, metadata !3352, metadata !DIExpression()), !dbg !3353
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3357
  %62 = load i8, i8* %61, align 1, !dbg !3357, !tbaa !1674
  %63 = icmp eq i8 %62, 0, !dbg !3357
  br i1 %63, label %64, label %68, !dbg !3359

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3360, !tbaa !1674
  %66 = icmp eq i8 %65, 96, !dbg !3361
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.132, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.133, i64 0, i64 0), !dbg !3360
  br label %71, !dbg !3362

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3363
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.129, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.128, i64 0, i64 0), !dbg !3364
  br label %71, !dbg !3365

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3185
  ret i8* %72, !dbg !3366
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !668 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !672 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3367 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3371, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %1, metadata !3372, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i8* %0, metadata !3375, metadata !DIExpression()) #19, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %1, metadata !3380, metadata !DIExpression()) #19, !dbg !3388
  call void @llvm.dbg.value(metadata i64* null, metadata !3381, metadata !DIExpression()) #19, !dbg !3388
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3382, metadata !DIExpression()) #19, !dbg !3388
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3390
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3390
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3383, metadata !DIExpression()) #19, !dbg !3388
  %6 = tail call i32* @__errno_location() #25, !dbg !3391
  %7 = load i32, i32* %6, align 4, !dbg !3391, !tbaa !1574
  call void @llvm.dbg.value(metadata i32 %7, metadata !3384, metadata !DIExpression()) #19, !dbg !3388
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3392
  %9 = load i32, i32* %8, align 4, !dbg !3392, !tbaa !2586
  %10 = or i32 %9, 1, !dbg !3393
  call void @llvm.dbg.value(metadata i32 %10, metadata !3385, metadata !DIExpression()) #19, !dbg !3388
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3394
  %12 = load i32, i32* %11, align 8, !dbg !3394, !tbaa !2535
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3395
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3396
  %15 = load i8*, i8** %14, align 8, !dbg !3396, !tbaa !2609
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3397
  %17 = load i8*, i8** %16, align 8, !dbg !3397, !tbaa !2612
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #19, !dbg !3398
  %19 = add i64 %18, 1, !dbg !3399
  call void @llvm.dbg.value(metadata i64 %19, metadata !3386, metadata !DIExpression()) #19, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %19, metadata !3400, metadata !DIExpression()) #19, !dbg !3405
  %20 = tail call noalias i8* @xmalloc(i64 %19) #19, !dbg !3407
  call void @llvm.dbg.value(metadata i8* %20, metadata !3387, metadata !DIExpression()) #19, !dbg !3388
  %21 = load i32, i32* %11, align 8, !dbg !3408, !tbaa !2535
  %22 = load i8*, i8** %14, align 8, !dbg !3409, !tbaa !2609
  %23 = load i8*, i8** %16, align 8, !dbg !3410, !tbaa !2612
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #19, !dbg !3411
  store i32 %7, i32* %6, align 4, !dbg !3412, !tbaa !1574
  ret i8* %20, !dbg !3413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3376 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3375, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3380, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64* %2, metadata !3381, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3382, metadata !DIExpression()), !dbg !3414
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3415
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3383, metadata !DIExpression()), !dbg !3414
  %7 = tail call i32* @__errno_location() #25, !dbg !3416
  %8 = load i32, i32* %7, align 4, !dbg !3416, !tbaa !1574
  call void @llvm.dbg.value(metadata i32 %8, metadata !3384, metadata !DIExpression()), !dbg !3414
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3417
  %10 = load i32, i32* %9, align 4, !dbg !3417, !tbaa !2586
  %11 = icmp ne i64* %2, null, !dbg !3418
  %12 = xor i1 %11, true, !dbg !3418
  %13 = zext i1 %12 to i32, !dbg !3418
  %14 = or i32 %10, %13, !dbg !3419
  call void @llvm.dbg.value(metadata i32 %14, metadata !3385, metadata !DIExpression()), !dbg !3414
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3420
  %16 = load i32, i32* %15, align 8, !dbg !3420, !tbaa !2535
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3421
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3422
  %19 = load i8*, i8** %18, align 8, !dbg !3422, !tbaa !2609
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3423
  %21 = load i8*, i8** %20, align 8, !dbg !3423, !tbaa !2612
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3424
  %23 = add i64 %22, 1, !dbg !3425
  call void @llvm.dbg.value(metadata i64 %23, metadata !3386, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %23, metadata !3400, metadata !DIExpression()) #19, !dbg !3426
  %24 = tail call noalias i8* @xmalloc(i64 %23) #19, !dbg !3428
  call void @llvm.dbg.value(metadata i8* %24, metadata !3387, metadata !DIExpression()), !dbg !3414
  %25 = load i32, i32* %15, align 8, !dbg !3429, !tbaa !2535
  %26 = load i8*, i8** %18, align 8, !dbg !3430, !tbaa !2609
  %27 = load i8*, i8** %20, align 8, !dbg !3431, !tbaa !2612
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3432
  store i32 %8, i32* %7, align 4, !dbg !3433, !tbaa !1574
  br i1 %11, label %29, label %30, !dbg !3434

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3435, !tbaa !1656
  br label %30, !dbg !3437

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3438
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3439 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3443, !tbaa !1459
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3441, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i32 1, metadata !3442, metadata !DIExpression()), !dbg !3444
  %2 = load i32, i32* @nslots, align 4, !dbg !3445, !tbaa !1574
  %3 = icmp sgt i32 %2, 1, !dbg !3448
  br i1 %3, label %4, label %12, !dbg !3449

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3442, metadata !DIExpression()), !dbg !3444
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3450
  %7 = load i8*, i8** %6, align 8, !dbg !3450, !tbaa !3451
  tail call void @free(i8* %7) #19, !dbg !3453
  %8 = add nuw nsw i64 %5, 1, !dbg !3454
  call void @llvm.dbg.value(metadata i64 %8, metadata !3442, metadata !DIExpression()), !dbg !3444
  %9 = load i32, i32* @nslots, align 4, !dbg !3445, !tbaa !1574
  %10 = sext i32 %9 to i64, !dbg !3448
  %11 = icmp slt i64 %8, %10, !dbg !3448
  br i1 %11, label %4, label %12, !dbg !3449, !llvm.loop !3455

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3457
  %14 = load i8*, i8** %13, align 8, !dbg !3457, !tbaa !3451
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3459
  br i1 %15, label %17, label %16, !dbg !3460

16:                                               ; preds = %12
  tail call void @free(i8* %14) #19, !dbg !3461
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3463, !tbaa !3464
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3465, !tbaa !3451
  br label %17, !dbg !3466

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3467
  br i1 %18, label %21, label %19, !dbg !3469

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3470
  tail call void @free(i8* %20) #19, !dbg !3472
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3473, !tbaa !1459
  br label %21, !dbg !3474

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3475, !tbaa !1574
  ret void, !dbg !3476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3477 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3479, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8* %1, metadata !3480, metadata !DIExpression()), !dbg !3481
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3482
  ret i8* %3, !dbg !3483
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3484 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3488, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i8* %1, metadata !3489, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i64 %2, metadata !3490, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3491, metadata !DIExpression()), !dbg !3503
  %5 = tail call i32* @__errno_location() #25, !dbg !3504
  %6 = load i32, i32* %5, align 4, !dbg !3504, !tbaa !1574
  call void @llvm.dbg.value(metadata i32 %6, metadata !3492, metadata !DIExpression()), !dbg !3503
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3505, !tbaa !1459
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3493, metadata !DIExpression()), !dbg !3503
  %8 = icmp slt i32 %0, 0, !dbg !3506
  br i1 %8, label %9, label %10, !dbg !3508

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3509
  unreachable, !dbg !3509

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3510, !tbaa !1574
  %12 = icmp sgt i32 %11, %0, !dbg !3511
  br i1 %12, label %34, label %13, !dbg !3512

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3513
  call void @llvm.dbg.value(metadata i1 %14, metadata !3494, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3497, metadata !DIExpression()), !dbg !3514
  %15 = icmp eq i32 %0, 2147483647, !dbg !3515
  br i1 %15, label %16, label %17, !dbg !3517

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3518
  unreachable, !dbg !3518

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3519
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3519
  %20 = add nuw nsw i32 %0, 1, !dbg !3520
  %21 = sext i32 %20 to i64, !dbg !3521
  %22 = shl nuw nsw i64 %21, 4, !dbg !3522
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #19, !dbg !3523
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3523
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3493, metadata !DIExpression()), !dbg !3503
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3524, !tbaa !1459
  br i1 %14, label %25, label %26, !dbg !3525

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3526, !tbaa.struct !3528
  br label %26, !dbg !3529

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3530, !tbaa !1574
  %28 = sext i32 %27 to i64, !dbg !3531
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3531
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3532
  %31 = sub nsw i32 %20, %27, !dbg !3533
  %32 = sext i32 %31 to i64, !dbg !3534
  %33 = shl nsw i64 %32, 4, !dbg !3535
  call void @llvm.dbg.value(metadata i8* %30, metadata !2934, metadata !DIExpression()) #19, !dbg !3536
  call void @llvm.dbg.value(metadata i32 0, metadata !2939, metadata !DIExpression()) #19, !dbg !3536
  call void @llvm.dbg.value(metadata i64 %33, metadata !2940, metadata !DIExpression()) #19, !dbg !3536
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #19, !dbg !3538
  store i32 %20, i32* @nslots, align 4, !dbg !3539, !tbaa !1574
  br label %34, !dbg !3540

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3503
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3493, metadata !DIExpression()), !dbg !3503
  %36 = zext i32 %0 to i64, !dbg !3541
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3542
  %38 = load i64, i64* %37, align 8, !dbg !3542, !tbaa !3464
  call void @llvm.dbg.value(metadata i64 %38, metadata !3498, metadata !DIExpression()), !dbg !3543
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3544
  %40 = load i8*, i8** %39, align 8, !dbg !3544, !tbaa !3451
  call void @llvm.dbg.value(metadata i8* %40, metadata !3500, metadata !DIExpression()), !dbg !3543
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3545
  %42 = load i32, i32* %41, align 4, !dbg !3545, !tbaa !2586
  %43 = or i32 %42, 1, !dbg !3546
  call void @llvm.dbg.value(metadata i32 %43, metadata !3501, metadata !DIExpression()), !dbg !3543
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3547
  %45 = load i32, i32* %44, align 8, !dbg !3547, !tbaa !2535
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3548
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3549
  %48 = load i8*, i8** %47, align 8, !dbg !3549, !tbaa !2609
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3550
  %50 = load i8*, i8** %49, align 8, !dbg !3550, !tbaa !2612
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %51, metadata !3502, metadata !DIExpression()), !dbg !3543
  %52 = icmp ugt i64 %38, %51, !dbg !3552
  br i1 %52, label %63, label %53, !dbg !3554

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i64 %54, metadata !3498, metadata !DIExpression()), !dbg !3543
  store i64 %54, i64* %37, align 8, !dbg !3557, !tbaa !3464
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3558
  br i1 %55, label %57, label %56, !dbg !3560

56:                                               ; preds = %53
  tail call void @free(i8* %40) #19, !dbg !3561
  br label %57, !dbg !3561

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3400, metadata !DIExpression()) #19, !dbg !3562
  %58 = tail call noalias i8* @xmalloc(i64 %54) #19, !dbg !3564
  call void @llvm.dbg.value(metadata i8* %58, metadata !3500, metadata !DIExpression()), !dbg !3543
  store i8* %58, i8** %39, align 8, !dbg !3565, !tbaa !3451
  %59 = load i32, i32* %44, align 8, !dbg !3566, !tbaa !2535
  %60 = load i8*, i8** %47, align 8, !dbg !3567, !tbaa !2609
  %61 = load i8*, i8** %49, align 8, !dbg !3568, !tbaa !2612
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3569
  br label %63, !dbg !3570

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3543
  call void @llvm.dbg.value(metadata i8* %64, metadata !3500, metadata !DIExpression()), !dbg !3543
  store i32 %6, i32* %5, align 4, !dbg !3571, !tbaa !1574
  ret i8* %64, !dbg !3572
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3573 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3577, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i8* %1, metadata !3578, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i64 %2, metadata !3579, metadata !DIExpression()), !dbg !3580
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3581
  ret i8* %4, !dbg !3582
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3583 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3585, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 0, metadata !3479, metadata !DIExpression()) #19, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %0, metadata !3480, metadata !DIExpression()) #19, !dbg !3587
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !3589
  ret i8* %2, !dbg !3590
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3591 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3595, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %1, metadata !3596, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 0, metadata !3577, metadata !DIExpression()) #19, !dbg !3598
  call void @llvm.dbg.value(metadata i8* %0, metadata !3578, metadata !DIExpression()) #19, !dbg !3598
  call void @llvm.dbg.value(metadata i64 %1, metadata !3579, metadata !DIExpression()) #19, !dbg !3598
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !3600
  ret i8* %3, !dbg !3601
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3602 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3604, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %1, metadata !3605, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8* %2, metadata !3606, metadata !DIExpression()), !dbg !3608
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3609
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3609
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3607, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32 %1, metadata !3611, metadata !DIExpression()) #19, !dbg !3617
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3616, metadata !DIExpression()) #19, !dbg !3619
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !3619, !alias.scope !3620
  %6 = icmp eq i32 %1, 10, !dbg !3623
  br i1 %6, label %7, label %8, !dbg !3625

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3626, !noalias !3620
  unreachable, !dbg !3626

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3627
  store i32 %1, i32* %9, align 8, !dbg !3628, !tbaa !2535, !alias.scope !3620
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3629
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3630
  ret i8* %10, !dbg !3631
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3632 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3636, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %1, metadata !3637, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i8* %2, metadata !3638, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 %3, metadata !3639, metadata !DIExpression()), !dbg !3641
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3642
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3642
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3640, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 %1, metadata !3611, metadata !DIExpression()) #19, !dbg !3644
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3616, metadata !DIExpression()) #19, !dbg !3646
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #19, !dbg !3646, !alias.scope !3647
  %7 = icmp eq i32 %1, 10, !dbg !3650
  br i1 %7, label %8, label %9, !dbg !3651

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3652, !noalias !3647
  unreachable, !dbg !3652

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3653
  store i32 %1, i32* %10, align 8, !dbg !3654, !tbaa !2535, !alias.scope !3647
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3655
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3656
  ret i8* %11, !dbg !3657
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3658 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3616, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3607, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 %0, metadata !3662, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i8* %1, metadata !3663, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i32 0, metadata !3604, metadata !DIExpression()) #19, !dbg !3669
  call void @llvm.dbg.value(metadata i32 %0, metadata !3605, metadata !DIExpression()) #19, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %1, metadata !3606, metadata !DIExpression()) #19, !dbg !3669
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3670
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3670
  call void @llvm.dbg.value(metadata i32 %0, metadata !3611, metadata !DIExpression()) #19, !dbg !3671
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #19, !dbg !3664, !alias.scope !3672
  %5 = icmp eq i32 %0, 10, !dbg !3675
  br i1 %5, label %6, label %7, !dbg !3676

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !3677, !noalias !3672
  unreachable, !dbg !3677

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3678
  store i32 %0, i32* %8, align 8, !dbg !3679, !tbaa !2535, !alias.scope !3672
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !3680
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3681
  ret i8* %9, !dbg !3682
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3683 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3616, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3640, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i32 %0, metadata !3687, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i8* %1, metadata !3688, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %2, metadata !3689, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i32 0, metadata !3636, metadata !DIExpression()) #19, !dbg !3695
  call void @llvm.dbg.value(metadata i32 %0, metadata !3637, metadata !DIExpression()) #19, !dbg !3695
  call void @llvm.dbg.value(metadata i8* %1, metadata !3638, metadata !DIExpression()) #19, !dbg !3695
  call void @llvm.dbg.value(metadata i64 %2, metadata !3639, metadata !DIExpression()) #19, !dbg !3695
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3696
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3696
  call void @llvm.dbg.value(metadata i32 %0, metadata !3611, metadata !DIExpression()) #19, !dbg !3697
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !3690, !alias.scope !3698
  %6 = icmp eq i32 %0, 10, !dbg !3701
  br i1 %6, label %7, label %8, !dbg !3702

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3703, !noalias !3698
  unreachable, !dbg !3703

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3704
  store i32 %0, i32* %9, align 8, !dbg !3705, !tbaa !2535, !alias.scope !3698
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #19, !dbg !3706
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3707
  ret i8* %10, !dbg !3708
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3709 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3713, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %1, metadata !3714, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i8 %2, metadata !3715, metadata !DIExpression()), !dbg !3717
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3718
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3718
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3716, metadata !DIExpression()), !dbg !3719
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3720, !tbaa.struct !3721
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2553, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i8 %2, metadata !2554, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i32 1, metadata !2555, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i8 %2, metadata !2556, metadata !DIExpression()), !dbg !3722
  %6 = lshr i8 %2, 5, !dbg !3724
  %7 = zext i8 %6 to i64, !dbg !3724
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3725
  call void @llvm.dbg.value(metadata i32* %8, metadata !2557, metadata !DIExpression()), !dbg !3722
  %9 = and i8 %2, 31, !dbg !3726
  %10 = zext i8 %9 to i32, !dbg !3726
  call void @llvm.dbg.value(metadata i32 %10, metadata !2559, metadata !DIExpression()), !dbg !3722
  %11 = load i32, i32* %8, align 4, !dbg !3727, !tbaa !1574
  %12 = lshr i32 %11, %10, !dbg !3728
  %13 = and i32 %12, 1, !dbg !3729
  call void @llvm.dbg.value(metadata i32 %13, metadata !2560, metadata !DIExpression()), !dbg !3722
  %14 = xor i32 %13, 1, !dbg !3730
  %15 = shl i32 %14, %10, !dbg !3731
  %16 = xor i32 %15, %11, !dbg !3732
  store i32 %16, i32* %8, align 4, !dbg !3732, !tbaa !1574
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3733
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3734
  ret i8* %17, !dbg !3735
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3736 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3716, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i8* %0, metadata !3740, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i8 %1, metadata !3741, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i8* %0, metadata !3713, metadata !DIExpression()) #19, !dbg !3745
  call void @llvm.dbg.value(metadata i64 -1, metadata !3714, metadata !DIExpression()) #19, !dbg !3745
  call void @llvm.dbg.value(metadata i8 %1, metadata !3715, metadata !DIExpression()) #19, !dbg !3745
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3746
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3746
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3747, !tbaa.struct !3721
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2553, metadata !DIExpression()) #19, !dbg !3748
  call void @llvm.dbg.value(metadata i8 %1, metadata !2554, metadata !DIExpression()) #19, !dbg !3748
  call void @llvm.dbg.value(metadata i32 1, metadata !2555, metadata !DIExpression()) #19, !dbg !3748
  call void @llvm.dbg.value(metadata i8 %1, metadata !2556, metadata !DIExpression()) #19, !dbg !3748
  %5 = lshr i8 %1, 5, !dbg !3750
  %6 = zext i8 %5 to i64, !dbg !3750
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3751
  call void @llvm.dbg.value(metadata i32* %7, metadata !2557, metadata !DIExpression()) #19, !dbg !3748
  %8 = and i8 %1, 31, !dbg !3752
  %9 = zext i8 %8 to i32, !dbg !3752
  call void @llvm.dbg.value(metadata i32 %9, metadata !2559, metadata !DIExpression()) #19, !dbg !3748
  %10 = load i32, i32* %7, align 4, !dbg !3753, !tbaa !1574
  %11 = lshr i32 %10, %9, !dbg !3754
  %12 = and i32 %11, 1, !dbg !3755
  call void @llvm.dbg.value(metadata i32 %12, metadata !2560, metadata !DIExpression()) #19, !dbg !3748
  %13 = xor i32 %12, 1, !dbg !3756
  %14 = shl i32 %13, %9, !dbg !3757
  %15 = xor i32 %14, %10, !dbg !3758
  store i32 %15, i32* %7, align 4, !dbg !3758, !tbaa !1574
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !3759
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3760
  ret i8* %16, !dbg !3761
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3762 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3716, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i8* %0, metadata !3764, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i8* %0, metadata !3740, metadata !DIExpression()) #19, !dbg !3769
  call void @llvm.dbg.value(metadata i8 58, metadata !3741, metadata !DIExpression()) #19, !dbg !3769
  call void @llvm.dbg.value(metadata i8* %0, metadata !3713, metadata !DIExpression()) #19, !dbg !3770
  call void @llvm.dbg.value(metadata i64 -1, metadata !3714, metadata !DIExpression()) #19, !dbg !3770
  call void @llvm.dbg.value(metadata i8 58, metadata !3715, metadata !DIExpression()) #19, !dbg !3770
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3771
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #19, !dbg !3771
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3772, !tbaa.struct !3721
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2553, metadata !DIExpression()) #19, !dbg !3773
  call void @llvm.dbg.value(metadata i8 58, metadata !2554, metadata !DIExpression()) #19, !dbg !3773
  call void @llvm.dbg.value(metadata i32 1, metadata !2555, metadata !DIExpression()) #19, !dbg !3773
  call void @llvm.dbg.value(metadata i8 58, metadata !2556, metadata !DIExpression()) #19, !dbg !3773
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3775
  call void @llvm.dbg.value(metadata i32* %4, metadata !2557, metadata !DIExpression()) #19, !dbg !3773
  call void @llvm.dbg.value(metadata i32 26, metadata !2559, metadata !DIExpression()) #19, !dbg !3773
  %5 = load i32, i32* %4, align 4, !dbg !3776, !tbaa !1574
  call void @llvm.dbg.value(metadata i32 %5, metadata !2560, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !3773
  %6 = or i32 %5, 67108864, !dbg !3777
  store i32 %6, i32* %4, align 4, !dbg !3777, !tbaa !1574
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #19, !dbg !3778
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #19, !dbg !3779
  ret i8* %7, !dbg !3780
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3781 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3716, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i8* %0, metadata !3783, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i64 %1, metadata !3784, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i8* %0, metadata !3713, metadata !DIExpression()) #19, !dbg !3788
  call void @llvm.dbg.value(metadata i64 %1, metadata !3714, metadata !DIExpression()) #19, !dbg !3788
  call void @llvm.dbg.value(metadata i8 58, metadata !3715, metadata !DIExpression()) #19, !dbg !3788
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3789
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3789
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3790, !tbaa.struct !3721
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2553, metadata !DIExpression()) #19, !dbg !3791
  call void @llvm.dbg.value(metadata i8 58, metadata !2554, metadata !DIExpression()) #19, !dbg !3791
  call void @llvm.dbg.value(metadata i32 1, metadata !2555, metadata !DIExpression()) #19, !dbg !3791
  call void @llvm.dbg.value(metadata i8 58, metadata !2556, metadata !DIExpression()) #19, !dbg !3791
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3793
  call void @llvm.dbg.value(metadata i32* %5, metadata !2557, metadata !DIExpression()) #19, !dbg !3791
  call void @llvm.dbg.value(metadata i32 26, metadata !2559, metadata !DIExpression()) #19, !dbg !3791
  %6 = load i32, i32* %5, align 4, !dbg !3794, !tbaa !1574
  call void @llvm.dbg.value(metadata i32 %6, metadata !2560, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !3791
  %7 = or i32 %6, 67108864, !dbg !3795
  store i32 %7, i32* %5, align 4, !dbg !3795, !tbaa !1574
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #19, !dbg !3796
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3797
  ret i8* %8, !dbg !3798
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3799 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3616, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3805
  call void @llvm.dbg.value(metadata i32 %0, metadata !3801, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i32 %1, metadata !3802, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i8* %2, metadata !3803, metadata !DIExpression()), !dbg !3807
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3808
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3808
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3804, metadata !DIExpression()), !dbg !3809
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3810
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3810
  call void @llvm.dbg.value(metadata i32 %1, metadata !3611, metadata !DIExpression()) #19, !dbg !3811
  call void @llvm.dbg.value(metadata i32 0, metadata !3616, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3811
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3805, !alias.scope !3812
  %8 = icmp eq i32 %1, 10, !dbg !3815
  br i1 %8, label %9, label %10, !dbg !3816

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3817, !noalias !3812
  unreachable, !dbg !3817

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3616, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3811
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3810
  store i32 %1, i32* %11, align 8, !dbg !3810, !tbaa.struct !3721
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3810
  %13 = bitcast i32* %12 to i8*, !dbg !3810
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3810, !tbaa.struct !3721
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3810
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2553, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i8 58, metadata !2554, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i32 1, metadata !2555, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i8 58, metadata !2556, metadata !DIExpression()), !dbg !3818
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3820
  call void @llvm.dbg.value(metadata i32* %14, metadata !2557, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i32 26, metadata !2559, metadata !DIExpression()), !dbg !3818
  %15 = load i32, i32* %14, align 4, !dbg !3821, !tbaa !1574
  call void @llvm.dbg.value(metadata i32 %15, metadata !2560, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3818
  %16 = or i32 %15, 67108864, !dbg !3822
  store i32 %16, i32* %14, align 4, !dbg !3822, !tbaa !1574
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3823
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3824
  ret i8* %17, !dbg !3825
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3826 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3834, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i32 %0, metadata !3830, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i8* %1, metadata !3831, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i8* %2, metadata !3832, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i8* %3, metadata !3833, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i32 %0, metadata !3839, metadata !DIExpression()) #19, !dbg !3847
  call void @llvm.dbg.value(metadata i8* %1, metadata !3840, metadata !DIExpression()) #19, !dbg !3847
  call void @llvm.dbg.value(metadata i8* %2, metadata !3841, metadata !DIExpression()) #19, !dbg !3847
  call void @llvm.dbg.value(metadata i8* %3, metadata !3842, metadata !DIExpression()) #19, !dbg !3847
  call void @llvm.dbg.value(metadata i64 -1, metadata !3843, metadata !DIExpression()) #19, !dbg !3847
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3848
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3848
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3849, !tbaa.struct !3721
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2593, metadata !DIExpression()) #19, !dbg !3850
  call void @llvm.dbg.value(metadata i8* %1, metadata !2594, metadata !DIExpression()) #19, !dbg !3850
  call void @llvm.dbg.value(metadata i8* %2, metadata !2595, metadata !DIExpression()) #19, !dbg !3850
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2593, metadata !DIExpression()) #19, !dbg !3850
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3852
  store i32 10, i32* %7, align 8, !dbg !3853, !tbaa !2535
  %8 = icmp ne i8* %1, null, !dbg !3854
  %9 = icmp ne i8* %2, null, !dbg !3855
  %10 = and i1 %8, %9, !dbg !3856
  br i1 %10, label %12, label %11, !dbg !3856

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3857
  unreachable, !dbg !3857

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3858
  store i8* %1, i8** %13, align 8, !dbg !3859, !tbaa !2609
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3860
  store i8* %2, i8** %14, align 8, !dbg !3861, !tbaa !2612
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #19, !dbg !3862
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3863
  ret i8* %15, !dbg !3864
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3835 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3839, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i8* %1, metadata !3840, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i8* %2, metadata !3841, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i8* %3, metadata !3842, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i64 %4, metadata !3843, metadata !DIExpression()), !dbg !3865
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3866
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #19, !dbg !3866
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3834, metadata !DIExpression()), !dbg !3867
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3868, !tbaa.struct !3721
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2593, metadata !DIExpression()) #19, !dbg !3869
  call void @llvm.dbg.value(metadata i8* %1, metadata !2594, metadata !DIExpression()) #19, !dbg !3869
  call void @llvm.dbg.value(metadata i8* %2, metadata !2595, metadata !DIExpression()) #19, !dbg !3869
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2593, metadata !DIExpression()) #19, !dbg !3869
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3871
  store i32 10, i32* %8, align 8, !dbg !3872, !tbaa !2535
  %9 = icmp ne i8* %1, null, !dbg !3873
  %10 = icmp ne i8* %2, null, !dbg !3874
  %11 = and i1 %9, %10, !dbg !3875
  br i1 %11, label %13, label %12, !dbg !3875

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3876
  unreachable, !dbg !3876

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3877
  store i8* %1, i8** %14, align 8, !dbg !3878, !tbaa !2609
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3879
  store i8* %2, i8** %15, align 8, !dbg !3880, !tbaa !2612
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3881
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #19, !dbg !3882
  ret i8* %16, !dbg !3883
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3884 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3834, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i8* %0, metadata !3888, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i8* %1, metadata !3889, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i8* %2, metadata !3890, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i32 0, metadata !3830, metadata !DIExpression()) #19, !dbg !3895
  call void @llvm.dbg.value(metadata i8* %0, metadata !3831, metadata !DIExpression()) #19, !dbg !3895
  call void @llvm.dbg.value(metadata i8* %1, metadata !3832, metadata !DIExpression()) #19, !dbg !3895
  call void @llvm.dbg.value(metadata i8* %2, metadata !3833, metadata !DIExpression()) #19, !dbg !3895
  call void @llvm.dbg.value(metadata i32 0, metadata !3839, metadata !DIExpression()) #19, !dbg !3896
  call void @llvm.dbg.value(metadata i8* %0, metadata !3840, metadata !DIExpression()) #19, !dbg !3896
  call void @llvm.dbg.value(metadata i8* %1, metadata !3841, metadata !DIExpression()) #19, !dbg !3896
  call void @llvm.dbg.value(metadata i8* %2, metadata !3842, metadata !DIExpression()) #19, !dbg !3896
  call void @llvm.dbg.value(metadata i64 -1, metadata !3843, metadata !DIExpression()) #19, !dbg !3896
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3897
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3897
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3898, !tbaa.struct !3721
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2593, metadata !DIExpression()) #19, !dbg !3899
  call void @llvm.dbg.value(metadata i8* %0, metadata !2594, metadata !DIExpression()) #19, !dbg !3899
  call void @llvm.dbg.value(metadata i8* %1, metadata !2595, metadata !DIExpression()) #19, !dbg !3899
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2593, metadata !DIExpression()) #19, !dbg !3899
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3901
  store i32 10, i32* %6, align 8, !dbg !3902, !tbaa !2535
  %7 = icmp ne i8* %0, null, !dbg !3903
  %8 = icmp ne i8* %1, null, !dbg !3904
  %9 = and i1 %7, %8, !dbg !3905
  br i1 %9, label %11, label %10, !dbg !3905

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3906
  unreachable, !dbg !3906

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3907
  store i8* %0, i8** %12, align 8, !dbg !3908, !tbaa !2609
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3909
  store i8* %1, i8** %13, align 8, !dbg !3910, !tbaa !2612
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #19, !dbg !3911
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3912
  ret i8* %14, !dbg !3913
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3914 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3834, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i8* %0, metadata !3918, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i8* %1, metadata !3919, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i8* %2, metadata !3920, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i64 %3, metadata !3921, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i32 0, metadata !3839, metadata !DIExpression()) #19, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %0, metadata !3840, metadata !DIExpression()) #19, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %1, metadata !3841, metadata !DIExpression()) #19, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %2, metadata !3842, metadata !DIExpression()) #19, !dbg !3925
  call void @llvm.dbg.value(metadata i64 %3, metadata !3843, metadata !DIExpression()) #19, !dbg !3925
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3926
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3926
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3927, !tbaa.struct !3721
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2593, metadata !DIExpression()) #19, !dbg !3928
  call void @llvm.dbg.value(metadata i8* %0, metadata !2594, metadata !DIExpression()) #19, !dbg !3928
  call void @llvm.dbg.value(metadata i8* %1, metadata !2595, metadata !DIExpression()) #19, !dbg !3928
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2593, metadata !DIExpression()) #19, !dbg !3928
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3930
  store i32 10, i32* %7, align 8, !dbg !3931, !tbaa !2535
  %8 = icmp ne i8* %0, null, !dbg !3932
  %9 = icmp ne i8* %1, null, !dbg !3933
  %10 = and i1 %8, %9, !dbg !3934
  br i1 %10, label %12, label %11, !dbg !3934

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3935
  unreachable, !dbg !3935

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3936
  store i8* %0, i8** %13, align 8, !dbg !3937, !tbaa !2609
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3938
  store i8* %1, i8** %14, align 8, !dbg !3939, !tbaa !2612
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #19, !dbg !3940
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3941
  ret i8* %15, !dbg !3942
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3943 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3947, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i8* %1, metadata !3948, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %2, metadata !3949, metadata !DIExpression()), !dbg !3950
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3951
  ret i8* %4, !dbg !3952
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3953 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3957, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i64 %1, metadata !3958, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i32 0, metadata !3947, metadata !DIExpression()) #19, !dbg !3960
  call void @llvm.dbg.value(metadata i8* %0, metadata !3948, metadata !DIExpression()) #19, !dbg !3960
  call void @llvm.dbg.value(metadata i64 %1, metadata !3949, metadata !DIExpression()) #19, !dbg !3960
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3962
  ret i8* %3, !dbg !3963
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3964 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3968, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8* %1, metadata !3969, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 %0, metadata !3947, metadata !DIExpression()) #19, !dbg !3971
  call void @llvm.dbg.value(metadata i8* %1, metadata !3948, metadata !DIExpression()) #19, !dbg !3971
  call void @llvm.dbg.value(metadata i64 -1, metadata !3949, metadata !DIExpression()) #19, !dbg !3971
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3973
  ret i8* %3, !dbg !3974
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3975 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3977, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i32 0, metadata !3968, metadata !DIExpression()) #19, !dbg !3979
  call void @llvm.dbg.value(metadata i8* %0, metadata !3969, metadata !DIExpression()) #19, !dbg !3979
  call void @llvm.dbg.value(metadata i32 0, metadata !3947, metadata !DIExpression()) #19, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %0, metadata !3948, metadata !DIExpression()) #19, !dbg !3981
  call void @llvm.dbg.value(metadata i64 -1, metadata !3949, metadata !DIExpression()) #19, !dbg !3981
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3983
  ret i8* %2, !dbg !3984
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3985 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3989, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i8* %1, metadata !3990, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 %2, metadata !3991, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32 %0, metadata !3993, metadata !DIExpression()) #19, !dbg !4002
  call void @llvm.dbg.value(metadata i8* %1, metadata !3996, metadata !DIExpression()) #19, !dbg !4002
  call void @llvm.dbg.value(metadata i64 %2, metadata !3997, metadata !DIExpression()) #19, !dbg !4002
  call void @llvm.dbg.value(metadata i32 %0, metadata !4004, metadata !DIExpression()) #19, !dbg !4008
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !4010
  call void @llvm.dbg.value(metadata i8* %4, metadata !4007, metadata !DIExpression()) #19, !dbg !4008
  call void @llvm.dbg.value(metadata i8* %4, metadata !3998, metadata !DIExpression()) #19, !dbg !4002
  %5 = icmp eq i8* %4, null, !dbg !4011
  br i1 %5, label %6, label %9, !dbg !4012

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4013
  br i1 %7, label %19, label %8, !dbg !4016

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4017, !tbaa !1674
  br label %19, !dbg !4018

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !4019
  call void @llvm.dbg.value(metadata i64 %10, metadata !3999, metadata !DIExpression()) #19, !dbg !4020
  %11 = icmp ult i64 %10, %2, !dbg !4021
  br i1 %11, label %12, label %14, !dbg !4023

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4024
  call void @llvm.dbg.value(metadata i8* %1, metadata !4026, metadata !DIExpression()) #19, !dbg !4035
  call void @llvm.dbg.value(metadata i8* %4, metadata !4033, metadata !DIExpression()) #19, !dbg !4035
  call void @llvm.dbg.value(metadata i64 %13, metadata !4034, metadata !DIExpression()) #19, !dbg !4035
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #19, !dbg !4037
  br label %19, !dbg !4038

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4039
  br i1 %15, label %19, label %16, !dbg !4042

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4043
  call void @llvm.dbg.value(metadata i8* %1, metadata !4026, metadata !DIExpression()) #19, !dbg !4045
  call void @llvm.dbg.value(metadata i8* %4, metadata !4033, metadata !DIExpression()) #19, !dbg !4045
  call void @llvm.dbg.value(metadata i64 %17, metadata !4034, metadata !DIExpression()) #19, !dbg !4045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #19, !dbg !4047
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4048
  store i8 0, i8* %18, align 1, !dbg !4049, !tbaa !1674
  br label %19, !dbg !4050

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4051
  ret i32 %20, !dbg !4052
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4053 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 %0, metadata !4004, metadata !DIExpression()) #19, !dbg !4057
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %2, metadata !4007, metadata !DIExpression()) #19, !dbg !4057
  ret i8* %2, !dbg !4060
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4061 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4069, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i8* %1, metadata !4070, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i8* %2, metadata !4071, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i8* %3, metadata !4072, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i8** %4, metadata !4073, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %5, metadata !4074, metadata !DIExpression()), !dbg !4075
  %7 = icmp eq i8* %1, null, !dbg !4076
  br i1 %7, label %10, label %8, !dbg !4078

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.142, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #19, !dbg !4079
  br label %12, !dbg !4079

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.143, i64 0, i64 0), i8* %2, i8* %3) #19, !dbg !4080
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.144, i64 0, i64 0), i32 5) #19, !dbg !4081
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #19, !dbg !4081
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.145, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4082
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.146, i64 0, i64 0), i32 5) #19, !dbg !4083
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.147, i64 0, i64 0)) #19, !dbg !4083
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.145, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4084
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
  ], !dbg !4085

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.148, i64 0, i64 0), i32 5) #19, !dbg !4086
  %21 = load i8*, i8** %4, align 8, !dbg !4086, !tbaa !1459
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #19, !dbg !4086
  br label %147, !dbg !4088

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.149, i64 0, i64 0), i32 5) #19, !dbg !4089
  %25 = load i8*, i8** %4, align 8, !dbg !4089, !tbaa !1459
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4089
  %27 = load i8*, i8** %26, align 8, !dbg !4089, !tbaa !1459
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #19, !dbg !4089
  br label %147, !dbg !4090

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.150, i64 0, i64 0), i32 5) #19, !dbg !4091
  %31 = load i8*, i8** %4, align 8, !dbg !4091, !tbaa !1459
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4091
  %33 = load i8*, i8** %32, align 8, !dbg !4091, !tbaa !1459
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4091
  %35 = load i8*, i8** %34, align 8, !dbg !4091, !tbaa !1459
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #19, !dbg !4091
  br label %147, !dbg !4092

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.151, i64 0, i64 0), i32 5) #19, !dbg !4093
  %39 = load i8*, i8** %4, align 8, !dbg !4093, !tbaa !1459
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4093
  %41 = load i8*, i8** %40, align 8, !dbg !4093, !tbaa !1459
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4093
  %43 = load i8*, i8** %42, align 8, !dbg !4093, !tbaa !1459
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4093
  %45 = load i8*, i8** %44, align 8, !dbg !4093, !tbaa !1459
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #19, !dbg !4093
  br label %147, !dbg !4094

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.152, i64 0, i64 0), i32 5) #19, !dbg !4095
  %49 = load i8*, i8** %4, align 8, !dbg !4095, !tbaa !1459
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4095
  %51 = load i8*, i8** %50, align 8, !dbg !4095, !tbaa !1459
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4095
  %53 = load i8*, i8** %52, align 8, !dbg !4095, !tbaa !1459
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4095
  %55 = load i8*, i8** %54, align 8, !dbg !4095, !tbaa !1459
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4095
  %57 = load i8*, i8** %56, align 8, !dbg !4095, !tbaa !1459
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #19, !dbg !4095
  br label %147, !dbg !4096

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.153, i64 0, i64 0), i32 5) #19, !dbg !4097
  %61 = load i8*, i8** %4, align 8, !dbg !4097, !tbaa !1459
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4097
  %63 = load i8*, i8** %62, align 8, !dbg !4097, !tbaa !1459
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4097
  %65 = load i8*, i8** %64, align 8, !dbg !4097, !tbaa !1459
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4097
  %67 = load i8*, i8** %66, align 8, !dbg !4097, !tbaa !1459
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4097
  %69 = load i8*, i8** %68, align 8, !dbg !4097, !tbaa !1459
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4097
  %71 = load i8*, i8** %70, align 8, !dbg !4097, !tbaa !1459
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #19, !dbg !4097
  br label %147, !dbg !4098

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.154, i64 0, i64 0), i32 5) #19, !dbg !4099
  %75 = load i8*, i8** %4, align 8, !dbg !4099, !tbaa !1459
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4099
  %77 = load i8*, i8** %76, align 8, !dbg !4099, !tbaa !1459
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4099
  %79 = load i8*, i8** %78, align 8, !dbg !4099, !tbaa !1459
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4099
  %81 = load i8*, i8** %80, align 8, !dbg !4099, !tbaa !1459
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4099
  %83 = load i8*, i8** %82, align 8, !dbg !4099, !tbaa !1459
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4099
  %85 = load i8*, i8** %84, align 8, !dbg !4099, !tbaa !1459
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4099
  %87 = load i8*, i8** %86, align 8, !dbg !4099, !tbaa !1459
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #19, !dbg !4099
  br label %147, !dbg !4100

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.155, i64 0, i64 0), i32 5) #19, !dbg !4101
  %91 = load i8*, i8** %4, align 8, !dbg !4101, !tbaa !1459
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4101
  %93 = load i8*, i8** %92, align 8, !dbg !4101, !tbaa !1459
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4101
  %95 = load i8*, i8** %94, align 8, !dbg !4101, !tbaa !1459
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4101
  %97 = load i8*, i8** %96, align 8, !dbg !4101, !tbaa !1459
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4101
  %99 = load i8*, i8** %98, align 8, !dbg !4101, !tbaa !1459
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4101
  %101 = load i8*, i8** %100, align 8, !dbg !4101, !tbaa !1459
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4101
  %103 = load i8*, i8** %102, align 8, !dbg !4101, !tbaa !1459
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4101
  %105 = load i8*, i8** %104, align 8, !dbg !4101, !tbaa !1459
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #19, !dbg !4101
  br label %147, !dbg !4102

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.156, i64 0, i64 0), i32 5) #19, !dbg !4103
  %109 = load i8*, i8** %4, align 8, !dbg !4103, !tbaa !1459
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4103
  %111 = load i8*, i8** %110, align 8, !dbg !4103, !tbaa !1459
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4103
  %113 = load i8*, i8** %112, align 8, !dbg !4103, !tbaa !1459
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4103
  %115 = load i8*, i8** %114, align 8, !dbg !4103, !tbaa !1459
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4103
  %117 = load i8*, i8** %116, align 8, !dbg !4103, !tbaa !1459
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4103
  %119 = load i8*, i8** %118, align 8, !dbg !4103, !tbaa !1459
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4103
  %121 = load i8*, i8** %120, align 8, !dbg !4103, !tbaa !1459
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4103
  %123 = load i8*, i8** %122, align 8, !dbg !4103, !tbaa !1459
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4103
  %125 = load i8*, i8** %124, align 8, !dbg !4103, !tbaa !1459
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #19, !dbg !4103
  br label %147, !dbg !4104

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.157, i64 0, i64 0), i32 5) #19, !dbg !4105
  %129 = load i8*, i8** %4, align 8, !dbg !4105, !tbaa !1459
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4105
  %131 = load i8*, i8** %130, align 8, !dbg !4105, !tbaa !1459
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4105
  %133 = load i8*, i8** %132, align 8, !dbg !4105, !tbaa !1459
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4105
  %135 = load i8*, i8** %134, align 8, !dbg !4105, !tbaa !1459
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4105
  %137 = load i8*, i8** %136, align 8, !dbg !4105, !tbaa !1459
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4105
  %139 = load i8*, i8** %138, align 8, !dbg !4105, !tbaa !1459
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4105
  %141 = load i8*, i8** %140, align 8, !dbg !4105, !tbaa !1459
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4105
  %143 = load i8*, i8** %142, align 8, !dbg !4105, !tbaa !1459
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4105
  %145 = load i8*, i8** %144, align 8, !dbg !4105, !tbaa !1459
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #19, !dbg !4105
  br label %147, !dbg !4106

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4107
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4108 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4112, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i8* %1, metadata !4113, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i8* %2, metadata !4114, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i8* %3, metadata !4115, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i8** %4, metadata !4116, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 0, metadata !4117, metadata !DIExpression()), !dbg !4118
  br label %6, !dbg !4119

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4121
  call void @llvm.dbg.value(metadata i64 %7, metadata !4117, metadata !DIExpression()), !dbg !4118
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4122
  %9 = load i8*, i8** %8, align 8, !dbg !4122, !tbaa !1459
  %10 = icmp eq i8* %9, null, !dbg !4124
  %11 = add i64 %7, 1, !dbg !4125
  call void @llvm.dbg.value(metadata i64 %11, metadata !4117, metadata !DIExpression()), !dbg !4118
  br i1 %10, label %12, label %6, !dbg !4124, !llvm.loop !4126

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4117, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 %7, metadata !4117, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 %7, metadata !4117, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 %7, metadata !4117, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 %7, metadata !4117, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 %7, metadata !4117, metadata !DIExpression()), !dbg !4118
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4128
  ret void, !dbg !4129
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4130 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4141, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i8* %1, metadata !4142, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i8* %2, metadata !4143, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i8* %3, metadata !4144, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4145, metadata !DIExpression()), !dbg !4149
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4150
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #19, !dbg !4150
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4147, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i64 0, metadata !4146, metadata !DIExpression()), !dbg !4149
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !4152
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !4152
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !4152
  %11 = load i32, i32* %8, align 8, !dbg !4155
  %12 = icmp ult i32 %11, 41, !dbg !4155
  br i1 %12, label %13, label %18, !dbg !4155

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4155
  %15 = zext i32 %11 to i64, !dbg !4155
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4155
  %17 = add nuw nsw i32 %11, 8, !dbg !4155
  store i32 %17, i32* %8, align 8, !dbg !4155
  br label %21, !dbg !4155

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4155
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4155
  store i8* %20, i8** %9, align 8, !dbg !4155
  br label %21, !dbg !4155

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4155
  %25 = load i8*, i8** %24, align 8, !dbg !4155
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4156
  store i8* %25, i8** %26, align 16, !dbg !4157, !tbaa !1459
  %27 = icmp eq i8* %25, null, !dbg !4158
  br i1 %27, label %30, label %28, !dbg !4159

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4146, metadata !DIExpression()), !dbg !4149
  %29 = icmp ult i32 %22, 41, !dbg !4155
  br i1 %29, label %35, label %32, !dbg !4155

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4160
  call void @llvm.dbg.value(metadata i64 %31, metadata !4146, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i64 %31, metadata !4146, metadata !DIExpression()), !dbg !4149
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4161
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #19, !dbg !4162
  ret void, !dbg !4162

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4155
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4155
  store i8* %34, i8** %9, align 8, !dbg !4155
  br label %40, !dbg !4155

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4155
  %37 = zext i32 %22 to i64, !dbg !4155
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4155
  %39 = add nuw nsw i32 %22, 8, !dbg !4155
  store i32 %39, i32* %8, align 8, !dbg !4155
  br label %40, !dbg !4155

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4155
  %44 = load i8*, i8** %43, align 8, !dbg !4155
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4156
  store i8* %44, i8** %45, align 8, !dbg !4157, !tbaa !1459
  %46 = icmp eq i8* %44, null, !dbg !4158
  br i1 %46, label %30, label %47, !dbg !4159

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4146, metadata !DIExpression()), !dbg !4149
  %48 = icmp ult i32 %41, 41, !dbg !4155
  br i1 %48, label %52, label %49, !dbg !4155

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4155
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4155
  store i8* %51, i8** %9, align 8, !dbg !4155
  br label %57, !dbg !4155

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4155
  %54 = zext i32 %41 to i64, !dbg !4155
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4155
  %56 = add nuw nsw i32 %41, 8, !dbg !4155
  store i32 %56, i32* %8, align 8, !dbg !4155
  br label %57, !dbg !4155

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4155
  %61 = load i8*, i8** %60, align 8, !dbg !4155
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4156
  store i8* %61, i8** %62, align 16, !dbg !4157, !tbaa !1459
  %63 = icmp eq i8* %61, null, !dbg !4158
  br i1 %63, label %30, label %64, !dbg !4159

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4146, metadata !DIExpression()), !dbg !4149
  %65 = icmp ult i32 %58, 41, !dbg !4155
  br i1 %65, label %69, label %66, !dbg !4155

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4155
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4155
  store i8* %68, i8** %9, align 8, !dbg !4155
  br label %74, !dbg !4155

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4155
  %71 = zext i32 %58 to i64, !dbg !4155
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4155
  %73 = add nuw nsw i32 %58, 8, !dbg !4155
  store i32 %73, i32* %8, align 8, !dbg !4155
  br label %74, !dbg !4155

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4155
  %78 = load i8*, i8** %77, align 8, !dbg !4155
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4156
  store i8* %78, i8** %79, align 8, !dbg !4157, !tbaa !1459
  %80 = icmp eq i8* %78, null, !dbg !4158
  br i1 %80, label %30, label %81, !dbg !4159

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4146, metadata !DIExpression()), !dbg !4149
  %82 = icmp ult i32 %75, 41, !dbg !4155
  br i1 %82, label %86, label %83, !dbg !4155

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4155
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4155
  store i8* %85, i8** %9, align 8, !dbg !4155
  br label %91, !dbg !4155

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4155
  %88 = zext i32 %75 to i64, !dbg !4155
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4155
  %90 = add nuw nsw i32 %75, 8, !dbg !4155
  store i32 %90, i32* %8, align 8, !dbg !4155
  br label %91, !dbg !4155

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4155
  %95 = load i8*, i8** %94, align 8, !dbg !4155
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4156
  store i8* %95, i8** %96, align 16, !dbg !4157, !tbaa !1459
  %97 = icmp eq i8* %95, null, !dbg !4158
  br i1 %97, label %30, label %98, !dbg !4159

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4146, metadata !DIExpression()), !dbg !4149
  %99 = icmp ult i32 %92, 41, !dbg !4155
  br i1 %99, label %103, label %100, !dbg !4155

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4155
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4155
  store i8* %102, i8** %9, align 8, !dbg !4155
  br label %108, !dbg !4155

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4155
  %105 = zext i32 %92 to i64, !dbg !4155
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4155
  %107 = add nuw nsw i32 %92, 8, !dbg !4155
  store i32 %107, i32* %8, align 8, !dbg !4155
  br label %108, !dbg !4155

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4155
  %111 = load i8*, i8** %110, align 8, !dbg !4155
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4156
  store i8* %111, i8** %112, align 8, !dbg !4157, !tbaa !1459
  %113 = icmp eq i8* %111, null, !dbg !4158
  br i1 %113, label %30, label %114, !dbg !4159

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4146, metadata !DIExpression()), !dbg !4149
  %115 = load i8*, i8** %9, align 8, !dbg !4155
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4155
  store i8* %116, i8** %9, align 8, !dbg !4155
  %117 = bitcast i8* %115 to i8**, !dbg !4155
  %118 = load i8*, i8** %117, align 8, !dbg !4155
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4156
  store i8* %118, i8** %119, align 16, !dbg !4157, !tbaa !1459
  %120 = icmp eq i8* %118, null, !dbg !4158
  br i1 %120, label %30, label %121, !dbg !4159

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4146, metadata !DIExpression()), !dbg !4149
  %122 = load i8*, i8** %9, align 8, !dbg !4155
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4155
  store i8* %123, i8** %9, align 8, !dbg !4155
  %124 = bitcast i8* %122 to i8**, !dbg !4155
  %125 = load i8*, i8** %124, align 8, !dbg !4155
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4156
  store i8* %125, i8** %126, align 8, !dbg !4157, !tbaa !1459
  %127 = icmp eq i8* %125, null, !dbg !4158
  br i1 %127, label %30, label %128, !dbg !4159

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4146, metadata !DIExpression()), !dbg !4149
  %129 = load i8*, i8** %9, align 8, !dbg !4155
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4155
  store i8* %130, i8** %9, align 8, !dbg !4155
  %131 = bitcast i8* %129 to i8**, !dbg !4155
  %132 = load i8*, i8** %131, align 8, !dbg !4155
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4156
  store i8* %132, i8** %133, align 16, !dbg !4157, !tbaa !1459
  %134 = icmp eq i8* %132, null, !dbg !4158
  br i1 %134, label %30, label %135, !dbg !4159

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4146, metadata !DIExpression()), !dbg !4149
  %136 = load i8*, i8** %9, align 8, !dbg !4155
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4155
  store i8* %137, i8** %9, align 8, !dbg !4155
  %138 = bitcast i8* %136 to i8**, !dbg !4155
  %139 = load i8*, i8** %138, align 8, !dbg !4155
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4156
  store i8* %139, i8** %140, align 8, !dbg !4157, !tbaa !1459
  %141 = icmp eq i8* %139, null, !dbg !4158
  %142 = select i1 %141, i64 9, i64 10, !dbg !4159
  br label %30, !dbg !4159
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4163 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4167, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i8* %1, metadata !4168, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i8* %2, metadata !4169, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i8* %3, metadata !4170, metadata !DIExpression()), !dbg !4177
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4178
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #19, !dbg !4178
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4171, metadata !DIExpression()), !dbg !4179
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4180
  call void @llvm.va_start(i8* nonnull %6), !dbg !4180
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4181
  call void @llvm.va_end(i8* nonnull %6), !dbg !4182
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #19, !dbg !4183
  ret void, !dbg !4183
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #19

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4184 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4185, !tbaa !1459
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.145, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4185
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.160, i64 0, i64 0), i32 5) #19, !dbg !4186
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.161, i64 0, i64 0)) #19, !dbg !4186
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.162, i64 0, i64 0), i32 5) #19, !dbg !4187
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.163, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.164, i64 0, i64 0)) #19, !dbg !4187
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.165, i64 0, i64 0), i32 5) #19, !dbg !4188
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.166, i64 0, i64 0)) #19, !dbg !4188
  ret void, !dbg !4189
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !4190 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4194, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 %1, metadata !4195, metadata !DIExpression()), !dbg !4196
  %3 = udiv i64 9223372036854775807, %1, !dbg !4197
  %4 = icmp ult i64 %3, %0, !dbg !4197
  br i1 %4, label %5, label %6, !dbg !4199

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !4200
  unreachable, !dbg !4200

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4201
  call void @llvm.dbg.value(metadata i64 %7, metadata !4202, metadata !DIExpression()) #19, !dbg !4208
  %8 = tail call noalias i8* @malloc(i64 %7) #19, !dbg !4210
  call void @llvm.dbg.value(metadata i8* %8, metadata !4207, metadata !DIExpression()) #19, !dbg !4208
  %9 = icmp eq i8* %8, null, !dbg !4211
  %10 = icmp ne i64 %7, 0, !dbg !4213
  %11 = and i1 %10, %9, !dbg !4214
  br i1 %11, label %12, label %13, !dbg !4214

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !4215
  unreachable, !dbg !4215

13:                                               ; preds = %6
  ret i8* %8, !dbg !4216
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4203 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4202, metadata !DIExpression()), !dbg !4217
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !4218
  call void @llvm.dbg.value(metadata i8* %2, metadata !4207, metadata !DIExpression()), !dbg !4217
  %3 = icmp eq i8* %2, null, !dbg !4219
  %4 = icmp ne i64 %0, 0, !dbg !4220
  %5 = and i1 %4, %3, !dbg !4221
  br i1 %5, label %6, label %7, !dbg !4221

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4222
  unreachable, !dbg !4222

7:                                                ; preds = %1
  ret i8* %2, !dbg !4223
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #20 !dbg !4224 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4228, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %1, metadata !4229, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %2, metadata !4230, metadata !DIExpression()), !dbg !4231
  %4 = udiv i64 9223372036854775807, %2, !dbg !4232
  %5 = icmp ult i64 %4, %1, !dbg !4232
  br i1 %5, label %6, label %7, !dbg !4234

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !4235
  unreachable, !dbg !4235

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4236
  call void @llvm.dbg.value(metadata i8* %0, metadata !4237, metadata !DIExpression()) #19, !dbg !4243
  call void @llvm.dbg.value(metadata i64 %8, metadata !4242, metadata !DIExpression()) #19, !dbg !4243
  %9 = icmp eq i64 %8, 0, !dbg !4245
  %10 = icmp ne i8* %0, null, !dbg !4247
  %11 = and i1 %10, %9, !dbg !4248
  br i1 %11, label %12, label %13, !dbg !4248

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #19, !dbg !4249
  br label %19, !dbg !4251

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #19, !dbg !4252
  call void @llvm.dbg.value(metadata i8* %14, metadata !4237, metadata !DIExpression()) #19, !dbg !4243
  %15 = icmp eq i8* %14, null, !dbg !4253
  %16 = icmp ne i64 %8, 0, !dbg !4255
  %17 = and i1 %16, %15, !dbg !4256
  br i1 %17, label %18, label %19, !dbg !4256

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !4257
  unreachable, !dbg !4257

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4243
  ret i8* %20, !dbg !4258
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4238 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4237, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i64 %1, metadata !4242, metadata !DIExpression()), !dbg !4259
  %3 = icmp eq i64 %1, 0, !dbg !4260
  %4 = icmp ne i8* %0, null, !dbg !4261
  %5 = and i1 %4, %3, !dbg !4262
  br i1 %5, label %6, label %7, !dbg !4262

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #19, !dbg !4263
  br label %13, !dbg !4264

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #19, !dbg !4265
  call void @llvm.dbg.value(metadata i8* %8, metadata !4237, metadata !DIExpression()), !dbg !4259
  %9 = icmp eq i8* %8, null, !dbg !4266
  %10 = icmp ne i64 %1, 0, !dbg !4267
  %11 = and i1 %10, %9, !dbg !4268
  br i1 %11, label %12, label %13, !dbg !4268

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !4269
  unreachable, !dbg !4269

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4259
  ret i8* %14, !dbg !4270
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #20 !dbg !787 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !792, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64* %1, metadata !793, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %2, metadata !794, metadata !DIExpression()), !dbg !4271
  %4 = load i64, i64* %1, align 8, !dbg !4272, !tbaa !1656
  call void @llvm.dbg.value(metadata i64 %4, metadata !795, metadata !DIExpression()), !dbg !4271
  %5 = icmp eq i8* %0, null, !dbg !4273
  br i1 %5, label %6, label %20, !dbg !4275

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4276
  br i1 %7, label %8, label %13, !dbg !4279

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4280
  call void @llvm.dbg.value(metadata i64 %9, metadata !795, metadata !DIExpression()), !dbg !4271
  %10 = icmp ugt i64 %2, 128, !dbg !4282
  %11 = zext i1 %10 to i64, !dbg !4282
  %12 = add nuw nsw i64 %9, %11, !dbg !4283
  call void @llvm.dbg.value(metadata i64 %12, metadata !795, metadata !DIExpression()), !dbg !4271
  br label %13, !dbg !4284

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4271
  call void @llvm.dbg.value(metadata i64 %14, metadata !795, metadata !DIExpression()), !dbg !4271
  %15 = udiv i64 9223372036854775807, %2, !dbg !4285
  %16 = icmp ult i64 %15, %14, !dbg !4285
  br i1 %16, label %19, label %17, !dbg !4287

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !795, metadata !DIExpression()), !dbg !4271
  store i64 %14, i64* %1, align 8, !dbg !4288, !tbaa !1656
  %18 = mul i64 %14, %2, !dbg !4289
  call void @llvm.dbg.value(metadata i8* %0, metadata !4237, metadata !DIExpression()) #19, !dbg !4290
  call void @llvm.dbg.value(metadata i64 %28, metadata !4242, metadata !DIExpression()) #19, !dbg !4290
  br label %31, !dbg !4292

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !4293
  unreachable, !dbg !4293

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4294
  %22 = icmp ugt i64 %21, %4, !dbg !4297
  br i1 %22, label %24, label %23, !dbg !4298

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !4299
  unreachable, !dbg !4299

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4300
  %26 = add nuw i64 %4, 1, !dbg !4301
  %27 = add i64 %26, %25, !dbg !4302
  call void @llvm.dbg.value(metadata i64 %27, metadata !795, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %27, metadata !795, metadata !DIExpression()), !dbg !4271
  store i64 %27, i64* %1, align 8, !dbg !4288, !tbaa !1656
  %28 = mul i64 %27, %2, !dbg !4289
  call void @llvm.dbg.value(metadata i8* %0, metadata !4237, metadata !DIExpression()) #19, !dbg !4290
  call void @llvm.dbg.value(metadata i64 %28, metadata !4242, metadata !DIExpression()) #19, !dbg !4290
  %29 = icmp eq i64 %28, 0, !dbg !4303
  br i1 %29, label %30, label %31, !dbg !4292

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #19, !dbg !4304
  br label %38, !dbg !4305

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #19, !dbg !4306
  call void @llvm.dbg.value(metadata i8* %33, metadata !4237, metadata !DIExpression()) #19, !dbg !4290
  %34 = icmp eq i8* %33, null, !dbg !4307
  %35 = icmp ne i64 %32, 0, !dbg !4308
  %36 = and i1 %35, %34, !dbg !4309
  br i1 %36, label %37, label %38, !dbg !4309

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !4310
  unreachable, !dbg !4310

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4290
  ret i8* %39, !dbg !4311
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #20 !dbg !4312 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4314, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i64 %0, metadata !4202, metadata !DIExpression()) #19, !dbg !4316
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !4318
  call void @llvm.dbg.value(metadata i8* %2, metadata !4207, metadata !DIExpression()) #19, !dbg !4316
  %3 = icmp eq i8* %2, null, !dbg !4319
  %4 = icmp ne i64 %0, 0, !dbg !4320
  %5 = and i1 %4, %3, !dbg !4321
  br i1 %5, label %6, label %7, !dbg !4321

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4322
  unreachable, !dbg !4322

7:                                                ; preds = %1
  ret i8* %2, !dbg !4323
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4324 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4328, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i64* %1, metadata !4329, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i8* %0, metadata !792, metadata !DIExpression()) #19, !dbg !4331
  call void @llvm.dbg.value(metadata i64* %1, metadata !793, metadata !DIExpression()) #19, !dbg !4331
  call void @llvm.dbg.value(metadata i64 1, metadata !794, metadata !DIExpression()) #19, !dbg !4331
  %3 = load i64, i64* %1, align 8, !dbg !4333, !tbaa !1656
  call void @llvm.dbg.value(metadata i64 %3, metadata !795, metadata !DIExpression()) #19, !dbg !4331
  %4 = icmp eq i8* %0, null, !dbg !4334
  br i1 %4, label %5, label %12, !dbg !4335

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4336
  br i1 %6, label %9, label %7, !dbg !4337

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !795, metadata !DIExpression()) #19, !dbg !4331
  %8 = icmp slt i64 %3, 0, !dbg !4338
  br i1 %8, label %11, label %9, !dbg !4339

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !795, metadata !DIExpression()) #19, !dbg !4331
  store i64 %10, i64* %1, align 8, !dbg !4340, !tbaa !1656
  call void @llvm.dbg.value(metadata i8* %0, metadata !4237, metadata !DIExpression()) #19, !dbg !4341
  call void @llvm.dbg.value(metadata i64 %18, metadata !4242, metadata !DIExpression()) #19, !dbg !4341
  br label %21, !dbg !4343

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !4344
  unreachable, !dbg !4344

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4345
  br i1 %13, label %15, label %14, !dbg !4346

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !4347
  unreachable, !dbg !4347

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4348
  %17 = add nuw nsw i64 %3, 1, !dbg !4349
  %18 = add nuw nsw i64 %17, %16, !dbg !4350
  call void @llvm.dbg.value(metadata i64 %18, metadata !795, metadata !DIExpression()) #19, !dbg !4331
  call void @llvm.dbg.value(metadata i64 %18, metadata !795, metadata !DIExpression()) #19, !dbg !4331
  store i64 %18, i64* %1, align 8, !dbg !4340, !tbaa !1656
  call void @llvm.dbg.value(metadata i8* %0, metadata !4237, metadata !DIExpression()) #19, !dbg !4341
  call void @llvm.dbg.value(metadata i64 %18, metadata !4242, metadata !DIExpression()) #19, !dbg !4341
  %19 = icmp eq i64 %18, 0, !dbg !4351
  br i1 %19, label %20, label %21, !dbg !4343

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #19, !dbg !4352
  br label %28, !dbg !4353

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #19, !dbg !4354
  call void @llvm.dbg.value(metadata i8* %23, metadata !4237, metadata !DIExpression()) #19, !dbg !4341
  %24 = icmp eq i8* %23, null, !dbg !4355
  %25 = icmp ne i64 %22, 0, !dbg !4356
  %26 = and i1 %25, %24, !dbg !4357
  br i1 %26, label %27, label %28, !dbg !4357

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !4358
  unreachable, !dbg !4358

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4341
  ret i8* %29, !dbg !4359
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4360 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4362, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 %0, metadata !4364, metadata !DIExpression()) #19, !dbg !4369
  call void @llvm.dbg.value(metadata i64 1, metadata !4367, metadata !DIExpression()) #19, !dbg !4369
  %2 = icmp slt i64 %0, 0, !dbg !4371
  br i1 %2, label %6, label %3, !dbg !4373

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #19, !dbg !4374
  call void @llvm.dbg.value(metadata i8* %4, metadata !4368, metadata !DIExpression()) #19, !dbg !4369
  %5 = icmp eq i8* %4, null, !dbg !4375
  br i1 %5, label %6, label %7, !dbg !4376

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !4377
  unreachable, !dbg !4377

7:                                                ; preds = %3
  ret i8* %4, !dbg !4378
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4365 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4364, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i64 %1, metadata !4367, metadata !DIExpression()), !dbg !4379
  %3 = udiv i64 9223372036854775807, %1, !dbg !4380
  %4 = icmp ult i64 %3, %0, !dbg !4380
  br i1 %4, label %8, label %5, !dbg !4381

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #19, !dbg !4382
  call void @llvm.dbg.value(metadata i8* %6, metadata !4368, metadata !DIExpression()), !dbg !4379
  %7 = icmp eq i8* %6, null, !dbg !4383
  br i1 %7, label %8, label %9, !dbg !4384

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !4385
  unreachable, !dbg !4385

9:                                                ; preds = %5
  ret i8* %6, !dbg !4386
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4387 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4391, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.value(metadata i64 %1, metadata !4392, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.value(metadata i64 %1, metadata !4202, metadata !DIExpression()) #19, !dbg !4394
  %3 = tail call noalias i8* @malloc(i64 %1) #19, !dbg !4396
  call void @llvm.dbg.value(metadata i8* %3, metadata !4207, metadata !DIExpression()) #19, !dbg !4394
  %4 = icmp eq i8* %3, null, !dbg !4397
  %5 = icmp ne i64 %1, 0, !dbg !4398
  %6 = and i1 %5, %4, !dbg !4399
  br i1 %6, label %7, label %8, !dbg !4399

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !4400
  unreachable, !dbg !4400

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4401, metadata !DIExpression()) #19, !dbg !4406
  call void @llvm.dbg.value(metadata i8* %0, metadata !4404, metadata !DIExpression()) #19, !dbg !4406
  call void @llvm.dbg.value(metadata i64 %1, metadata !4405, metadata !DIExpression()) #19, !dbg !4406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #19, !dbg !4408
  ret i8* %3, !dbg !4409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4410 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4412, metadata !DIExpression()), !dbg !4413
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !4414
  %3 = add i64 %2, 1, !dbg !4415
  call void @llvm.dbg.value(metadata i8* %0, metadata !4391, metadata !DIExpression()) #19, !dbg !4416
  call void @llvm.dbg.value(metadata i64 %3, metadata !4392, metadata !DIExpression()) #19, !dbg !4416
  call void @llvm.dbg.value(metadata i64 %3, metadata !4202, metadata !DIExpression()) #19, !dbg !4418
  %4 = tail call noalias i8* @malloc(i64 %3) #19, !dbg !4420
  call void @llvm.dbg.value(metadata i8* %4, metadata !4207, metadata !DIExpression()) #19, !dbg !4418
  %5 = icmp eq i8* %4, null, !dbg !4421
  %6 = icmp ne i64 %3, 0, !dbg !4422
  %7 = and i1 %6, %5, !dbg !4423
  br i1 %7, label %8, label %9, !dbg !4423

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4424
  unreachable, !dbg !4424

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4401, metadata !DIExpression()) #19, !dbg !4425
  call void @llvm.dbg.value(metadata i8* %0, metadata !4404, metadata !DIExpression()) #19, !dbg !4425
  call void @llvm.dbg.value(metadata i64 %3, metadata !4405, metadata !DIExpression()) #19, !dbg !4425
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #19, !dbg !4427
  ret i8* %4, !dbg !4428
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4429 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4430, !tbaa !1574
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.177, i64 0, i64 0), i32 5) #19, !dbg !4431
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.178, i64 0, i64 0), i8* %2) #19, !dbg !4432
  tail call void @abort() #23, !dbg !4433
  unreachable, !dbg !4433
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !4434 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4436, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64 %1, metadata !4437, metadata !DIExpression()), !dbg !4442
  %3 = icmp eq i64 %0, 0, !dbg !4443
  %4 = icmp eq i64 %1, 0, !dbg !4444
  %5 = or i1 %3, %4, !dbg !4445
  br i1 %5, label %11, label %6, !dbg !4445

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4439, metadata !DIExpression()), !dbg !4446
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4447
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4447
  br i1 %8, label %9, label %11, !dbg !4449

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !4450
  store i32 12, i32* %10, align 4, !dbg !4452, !tbaa !1574
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4436, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64 %12, metadata !4437, metadata !DIExpression()), !dbg !4442
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #19, !dbg !4453
  call void @llvm.dbg.value(metadata i8* %14, metadata !4438, metadata !DIExpression()), !dbg !4442
  br label %15, !dbg !4454

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4442
  ret i8* %16, !dbg !4455
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4456 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4464, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i8* %1, metadata !4465, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i64 %2, metadata !4466, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4467, metadata !DIExpression()), !dbg !4473
  %6 = bitcast i32* %5 to i8*, !dbg !4474
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #19, !dbg !4474
  %7 = icmp eq i32* %0, null, !dbg !4475
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4477
  call void @llvm.dbg.value(metadata i32* %8, metadata !4464, metadata !DIExpression()), !dbg !4473
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #19, !dbg !4478
  call void @llvm.dbg.value(metadata i64 %9, metadata !4468, metadata !DIExpression()), !dbg !4473
  %10 = icmp ugt i64 %9, -3, !dbg !4479
  %11 = icmp ne i64 %2, 0, !dbg !4480
  %12 = and i1 %11, %10, !dbg !4481
  br i1 %12, label %13, label %18, !dbg !4481

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #19, !dbg !4482
  br i1 %14, label %18, label %15, !dbg !4483

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4484, !tbaa !1674
  call void @llvm.dbg.value(metadata i8 %16, metadata !4470, metadata !DIExpression()), !dbg !4485
  %17 = zext i8 %16 to i32, !dbg !4486
  store i32 %17, i32* %8, align 4, !dbg !4487, !tbaa !1574
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4473
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #19, !dbg !4488
  ret i64 %19, !dbg !4488
}

; Function Attrs: nounwind
declare !dbg !813 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @extract_trimmed_name(%struct.utmpx* %0) local_unnamed_addr #8 !dbg !4489 {
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !4496, metadata !DIExpression()), !dbg !4499
  %2 = tail call noalias i8* @xmalloc(i64 33) #19, !dbg !4500
  call void @llvm.dbg.value(metadata i8* %2, metadata !4498, metadata !DIExpression()), !dbg !4499
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !4501
  call void @llvm.dbg.value(metadata i8* %2, metadata !4502, metadata !DIExpression()) #19, !dbg !4507
  call void @llvm.dbg.value(metadata i8* %3, metadata !4505, metadata !DIExpression()) #19, !dbg !4507
  call void @llvm.dbg.value(metadata i64 32, metadata !4506, metadata !DIExpression()) #19, !dbg !4507
  %4 = call i8* @strncpy(i8* nonnull dereferenceable(1) %2, i8* nonnull dereferenceable(1) %3, i64 32), !dbg !4509
  %5 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !4510
  store i8 0, i8* %5, align 1, !dbg !4511, !tbaa !1674
  %6 = tail call i64 @strlen(i8* nonnull %2) #22, !dbg !4512
  call void @llvm.dbg.value(metadata i8* undef, metadata !4497, metadata !DIExpression()), !dbg !4499
  %7 = icmp sgt i64 %6, 0, !dbg !4514
  br i1 %7, label %8, label %17, !dbg !4516

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, i8* %2, i64 %6, !dbg !4517
  call void @llvm.dbg.value(metadata i8* %9, metadata !4497, metadata !DIExpression()), !dbg !4499
  br label %10, !dbg !4518

10:                                               ; preds = %8, %15
  %11 = phi i8* [ %12, %15 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !4497, metadata !DIExpression()), !dbg !4499
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !4519
  %13 = load i8, i8* %12, align 1, !dbg !4519, !tbaa !1674
  %14 = icmp eq i8 %13, 32, !dbg !4520
  br i1 %14, label %15, label %17, !dbg !4518

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %12, metadata !4497, metadata !DIExpression()), !dbg !4499
  store i8 0, i8* %12, align 1, !dbg !4521, !tbaa !1674
  %16 = icmp ult i8* %2, %12, !dbg !4514
  br i1 %16, label %10, label %17, !dbg !4516, !llvm.loop !4522

17:                                               ; preds = %10, %15, %1
  ret i8* %2, !dbg !4524
}

; Function Attrs: nofree nounwind
declare i8* @strncpy(i8* noalias returned, i8* noalias nocapture readonly, i64) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @read_utmp(i8* %0, i64* nocapture %1, %struct.utmpx** nocapture %2, i32 %3) local_unnamed_addr #8 !dbg !4525 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4531, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i64* %1, metadata !4532, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata %struct.utmpx** %2, metadata !4533, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 %3, metadata !4534, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i64 0, metadata !4535, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i64 0, metadata !4536, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !4537, metadata !DIExpression()), !dbg !4539
  %5 = tail call i32 @utmpxname(i8* %0) #19, !dbg !4540
  tail call void @setutxent() #19, !dbg !4541
  call void @llvm.dbg.value(metadata i64 0, metadata !4535, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !4537, metadata !DIExpression()), !dbg !4539
  %6 = tail call %struct.utmpx* @getutxent() #19, !dbg !4542
  call void @llvm.dbg.value(metadata %struct.utmpx* %6, metadata !4538, metadata !DIExpression()), !dbg !4539
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !4543
  br i1 %7, label %77, label %8, !dbg !4544

8:                                                ; preds = %4
  %9 = and i32 %3, 2, !dbg !4545
  %10 = icmp eq i32 %9, 0, !dbg !4545
  %11 = and i32 %3, 1, !dbg !4556
  %12 = icmp eq i32 %11, 0, !dbg !4556
  br label %13, !dbg !4544

13:                                               ; preds = %8, %71
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %75, %71 ]
  %15 = phi i64 [ 0, %8 ], [ %74, %71 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %73, %71 ]
  %17 = phi i64 [ 0, %8 ], [ %72, %71 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !4535, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata %struct.utmpx* %16, metadata !4537, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata %struct.utmpx* %14, metadata !4551, metadata !DIExpression()) #19, !dbg !4558
  call void @llvm.dbg.value(metadata i32 %3, metadata !4552, metadata !DIExpression()) #19, !dbg !4558
  %18 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !4559
  %19 = load i8, i8* %18, align 4, !dbg !4559, !tbaa !1674
  %20 = icmp eq i8 %19, 0, !dbg !4559
  br i1 %20, label %25, label %21, !dbg !4559

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !4559
  %23 = load i16, i16* %22, align 4, !dbg !4559, !tbaa !1675
  %24 = icmp eq i16 %23, 7, !dbg !4559
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i1 [ false, %13 ], [ %24, %21 ], !dbg !4558
  call void @llvm.dbg.value(metadata i1 %26, metadata !4553, metadata !DIExpression()) #19, !dbg !4558
  %27 = or i1 %10, %26, !dbg !4560
  br i1 %27, label %28, label %71, !dbg !4560

28:                                               ; preds = %25
  %29 = xor i1 %26, true, !dbg !4561
  %30 = or i1 %12, %29, !dbg !4561
  br i1 %30, label %42, label %31, !dbg !4561

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !4562
  %33 = load i32, i32* %32, align 4, !dbg !4562, !tbaa !1782
  %34 = icmp sgt i32 %33, 0, !dbg !4563
  br i1 %34, label %35, label %42, !dbg !4564

35:                                               ; preds = %31
  %36 = tail call i32 @kill(i32 %33, i32 0) #19, !dbg !4565
  %37 = icmp slt i32 %36, 0, !dbg !4566
  br i1 %37, label %38, label %42, !dbg !4567

38:                                               ; preds = %35
  %39 = tail call i32* @__errno_location() #25, !dbg !4568
  %40 = load i32, i32* %39, align 4, !dbg !4568, !tbaa !1574
  %41 = icmp eq i32 %40, 3, !dbg !4569
  br i1 %41, label %71, label %42, !dbg !4570

42:                                               ; preds = %38, %35, %31, %28
  call void @llvm.dbg.value(metadata i64 %17, metadata !4536, metadata !DIExpression()), !dbg !4539
  %43 = icmp eq i64 %15, %17, !dbg !4571
  br i1 %43, label %44, label %64, !dbg !4574

44:                                               ; preds = %42
  %45 = bitcast %struct.utmpx* %16 to i8*, !dbg !4575
  call void @llvm.dbg.value(metadata i8* %45, metadata !831, metadata !DIExpression()) #19, !dbg !4576
  call void @llvm.dbg.value(metadata i64 384, metadata !833, metadata !DIExpression()) #19, !dbg !4576
  call void @llvm.dbg.value(metadata i64 %17, metadata !834, metadata !DIExpression()) #19, !dbg !4576
  %46 = icmp eq %struct.utmpx* %16, null, !dbg !4578
  br i1 %46, label %47, label %52, !dbg !4580

47:                                               ; preds = %44
  %48 = icmp eq i64 %15, 0, !dbg !4581
  br i1 %48, label %59, label %49, !dbg !4584

49:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i64 %17, metadata !834, metadata !DIExpression()) #19, !dbg !4576
  %50 = icmp ugt i64 %15, 24019198012642645, !dbg !4585
  br i1 %50, label %51, label %59, !dbg !4587

51:                                               ; preds = %49
  tail call void @xalloc_die() #23, !dbg !4588
  unreachable, !dbg !4588

52:                                               ; preds = %44
  %53 = icmp ult i64 %15, 16012798675095096, !dbg !4589
  br i1 %53, label %55, label %54, !dbg !4592

54:                                               ; preds = %52
  tail call void @xalloc_die() #23, !dbg !4593
  unreachable, !dbg !4593

55:                                               ; preds = %52
  %56 = lshr i64 %15, 1, !dbg !4594
  %57 = add nuw nsw i64 %15, 1, !dbg !4595
  %58 = add nuw nsw i64 %57, %56, !dbg !4596
  call void @llvm.dbg.value(metadata i64 %58, metadata !834, metadata !DIExpression()) #19, !dbg !4576
  br label %59

59:                                               ; preds = %47, %49, %55
  %60 = phi i64 [ %58, %55 ], [ %15, %49 ], [ 1, %47 ], !dbg !4576
  call void @llvm.dbg.value(metadata i64 %60, metadata !834, metadata !DIExpression()) #19, !dbg !4576
  %61 = mul nuw nsw i64 %60, 384, !dbg !4597
  %62 = tail call i8* @xrealloc(i8* %45, i64 %61) #19, !dbg !4598
  %63 = bitcast i8* %62 to %struct.utmpx*, !dbg !4599
  call void @llvm.dbg.value(metadata %struct.utmpx* %63, metadata !4537, metadata !DIExpression()), !dbg !4539
  br label %64, !dbg !4600

64:                                               ; preds = %59, %42
  %65 = phi i64 [ %60, %59 ], [ %17, %42 ], !dbg !4539
  %66 = phi %struct.utmpx* [ %63, %59 ], [ %16, %42 ], !dbg !4539
  call void @llvm.dbg.value(metadata %struct.utmpx* %66, metadata !4537, metadata !DIExpression()), !dbg !4539
  %67 = add i64 %15, 1, !dbg !4601
  call void @llvm.dbg.value(metadata i64 %67, metadata !4535, metadata !DIExpression()), !dbg !4539
  %68 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %66, i64 %15, !dbg !4602
  %69 = bitcast %struct.utmpx* %68 to i8*, !dbg !4603
  %70 = bitcast %struct.utmpx* %14 to i8*, !dbg !4603
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(384) %69, i8* nonnull align 4 dereferenceable(384) %70, i64 384, i1 false), !dbg !4603, !tbaa.struct !4604
  br label %71, !dbg !4605

71:                                               ; preds = %38, %25, %64
  %72 = phi i64 [ %65, %64 ], [ %17, %25 ], [ %17, %38 ], !dbg !4539
  %73 = phi %struct.utmpx* [ %66, %64 ], [ %16, %25 ], [ %16, %38 ], !dbg !4539
  %74 = phi i64 [ %67, %64 ], [ %15, %25 ], [ %15, %38 ], !dbg !4539
  call void @llvm.dbg.value(metadata i64 %74, metadata !4535, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata %struct.utmpx* %73, metadata !4537, metadata !DIExpression()), !dbg !4539
  %75 = tail call %struct.utmpx* @getutxent() #19, !dbg !4542
  call void @llvm.dbg.value(metadata %struct.utmpx* %75, metadata !4538, metadata !DIExpression()), !dbg !4539
  %76 = icmp eq %struct.utmpx* %75, null, !dbg !4543
  br i1 %76, label %77, label %13, !dbg !4544, !llvm.loop !4606

77:                                               ; preds = %71, %4
  %78 = phi %struct.utmpx* [ null, %4 ], [ %73, %71 ], !dbg !4539
  %79 = phi i64 [ 0, %4 ], [ %74, %71 ], !dbg !4539
  call void @llvm.dbg.value(metadata %struct.utmpx* %78, metadata !4537, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i64 %79, metadata !4535, metadata !DIExpression()), !dbg !4539
  tail call void @endutxent() #19, !dbg !4608
  store i64 %79, i64* %1, align 8, !dbg !4609, !tbaa !1656
  store %struct.utmpx* %78, %struct.utmpx** %2, align 8, !dbg !4610, !tbaa !1459
  ret i32 0, !dbg !4611
}

declare !dbg !836 i32 @utmpxname(i8*) local_unnamed_addr #3

declare !dbg !838 void @setutxent() local_unnamed_addr #3

declare !dbg !839 %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !865 i32 @kill(i32, i32) local_unnamed_addr #2

declare !dbg !864 void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4612 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4618, metadata !DIExpression()), !dbg !4623
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #19, !dbg !4624
  call void @llvm.dbg.value(metadata i1 undef, metadata !4619, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4625, metadata !DIExpression()), !dbg !4629
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4631
  %4 = load i32, i32* %3, align 8, !dbg !4631, !tbaa !4632
  %5 = and i32 %4, 32, !dbg !4631
  %6 = icmp eq i32 %5, 0, !dbg !4634
  call void @llvm.dbg.value(metadata i1 %6, metadata !4621, metadata !DIExpression()), !dbg !4623
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #19, !dbg !4635
  %8 = icmp ne i32 %7, 0, !dbg !4636
  call void @llvm.dbg.value(metadata i1 %8, metadata !4622, metadata !DIExpression()), !dbg !4623
  br i1 %6, label %9, label %19, !dbg !4637

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4639
  call void @llvm.dbg.value(metadata i1 %10, metadata !4619, metadata !DIExpression()), !dbg !4623
  %11 = xor i1 %8, true, !dbg !4640
  %12 = or i1 %10, %11, !dbg !4640
  %13 = sext i1 %8 to i32, !dbg !4640
  br i1 %12, label %22, label %14, !dbg !4640

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !4641
  %16 = load i32, i32* %15, align 4, !dbg !4641, !tbaa !1574
  %17 = icmp ne i32 %16, 9, !dbg !4642
  %18 = sext i1 %17 to i32, !dbg !4643
  br label %22, !dbg !4643

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4644

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !4646
  store i32 0, i32* %21, align 4, !dbg !4648, !tbaa !1574
  br label %22, !dbg !4646

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4623
  ret i32 %23, !dbg !4649
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4650 {
  %1 = tail call i8* @nl_langinfo(i32 14) #19, !dbg !4653
  call void @llvm.dbg.value(metadata i8* %1, metadata !4652, metadata !DIExpression()), !dbg !4654
  %2 = icmp eq i8* %1, null, !dbg !4655
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.191, i64 0, i64 0), i8* %1, !dbg !4657
  call void @llvm.dbg.value(metadata i8* %3, metadata !4652, metadata !DIExpression()), !dbg !4654
  %4 = load i8, i8* %3, align 1, !dbg !4658, !tbaa !1674
  %5 = icmp eq i8 %4, 0, !dbg !4662
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.192, i64 0, i64 0), i8* %3, !dbg !4663
  call void @llvm.dbg.value(metadata i8* %6, metadata !4652, metadata !DIExpression()), !dbg !4654
  ret i8* %6, !dbg !4664
}

; Function Attrs: nounwind
declare !dbg !1298 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4665 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4671, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.value(metadata i32 0, metadata !4672, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.value(metadata i32 0, metadata !4674, metadata !DIExpression()), !dbg !4675
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4676
  call void @llvm.dbg.value(metadata i32 %2, metadata !4673, metadata !DIExpression()), !dbg !4675
  %3 = icmp slt i32 %2, 0, !dbg !4677
  br i1 %3, label %4, label %6, !dbg !4679

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4680
  br label %24, !dbg !4681

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4682
  %8 = icmp eq i32 %7, 0, !dbg !4682
  br i1 %8, label %13, label %9, !dbg !4684

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4685
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #19, !dbg !4686
  %12 = icmp eq i64 %11, -1, !dbg !4687
  br i1 %12, label %16, label %13, !dbg !4688

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #19, !dbg !4689
  %15 = icmp eq i32 %14, 0, !dbg !4689
  br i1 %15, label %16, label %18, !dbg !4690

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4672, metadata !DIExpression()), !dbg !4675
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4691
  call void @llvm.dbg.value(metadata i32 %21, metadata !4674, metadata !DIExpression()), !dbg !4675
  br label %24, !dbg !4692

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !4693
  %20 = load i32, i32* %19, align 4, !dbg !4693, !tbaa !1574
  call void @llvm.dbg.value(metadata i32 %20, metadata !4672, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.value(metadata i32 %20, metadata !4672, metadata !DIExpression()), !dbg !4675
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4691
  call void @llvm.dbg.value(metadata i32 %21, metadata !4674, metadata !DIExpression()), !dbg !4675
  %22 = icmp eq i32 %20, 0, !dbg !4694
  br i1 %22, label %24, label %23, !dbg !4692

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4696, !tbaa !1574
  call void @llvm.dbg.value(metadata i32 -1, metadata !4674, metadata !DIExpression()), !dbg !4675
  br label %24, !dbg !4698

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4675
  ret i32 %25, !dbg !4699
}

; Function Attrs: nofree nounwind
declare !dbg !1302 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1337 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1338 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4700 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4706, metadata !DIExpression()), !dbg !4707
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4708
  br i1 %2, label %6, label %3, !dbg !4710

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4711
  %5 = icmp eq i32 %4, 0, !dbg !4711
  br i1 %5, label %6, label %8, !dbg !4712

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4713
  br label %17, !dbg !4714

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4715, metadata !DIExpression()) #19, !dbg !4720
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4722
  %10 = load i32, i32* %9, align 8, !dbg !4722, !tbaa !4632
  %11 = and i32 %10, 256, !dbg !4724
  %12 = icmp eq i32 %11, 0, !dbg !4724
  br i1 %12, label %15, label %13, !dbg !4725

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #19, !dbg !4726
  br label %15, !dbg !4726

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4727
  br label %17, !dbg !4728

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4707
  ret i32 %18, !dbg !4729
}

; Function Attrs: nofree nounwind
declare !dbg !1345 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4730 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4737, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i64 %1, metadata !4738, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 %2, metadata !4739, metadata !DIExpression()), !dbg !4743
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4744
  %5 = load i8*, i8** %4, align 8, !dbg !4744, !tbaa !4745
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4746
  %7 = load i8*, i8** %6, align 8, !dbg !4746, !tbaa !4747
  %8 = icmp eq i8* %5, %7, !dbg !4748
  br i1 %8, label %9, label %28, !dbg !4749

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4750
  %11 = load i8*, i8** %10, align 8, !dbg !4750, !tbaa !4751
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4752
  %13 = load i8*, i8** %12, align 8, !dbg !4752, !tbaa !4753
  %14 = icmp eq i8* %11, %13, !dbg !4754
  br i1 %14, label %15, label %28, !dbg !4755

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4756
  %17 = load i8*, i8** %16, align 8, !dbg !4756, !tbaa !4757
  %18 = icmp eq i8* %17, null, !dbg !4758
  br i1 %18, label %19, label %28, !dbg !4759

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4760
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #19, !dbg !4761
  call void @llvm.dbg.value(metadata i64 %21, metadata !4740, metadata !DIExpression()), !dbg !4762
  %22 = icmp eq i64 %21, -1, !dbg !4763
  br i1 %22, label %30, label %23, !dbg !4765

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4766
  %25 = load i32, i32* %24, align 8, !dbg !4767, !tbaa !4632
  %26 = and i32 %25, -17, !dbg !4767
  store i32 %26, i32* %24, align 8, !dbg !4767, !tbaa !4632
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4768
  store i64 %21, i64* %27, align 8, !dbg !4769, !tbaa !4770
  br label %30, !dbg !4771

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4772
  br label %30, !dbg !4773

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4743
  ret i32 %31, !dbg !4774
}

; Function Attrs: nofree nounwind
declare !dbg !1421 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #11 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind readonly }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind }
attributes #20 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { cold }

!llvm.dbg.cu = !{!2, !457, !462, !517, !562, !725, !732, !568, !609, !738, !741, !719, !783, !804, !807, !810, !825, !869, !908, !1299, !1342, !1383}
!llvm.ident = !{!1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424, !1424}
!llvm.module.flags = !{!1425, !1426, !1427, !1428, !1429}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 162, type: !437, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !253, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/who.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 208, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !12, line: 32, baseType: !7, size: 32, elements: !13)
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
!25 = !{!26, !36, !97, !101, !105, !108, !111, !118, !30, !87, !133, !137, !142, !146, !150, !191, !194, !197, !202, !205, !209, !213, !214, !65, !217, !219, !224, !244, !249, !160}
!26 = !DISubprogram(name: "dcgettext", scope: !27, file: !27, line: 51, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!27 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !32, !32, !34}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !{}
!36 = !DISubprogram(name: "fputs_unlocked", scope: !37, file: !37, line: 662, type: !38, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!37 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!38 = !DISubroutineType(types: !39)
!39 = !{!34, !32, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !43)
!42 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !59, !60, !61, !62, !66, !68, !70, !74, !77, !79, !82, !85, !86, !88, !92, !93}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !41, file: !42, line: 51, baseType: !34, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !41, file: !42, line: 54, baseType: !30, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !41, file: !42, line: 55, baseType: !30, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !41, file: !42, line: 56, baseType: !30, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !41, file: !42, line: 57, baseType: !30, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !41, file: !42, line: 58, baseType: !30, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !41, file: !42, line: 59, baseType: !30, size: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !41, file: !42, line: 60, baseType: !30, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !41, file: !42, line: 61, baseType: !30, size: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !41, file: !42, line: 64, baseType: !30, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !41, file: !42, line: 65, baseType: !30, size: 64, offset: 640)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !41, file: !42, line: 66, baseType: !30, size: 64, offset: 704)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !41, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !42, line: 36, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !41, file: !42, line: 70, baseType: !40, size: 64, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !41, file: !42, line: 72, baseType: !34, size: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !41, file: !42, line: 73, baseType: !34, size: 32, offset: 928)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !41, file: !42, line: 74, baseType: !63, size: 64, offset: 960)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !64, line: 152, baseType: !65)
!64 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !41, file: !42, line: 77, baseType: !67, size: 16, offset: 1024)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !41, file: !42, line: 78, baseType: !69, size: 8, offset: 1040)
!69 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !41, file: !42, line: 79, baseType: !71, size: 8, offset: 1048)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !41, file: !42, line: 81, baseType: !75, size: 64, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !42, line: 43, baseType: null)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !41, file: !42, line: 89, baseType: !78, size: 64, offset: 1152)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !64, line: 153, baseType: !65)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !41, file: !42, line: 91, baseType: !80, size: 64, offset: 1216)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !42, line: 37, flags: DIFlagFwdDecl)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !41, file: !42, line: 92, baseType: !83, size: 64, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !42, line: 38, flags: DIFlagFwdDecl)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !41, file: !42, line: 93, baseType: !40, size: 64, offset: 1344)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !41, file: !42, line: 94, baseType: !87, size: 64, offset: 1408)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !41, file: !42, line: 95, baseType: !89, size: 64, offset: 1472)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !90, line: 46, baseType: !91)
!90 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!91 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !41, file: !42, line: 96, baseType: !34, size: 32, offset: 1536)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !41, file: !42, line: 98, baseType: !94, size: 160, offset: 1568)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 20)
!97 = !DISubprogram(name: "set_program_name", scope: !98, file: !98, line: 37, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!98 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!99 = !DISubroutineType(types: !100)
!100 = !{null, !32}
!101 = !DISubprogram(name: "setlocale", scope: !102, file: !102, line: 122, type: !103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!102 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!103 = !DISubroutineType(types: !104)
!104 = !{!30, !34, !32}
!105 = !DISubprogram(name: "bindtextdomain", scope: !27, file: !27, line: 86, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!106 = !DISubroutineType(types: !107)
!107 = !{!30, !32, !32}
!108 = !DISubprogram(name: "textdomain", scope: !27, file: !27, line: 82, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!109 = !DISubroutineType(types: !110)
!110 = !{!30, !32}
!111 = !DISubprogram(name: "atexit", scope: !112, file: !112, line: 595, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!112 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!113 = !DISubroutineType(types: !114)
!114 = !{!34, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null}
!118 = !DISubprogram(name: "getopt_long", scope: !119, file: !119, line: 66, type: !120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!119 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!120 = !DISubroutineType(types: !121)
!121 = !{!34, !34, !122, !32, !124, !131}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !119, line: 50, size: 256, elements: !127)
!127 = !{!128, !129, !130, !132}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !126, file: !119, line: 52, baseType: !32, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !126, file: !119, line: 55, baseType: !34, size: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !126, file: !119, line: 56, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !126, file: !119, line: 57, baseType: !34, size: 32, offset: 192)
!133 = !DISubprogram(name: "version_etc", scope: !134, file: !134, line: 69, type: !135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!134 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!135 = !DISubroutineType(types: !136)
!136 = !{null, !40, !32, !32, !32, null}
!137 = !DISubprogram(name: "hard_locale", scope: !138, file: !138, line: 26, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!138 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !34}
!141 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!142 = !DISubprogram(name: "quote", scope: !143, file: !143, line: 44, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!143 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!144 = !DISubroutineType(types: !145)
!145 = !{!32, !32}
!146 = !DISubprogram(name: "error", scope: !147, file: !147, line: 52, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!147 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!148 = !DISubroutineType(types: !149)
!149 = !{null, !34, !34, !32, null}
!150 = !DISubprogram(name: "read_utmp", scope: !6, file: !6, line: 215, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!151 = !DISubroutineType(types: !152)
!152 = !{!34, !32, !153, !154, !34}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !157, line: 55, size: 3072, elements: !158)
!157 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "")
!158 = !{!159, !161, !163, !167, !171, !172, !176, !181, !183, !188, !190}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !156, file: !157, line: 57, baseType: !160, size: 16)
!160 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !156, file: !157, line: 58, baseType: !162, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !64, line: 154, baseType: !34)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !156, file: !157, line: 59, baseType: !164, size: 256, offset: 64)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !156, file: !157, line: 61, baseType: !168, size: 32, offset: 320)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 4)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !156, file: !157, line: 63, baseType: !164, size: 256, offset: 352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !156, file: !157, line: 65, baseType: !173, size: 2048, offset: 608)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !156, file: !157, line: 67, baseType: !177, size: 32, offset: 2656)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !157, line: 42, size: 32, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !177, file: !157, line: 45, baseType: !160, size: 16)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !177, file: !157, line: 46, baseType: !160, size: 16, offset: 16)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !156, file: !157, line: 74, baseType: !182, size: 32, offset: 2688)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !64, line: 41, baseType: !34)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !156, file: !157, line: 79, baseType: !184, size: 64, offset: 2720)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !157, line: 75, size: 64, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !184, file: !157, line: 77, baseType: !182, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !184, file: !157, line: 78, baseType: !182, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !156, file: !157, line: 84, baseType: !189, size: 128, offset: 2784)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !169)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !156, file: !157, line: 85, baseType: !94, size: 160, offset: 2912)
!191 = !DISubprogram(name: "quotearg_n_style_colon", scope: !12, file: !12, line: 397, type: !192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!192 = !DISubroutineType(types: !193)
!193 = !{!30, !34, !11, !32}
!194 = !DISubprogram(name: "free", scope: !112, file: !112, line: 565, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !87}
!197 = !DISubprogram(name: "extract_trimmed_name", scope: !6, file: !6, line: 214, type: !198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!198 = !DISubroutineType(types: !199)
!199 = !{!30, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !203, line: 7, baseType: !204)
!203 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !64, line: 160, baseType: !65)
!205 = !DISubprogram(name: "ttyname", scope: !206, file: !206, line: 770, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!206 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!207 = !DISubroutineType(types: !208)
!208 = !{!30, !34}
!209 = !DISubprogram(name: "xmalloc", scope: !210, file: !210, line: 53, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!210 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!211 = !DISubroutineType(types: !212)
!212 = !{!87, !91}
!213 = !DISubprogram(name: "xalloc_die", scope: !210, file: !210, line: 51, type: !116, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !35)
!214 = !DISubprogram(name: "puts", scope: !37, file: !37, line: 632, type: !215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!215 = !DISubroutineType(types: !216)
!216 = !{!34, !32}
!217 = !DISubprogram(name: "canon_host", scope: !218, file: !218, line: 23, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!218 = !DIFile(filename: "./lib/canon-host.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!219 = !DISubprogram(name: "time", scope: !220, file: !220, line: 75, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!220 = !DIFile(filename: "/usr/include/time.h", directory: "")
!221 = !DISubroutineType(types: !222)
!222 = !{!65, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!224 = !DISubprogram(name: "localtime", scope: !220, file: !220, line: 123, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !242}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !229, line: 7, size: 448, elements: !230)
!229 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "")
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !228, file: !229, line: 9, baseType: !34, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !228, file: !229, line: 10, baseType: !34, size: 32, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !228, file: !229, line: 11, baseType: !34, size: 32, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !228, file: !229, line: 12, baseType: !34, size: 32, offset: 96)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !228, file: !229, line: 13, baseType: !34, size: 32, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !228, file: !229, line: 14, baseType: !34, size: 32, offset: 160)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !228, file: !229, line: 15, baseType: !34, size: 32, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !228, file: !229, line: 16, baseType: !34, size: 32, offset: 224)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !228, file: !229, line: 17, baseType: !34, size: 32, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !228, file: !229, line: 20, baseType: !65, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !228, file: !229, line: 21, baseType: !32, size: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!244 = !DISubprogram(name: "strftime", scope: !220, file: !220, line: 88, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!245 = !DISubroutineType(types: !246)
!246 = !{!91, !30, !91, !32, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!249 = !DISubprogram(name: "imaxtostr", scope: !250, file: !250, line: 42, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!250 = !DIFile(filename: "./lib/inttostr.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!251 = !DISubroutineType(types: !252)
!252 = !{!30, !65, !30}
!253 = !{!254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !0, !288, !320, !388, !390, !401, !406, !418, !428, !430}
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "do_lookup", scope: !2, file: !3, line: 102, type: !141, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "short_list", scope: !2, file: !3, line: 107, type: !141, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "short_output", scope: !2, file: !3, line: 110, type: !141, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "include_idle", scope: !2, file: !3, line: 115, type: !141, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "include_heading", scope: !2, file: !3, line: 118, type: !141, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "include_mesg", scope: !2, file: !3, line: 122, type: !141, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "include_exit", scope: !2, file: !3, line: 125, type: !141, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "need_boottime", scope: !2, file: !3, line: 128, type: !141, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "need_deadprocs", scope: !2, file: !3, line: 131, type: !141, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "need_login", scope: !2, file: !3, line: 134, type: !141, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "need_initspawn", scope: !2, file: !3, line: 137, type: !141, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "need_clockchange", scope: !2, file: !3, line: 140, type: !141, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "need_runlevel", scope: !2, file: !3, line: 143, type: !141, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "need_users", scope: !2, file: !3, line: 146, type: !141, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "my_line_only", scope: !2, file: !3, line: 149, type: !141, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "time_format", scope: !2, file: !3, line: 153, type: !32, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "time_format_width", scope: !2, file: !3, line: 154, type: !34, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "mesg", scope: !290, file: !3, line: 249, type: !317, isLocal: true, isDefinition: true)
!290 = distinct !DISubprogram(name: "print_line", scope: !3, file: !3, line: 244, type: !291, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !293)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !34, !32, !33, !34, !32, !32, !32, !32, !32, !32}
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !309, !313, !314, !315}
!294 = !DILocalVariable(name: "userlen", arg: 1, scope: !290, file: !3, line: 244, type: !34)
!295 = !DILocalVariable(name: "user", arg: 2, scope: !290, file: !3, line: 244, type: !32)
!296 = !DILocalVariable(name: "state", arg: 3, scope: !290, file: !3, line: 244, type: !33)
!297 = !DILocalVariable(name: "linelen", arg: 4, scope: !290, file: !3, line: 245, type: !34)
!298 = !DILocalVariable(name: "line", arg: 5, scope: !290, file: !3, line: 245, type: !32)
!299 = !DILocalVariable(name: "time_str", arg: 6, scope: !290, file: !3, line: 246, type: !32)
!300 = !DILocalVariable(name: "idle", arg: 7, scope: !290, file: !3, line: 246, type: !32)
!301 = !DILocalVariable(name: "pid", arg: 8, scope: !290, file: !3, line: 246, type: !32)
!302 = !DILocalVariable(name: "comment", arg: 9, scope: !290, file: !3, line: 247, type: !32)
!303 = !DILocalVariable(name: "exitstr", arg: 10, scope: !290, file: !3, line: 247, type: !32)
!304 = !DILocalVariable(name: "buf", scope: !290, file: !3, line: 250, type: !30)
!305 = !DILocalVariable(name: "x_idle", scope: !290, file: !3, line: 251, type: !306)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 8)
!309 = !DILocalVariable(name: "x_pid", scope: !290, file: !3, line: 252, type: !310)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 104, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 13)
!313 = !DILocalVariable(name: "x_exitstr", scope: !290, file: !3, line: 253, type: !30)
!314 = !DILocalVariable(name: "err", scope: !290, file: !3, line: 254, type: !34)
!315 = !DILocalVariable(name: "p", scope: !316, file: !3, line: 303, type: !30)
!316 = distinct !DILexicalBlock(scope: !290, file: !3, line: 301, column: 3)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 3)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "hoststr", scope: !322, file: !3, line: 339, type: !30, isLocal: true, isDefinition: true)
!322 = distinct !DISubprogram(name: "print_user", scope: !3, file: !3, line: 333, type: !323, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !328)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !325, !202}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !156)
!328 = !{!329, !330, !331, !365, !366, !367, !371, !375, !376, !380, !386, !387}
!329 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !322, file: !3, line: 333, type: !325)
!330 = !DILocalVariable(name: "boottime", arg: 2, scope: !322, file: !3, line: 333, type: !202)
!331 = !DILocalVariable(name: "stats", scope: !322, file: !3, line: 335, type: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !333, line: 46, size: 1152, elements: !334)
!333 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!334 = !{!335, !337, !339, !341, !343, !345, !347, !348, !349, !350, !352, !354, !361, !362, !363}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !332, file: !333, line: 48, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !64, line: 145, baseType: !91)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !332, file: !333, line: 53, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !64, line: 148, baseType: !91)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !332, file: !333, line: 61, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !64, line: 151, baseType: !91)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !332, file: !333, line: 62, baseType: !342, size: 32, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !64, line: 150, baseType: !7)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !332, file: !333, line: 64, baseType: !344, size: 32, offset: 224)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !64, line: 146, baseType: !7)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !332, file: !333, line: 65, baseType: !346, size: 32, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !64, line: 147, baseType: !7)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !332, file: !333, line: 67, baseType: !34, size: 32, offset: 288)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !332, file: !333, line: 69, baseType: !336, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !332, file: !333, line: 74, baseType: !63, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !332, file: !333, line: 78, baseType: !351, size: 64, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !64, line: 174, baseType: !65)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !332, file: !333, line: 80, baseType: !353, size: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !64, line: 179, baseType: !65)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !332, file: !333, line: 91, baseType: !355, size: 128, offset: 576)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !356, line: 10, size: 128, elements: !357)
!356 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !355, file: !356, line: 12, baseType: !204, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !355, file: !356, line: 16, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !64, line: 196, baseType: !65)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !332, file: !333, line: 92, baseType: !355, size: 128, offset: 704)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !332, file: !333, line: 93, baseType: !355, size: 128, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !332, file: !333, line: 106, baseType: !364, size: 192, offset: 960)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 192, elements: !318)
!365 = !DILocalVariable(name: "last_change", scope: !322, file: !3, line: 336, type: !202)
!366 = !DILocalVariable(name: "mesg", scope: !322, file: !3, line: 337, type: !31)
!367 = !DILocalVariable(name: "idlestr", scope: !322, file: !3, line: 338, type: !368)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 56, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 7)
!371 = !DILocalVariable(name: "line", scope: !322, file: !3, line: 347, type: !372)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 304, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 38)
!375 = !DILocalVariable(name: "p", scope: !322, file: !3, line: 348, type: !30)
!376 = !DILocalVariable(name: "pidstr", scope: !322, file: !3, line: 349, type: !377)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 96, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 12)
!380 = !DILocalVariable(name: "ut_host", scope: !381, file: !3, line: 377, type: !383)
!381 = distinct !DILexicalBlock(scope: !382, file: !3, line: 376, column: 5)
!382 = distinct !DILexicalBlock(scope: !322, file: !3, line: 375, column: 7)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2056, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 257)
!386 = !DILocalVariable(name: "host", scope: !381, file: !3, line: 378, type: !30)
!387 = !DILocalVariable(name: "display", scope: !381, file: !3, line: 379, type: !30)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "hostlen", scope: !322, file: !3, line: 341, type: !89, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "now", scope: !392, file: !3, line: 190, type: !202, isLocal: true, isDefinition: true)
!392 = distinct !DISubprogram(name: "idle_string", scope: !3, file: !3, line: 188, type: !393, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !395)
!393 = !DISubroutineType(types: !394)
!394 = !{!32, !202, !202}
!395 = !{!396, !397, !398}
!396 = !DILocalVariable(name: "when", arg: 1, scope: !392, file: !3, line: 188, type: !202)
!397 = !DILocalVariable(name: "boottime", arg: 2, scope: !392, file: !3, line: 188, type: !202)
!398 = !DILocalVariable(name: "seconds_idle", scope: !399, file: !3, line: 197, type: !34)
!399 = distinct !DILexicalBlock(scope: !400, file: !3, line: 196, column: 5)
!400 = distinct !DILexicalBlock(scope: !392, file: !3, line: 195, column: 7)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "idle_hhmm", scope: !392, file: !3, line: 202, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 48, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 6)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "buf", scope: !408, file: !3, line: 220, type: !415, isLocal: true, isDefinition: true)
!408 = distinct !DISubprogram(name: "time_string", scope: !3, file: !3, line: 218, type: !409, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{!32, !325}
!411 = !{!412, !413, !414}
!412 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !408, file: !3, line: 218, type: !325)
!413 = !DILocalVariable(name: "t", scope: !408, file: !3, line: 228, type: !202)
!414 = !DILocalVariable(name: "tmp", scope: !408, file: !3, line: 229, type: !227)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 264, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 33)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "runlevline", scope: !420, file: !3, line: 516, type: !30, isLocal: true, isDefinition: true)
!420 = distinct !DISubprogram(name: "print_runlevel", scope: !3, file: !3, line: 514, type: !421, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !325}
!423 = !{!424, !425, !427}
!424 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !420, file: !3, line: 514, type: !325)
!425 = !DILocalVariable(name: "last", scope: !420, file: !3, line: 517, type: !426)
!426 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!427 = !DILocalVariable(name: "curr", scope: !420, file: !3, line: 518, type: !426)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(name: "comment", scope: !420, file: !3, line: 516, type: !30, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "exitstr", scope: !432, file: !3, line: 461, type: !30, isLocal: true, isDefinition: true)
!432 = distinct !DISubprogram(name: "print_deadprocs", scope: !3, file: !3, line: 459, type: !421, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!433 = !{!434, !435, !436}
!434 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !432, file: !3, line: 459, type: !325)
!435 = !DILocalVariable(name: "comment", scope: !432, file: !3, line: 462, type: !30)
!436 = !DILocalVariable(name: "pidstr", scope: !432, file: !3, line: 463, type: !377)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 4608, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 18)
!440 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!441 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!442 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!443 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!444 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!445 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!446 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!447 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!448 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!449 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!450 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!451 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!452 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!453 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!454 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "Version", scope: !457, file: !458, line: 2, type: !32, isLocal: false, isDefinition: true)
!457 = distinct !DICompileUnit(language: DW_LANG_C99, file: !458, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, globals: !459, splitDebugInlining: false, nameTableKind: None)
!458 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!459 = !{!455}
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(name: "last_cherror", scope: !462, file: !463, line: 28, type: !34, isLocal: true, isDefinition: true)
!462 = distinct !DICompileUnit(language: DW_LANG_C99, file: !463, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !464, globals: !505, splitDebugInlining: false, nameTableKind: None)
!463 = !DIFile(filename: "lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!464 = !{!465, !468, !499, !502}
!465 = !DISubprogram(name: "canon_host_r", scope: !218, file: !218, line: 24, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!466 = !DISubroutineType(types: !467)
!467 = !{!30, !32, !131}
!468 = !DISubprogram(name: "getaddrinfo", scope: !469, file: !469, line: 660, type: !470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!469 = !DIFile(filename: "/usr/include/netdb.h", directory: "")
!470 = !DISubroutineType(types: !471)
!471 = !{!34, !32, !32, !472, !498}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !469, line: 565, size: 384, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !484, !495, !496}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !474, file: !469, line: 567, baseType: !34, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !474, file: !469, line: 568, baseType: !34, size: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !474, file: !469, line: 569, baseType: !34, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !474, file: !469, line: 570, baseType: !34, size: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !474, file: !469, line: 571, baseType: !481, size: 32, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !482, line: 33, baseType: !483)
!482 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "")
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !64, line: 209, baseType: !7)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !474, file: !469, line: 572, baseType: !485, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !482, line: 178, size: 128, elements: !487)
!487 = !{!488, !491}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !486, file: !482, line: 180, baseType: !489, size: 16)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !490, line: 28, baseType: !67)
!490 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "")
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !486, file: !482, line: 181, baseType: !492, size: 112, offset: 16)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 112, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 14)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !474, file: !469, line: 573, baseType: !30, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !474, file: !469, line: 574, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!499 = !DISubprogram(name: "freeaddrinfo", scope: !469, file: !469, line: 666, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !497}
!502 = !DISubprogram(name: "gai_strerror", scope: !469, file: !469, line: 669, type: !503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!503 = !DISubroutineType(types: !504)
!504 = !{!32, !34}
!505 = !{!506, !460}
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "hints", scope: !508, file: !463, line: 64, type: !474, isLocal: true, isDefinition: true)
!508 = distinct !DISubprogram(name: "canon_host_r", scope: !463, file: !463, line: 61, type: !466, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !509)
!509 = !{!510, !511, !512, !513, !514}
!510 = !DILocalVariable(name: "host", arg: 1, scope: !508, file: !463, line: 61, type: !32)
!511 = !DILocalVariable(name: "cherror", arg: 2, scope: !508, file: !463, line: 61, type: !131)
!512 = !DILocalVariable(name: "retval", scope: !508, file: !463, line: 63, type: !30)
!513 = !DILocalVariable(name: "res", scope: !508, file: !463, line: 65, type: !497)
!514 = !DILocalVariable(name: "status", scope: !508, file: !463, line: 66, type: !34)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "file_name", scope: !517, file: !518, line: 46, type: !32, isLocal: true, isDefinition: true)
!517 = distinct !DICompileUnit(language: DW_LANG_C99, file: !518, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !519, globals: !557, splitDebugInlining: false, nameTableKind: None)
!518 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!519 = !{!520, !26, !556, !146}
!520 = !DISubprogram(name: "close_stream", scope: !521, file: !521, line: 2, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!521 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!522 = !DISubroutineType(types: !523)
!523 = !{!34, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !525, file: !42, line: 51, baseType: !34, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !525, file: !42, line: 54, baseType: !30, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !525, file: !42, line: 55, baseType: !30, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !525, file: !42, line: 56, baseType: !30, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !525, file: !42, line: 57, baseType: !30, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !525, file: !42, line: 58, baseType: !30, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !525, file: !42, line: 59, baseType: !30, size: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !525, file: !42, line: 60, baseType: !30, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !525, file: !42, line: 61, baseType: !30, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !525, file: !42, line: 64, baseType: !30, size: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !525, file: !42, line: 65, baseType: !30, size: 64, offset: 640)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !525, file: !42, line: 66, baseType: !30, size: 64, offset: 704)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !525, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !525, file: !42, line: 70, baseType: !524, size: 64, offset: 832)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !525, file: !42, line: 72, baseType: !34, size: 32, offset: 896)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !525, file: !42, line: 73, baseType: !34, size: 32, offset: 928)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !525, file: !42, line: 74, baseType: !63, size: 64, offset: 960)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !525, file: !42, line: 77, baseType: !67, size: 16, offset: 1024)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !525, file: !42, line: 78, baseType: !69, size: 8, offset: 1040)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !525, file: !42, line: 79, baseType: !71, size: 8, offset: 1048)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !525, file: !42, line: 81, baseType: !75, size: 64, offset: 1088)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !525, file: !42, line: 89, baseType: !78, size: 64, offset: 1152)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !525, file: !42, line: 91, baseType: !80, size: 64, offset: 1216)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !525, file: !42, line: 92, baseType: !83, size: 64, offset: 1280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !525, file: !42, line: 93, baseType: !524, size: 64, offset: 1344)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !525, file: !42, line: 94, baseType: !87, size: 64, offset: 1408)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !525, file: !42, line: 95, baseType: !89, size: 64, offset: 1472)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !525, file: !42, line: 96, baseType: !34, size: 32, offset: 1536)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !525, file: !42, line: 98, baseType: !94, size: 160, offset: 1568)
!556 = !DISubprogram(name: "quotearg_colon", scope: !12, file: !12, line: 391, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!557 = !{!515, !558}
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !517, file: !518, line: 56, type: !141, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "exit_failure", scope: !562, file: !563, line: 24, type: !565, isLocal: false, isDefinition: true)
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, globals: !564, splitDebugInlining: false, nameTableKind: None)
!563 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!564 = !{!560}
!565 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "program_name", scope: !568, file: !569, line: 33, type: !32, isLocal: false, isDefinition: true)
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !570, globals: !606, splitDebugInlining: false, nameTableKind: None)
!569 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!570 = !{!87, !571, !30}
!571 = !DISubprogram(name: "fputs", scope: !37, file: !37, line: 626, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!572 = !DISubroutineType(types: !573)
!573 = !{!34, !32, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !575, file: !42, line: 51, baseType: !34, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !575, file: !42, line: 54, baseType: !30, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !575, file: !42, line: 55, baseType: !30, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !575, file: !42, line: 56, baseType: !30, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !575, file: !42, line: 57, baseType: !30, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !575, file: !42, line: 58, baseType: !30, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !575, file: !42, line: 59, baseType: !30, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !575, file: !42, line: 60, baseType: !30, size: 64, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !575, file: !42, line: 61, baseType: !30, size: 64, offset: 512)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !575, file: !42, line: 64, baseType: !30, size: 64, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !575, file: !42, line: 65, baseType: !30, size: 64, offset: 640)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !575, file: !42, line: 66, baseType: !30, size: 64, offset: 704)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !575, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !575, file: !42, line: 70, baseType: !574, size: 64, offset: 832)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !575, file: !42, line: 72, baseType: !34, size: 32, offset: 896)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !575, file: !42, line: 73, baseType: !34, size: 32, offset: 928)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !575, file: !42, line: 74, baseType: !63, size: 64, offset: 960)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !575, file: !42, line: 77, baseType: !67, size: 16, offset: 1024)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !575, file: !42, line: 78, baseType: !69, size: 8, offset: 1040)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !575, file: !42, line: 79, baseType: !71, size: 8, offset: 1048)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !575, file: !42, line: 81, baseType: !75, size: 64, offset: 1088)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !575, file: !42, line: 89, baseType: !78, size: 64, offset: 1152)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !575, file: !42, line: 91, baseType: !80, size: 64, offset: 1216)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !575, file: !42, line: 92, baseType: !83, size: 64, offset: 1280)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !575, file: !42, line: 93, baseType: !574, size: 64, offset: 1344)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !575, file: !42, line: 94, baseType: !87, size: 64, offset: 1408)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !575, file: !42, line: 95, baseType: !89, size: 64, offset: 1472)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !575, file: !42, line: 96, baseType: !34, size: 32, offset: 1536)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !575, file: !42, line: 98, baseType: !94, size: 160, offset: 1568)
!606 = !{!566}
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !609, file: !610, line: 85, type: !713, isLocal: false, isDefinition: true)
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !611, retainedTypes: !632, globals: !689, splitDebugInlining: false, nameTableKind: None)
!610 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!611 = !{!11, !612, !617}
!612 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !12, line: 242, baseType: !7, size: 32, elements: !613)
!613 = !{!614, !615, !616}
!614 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!615 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!616 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!617 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !618, line: 46, baseType: !7, size: 32, elements: !619)
!618 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!620 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!621 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!622 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!623 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!624 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!625 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!626 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!627 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!628 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!629 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!630 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!631 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!632 = !{!633, !638, !194, !651, !34, !67, !654, !89, !668, !672, !26, !678, !682, !30, !209, !213, !686}
!633 = !DISubprogram(name: "xmemdup", scope: !210, file: !210, line: 62, type: !634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!634 = !DISubroutineType(types: !635)
!635 = !{!87, !636, !91}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!638 = !DISubprogram(name: "quotearg_alloc_mem", scope: !12, file: !12, line: 342, type: !639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!639 = !DISubroutineType(types: !640)
!640 = !{!30, !32, !91, !153, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !610, line: 65, size: 448, elements: !644)
!644 = !{!645, !646, !647, !649, !650}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !643, file: !610, line: 68, baseType: !11, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !610, line: 71, baseType: !34, size: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !643, file: !610, line: 75, baseType: !648, size: 256, offset: 64)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !307)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !643, file: !610, line: 78, baseType: !32, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !643, file: !610, line: 81, baseType: !32, size: 64, offset: 384)
!651 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !12, file: !12, line: 408, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!652 = !DISubroutineType(types: !653)
!653 = !{!30, !34, !32, !32, !32, !91}
!654 = !DISubprogram(name: "rpl_mbrtowc", scope: !655, file: !655, line: 717, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!655 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!656 = !DISubroutineType(types: !657)
!657 = !{!91, !131, !32, !91, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !660, line: 13, size: 64, elements: !661)
!660 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !659, file: !660, line: 15, baseType: !34, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !659, file: !660, line: 20, baseType: !664, size: 32, offset: 32)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !659, file: !660, line: 16, size: 32, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !664, file: !660, line: 18, baseType: !7, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !664, file: !660, line: 19, baseType: !168, size: 32)
!668 = !DISubprogram(name: "iswprint", scope: !669, file: !669, line: 120, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!669 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!670 = !DISubroutineType(types: !671)
!671 = !{!34, !7}
!672 = !DISubprogram(name: "mbsinit", scope: !673, file: !673, line: 292, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!673 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!674 = !DISubroutineType(types: !675)
!675 = !{!34, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!678 = !DISubprogram(name: "locale_charset", scope: !679, file: !679, line: 35, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!679 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!680 = !DISubroutineType(types: !681)
!681 = !{!32}
!682 = !DISubprogram(name: "c_strcasecmp", scope: !683, file: !683, line: 42, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!683 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!684 = !DISubroutineType(types: !685)
!685 = !{!34, !32, !32}
!686 = !DISubprogram(name: "xrealloc", scope: !210, file: !210, line: 59, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!687 = !DISubroutineType(types: !688)
!688 = !{!87, !87, !91}
!689 = !{!607, !690, !696, !698, !700, !702, !709, !711}
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !609, file: !610, line: 101, type: !692, isLocal: false, isDefinition: true)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 320, elements: !694)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!694 = !{!695}
!695 = !DISubrange(count: 10)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !609, file: !610, line: 1052, type: !643, isLocal: false, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !609, file: !610, line: 116, type: !643, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(name: "slot0", scope: !609, file: !610, line: 842, type: !173, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(name: "slotvec", scope: !609, file: !610, line: 845, type: !704, isLocal: true, isDefinition: true)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !610, line: 834, size: 128, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !705, file: !610, line: 836, baseType: !89, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !705, file: !610, line: 837, baseType: !30, size: 64, offset: 64)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "nslots", scope: !609, file: !610, line: 843, type: !34, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "slotvec0", scope: !609, file: !610, line: 844, type: !705, isLocal: true, isDefinition: true)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 704, elements: !715)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!715 = !{!716}
!716 = !DISubrange(count: 11)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !719, file: !720, line: 26, type: !722, isLocal: false, isDefinition: true)
!719 = distinct !DICompileUnit(language: DW_LANG_C99, file: !720, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, globals: !721, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!721 = !{!717}
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 376, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 47)
!725 = distinct !DICompileUnit(language: DW_LANG_C99, file: !726, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !727, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!727 = !{!728}
!728 = !DISubprogram(name: "setlocale_null_r", scope: !729, file: !729, line: 64, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!729 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!730 = !DISubroutineType(types: !731)
!731 = !{!34, !34, !30, !91}
!732 = distinct !DICompileUnit(language: DW_LANG_C99, file: !733, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !734, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "lib/imaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !736, line: 101, baseType: !737)
!736 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !64, line: 72, baseType: !65)
!738 = distinct !DICompileUnit(language: DW_LANG_C99, file: !739, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !740, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!740 = !{!87, !101}
!741 = distinct !DICompileUnit(language: DW_LANG_C99, file: !742, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !743, retainedTypes: !747, splitDebugInlining: false, nameTableKind: None)
!742 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!743 = !{!744}
!744 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !742, line: 40, baseType: !7, size: 32, elements: !745)
!745 = !{!746}
!746 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!747 = !{!26, !748, !87}
!748 = !DISubprogram(name: "fputs_unlocked", scope: !37, file: !37, line: 662, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!749 = !DISubroutineType(types: !750)
!750 = !{!34, !32, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !752, file: !42, line: 51, baseType: !34, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !752, file: !42, line: 54, baseType: !30, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !752, file: !42, line: 55, baseType: !30, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !752, file: !42, line: 56, baseType: !30, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !752, file: !42, line: 57, baseType: !30, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !752, file: !42, line: 58, baseType: !30, size: 64, offset: 320)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !752, file: !42, line: 59, baseType: !30, size: 64, offset: 384)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !752, file: !42, line: 60, baseType: !30, size: 64, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !752, file: !42, line: 61, baseType: !30, size: 64, offset: 512)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !752, file: !42, line: 64, baseType: !30, size: 64, offset: 576)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !752, file: !42, line: 65, baseType: !30, size: 64, offset: 640)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !752, file: !42, line: 66, baseType: !30, size: 64, offset: 704)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !752, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !752, file: !42, line: 70, baseType: !751, size: 64, offset: 832)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !752, file: !42, line: 72, baseType: !34, size: 32, offset: 896)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !752, file: !42, line: 73, baseType: !34, size: 32, offset: 928)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !752, file: !42, line: 74, baseType: !63, size: 64, offset: 960)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !752, file: !42, line: 77, baseType: !67, size: 16, offset: 1024)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !752, file: !42, line: 78, baseType: !69, size: 8, offset: 1040)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !752, file: !42, line: 79, baseType: !71, size: 8, offset: 1048)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !752, file: !42, line: 81, baseType: !75, size: 64, offset: 1088)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !752, file: !42, line: 89, baseType: !78, size: 64, offset: 1152)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !752, file: !42, line: 91, baseType: !80, size: 64, offset: 1216)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !752, file: !42, line: 92, baseType: !83, size: 64, offset: 1280)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !752, file: !42, line: 93, baseType: !751, size: 64, offset: 1344)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !752, file: !42, line: 94, baseType: !87, size: 64, offset: 1408)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !752, file: !42, line: 95, baseType: !89, size: 64, offset: 1472)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !752, file: !42, line: 96, baseType: !34, size: 32, offset: 1536)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !752, file: !42, line: 98, baseType: !94, size: 160, offset: 1568)
!783 = distinct !DICompileUnit(language: DW_LANG_C99, file: !784, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !785, retainedTypes: !798, splitDebugInlining: false, nameTableKind: None)
!784 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!785 = !{!786}
!786 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !787, file: !210, line: 186, baseType: !7, size: 32, elements: !796)
!787 = distinct !DISubprogram(name: "x2nrealloc", scope: !210, file: !210, line: 174, type: !788, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !791)
!788 = !DISubroutineType(types: !789)
!789 = !{!87, !87, !790, !89}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!791 = !{!792, !793, !794, !795}
!792 = !DILocalVariable(name: "p", arg: 1, scope: !787, file: !210, line: 174, type: !87)
!793 = !DILocalVariable(name: "pn", arg: 2, scope: !787, file: !210, line: 174, type: !790)
!794 = !DILocalVariable(name: "s", arg: 3, scope: !787, file: !210, line: 174, type: !89)
!795 = !DILocalVariable(name: "n", scope: !787, file: !210, line: 176, type: !89)
!796 = !{!797}
!797 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!798 = !{!89, !213, !209, !686, !30, !194, !87, !799, !802}
!799 = !DISubprogram(name: "xcalloc", scope: !210, file: !210, line: 57, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!800 = !DISubroutineType(types: !801)
!801 = !{!87, !91, !91}
!802 = !DISubprogram(name: "rpl_calloc", scope: !803, file: !803, line: 688, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!803 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!804 = distinct !DICompileUnit(language: DW_LANG_C99, file: !805, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !806, splitDebugInlining: false, nameTableKind: None)
!805 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!806 = !{!26, !146}
!807 = distinct !DICompileUnit(language: DW_LANG_C99, file: !808, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !809, splitDebugInlining: false, nameTableKind: None)
!808 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!809 = !{!87}
!810 = distinct !DICompileUnit(language: DW_LANG_C99, file: !811, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !812, splitDebugInlining: false, nameTableKind: None)
!811 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!812 = !{!813, !89, !137}
!813 = !DISubprogram(name: "mbrtowc", scope: !673, file: !673, line: 296, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!814 = !DISubroutineType(types: !815)
!815 = !{!91, !131, !32, !91, !816}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !660, line: 13, size: 64, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !817, file: !660, line: 15, baseType: !34, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !817, file: !660, line: 20, baseType: !821, size: 32, offset: 32)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !817, file: !660, line: 16, size: 32, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !821, file: !660, line: 18, baseType: !7, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !821, file: !660, line: 19, baseType: !168, size: 32)
!825 = distinct !DICompileUnit(language: DW_LANG_C99, file: !826, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !827, retainedTypes: !835, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!827 = !{!5, !828}
!828 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !829, file: !210, line: 186, baseType: !7, size: 32, elements: !796)
!829 = distinct !DISubprogram(name: "x2nrealloc", scope: !210, file: !210, line: 174, type: !788, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !830)
!830 = !{!831, !832, !833, !834}
!831 = !DILocalVariable(name: "p", arg: 1, scope: !829, file: !210, line: 174, type: !87)
!832 = !DILocalVariable(name: "pn", arg: 2, scope: !829, file: !210, line: 174, type: !790)
!833 = !DILocalVariable(name: "s", arg: 3, scope: !829, file: !210, line: 174, type: !89)
!834 = !DILocalVariable(name: "n", scope: !829, file: !210, line: 176, type: !89)
!835 = !{!209, !30, !836, !838, !839, !87, !864, !865, !89, !213, !686}
!836 = !DISubprogram(name: "utmpxname", scope: !837, file: !837, line: 93, type: !215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!837 = !DIFile(filename: "/usr/include/utmpx.h", directory: "")
!838 = !DISubprogram(name: "setutxent", scope: !837, file: !837, line: 53, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!839 = !DISubprogram(name: "getutxent", scope: !837, file: !837, line: 65, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!840 = !DISubroutineType(types: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !157, line: 55, size: 3072, elements: !844)
!844 = !{!845, !846, !847, !848, !849, !850, !851, !856, !857, !862, !863}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !843, file: !157, line: 57, baseType: !160, size: 16)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !843, file: !157, line: 58, baseType: !162, size: 32, offset: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !843, file: !157, line: 59, baseType: !164, size: 256, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !843, file: !157, line: 61, baseType: !168, size: 32, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !843, file: !157, line: 63, baseType: !164, size: 256, offset: 352)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !843, file: !157, line: 65, baseType: !173, size: 2048, offset: 608)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !843, file: !157, line: 67, baseType: !852, size: 32, offset: 2656)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !157, line: 42, size: 32, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !852, file: !157, line: 45, baseType: !160, size: 16)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !852, file: !157, line: 46, baseType: !160, size: 16, offset: 16)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !843, file: !157, line: 74, baseType: !182, size: 32, offset: 2688)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !843, file: !157, line: 79, baseType: !858, size: 64, offset: 2720)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !843, file: !157, line: 75, size: 64, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !858, file: !157, line: 77, baseType: !182, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !858, file: !157, line: 78, baseType: !182, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !843, file: !157, line: 84, baseType: !189, size: 128, offset: 2784)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !843, file: !157, line: 85, baseType: !94, size: 160, offset: 2912)
!864 = !DISubprogram(name: "endutxent", scope: !837, file: !837, line: 59, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!865 = !DISubprogram(name: "kill", scope: !866, file: !866, line: 112, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!866 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!867 = !DISubroutineType(types: !868)
!868 = !{!34, !34, !34}
!869 = distinct !DICompileUnit(language: DW_LANG_C99, file: !870, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !871, splitDebugInlining: false, nameTableKind: None)
!870 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!871 = !{!872}
!872 = !DISubprogram(name: "rpl_fclose", scope: !873, file: !873, line: 672, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!873 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!874 = !DISubroutineType(types: !875)
!875 = !{!34, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !877, file: !42, line: 51, baseType: !34, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !877, file: !42, line: 54, baseType: !30, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !877, file: !42, line: 55, baseType: !30, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !877, file: !42, line: 56, baseType: !30, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !877, file: !42, line: 57, baseType: !30, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !877, file: !42, line: 58, baseType: !30, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !877, file: !42, line: 59, baseType: !30, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !877, file: !42, line: 60, baseType: !30, size: 64, offset: 448)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !877, file: !42, line: 61, baseType: !30, size: 64, offset: 512)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !877, file: !42, line: 64, baseType: !30, size: 64, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !877, file: !42, line: 65, baseType: !30, size: 64, offset: 640)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !877, file: !42, line: 66, baseType: !30, size: 64, offset: 704)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !877, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !877, file: !42, line: 70, baseType: !876, size: 64, offset: 832)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !877, file: !42, line: 72, baseType: !34, size: 32, offset: 896)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !877, file: !42, line: 73, baseType: !34, size: 32, offset: 928)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !877, file: !42, line: 74, baseType: !63, size: 64, offset: 960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !877, file: !42, line: 77, baseType: !67, size: 16, offset: 1024)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !877, file: !42, line: 78, baseType: !69, size: 8, offset: 1040)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !877, file: !42, line: 79, baseType: !71, size: 8, offset: 1048)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !877, file: !42, line: 81, baseType: !75, size: 64, offset: 1088)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !877, file: !42, line: 89, baseType: !78, size: 64, offset: 1152)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !877, file: !42, line: 91, baseType: !80, size: 64, offset: 1216)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !877, file: !42, line: 92, baseType: !83, size: 64, offset: 1280)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !877, file: !42, line: 93, baseType: !876, size: 64, offset: 1344)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !877, file: !42, line: 94, baseType: !87, size: 64, offset: 1408)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !877, file: !42, line: 95, baseType: !89, size: 64, offset: 1472)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !877, file: !42, line: 96, baseType: !34, size: 32, offset: 1536)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !877, file: !42, line: 98, baseType: !94, size: 160, offset: 1568)
!908 = distinct !DICompileUnit(language: DW_LANG_C99, file: !909, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !910, retainedTypes: !1297, splitDebugInlining: false, nameTableKind: None)
!909 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!910 = !{!911}
!911 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !912, line: 41, baseType: !7, size: 32, elements: !913)
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
!1297 = !{!1298, !87}
!1298 = !DISubprogram(name: "nl_langinfo", scope: !912, file: !912, line: 661, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!1299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1300, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !1301, splitDebugInlining: false, nameTableKind: None)
!1300 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1301 = !{!1302, !1337, !1338, !1341}
!1302 = !DISubprogram(name: "fileno", scope: !37, file: !37, line: 786, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!34, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1306, file: !42, line: 51, baseType: !34, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1306, file: !42, line: 54, baseType: !30, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1306, file: !42, line: 55, baseType: !30, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1306, file: !42, line: 56, baseType: !30, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1306, file: !42, line: 57, baseType: !30, size: 64, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1306, file: !42, line: 58, baseType: !30, size: 64, offset: 320)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1306, file: !42, line: 59, baseType: !30, size: 64, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1306, file: !42, line: 60, baseType: !30, size: 64, offset: 448)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1306, file: !42, line: 61, baseType: !30, size: 64, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1306, file: !42, line: 64, baseType: !30, size: 64, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1306, file: !42, line: 65, baseType: !30, size: 64, offset: 640)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1306, file: !42, line: 66, baseType: !30, size: 64, offset: 704)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1306, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1306, file: !42, line: 70, baseType: !1305, size: 64, offset: 832)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1306, file: !42, line: 72, baseType: !34, size: 32, offset: 896)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1306, file: !42, line: 73, baseType: !34, size: 32, offset: 928)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1306, file: !42, line: 74, baseType: !63, size: 64, offset: 960)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1306, file: !42, line: 77, baseType: !67, size: 16, offset: 1024)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1306, file: !42, line: 78, baseType: !69, size: 8, offset: 1040)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1306, file: !42, line: 79, baseType: !71, size: 8, offset: 1048)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1306, file: !42, line: 81, baseType: !75, size: 64, offset: 1088)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1306, file: !42, line: 89, baseType: !78, size: 64, offset: 1152)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1306, file: !42, line: 91, baseType: !80, size: 64, offset: 1216)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1306, file: !42, line: 92, baseType: !83, size: 64, offset: 1280)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1306, file: !42, line: 93, baseType: !1305, size: 64, offset: 1344)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1306, file: !42, line: 94, baseType: !87, size: 64, offset: 1408)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1306, file: !42, line: 95, baseType: !89, size: 64, offset: 1472)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1306, file: !42, line: 96, baseType: !34, size: 32, offset: 1536)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1306, file: !42, line: 98, baseType: !94, size: 160, offset: 1568)
!1337 = !DISubprogram(name: "fclose", scope: !37, file: !37, line: 213, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!1338 = !DISubprogram(name: "lseek", scope: !206, file: !206, line: 334, type: !1339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!65, !34, !65, !34}
!1341 = !DISubprogram(name: "rpl_fflush", scope: !873, file: !873, line: 718, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!1342 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1343, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !1344, splitDebugInlining: false, nameTableKind: None)
!1343 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1344 = !{!87, !1345, !1380}
!1345 = !DISubprogram(name: "fflush", scope: !37, file: !37, line: 218, type: !1346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!34, !1348}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1349, file: !42, line: 51, baseType: !34, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1349, file: !42, line: 54, baseType: !30, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1349, file: !42, line: 55, baseType: !30, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1349, file: !42, line: 56, baseType: !30, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1349, file: !42, line: 57, baseType: !30, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1349, file: !42, line: 58, baseType: !30, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1349, file: !42, line: 59, baseType: !30, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1349, file: !42, line: 60, baseType: !30, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1349, file: !42, line: 61, baseType: !30, size: 64, offset: 512)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1349, file: !42, line: 64, baseType: !30, size: 64, offset: 576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1349, file: !42, line: 65, baseType: !30, size: 64, offset: 640)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1349, file: !42, line: 66, baseType: !30, size: 64, offset: 704)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1349, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1349, file: !42, line: 70, baseType: !1348, size: 64, offset: 832)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1349, file: !42, line: 72, baseType: !34, size: 32, offset: 896)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1349, file: !42, line: 73, baseType: !34, size: 32, offset: 928)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1349, file: !42, line: 74, baseType: !63, size: 64, offset: 960)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1349, file: !42, line: 77, baseType: !67, size: 16, offset: 1024)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1349, file: !42, line: 78, baseType: !69, size: 8, offset: 1040)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1349, file: !42, line: 79, baseType: !71, size: 8, offset: 1048)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1349, file: !42, line: 81, baseType: !75, size: 64, offset: 1088)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1349, file: !42, line: 89, baseType: !78, size: 64, offset: 1152)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1349, file: !42, line: 91, baseType: !80, size: 64, offset: 1216)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1349, file: !42, line: 92, baseType: !83, size: 64, offset: 1280)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1349, file: !42, line: 93, baseType: !1348, size: 64, offset: 1344)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1349, file: !42, line: 94, baseType: !87, size: 64, offset: 1408)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1349, file: !42, line: 95, baseType: !89, size: 64, offset: 1472)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1349, file: !42, line: 96, baseType: !34, size: 32, offset: 1536)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1349, file: !42, line: 98, baseType: !94, size: 160, offset: 1568)
!1380 = !DISubprogram(name: "rpl_fseeko", scope: !873, file: !873, line: 1034, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!34, !1348, !65, !34}
!1383 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1384, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !1385, splitDebugInlining: false, nameTableKind: None)
!1384 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1385 = !{!87, !1386, !1338, !1421}
!1386 = !DISubprogram(name: "fileno", scope: !37, file: !37, line: 786, type: !1387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!34, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1390, file: !42, line: 51, baseType: !34, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1390, file: !42, line: 54, baseType: !30, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1390, file: !42, line: 55, baseType: !30, size: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1390, file: !42, line: 56, baseType: !30, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1390, file: !42, line: 57, baseType: !30, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1390, file: !42, line: 58, baseType: !30, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1390, file: !42, line: 59, baseType: !30, size: 64, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1390, file: !42, line: 60, baseType: !30, size: 64, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1390, file: !42, line: 61, baseType: !30, size: 64, offset: 512)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1390, file: !42, line: 64, baseType: !30, size: 64, offset: 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1390, file: !42, line: 65, baseType: !30, size: 64, offset: 640)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1390, file: !42, line: 66, baseType: !30, size: 64, offset: 704)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1390, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1390, file: !42, line: 70, baseType: !1389, size: 64, offset: 832)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1390, file: !42, line: 72, baseType: !34, size: 32, offset: 896)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1390, file: !42, line: 73, baseType: !34, size: 32, offset: 928)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1390, file: !42, line: 74, baseType: !63, size: 64, offset: 960)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1390, file: !42, line: 77, baseType: !67, size: 16, offset: 1024)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1390, file: !42, line: 78, baseType: !69, size: 8, offset: 1040)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1390, file: !42, line: 79, baseType: !71, size: 8, offset: 1048)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1390, file: !42, line: 81, baseType: !75, size: 64, offset: 1088)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1390, file: !42, line: 89, baseType: !78, size: 64, offset: 1152)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1390, file: !42, line: 91, baseType: !80, size: 64, offset: 1216)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1390, file: !42, line: 92, baseType: !83, size: 64, offset: 1280)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1390, file: !42, line: 93, baseType: !1389, size: 64, offset: 1344)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1390, file: !42, line: 94, baseType: !87, size: 64, offset: 1408)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1390, file: !42, line: 95, baseType: !89, size: 64, offset: 1472)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1390, file: !42, line: 96, baseType: !34, size: 32, offset: 1536)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1390, file: !42, line: 98, baseType: !94, size: 160, offset: 1568)
!1421 = !DISubprogram(name: "fseeko", scope: !37, file: !37, line: 707, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !35)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!34, !1389, !65, !34}
!1424 = !{!"clang version 10.0.0 "}
!1425 = !{i32 7, !"Dwarf Version", i32 4}
!1426 = !{i32 2, !"Debug Info Version", i32 3}
!1427 = !{i32 1, !"wchar_size", i32 4}
!1428 = !{i32 7, !"PIC Level", i32 2}
!1429 = !{i32 7, !"PIE Level", i32 2}
!1430 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 638, type: !1431, scopeLine: 639, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !34}
!1433 = !{!1434}
!1434 = !DILocalVariable(name: "status", arg: 1, scope: !1430, file: !3, line: 638, type: !34)
!1435 = !DILocalVariable(name: "infomap", scope: !1436, file: !1437, line: 636, type: !1449)
!1436 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1437, file: !1437, line: 634, type: !99, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1438)
!1437 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1438 = !{!1439, !1435, !1440, !1441, !1448}
!1439 = !DILocalVariable(name: "program", arg: 1, scope: !1436, file: !1437, line: 634, type: !32)
!1440 = !DILocalVariable(name: "node", scope: !1436, file: !1437, line: 646, type: !32)
!1441 = !DILocalVariable(name: "map_prog", scope: !1436, file: !1437, line: 647, type: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1436, file: !1437, line: 636, size: 128, elements: !1445)
!1445 = !{!1446, !1447}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1444, file: !1437, line: 636, baseType: !32, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1444, file: !1437, line: 636, baseType: !32, size: 64, offset: 64)
!1448 = !DILocalVariable(name: "lc_messages", scope: !1436, file: !1437, line: 659, type: !32)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1443, size: 896, elements: !369)
!1450 = !DILocation(line: 636, column: 67, scope: !1436, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 682, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 643, column: 5)
!1453 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 640, column: 7)
!1454 = !DILocation(line: 0, scope: !1430)
!1455 = !DILocation(line: 640, column: 14, scope: !1453)
!1456 = !DILocation(line: 640, column: 7, scope: !1430)
!1457 = !DILocation(line: 641, column: 5, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 641, column: 5)
!1459 = !{!1460, !1460, i64 0}
!1460 = !{!"any pointer", !1461, i64 0}
!1461 = !{!"omnipotent char", !1462, i64 0}
!1462 = !{!"Simple C/C++ TBAA"}
!1463 = !DILocation(line: 644, column: 7, scope: !1452)
!1464 = !DILocation(line: 645, column: 7, scope: !1452)
!1465 = !DILocation(line: 648, column: 7, scope: !1452)
!1466 = !DILocation(line: 655, column: 7, scope: !1452)
!1467 = !DILocation(line: 658, column: 7, scope: !1452)
!1468 = !DILocation(line: 663, column: 7, scope: !1452)
!1469 = !DILocation(line: 669, column: 7, scope: !1452)
!1470 = !DILocation(line: 675, column: 7, scope: !1452)
!1471 = !DILocation(line: 676, column: 7, scope: !1452)
!1472 = !DILocation(line: 677, column: 7, scope: !1452)
!1473 = !DILocation(line: 0, scope: !1436, inlinedAt: !1451)
!1474 = !DILocation(line: 636, column: 3, scope: !1436, inlinedAt: !1451)
!1475 = !DILocation(line: 647, column: 36, scope: !1436, inlinedAt: !1451)
!1476 = !DILocation(line: 649, column: 3, scope: !1436, inlinedAt: !1451)
!1477 = !DILocation(line: 649, column: 33, scope: !1436, inlinedAt: !1451)
!1478 = !DILocation(line: 650, column: 13, scope: !1436, inlinedAt: !1451)
!1479 = !DILocation(line: 649, column: 20, scope: !1436, inlinedAt: !1451)
!1480 = !{!1481, !1460, i64 0}
!1481 = !{!"infomap", !1460, i64 0, !1460, i64 8}
!1482 = !DILocation(line: 649, column: 10, scope: !1436, inlinedAt: !1451)
!1483 = !DILocation(line: 649, column: 28, scope: !1436, inlinedAt: !1451)
!1484 = distinct !{!1484, !1476, !1478}
!1485 = !DILocation(line: 652, column: 17, scope: !1486, inlinedAt: !1451)
!1486 = distinct !DILexicalBlock(scope: !1436, file: !1437, line: 652, column: 7)
!1487 = !{!1481, !1460, i64 8}
!1488 = !DILocation(line: 652, column: 7, scope: !1486, inlinedAt: !1451)
!1489 = !DILocation(line: 652, column: 7, scope: !1436, inlinedAt: !1451)
!1490 = !DILocation(line: 655, column: 3, scope: !1436, inlinedAt: !1451)
!1491 = !DILocation(line: 659, column: 29, scope: !1436, inlinedAt: !1451)
!1492 = !DILocation(line: 660, column: 7, scope: !1493, inlinedAt: !1451)
!1493 = distinct !DILexicalBlock(scope: !1436, file: !1437, line: 660, column: 7)
!1494 = !DILocation(line: 660, column: 19, scope: !1493, inlinedAt: !1451)
!1495 = !DILocation(line: 660, column: 22, scope: !1493, inlinedAt: !1451)
!1496 = !DILocation(line: 660, column: 7, scope: !1436, inlinedAt: !1451)
!1497 = !DILocation(line: 666, column: 7, scope: !1498, inlinedAt: !1451)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !1437, line: 661, column: 5)
!1499 = !DILocation(line: 668, column: 5, scope: !1498, inlinedAt: !1451)
!1500 = !DILocation(line: 669, column: 3, scope: !1436, inlinedAt: !1451)
!1501 = !DILocation(line: 671, column: 3, scope: !1436, inlinedAt: !1451)
!1502 = !DILocation(line: 673, column: 1, scope: !1436, inlinedAt: !1451)
!1503 = !DILocation(line: 684, column: 3, scope: !1430)
!1504 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 688, type: !1505, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1508)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!34, !34, !1507}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1508 = !{!1509, !1510, !1511, !1512}
!1509 = !DILocalVariable(name: "argc", arg: 1, scope: !1504, file: !3, line: 688, type: !34)
!1510 = !DILocalVariable(name: "argv", arg: 2, scope: !1504, file: !3, line: 688, type: !1507)
!1511 = !DILocalVariable(name: "optc", scope: !1504, file: !3, line: 690, type: !34)
!1512 = !DILocalVariable(name: "assumptions", scope: !1504, file: !3, line: 691, type: !141)
!1513 = !DILocation(line: 0, scope: !1504)
!1514 = !DILocation(line: 694, column: 21, scope: !1504)
!1515 = !DILocation(line: 694, column: 3, scope: !1504)
!1516 = !DILocation(line: 695, column: 3, scope: !1504)
!1517 = !DILocation(line: 696, column: 3, scope: !1504)
!1518 = !DILocation(line: 697, column: 3, scope: !1504)
!1519 = !DILocation(line: 699, column: 3, scope: !1504)
!1520 = !DILocation(line: 701, column: 3, scope: !1504)
!1521 = !DILocation(line: 691, column: 8, scope: !1504)
!1522 = !DILocation(line: 701, column: 18, scope: !1504)
!1523 = !DILocation(line: 707, column: 25, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 705, column: 9)
!1525 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 703, column: 5)
!1526 = !DILocation(line: 708, column: 26, scope: !1524)
!1527 = !DILocation(line: 709, column: 22, scope: !1524)
!1528 = !DILocation(line: 710, column: 26, scope: !1524)
!1529 = !DILocation(line: 711, column: 25, scope: !1524)
!1530 = !DILocation(line: 712, column: 28, scope: !1524)
!1531 = !DILocation(line: 713, column: 22, scope: !1524)
!1532 = !DILocation(line: 714, column: 24, scope: !1524)
!1533 = !DILocation(line: 715, column: 24, scope: !1524)
!1534 = !DILocation(line: 718, column: 11, scope: !1524)
!1535 = !DILocation(line: 726, column: 26, scope: !1524)
!1536 = !DILocation(line: 727, column: 24, scope: !1524)
!1537 = !DILocation(line: 730, column: 11, scope: !1524)
!1538 = !DILocation(line: 734, column: 11, scope: !1524)
!1539 = !DILocation(line: 737, column: 22, scope: !1524)
!1540 = !DILocation(line: 740, column: 11, scope: !1524)
!1541 = !DILocation(line: 744, column: 11, scope: !1524)
!1542 = !DILocation(line: 749, column: 11, scope: !1524)
!1543 = !DILocation(line: 753, column: 11, scope: !1524)
!1544 = !DILocation(line: 756, column: 25, scope: !1524)
!1545 = !DILocation(line: 759, column: 11, scope: !1524)
!1546 = !DILocation(line: 763, column: 11, scope: !1524)
!1547 = !DILocation(line: 768, column: 11, scope: !1524)
!1548 = !DILocation(line: 773, column: 11, scope: !1524)
!1549 = !DILocation(line: 776, column: 22, scope: !1524)
!1550 = !DILocation(line: 779, column: 11, scope: !1524)
!1551 = !DILocation(line: 783, column: 11, scope: !1524)
!1552 = !DILocation(line: 785, column: 9, scope: !1524)
!1553 = !DILocation(line: 787, column: 9, scope: !1524)
!1554 = !DILocation(line: 790, column: 11, scope: !1524)
!1555 = !DILocation(line: 0, scope: !1524)
!1556 = distinct !{!1556, !1520, !1557}
!1557 = !DILocation(line: 792, column: 5, scope: !1504)
!1558 = !DILocation(line: 794, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 794, column: 7)
!1560 = !DILocation(line: 794, column: 7, scope: !1504)
!1561 = !DILocation(line: 796, column: 18, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 795, column: 5)
!1563 = !DILocation(line: 797, column: 20, scope: !1562)
!1564 = !DILocation(line: 798, column: 5, scope: !1562)
!1565 = !DILocation(line: 800, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 800, column: 7)
!1567 = !DILocation(line: 800, column: 7, scope: !1504)
!1568 = !DILocation(line: 802, column: 20, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 801, column: 5)
!1570 = !DILocation(line: 803, column: 5, scope: !1569)
!1571 = !DILocation(line: 805, column: 7, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 805, column: 7)
!1573 = !DILocation(line: 0, scope: !1572)
!1574 = !{!1575, !1575, i64 0}
!1575 = !{!"int", !1461, i64 0}
!1576 = !DILocation(line: 816, column: 18, scope: !1504)
!1577 = !DILocation(line: 816, column: 16, scope: !1504)
!1578 = !DILocation(line: 816, column: 3, scope: !1504)
!1579 = !DILocation(line: 819, column: 20, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 817, column: 5)
!1581 = !DILocation(line: 820, column: 7, scope: !1580)
!1582 = !DILocation(line: 823, column: 7, scope: !1580)
!1583 = !DILocation(line: 824, column: 7, scope: !1580)
!1584 = !DILocation(line: 827, column: 12, scope: !1580)
!1585 = !DILocation(line: 827, column: 7, scope: !1580)
!1586 = !DILocation(line: 828, column: 7, scope: !1580)
!1587 = !DILocation(line: 831, column: 20, scope: !1580)
!1588 = !DILocation(line: 831, column: 55, scope: !1580)
!1589 = !DILocation(line: 831, column: 62, scope: !1580)
!1590 = !DILocation(line: 831, column: 50, scope: !1580)
!1591 = !DILocation(line: 831, column: 43, scope: !1580)
!1592 = !DILocation(line: 831, column: 7, scope: !1580)
!1593 = !DILocation(line: 832, column: 7, scope: !1580)
!1594 = !DILocation(line: 835, column: 3, scope: !1504)
!1595 = distinct !DISubprogram(name: "who", scope: !3, file: !3, line: 621, type: !1596, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !32, !34}
!1598 = !{!1599, !1600, !1601, !1602}
!1599 = !DILocalVariable(name: "filename", arg: 1, scope: !1595, file: !3, line: 621, type: !32)
!1600 = !DILocalVariable(name: "options", arg: 2, scope: !1595, file: !3, line: 621, type: !34)
!1601 = !DILocalVariable(name: "n_users", scope: !1595, file: !3, line: 623, type: !89)
!1602 = !DILocalVariable(name: "utmp_buf", scope: !1595, file: !3, line: 624, type: !1603)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!1604 = !DILocation(line: 335, column: 15, scope: !322, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 593, column: 13, scope: !1606, inlinedAt: !1618)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 592, column: 15)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 591, column: 9)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 588, column: 11)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 587, column: 5)
!1610 = distinct !DISubprogram(name: "scan_entries", scope: !3, file: !3, line: 569, type: !1611, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1613)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !89, !325}
!1613 = !{!1614, !1615, !1616, !1617}
!1614 = !DILocalVariable(name: "n", arg: 1, scope: !1610, file: !3, line: 569, type: !89)
!1615 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !1610, file: !3, line: 569, type: !325)
!1616 = !DILocalVariable(name: "ttyname_b", scope: !1610, file: !3, line: 571, type: !30)
!1617 = !DILocalVariable(name: "boottime", scope: !1610, file: !3, line: 572, type: !202)
!1618 = distinct !DILocation(line: 632, column: 5, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 629, column: 7)
!1620 = !DILocation(line: 338, column: 8, scope: !322, inlinedAt: !1605)
!1621 = !DILocation(line: 347, column: 8, scope: !322, inlinedAt: !1605)
!1622 = !DILocation(line: 349, column: 3, scope: !322, inlinedAt: !1605)
!1623 = !DILocalVariable(name: "pidstr", scope: !1624, file: !3, line: 498, type: !377)
!1624 = distinct !DISubprogram(name: "print_initspawn", scope: !3, file: !3, line: 495, type: !421, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1625)
!1625 = !{!1626, !1627, !1623}
!1626 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1624, file: !3, line: 495, type: !325)
!1627 = !DILocalVariable(name: "comment", scope: !1624, file: !3, line: 497, type: !30)
!1628 = !DILocation(line: 498, column: 3, scope: !1624, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 604, column: 13, scope: !1630, inlinedAt: !1618)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 603, column: 20)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 601, column: 20)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 596, column: 20)
!1633 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 594, column: 20)
!1634 = !DILocalVariable(name: "pidstr", scope: !1635, file: !3, line: 485, type: !377)
!1635 = distinct !DISubprogram(name: "print_login", scope: !3, file: !3, line: 482, type: !421, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1636)
!1636 = !{!1637, !1638, !1634}
!1637 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1635, file: !3, line: 482, type: !325)
!1638 = !DILocalVariable(name: "comment", scope: !1635, file: !3, line: 484, type: !30)
!1639 = !DILocation(line: 485, column: 3, scope: !1635, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 606, column: 13, scope: !1641, inlinedAt: !1618)
!1641 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 605, column: 20)
!1642 = !DILocation(line: 463, column: 3, scope: !432, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 608, column: 13, scope: !1644, inlinedAt: !1618)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 607, column: 20)
!1645 = !DILocation(line: 377, column: 12, scope: !381, inlinedAt: !1605)
!1646 = !DILocation(line: 0, scope: !1595)
!1647 = !DILocation(line: 623, column: 3, scope: !1595)
!1648 = !DILocation(line: 624, column: 3, scope: !1595)
!1649 = !DILocation(line: 626, column: 7, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 626, column: 7)
!1651 = !DILocation(line: 626, column: 58, scope: !1650)
!1652 = !DILocation(line: 626, column: 7, scope: !1595)
!1653 = !DILocation(line: 627, column: 5, scope: !1650)
!1654 = !DILocation(line: 629, column: 7, scope: !1619)
!1655 = !DILocation(line: 0, scope: !1619)
!1656 = !{!1657, !1657, i64 0}
!1657 = !{!"long", !1461, i64 0}
!1658 = !DILocation(line: 629, column: 7, scope: !1595)
!1659 = !DILocalVariable(name: "n", arg: 1, scope: !1660, file: !3, line: 537, type: !89)
!1660 = distinct !DISubprogram(name: "list_entries_who", scope: !3, file: !3, line: 537, type: !1611, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1661)
!1661 = !{!1659, !1662, !1663, !1664, !1665}
!1662 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !1660, file: !3, line: 537, type: !325)
!1663 = !DILocalVariable(name: "entries", scope: !1660, file: !3, line: 539, type: !91)
!1664 = !DILocalVariable(name: "separator", scope: !1660, file: !3, line: 540, type: !32)
!1665 = !DILocalVariable(name: "trimmed_name", scope: !1666, file: !3, line: 546, type: !30)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 545, column: 9)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 544, column: 11)
!1668 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 543, column: 5)
!1669 = !DILocation(line: 0, scope: !1660, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 630, column: 5, scope: !1619)
!1671 = !DILocation(line: 542, column: 3, scope: !1660, inlinedAt: !1670)
!1672 = !DILocation(line: 542, column: 11, scope: !1660, inlinedAt: !1670)
!1673 = !DILocation(line: 544, column: 11, scope: !1667, inlinedAt: !1670)
!1674 = !{!1461, !1461, i64 0}
!1675 = !{!1676, !1677, i64 0}
!1676 = !{!"utmpx", !1677, i64 0, !1575, i64 4, !1461, i64 8, !1461, i64 40, !1461, i64 44, !1461, i64 76, !1678, i64 332, !1575, i64 336, !1679, i64 340, !1461, i64 348, !1461, i64 364}
!1677 = !{!"short", !1461, i64 0}
!1678 = !{!"__exit_status", !1677, i64 0, !1677, i64 2}
!1679 = !{!"", !1575, i64 0, !1575, i64 4}
!1680 = !DILocation(line: 544, column: 11, scope: !1668, inlinedAt: !1670)
!1681 = !DILocation(line: 548, column: 26, scope: !1666, inlinedAt: !1670)
!1682 = !DILocation(line: 0, scope: !1666, inlinedAt: !1670)
!1683 = !DILocation(line: 550, column: 11, scope: !1666, inlinedAt: !1670)
!1684 = !DILocation(line: 551, column: 11, scope: !1666, inlinedAt: !1670)
!1685 = !DILocation(line: 553, column: 18, scope: !1666, inlinedAt: !1670)
!1686 = !DILocation(line: 554, column: 9, scope: !1666, inlinedAt: !1670)
!1687 = !DILocation(line: 555, column: 15, scope: !1668, inlinedAt: !1670)
!1688 = distinct !{!1688, !1671, !1689}
!1689 = !DILocation(line: 556, column: 5, scope: !1660, inlinedAt: !1670)
!1690 = !DILocation(line: 557, column: 3, scope: !1660, inlinedAt: !1670)
!1691 = !DILocation(line: 630, column: 5, scope: !1619)
!1692 = !DILocation(line: 0, scope: !1610, inlinedAt: !1618)
!1693 = !DILocation(line: 574, column: 7, scope: !1694, inlinedAt: !1618)
!1694 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 574, column: 7)
!1695 = !DILocation(line: 574, column: 7, scope: !1610, inlinedAt: !1618)
!1696 = !DILocation(line: 563, column: 19, scope: !1697, inlinedAt: !1698)
!1697 = distinct !DISubprogram(name: "print_heading", scope: !3, file: !3, line: 561, type: !116, scopeLine: 562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !35)
!1698 = distinct !DILocation(line: 575, column: 5, scope: !1694, inlinedAt: !1618)
!1699 = !DILocation(line: 563, column: 39, scope: !1697, inlinedAt: !1698)
!1700 = !DILocation(line: 563, column: 50, scope: !1697, inlinedAt: !1698)
!1701 = !DILocation(line: 563, column: 61, scope: !1697, inlinedAt: !1698)
!1702 = !DILocation(line: 564, column: 15, scope: !1697, inlinedAt: !1698)
!1703 = !DILocation(line: 564, column: 25, scope: !1697, inlinedAt: !1698)
!1704 = !DILocation(line: 564, column: 39, scope: !1697, inlinedAt: !1698)
!1705 = !DILocation(line: 563, column: 3, scope: !1697, inlinedAt: !1698)
!1706 = !DILocation(line: 575, column: 5, scope: !1694, inlinedAt: !1618)
!1707 = !DILocation(line: 577, column: 7, scope: !1708, inlinedAt: !1618)
!1708 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 577, column: 7)
!1709 = !DILocation(line: 577, column: 7, scope: !1610, inlinedAt: !1618)
!1710 = !DILocation(line: 579, column: 19, scope: !1711, inlinedAt: !1618)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 578, column: 5)
!1712 = !DILocation(line: 580, column: 12, scope: !1713, inlinedAt: !1618)
!1713 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 580, column: 11)
!1714 = !DILocation(line: 580, column: 11, scope: !1711, inlinedAt: !1618)
!1715 = !DILocation(line: 582, column: 11, scope: !1716, inlinedAt: !1618)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 582, column: 11)
!1717 = !DILocation(line: 582, column: 64, scope: !1716, inlinedAt: !1618)
!1718 = !DILocation(line: 583, column: 19, scope: !1716, inlinedAt: !1618)
!1719 = !DILocation(line: 582, column: 11, scope: !1711, inlinedAt: !1618)
!1720 = !DILocation(line: 586, column: 3, scope: !1610, inlinedAt: !1618)
!1721 = !DILocation(line: 0, scope: !322, inlinedAt: !1605)
!1722 = !DILocation(line: 0, scope: !1723, inlinedAt: !1732)
!1723 = distinct !DISubprogram(name: "stpcpy", scope: !1724, file: !1724, line: 95, type: !1725, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1729)
!1724 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!30, !1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!1728 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!1729 = !{!1730, !1731}
!1730 = !DILocalVariable(name: "__dest", arg: 1, scope: !1723, file: !1724, line: 95, type: !1727)
!1731 = !DILocalVariable(name: "__src", arg: 2, scope: !1723, file: !1724, line: 95, type: !1728)
!1732 = distinct !DILocation(line: 355, column: 9, scope: !1733, inlinedAt: !1605)
!1733 = distinct !DILexicalBlock(scope: !322, file: !3, line: 354, column: 8)
!1734 = !DILocation(line: 0, scope: !1735, inlinedAt: !1742)
!1735 = distinct !DISubprogram(name: "is_tty_writable", scope: !3, file: !3, line: 317, type: !1736, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1740)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!141, !1738}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!1740 = !{!1741}
!1741 = !DILocalVariable(name: "pstat", arg: 1, scope: !1735, file: !3, line: 317, type: !1738)
!1742 = distinct !DILocation(line: 360, column: 14, scope: !1743, inlinedAt: !1605)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 359, column: 5)
!1744 = distinct !DILexicalBlock(scope: !322, file: !3, line: 358, column: 7)
!1745 = !DILocation(line: 0, scope: !1743, inlinedAt: !1605)
!1746 = !DILocation(line: 0, scope: !381, inlinedAt: !1605)
!1747 = !DILocation(line: 0, scope: !408, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 436, column: 15, scope: !322, inlinedAt: !1605)
!1749 = !DILocation(line: 0, scope: !408, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 477, column: 15, scope: !432, inlinedAt: !1643)
!1751 = !DILocation(line: 0, scope: !408, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 490, column: 15, scope: !1635, inlinedAt: !1640)
!1753 = !DILocation(line: 0, scope: !408, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 501, column: 15, scope: !1624, inlinedAt: !1629)
!1755 = !DILocation(line: 0, scope: !408, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 510, column: 15, scope: !1757, inlinedAt: !1760)
!1757 = distinct !DISubprogram(name: "print_clockchange", scope: !3, file: !3, line: 506, type: !421, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!1758 = !{!1759}
!1759 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1757, file: !3, line: 506, type: !325)
!1760 = distinct !DILocation(line: 602, column: 13, scope: !1631, inlinedAt: !1618)
!1761 = !DILocation(line: 0, scope: !408, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 444, column: 15, scope: !1763, inlinedAt: !1766)
!1763 = distinct !DISubprogram(name: "print_boottime", scope: !3, file: !3, line: 441, type: !421, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1764)
!1764 = !{!1765}
!1765 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1763, file: !3, line: 441, type: !325)
!1766 = distinct !DILocation(line: 597, column: 13, scope: !1632, inlinedAt: !1618)
!1767 = !DILocation(line: 0, scope: !408, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 528, column: 44, scope: !420, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 595, column: 13, scope: !1633, inlinedAt: !1618)
!1770 = !DILocation(line: 586, column: 11, scope: !1610, inlinedAt: !1618)
!1771 = !DILocation(line: 588, column: 12, scope: !1608, inlinedAt: !1618)
!1772 = !DILocation(line: 589, column: 11, scope: !1608, inlinedAt: !1618)
!1773 = !DILocation(line: 589, column: 14, scope: !1608, inlinedAt: !1618)
!1774 = !DILocation(line: 588, column: 11, scope: !1609, inlinedAt: !1618)
!1775 = !DILocation(line: 592, column: 15, scope: !1606, inlinedAt: !1618)
!1776 = !DILocation(line: 592, column: 26, scope: !1606, inlinedAt: !1618)
!1777 = !DILocation(line: 592, column: 29, scope: !1606, inlinedAt: !1618)
!1778 = !DILocation(line: 592, column: 15, scope: !1607, inlinedAt: !1618)
!1779 = !DILocation(line: 335, column: 3, scope: !322, inlinedAt: !1605)
!1780 = !DILocation(line: 338, column: 3, scope: !322, inlinedAt: !1605)
!1781 = !DILocation(line: 347, column: 3, scope: !322, inlinedAt: !1605)
!1782 = !{!1676, !1575, i64 4}
!1783 = !DILocation(line: 354, column: 10, scope: !1733, inlinedAt: !1605)
!1784 = !DILocation(line: 354, column: 8, scope: !322, inlinedAt: !1605)
!1785 = !DILocation(line: 97, column: 10, scope: !1723, inlinedAt: !1732)
!1786 = !DILocalVariable(name: "dest", arg: 1, scope: !1787, file: !1437, line: 741, type: !1727)
!1787 = distinct !DISubprogram(name: "stzncpy", scope: !1437, file: !1437, line: 741, type: !1788, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!30, !1727, !1728, !89}
!1790 = !{!1786, !1791, !1792, !1793}
!1791 = !DILocalVariable(name: "src", arg: 2, scope: !1787, file: !1437, line: 741, type: !1728)
!1792 = !DILocalVariable(name: "len", arg: 3, scope: !1787, file: !1437, line: 741, type: !89)
!1793 = !DILocalVariable(name: "src_end", scope: !1787, file: !1437, line: 743, type: !32)
!1794 = !DILocation(line: 0, scope: !1787, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 356, column: 3, scope: !322, inlinedAt: !1605)
!1796 = !DILocation(line: 744, column: 24, scope: !1787, inlinedAt: !1795)
!1797 = !DILocation(line: 744, column: 3, scope: !1787, inlinedAt: !1795)
!1798 = !DILocation(line: 743, column: 29, scope: !1787, inlinedAt: !1795)
!1799 = !DILocation(line: 745, column: 19, scope: !1787, inlinedAt: !1795)
!1800 = !DILocation(line: 745, column: 10, scope: !1787, inlinedAt: !1795)
!1801 = !DILocation(line: 745, column: 13, scope: !1787, inlinedAt: !1795)
!1802 = !{!1803}
!1803 = distinct !{!1803, !1804, !"stzncpy: argument 0"}
!1804 = distinct !{!1804, !"stzncpy"}
!1805 = !{!1806}
!1806 = distinct !{!1806, !1804, !"stzncpy: argument 1"}
!1807 = !DILocation(line: 744, column: 14, scope: !1787, inlinedAt: !1795)
!1808 = distinct !{!1808, !1797, !1799}
!1809 = !DILocation(line: 744, column: 27, scope: !1787, inlinedAt: !1795)
!1810 = !DILocation(line: 746, column: 9, scope: !1787, inlinedAt: !1795)
!1811 = !DILocalVariable(name: "__path", arg: 1, scope: !1812, file: !1813, line: 453, type: !32)
!1812 = distinct !DISubprogram(name: "stat", scope: !1813, file: !1813, line: 453, type: !1814, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1817)
!1813 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!34, !32, !1816}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!1817 = !{!1811, !1818}
!1818 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1812, file: !1813, line: 453, type: !1816)
!1819 = !DILocation(line: 0, scope: !1812, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 358, column: 7, scope: !1744, inlinedAt: !1605)
!1821 = !DILocation(line: 455, column: 10, scope: !1812, inlinedAt: !1820)
!1822 = !DILocation(line: 358, column: 27, scope: !1744, inlinedAt: !1605)
!1823 = !DILocation(line: 358, column: 7, scope: !322, inlinedAt: !1605)
!1824 = !DILocation(line: 327, column: 17, scope: !1735, inlinedAt: !1742)
!1825 = !{!1826, !1575, i64 24}
!1826 = !{!"stat", !1657, i64 0, !1657, i64 8, !1657, i64 16, !1575, i64 24, !1575, i64 28, !1575, i64 32, !1575, i64 36, !1657, i64 40, !1657, i64 48, !1657, i64 56, !1657, i64 64, !1827, i64 72, !1827, i64 88, !1827, i64 104, !1461, i64 120}
!1827 = !{!"timespec", !1657, i64 0, !1657, i64 8}
!1828 = !DILocation(line: 327, column: 25, scope: !1735, inlinedAt: !1742)
!1829 = !DILocation(line: 327, column: 10, scope: !1735, inlinedAt: !1742)
!1830 = !DILocation(line: 360, column: 14, scope: !1743, inlinedAt: !1605)
!1831 = !DILocation(line: 361, column: 27, scope: !1743, inlinedAt: !1605)
!1832 = !{!1826, !1657, i64 72}
!1833 = !DILocation(line: 369, column: 7, scope: !1834, inlinedAt: !1605)
!1834 = distinct !DILexicalBlock(scope: !322, file: !3, line: 369, column: 7)
!1835 = !DILocation(line: 369, column: 7, scope: !322, inlinedAt: !1605)
!1836 = !DILocation(line: 0, scope: !392, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 370, column: 5, scope: !1834, inlinedAt: !1605)
!1838 = !DILocation(line: 192, column: 7, scope: !1839, inlinedAt: !1837)
!1839 = distinct !DILexicalBlock(scope: !392, file: !3, line: 192, column: 7)
!1840 = !DILocation(line: 192, column: 11, scope: !1839, inlinedAt: !1837)
!1841 = !DILocation(line: 192, column: 7, scope: !392, inlinedAt: !1837)
!1842 = !DILocation(line: 193, column: 5, scope: !1839, inlinedAt: !1837)
!1843 = !DILocation(line: 195, column: 16, scope: !400, inlinedAt: !1837)
!1844 = !DILocation(line: 195, column: 23, scope: !400, inlinedAt: !1837)
!1845 = !DILocation(line: 195, column: 26, scope: !400, inlinedAt: !1837)
!1846 = !DILocation(line: 195, column: 30, scope: !400, inlinedAt: !1837)
!1847 = !DILocation(line: 195, column: 45, scope: !400, inlinedAt: !1837)
!1848 = !DILocation(line: 195, column: 60, scope: !400, inlinedAt: !1837)
!1849 = !DILocation(line: 195, column: 52, scope: !400, inlinedAt: !1837)
!1850 = !DILocation(line: 197, column: 30, scope: !399, inlinedAt: !1837)
!1851 = !DILocation(line: 197, column: 26, scope: !399, inlinedAt: !1837)
!1852 = !DILocation(line: 0, scope: !399, inlinedAt: !1837)
!1853 = !DILocation(line: 198, column: 24, scope: !1854, inlinedAt: !1837)
!1854 = distinct !DILexicalBlock(scope: !399, file: !3, line: 198, column: 11)
!1855 = !DILocation(line: 198, column: 11, scope: !399, inlinedAt: !1837)
!1856 = !DILocation(line: 205, column: 11, scope: !1857, inlinedAt: !1837)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 205, column: 11)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 205, column: 11)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 201, column: 9)
!1860 = !DILocation(line: 205, column: 11, scope: !1858, inlinedAt: !1837)
!1861 = !DILocation(line: 206, column: 11, scope: !1859, inlinedAt: !1837)
!1862 = !DILocation(line: 209, column: 11, scope: !1859, inlinedAt: !1837)
!1863 = !DILocation(line: 213, column: 10, scope: !392, inlinedAt: !1837)
!1864 = !DILocation(line: 213, column: 3, scope: !392, inlinedAt: !1837)
!1865 = !DILocation(line: 370, column: 5, scope: !1834, inlinedAt: !1605)
!1866 = !DILocation(line: 372, column: 5, scope: !1834, inlinedAt: !1605)
!1867 = !DILocation(line: 375, column: 7, scope: !382, inlinedAt: !1605)
!1868 = !DILocation(line: 375, column: 7, scope: !322, inlinedAt: !1605)
!1869 = !DILocation(line: 377, column: 7, scope: !381, inlinedAt: !1605)
!1870 = !DILocation(line: 0, scope: !1787, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 382, column: 7, scope: !381, inlinedAt: !1605)
!1872 = !DILocation(line: 743, column: 29, scope: !1787, inlinedAt: !1871)
!1873 = !DILocation(line: 744, column: 3, scope: !1787, inlinedAt: !1871)
!1874 = !DILocation(line: 745, column: 19, scope: !1787, inlinedAt: !1871)
!1875 = !DILocation(line: 745, column: 10, scope: !1787, inlinedAt: !1871)
!1876 = !DILocation(line: 745, column: 13, scope: !1787, inlinedAt: !1871)
!1877 = !{!1878}
!1878 = distinct !{!1878, !1879, !"stzncpy: argument 0"}
!1879 = distinct !{!1879, !"stzncpy"}
!1880 = !{!1881}
!1881 = distinct !{!1881, !1879, !"stzncpy: argument 1"}
!1882 = !DILocation(line: 744, column: 14, scope: !1787, inlinedAt: !1871)
!1883 = !DILocation(line: 744, column: 24, scope: !1787, inlinedAt: !1871)
!1884 = distinct !{!1884, !1873, !1874}
!1885 = !DILocation(line: 744, column: 27, scope: !1787, inlinedAt: !1871)
!1886 = !DILocation(line: 746, column: 9, scope: !1787, inlinedAt: !1871)
!1887 = !DILocation(line: 385, column: 17, scope: !381, inlinedAt: !1605)
!1888 = !DILocation(line: 386, column: 11, scope: !1889, inlinedAt: !1605)
!1889 = distinct !DILexicalBlock(scope: !381, file: !3, line: 386, column: 11)
!1890 = !DILocation(line: 386, column: 11, scope: !381, inlinedAt: !1605)
!1891 = !DILocation(line: 387, column: 17, scope: !1889, inlinedAt: !1605)
!1892 = !DILocation(line: 387, column: 20, scope: !1889, inlinedAt: !1605)
!1893 = !DILocation(line: 387, column: 9, scope: !1889, inlinedAt: !1605)
!1894 = !DILocation(line: 389, column: 11, scope: !1895, inlinedAt: !1605)
!1895 = distinct !DILexicalBlock(scope: !381, file: !3, line: 389, column: 11)
!1896 = !DILocation(line: 389, column: 20, scope: !1895, inlinedAt: !1605)
!1897 = !DILocation(line: 389, column: 23, scope: !1895, inlinedAt: !1605)
!1898 = !DILocation(line: 389, column: 11, scope: !381, inlinedAt: !1605)
!1899 = !DILocation(line: 392, column: 18, scope: !1900, inlinedAt: !1605)
!1900 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 390, column: 9)
!1901 = !DILocation(line: 393, column: 9, scope: !1900, inlinedAt: !1605)
!1902 = !DILocation(line: 395, column: 13, scope: !1903, inlinedAt: !1605)
!1903 = distinct !DILexicalBlock(scope: !381, file: !3, line: 395, column: 11)
!1904 = !DILocation(line: 395, column: 11, scope: !381, inlinedAt: !1605)
!1905 = !DILocation(line: 398, column: 11, scope: !1906, inlinedAt: !1605)
!1906 = distinct !DILexicalBlock(scope: !381, file: !3, line: 398, column: 11)
!1907 = !DILocation(line: 0, scope: !1906, inlinedAt: !1605)
!1908 = !DILocation(line: 398, column: 11, scope: !381, inlinedAt: !1605)
!1909 = !DILocation(line: 400, column: 41, scope: !1910, inlinedAt: !1605)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 400, column: 15)
!1911 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 399, column: 9)
!1912 = !DILocation(line: 400, column: 39, scope: !1910, inlinedAt: !1605)
!1913 = !DILocation(line: 400, column: 58, scope: !1910, inlinedAt: !1605)
!1914 = !DILocation(line: 400, column: 23, scope: !1910, inlinedAt: !1605)
!1915 = !DILocation(line: 400, column: 15, scope: !1911, inlinedAt: !1605)
!1916 = !DILocation(line: 406, column: 11, scope: !1911, inlinedAt: !1605)
!1917 = !DILocation(line: 402, column: 23, scope: !1918, inlinedAt: !1605)
!1918 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 401, column: 13)
!1919 = !DILocation(line: 403, column: 21, scope: !1918, inlinedAt: !1605)
!1920 = !DILocation(line: 403, column: 15, scope: !1918, inlinedAt: !1605)
!1921 = !DILocation(line: 404, column: 34, scope: !1918, inlinedAt: !1605)
!1922 = !DILocation(line: 404, column: 25, scope: !1918, inlinedAt: !1605)
!1923 = !DILocation(line: 404, column: 23, scope: !1918, inlinedAt: !1605)
!1924 = !DILocation(line: 405, column: 13, scope: !1918, inlinedAt: !1605)
!1925 = !DILocation(line: 407, column: 9, scope: !1911, inlinedAt: !1605)
!1926 = !DILocation(line: 410, column: 39, scope: !1927, inlinedAt: !1605)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 410, column: 15)
!1928 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 409, column: 9)
!1929 = !DILocation(line: 410, column: 23, scope: !1927, inlinedAt: !1605)
!1930 = !DILocation(line: 410, column: 15, scope: !1928, inlinedAt: !1605)
!1931 = !DILocation(line: 416, column: 11, scope: !1928, inlinedAt: !1605)
!1932 = !DILocation(line: 412, column: 23, scope: !1933, inlinedAt: !1605)
!1933 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 411, column: 13)
!1934 = !DILocation(line: 413, column: 21, scope: !1933, inlinedAt: !1605)
!1935 = !DILocation(line: 413, column: 15, scope: !1933, inlinedAt: !1605)
!1936 = !DILocation(line: 414, column: 34, scope: !1933, inlinedAt: !1605)
!1937 = !DILocation(line: 414, column: 25, scope: !1933, inlinedAt: !1605)
!1938 = !DILocation(line: 414, column: 23, scope: !1933, inlinedAt: !1605)
!1939 = !DILocation(line: 415, column: 13, scope: !1933, inlinedAt: !1605)
!1940 = !DILocation(line: 419, column: 11, scope: !381, inlinedAt: !1605)
!1941 = !DILocation(line: 420, column: 9, scope: !1942, inlinedAt: !1605)
!1942 = distinct !DILexicalBlock(scope: !381, file: !3, line: 419, column: 11)
!1943 = !DILocation(line: 421, column: 5, scope: !382, inlinedAt: !1605)
!1944 = !DILocation(line: 421, column: 5, scope: !381, inlinedAt: !1605)
!1945 = !DILocation(line: 424, column: 11, scope: !1946, inlinedAt: !1605)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 424, column: 11)
!1947 = distinct !DILexicalBlock(scope: !382, file: !3, line: 423, column: 5)
!1948 = !DILocation(line: 424, column: 19, scope: !1946, inlinedAt: !1605)
!1949 = !DILocation(line: 424, column: 11, scope: !1947, inlinedAt: !1605)
!1950 = !DILocation(line: 430, column: 8, scope: !1947, inlinedAt: !1605)
!1951 = !DILocation(line: 426, column: 19, scope: !1952, inlinedAt: !1605)
!1952 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 425, column: 9)
!1953 = !DILocation(line: 427, column: 17, scope: !1952, inlinedAt: !1605)
!1954 = !DILocation(line: 427, column: 11, scope: !1952, inlinedAt: !1605)
!1955 = !DILocation(line: 428, column: 30, scope: !1952, inlinedAt: !1605)
!1956 = !DILocation(line: 428, column: 21, scope: !1952, inlinedAt: !1605)
!1957 = !DILocation(line: 428, column: 19, scope: !1952, inlinedAt: !1605)
!1958 = !DILocation(line: 429, column: 9, scope: !1952, inlinedAt: !1605)
!1959 = !DILocation(line: 430, column: 16, scope: !1947, inlinedAt: !1605)
!1960 = !DILocation(line: 228, column: 3, scope: !408, inlinedAt: !1748)
!1961 = !DILocation(line: 228, column: 14, scope: !408, inlinedAt: !1748)
!1962 = !{!1676, !1575, i64 340}
!1963 = !DILocation(line: 228, column: 10, scope: !408, inlinedAt: !1748)
!1964 = !DILocation(line: 229, column: 20, scope: !408, inlinedAt: !1748)
!1965 = !DILocation(line: 231, column: 7, scope: !1966, inlinedAt: !1748)
!1966 = distinct !DILexicalBlock(scope: !408, file: !3, line: 231, column: 7)
!1967 = !DILocation(line: 231, column: 7, scope: !408, inlinedAt: !1748)
!1968 = !DILocation(line: 233, column: 34, scope: !1969, inlinedAt: !1748)
!1969 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 232, column: 5)
!1970 = !DILocation(line: 233, column: 7, scope: !1969, inlinedAt: !1748)
!1971 = !DILocation(line: 234, column: 7, scope: !1969, inlinedAt: !1748)
!1972 = !DILocation(line: 237, column: 23, scope: !1966, inlinedAt: !1748)
!1973 = !DILocalVariable(name: "t", arg: 1, scope: !1974, file: !1437, line: 690, type: !202)
!1974 = distinct !DISubprogram(name: "timetostr", scope: !1437, file: !1437, line: 690, type: !1975, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!30, !202, !30}
!1977 = !{!1973, !1978}
!1978 = !DILocalVariable(name: "buf", arg: 2, scope: !1974, file: !1437, line: 690, type: !30)
!1979 = !DILocation(line: 0, scope: !1974, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 237, column: 12, scope: !1966, inlinedAt: !1748)
!1981 = !DILocation(line: 693, column: 13, scope: !1974, inlinedAt: !1980)
!1982 = !DILocation(line: 237, column: 5, scope: !1966, inlinedAt: !1748)
!1983 = !DILocation(line: 0, scope: !1966, inlinedAt: !1748)
!1984 = !DILocation(line: 238, column: 1, scope: !408, inlinedAt: !1748)
!1985 = !DILocation(line: 437, column: 15, scope: !322, inlinedAt: !1605)
!1986 = !DILocation(line: 434, column: 3, scope: !322, inlinedAt: !1605)
!1987 = !DILocation(line: 438, column: 1, scope: !322, inlinedAt: !1605)
!1988 = !DILocation(line: 593, column: 13, scope: !1606, inlinedAt: !1618)
!1989 = !DILocation(line: 594, column: 20, scope: !1633, inlinedAt: !1618)
!1990 = !DILocation(line: 594, column: 34, scope: !1633, inlinedAt: !1618)
!1991 = !DILocation(line: 594, column: 37, scope: !1633, inlinedAt: !1618)
!1992 = !DILocation(line: 594, column: 20, scope: !1606, inlinedAt: !1618)
!1993 = !DILocation(line: 0, scope: !420, inlinedAt: !1769)
!1994 = !DILocation(line: 517, column: 24, scope: !420, inlinedAt: !1769)
!1995 = !DILocation(line: 517, column: 42, scope: !420, inlinedAt: !1769)
!1996 = !DILocation(line: 520, column: 8, scope: !1997, inlinedAt: !1769)
!1997 = distinct !DILexicalBlock(scope: !420, file: !3, line: 520, column: 7)
!1998 = !DILocation(line: 520, column: 7, scope: !420, inlinedAt: !1769)
!1999 = !DILocation(line: 521, column: 35, scope: !1997, inlinedAt: !1769)
!2000 = !DILocation(line: 521, column: 27, scope: !1997, inlinedAt: !1769)
!2001 = !DILocation(line: 521, column: 51, scope: !1997, inlinedAt: !1769)
!2002 = !DILocation(line: 521, column: 18, scope: !1997, inlinedAt: !1769)
!2003 = !DILocation(line: 521, column: 16, scope: !1997, inlinedAt: !1769)
!2004 = !DILocation(line: 521, column: 5, scope: !1997, inlinedAt: !1769)
!2005 = !DILocation(line: 522, column: 3, scope: !420, inlinedAt: !1769)
!2006 = !DILocation(line: 524, column: 8, scope: !2007, inlinedAt: !1769)
!2007 = distinct !DILexicalBlock(scope: !420, file: !3, line: 524, column: 7)
!2008 = !DILocation(line: 524, column: 7, scope: !420, inlinedAt: !1769)
!2009 = !DILocation(line: 525, column: 32, scope: !2007, inlinedAt: !1769)
!2010 = !DILocation(line: 525, column: 24, scope: !2007, inlinedAt: !1769)
!2011 = !DILocation(line: 525, column: 44, scope: !2007, inlinedAt: !1769)
!2012 = !DILocation(line: 525, column: 15, scope: !2007, inlinedAt: !1769)
!2013 = !DILocation(line: 525, column: 13, scope: !2007, inlinedAt: !1769)
!2014 = !DILocation(line: 525, column: 5, scope: !2007, inlinedAt: !1769)
!2015 = !DILocation(line: 526, column: 3, scope: !420, inlinedAt: !1769)
!2016 = !DILocation(line: 528, column: 32, scope: !420, inlinedAt: !1769)
!2017 = !DILocation(line: 228, column: 3, scope: !408, inlinedAt: !1768)
!2018 = !DILocation(line: 228, column: 14, scope: !408, inlinedAt: !1768)
!2019 = !DILocation(line: 228, column: 10, scope: !408, inlinedAt: !1768)
!2020 = !DILocation(line: 229, column: 20, scope: !408, inlinedAt: !1768)
!2021 = !DILocation(line: 231, column: 7, scope: !1966, inlinedAt: !1768)
!2022 = !DILocation(line: 231, column: 7, scope: !408, inlinedAt: !1768)
!2023 = !DILocation(line: 233, column: 34, scope: !1969, inlinedAt: !1768)
!2024 = !DILocation(line: 233, column: 7, scope: !1969, inlinedAt: !1768)
!2025 = !DILocation(line: 234, column: 7, scope: !1969, inlinedAt: !1768)
!2026 = !DILocation(line: 237, column: 23, scope: !1966, inlinedAt: !1768)
!2027 = !DILocation(line: 0, scope: !1974, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 237, column: 12, scope: !1966, inlinedAt: !1768)
!2029 = !DILocation(line: 693, column: 13, scope: !1974, inlinedAt: !2028)
!2030 = !DILocation(line: 237, column: 5, scope: !1966, inlinedAt: !1768)
!2031 = !DILocation(line: 0, scope: !1966, inlinedAt: !1768)
!2032 = !DILocation(line: 238, column: 1, scope: !408, inlinedAt: !1768)
!2033 = !DILocalVariable(name: "c", arg: 1, scope: !2034, file: !2035, line: 272, type: !34)
!2034 = distinct !DISubprogram(name: "c_isprint", scope: !2035, file: !2035, line: 272, type: !139, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2036)
!2035 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2036 = !{!2033}
!2037 = !DILocation(line: 0, scope: !2034, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 529, column: 23, scope: !420, inlinedAt: !1769)
!2039 = !DILocation(line: 274, column: 3, scope: !2034, inlinedAt: !2038)
!2040 = !DILocation(line: 529, column: 23, scope: !420, inlinedAt: !1769)
!2041 = !DILocation(line: 528, column: 3, scope: !420, inlinedAt: !1769)
!2042 = !DILocation(line: 595, column: 13, scope: !1633, inlinedAt: !1618)
!2043 = !DILocation(line: 596, column: 20, scope: !1632, inlinedAt: !1618)
!2044 = !DILocation(line: 596, column: 34, scope: !1632, inlinedAt: !1618)
!2045 = !DILocation(line: 596, column: 37, scope: !1632, inlinedAt: !1618)
!2046 = !DILocation(line: 596, column: 20, scope: !1633, inlinedAt: !1618)
!2047 = !DILocation(line: 0, scope: !1763, inlinedAt: !1766)
!2048 = !DILocation(line: 443, column: 32, scope: !1763, inlinedAt: !1766)
!2049 = !DILocation(line: 228, column: 3, scope: !408, inlinedAt: !1762)
!2050 = !DILocation(line: 228, column: 14, scope: !408, inlinedAt: !1762)
!2051 = !DILocation(line: 228, column: 10, scope: !408, inlinedAt: !1762)
!2052 = !DILocation(line: 229, column: 20, scope: !408, inlinedAt: !1762)
!2053 = !DILocation(line: 231, column: 7, scope: !1966, inlinedAt: !1762)
!2054 = !DILocation(line: 231, column: 7, scope: !408, inlinedAt: !1762)
!2055 = !DILocation(line: 233, column: 34, scope: !1969, inlinedAt: !1762)
!2056 = !DILocation(line: 233, column: 7, scope: !1969, inlinedAt: !1762)
!2057 = !DILocation(line: 234, column: 7, scope: !1969, inlinedAt: !1762)
!2058 = !DILocation(line: 237, column: 23, scope: !1966, inlinedAt: !1762)
!2059 = !DILocation(line: 0, scope: !1974, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 237, column: 12, scope: !1966, inlinedAt: !1762)
!2061 = !DILocation(line: 693, column: 13, scope: !1974, inlinedAt: !2060)
!2062 = !DILocation(line: 237, column: 5, scope: !1966, inlinedAt: !1762)
!2063 = !DILocation(line: 0, scope: !1966, inlinedAt: !1762)
!2064 = !DILocation(line: 238, column: 1, scope: !408, inlinedAt: !1762)
!2065 = !DILocation(line: 443, column: 3, scope: !1763, inlinedAt: !1766)
!2066 = !DILocation(line: 597, column: 13, scope: !1632, inlinedAt: !1618)
!2067 = !DILocation(line: 601, column: 20, scope: !1631, inlinedAt: !1618)
!2068 = !DILocation(line: 601, column: 37, scope: !1631, inlinedAt: !1618)
!2069 = !DILocation(line: 601, column: 40, scope: !1631, inlinedAt: !1618)
!2070 = !DILocation(line: 601, column: 20, scope: !1632, inlinedAt: !1618)
!2071 = !DILocation(line: 0, scope: !1757, inlinedAt: !1760)
!2072 = !DILocation(line: 509, column: 32, scope: !1757, inlinedAt: !1760)
!2073 = !DILocation(line: 228, column: 3, scope: !408, inlinedAt: !1756)
!2074 = !DILocation(line: 228, column: 14, scope: !408, inlinedAt: !1756)
!2075 = !DILocation(line: 228, column: 10, scope: !408, inlinedAt: !1756)
!2076 = !DILocation(line: 229, column: 20, scope: !408, inlinedAt: !1756)
!2077 = !DILocation(line: 231, column: 7, scope: !1966, inlinedAt: !1756)
!2078 = !DILocation(line: 231, column: 7, scope: !408, inlinedAt: !1756)
!2079 = !DILocation(line: 233, column: 34, scope: !1969, inlinedAt: !1756)
!2080 = !DILocation(line: 233, column: 7, scope: !1969, inlinedAt: !1756)
!2081 = !DILocation(line: 234, column: 7, scope: !1969, inlinedAt: !1756)
!2082 = !DILocation(line: 237, column: 23, scope: !1966, inlinedAt: !1756)
!2083 = !DILocation(line: 0, scope: !1974, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 237, column: 12, scope: !1966, inlinedAt: !1756)
!2085 = !DILocation(line: 693, column: 13, scope: !1974, inlinedAt: !2084)
!2086 = !DILocation(line: 237, column: 5, scope: !1966, inlinedAt: !1756)
!2087 = !DILocation(line: 0, scope: !1966, inlinedAt: !1756)
!2088 = !DILocation(line: 238, column: 1, scope: !408, inlinedAt: !1756)
!2089 = !DILocation(line: 509, column: 3, scope: !1757, inlinedAt: !1760)
!2090 = !DILocation(line: 602, column: 13, scope: !1631, inlinedAt: !1618)
!2091 = !DILocation(line: 603, column: 20, scope: !1630, inlinedAt: !1618)
!2092 = !DILocation(line: 603, column: 35, scope: !1630, inlinedAt: !1618)
!2093 = !DILocation(line: 603, column: 38, scope: !1630, inlinedAt: !1618)
!2094 = !DILocation(line: 603, column: 20, scope: !1631, inlinedAt: !1618)
!2095 = !DILocation(line: 0, scope: !1624, inlinedAt: !1629)
!2096 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !2097, file: !3, line: 448, type: !325)
!2097 = distinct !DISubprogram(name: "make_id_equals_comment", scope: !3, file: !3, line: 448, type: !2098, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!30, !325}
!2100 = !{!2096, !2101, !2102}
!2101 = !DILocalVariable(name: "utmpsize", scope: !2097, file: !3, line: 450, type: !89)
!2102 = !DILocalVariable(name: "comment", scope: !2097, file: !3, line: 451, type: !30)
!2103 = !DILocation(line: 0, scope: !2097, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 497, column: 19, scope: !1624, inlinedAt: !1629)
!2105 = !DILocation(line: 451, column: 36, scope: !2097, inlinedAt: !2104)
!2106 = !DILocation(line: 451, column: 28, scope: !2097, inlinedAt: !2104)
!2107 = !DILocation(line: 451, column: 57, scope: !2097, inlinedAt: !2104)
!2108 = !DILocation(line: 451, column: 19, scope: !2097, inlinedAt: !2104)
!2109 = !DILocation(line: 453, column: 20, scope: !2097, inlinedAt: !2104)
!2110 = !DILocalVariable(name: "__dest", arg: 1, scope: !2111, file: !1724, line: 88, type: !1727)
!2111 = distinct !DISubprogram(name: "strcpy", scope: !1724, file: !1724, line: 88, type: !1725, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2112)
!2112 = !{!2110, !2113}
!2113 = !DILocalVariable(name: "__src", arg: 2, scope: !2111, file: !1724, line: 88, type: !1728)
!2114 = !DILocation(line: 0, scope: !2111, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 453, column: 3, scope: !2097, inlinedAt: !2104)
!2116 = !DILocation(line: 90, column: 10, scope: !2111, inlinedAt: !2115)
!2117 = !DILocation(line: 454, column: 21, scope: !2097, inlinedAt: !2104)
!2118 = !DILocalVariable(name: "__dest", arg: 1, scope: !2119, file: !1724, line: 133, type: !1727)
!2119 = distinct !DISubprogram(name: "strncat", scope: !1724, file: !1724, line: 133, type: !1788, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2120)
!2120 = !{!2118, !2121, !2122}
!2121 = !DILocalVariable(name: "__src", arg: 2, scope: !2119, file: !1724, line: 133, type: !1728)
!2122 = !DILocalVariable(name: "__len", arg: 3, scope: !2119, file: !1724, line: 133, type: !89)
!2123 = !DILocation(line: 0, scope: !2119, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 454, column: 3, scope: !2097, inlinedAt: !2104)
!2125 = !DILocation(line: 136, column: 10, scope: !2119, inlinedAt: !2124)
!2126 = !DILocation(line: 500, column: 54, scope: !1624, inlinedAt: !1629)
!2127 = !DILocation(line: 228, column: 3, scope: !408, inlinedAt: !1754)
!2128 = !DILocation(line: 228, column: 14, scope: !408, inlinedAt: !1754)
!2129 = !DILocation(line: 228, column: 10, scope: !408, inlinedAt: !1754)
!2130 = !DILocation(line: 229, column: 20, scope: !408, inlinedAt: !1754)
!2131 = !DILocation(line: 231, column: 7, scope: !1966, inlinedAt: !1754)
!2132 = !DILocation(line: 231, column: 7, scope: !408, inlinedAt: !1754)
!2133 = !DILocation(line: 233, column: 34, scope: !1969, inlinedAt: !1754)
!2134 = !DILocation(line: 233, column: 7, scope: !1969, inlinedAt: !1754)
!2135 = !DILocation(line: 234, column: 7, scope: !1969, inlinedAt: !1754)
!2136 = !DILocation(line: 237, column: 23, scope: !1966, inlinedAt: !1754)
!2137 = !DILocation(line: 0, scope: !1974, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 237, column: 12, scope: !1966, inlinedAt: !1754)
!2139 = !DILocation(line: 693, column: 13, scope: !1974, inlinedAt: !2138)
!2140 = !DILocation(line: 237, column: 5, scope: !1966, inlinedAt: !1754)
!2141 = !DILocation(line: 0, scope: !1966, inlinedAt: !1754)
!2142 = !DILocation(line: 238, column: 1, scope: !408, inlinedAt: !1754)
!2143 = !DILocation(line: 500, column: 3, scope: !1624, inlinedAt: !1629)
!2144 = !DILocation(line: 502, column: 3, scope: !1624, inlinedAt: !1629)
!2145 = !DILocation(line: 503, column: 1, scope: !1624, inlinedAt: !1629)
!2146 = !DILocation(line: 604, column: 13, scope: !1630, inlinedAt: !1618)
!2147 = !DILocation(line: 605, column: 20, scope: !1641, inlinedAt: !1618)
!2148 = !DILocation(line: 605, column: 31, scope: !1641, inlinedAt: !1618)
!2149 = !DILocation(line: 605, column: 34, scope: !1641, inlinedAt: !1618)
!2150 = !DILocation(line: 605, column: 20, scope: !1630, inlinedAt: !1618)
!2151 = !DILocation(line: 0, scope: !1635, inlinedAt: !1640)
!2152 = !DILocation(line: 0, scope: !2097, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 484, column: 19, scope: !1635, inlinedAt: !1640)
!2154 = !DILocation(line: 451, column: 36, scope: !2097, inlinedAt: !2153)
!2155 = !DILocation(line: 451, column: 28, scope: !2097, inlinedAt: !2153)
!2156 = !DILocation(line: 451, column: 57, scope: !2097, inlinedAt: !2153)
!2157 = !DILocation(line: 451, column: 19, scope: !2097, inlinedAt: !2153)
!2158 = !DILocation(line: 453, column: 20, scope: !2097, inlinedAt: !2153)
!2159 = !DILocation(line: 0, scope: !2111, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 453, column: 3, scope: !2097, inlinedAt: !2153)
!2161 = !DILocation(line: 90, column: 10, scope: !2111, inlinedAt: !2160)
!2162 = !DILocation(line: 454, column: 21, scope: !2097, inlinedAt: !2153)
!2163 = !DILocation(line: 0, scope: !2119, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 454, column: 3, scope: !2097, inlinedAt: !2153)
!2165 = !DILocation(line: 136, column: 10, scope: !2119, inlinedAt: !2164)
!2166 = !DILocation(line: 489, column: 19, scope: !1635, inlinedAt: !1640)
!2167 = !DILocation(line: 489, column: 62, scope: !1635, inlinedAt: !1640)
!2168 = !DILocation(line: 228, column: 3, scope: !408, inlinedAt: !1752)
!2169 = !DILocation(line: 228, column: 14, scope: !408, inlinedAt: !1752)
!2170 = !DILocation(line: 228, column: 10, scope: !408, inlinedAt: !1752)
!2171 = !DILocation(line: 229, column: 20, scope: !408, inlinedAt: !1752)
!2172 = !DILocation(line: 231, column: 7, scope: !1966, inlinedAt: !1752)
!2173 = !DILocation(line: 231, column: 7, scope: !408, inlinedAt: !1752)
!2174 = !DILocation(line: 233, column: 34, scope: !1969, inlinedAt: !1752)
!2175 = !DILocation(line: 233, column: 7, scope: !1969, inlinedAt: !1752)
!2176 = !DILocation(line: 234, column: 7, scope: !1969, inlinedAt: !1752)
!2177 = !DILocation(line: 237, column: 23, scope: !1966, inlinedAt: !1752)
!2178 = !DILocation(line: 0, scope: !1974, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 237, column: 12, scope: !1966, inlinedAt: !1752)
!2180 = !DILocation(line: 693, column: 13, scope: !1974, inlinedAt: !2179)
!2181 = !DILocation(line: 237, column: 5, scope: !1966, inlinedAt: !1752)
!2182 = !DILocation(line: 0, scope: !1966, inlinedAt: !1752)
!2183 = !DILocation(line: 238, column: 1, scope: !408, inlinedAt: !1752)
!2184 = !DILocation(line: 489, column: 3, scope: !1635, inlinedAt: !1640)
!2185 = !DILocation(line: 491, column: 3, scope: !1635, inlinedAt: !1640)
!2186 = !DILocation(line: 492, column: 1, scope: !1635, inlinedAt: !1640)
!2187 = !DILocation(line: 606, column: 13, scope: !1641, inlinedAt: !1618)
!2188 = !DILocation(line: 607, column: 20, scope: !1644, inlinedAt: !1618)
!2189 = !DILocation(line: 607, column: 35, scope: !1644, inlinedAt: !1618)
!2190 = !DILocation(line: 607, column: 38, scope: !1644, inlinedAt: !1618)
!2191 = !DILocation(line: 607, column: 20, scope: !1641, inlinedAt: !1618)
!2192 = !DILocation(line: 0, scope: !432, inlinedAt: !1643)
!2193 = !DILocation(line: 0, scope: !2097, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 462, column: 19, scope: !432, inlinedAt: !1643)
!2195 = !DILocation(line: 451, column: 36, scope: !2097, inlinedAt: !2194)
!2196 = !DILocation(line: 451, column: 28, scope: !2097, inlinedAt: !2194)
!2197 = !DILocation(line: 451, column: 57, scope: !2097, inlinedAt: !2194)
!2198 = !DILocation(line: 451, column: 19, scope: !2097, inlinedAt: !2194)
!2199 = !DILocation(line: 453, column: 20, scope: !2097, inlinedAt: !2194)
!2200 = !DILocation(line: 0, scope: !2111, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 453, column: 3, scope: !2097, inlinedAt: !2194)
!2202 = !DILocation(line: 90, column: 10, scope: !2111, inlinedAt: !2201)
!2203 = !DILocation(line: 454, column: 21, scope: !2097, inlinedAt: !2194)
!2204 = !DILocation(line: 0, scope: !2119, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 454, column: 3, scope: !2097, inlinedAt: !2194)
!2206 = !DILocation(line: 136, column: 10, scope: !2119, inlinedAt: !2205)
!2207 = !DILocation(line: 465, column: 8, scope: !2208, inlinedAt: !1643)
!2208 = distinct !DILexicalBlock(scope: !432, file: !3, line: 465, column: 7)
!2209 = !DILocation(line: 465, column: 7, scope: !432, inlinedAt: !1643)
!2210 = !DILocation(line: 466, column: 32, scope: !2208, inlinedAt: !1643)
!2211 = !DILocation(line: 466, column: 24, scope: !2208, inlinedAt: !1643)
!2212 = !DILocation(line: 468, column: 34, scope: !2208, inlinedAt: !1643)
!2213 = !DILocation(line: 468, column: 26, scope: !2208, inlinedAt: !1643)
!2214 = !DILocation(line: 468, column: 24, scope: !2208, inlinedAt: !1643)
!2215 = !DILocation(line: 470, column: 24, scope: !2208, inlinedAt: !1643)
!2216 = !DILocation(line: 466, column: 15, scope: !2208, inlinedAt: !1643)
!2217 = !DILocation(line: 466, column: 13, scope: !2208, inlinedAt: !1643)
!2218 = !DILocation(line: 466, column: 5, scope: !2208, inlinedAt: !1643)
!2219 = !DILocation(line: 471, column: 3, scope: !432, inlinedAt: !1643)
!2220 = !{!1676, !1677, i64 332}
!2221 = !{!1676, !1677, i64 334}
!2222 = !DILocation(line: 476, column: 54, scope: !432, inlinedAt: !1643)
!2223 = !DILocation(line: 228, column: 3, scope: !408, inlinedAt: !1750)
!2224 = !DILocation(line: 228, column: 14, scope: !408, inlinedAt: !1750)
!2225 = !DILocation(line: 228, column: 10, scope: !408, inlinedAt: !1750)
!2226 = !DILocation(line: 229, column: 20, scope: !408, inlinedAt: !1750)
!2227 = !DILocation(line: 231, column: 7, scope: !1966, inlinedAt: !1750)
!2228 = !DILocation(line: 231, column: 7, scope: !408, inlinedAt: !1750)
!2229 = !DILocation(line: 233, column: 34, scope: !1969, inlinedAt: !1750)
!2230 = !DILocation(line: 233, column: 7, scope: !1969, inlinedAt: !1750)
!2231 = !DILocation(line: 234, column: 7, scope: !1969, inlinedAt: !1750)
!2232 = !DILocation(line: 237, column: 23, scope: !1966, inlinedAt: !1750)
!2233 = !DILocation(line: 0, scope: !1974, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 237, column: 12, scope: !1966, inlinedAt: !1750)
!2235 = !DILocation(line: 693, column: 13, scope: !1974, inlinedAt: !2234)
!2236 = !DILocation(line: 237, column: 5, scope: !1966, inlinedAt: !1750)
!2237 = !DILocation(line: 0, scope: !1966, inlinedAt: !1750)
!2238 = !DILocation(line: 238, column: 1, scope: !408, inlinedAt: !1750)
!2239 = !DILocation(line: 477, column: 60, scope: !432, inlinedAt: !1643)
!2240 = !DILocation(line: 476, column: 3, scope: !432, inlinedAt: !1643)
!2241 = !DILocation(line: 478, column: 3, scope: !432, inlinedAt: !1643)
!2242 = !DILocation(line: 479, column: 1, scope: !432, inlinedAt: !1643)
!2243 = !DILocation(line: 608, column: 13, scope: !1644, inlinedAt: !1618)
!2244 = !DILocation(line: 611, column: 11, scope: !2245, inlinedAt: !1618)
!2245 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 611, column: 11)
!2246 = !DILocation(line: 611, column: 11, scope: !1609, inlinedAt: !1618)
!2247 = !DILocation(line: 612, column: 20, scope: !2245, inlinedAt: !1618)
!2248 = !DILocation(line: 612, column: 9, scope: !2245, inlinedAt: !1618)
!2249 = !DILocation(line: 614, column: 15, scope: !1609, inlinedAt: !1618)
!2250 = distinct !{!2250, !1720, !2251}
!2251 = !DILocation(line: 615, column: 5, scope: !1610, inlinedAt: !1618)
!2252 = !DILocation(line: 634, column: 9, scope: !1595)
!2253 = !DILocation(line: 634, column: 3, scope: !1595)
!2254 = !DILocation(line: 635, column: 1, scope: !1595)
!2255 = !DILocation(line: 0, scope: !290)
!2256 = !DILocation(line: 250, column: 3, scope: !290)
!2257 = !DILocation(line: 251, column: 3, scope: !290)
!2258 = !DILocation(line: 251, column: 8, scope: !290)
!2259 = !DILocation(line: 252, column: 3, scope: !290)
!2260 = !DILocation(line: 252, column: 8, scope: !290)
!2261 = !DILocation(line: 256, column: 11, scope: !290)
!2262 = !DILocation(line: 258, column: 7, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !290, file: !3, line: 258, column: 7)
!2264 = !DILocation(line: 258, column: 20, scope: !2263)
!2265 = !DILocation(line: 258, column: 24, scope: !2263)
!2266 = !DILocation(line: 258, column: 37, scope: !2263)
!2267 = !DILocation(line: 258, column: 40, scope: !2263)
!2268 = !DILocation(line: 258, column: 54, scope: !2263)
!2269 = !DILocation(line: 258, column: 7, scope: !290)
!2270 = !DILocation(line: 259, column: 5, scope: !2263)
!2271 = !DILocation(line: 261, column: 13, scope: !2263)
!2272 = !DILocation(line: 263, column: 8, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !290, file: !3, line: 263, column: 7)
!2274 = !DILocation(line: 263, column: 21, scope: !2273)
!2275 = !DILocation(line: 263, column: 24, scope: !2273)
!2276 = !DILocation(line: 263, column: 37, scope: !2273)
!2277 = !DILocation(line: 263, column: 7, scope: !290)
!2278 = !DILocation(line: 264, column: 5, scope: !2273)
!2279 = !DILocation(line: 266, column: 12, scope: !2273)
!2280 = !DILocation(line: 268, column: 24, scope: !290)
!2281 = !DILocation(line: 268, column: 43, scope: !290)
!2282 = !DILocation(line: 268, column: 15, scope: !290)
!2283 = !DILocation(line: 269, column: 7, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !290, file: !3, line: 269, column: 7)
!2285 = !DILocation(line: 269, column: 7, scope: !290)
!2286 = !DILocation(line: 270, column: 5, scope: !2284)
!2287 = !DILocation(line: 272, column: 16, scope: !2284)
!2288 = !DILocation(line: 274, column: 9, scope: !290)
!2289 = !DILocation(line: 298, column: 11, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !290, file: !3, line: 298, column: 7)
!2291 = !DILocation(line: 298, column: 7, scope: !290)
!2292 = !DILocation(line: 299, column: 5, scope: !2290)
!2293 = !DILocation(line: 303, column: 15, scope: !316)
!2294 = !DILocation(line: 303, column: 21, scope: !316)
!2295 = !DILocation(line: 303, column: 19, scope: !316)
!2296 = !DILocation(line: 0, scope: !316)
!2297 = !DILocation(line: 304, column: 5, scope: !316)
!2298 = !DILocation(line: 304, column: 13, scope: !316)
!2299 = !DILocation(line: 304, column: 12, scope: !316)
!2300 = !DILocation(line: 304, column: 17, scope: !316)
!2301 = distinct !{!2301, !2297, !2302}
!2302 = !DILocation(line: 305, column: 18, scope: !316)
!2303 = !DILocation(line: 306, column: 14, scope: !316)
!2304 = !DILocation(line: 309, column: 9, scope: !290)
!2305 = !DILocation(line: 309, column: 3, scope: !290)
!2306 = !DILocation(line: 310, column: 9, scope: !290)
!2307 = !DILocation(line: 310, column: 3, scope: !290)
!2308 = !DILocation(line: 311, column: 3, scope: !290)
!2309 = !DILocation(line: 312, column: 1, scope: !290)
!2310 = distinct !DISubprogram(name: "canon_host", scope: !463, file: !463, line: 33, type: !109, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !2311)
!2311 = !{!2312}
!2312 = !DILocalVariable(name: "host", arg: 1, scope: !2310, file: !463, line: 33, type: !32)
!2313 = !DILocation(line: 0, scope: !2310)
!2314 = !DILocation(line: 0, scope: !508, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 35, column: 10, scope: !2310)
!2316 = !DILocation(line: 65, column: 3, scope: !508, inlinedAt: !2315)
!2317 = !DILocation(line: 65, column: 20, scope: !508, inlinedAt: !2315)
!2318 = !DILocation(line: 68, column: 18, scope: !508, inlinedAt: !2315)
!2319 = !{!2320, !1575, i64 0}
!2320 = !{!"addrinfo", !1575, i64 0, !1575, i64 4, !1575, i64 8, !1575, i64 12, !1575, i64 16, !1460, i64 24, !1460, i64 32, !1460, i64 40}
!2321 = !DILocation(line: 69, column: 12, scope: !508, inlinedAt: !2315)
!2322 = !DILocation(line: 70, column: 8, scope: !2323, inlinedAt: !2315)
!2323 = distinct !DILexicalBlock(scope: !508, file: !463, line: 70, column: 7)
!2324 = !DILocation(line: 70, column: 7, scope: !508, inlinedAt: !2315)
!2325 = !DILocation(line: 75, column: 24, scope: !2326, inlinedAt: !2315)
!2326 = distinct !DILexicalBlock(scope: !2323, file: !463, line: 71, column: 5)
!2327 = !DILocation(line: 75, column: 29, scope: !2326, inlinedAt: !2315)
!2328 = !{!2320, !1460, i64 32}
!2329 = !DILocation(line: 75, column: 16, scope: !2326, inlinedAt: !2315)
!2330 = !DILocation(line: 76, column: 12, scope: !2331, inlinedAt: !2315)
!2331 = distinct !DILexicalBlock(scope: !2326, file: !463, line: 76, column: 11)
!2332 = !DILocation(line: 76, column: 19, scope: !2331, inlinedAt: !2315)
!2333 = !DILocation(line: 77, column: 18, scope: !2331, inlinedAt: !2315)
!2334 = !DILocation(line: 77, column: 9, scope: !2331, inlinedAt: !2315)
!2335 = !DILocation(line: 78, column: 21, scope: !2326, inlinedAt: !2315)
!2336 = !DILocation(line: 78, column: 7, scope: !2326, inlinedAt: !2315)
!2337 = !DILocation(line: 79, column: 5, scope: !2326, inlinedAt: !2315)
!2338 = !DILocation(line: 81, column: 14, scope: !2339, inlinedAt: !2315)
!2339 = distinct !DILexicalBlock(scope: !2323, file: !463, line: 80, column: 12)
!2340 = !DILocation(line: 81, column: 5, scope: !2339, inlinedAt: !2315)
!2341 = !DILocation(line: 84, column: 1, scope: !508, inlinedAt: !2315)
!2342 = !DILocation(line: 35, column: 3, scope: !2310)
!2343 = !DILocation(line: 0, scope: !508)
!2344 = !DILocation(line: 65, column: 3, scope: !508)
!2345 = !DILocation(line: 65, column: 20, scope: !508)
!2346 = !DILocation(line: 68, column: 18, scope: !508)
!2347 = !DILocation(line: 69, column: 12, scope: !508)
!2348 = !DILocation(line: 70, column: 8, scope: !2323)
!2349 = !DILocation(line: 70, column: 7, scope: !508)
!2350 = !DILocation(line: 75, column: 24, scope: !2326)
!2351 = !DILocation(line: 75, column: 29, scope: !2326)
!2352 = !DILocation(line: 75, column: 16, scope: !2326)
!2353 = !DILocation(line: 76, column: 12, scope: !2331)
!2354 = !DILocation(line: 76, column: 22, scope: !2331)
!2355 = !DILocation(line: 76, column: 19, scope: !2331)
!2356 = !DILocation(line: 77, column: 18, scope: !2331)
!2357 = !DILocation(line: 77, column: 9, scope: !2331)
!2358 = !DILocation(line: 78, column: 21, scope: !2326)
!2359 = !DILocation(line: 78, column: 7, scope: !2326)
!2360 = !DILocation(line: 79, column: 5, scope: !2326)
!2361 = !DILocation(line: 80, column: 12, scope: !2339)
!2362 = !DILocation(line: 80, column: 12, scope: !2323)
!2363 = !DILocation(line: 81, column: 14, scope: !2339)
!2364 = !DILocation(line: 81, column: 5, scope: !2339)
!2365 = !DILocation(line: 84, column: 1, scope: !508)
!2366 = !DILocation(line: 83, column: 3, scope: !508)
!2367 = distinct !DISubprogram(name: "ch_strerror", scope: !463, file: !463, line: 88, type: !680, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !35)
!2368 = !DILocation(line: 90, column: 24, scope: !2367)
!2369 = !DILocation(line: 90, column: 10, scope: !2367)
!2370 = !DILocation(line: 90, column: 3, scope: !2367)
!2371 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !518, file: !518, line: 51, type: !99, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !2372)
!2372 = !{!2373}
!2373 = !DILocalVariable(name: "file", arg: 1, scope: !2371, file: !518, line: 51, type: !32)
!2374 = !DILocation(line: 0, scope: !2371)
!2375 = !DILocation(line: 53, column: 13, scope: !2371)
!2376 = !DILocation(line: 54, column: 1, scope: !2371)
!2377 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !518, file: !518, line: 88, type: !2378, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{null, !141}
!2380 = !{!2381}
!2381 = !DILocalVariable(name: "ignore", arg: 1, scope: !2377, file: !518, line: 88, type: !141)
!2382 = !DILocation(line: 0, scope: !2377)
!2383 = !DILocation(line: 90, column: 16, scope: !2377)
!2384 = !{!2385, !2385, i64 0}
!2385 = !{!"_Bool", !1461, i64 0}
!2386 = !DILocation(line: 91, column: 1, scope: !2377)
!2387 = distinct !DISubprogram(name: "close_stdout", scope: !518, file: !518, line: 117, type: !116, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !2388)
!2388 = !{!2389}
!2389 = !DILocalVariable(name: "write_error", scope: !2390, file: !518, line: 122, type: !32)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !518, line: 121, column: 5)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !518, line: 119, column: 7)
!2392 = !DILocation(line: 119, column: 21, scope: !2391)
!2393 = !DILocation(line: 119, column: 7, scope: !2391)
!2394 = !DILocation(line: 119, column: 29, scope: !2391)
!2395 = !DILocation(line: 120, column: 7, scope: !2391)
!2396 = !DILocation(line: 120, column: 12, scope: !2391)
!2397 = !{i8 0, i8 2}
!2398 = !DILocation(line: 120, column: 25, scope: !2391)
!2399 = !DILocation(line: 120, column: 28, scope: !2391)
!2400 = !DILocation(line: 120, column: 34, scope: !2391)
!2401 = !DILocation(line: 119, column: 7, scope: !2387)
!2402 = !DILocation(line: 122, column: 33, scope: !2390)
!2403 = !DILocation(line: 0, scope: !2390)
!2404 = !DILocation(line: 123, column: 11, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2390, file: !518, line: 123, column: 11)
!2406 = !DILocation(line: 0, scope: !2405)
!2407 = !DILocation(line: 123, column: 11, scope: !2390)
!2408 = !DILocation(line: 124, column: 36, scope: !2405)
!2409 = !DILocation(line: 124, column: 9, scope: !2405)
!2410 = !DILocation(line: 127, column: 9, scope: !2405)
!2411 = !DILocation(line: 129, column: 14, scope: !2390)
!2412 = !DILocation(line: 129, column: 7, scope: !2390)
!2413 = !DILocation(line: 134, column: 42, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2387, file: !518, line: 134, column: 7)
!2415 = !DILocation(line: 134, column: 28, scope: !2414)
!2416 = !DILocation(line: 134, column: 50, scope: !2414)
!2417 = !DILocation(line: 134, column: 7, scope: !2387)
!2418 = !DILocation(line: 135, column: 12, scope: !2414)
!2419 = !DILocation(line: 135, column: 5, scope: !2414)
!2420 = !DILocation(line: 136, column: 1, scope: !2387)
!2421 = distinct !DISubprogram(name: "hard_locale", scope: !726, file: !726, line: 27, type: !139, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !2422)
!2422 = !{!2423, !2424}
!2423 = !DILocalVariable(name: "category", arg: 1, scope: !2421, file: !726, line: 27, type: !34)
!2424 = !DILocalVariable(name: "locale", scope: !2421, file: !726, line: 29, type: !383)
!2425 = !DILocation(line: 0, scope: !2421)
!2426 = !DILocation(line: 29, column: 3, scope: !2421)
!2427 = !DILocation(line: 29, column: 8, scope: !2421)
!2428 = !DILocation(line: 31, column: 7, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2421, file: !726, line: 31, column: 7)
!2430 = !DILocation(line: 31, column: 7, scope: !2421)
!2431 = !DILocation(line: 34, column: 12, scope: !2421)
!2432 = !DILocation(line: 34, column: 38, scope: !2421)
!2433 = !DILocation(line: 34, column: 41, scope: !2421)
!2434 = !DILocation(line: 34, column: 66, scope: !2421)
!2435 = !DILocation(line: 35, column: 1, scope: !2421)
!2436 = distinct !DISubprogram(name: "imaxtostr", scope: !2437, file: !2437, line: 36, type: !2438, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !2440)
!2437 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!30, !735, !30}
!2440 = !{!2441, !2442, !2443}
!2441 = !DILocalVariable(name: "i", arg: 1, scope: !2436, file: !2437, line: 36, type: !735)
!2442 = !DILocalVariable(name: "buf", arg: 2, scope: !2436, file: !2437, line: 36, type: !30)
!2443 = !DILocalVariable(name: "p", scope: !2436, file: !2437, line: 38, type: !30)
!2444 = !DILocation(line: 0, scope: !2436)
!2445 = !DILocation(line: 38, column: 17, scope: !2436)
!2446 = !DILocation(line: 39, column: 6, scope: !2436)
!2447 = !DILocation(line: 41, column: 9, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2436, file: !2437, line: 41, column: 7)
!2449 = !DILocation(line: 41, column: 7, scope: !2436)
!2450 = !DILocation(line: 44, column: 24, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !2437, line: 42, column: 5)
!2452 = !DILocation(line: 44, column: 16, scope: !2451)
!2453 = !DILocation(line: 44, column: 10, scope: !2451)
!2454 = !DILocation(line: 44, column: 14, scope: !2451)
!2455 = !DILocation(line: 45, column: 17, scope: !2451)
!2456 = !DILocation(line: 45, column: 24, scope: !2451)
!2457 = !DILocation(line: 44, column: 9, scope: !2451)
!2458 = distinct !{!2458, !2459, !2460}
!2459 = !DILocation(line: 43, column: 7, scope: !2451)
!2460 = !DILocation(line: 45, column: 28, scope: !2451)
!2461 = !DILocation(line: 47, column: 8, scope: !2451)
!2462 = !DILocation(line: 47, column: 12, scope: !2451)
!2463 = !DILocation(line: 48, column: 5, scope: !2451)
!2464 = !DILocation(line: 52, column: 24, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2448, file: !2437, line: 50, column: 5)
!2466 = !DILocation(line: 52, column: 16, scope: !2465)
!2467 = !DILocation(line: 52, column: 10, scope: !2465)
!2468 = !DILocation(line: 52, column: 14, scope: !2465)
!2469 = !DILocation(line: 53, column: 17, scope: !2465)
!2470 = !DILocation(line: 53, column: 24, scope: !2465)
!2471 = !DILocation(line: 52, column: 9, scope: !2465)
!2472 = distinct !{!2472, !2473, !2474}
!2473 = !DILocation(line: 51, column: 7, scope: !2465)
!2474 = !DILocation(line: 53, column: 28, scope: !2465)
!2475 = !DILocation(line: 0, scope: !2448)
!2476 = !DILocation(line: 56, column: 3, scope: !2436)
!2477 = distinct !DISubprogram(name: "set_program_name", scope: !569, file: !569, line: 39, type: !99, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2478)
!2478 = !{!2479, !2480, !2481}
!2479 = !DILocalVariable(name: "argv0", arg: 1, scope: !2477, file: !569, line: 39, type: !32)
!2480 = !DILocalVariable(name: "slash", scope: !2477, file: !569, line: 46, type: !32)
!2481 = !DILocalVariable(name: "base", scope: !2477, file: !569, line: 47, type: !32)
!2482 = !DILocation(line: 0, scope: !2477)
!2483 = !DILocation(line: 51, column: 13, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2477, file: !569, line: 51, column: 7)
!2485 = !DILocation(line: 51, column: 7, scope: !2477)
!2486 = !DILocation(line: 55, column: 14, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2484, file: !569, line: 52, column: 5)
!2488 = !DILocation(line: 54, column: 7, scope: !2487)
!2489 = !DILocation(line: 56, column: 7, scope: !2487)
!2490 = !DILocation(line: 59, column: 11, scope: !2477)
!2491 = !DILocation(line: 60, column: 17, scope: !2477)
!2492 = !DILocation(line: 60, column: 11, scope: !2477)
!2493 = !DILocation(line: 61, column: 12, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2477, file: !569, line: 61, column: 7)
!2495 = !DILocation(line: 61, column: 20, scope: !2494)
!2496 = !DILocation(line: 61, column: 25, scope: !2494)
!2497 = !DILocation(line: 61, column: 42, scope: !2494)
!2498 = !DILocation(line: 61, column: 28, scope: !2494)
!2499 = !DILocation(line: 61, column: 61, scope: !2494)
!2500 = !DILocation(line: 61, column: 7, scope: !2477)
!2501 = !DILocation(line: 64, column: 11, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !569, line: 64, column: 11)
!2503 = distinct !DILexicalBlock(scope: !2494, file: !569, line: 62, column: 5)
!2504 = !DILocation(line: 64, column: 36, scope: !2502)
!2505 = !DILocation(line: 64, column: 11, scope: !2503)
!2506 = !DILocation(line: 66, column: 24, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2502, file: !569, line: 65, column: 9)
!2508 = !DILocation(line: 70, column: 41, scope: !2507)
!2509 = !DILocation(line: 72, column: 9, scope: !2507)
!2510 = !DILocation(line: 84, column: 16, scope: !2477)
!2511 = !DILocation(line: 90, column: 27, scope: !2477)
!2512 = !DILocation(line: 92, column: 1, scope: !2477)
!2513 = distinct !DISubprogram(name: "clone_quoting_options", scope: !610, file: !610, line: 122, type: !2514, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2517)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!2516, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!2517 = !{!2518, !2519, !2520}
!2518 = !DILocalVariable(name: "o", arg: 1, scope: !2513, file: !610, line: 122, type: !2516)
!2519 = !DILocalVariable(name: "e", scope: !2513, file: !610, line: 124, type: !34)
!2520 = !DILocalVariable(name: "p", scope: !2513, file: !610, line: 125, type: !2516)
!2521 = !DILocation(line: 0, scope: !2513)
!2522 = !DILocation(line: 124, column: 11, scope: !2513)
!2523 = !DILocation(line: 125, column: 40, scope: !2513)
!2524 = !DILocation(line: 125, column: 31, scope: !2513)
!2525 = !DILocation(line: 127, column: 9, scope: !2513)
!2526 = !DILocation(line: 128, column: 3, scope: !2513)
!2527 = distinct !DISubprogram(name: "get_quoting_style", scope: !610, file: !610, line: 133, type: !2528, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!11, !641}
!2530 = !{!2531}
!2531 = !DILocalVariable(name: "o", arg: 1, scope: !2527, file: !610, line: 133, type: !641)
!2532 = !DILocation(line: 0, scope: !2527)
!2533 = !DILocation(line: 135, column: 11, scope: !2527)
!2534 = !DILocation(line: 135, column: 46, scope: !2527)
!2535 = !{!2536, !1461, i64 0}
!2536 = !{!"quoting_options", !1461, i64 0, !1575, i64 4, !1461, i64 8, !1460, i64 40, !1460, i64 48}
!2537 = !DILocation(line: 135, column: 3, scope: !2527)
!2538 = distinct !DISubprogram(name: "set_quoting_style", scope: !610, file: !610, line: 141, type: !2539, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2541)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{null, !2516, !11}
!2541 = !{!2542, !2543}
!2542 = !DILocalVariable(name: "o", arg: 1, scope: !2538, file: !610, line: 141, type: !2516)
!2543 = !DILocalVariable(name: "s", arg: 2, scope: !2538, file: !610, line: 141, type: !11)
!2544 = !DILocation(line: 0, scope: !2538)
!2545 = !DILocation(line: 143, column: 4, scope: !2538)
!2546 = !DILocation(line: 143, column: 39, scope: !2538)
!2547 = !DILocation(line: 143, column: 45, scope: !2538)
!2548 = !DILocation(line: 144, column: 1, scope: !2538)
!2549 = distinct !DISubprogram(name: "set_char_quoting", scope: !610, file: !610, line: 152, type: !2550, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!34, !2516, !31, !34}
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2559, !2560}
!2553 = !DILocalVariable(name: "o", arg: 1, scope: !2549, file: !610, line: 152, type: !2516)
!2554 = !DILocalVariable(name: "c", arg: 2, scope: !2549, file: !610, line: 152, type: !31)
!2555 = !DILocalVariable(name: "i", arg: 3, scope: !2549, file: !610, line: 152, type: !34)
!2556 = !DILocalVariable(name: "uc", scope: !2549, file: !610, line: 154, type: !426)
!2557 = !DILocalVariable(name: "p", scope: !2549, file: !610, line: 155, type: !2558)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2559 = !DILocalVariable(name: "shift", scope: !2549, file: !610, line: 157, type: !34)
!2560 = !DILocalVariable(name: "r", scope: !2549, file: !610, line: 158, type: !34)
!2561 = !DILocation(line: 0, scope: !2549)
!2562 = !DILocation(line: 156, column: 6, scope: !2549)
!2563 = !DILocation(line: 156, column: 62, scope: !2549)
!2564 = !DILocation(line: 156, column: 57, scope: !2549)
!2565 = !DILocation(line: 157, column: 15, scope: !2549)
!2566 = !DILocation(line: 158, column: 12, scope: !2549)
!2567 = !DILocation(line: 158, column: 15, scope: !2549)
!2568 = !DILocation(line: 158, column: 25, scope: !2549)
!2569 = !DILocation(line: 159, column: 13, scope: !2549)
!2570 = !DILocation(line: 159, column: 18, scope: !2549)
!2571 = !DILocation(line: 159, column: 23, scope: !2549)
!2572 = !DILocation(line: 159, column: 6, scope: !2549)
!2573 = !DILocation(line: 160, column: 3, scope: !2549)
!2574 = distinct !DISubprogram(name: "set_quoting_flags", scope: !610, file: !610, line: 168, type: !2575, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!34, !2516, !34}
!2577 = !{!2578, !2579, !2580}
!2578 = !DILocalVariable(name: "o", arg: 1, scope: !2574, file: !610, line: 168, type: !2516)
!2579 = !DILocalVariable(name: "i", arg: 2, scope: !2574, file: !610, line: 168, type: !34)
!2580 = !DILocalVariable(name: "r", scope: !2574, file: !610, line: 170, type: !34)
!2581 = !DILocation(line: 0, scope: !2574)
!2582 = !DILocation(line: 171, column: 8, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2574, file: !610, line: 171, column: 7)
!2584 = !DILocation(line: 171, column: 7, scope: !2574)
!2585 = !DILocation(line: 173, column: 10, scope: !2574)
!2586 = !{!2536, !1575, i64 4}
!2587 = !DILocation(line: 174, column: 12, scope: !2574)
!2588 = !DILocation(line: 175, column: 3, scope: !2574)
!2589 = distinct !DISubprogram(name: "set_custom_quoting", scope: !610, file: !610, line: 179, type: !2590, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{null, !2516, !32, !32}
!2592 = !{!2593, !2594, !2595}
!2593 = !DILocalVariable(name: "o", arg: 1, scope: !2589, file: !610, line: 179, type: !2516)
!2594 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2589, file: !610, line: 180, type: !32)
!2595 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2589, file: !610, line: 180, type: !32)
!2596 = !DILocation(line: 0, scope: !2589)
!2597 = !DILocation(line: 182, column: 8, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2589, file: !610, line: 182, column: 7)
!2599 = !DILocation(line: 182, column: 7, scope: !2589)
!2600 = !DILocation(line: 184, column: 6, scope: !2589)
!2601 = !DILocation(line: 184, column: 12, scope: !2589)
!2602 = !DILocation(line: 185, column: 8, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2589, file: !610, line: 185, column: 7)
!2604 = !DILocation(line: 185, column: 23, scope: !2603)
!2605 = !DILocation(line: 185, column: 19, scope: !2603)
!2606 = !DILocation(line: 186, column: 5, scope: !2603)
!2607 = !DILocation(line: 187, column: 6, scope: !2589)
!2608 = !DILocation(line: 187, column: 17, scope: !2589)
!2609 = !{!2536, !1460, i64 40}
!2610 = !DILocation(line: 188, column: 6, scope: !2589)
!2611 = !DILocation(line: 188, column: 18, scope: !2589)
!2612 = !{!2536, !1460, i64 48}
!2613 = !DILocation(line: 189, column: 1, scope: !2589)
!2614 = distinct !DISubprogram(name: "quotearg_buffer", scope: !610, file: !610, line: 784, type: !2615, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!89, !30, !89, !32, !89, !641}
!2617 = !{!2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625}
!2618 = !DILocalVariable(name: "buffer", arg: 1, scope: !2614, file: !610, line: 784, type: !30)
!2619 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2614, file: !610, line: 784, type: !89)
!2620 = !DILocalVariable(name: "arg", arg: 3, scope: !2614, file: !610, line: 785, type: !32)
!2621 = !DILocalVariable(name: "argsize", arg: 4, scope: !2614, file: !610, line: 785, type: !89)
!2622 = !DILocalVariable(name: "o", arg: 5, scope: !2614, file: !610, line: 786, type: !641)
!2623 = !DILocalVariable(name: "p", scope: !2614, file: !610, line: 788, type: !641)
!2624 = !DILocalVariable(name: "e", scope: !2614, file: !610, line: 789, type: !34)
!2625 = !DILocalVariable(name: "r", scope: !2614, file: !610, line: 790, type: !89)
!2626 = !DILocation(line: 0, scope: !2614)
!2627 = !DILocation(line: 788, column: 37, scope: !2614)
!2628 = !DILocation(line: 789, column: 11, scope: !2614)
!2629 = !DILocation(line: 791, column: 43, scope: !2614)
!2630 = !DILocation(line: 791, column: 53, scope: !2614)
!2631 = !DILocation(line: 791, column: 60, scope: !2614)
!2632 = !DILocation(line: 792, column: 43, scope: !2614)
!2633 = !DILocation(line: 792, column: 58, scope: !2614)
!2634 = !DILocation(line: 790, column: 14, scope: !2614)
!2635 = !DILocation(line: 793, column: 9, scope: !2614)
!2636 = !DILocation(line: 794, column: 3, scope: !2614)
!2637 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !610, file: !610, line: 256, type: !2638, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2642)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!89, !30, !89, !32, !89, !11, !34, !2640, !32, !32}
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2642 = !{!2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2667, !2668, !2669, !2670, !2671, !2674, !2675, !2681, !2684, !2685, !2692, !2695, !2696, !2697, !2698, !2699, !2700}
!2643 = !DILocalVariable(name: "buffer", arg: 1, scope: !2637, file: !610, line: 256, type: !30)
!2644 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2637, file: !610, line: 256, type: !89)
!2645 = !DILocalVariable(name: "arg", arg: 3, scope: !2637, file: !610, line: 257, type: !32)
!2646 = !DILocalVariable(name: "argsize", arg: 4, scope: !2637, file: !610, line: 257, type: !89)
!2647 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2637, file: !610, line: 258, type: !11)
!2648 = !DILocalVariable(name: "flags", arg: 6, scope: !2637, file: !610, line: 258, type: !34)
!2649 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2637, file: !610, line: 259, type: !2640)
!2650 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2637, file: !610, line: 260, type: !32)
!2651 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2637, file: !610, line: 261, type: !32)
!2652 = !DILocalVariable(name: "i", scope: !2637, file: !610, line: 263, type: !89)
!2653 = !DILocalVariable(name: "len", scope: !2637, file: !610, line: 264, type: !89)
!2654 = !DILocalVariable(name: "orig_buffersize", scope: !2637, file: !610, line: 265, type: !89)
!2655 = !DILocalVariable(name: "quote_string", scope: !2637, file: !610, line: 266, type: !32)
!2656 = !DILocalVariable(name: "quote_string_len", scope: !2637, file: !610, line: 267, type: !89)
!2657 = !DILocalVariable(name: "backslash_escapes", scope: !2637, file: !610, line: 268, type: !141)
!2658 = !DILocalVariable(name: "unibyte_locale", scope: !2637, file: !610, line: 269, type: !141)
!2659 = !DILocalVariable(name: "elide_outer_quotes", scope: !2637, file: !610, line: 270, type: !141)
!2660 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2637, file: !610, line: 271, type: !141)
!2661 = !DILocalVariable(name: "encountered_single_quote", scope: !2637, file: !610, line: 272, type: !141)
!2662 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2637, file: !610, line: 273, type: !141)
!2663 = !DILocalVariable(name: "c", scope: !2664, file: !610, line: 402, type: !426)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !610, line: 401, column: 5)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !610, line: 400, column: 3)
!2666 = distinct !DILexicalBlock(scope: !2637, file: !610, line: 400, column: 3)
!2667 = !DILocalVariable(name: "esc", scope: !2664, file: !610, line: 403, type: !426)
!2668 = !DILocalVariable(name: "is_right_quote", scope: !2664, file: !610, line: 404, type: !141)
!2669 = !DILocalVariable(name: "escaping", scope: !2664, file: !610, line: 405, type: !141)
!2670 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2664, file: !610, line: 406, type: !141)
!2671 = !DILocalVariable(name: "m", scope: !2672, file: !610, line: 610, type: !89)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !610, line: 608, column: 11)
!2673 = distinct !DILexicalBlock(scope: !2664, file: !610, line: 426, column: 9)
!2674 = !DILocalVariable(name: "printable", scope: !2672, file: !610, line: 612, type: !141)
!2675 = !DILocalVariable(name: "mbstate", scope: !2676, file: !610, line: 621, type: !2678)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !610, line: 620, column: 15)
!2677 = distinct !DILexicalBlock(scope: !2672, file: !610, line: 614, column: 17)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2679, line: 6, baseType: !2680)
!2679 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !660, line: 21, baseType: !659)
!2681 = !DILocalVariable(name: "w", scope: !2682, file: !610, line: 631, type: !2683)
!2682 = distinct !DILexicalBlock(scope: !2676, file: !610, line: 630, column: 19)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !90, line: 74, baseType: !34)
!2684 = !DILocalVariable(name: "bytes", scope: !2682, file: !610, line: 632, type: !89)
!2685 = !DILocalVariable(name: "j", scope: !2686, file: !610, line: 657, type: !89)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !610, line: 656, column: 27)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !610, line: 654, column: 29)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !610, line: 649, column: 23)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !610, line: 641, column: 30)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !610, line: 636, column: 30)
!2691 = distinct !DILexicalBlock(scope: !2682, file: !610, line: 634, column: 25)
!2692 = !DILocalVariable(name: "ilim", scope: !2693, file: !610, line: 684, type: !89)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !610, line: 681, column: 15)
!2694 = distinct !DILexicalBlock(scope: !2672, file: !610, line: 680, column: 17)
!2695 = !DILabel(scope: !2637, name: "process_input", file: !610, line: 314)
!2696 = !DILabel(scope: !2673, name: "c_and_shell_escape", file: !610, line: 512)
!2697 = !DILabel(scope: !2673, name: "c_escape", file: !610, line: 517)
!2698 = !DILabel(scope: !2664, name: "store_escape", file: !610, line: 719)
!2699 = !DILabel(scope: !2664, name: "store_c", file: !610, line: 722)
!2700 = !DILabel(scope: !2637, name: "force_outer_quoting_style", file: !610, line: 763)
!2701 = !DILocation(line: 0, scope: !2637)
!2702 = !DILocation(line: 269, column: 25, scope: !2637)
!2703 = !DILocation(line: 269, column: 36, scope: !2637)
!2704 = !DILocation(line: 270, column: 8, scope: !2637)
!2705 = !DILocation(line: 0, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2673, file: !610, line: 526, column: 15)
!2707 = !DILocation(line: 0, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !610, line: 462, column: 19)
!2709 = distinct !DILexicalBlock(scope: !2673, file: !610, line: 455, column: 13)
!2710 = !DILocation(line: 0, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !610, line: 449, column: 20)
!2712 = distinct !DILexicalBlock(scope: !2673, file: !610, line: 428, column: 15)
!2713 = !DILocation(line: 0, scope: !2676)
!2714 = !DILocation(line: 0, scope: !2682)
!2715 = !DILocation(line: 0, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2664, file: !610, line: 712, column: 11)
!2717 = !DILocation(line: 273, column: 3, scope: !2637)
!2718 = !DILocation(line: 265, column: 10, scope: !2637)
!2719 = !DILocation(line: 266, column: 15, scope: !2637)
!2720 = !DILocation(line: 267, column: 10, scope: !2637)
!2721 = !DILocation(line: 268, column: 8, scope: !2637)
!2722 = !DILocation(line: 271, column: 8, scope: !2637)
!2723 = !DILocation(line: 272, column: 8, scope: !2637)
!2724 = !DILocation(line: 273, column: 8, scope: !2637)
!2725 = !DILocation(line: 314, column: 2, scope: !2637)
!2726 = !DILocation(line: 316, column: 3, scope: !2637)
!2727 = !DILocation(line: 323, column: 11, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2637, file: !610, line: 317, column: 5)
!2729 = !DILocation(line: 323, column: 12, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2728, file: !610, line: 323, column: 11)
!2731 = !DILocation(line: 324, column: 9, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !610, line: 324, column: 9)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !610, line: 324, column: 9)
!2734 = !DILocation(line: 324, column: 9, scope: !2733)
!2735 = !DILocation(line: 362, column: 26, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !610, line: 340, column: 11)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !610, line: 339, column: 13)
!2738 = distinct !DILexicalBlock(scope: !2728, file: !610, line: 338, column: 7)
!2739 = !DILocation(line: 363, column: 27, scope: !2736)
!2740 = !DILocation(line: 364, column: 11, scope: !2736)
!2741 = !DILocation(line: 365, column: 14, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2738, file: !610, line: 365, column: 13)
!2743 = !DILocation(line: 365, column: 13, scope: !2738)
!2744 = !DILocation(line: 366, column: 43, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !610, line: 366, column: 11)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !610, line: 366, column: 11)
!2747 = !DILocation(line: 366, column: 11, scope: !2746)
!2748 = !DILocation(line: 367, column: 13, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !610, line: 367, column: 13)
!2750 = distinct !DILexicalBlock(scope: !2745, file: !610, line: 367, column: 13)
!2751 = !DILocation(line: 367, column: 13, scope: !2750)
!2752 = !DILocation(line: 366, column: 70, scope: !2745)
!2753 = distinct !{!2753, !2747, !2754}
!2754 = !DILocation(line: 367, column: 13, scope: !2746)
!2755 = !DILocation(line: 264, column: 10, scope: !2637)
!2756 = !DILocation(line: 370, column: 28, scope: !2738)
!2757 = !DILocation(line: 372, column: 7, scope: !2728)
!2758 = !DILocation(line: 376, column: 7, scope: !2728)
!2759 = !DILocation(line: 379, column: 7, scope: !2728)
!2760 = !DILocation(line: 381, column: 12, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2728, file: !610, line: 381, column: 11)
!2762 = !DILocation(line: 381, column: 11, scope: !2728)
!2763 = !DILocation(line: 386, column: 12, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2728, file: !610, line: 386, column: 11)
!2765 = !DILocation(line: 386, column: 11, scope: !2728)
!2766 = !DILocation(line: 387, column: 9, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !610, line: 387, column: 9)
!2768 = distinct !DILexicalBlock(scope: !2764, file: !610, line: 387, column: 9)
!2769 = !DILocation(line: 387, column: 9, scope: !2768)
!2770 = !DILocation(line: 394, column: 7, scope: !2728)
!2771 = !DILocation(line: 397, column: 7, scope: !2728)
!2772 = !DILocation(line: 0, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2664, file: !610, line: 408, column: 11)
!2774 = !DILocation(line: 0, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !610, line: 419, column: 15)
!2776 = distinct !DILexicalBlock(scope: !2773, file: !610, line: 418, column: 9)
!2777 = !DILocation(line: 0, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2673, file: !610, line: 556, column: 15)
!2779 = !DILocation(line: 0, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2673, file: !610, line: 548, column: 15)
!2781 = !DILocation(line: 0, scope: !2687)
!2782 = !DILocation(line: 0, scope: !2694)
!2783 = !DILocation(line: 0, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2673, file: !610, line: 509, column: 15)
!2785 = !DILocation(line: 400, column: 8, scope: !2666)
!2786 = !DILocation(line: 0, scope: !2666)
!2787 = !DILocation(line: 400, column: 27, scope: !2665)
!2788 = !DILocation(line: 400, column: 19, scope: !2665)
!2789 = !DILocation(line: 400, column: 41, scope: !2665)
!2790 = !DILocation(line: 400, column: 48, scope: !2665)
!2791 = !DILocation(line: 400, column: 3, scope: !2666)
!2792 = !DILocation(line: 400, column: 60, scope: !2665)
!2793 = !DILocation(line: 0, scope: !2664)
!2794 = !DILocation(line: 409, column: 11, scope: !2773)
!2795 = !DILocation(line: 411, column: 17, scope: !2773)
!2796 = !DILocation(line: 412, column: 39, scope: !2773)
!2797 = !DILocation(line: 416, column: 32, scope: !2773)
!2798 = !DILocation(line: 412, column: 19, scope: !2773)
!2799 = !DILocation(line: 412, column: 15, scope: !2773)
!2800 = !DILocation(line: 417, column: 11, scope: !2773)
!2801 = !DILocation(line: 417, column: 26, scope: !2773)
!2802 = !DILocation(line: 417, column: 14, scope: !2773)
!2803 = !DILocation(line: 417, column: 63, scope: !2773)
!2804 = !DILocation(line: 408, column: 11, scope: !2664)
!2805 = !DILocation(line: 424, column: 11, scope: !2664)
!2806 = !DILocation(line: 425, column: 7, scope: !2664)
!2807 = !DILocation(line: 428, column: 15, scope: !2673)
!2808 = !DILocation(line: 430, column: 15, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !610, line: 430, column: 15)
!2810 = distinct !DILexicalBlock(scope: !2712, file: !610, line: 429, column: 13)
!2811 = !DILocation(line: 430, column: 15, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2809, file: !610, line: 430, column: 15)
!2813 = !DILocation(line: 430, column: 15, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !610, line: 430, column: 15)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !610, line: 430, column: 15)
!2816 = distinct !DILexicalBlock(scope: !2812, file: !610, line: 430, column: 15)
!2817 = !DILocation(line: 430, column: 15, scope: !2815)
!2818 = !DILocation(line: 430, column: 15, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !610, line: 430, column: 15)
!2820 = distinct !DILexicalBlock(scope: !2816, file: !610, line: 430, column: 15)
!2821 = !DILocation(line: 430, column: 15, scope: !2820)
!2822 = !DILocation(line: 430, column: 15, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !610, line: 430, column: 15)
!2824 = distinct !DILexicalBlock(scope: !2816, file: !610, line: 430, column: 15)
!2825 = !DILocation(line: 430, column: 15, scope: !2824)
!2826 = !DILocation(line: 430, column: 15, scope: !2816)
!2827 = !DILocation(line: 430, column: 15, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !610, line: 430, column: 15)
!2829 = distinct !DILexicalBlock(scope: !2809, file: !610, line: 430, column: 15)
!2830 = !DILocation(line: 430, column: 15, scope: !2829)
!2831 = !DILocation(line: 438, column: 19, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2810, file: !610, line: 437, column: 19)
!2833 = !DILocation(line: 438, column: 24, scope: !2832)
!2834 = !DILocation(line: 438, column: 28, scope: !2832)
!2835 = !DILocation(line: 438, column: 38, scope: !2832)
!2836 = !DILocation(line: 438, column: 48, scope: !2832)
!2837 = !DILocation(line: 438, column: 59, scope: !2832)
!2838 = !DILocation(line: 440, column: 19, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !610, line: 440, column: 19)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !610, line: 440, column: 19)
!2841 = distinct !DILexicalBlock(scope: !2832, file: !610, line: 439, column: 17)
!2842 = !DILocation(line: 440, column: 19, scope: !2840)
!2843 = !DILocation(line: 441, column: 19, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !610, line: 441, column: 19)
!2845 = distinct !DILexicalBlock(scope: !2841, file: !610, line: 441, column: 19)
!2846 = !DILocation(line: 441, column: 19, scope: !2845)
!2847 = !DILocation(line: 442, column: 17, scope: !2841)
!2848 = !DILocation(line: 449, column: 20, scope: !2712)
!2849 = !DILocation(line: 454, column: 11, scope: !2673)
!2850 = !DILocation(line: 457, column: 19, scope: !2709)
!2851 = !DILocation(line: 463, column: 19, scope: !2708)
!2852 = !DILocation(line: 463, column: 24, scope: !2708)
!2853 = !DILocation(line: 463, column: 28, scope: !2708)
!2854 = !DILocation(line: 463, column: 38, scope: !2708)
!2855 = !DILocation(line: 463, column: 47, scope: !2708)
!2856 = !DILocation(line: 463, column: 41, scope: !2708)
!2857 = !DILocation(line: 463, column: 52, scope: !2708)
!2858 = !DILocation(line: 462, column: 19, scope: !2709)
!2859 = !DILocation(line: 464, column: 25, scope: !2708)
!2860 = !DILocation(line: 464, column: 17, scope: !2708)
!2861 = !DILocation(line: 471, column: 25, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2708, file: !610, line: 465, column: 19)
!2863 = !DILocation(line: 475, column: 21, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !610, line: 475, column: 21)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !610, line: 475, column: 21)
!2866 = !DILocation(line: 475, column: 21, scope: !2865)
!2867 = !DILocation(line: 476, column: 21, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !610, line: 476, column: 21)
!2869 = distinct !DILexicalBlock(scope: !2862, file: !610, line: 476, column: 21)
!2870 = !DILocation(line: 476, column: 21, scope: !2869)
!2871 = !DILocation(line: 477, column: 21, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !610, line: 477, column: 21)
!2873 = distinct !DILexicalBlock(scope: !2862, file: !610, line: 477, column: 21)
!2874 = !DILocation(line: 477, column: 21, scope: !2873)
!2875 = !DILocation(line: 478, column: 21, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !610, line: 478, column: 21)
!2877 = distinct !DILexicalBlock(scope: !2862, file: !610, line: 478, column: 21)
!2878 = !DILocation(line: 478, column: 21, scope: !2877)
!2879 = !DILocation(line: 479, column: 21, scope: !2862)
!2880 = !DILocation(line: 492, column: 31, scope: !2673)
!2881 = !DILocation(line: 493, column: 31, scope: !2673)
!2882 = !DILocation(line: 495, column: 31, scope: !2673)
!2883 = !DILocation(line: 496, column: 31, scope: !2673)
!2884 = !DILocation(line: 497, column: 31, scope: !2673)
!2885 = !DILocation(line: 500, column: 15, scope: !2673)
!2886 = !DILocation(line: 502, column: 19, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !610, line: 501, column: 13)
!2888 = distinct !DILexicalBlock(scope: !2673, file: !610, line: 500, column: 15)
!2889 = !DILocation(line: 509, column: 33, scope: !2784)
!2890 = !DILocation(line: 0, scope: !2673)
!2891 = !DILocation(line: 512, column: 9, scope: !2673)
!2892 = !DILocation(line: 514, column: 15, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2673, file: !610, line: 513, column: 15)
!2894 = !DILocation(line: 517, column: 9, scope: !2673)
!2895 = !DILocation(line: 518, column: 15, scope: !2673)
!2896 = !DILocation(line: 526, column: 15, scope: !2673)
!2897 = !DILocation(line: 526, column: 40, scope: !2706)
!2898 = !DILocation(line: 526, column: 47, scope: !2706)
!2899 = !DILocation(line: 526, column: 18, scope: !2706)
!2900 = !DILocation(line: 530, column: 17, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2673, file: !610, line: 530, column: 15)
!2902 = !DILocation(line: 530, column: 15, scope: !2673)
!2903 = !DILocation(line: 535, column: 11, scope: !2673)
!2904 = !DILocation(line: 549, column: 15, scope: !2780)
!2905 = !DILocation(line: 556, column: 15, scope: !2673)
!2906 = !DILocation(line: 558, column: 19, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2778, file: !610, line: 557, column: 13)
!2908 = !DILocation(line: 561, column: 19, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2907, file: !610, line: 561, column: 19)
!2910 = !DILocation(line: 561, column: 35, scope: !2909)
!2911 = !DILocation(line: 561, column: 30, scope: !2909)
!2912 = !DILocation(line: 570, column: 15, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !610, line: 570, column: 15)
!2914 = distinct !DILexicalBlock(scope: !2907, file: !610, line: 570, column: 15)
!2915 = !DILocation(line: 570, column: 15, scope: !2914)
!2916 = !DILocation(line: 571, column: 15, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !610, line: 571, column: 15)
!2918 = distinct !DILexicalBlock(scope: !2907, file: !610, line: 571, column: 15)
!2919 = !DILocation(line: 571, column: 15, scope: !2918)
!2920 = !DILocation(line: 572, column: 15, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !610, line: 572, column: 15)
!2922 = distinct !DILexicalBlock(scope: !2907, file: !610, line: 572, column: 15)
!2923 = !DILocation(line: 572, column: 15, scope: !2922)
!2924 = !DILocation(line: 574, column: 13, scope: !2907)
!2925 = !DILocation(line: 614, column: 17, scope: !2672)
!2926 = !DILocation(line: 0, scope: !2672)
!2927 = !DILocation(line: 617, column: 29, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2677, file: !610, line: 615, column: 15)
!2929 = !{!1677, !1677, i64 0}
!2930 = !DILocation(line: 617, column: 27, scope: !2928)
!2931 = !DILocation(line: 618, column: 15, scope: !2928)
!2932 = !DILocation(line: 621, column: 17, scope: !2676)
!2933 = !DILocation(line: 621, column: 27, scope: !2676)
!2934 = !DILocalVariable(name: "__dest", arg: 1, scope: !2935, file: !1724, line: 59, type: !87)
!2935 = distinct !DISubprogram(name: "memset", scope: !1724, file: !1724, line: 59, type: !2936, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!87, !87, !34, !89}
!2938 = !{!2934, !2939, !2940}
!2939 = !DILocalVariable(name: "__ch", arg: 2, scope: !2935, file: !1724, line: 59, type: !34)
!2940 = !DILocalVariable(name: "__len", arg: 3, scope: !2935, file: !1724, line: 59, type: !89)
!2941 = !DILocation(line: 0, scope: !2935, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 622, column: 17, scope: !2676)
!2943 = !DILocation(line: 71, column: 10, scope: !2935, inlinedAt: !2942)
!2944 = !DILocation(line: 626, column: 29, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2676, file: !610, line: 626, column: 21)
!2946 = !DILocation(line: 626, column: 21, scope: !2676)
!2947 = !DILocation(line: 627, column: 29, scope: !2945)
!2948 = !DILocation(line: 627, column: 19, scope: !2945)
!2949 = !DILocation(line: 629, column: 17, scope: !2676)
!2950 = !DILocation(line: 624, column: 19, scope: !2676)
!2951 = !DILocation(line: 625, column: 27, scope: !2676)
!2952 = !DILocation(line: 631, column: 21, scope: !2682)
!2953 = !DILocation(line: 632, column: 56, scope: !2682)
!2954 = !DILocation(line: 632, column: 50, scope: !2682)
!2955 = !DILocation(line: 633, column: 53, scope: !2682)
!2956 = !DILocation(line: 632, column: 36, scope: !2682)
!2957 = !DILocation(line: 634, column: 25, scope: !2682)
!2958 = !DILocation(line: 644, column: 38, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2689, file: !610, line: 642, column: 23)
!2960 = !DILocation(line: 644, column: 48, scope: !2959)
!2961 = !DILocation(line: 644, column: 25, scope: !2959)
!2962 = !DILocation(line: 644, column: 51, scope: !2959)
!2963 = !DILocation(line: 645, column: 28, scope: !2959)
!2964 = !DILocation(line: 644, column: 34, scope: !2959)
!2965 = distinct !{!2965, !2961, !2963}
!2966 = !DILocation(line: 658, column: 43, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !610, line: 658, column: 29)
!2968 = distinct !DILexicalBlock(scope: !2686, file: !610, line: 658, column: 29)
!2969 = !DILocation(line: 655, column: 29, scope: !2687)
!2970 = !DILocation(line: 0, scope: !2686)
!2971 = !DILocation(line: 659, column: 49, scope: !2967)
!2972 = !DILocation(line: 659, column: 39, scope: !2967)
!2973 = !DILocation(line: 659, column: 31, scope: !2967)
!2974 = !DILocation(line: 658, column: 53, scope: !2967)
!2975 = !DILocation(line: 658, column: 29, scope: !2968)
!2976 = distinct !{!2976, !2975, !2977}
!2977 = !DILocation(line: 667, column: 33, scope: !2968)
!2978 = !DILocation(line: 674, column: 19, scope: !2676)
!2979 = !DILocation(line: 670, column: 41, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2688, file: !610, line: 670, column: 29)
!2981 = !DILocation(line: 670, column: 31, scope: !2980)
!2982 = !DILocation(line: 670, column: 29, scope: !2688)
!2983 = !DILocation(line: 672, column: 27, scope: !2688)
!2984 = !DILocation(line: 675, column: 26, scope: !2676)
!2985 = !DILocation(line: 675, column: 24, scope: !2676)
!2986 = !DILocation(line: 674, column: 19, scope: !2682)
!2987 = distinct !{!2987, !2949, !2988}
!2988 = !DILocation(line: 675, column: 44, scope: !2676)
!2989 = !DILocation(line: 676, column: 15, scope: !2677)
!2990 = !DILocation(line: 0, scope: !2677)
!2991 = !DILocation(line: 678, column: 40, scope: !2672)
!2992 = !DILocation(line: 680, column: 19, scope: !2694)
!2993 = !DILocation(line: 680, column: 45, scope: !2694)
!2994 = !DILocation(line: 680, column: 23, scope: !2694)
!2995 = !DILocation(line: 684, column: 33, scope: !2693)
!2996 = !DILocation(line: 0, scope: !2693)
!2997 = !DILocation(line: 686, column: 17, scope: !2693)
!2998 = !DILocation(line: 405, column: 12, scope: !2664)
!2999 = !DILocation(line: 688, column: 43, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !610, line: 688, column: 25)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !610, line: 687, column: 19)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !610, line: 686, column: 17)
!3003 = distinct !DILexicalBlock(scope: !2693, file: !610, line: 686, column: 17)
!3004 = !DILocation(line: 690, column: 25, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !610, line: 690, column: 25)
!3006 = distinct !DILexicalBlock(scope: !3000, file: !610, line: 689, column: 23)
!3007 = !DILocation(line: 690, column: 25, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3005, file: !610, line: 690, column: 25)
!3009 = !DILocation(line: 690, column: 25, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !610, line: 690, column: 25)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !610, line: 690, column: 25)
!3012 = distinct !DILexicalBlock(scope: !3008, file: !610, line: 690, column: 25)
!3013 = !DILocation(line: 690, column: 25, scope: !3011)
!3014 = !DILocation(line: 690, column: 25, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !610, line: 690, column: 25)
!3016 = distinct !DILexicalBlock(scope: !3012, file: !610, line: 690, column: 25)
!3017 = !DILocation(line: 690, column: 25, scope: !3016)
!3018 = !DILocation(line: 690, column: 25, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !610, line: 690, column: 25)
!3020 = distinct !DILexicalBlock(scope: !3012, file: !610, line: 690, column: 25)
!3021 = !DILocation(line: 690, column: 25, scope: !3020)
!3022 = !DILocation(line: 690, column: 25, scope: !3012)
!3023 = !DILocation(line: 690, column: 25, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !610, line: 690, column: 25)
!3025 = distinct !DILexicalBlock(scope: !3005, file: !610, line: 690, column: 25)
!3026 = !DILocation(line: 690, column: 25, scope: !3025)
!3027 = !DILocation(line: 691, column: 25, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !610, line: 691, column: 25)
!3029 = distinct !DILexicalBlock(scope: !3006, file: !610, line: 691, column: 25)
!3030 = !DILocation(line: 691, column: 25, scope: !3029)
!3031 = !DILocation(line: 692, column: 25, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !610, line: 692, column: 25)
!3033 = distinct !DILexicalBlock(scope: !3006, file: !610, line: 692, column: 25)
!3034 = !DILocation(line: 692, column: 25, scope: !3033)
!3035 = !DILocation(line: 693, column: 38, scope: !3006)
!3036 = !DILocation(line: 693, column: 33, scope: !3006)
!3037 = !DILocation(line: 694, column: 23, scope: !3006)
!3038 = !DILocation(line: 695, column: 30, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3000, file: !610, line: 695, column: 30)
!3040 = !DILocation(line: 695, column: 30, scope: !3000)
!3041 = !DILocation(line: 697, column: 25, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !610, line: 697, column: 25)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !610, line: 697, column: 25)
!3044 = distinct !DILexicalBlock(scope: !3039, file: !610, line: 696, column: 23)
!3045 = !DILocation(line: 697, column: 25, scope: !3043)
!3046 = !DILocation(line: 699, column: 23, scope: !3044)
!3047 = !DILocation(line: 700, column: 35, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3001, file: !610, line: 700, column: 25)
!3049 = !DILocation(line: 700, column: 30, scope: !3048)
!3050 = !DILocation(line: 700, column: 25, scope: !3001)
!3051 = !DILocation(line: 702, column: 21, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !610, line: 702, column: 21)
!3053 = distinct !DILexicalBlock(scope: !3001, file: !610, line: 702, column: 21)
!3054 = !DILocation(line: 702, column: 21, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !610, line: 702, column: 21)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !610, line: 702, column: 21)
!3057 = distinct !DILexicalBlock(scope: !3052, file: !610, line: 702, column: 21)
!3058 = !DILocation(line: 702, column: 21, scope: !3056)
!3059 = !DILocation(line: 702, column: 21, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !610, line: 702, column: 21)
!3061 = distinct !DILexicalBlock(scope: !3057, file: !610, line: 702, column: 21)
!3062 = !DILocation(line: 702, column: 21, scope: !3061)
!3063 = !DILocation(line: 702, column: 21, scope: !3057)
!3064 = !DILocation(line: 0, scope: !3001)
!3065 = !DILocation(line: 703, column: 21, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !610, line: 703, column: 21)
!3067 = distinct !DILexicalBlock(scope: !3001, file: !610, line: 703, column: 21)
!3068 = !DILocation(line: 703, column: 21, scope: !3067)
!3069 = !DILocation(line: 704, column: 25, scope: !3001)
!3070 = !DILocation(line: 686, column: 17, scope: !3002)
!3071 = distinct !{!3071, !3072, !3073}
!3072 = !DILocation(line: 686, column: 17, scope: !3003)
!3073 = !DILocation(line: 705, column: 19, scope: !3003)
!3074 = !DILocation(line: 416, column: 30, scope: !2773)
!3075 = !DILocation(line: 712, column: 34, scope: !2716)
!3076 = !DILocation(line: 715, column: 35, scope: !2716)
!3077 = !DILocation(line: 715, column: 17, scope: !2716)
!3078 = !DILocation(line: 715, column: 47, scope: !2716)
!3079 = !DILocation(line: 715, column: 65, scope: !2716)
!3080 = !DILocation(line: 716, column: 15, scope: !2716)
!3081 = !DILocation(line: 716, column: 11, scope: !2716)
!3082 = !DILocation(line: 712, column: 11, scope: !2664)
!3083 = !DILocation(line: 400, column: 10, scope: !2666)
!3084 = !DILocation(line: 719, column: 5, scope: !2664)
!3085 = !DILocation(line: 720, column: 7, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !2664, file: !610, line: 720, column: 7)
!3087 = !DILocation(line: 720, column: 7, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3086, file: !610, line: 720, column: 7)
!3089 = !DILocation(line: 720, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !610, line: 720, column: 7)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !610, line: 720, column: 7)
!3092 = distinct !DILexicalBlock(scope: !3088, file: !610, line: 720, column: 7)
!3093 = !DILocation(line: 720, column: 7, scope: !3091)
!3094 = !DILocation(line: 720, column: 7, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !610, line: 720, column: 7)
!3096 = distinct !DILexicalBlock(scope: !3092, file: !610, line: 720, column: 7)
!3097 = !DILocation(line: 720, column: 7, scope: !3096)
!3098 = !DILocation(line: 720, column: 7, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !610, line: 720, column: 7)
!3100 = distinct !DILexicalBlock(scope: !3092, file: !610, line: 720, column: 7)
!3101 = !DILocation(line: 720, column: 7, scope: !3100)
!3102 = !DILocation(line: 720, column: 7, scope: !3092)
!3103 = !DILocation(line: 720, column: 7, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !610, line: 720, column: 7)
!3105 = distinct !DILexicalBlock(scope: !3086, file: !610, line: 720, column: 7)
!3106 = !DILocation(line: 720, column: 7, scope: !3105)
!3107 = !DILocation(line: 722, column: 5, scope: !2664)
!3108 = !DILocation(line: 723, column: 7, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !610, line: 723, column: 7)
!3110 = distinct !DILexicalBlock(scope: !2664, file: !610, line: 723, column: 7)
!3111 = !DILocation(line: 424, column: 9, scope: !2664)
!3112 = !DILocation(line: 723, column: 7, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !610, line: 723, column: 7)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !610, line: 723, column: 7)
!3115 = distinct !DILexicalBlock(scope: !3109, file: !610, line: 723, column: 7)
!3116 = !DILocation(line: 723, column: 7, scope: !3114)
!3117 = !DILocation(line: 723, column: 7, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !610, line: 723, column: 7)
!3119 = distinct !DILexicalBlock(scope: !3115, file: !610, line: 723, column: 7)
!3120 = !DILocation(line: 723, column: 7, scope: !3119)
!3121 = !DILocation(line: 723, column: 7, scope: !3115)
!3122 = !DILocation(line: 724, column: 7, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !610, line: 724, column: 7)
!3124 = distinct !DILexicalBlock(scope: !2664, file: !610, line: 724, column: 7)
!3125 = !DILocation(line: 724, column: 7, scope: !3124)
!3126 = !DILocation(line: 726, column: 13, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !2664, file: !610, line: 726, column: 11)
!3128 = !DILocation(line: 726, column: 11, scope: !2664)
!3129 = !DILocation(line: 728, column: 5, scope: !2665)
!3130 = !DILocation(line: 400, column: 75, scope: !2665)
!3131 = !DILocation(line: 400, column: 3, scope: !2665)
!3132 = distinct !{!3132, !2791, !3133}
!3133 = !DILocation(line: 728, column: 5, scope: !2666)
!3134 = !DILocation(line: 730, column: 11, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !2637, file: !610, line: 730, column: 7)
!3136 = !DILocation(line: 730, column: 16, scope: !3135)
!3137 = !DILocation(line: 738, column: 51, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !2637, file: !610, line: 738, column: 7)
!3139 = !DILocation(line: 739, column: 10, scope: !3138)
!3140 = !DILocation(line: 741, column: 11, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !610, line: 741, column: 11)
!3142 = distinct !DILexicalBlock(scope: !3138, file: !610, line: 740, column: 5)
!3143 = !DILocation(line: 741, column: 11, scope: !3142)
!3144 = !DILocation(line: 742, column: 16, scope: !3141)
!3145 = !DILocation(line: 742, column: 9, scope: !3141)
!3146 = !DILocation(line: 746, column: 18, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3141, file: !610, line: 746, column: 16)
!3148 = !DILocation(line: 746, column: 32, scope: !3147)
!3149 = !DILocation(line: 746, column: 29, scope: !3147)
!3150 = !DILocation(line: 755, column: 7, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !2637, file: !610, line: 755, column: 7)
!3152 = !DILocation(line: 755, column: 20, scope: !3151)
!3153 = !DILocation(line: 756, column: 12, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !610, line: 756, column: 5)
!3155 = distinct !DILexicalBlock(scope: !3151, file: !610, line: 756, column: 5)
!3156 = !DILocation(line: 756, column: 5, scope: !3155)
!3157 = !DILocation(line: 757, column: 7, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !610, line: 757, column: 7)
!3159 = distinct !DILexicalBlock(scope: !3154, file: !610, line: 757, column: 7)
!3160 = !DILocation(line: 757, column: 7, scope: !3159)
!3161 = !DILocation(line: 756, column: 39, scope: !3154)
!3162 = distinct !{!3162, !3156, !3163}
!3163 = !DILocation(line: 757, column: 7, scope: !3155)
!3164 = !DILocation(line: 759, column: 11, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !2637, file: !610, line: 759, column: 7)
!3166 = !DILocation(line: 759, column: 7, scope: !2637)
!3167 = !DILocation(line: 760, column: 5, scope: !3165)
!3168 = !DILocation(line: 760, column: 17, scope: !3165)
!3169 = !DILocation(line: 763, column: 2, scope: !2637)
!3170 = !DILocation(line: 766, column: 51, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !2637, file: !610, line: 766, column: 7)
!3172 = !DILocation(line: 766, column: 21, scope: !3171)
!3173 = !DILocation(line: 770, column: 42, scope: !2637)
!3174 = !DILocation(line: 768, column: 10, scope: !2637)
!3175 = !DILocation(line: 768, column: 3, scope: !2637)
!3176 = !DILocation(line: 772, column: 1, scope: !2637)
!3177 = distinct !DISubprogram(name: "gettext_quote", scope: !610, file: !610, line: 207, type: !3178, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!32, !32, !11}
!3180 = !{!3181, !3182, !3183, !3184}
!3181 = !DILocalVariable(name: "msgid", arg: 1, scope: !3177, file: !610, line: 207, type: !32)
!3182 = !DILocalVariable(name: "s", arg: 2, scope: !3177, file: !610, line: 207, type: !11)
!3183 = !DILocalVariable(name: "translation", scope: !3177, file: !610, line: 209, type: !32)
!3184 = !DILocalVariable(name: "locale_code", scope: !3177, file: !610, line: 210, type: !32)
!3185 = !DILocation(line: 0, scope: !3177)
!3186 = !DILocation(line: 209, column: 29, scope: !3177)
!3187 = !DILocation(line: 212, column: 19, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3177, file: !610, line: 212, column: 7)
!3189 = !DILocation(line: 212, column: 7, scope: !3177)
!3190 = !DILocation(line: 233, column: 17, scope: !3177)
!3191 = !DILocalVariable(name: "s1", arg: 1, scope: !3192, file: !3193, line: 160, type: !32)
!3192 = distinct !DISubprogram(name: "strcaseeq0", scope: !3193, file: !3193, line: 160, type: !3194, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3196)
!3193 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!34, !32, !32, !31, !31, !31, !31, !31, !31, !31, !31, !31}
!3196 = !{!3191, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206}
!3197 = !DILocalVariable(name: "s2", arg: 2, scope: !3192, file: !3193, line: 160, type: !32)
!3198 = !DILocalVariable(name: "s20", arg: 3, scope: !3192, file: !3193, line: 160, type: !31)
!3199 = !DILocalVariable(name: "s21", arg: 4, scope: !3192, file: !3193, line: 160, type: !31)
!3200 = !DILocalVariable(name: "s22", arg: 5, scope: !3192, file: !3193, line: 160, type: !31)
!3201 = !DILocalVariable(name: "s23", arg: 6, scope: !3192, file: !3193, line: 160, type: !31)
!3202 = !DILocalVariable(name: "s24", arg: 7, scope: !3192, file: !3193, line: 160, type: !31)
!3203 = !DILocalVariable(name: "s25", arg: 8, scope: !3192, file: !3193, line: 160, type: !31)
!3204 = !DILocalVariable(name: "s26", arg: 9, scope: !3192, file: !3193, line: 160, type: !31)
!3205 = !DILocalVariable(name: "s27", arg: 10, scope: !3192, file: !3193, line: 160, type: !31)
!3206 = !DILocalVariable(name: "s28", arg: 11, scope: !3192, file: !3193, line: 160, type: !31)
!3207 = !DILocation(line: 0, scope: !3192, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 234, column: 7, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3177, file: !610, line: 234, column: 7)
!3210 = !DILocation(line: 162, column: 7, scope: !3211, inlinedAt: !3208)
!3211 = distinct !DILexicalBlock(scope: !3192, file: !3193, line: 162, column: 7)
!3212 = !DILocalVariable(name: "s1", arg: 1, scope: !3213, file: !3193, line: 146, type: !32)
!3213 = distinct !DISubprogram(name: "strcaseeq1", scope: !3193, file: !3193, line: 146, type: !3214, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!34, !32, !32, !31, !31, !31, !31, !31, !31, !31, !31}
!3216 = !{!3212, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225}
!3217 = !DILocalVariable(name: "s2", arg: 2, scope: !3213, file: !3193, line: 146, type: !32)
!3218 = !DILocalVariable(name: "s21", arg: 3, scope: !3213, file: !3193, line: 146, type: !31)
!3219 = !DILocalVariable(name: "s22", arg: 4, scope: !3213, file: !3193, line: 146, type: !31)
!3220 = !DILocalVariable(name: "s23", arg: 5, scope: !3213, file: !3193, line: 146, type: !31)
!3221 = !DILocalVariable(name: "s24", arg: 6, scope: !3213, file: !3193, line: 146, type: !31)
!3222 = !DILocalVariable(name: "s25", arg: 7, scope: !3213, file: !3193, line: 146, type: !31)
!3223 = !DILocalVariable(name: "s26", arg: 8, scope: !3213, file: !3193, line: 146, type: !31)
!3224 = !DILocalVariable(name: "s27", arg: 9, scope: !3213, file: !3193, line: 146, type: !31)
!3225 = !DILocalVariable(name: "s28", arg: 10, scope: !3213, file: !3193, line: 146, type: !31)
!3226 = !DILocation(line: 0, scope: !3213, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 167, column: 16, scope: !3228, inlinedAt: !3208)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3193, line: 164, column: 11)
!3229 = distinct !DILexicalBlock(scope: !3211, file: !3193, line: 163, column: 5)
!3230 = !DILocation(line: 148, column: 7, scope: !3231, inlinedAt: !3227)
!3231 = distinct !DILexicalBlock(scope: !3213, file: !3193, line: 148, column: 7)
!3232 = !DILocalVariable(name: "s1", arg: 1, scope: !3233, file: !3193, line: 132, type: !32)
!3233 = distinct !DISubprogram(name: "strcaseeq2", scope: !3193, file: !3193, line: 132, type: !3234, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3236)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!34, !32, !32, !31, !31, !31, !31, !31, !31, !31}
!3236 = !{!3232, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244}
!3237 = !DILocalVariable(name: "s2", arg: 2, scope: !3233, file: !3193, line: 132, type: !32)
!3238 = !DILocalVariable(name: "s22", arg: 3, scope: !3233, file: !3193, line: 132, type: !31)
!3239 = !DILocalVariable(name: "s23", arg: 4, scope: !3233, file: !3193, line: 132, type: !31)
!3240 = !DILocalVariable(name: "s24", arg: 5, scope: !3233, file: !3193, line: 132, type: !31)
!3241 = !DILocalVariable(name: "s25", arg: 6, scope: !3233, file: !3193, line: 132, type: !31)
!3242 = !DILocalVariable(name: "s26", arg: 7, scope: !3233, file: !3193, line: 132, type: !31)
!3243 = !DILocalVariable(name: "s27", arg: 8, scope: !3233, file: !3193, line: 132, type: !31)
!3244 = !DILocalVariable(name: "s28", arg: 9, scope: !3233, file: !3193, line: 132, type: !31)
!3245 = !DILocation(line: 0, scope: !3233, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 153, column: 16, scope: !3247, inlinedAt: !3227)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !3193, line: 150, column: 11)
!3248 = distinct !DILexicalBlock(scope: !3231, file: !3193, line: 149, column: 5)
!3249 = !DILocation(line: 134, column: 7, scope: !3250, inlinedAt: !3246)
!3250 = distinct !DILexicalBlock(scope: !3233, file: !3193, line: 134, column: 7)
!3251 = !DILocalVariable(name: "s1", arg: 1, scope: !3252, file: !3193, line: 118, type: !32)
!3252 = distinct !DISubprogram(name: "strcaseeq3", scope: !3193, file: !3193, line: 118, type: !3253, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!34, !32, !32, !31, !31, !31, !31, !31, !31}
!3255 = !{!3251, !3256, !3257, !3258, !3259, !3260, !3261, !3262}
!3256 = !DILocalVariable(name: "s2", arg: 2, scope: !3252, file: !3193, line: 118, type: !32)
!3257 = !DILocalVariable(name: "s23", arg: 3, scope: !3252, file: !3193, line: 118, type: !31)
!3258 = !DILocalVariable(name: "s24", arg: 4, scope: !3252, file: !3193, line: 118, type: !31)
!3259 = !DILocalVariable(name: "s25", arg: 5, scope: !3252, file: !3193, line: 118, type: !31)
!3260 = !DILocalVariable(name: "s26", arg: 6, scope: !3252, file: !3193, line: 118, type: !31)
!3261 = !DILocalVariable(name: "s27", arg: 7, scope: !3252, file: !3193, line: 118, type: !31)
!3262 = !DILocalVariable(name: "s28", arg: 8, scope: !3252, file: !3193, line: 118, type: !31)
!3263 = !DILocation(line: 0, scope: !3252, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 139, column: 16, scope: !3265, inlinedAt: !3246)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !3193, line: 136, column: 11)
!3266 = distinct !DILexicalBlock(scope: !3250, file: !3193, line: 135, column: 5)
!3267 = !DILocation(line: 120, column: 7, scope: !3268, inlinedAt: !3264)
!3268 = distinct !DILexicalBlock(scope: !3252, file: !3193, line: 120, column: 7)
!3269 = !DILocation(line: 120, column: 7, scope: !3252, inlinedAt: !3264)
!3270 = !DILocalVariable(name: "s1", arg: 1, scope: !3271, file: !3193, line: 104, type: !32)
!3271 = distinct !DISubprogram(name: "strcaseeq4", scope: !3193, file: !3193, line: 104, type: !3272, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!34, !32, !32, !31, !31, !31, !31, !31}
!3274 = !{!3270, !3275, !3276, !3277, !3278, !3279, !3280}
!3275 = !DILocalVariable(name: "s2", arg: 2, scope: !3271, file: !3193, line: 104, type: !32)
!3276 = !DILocalVariable(name: "s24", arg: 3, scope: !3271, file: !3193, line: 104, type: !31)
!3277 = !DILocalVariable(name: "s25", arg: 4, scope: !3271, file: !3193, line: 104, type: !31)
!3278 = !DILocalVariable(name: "s26", arg: 5, scope: !3271, file: !3193, line: 104, type: !31)
!3279 = !DILocalVariable(name: "s27", arg: 6, scope: !3271, file: !3193, line: 104, type: !31)
!3280 = !DILocalVariable(name: "s28", arg: 7, scope: !3271, file: !3193, line: 104, type: !31)
!3281 = !DILocation(line: 0, scope: !3271, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 125, column: 16, scope: !3283, inlinedAt: !3264)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !3193, line: 122, column: 11)
!3284 = distinct !DILexicalBlock(scope: !3268, file: !3193, line: 121, column: 5)
!3285 = !DILocation(line: 106, column: 7, scope: !3286, inlinedAt: !3282)
!3286 = distinct !DILexicalBlock(scope: !3271, file: !3193, line: 106, column: 7)
!3287 = !DILocation(line: 106, column: 7, scope: !3271, inlinedAt: !3282)
!3288 = !DILocalVariable(name: "s1", arg: 1, scope: !3289, file: !3193, line: 90, type: !32)
!3289 = distinct !DISubprogram(name: "strcaseeq5", scope: !3193, file: !3193, line: 90, type: !3290, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3292)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!34, !32, !32, !31, !31, !31, !31}
!3292 = !{!3288, !3293, !3294, !3295, !3296, !3297}
!3293 = !DILocalVariable(name: "s2", arg: 2, scope: !3289, file: !3193, line: 90, type: !32)
!3294 = !DILocalVariable(name: "s25", arg: 3, scope: !3289, file: !3193, line: 90, type: !31)
!3295 = !DILocalVariable(name: "s26", arg: 4, scope: !3289, file: !3193, line: 90, type: !31)
!3296 = !DILocalVariable(name: "s27", arg: 5, scope: !3289, file: !3193, line: 90, type: !31)
!3297 = !DILocalVariable(name: "s28", arg: 6, scope: !3289, file: !3193, line: 90, type: !31)
!3298 = !DILocation(line: 0, scope: !3289, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 111, column: 16, scope: !3300, inlinedAt: !3282)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !3193, line: 108, column: 11)
!3301 = distinct !DILexicalBlock(scope: !3286, file: !3193, line: 107, column: 5)
!3302 = !DILocation(line: 92, column: 7, scope: !3303, inlinedAt: !3299)
!3303 = distinct !DILexicalBlock(scope: !3289, file: !3193, line: 92, column: 7)
!3304 = !DILocation(line: 92, column: 7, scope: !3289, inlinedAt: !3299)
!3305 = !DILocation(line: 235, column: 12, scope: !3209)
!3306 = !DILocation(line: 235, column: 21, scope: !3209)
!3307 = !DILocation(line: 235, column: 5, scope: !3209)
!3308 = !DILocation(line: 0, scope: !3213, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 167, column: 16, scope: !3228, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 236, column: 7, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3177, file: !610, line: 236, column: 7)
!3312 = !DILocation(line: 148, column: 7, scope: !3231, inlinedAt: !3309)
!3313 = !DILocation(line: 0, scope: !3233, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 153, column: 16, scope: !3247, inlinedAt: !3309)
!3315 = !DILocation(line: 134, column: 7, scope: !3250, inlinedAt: !3314)
!3316 = !DILocation(line: 134, column: 7, scope: !3233, inlinedAt: !3314)
!3317 = !DILocation(line: 0, scope: !3252, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 139, column: 16, scope: !3265, inlinedAt: !3314)
!3319 = !DILocation(line: 120, column: 7, scope: !3268, inlinedAt: !3318)
!3320 = !DILocation(line: 120, column: 7, scope: !3252, inlinedAt: !3318)
!3321 = !DILocation(line: 0, scope: !3271, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 125, column: 16, scope: !3283, inlinedAt: !3318)
!3323 = !DILocation(line: 106, column: 7, scope: !3286, inlinedAt: !3322)
!3324 = !DILocation(line: 106, column: 7, scope: !3271, inlinedAt: !3322)
!3325 = !DILocation(line: 0, scope: !3289, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 111, column: 16, scope: !3300, inlinedAt: !3322)
!3327 = !DILocation(line: 92, column: 7, scope: !3303, inlinedAt: !3326)
!3328 = !DILocation(line: 92, column: 7, scope: !3289, inlinedAt: !3326)
!3329 = !DILocalVariable(name: "s1", arg: 1, scope: !3330, file: !3193, line: 76, type: !32)
!3330 = distinct !DISubprogram(name: "strcaseeq6", scope: !3193, file: !3193, line: 76, type: !3331, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!34, !32, !32, !31, !31, !31}
!3333 = !{!3329, !3334, !3335, !3336, !3337}
!3334 = !DILocalVariable(name: "s2", arg: 2, scope: !3330, file: !3193, line: 76, type: !32)
!3335 = !DILocalVariable(name: "s26", arg: 3, scope: !3330, file: !3193, line: 76, type: !31)
!3336 = !DILocalVariable(name: "s27", arg: 4, scope: !3330, file: !3193, line: 76, type: !31)
!3337 = !DILocalVariable(name: "s28", arg: 5, scope: !3330, file: !3193, line: 76, type: !31)
!3338 = !DILocation(line: 0, scope: !3330, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 97, column: 16, scope: !3340, inlinedAt: !3326)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !3193, line: 94, column: 11)
!3341 = distinct !DILexicalBlock(scope: !3303, file: !3193, line: 93, column: 5)
!3342 = !DILocation(line: 78, column: 7, scope: !3343, inlinedAt: !3339)
!3343 = distinct !DILexicalBlock(scope: !3330, file: !3193, line: 78, column: 7)
!3344 = !DILocation(line: 78, column: 7, scope: !3330, inlinedAt: !3339)
!3345 = !DILocalVariable(name: "s1", arg: 1, scope: !3346, file: !3193, line: 62, type: !32)
!3346 = distinct !DISubprogram(name: "strcaseeq7", scope: !3193, file: !3193, line: 62, type: !3347, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3349)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!34, !32, !32, !31, !31}
!3349 = !{!3345, !3350, !3351, !3352}
!3350 = !DILocalVariable(name: "s2", arg: 2, scope: !3346, file: !3193, line: 62, type: !32)
!3351 = !DILocalVariable(name: "s27", arg: 3, scope: !3346, file: !3193, line: 62, type: !31)
!3352 = !DILocalVariable(name: "s28", arg: 4, scope: !3346, file: !3193, line: 62, type: !31)
!3353 = !DILocation(line: 0, scope: !3346, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 83, column: 16, scope: !3355, inlinedAt: !3339)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !3193, line: 80, column: 11)
!3356 = distinct !DILexicalBlock(scope: !3343, file: !3193, line: 79, column: 5)
!3357 = !DILocation(line: 64, column: 7, scope: !3358, inlinedAt: !3354)
!3358 = distinct !DILexicalBlock(scope: !3346, file: !3193, line: 64, column: 7)
!3359 = !DILocation(line: 236, column: 7, scope: !3177)
!3360 = !DILocation(line: 237, column: 12, scope: !3311)
!3361 = !DILocation(line: 237, column: 21, scope: !3311)
!3362 = !DILocation(line: 237, column: 5, scope: !3311)
!3363 = !DILocation(line: 239, column: 13, scope: !3177)
!3364 = !DILocation(line: 239, column: 11, scope: !3177)
!3365 = !DILocation(line: 239, column: 3, scope: !3177)
!3366 = !DILocation(line: 240, column: 1, scope: !3177)
!3367 = distinct !DISubprogram(name: "quotearg_alloc", scope: !610, file: !610, line: 799, type: !3368, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3370)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!30, !32, !89, !641}
!3370 = !{!3371, !3372, !3373}
!3371 = !DILocalVariable(name: "arg", arg: 1, scope: !3367, file: !610, line: 799, type: !32)
!3372 = !DILocalVariable(name: "argsize", arg: 2, scope: !3367, file: !610, line: 799, type: !89)
!3373 = !DILocalVariable(name: "o", arg: 3, scope: !3367, file: !610, line: 800, type: !641)
!3374 = !DILocation(line: 0, scope: !3367)
!3375 = !DILocalVariable(name: "arg", arg: 1, scope: !3376, file: !610, line: 812, type: !32)
!3376 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !610, file: !610, line: 812, type: !3377, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!30, !32, !89, !790, !641}
!3379 = !{!3375, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387}
!3380 = !DILocalVariable(name: "argsize", arg: 2, scope: !3376, file: !610, line: 812, type: !89)
!3381 = !DILocalVariable(name: "size", arg: 3, scope: !3376, file: !610, line: 812, type: !790)
!3382 = !DILocalVariable(name: "o", arg: 4, scope: !3376, file: !610, line: 813, type: !641)
!3383 = !DILocalVariable(name: "p", scope: !3376, file: !610, line: 815, type: !641)
!3384 = !DILocalVariable(name: "e", scope: !3376, file: !610, line: 816, type: !34)
!3385 = !DILocalVariable(name: "flags", scope: !3376, file: !610, line: 818, type: !34)
!3386 = !DILocalVariable(name: "bufsize", scope: !3376, file: !610, line: 819, type: !89)
!3387 = !DILocalVariable(name: "buf", scope: !3376, file: !610, line: 823, type: !30)
!3388 = !DILocation(line: 0, scope: !3376, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 802, column: 10, scope: !3367)
!3390 = !DILocation(line: 815, column: 37, scope: !3376, inlinedAt: !3389)
!3391 = !DILocation(line: 816, column: 11, scope: !3376, inlinedAt: !3389)
!3392 = !DILocation(line: 818, column: 18, scope: !3376, inlinedAt: !3389)
!3393 = !DILocation(line: 818, column: 24, scope: !3376, inlinedAt: !3389)
!3394 = !DILocation(line: 819, column: 69, scope: !3376, inlinedAt: !3389)
!3395 = !DILocation(line: 820, column: 53, scope: !3376, inlinedAt: !3389)
!3396 = !DILocation(line: 821, column: 49, scope: !3376, inlinedAt: !3389)
!3397 = !DILocation(line: 822, column: 49, scope: !3376, inlinedAt: !3389)
!3398 = !DILocation(line: 819, column: 20, scope: !3376, inlinedAt: !3389)
!3399 = !DILocation(line: 822, column: 62, scope: !3376, inlinedAt: !3389)
!3400 = !DILocalVariable(name: "n", arg: 1, scope: !3401, file: !210, line: 216, type: !89)
!3401 = distinct !DISubprogram(name: "xcharalloc", scope: !210, file: !210, line: 216, type: !3402, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3404)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!30, !89}
!3404 = !{!3400}
!3405 = !DILocation(line: 0, scope: !3401, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 823, column: 15, scope: !3376, inlinedAt: !3389)
!3407 = !DILocation(line: 218, column: 10, scope: !3401, inlinedAt: !3406)
!3408 = !DILocation(line: 824, column: 60, scope: !3376, inlinedAt: !3389)
!3409 = !DILocation(line: 826, column: 32, scope: !3376, inlinedAt: !3389)
!3410 = !DILocation(line: 826, column: 47, scope: !3376, inlinedAt: !3389)
!3411 = !DILocation(line: 824, column: 3, scope: !3376, inlinedAt: !3389)
!3412 = !DILocation(line: 827, column: 9, scope: !3376, inlinedAt: !3389)
!3413 = !DILocation(line: 802, column: 3, scope: !3367)
!3414 = !DILocation(line: 0, scope: !3376)
!3415 = !DILocation(line: 815, column: 37, scope: !3376)
!3416 = !DILocation(line: 816, column: 11, scope: !3376)
!3417 = !DILocation(line: 818, column: 18, scope: !3376)
!3418 = !DILocation(line: 818, column: 27, scope: !3376)
!3419 = !DILocation(line: 818, column: 24, scope: !3376)
!3420 = !DILocation(line: 819, column: 69, scope: !3376)
!3421 = !DILocation(line: 820, column: 53, scope: !3376)
!3422 = !DILocation(line: 821, column: 49, scope: !3376)
!3423 = !DILocation(line: 822, column: 49, scope: !3376)
!3424 = !DILocation(line: 819, column: 20, scope: !3376)
!3425 = !DILocation(line: 822, column: 62, scope: !3376)
!3426 = !DILocation(line: 0, scope: !3401, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 823, column: 15, scope: !3376)
!3428 = !DILocation(line: 218, column: 10, scope: !3401, inlinedAt: !3427)
!3429 = !DILocation(line: 824, column: 60, scope: !3376)
!3430 = !DILocation(line: 826, column: 32, scope: !3376)
!3431 = !DILocation(line: 826, column: 47, scope: !3376)
!3432 = !DILocation(line: 824, column: 3, scope: !3376)
!3433 = !DILocation(line: 827, column: 9, scope: !3376)
!3434 = !DILocation(line: 828, column: 7, scope: !3376)
!3435 = !DILocation(line: 829, column: 11, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3376, file: !610, line: 828, column: 7)
!3437 = !DILocation(line: 829, column: 5, scope: !3436)
!3438 = !DILocation(line: 830, column: 3, scope: !3376)
!3439 = distinct !DISubprogram(name: "quotearg_free", scope: !610, file: !610, line: 848, type: !116, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3440)
!3440 = !{!3441, !3442}
!3441 = !DILocalVariable(name: "sv", scope: !3439, file: !610, line: 850, type: !704)
!3442 = !DILocalVariable(name: "i", scope: !3439, file: !610, line: 851, type: !34)
!3443 = !DILocation(line: 850, column: 24, scope: !3439)
!3444 = !DILocation(line: 0, scope: !3439)
!3445 = !DILocation(line: 852, column: 19, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !610, line: 852, column: 3)
!3447 = distinct !DILexicalBlock(scope: !3439, file: !610, line: 852, column: 3)
!3448 = !DILocation(line: 852, column: 17, scope: !3446)
!3449 = !DILocation(line: 852, column: 3, scope: !3447)
!3450 = !DILocation(line: 853, column: 17, scope: !3446)
!3451 = !{!3452, !1460, i64 8}
!3452 = !{!"slotvec", !1657, i64 0, !1460, i64 8}
!3453 = !DILocation(line: 853, column: 5, scope: !3446)
!3454 = !DILocation(line: 852, column: 28, scope: !3446)
!3455 = distinct !{!3455, !3449, !3456}
!3456 = !DILocation(line: 853, column: 20, scope: !3447)
!3457 = !DILocation(line: 854, column: 13, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3439, file: !610, line: 854, column: 7)
!3459 = !DILocation(line: 854, column: 17, scope: !3458)
!3460 = !DILocation(line: 854, column: 7, scope: !3439)
!3461 = !DILocation(line: 856, column: 7, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3458, file: !610, line: 855, column: 5)
!3463 = !DILocation(line: 857, column: 21, scope: !3462)
!3464 = !{!3452, !1657, i64 0}
!3465 = !DILocation(line: 858, column: 20, scope: !3462)
!3466 = !DILocation(line: 859, column: 5, scope: !3462)
!3467 = !DILocation(line: 860, column: 10, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3439, file: !610, line: 860, column: 7)
!3469 = !DILocation(line: 860, column: 7, scope: !3439)
!3470 = !DILocation(line: 862, column: 13, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3468, file: !610, line: 861, column: 5)
!3472 = !DILocation(line: 862, column: 7, scope: !3471)
!3473 = !DILocation(line: 863, column: 15, scope: !3471)
!3474 = !DILocation(line: 864, column: 5, scope: !3471)
!3475 = !DILocation(line: 865, column: 10, scope: !3439)
!3476 = !DILocation(line: 866, column: 1, scope: !3439)
!3477 = distinct !DISubprogram(name: "quotearg_n", scope: !610, file: !610, line: 931, type: !103, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3478)
!3478 = !{!3479, !3480}
!3479 = !DILocalVariable(name: "n", arg: 1, scope: !3477, file: !610, line: 931, type: !34)
!3480 = !DILocalVariable(name: "arg", arg: 2, scope: !3477, file: !610, line: 931, type: !32)
!3481 = !DILocation(line: 0, scope: !3477)
!3482 = !DILocation(line: 933, column: 10, scope: !3477)
!3483 = !DILocation(line: 933, column: 3, scope: !3477)
!3484 = distinct !DISubprogram(name: "quotearg_n_options", scope: !610, file: !610, line: 877, type: !3485, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3487)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!30, !34, !32, !89, !641}
!3487 = !{!3488, !3489, !3490, !3491, !3492, !3493, !3494, !3497, !3498, !3500, !3501, !3502}
!3488 = !DILocalVariable(name: "n", arg: 1, scope: !3484, file: !610, line: 877, type: !34)
!3489 = !DILocalVariable(name: "arg", arg: 2, scope: !3484, file: !610, line: 877, type: !32)
!3490 = !DILocalVariable(name: "argsize", arg: 3, scope: !3484, file: !610, line: 877, type: !89)
!3491 = !DILocalVariable(name: "options", arg: 4, scope: !3484, file: !610, line: 878, type: !641)
!3492 = !DILocalVariable(name: "e", scope: !3484, file: !610, line: 880, type: !34)
!3493 = !DILocalVariable(name: "sv", scope: !3484, file: !610, line: 882, type: !704)
!3494 = !DILocalVariable(name: "preallocated", scope: !3495, file: !610, line: 889, type: !141)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !610, line: 888, column: 5)
!3496 = distinct !DILexicalBlock(scope: !3484, file: !610, line: 887, column: 7)
!3497 = !DILocalVariable(name: "nmax", scope: !3495, file: !610, line: 890, type: !34)
!3498 = !DILocalVariable(name: "size", scope: !3499, file: !610, line: 903, type: !89)
!3499 = distinct !DILexicalBlock(scope: !3484, file: !610, line: 902, column: 3)
!3500 = !DILocalVariable(name: "val", scope: !3499, file: !610, line: 904, type: !30)
!3501 = !DILocalVariable(name: "flags", scope: !3499, file: !610, line: 906, type: !34)
!3502 = !DILocalVariable(name: "qsize", scope: !3499, file: !610, line: 907, type: !89)
!3503 = !DILocation(line: 0, scope: !3484)
!3504 = !DILocation(line: 880, column: 11, scope: !3484)
!3505 = !DILocation(line: 882, column: 24, scope: !3484)
!3506 = !DILocation(line: 884, column: 9, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3484, file: !610, line: 884, column: 7)
!3508 = !DILocation(line: 884, column: 7, scope: !3484)
!3509 = !DILocation(line: 885, column: 5, scope: !3507)
!3510 = !DILocation(line: 887, column: 7, scope: !3496)
!3511 = !DILocation(line: 887, column: 14, scope: !3496)
!3512 = !DILocation(line: 887, column: 7, scope: !3484)
!3513 = !DILocation(line: 889, column: 31, scope: !3495)
!3514 = !DILocation(line: 0, scope: !3495)
!3515 = !DILocation(line: 892, column: 16, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3495, file: !610, line: 892, column: 11)
!3517 = !DILocation(line: 892, column: 11, scope: !3495)
!3518 = !DILocation(line: 893, column: 9, scope: !3516)
!3519 = !DILocation(line: 895, column: 32, scope: !3495)
!3520 = !DILocation(line: 895, column: 61, scope: !3495)
!3521 = !DILocation(line: 895, column: 58, scope: !3495)
!3522 = !DILocation(line: 895, column: 66, scope: !3495)
!3523 = !DILocation(line: 895, column: 22, scope: !3495)
!3524 = !DILocation(line: 895, column: 15, scope: !3495)
!3525 = !DILocation(line: 896, column: 11, scope: !3495)
!3526 = !DILocation(line: 897, column: 15, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3495, file: !610, line: 896, column: 11)
!3528 = !{i64 0, i64 8, !1656, i64 8, i64 8, !1459}
!3529 = !DILocation(line: 897, column: 9, scope: !3527)
!3530 = !DILocation(line: 898, column: 20, scope: !3495)
!3531 = !DILocation(line: 898, column: 18, scope: !3495)
!3532 = !DILocation(line: 898, column: 15, scope: !3495)
!3533 = !DILocation(line: 898, column: 38, scope: !3495)
!3534 = !DILocation(line: 898, column: 31, scope: !3495)
!3535 = !DILocation(line: 898, column: 48, scope: !3495)
!3536 = !DILocation(line: 0, scope: !2935, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 898, column: 7, scope: !3495)
!3538 = !DILocation(line: 71, column: 10, scope: !2935, inlinedAt: !3537)
!3539 = !DILocation(line: 899, column: 14, scope: !3495)
!3540 = !DILocation(line: 900, column: 5, scope: !3495)
!3541 = !DILocation(line: 903, column: 19, scope: !3499)
!3542 = !DILocation(line: 903, column: 25, scope: !3499)
!3543 = !DILocation(line: 0, scope: !3499)
!3544 = !DILocation(line: 904, column: 23, scope: !3499)
!3545 = !DILocation(line: 906, column: 26, scope: !3499)
!3546 = !DILocation(line: 906, column: 32, scope: !3499)
!3547 = !DILocation(line: 908, column: 55, scope: !3499)
!3548 = !DILocation(line: 909, column: 46, scope: !3499)
!3549 = !DILocation(line: 910, column: 55, scope: !3499)
!3550 = !DILocation(line: 911, column: 55, scope: !3499)
!3551 = !DILocation(line: 907, column: 20, scope: !3499)
!3552 = !DILocation(line: 913, column: 14, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3499, file: !610, line: 913, column: 9)
!3554 = !DILocation(line: 913, column: 9, scope: !3499)
!3555 = !DILocation(line: 915, column: 35, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3553, file: !610, line: 914, column: 7)
!3557 = !DILocation(line: 915, column: 20, scope: !3556)
!3558 = !DILocation(line: 916, column: 17, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3556, file: !610, line: 916, column: 13)
!3560 = !DILocation(line: 916, column: 13, scope: !3556)
!3561 = !DILocation(line: 917, column: 11, scope: !3559)
!3562 = !DILocation(line: 0, scope: !3401, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 918, column: 27, scope: !3556)
!3564 = !DILocation(line: 218, column: 10, scope: !3401, inlinedAt: !3563)
!3565 = !DILocation(line: 918, column: 19, scope: !3556)
!3566 = !DILocation(line: 919, column: 69, scope: !3556)
!3567 = !DILocation(line: 921, column: 44, scope: !3556)
!3568 = !DILocation(line: 922, column: 44, scope: !3556)
!3569 = !DILocation(line: 919, column: 9, scope: !3556)
!3570 = !DILocation(line: 923, column: 7, scope: !3556)
!3571 = !DILocation(line: 925, column: 11, scope: !3499)
!3572 = !DILocation(line: 926, column: 5, scope: !3499)
!3573 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !610, file: !610, line: 937, type: !3574, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3576)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!30, !34, !32, !89}
!3576 = !{!3577, !3578, !3579}
!3577 = !DILocalVariable(name: "n", arg: 1, scope: !3573, file: !610, line: 937, type: !34)
!3578 = !DILocalVariable(name: "arg", arg: 2, scope: !3573, file: !610, line: 937, type: !32)
!3579 = !DILocalVariable(name: "argsize", arg: 3, scope: !3573, file: !610, line: 937, type: !89)
!3580 = !DILocation(line: 0, scope: !3573)
!3581 = !DILocation(line: 939, column: 10, scope: !3573)
!3582 = !DILocation(line: 939, column: 3, scope: !3573)
!3583 = distinct !DISubprogram(name: "quotearg", scope: !610, file: !610, line: 943, type: !109, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3584)
!3584 = !{!3585}
!3585 = !DILocalVariable(name: "arg", arg: 1, scope: !3583, file: !610, line: 943, type: !32)
!3586 = !DILocation(line: 0, scope: !3583)
!3587 = !DILocation(line: 0, scope: !3477, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 945, column: 10, scope: !3583)
!3589 = !DILocation(line: 933, column: 10, scope: !3477, inlinedAt: !3588)
!3590 = !DILocation(line: 945, column: 3, scope: !3583)
!3591 = distinct !DISubprogram(name: "quotearg_mem", scope: !610, file: !610, line: 949, type: !3592, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!30, !32, !89}
!3594 = !{!3595, !3596}
!3595 = !DILocalVariable(name: "arg", arg: 1, scope: !3591, file: !610, line: 949, type: !32)
!3596 = !DILocalVariable(name: "argsize", arg: 2, scope: !3591, file: !610, line: 949, type: !89)
!3597 = !DILocation(line: 0, scope: !3591)
!3598 = !DILocation(line: 0, scope: !3573, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 951, column: 10, scope: !3591)
!3600 = !DILocation(line: 939, column: 10, scope: !3573, inlinedAt: !3599)
!3601 = !DILocation(line: 951, column: 3, scope: !3591)
!3602 = distinct !DISubprogram(name: "quotearg_n_style", scope: !610, file: !610, line: 955, type: !192, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3603)
!3603 = !{!3604, !3605, !3606, !3607}
!3604 = !DILocalVariable(name: "n", arg: 1, scope: !3602, file: !610, line: 955, type: !34)
!3605 = !DILocalVariable(name: "s", arg: 2, scope: !3602, file: !610, line: 955, type: !11)
!3606 = !DILocalVariable(name: "arg", arg: 3, scope: !3602, file: !610, line: 955, type: !32)
!3607 = !DILocalVariable(name: "o", scope: !3602, file: !610, line: 957, type: !642)
!3608 = !DILocation(line: 0, scope: !3602)
!3609 = !DILocation(line: 957, column: 3, scope: !3602)
!3610 = !DILocation(line: 957, column: 32, scope: !3602)
!3611 = !DILocalVariable(name: "style", arg: 1, scope: !3612, file: !610, line: 193, type: !11)
!3612 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !610, file: !610, line: 193, type: !3613, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3615)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!643, !11}
!3615 = !{!3611, !3616}
!3616 = !DILocalVariable(name: "o", scope: !3612, file: !610, line: 195, type: !643)
!3617 = !DILocation(line: 0, scope: !3612, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 957, column: 36, scope: !3602)
!3619 = !DILocation(line: 195, column: 26, scope: !3612, inlinedAt: !3618)
!3620 = !{!3621}
!3621 = distinct !{!3621, !3622, !"quoting_options_from_style: argument 0"}
!3622 = distinct !{!3622, !"quoting_options_from_style"}
!3623 = !DILocation(line: 196, column: 13, scope: !3624, inlinedAt: !3618)
!3624 = distinct !DILexicalBlock(scope: !3612, file: !610, line: 196, column: 7)
!3625 = !DILocation(line: 196, column: 7, scope: !3612, inlinedAt: !3618)
!3626 = !DILocation(line: 197, column: 5, scope: !3624, inlinedAt: !3618)
!3627 = !DILocation(line: 198, column: 5, scope: !3612, inlinedAt: !3618)
!3628 = !DILocation(line: 198, column: 11, scope: !3612, inlinedAt: !3618)
!3629 = !DILocation(line: 958, column: 10, scope: !3602)
!3630 = !DILocation(line: 959, column: 1, scope: !3602)
!3631 = !DILocation(line: 958, column: 3, scope: !3602)
!3632 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !610, file: !610, line: 962, type: !3633, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!30, !34, !11, !32, !89}
!3635 = !{!3636, !3637, !3638, !3639, !3640}
!3636 = !DILocalVariable(name: "n", arg: 1, scope: !3632, file: !610, line: 962, type: !34)
!3637 = !DILocalVariable(name: "s", arg: 2, scope: !3632, file: !610, line: 962, type: !11)
!3638 = !DILocalVariable(name: "arg", arg: 3, scope: !3632, file: !610, line: 963, type: !32)
!3639 = !DILocalVariable(name: "argsize", arg: 4, scope: !3632, file: !610, line: 963, type: !89)
!3640 = !DILocalVariable(name: "o", scope: !3632, file: !610, line: 965, type: !642)
!3641 = !DILocation(line: 0, scope: !3632)
!3642 = !DILocation(line: 965, column: 3, scope: !3632)
!3643 = !DILocation(line: 965, column: 32, scope: !3632)
!3644 = !DILocation(line: 0, scope: !3612, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 965, column: 36, scope: !3632)
!3646 = !DILocation(line: 195, column: 26, scope: !3612, inlinedAt: !3645)
!3647 = !{!3648}
!3648 = distinct !{!3648, !3649, !"quoting_options_from_style: argument 0"}
!3649 = distinct !{!3649, !"quoting_options_from_style"}
!3650 = !DILocation(line: 196, column: 13, scope: !3624, inlinedAt: !3645)
!3651 = !DILocation(line: 196, column: 7, scope: !3612, inlinedAt: !3645)
!3652 = !DILocation(line: 197, column: 5, scope: !3624, inlinedAt: !3645)
!3653 = !DILocation(line: 198, column: 5, scope: !3612, inlinedAt: !3645)
!3654 = !DILocation(line: 198, column: 11, scope: !3612, inlinedAt: !3645)
!3655 = !DILocation(line: 966, column: 10, scope: !3632)
!3656 = !DILocation(line: 967, column: 1, scope: !3632)
!3657 = !DILocation(line: 966, column: 3, scope: !3632)
!3658 = distinct !DISubprogram(name: "quotearg_style", scope: !610, file: !610, line: 970, type: !3659, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3661)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!30, !11, !32}
!3661 = !{!3662, !3663}
!3662 = !DILocalVariable(name: "s", arg: 1, scope: !3658, file: !610, line: 970, type: !11)
!3663 = !DILocalVariable(name: "arg", arg: 2, scope: !3658, file: !610, line: 970, type: !32)
!3664 = !DILocation(line: 195, column: 26, scope: !3612, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 957, column: 36, scope: !3602, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 972, column: 10, scope: !3658)
!3667 = !DILocation(line: 957, column: 32, scope: !3602, inlinedAt: !3666)
!3668 = !DILocation(line: 0, scope: !3658)
!3669 = !DILocation(line: 0, scope: !3602, inlinedAt: !3666)
!3670 = !DILocation(line: 957, column: 3, scope: !3602, inlinedAt: !3666)
!3671 = !DILocation(line: 0, scope: !3612, inlinedAt: !3665)
!3672 = !{!3673}
!3673 = distinct !{!3673, !3674, !"quoting_options_from_style: argument 0"}
!3674 = distinct !{!3674, !"quoting_options_from_style"}
!3675 = !DILocation(line: 196, column: 13, scope: !3624, inlinedAt: !3665)
!3676 = !DILocation(line: 196, column: 7, scope: !3612, inlinedAt: !3665)
!3677 = !DILocation(line: 197, column: 5, scope: !3624, inlinedAt: !3665)
!3678 = !DILocation(line: 198, column: 5, scope: !3612, inlinedAt: !3665)
!3679 = !DILocation(line: 198, column: 11, scope: !3612, inlinedAt: !3665)
!3680 = !DILocation(line: 958, column: 10, scope: !3602, inlinedAt: !3666)
!3681 = !DILocation(line: 959, column: 1, scope: !3602, inlinedAt: !3666)
!3682 = !DILocation(line: 972, column: 3, scope: !3658)
!3683 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !610, file: !610, line: 976, type: !3684, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!30, !11, !32, !89}
!3686 = !{!3687, !3688, !3689}
!3687 = !DILocalVariable(name: "s", arg: 1, scope: !3683, file: !610, line: 976, type: !11)
!3688 = !DILocalVariable(name: "arg", arg: 2, scope: !3683, file: !610, line: 976, type: !32)
!3689 = !DILocalVariable(name: "argsize", arg: 3, scope: !3683, file: !610, line: 976, type: !89)
!3690 = !DILocation(line: 195, column: 26, scope: !3612, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 965, column: 36, scope: !3632, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 978, column: 10, scope: !3683)
!3693 = !DILocation(line: 965, column: 32, scope: !3632, inlinedAt: !3692)
!3694 = !DILocation(line: 0, scope: !3683)
!3695 = !DILocation(line: 0, scope: !3632, inlinedAt: !3692)
!3696 = !DILocation(line: 965, column: 3, scope: !3632, inlinedAt: !3692)
!3697 = !DILocation(line: 0, scope: !3612, inlinedAt: !3691)
!3698 = !{!3699}
!3699 = distinct !{!3699, !3700, !"quoting_options_from_style: argument 0"}
!3700 = distinct !{!3700, !"quoting_options_from_style"}
!3701 = !DILocation(line: 196, column: 13, scope: !3624, inlinedAt: !3691)
!3702 = !DILocation(line: 196, column: 7, scope: !3612, inlinedAt: !3691)
!3703 = !DILocation(line: 197, column: 5, scope: !3624, inlinedAt: !3691)
!3704 = !DILocation(line: 198, column: 5, scope: !3612, inlinedAt: !3691)
!3705 = !DILocation(line: 198, column: 11, scope: !3612, inlinedAt: !3691)
!3706 = !DILocation(line: 966, column: 10, scope: !3632, inlinedAt: !3692)
!3707 = !DILocation(line: 967, column: 1, scope: !3632, inlinedAt: !3692)
!3708 = !DILocation(line: 978, column: 3, scope: !3683)
!3709 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !610, file: !610, line: 982, type: !3710, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3712)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!30, !32, !89, !31}
!3712 = !{!3713, !3714, !3715, !3716}
!3713 = !DILocalVariable(name: "arg", arg: 1, scope: !3709, file: !610, line: 982, type: !32)
!3714 = !DILocalVariable(name: "argsize", arg: 2, scope: !3709, file: !610, line: 982, type: !89)
!3715 = !DILocalVariable(name: "ch", arg: 3, scope: !3709, file: !610, line: 982, type: !31)
!3716 = !DILocalVariable(name: "options", scope: !3709, file: !610, line: 984, type: !643)
!3717 = !DILocation(line: 0, scope: !3709)
!3718 = !DILocation(line: 984, column: 3, scope: !3709)
!3719 = !DILocation(line: 984, column: 26, scope: !3709)
!3720 = !DILocation(line: 985, column: 13, scope: !3709)
!3721 = !{i64 0, i64 4, !1674, i64 4, i64 4, !1574, i64 8, i64 32, !1674, i64 40, i64 8, !1459, i64 48, i64 8, !1459}
!3722 = !DILocation(line: 0, scope: !2549, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 986, column: 3, scope: !3709)
!3724 = !DILocation(line: 156, column: 62, scope: !2549, inlinedAt: !3723)
!3725 = !DILocation(line: 156, column: 57, scope: !2549, inlinedAt: !3723)
!3726 = !DILocation(line: 157, column: 15, scope: !2549, inlinedAt: !3723)
!3727 = !DILocation(line: 158, column: 12, scope: !2549, inlinedAt: !3723)
!3728 = !DILocation(line: 158, column: 15, scope: !2549, inlinedAt: !3723)
!3729 = !DILocation(line: 158, column: 25, scope: !2549, inlinedAt: !3723)
!3730 = !DILocation(line: 159, column: 18, scope: !2549, inlinedAt: !3723)
!3731 = !DILocation(line: 159, column: 23, scope: !2549, inlinedAt: !3723)
!3732 = !DILocation(line: 159, column: 6, scope: !2549, inlinedAt: !3723)
!3733 = !DILocation(line: 987, column: 10, scope: !3709)
!3734 = !DILocation(line: 988, column: 1, scope: !3709)
!3735 = !DILocation(line: 987, column: 3, scope: !3709)
!3736 = distinct !DISubprogram(name: "quotearg_char", scope: !610, file: !610, line: 991, type: !3737, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3739)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!30, !32, !31}
!3739 = !{!3740, !3741}
!3740 = !DILocalVariable(name: "arg", arg: 1, scope: !3736, file: !610, line: 991, type: !32)
!3741 = !DILocalVariable(name: "ch", arg: 2, scope: !3736, file: !610, line: 991, type: !31)
!3742 = !DILocation(line: 984, column: 26, scope: !3709, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 993, column: 10, scope: !3736)
!3744 = !DILocation(line: 0, scope: !3736)
!3745 = !DILocation(line: 0, scope: !3709, inlinedAt: !3743)
!3746 = !DILocation(line: 984, column: 3, scope: !3709, inlinedAt: !3743)
!3747 = !DILocation(line: 985, column: 13, scope: !3709, inlinedAt: !3743)
!3748 = !DILocation(line: 0, scope: !2549, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 986, column: 3, scope: !3709, inlinedAt: !3743)
!3750 = !DILocation(line: 156, column: 62, scope: !2549, inlinedAt: !3749)
!3751 = !DILocation(line: 156, column: 57, scope: !2549, inlinedAt: !3749)
!3752 = !DILocation(line: 157, column: 15, scope: !2549, inlinedAt: !3749)
!3753 = !DILocation(line: 158, column: 12, scope: !2549, inlinedAt: !3749)
!3754 = !DILocation(line: 158, column: 15, scope: !2549, inlinedAt: !3749)
!3755 = !DILocation(line: 158, column: 25, scope: !2549, inlinedAt: !3749)
!3756 = !DILocation(line: 159, column: 18, scope: !2549, inlinedAt: !3749)
!3757 = !DILocation(line: 159, column: 23, scope: !2549, inlinedAt: !3749)
!3758 = !DILocation(line: 159, column: 6, scope: !2549, inlinedAt: !3749)
!3759 = !DILocation(line: 987, column: 10, scope: !3709, inlinedAt: !3743)
!3760 = !DILocation(line: 988, column: 1, scope: !3709, inlinedAt: !3743)
!3761 = !DILocation(line: 993, column: 3, scope: !3736)
!3762 = distinct !DISubprogram(name: "quotearg_colon", scope: !610, file: !610, line: 997, type: !109, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3763)
!3763 = !{!3764}
!3764 = !DILocalVariable(name: "arg", arg: 1, scope: !3762, file: !610, line: 997, type: !32)
!3765 = !DILocation(line: 984, column: 26, scope: !3709, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 993, column: 10, scope: !3736, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 999, column: 10, scope: !3762)
!3768 = !DILocation(line: 0, scope: !3762)
!3769 = !DILocation(line: 0, scope: !3736, inlinedAt: !3767)
!3770 = !DILocation(line: 0, scope: !3709, inlinedAt: !3766)
!3771 = !DILocation(line: 984, column: 3, scope: !3709, inlinedAt: !3766)
!3772 = !DILocation(line: 985, column: 13, scope: !3709, inlinedAt: !3766)
!3773 = !DILocation(line: 0, scope: !2549, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 986, column: 3, scope: !3709, inlinedAt: !3766)
!3775 = !DILocation(line: 156, column: 57, scope: !2549, inlinedAt: !3774)
!3776 = !DILocation(line: 158, column: 12, scope: !2549, inlinedAt: !3774)
!3777 = !DILocation(line: 159, column: 6, scope: !2549, inlinedAt: !3774)
!3778 = !DILocation(line: 987, column: 10, scope: !3709, inlinedAt: !3766)
!3779 = !DILocation(line: 988, column: 1, scope: !3709, inlinedAt: !3766)
!3780 = !DILocation(line: 999, column: 3, scope: !3762)
!3781 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !610, file: !610, line: 1003, type: !3592, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3782)
!3782 = !{!3783, !3784}
!3783 = !DILocalVariable(name: "arg", arg: 1, scope: !3781, file: !610, line: 1003, type: !32)
!3784 = !DILocalVariable(name: "argsize", arg: 2, scope: !3781, file: !610, line: 1003, type: !89)
!3785 = !DILocation(line: 984, column: 26, scope: !3709, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 1005, column: 10, scope: !3781)
!3787 = !DILocation(line: 0, scope: !3781)
!3788 = !DILocation(line: 0, scope: !3709, inlinedAt: !3786)
!3789 = !DILocation(line: 984, column: 3, scope: !3709, inlinedAt: !3786)
!3790 = !DILocation(line: 985, column: 13, scope: !3709, inlinedAt: !3786)
!3791 = !DILocation(line: 0, scope: !2549, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 986, column: 3, scope: !3709, inlinedAt: !3786)
!3793 = !DILocation(line: 156, column: 57, scope: !2549, inlinedAt: !3792)
!3794 = !DILocation(line: 158, column: 12, scope: !2549, inlinedAt: !3792)
!3795 = !DILocation(line: 159, column: 6, scope: !2549, inlinedAt: !3792)
!3796 = !DILocation(line: 987, column: 10, scope: !3709, inlinedAt: !3786)
!3797 = !DILocation(line: 988, column: 1, scope: !3709, inlinedAt: !3786)
!3798 = !DILocation(line: 1005, column: 3, scope: !3781)
!3799 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !610, file: !610, line: 1009, type: !192, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3800)
!3800 = !{!3801, !3802, !3803, !3804}
!3801 = !DILocalVariable(name: "n", arg: 1, scope: !3799, file: !610, line: 1009, type: !34)
!3802 = !DILocalVariable(name: "s", arg: 2, scope: !3799, file: !610, line: 1009, type: !11)
!3803 = !DILocalVariable(name: "arg", arg: 3, scope: !3799, file: !610, line: 1009, type: !32)
!3804 = !DILocalVariable(name: "options", scope: !3799, file: !610, line: 1011, type: !643)
!3805 = !DILocation(line: 195, column: 26, scope: !3612, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 1012, column: 13, scope: !3799)
!3807 = !DILocation(line: 0, scope: !3799)
!3808 = !DILocation(line: 1011, column: 3, scope: !3799)
!3809 = !DILocation(line: 1011, column: 26, scope: !3799)
!3810 = !DILocation(line: 1012, column: 13, scope: !3799)
!3811 = !DILocation(line: 0, scope: !3612, inlinedAt: !3806)
!3812 = !{!3813}
!3813 = distinct !{!3813, !3814, !"quoting_options_from_style: argument 0"}
!3814 = distinct !{!3814, !"quoting_options_from_style"}
!3815 = !DILocation(line: 196, column: 13, scope: !3624, inlinedAt: !3806)
!3816 = !DILocation(line: 196, column: 7, scope: !3612, inlinedAt: !3806)
!3817 = !DILocation(line: 197, column: 5, scope: !3624, inlinedAt: !3806)
!3818 = !DILocation(line: 0, scope: !2549, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 1013, column: 3, scope: !3799)
!3820 = !DILocation(line: 156, column: 57, scope: !2549, inlinedAt: !3819)
!3821 = !DILocation(line: 158, column: 12, scope: !2549, inlinedAt: !3819)
!3822 = !DILocation(line: 159, column: 6, scope: !2549, inlinedAt: !3819)
!3823 = !DILocation(line: 1014, column: 10, scope: !3799)
!3824 = !DILocation(line: 1015, column: 1, scope: !3799)
!3825 = !DILocation(line: 1014, column: 3, scope: !3799)
!3826 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !610, file: !610, line: 1018, type: !3827, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!30, !34, !32, !32, !32}
!3829 = !{!3830, !3831, !3832, !3833}
!3830 = !DILocalVariable(name: "n", arg: 1, scope: !3826, file: !610, line: 1018, type: !34)
!3831 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3826, file: !610, line: 1018, type: !32)
!3832 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3826, file: !610, line: 1019, type: !32)
!3833 = !DILocalVariable(name: "arg", arg: 4, scope: !3826, file: !610, line: 1019, type: !32)
!3834 = !DILocalVariable(name: "o", scope: !3835, file: !610, line: 1030, type: !643)
!3835 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !610, file: !610, line: 1026, type: !3836, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3838)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!30, !34, !32, !32, !32, !89}
!3838 = !{!3839, !3840, !3841, !3842, !3843, !3834}
!3839 = !DILocalVariable(name: "n", arg: 1, scope: !3835, file: !610, line: 1026, type: !34)
!3840 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3835, file: !610, line: 1026, type: !32)
!3841 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3835, file: !610, line: 1027, type: !32)
!3842 = !DILocalVariable(name: "arg", arg: 4, scope: !3835, file: !610, line: 1028, type: !32)
!3843 = !DILocalVariable(name: "argsize", arg: 5, scope: !3835, file: !610, line: 1028, type: !89)
!3844 = !DILocation(line: 1030, column: 26, scope: !3835, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 1021, column: 10, scope: !3826)
!3846 = !DILocation(line: 0, scope: !3826)
!3847 = !DILocation(line: 0, scope: !3835, inlinedAt: !3845)
!3848 = !DILocation(line: 1030, column: 3, scope: !3835, inlinedAt: !3845)
!3849 = !DILocation(line: 1030, column: 30, scope: !3835, inlinedAt: !3845)
!3850 = !DILocation(line: 0, scope: !2589, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 1031, column: 3, scope: !3835, inlinedAt: !3845)
!3852 = !DILocation(line: 184, column: 6, scope: !2589, inlinedAt: !3851)
!3853 = !DILocation(line: 184, column: 12, scope: !2589, inlinedAt: !3851)
!3854 = !DILocation(line: 185, column: 8, scope: !2603, inlinedAt: !3851)
!3855 = !DILocation(line: 185, column: 23, scope: !2603, inlinedAt: !3851)
!3856 = !DILocation(line: 185, column: 19, scope: !2603, inlinedAt: !3851)
!3857 = !DILocation(line: 186, column: 5, scope: !2603, inlinedAt: !3851)
!3858 = !DILocation(line: 187, column: 6, scope: !2589, inlinedAt: !3851)
!3859 = !DILocation(line: 187, column: 17, scope: !2589, inlinedAt: !3851)
!3860 = !DILocation(line: 188, column: 6, scope: !2589, inlinedAt: !3851)
!3861 = !DILocation(line: 188, column: 18, scope: !2589, inlinedAt: !3851)
!3862 = !DILocation(line: 1032, column: 10, scope: !3835, inlinedAt: !3845)
!3863 = !DILocation(line: 1033, column: 1, scope: !3835, inlinedAt: !3845)
!3864 = !DILocation(line: 1021, column: 3, scope: !3826)
!3865 = !DILocation(line: 0, scope: !3835)
!3866 = !DILocation(line: 1030, column: 3, scope: !3835)
!3867 = !DILocation(line: 1030, column: 26, scope: !3835)
!3868 = !DILocation(line: 1030, column: 30, scope: !3835)
!3869 = !DILocation(line: 0, scope: !2589, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 1031, column: 3, scope: !3835)
!3871 = !DILocation(line: 184, column: 6, scope: !2589, inlinedAt: !3870)
!3872 = !DILocation(line: 184, column: 12, scope: !2589, inlinedAt: !3870)
!3873 = !DILocation(line: 185, column: 8, scope: !2603, inlinedAt: !3870)
!3874 = !DILocation(line: 185, column: 23, scope: !2603, inlinedAt: !3870)
!3875 = !DILocation(line: 185, column: 19, scope: !2603, inlinedAt: !3870)
!3876 = !DILocation(line: 186, column: 5, scope: !2603, inlinedAt: !3870)
!3877 = !DILocation(line: 187, column: 6, scope: !2589, inlinedAt: !3870)
!3878 = !DILocation(line: 187, column: 17, scope: !2589, inlinedAt: !3870)
!3879 = !DILocation(line: 188, column: 6, scope: !2589, inlinedAt: !3870)
!3880 = !DILocation(line: 188, column: 18, scope: !2589, inlinedAt: !3870)
!3881 = !DILocation(line: 1032, column: 10, scope: !3835)
!3882 = !DILocation(line: 1033, column: 1, scope: !3835)
!3883 = !DILocation(line: 1032, column: 3, scope: !3835)
!3884 = distinct !DISubprogram(name: "quotearg_custom", scope: !610, file: !610, line: 1036, type: !3885, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!30, !32, !32, !32}
!3887 = !{!3888, !3889, !3890}
!3888 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3884, file: !610, line: 1036, type: !32)
!3889 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3884, file: !610, line: 1036, type: !32)
!3890 = !DILocalVariable(name: "arg", arg: 3, scope: !3884, file: !610, line: 1037, type: !32)
!3891 = !DILocation(line: 1030, column: 26, scope: !3835, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 1021, column: 10, scope: !3826, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 1039, column: 10, scope: !3884)
!3894 = !DILocation(line: 0, scope: !3884)
!3895 = !DILocation(line: 0, scope: !3826, inlinedAt: !3893)
!3896 = !DILocation(line: 0, scope: !3835, inlinedAt: !3892)
!3897 = !DILocation(line: 1030, column: 3, scope: !3835, inlinedAt: !3892)
!3898 = !DILocation(line: 1030, column: 30, scope: !3835, inlinedAt: !3892)
!3899 = !DILocation(line: 0, scope: !2589, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 1031, column: 3, scope: !3835, inlinedAt: !3892)
!3901 = !DILocation(line: 184, column: 6, scope: !2589, inlinedAt: !3900)
!3902 = !DILocation(line: 184, column: 12, scope: !2589, inlinedAt: !3900)
!3903 = !DILocation(line: 185, column: 8, scope: !2603, inlinedAt: !3900)
!3904 = !DILocation(line: 185, column: 23, scope: !2603, inlinedAt: !3900)
!3905 = !DILocation(line: 185, column: 19, scope: !2603, inlinedAt: !3900)
!3906 = !DILocation(line: 186, column: 5, scope: !2603, inlinedAt: !3900)
!3907 = !DILocation(line: 187, column: 6, scope: !2589, inlinedAt: !3900)
!3908 = !DILocation(line: 187, column: 17, scope: !2589, inlinedAt: !3900)
!3909 = !DILocation(line: 188, column: 6, scope: !2589, inlinedAt: !3900)
!3910 = !DILocation(line: 188, column: 18, scope: !2589, inlinedAt: !3900)
!3911 = !DILocation(line: 1032, column: 10, scope: !3835, inlinedAt: !3892)
!3912 = !DILocation(line: 1033, column: 1, scope: !3835, inlinedAt: !3892)
!3913 = !DILocation(line: 1039, column: 3, scope: !3884)
!3914 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !610, file: !610, line: 1043, type: !3915, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3917)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!30, !32, !32, !32, !89}
!3917 = !{!3918, !3919, !3920, !3921}
!3918 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3914, file: !610, line: 1043, type: !32)
!3919 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3914, file: !610, line: 1043, type: !32)
!3920 = !DILocalVariable(name: "arg", arg: 3, scope: !3914, file: !610, line: 1044, type: !32)
!3921 = !DILocalVariable(name: "argsize", arg: 4, scope: !3914, file: !610, line: 1044, type: !89)
!3922 = !DILocation(line: 1030, column: 26, scope: !3835, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 1046, column: 10, scope: !3914)
!3924 = !DILocation(line: 0, scope: !3914)
!3925 = !DILocation(line: 0, scope: !3835, inlinedAt: !3923)
!3926 = !DILocation(line: 1030, column: 3, scope: !3835, inlinedAt: !3923)
!3927 = !DILocation(line: 1030, column: 30, scope: !3835, inlinedAt: !3923)
!3928 = !DILocation(line: 0, scope: !2589, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 1031, column: 3, scope: !3835, inlinedAt: !3923)
!3930 = !DILocation(line: 184, column: 6, scope: !2589, inlinedAt: !3929)
!3931 = !DILocation(line: 184, column: 12, scope: !2589, inlinedAt: !3929)
!3932 = !DILocation(line: 185, column: 8, scope: !2603, inlinedAt: !3929)
!3933 = !DILocation(line: 185, column: 23, scope: !2603, inlinedAt: !3929)
!3934 = !DILocation(line: 185, column: 19, scope: !2603, inlinedAt: !3929)
!3935 = !DILocation(line: 186, column: 5, scope: !2603, inlinedAt: !3929)
!3936 = !DILocation(line: 187, column: 6, scope: !2589, inlinedAt: !3929)
!3937 = !DILocation(line: 187, column: 17, scope: !2589, inlinedAt: !3929)
!3938 = !DILocation(line: 188, column: 6, scope: !2589, inlinedAt: !3929)
!3939 = !DILocation(line: 188, column: 18, scope: !2589, inlinedAt: !3929)
!3940 = !DILocation(line: 1032, column: 10, scope: !3835, inlinedAt: !3923)
!3941 = !DILocation(line: 1033, column: 1, scope: !3835, inlinedAt: !3923)
!3942 = !DILocation(line: 1046, column: 3, scope: !3914)
!3943 = distinct !DISubprogram(name: "quote_n_mem", scope: !610, file: !610, line: 1061, type: !3944, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3946)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!32, !34, !32, !89}
!3946 = !{!3947, !3948, !3949}
!3947 = !DILocalVariable(name: "n", arg: 1, scope: !3943, file: !610, line: 1061, type: !34)
!3948 = !DILocalVariable(name: "arg", arg: 2, scope: !3943, file: !610, line: 1061, type: !32)
!3949 = !DILocalVariable(name: "argsize", arg: 3, scope: !3943, file: !610, line: 1061, type: !89)
!3950 = !DILocation(line: 0, scope: !3943)
!3951 = !DILocation(line: 1063, column: 10, scope: !3943)
!3952 = !DILocation(line: 1063, column: 3, scope: !3943)
!3953 = distinct !DISubprogram(name: "quote_mem", scope: !610, file: !610, line: 1067, type: !3954, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3956)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!32, !32, !89}
!3956 = !{!3957, !3958}
!3957 = !DILocalVariable(name: "arg", arg: 1, scope: !3953, file: !610, line: 1067, type: !32)
!3958 = !DILocalVariable(name: "argsize", arg: 2, scope: !3953, file: !610, line: 1067, type: !89)
!3959 = !DILocation(line: 0, scope: !3953)
!3960 = !DILocation(line: 0, scope: !3943, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 1069, column: 10, scope: !3953)
!3962 = !DILocation(line: 1063, column: 10, scope: !3943, inlinedAt: !3961)
!3963 = !DILocation(line: 1069, column: 3, scope: !3953)
!3964 = distinct !DISubprogram(name: "quote_n", scope: !610, file: !610, line: 1073, type: !3965, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3967)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!32, !34, !32}
!3967 = !{!3968, !3969}
!3968 = !DILocalVariable(name: "n", arg: 1, scope: !3964, file: !610, line: 1073, type: !34)
!3969 = !DILocalVariable(name: "arg", arg: 2, scope: !3964, file: !610, line: 1073, type: !32)
!3970 = !DILocation(line: 0, scope: !3964)
!3971 = !DILocation(line: 0, scope: !3943, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 1075, column: 10, scope: !3964)
!3973 = !DILocation(line: 1063, column: 10, scope: !3943, inlinedAt: !3972)
!3974 = !DILocation(line: 1075, column: 3, scope: !3964)
!3975 = distinct !DISubprogram(name: "quote", scope: !610, file: !610, line: 1079, type: !144, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3976)
!3976 = !{!3977}
!3977 = !DILocalVariable(name: "arg", arg: 1, scope: !3975, file: !610, line: 1079, type: !32)
!3978 = !DILocation(line: 0, scope: !3975)
!3979 = !DILocation(line: 0, scope: !3964, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 1081, column: 10, scope: !3975)
!3981 = !DILocation(line: 0, scope: !3943, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 1075, column: 10, scope: !3964, inlinedAt: !3980)
!3983 = !DILocation(line: 1063, column: 10, scope: !3943, inlinedAt: !3982)
!3984 = !DILocation(line: 1081, column: 3, scope: !3975)
!3985 = distinct !DISubprogram(name: "setlocale_null_r", scope: !739, file: !739, line: 269, type: !3986, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3988)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!34, !34, !30, !89}
!3988 = !{!3989, !3990, !3991}
!3989 = !DILocalVariable(name: "category", arg: 1, scope: !3985, file: !739, line: 269, type: !34)
!3990 = !DILocalVariable(name: "buf", arg: 2, scope: !3985, file: !739, line: 269, type: !30)
!3991 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3985, file: !739, line: 269, type: !89)
!3992 = !DILocation(line: 0, scope: !3985)
!3993 = !DILocalVariable(name: "category", arg: 1, scope: !3994, file: !739, line: 91, type: !34)
!3994 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !739, file: !739, line: 91, type: !3986, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3995)
!3995 = !{!3993, !3996, !3997, !3998, !3999}
!3996 = !DILocalVariable(name: "buf", arg: 2, scope: !3994, file: !739, line: 91, type: !30)
!3997 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3994, file: !739, line: 91, type: !89)
!3998 = !DILocalVariable(name: "result", scope: !3994, file: !739, line: 140, type: !32)
!3999 = !DILocalVariable(name: "length", scope: !4000, file: !739, line: 154, type: !89)
!4000 = distinct !DILexicalBlock(scope: !4001, file: !739, line: 153, column: 5)
!4001 = distinct !DILexicalBlock(scope: !3994, file: !739, line: 142, column: 7)
!4002 = !DILocation(line: 0, scope: !3994, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 274, column: 10, scope: !3985)
!4004 = !DILocalVariable(name: "category", arg: 1, scope: !4005, file: !739, line: 60, type: !34)
!4005 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !739, file: !739, line: 60, type: !503, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !4006)
!4006 = !{!4004, !4007}
!4007 = !DILocalVariable(name: "result", scope: !4005, file: !739, line: 62, type: !32)
!4008 = !DILocation(line: 0, scope: !4005, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 140, column: 24, scope: !3994, inlinedAt: !4003)
!4010 = !DILocation(line: 62, column: 24, scope: !4005, inlinedAt: !4009)
!4011 = !DILocation(line: 142, column: 14, scope: !4001, inlinedAt: !4003)
!4012 = !DILocation(line: 142, column: 7, scope: !3994, inlinedAt: !4003)
!4013 = !DILocation(line: 145, column: 19, scope: !4014, inlinedAt: !4003)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !739, line: 145, column: 11)
!4015 = distinct !DILexicalBlock(scope: !4001, file: !739, line: 143, column: 5)
!4016 = !DILocation(line: 145, column: 11, scope: !4015, inlinedAt: !4003)
!4017 = !DILocation(line: 149, column: 16, scope: !4014, inlinedAt: !4003)
!4018 = !DILocation(line: 149, column: 9, scope: !4014, inlinedAt: !4003)
!4019 = !DILocation(line: 154, column: 23, scope: !4000, inlinedAt: !4003)
!4020 = !DILocation(line: 0, scope: !4000, inlinedAt: !4003)
!4021 = !DILocation(line: 155, column: 18, scope: !4022, inlinedAt: !4003)
!4022 = distinct !DILexicalBlock(scope: !4000, file: !739, line: 155, column: 11)
!4023 = !DILocation(line: 155, column: 11, scope: !4000, inlinedAt: !4003)
!4024 = !DILocation(line: 157, column: 39, scope: !4025, inlinedAt: !4003)
!4025 = distinct !DILexicalBlock(scope: !4022, file: !739, line: 156, column: 9)
!4026 = !DILocalVariable(name: "__dest", arg: 1, scope: !4027, file: !1724, line: 31, type: !4030)
!4027 = distinct !DISubprogram(name: "memcpy", scope: !1724, file: !1724, line: 31, type: !4028, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !4032)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!87, !4030, !4031, !89}
!4030 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!4031 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !636)
!4032 = !{!4026, !4033, !4034}
!4033 = !DILocalVariable(name: "__src", arg: 2, scope: !4027, file: !1724, line: 31, type: !4031)
!4034 = !DILocalVariable(name: "__len", arg: 3, scope: !4027, file: !1724, line: 31, type: !89)
!4035 = !DILocation(line: 0, scope: !4027, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 157, column: 11, scope: !4025, inlinedAt: !4003)
!4037 = !DILocation(line: 34, column: 10, scope: !4027, inlinedAt: !4036)
!4038 = !DILocation(line: 158, column: 11, scope: !4025, inlinedAt: !4003)
!4039 = !DILocation(line: 162, column: 23, scope: !4040, inlinedAt: !4003)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !739, line: 162, column: 15)
!4041 = distinct !DILexicalBlock(scope: !4022, file: !739, line: 161, column: 9)
!4042 = !DILocation(line: 162, column: 15, scope: !4041, inlinedAt: !4003)
!4043 = !DILocation(line: 167, column: 44, scope: !4044, inlinedAt: !4003)
!4044 = distinct !DILexicalBlock(scope: !4040, file: !739, line: 163, column: 13)
!4045 = !DILocation(line: 0, scope: !4027, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 167, column: 15, scope: !4044, inlinedAt: !4003)
!4047 = !DILocation(line: 34, column: 10, scope: !4027, inlinedAt: !4046)
!4048 = !DILocation(line: 168, column: 15, scope: !4044, inlinedAt: !4003)
!4049 = !DILocation(line: 168, column: 32, scope: !4044, inlinedAt: !4003)
!4050 = !DILocation(line: 169, column: 13, scope: !4044, inlinedAt: !4003)
!4051 = !DILocation(line: 0, scope: !4001, inlinedAt: !4003)
!4052 = !DILocation(line: 274, column: 3, scope: !3985)
!4053 = distinct !DISubprogram(name: "setlocale_null", scope: !739, file: !739, line: 301, type: !503, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !4054)
!4054 = !{!4055}
!4055 = !DILocalVariable(name: "category", arg: 1, scope: !4053, file: !739, line: 301, type: !34)
!4056 = !DILocation(line: 0, scope: !4053)
!4057 = !DILocation(line: 0, scope: !4005, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 304, column: 10, scope: !4053)
!4059 = !DILocation(line: 62, column: 24, scope: !4005, inlinedAt: !4058)
!4060 = !DILocation(line: 304, column: 3, scope: !4053)
!4061 = distinct !DISubprogram(name: "version_etc_arn", scope: !742, file: !742, line: 61, type: !4062, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !4068)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !4064, !32, !32, !32, !4067, !89}
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4066, line: 7, baseType: !752)
!4066 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!4068 = !{!4069, !4070, !4071, !4072, !4073, !4074}
!4069 = !DILocalVariable(name: "stream", arg: 1, scope: !4061, file: !742, line: 61, type: !4064)
!4070 = !DILocalVariable(name: "command_name", arg: 2, scope: !4061, file: !742, line: 62, type: !32)
!4071 = !DILocalVariable(name: "package", arg: 3, scope: !4061, file: !742, line: 62, type: !32)
!4072 = !DILocalVariable(name: "version", arg: 4, scope: !4061, file: !742, line: 63, type: !32)
!4073 = !DILocalVariable(name: "authors", arg: 5, scope: !4061, file: !742, line: 64, type: !4067)
!4074 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4061, file: !742, line: 64, type: !89)
!4075 = !DILocation(line: 0, scope: !4061)
!4076 = !DILocation(line: 66, column: 7, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4061, file: !742, line: 66, column: 7)
!4078 = !DILocation(line: 66, column: 7, scope: !4061)
!4079 = !DILocation(line: 67, column: 5, scope: !4077)
!4080 = !DILocation(line: 69, column: 5, scope: !4077)
!4081 = !DILocation(line: 83, column: 3, scope: !4061)
!4082 = !DILocation(line: 85, column: 3, scope: !4061)
!4083 = !DILocation(line: 88, column: 3, scope: !4061)
!4084 = !DILocation(line: 95, column: 3, scope: !4061)
!4085 = !DILocation(line: 97, column: 3, scope: !4061)
!4086 = !DILocation(line: 105, column: 7, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4061, file: !742, line: 98, column: 5)
!4088 = !DILocation(line: 106, column: 7, scope: !4087)
!4089 = !DILocation(line: 109, column: 7, scope: !4087)
!4090 = !DILocation(line: 110, column: 7, scope: !4087)
!4091 = !DILocation(line: 113, column: 7, scope: !4087)
!4092 = !DILocation(line: 115, column: 7, scope: !4087)
!4093 = !DILocation(line: 120, column: 7, scope: !4087)
!4094 = !DILocation(line: 122, column: 7, scope: !4087)
!4095 = !DILocation(line: 127, column: 7, scope: !4087)
!4096 = !DILocation(line: 129, column: 7, scope: !4087)
!4097 = !DILocation(line: 134, column: 7, scope: !4087)
!4098 = !DILocation(line: 137, column: 7, scope: !4087)
!4099 = !DILocation(line: 142, column: 7, scope: !4087)
!4100 = !DILocation(line: 145, column: 7, scope: !4087)
!4101 = !DILocation(line: 150, column: 7, scope: !4087)
!4102 = !DILocation(line: 154, column: 7, scope: !4087)
!4103 = !DILocation(line: 159, column: 7, scope: !4087)
!4104 = !DILocation(line: 163, column: 7, scope: !4087)
!4105 = !DILocation(line: 170, column: 7, scope: !4087)
!4106 = !DILocation(line: 174, column: 7, scope: !4087)
!4107 = !DILocation(line: 176, column: 1, scope: !4061)
!4108 = distinct !DISubprogram(name: "version_etc_ar", scope: !742, file: !742, line: 183, type: !4109, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !4111)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{null, !4064, !32, !32, !32, !4067}
!4111 = !{!4112, !4113, !4114, !4115, !4116, !4117}
!4112 = !DILocalVariable(name: "stream", arg: 1, scope: !4108, file: !742, line: 183, type: !4064)
!4113 = !DILocalVariable(name: "command_name", arg: 2, scope: !4108, file: !742, line: 184, type: !32)
!4114 = !DILocalVariable(name: "package", arg: 3, scope: !4108, file: !742, line: 184, type: !32)
!4115 = !DILocalVariable(name: "version", arg: 4, scope: !4108, file: !742, line: 185, type: !32)
!4116 = !DILocalVariable(name: "authors", arg: 5, scope: !4108, file: !742, line: 185, type: !4067)
!4117 = !DILocalVariable(name: "n_authors", scope: !4108, file: !742, line: 187, type: !89)
!4118 = !DILocation(line: 0, scope: !4108)
!4119 = !DILocation(line: 189, column: 8, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4108, file: !742, line: 189, column: 3)
!4121 = !DILocation(line: 0, scope: !4120)
!4122 = !DILocation(line: 189, column: 23, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4120, file: !742, line: 189, column: 3)
!4124 = !DILocation(line: 189, column: 3, scope: !4120)
!4125 = !DILocation(line: 189, column: 52, scope: !4123)
!4126 = distinct !{!4126, !4124, !4127}
!4127 = !DILocation(line: 190, column: 5, scope: !4120)
!4128 = !DILocation(line: 191, column: 3, scope: !4108)
!4129 = !DILocation(line: 192, column: 1, scope: !4108)
!4130 = distinct !DISubprogram(name: "version_etc_va", scope: !742, file: !742, line: 199, type: !4131, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !4140)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{null, !4064, !32, !32, !32, !4133}
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !742, line: 192, size: 192, elements: !4135)
!4135 = !{!4136, !4137, !4138, !4139}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4134, file: !742, line: 192, baseType: !7, size: 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4134, file: !742, line: 192, baseType: !7, size: 32, offset: 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4134, file: !742, line: 192, baseType: !87, size: 64, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4134, file: !742, line: 192, baseType: !87, size: 64, offset: 128)
!4140 = !{!4141, !4142, !4143, !4144, !4145, !4146, !4147}
!4141 = !DILocalVariable(name: "stream", arg: 1, scope: !4130, file: !742, line: 199, type: !4064)
!4142 = !DILocalVariable(name: "command_name", arg: 2, scope: !4130, file: !742, line: 200, type: !32)
!4143 = !DILocalVariable(name: "package", arg: 3, scope: !4130, file: !742, line: 200, type: !32)
!4144 = !DILocalVariable(name: "version", arg: 4, scope: !4130, file: !742, line: 201, type: !32)
!4145 = !DILocalVariable(name: "authors", arg: 5, scope: !4130, file: !742, line: 201, type: !4133)
!4146 = !DILocalVariable(name: "n_authors", scope: !4130, file: !742, line: 203, type: !89)
!4147 = !DILocalVariable(name: "authtab", scope: !4130, file: !742, line: 204, type: !4148)
!4148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 640, elements: !694)
!4149 = !DILocation(line: 0, scope: !4130)
!4150 = !DILocation(line: 204, column: 3, scope: !4130)
!4151 = !DILocation(line: 204, column: 15, scope: !4130)
!4152 = !DILocation(line: 0, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !742, line: 206, column: 3)
!4154 = distinct !DILexicalBlock(scope: !4130, file: !742, line: 206, column: 3)
!4155 = !DILocation(line: 208, column: 35, scope: !4153)
!4156 = !DILocation(line: 208, column: 14, scope: !4153)
!4157 = !DILocation(line: 208, column: 33, scope: !4153)
!4158 = !DILocation(line: 208, column: 67, scope: !4153)
!4159 = !DILocation(line: 206, column: 3, scope: !4154)
!4160 = !DILocation(line: 0, scope: !4154)
!4161 = !DILocation(line: 211, column: 3, scope: !4130)
!4162 = !DILocation(line: 213, column: 1, scope: !4130)
!4163 = distinct !DISubprogram(name: "version_etc", scope: !742, file: !742, line: 230, type: !4164, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !4166)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{null, !4064, !32, !32, !32, null}
!4166 = !{!4167, !4168, !4169, !4170, !4171}
!4167 = !DILocalVariable(name: "stream", arg: 1, scope: !4163, file: !742, line: 230, type: !4064)
!4168 = !DILocalVariable(name: "command_name", arg: 2, scope: !4163, file: !742, line: 231, type: !32)
!4169 = !DILocalVariable(name: "package", arg: 3, scope: !4163, file: !742, line: 231, type: !32)
!4170 = !DILocalVariable(name: "version", arg: 4, scope: !4163, file: !742, line: 232, type: !32)
!4171 = !DILocalVariable(name: "authors", scope: !4163, file: !742, line: 234, type: !4172)
!4172 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !37, line: 52, baseType: !4173)
!4173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4174, line: 32, baseType: !4175)
!4174 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!4175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !742, line: 234, baseType: !4176)
!4176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4134, size: 192, elements: !72)
!4177 = !DILocation(line: 0, scope: !4163)
!4178 = !DILocation(line: 234, column: 3, scope: !4163)
!4179 = !DILocation(line: 234, column: 11, scope: !4163)
!4180 = !DILocation(line: 236, column: 3, scope: !4163)
!4181 = !DILocation(line: 237, column: 3, scope: !4163)
!4182 = !DILocation(line: 238, column: 3, scope: !4163)
!4183 = !DILocation(line: 239, column: 1, scope: !4163)
!4184 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !742, file: !742, line: 242, type: !116, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !35)
!4185 = !DILocation(line: 244, column: 3, scope: !4184)
!4186 = !DILocation(line: 249, column: 3, scope: !4184)
!4187 = !DILocation(line: 255, column: 3, scope: !4184)
!4188 = !DILocation(line: 260, column: 3, scope: !4184)
!4189 = !DILocation(line: 262, column: 1, scope: !4184)
!4190 = distinct !DISubprogram(name: "xnmalloc", scope: !210, file: !210, line: 99, type: !4191, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4193)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!87, !89, !89}
!4193 = !{!4194, !4195}
!4194 = !DILocalVariable(name: "n", arg: 1, scope: !4190, file: !210, line: 99, type: !89)
!4195 = !DILocalVariable(name: "s", arg: 2, scope: !4190, file: !210, line: 99, type: !89)
!4196 = !DILocation(line: 0, scope: !4190)
!4197 = !DILocation(line: 101, column: 7, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4190, file: !210, line: 101, column: 7)
!4199 = !DILocation(line: 101, column: 7, scope: !4190)
!4200 = !DILocation(line: 102, column: 5, scope: !4198)
!4201 = !DILocation(line: 103, column: 21, scope: !4190)
!4202 = !DILocalVariable(name: "n", arg: 1, scope: !4203, file: !784, line: 39, type: !89)
!4203 = distinct !DISubprogram(name: "xmalloc", scope: !784, file: !784, line: 39, type: !4204, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4206)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!87, !89}
!4206 = !{!4202, !4207}
!4207 = !DILocalVariable(name: "p", scope: !4203, file: !784, line: 41, type: !87)
!4208 = !DILocation(line: 0, scope: !4203, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 103, column: 10, scope: !4190)
!4210 = !DILocation(line: 41, column: 13, scope: !4203, inlinedAt: !4209)
!4211 = !DILocation(line: 42, column: 8, scope: !4212, inlinedAt: !4209)
!4212 = distinct !DILexicalBlock(scope: !4203, file: !784, line: 42, column: 7)
!4213 = !DILocation(line: 42, column: 15, scope: !4212, inlinedAt: !4209)
!4214 = !DILocation(line: 42, column: 10, scope: !4212, inlinedAt: !4209)
!4215 = !DILocation(line: 43, column: 5, scope: !4212, inlinedAt: !4209)
!4216 = !DILocation(line: 103, column: 3, scope: !4190)
!4217 = !DILocation(line: 0, scope: !4203)
!4218 = !DILocation(line: 41, column: 13, scope: !4203)
!4219 = !DILocation(line: 42, column: 8, scope: !4212)
!4220 = !DILocation(line: 42, column: 15, scope: !4212)
!4221 = !DILocation(line: 42, column: 10, scope: !4212)
!4222 = !DILocation(line: 43, column: 5, scope: !4212)
!4223 = !DILocation(line: 44, column: 3, scope: !4203)
!4224 = distinct !DISubprogram(name: "xnrealloc", scope: !210, file: !210, line: 112, type: !4225, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4227)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!87, !87, !89, !89}
!4227 = !{!4228, !4229, !4230}
!4228 = !DILocalVariable(name: "p", arg: 1, scope: !4224, file: !210, line: 112, type: !87)
!4229 = !DILocalVariable(name: "n", arg: 2, scope: !4224, file: !210, line: 112, type: !89)
!4230 = !DILocalVariable(name: "s", arg: 3, scope: !4224, file: !210, line: 112, type: !89)
!4231 = !DILocation(line: 0, scope: !4224)
!4232 = !DILocation(line: 114, column: 7, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4224, file: !210, line: 114, column: 7)
!4234 = !DILocation(line: 114, column: 7, scope: !4224)
!4235 = !DILocation(line: 115, column: 5, scope: !4233)
!4236 = !DILocation(line: 116, column: 25, scope: !4224)
!4237 = !DILocalVariable(name: "p", arg: 1, scope: !4238, file: !784, line: 51, type: !87)
!4238 = distinct !DISubprogram(name: "xrealloc", scope: !784, file: !784, line: 51, type: !4239, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4241)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!87, !87, !89}
!4241 = !{!4237, !4242}
!4242 = !DILocalVariable(name: "n", arg: 2, scope: !4238, file: !784, line: 51, type: !89)
!4243 = !DILocation(line: 0, scope: !4238, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 116, column: 10, scope: !4224)
!4245 = !DILocation(line: 53, column: 8, scope: !4246, inlinedAt: !4244)
!4246 = distinct !DILexicalBlock(scope: !4238, file: !784, line: 53, column: 7)
!4247 = !DILocation(line: 53, column: 13, scope: !4246, inlinedAt: !4244)
!4248 = !DILocation(line: 53, column: 10, scope: !4246, inlinedAt: !4244)
!4249 = !DILocation(line: 57, column: 7, scope: !4250, inlinedAt: !4244)
!4250 = distinct !DILexicalBlock(scope: !4246, file: !784, line: 54, column: 5)
!4251 = !DILocation(line: 58, column: 7, scope: !4250, inlinedAt: !4244)
!4252 = !DILocation(line: 61, column: 7, scope: !4238, inlinedAt: !4244)
!4253 = !DILocation(line: 62, column: 8, scope: !4254, inlinedAt: !4244)
!4254 = distinct !DILexicalBlock(scope: !4238, file: !784, line: 62, column: 7)
!4255 = !DILocation(line: 62, column: 13, scope: !4254, inlinedAt: !4244)
!4256 = !DILocation(line: 62, column: 10, scope: !4254, inlinedAt: !4244)
!4257 = !DILocation(line: 63, column: 5, scope: !4254, inlinedAt: !4244)
!4258 = !DILocation(line: 116, column: 3, scope: !4224)
!4259 = !DILocation(line: 0, scope: !4238)
!4260 = !DILocation(line: 53, column: 8, scope: !4246)
!4261 = !DILocation(line: 53, column: 13, scope: !4246)
!4262 = !DILocation(line: 53, column: 10, scope: !4246)
!4263 = !DILocation(line: 57, column: 7, scope: !4250)
!4264 = !DILocation(line: 58, column: 7, scope: !4250)
!4265 = !DILocation(line: 61, column: 7, scope: !4238)
!4266 = !DILocation(line: 62, column: 8, scope: !4254)
!4267 = !DILocation(line: 62, column: 13, scope: !4254)
!4268 = !DILocation(line: 62, column: 10, scope: !4254)
!4269 = !DILocation(line: 63, column: 5, scope: !4254)
!4270 = !DILocation(line: 65, column: 1, scope: !4238)
!4271 = !DILocation(line: 0, scope: !787)
!4272 = !DILocation(line: 176, column: 14, scope: !787)
!4273 = !DILocation(line: 178, column: 9, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !787, file: !210, line: 178, column: 7)
!4275 = !DILocation(line: 178, column: 7, scope: !787)
!4276 = !DILocation(line: 180, column: 13, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4278, file: !210, line: 180, column: 11)
!4278 = distinct !DILexicalBlock(scope: !4274, file: !210, line: 179, column: 5)
!4279 = !DILocation(line: 180, column: 11, scope: !4278)
!4280 = !DILocation(line: 188, column: 30, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4277, file: !210, line: 181, column: 9)
!4282 = !DILocation(line: 189, column: 16, scope: !4281)
!4283 = !DILocation(line: 189, column: 13, scope: !4281)
!4284 = !DILocation(line: 190, column: 9, scope: !4281)
!4285 = !DILocation(line: 191, column: 11, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4278, file: !210, line: 191, column: 11)
!4287 = !DILocation(line: 191, column: 11, scope: !4278)
!4288 = !DILocation(line: 206, column: 7, scope: !787)
!4289 = !DILocation(line: 207, column: 25, scope: !787)
!4290 = !DILocation(line: 0, scope: !4238, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 207, column: 10, scope: !787)
!4292 = !DILocation(line: 53, column: 10, scope: !4246, inlinedAt: !4291)
!4293 = !DILocation(line: 192, column: 9, scope: !4286)
!4294 = !DILocation(line: 200, column: 69, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4296, file: !210, line: 200, column: 11)
!4296 = distinct !DILexicalBlock(scope: !4274, file: !210, line: 195, column: 5)
!4297 = !DILocation(line: 201, column: 11, scope: !4295)
!4298 = !DILocation(line: 200, column: 11, scope: !4296)
!4299 = !DILocation(line: 202, column: 9, scope: !4295)
!4300 = !DILocation(line: 203, column: 14, scope: !4296)
!4301 = !DILocation(line: 203, column: 18, scope: !4296)
!4302 = !DILocation(line: 203, column: 9, scope: !4296)
!4303 = !DILocation(line: 53, column: 8, scope: !4246, inlinedAt: !4291)
!4304 = !DILocation(line: 57, column: 7, scope: !4250, inlinedAt: !4291)
!4305 = !DILocation(line: 58, column: 7, scope: !4250, inlinedAt: !4291)
!4306 = !DILocation(line: 61, column: 7, scope: !4238, inlinedAt: !4291)
!4307 = !DILocation(line: 62, column: 8, scope: !4254, inlinedAt: !4291)
!4308 = !DILocation(line: 62, column: 13, scope: !4254, inlinedAt: !4291)
!4309 = !DILocation(line: 62, column: 10, scope: !4254, inlinedAt: !4291)
!4310 = !DILocation(line: 63, column: 5, scope: !4254, inlinedAt: !4291)
!4311 = !DILocation(line: 207, column: 3, scope: !787)
!4312 = distinct !DISubprogram(name: "xcharalloc", scope: !210, file: !210, line: 216, type: !3402, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4313)
!4313 = !{!4314}
!4314 = !DILocalVariable(name: "n", arg: 1, scope: !4312, file: !210, line: 216, type: !89)
!4315 = !DILocation(line: 0, scope: !4312)
!4316 = !DILocation(line: 0, scope: !4203, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 218, column: 10, scope: !4312)
!4318 = !DILocation(line: 41, column: 13, scope: !4203, inlinedAt: !4317)
!4319 = !DILocation(line: 42, column: 8, scope: !4212, inlinedAt: !4317)
!4320 = !DILocation(line: 42, column: 15, scope: !4212, inlinedAt: !4317)
!4321 = !DILocation(line: 42, column: 10, scope: !4212, inlinedAt: !4317)
!4322 = !DILocation(line: 43, column: 5, scope: !4212, inlinedAt: !4317)
!4323 = !DILocation(line: 218, column: 3, scope: !4312)
!4324 = distinct !DISubprogram(name: "x2realloc", scope: !784, file: !784, line: 74, type: !4325, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4327)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!87, !87, !790}
!4327 = !{!4328, !4329}
!4328 = !DILocalVariable(name: "p", arg: 1, scope: !4324, file: !784, line: 74, type: !87)
!4329 = !DILocalVariable(name: "pn", arg: 2, scope: !4324, file: !784, line: 74, type: !790)
!4330 = !DILocation(line: 0, scope: !4324)
!4331 = !DILocation(line: 0, scope: !787, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 76, column: 10, scope: !4324)
!4333 = !DILocation(line: 176, column: 14, scope: !787, inlinedAt: !4332)
!4334 = !DILocation(line: 178, column: 9, scope: !4274, inlinedAt: !4332)
!4335 = !DILocation(line: 178, column: 7, scope: !787, inlinedAt: !4332)
!4336 = !DILocation(line: 180, column: 13, scope: !4277, inlinedAt: !4332)
!4337 = !DILocation(line: 180, column: 11, scope: !4278, inlinedAt: !4332)
!4338 = !DILocation(line: 191, column: 11, scope: !4286, inlinedAt: !4332)
!4339 = !DILocation(line: 191, column: 11, scope: !4278, inlinedAt: !4332)
!4340 = !DILocation(line: 206, column: 7, scope: !787, inlinedAt: !4332)
!4341 = !DILocation(line: 0, scope: !4238, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 207, column: 10, scope: !787, inlinedAt: !4332)
!4343 = !DILocation(line: 53, column: 10, scope: !4246, inlinedAt: !4342)
!4344 = !DILocation(line: 192, column: 9, scope: !4286, inlinedAt: !4332)
!4345 = !DILocation(line: 201, column: 11, scope: !4295, inlinedAt: !4332)
!4346 = !DILocation(line: 200, column: 11, scope: !4296, inlinedAt: !4332)
!4347 = !DILocation(line: 202, column: 9, scope: !4295, inlinedAt: !4332)
!4348 = !DILocation(line: 203, column: 14, scope: !4296, inlinedAt: !4332)
!4349 = !DILocation(line: 203, column: 18, scope: !4296, inlinedAt: !4332)
!4350 = !DILocation(line: 203, column: 9, scope: !4296, inlinedAt: !4332)
!4351 = !DILocation(line: 53, column: 8, scope: !4246, inlinedAt: !4342)
!4352 = !DILocation(line: 57, column: 7, scope: !4250, inlinedAt: !4342)
!4353 = !DILocation(line: 58, column: 7, scope: !4250, inlinedAt: !4342)
!4354 = !DILocation(line: 61, column: 7, scope: !4238, inlinedAt: !4342)
!4355 = !DILocation(line: 62, column: 8, scope: !4254, inlinedAt: !4342)
!4356 = !DILocation(line: 62, column: 13, scope: !4254, inlinedAt: !4342)
!4357 = !DILocation(line: 62, column: 10, scope: !4254, inlinedAt: !4342)
!4358 = !DILocation(line: 63, column: 5, scope: !4254, inlinedAt: !4342)
!4359 = !DILocation(line: 76, column: 3, scope: !4324)
!4360 = distinct !DISubprogram(name: "xzalloc", scope: !784, file: !784, line: 84, type: !4204, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4361)
!4361 = !{!4362}
!4362 = !DILocalVariable(name: "n", arg: 1, scope: !4360, file: !784, line: 84, type: !89)
!4363 = !DILocation(line: 0, scope: !4360)
!4364 = !DILocalVariable(name: "n", arg: 1, scope: !4365, file: !784, line: 93, type: !89)
!4365 = distinct !DISubprogram(name: "xcalloc", scope: !784, file: !784, line: 93, type: !4191, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4366)
!4366 = !{!4364, !4367, !4368}
!4367 = !DILocalVariable(name: "s", arg: 2, scope: !4365, file: !784, line: 93, type: !89)
!4368 = !DILocalVariable(name: "p", scope: !4365, file: !784, line: 95, type: !87)
!4369 = !DILocation(line: 0, scope: !4365, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 86, column: 10, scope: !4360)
!4371 = !DILocation(line: 100, column: 7, scope: !4372, inlinedAt: !4370)
!4372 = distinct !DILexicalBlock(scope: !4365, file: !784, line: 100, column: 7)
!4373 = !DILocation(line: 101, column: 7, scope: !4372, inlinedAt: !4370)
!4374 = !DILocation(line: 101, column: 18, scope: !4372, inlinedAt: !4370)
!4375 = !DILocation(line: 101, column: 16, scope: !4372, inlinedAt: !4370)
!4376 = !DILocation(line: 100, column: 7, scope: !4365, inlinedAt: !4370)
!4377 = !DILocation(line: 102, column: 5, scope: !4372, inlinedAt: !4370)
!4378 = !DILocation(line: 86, column: 3, scope: !4360)
!4379 = !DILocation(line: 0, scope: !4365)
!4380 = !DILocation(line: 100, column: 7, scope: !4372)
!4381 = !DILocation(line: 101, column: 7, scope: !4372)
!4382 = !DILocation(line: 101, column: 18, scope: !4372)
!4383 = !DILocation(line: 101, column: 16, scope: !4372)
!4384 = !DILocation(line: 100, column: 7, scope: !4365)
!4385 = !DILocation(line: 102, column: 5, scope: !4372)
!4386 = !DILocation(line: 103, column: 3, scope: !4365)
!4387 = distinct !DISubprogram(name: "xmemdup", scope: !784, file: !784, line: 111, type: !4388, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4390)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!87, !636, !89}
!4390 = !{!4391, !4392}
!4391 = !DILocalVariable(name: "p", arg: 1, scope: !4387, file: !784, line: 111, type: !636)
!4392 = !DILocalVariable(name: "s", arg: 2, scope: !4387, file: !784, line: 111, type: !89)
!4393 = !DILocation(line: 0, scope: !4387)
!4394 = !DILocation(line: 0, scope: !4203, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 113, column: 18, scope: !4387)
!4396 = !DILocation(line: 41, column: 13, scope: !4203, inlinedAt: !4395)
!4397 = !DILocation(line: 42, column: 8, scope: !4212, inlinedAt: !4395)
!4398 = !DILocation(line: 42, column: 15, scope: !4212, inlinedAt: !4395)
!4399 = !DILocation(line: 42, column: 10, scope: !4212, inlinedAt: !4395)
!4400 = !DILocation(line: 43, column: 5, scope: !4212, inlinedAt: !4395)
!4401 = !DILocalVariable(name: "__dest", arg: 1, scope: !4402, file: !1724, line: 31, type: !4030)
!4402 = distinct !DISubprogram(name: "memcpy", scope: !1724, file: !1724, line: 31, type: !4028, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4403)
!4403 = !{!4401, !4404, !4405}
!4404 = !DILocalVariable(name: "__src", arg: 2, scope: !4402, file: !1724, line: 31, type: !4031)
!4405 = !DILocalVariable(name: "__len", arg: 3, scope: !4402, file: !1724, line: 31, type: !89)
!4406 = !DILocation(line: 0, scope: !4402, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 113, column: 10, scope: !4387)
!4408 = !DILocation(line: 34, column: 10, scope: !4402, inlinedAt: !4407)
!4409 = !DILocation(line: 113, column: 3, scope: !4387)
!4410 = distinct !DISubprogram(name: "xstrdup", scope: !784, file: !784, line: 119, type: !109, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4411)
!4411 = !{!4412}
!4412 = !DILocalVariable(name: "string", arg: 1, scope: !4410, file: !784, line: 119, type: !32)
!4413 = !DILocation(line: 0, scope: !4410)
!4414 = !DILocation(line: 121, column: 27, scope: !4410)
!4415 = !DILocation(line: 121, column: 43, scope: !4410)
!4416 = !DILocation(line: 0, scope: !4387, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 121, column: 10, scope: !4410)
!4418 = !DILocation(line: 0, scope: !4203, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 113, column: 18, scope: !4387, inlinedAt: !4417)
!4420 = !DILocation(line: 41, column: 13, scope: !4203, inlinedAt: !4419)
!4421 = !DILocation(line: 42, column: 8, scope: !4212, inlinedAt: !4419)
!4422 = !DILocation(line: 42, column: 15, scope: !4212, inlinedAt: !4419)
!4423 = !DILocation(line: 42, column: 10, scope: !4212, inlinedAt: !4419)
!4424 = !DILocation(line: 43, column: 5, scope: !4212, inlinedAt: !4419)
!4425 = !DILocation(line: 0, scope: !4402, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 113, column: 10, scope: !4387, inlinedAt: !4417)
!4427 = !DILocation(line: 34, column: 10, scope: !4402, inlinedAt: !4426)
!4428 = !DILocation(line: 121, column: 3, scope: !4410)
!4429 = distinct !DISubprogram(name: "xalloc_die", scope: !805, file: !805, line: 32, type: !116, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !35)
!4430 = !DILocation(line: 34, column: 10, scope: !4429)
!4431 = !DILocation(line: 34, column: 33, scope: !4429)
!4432 = !DILocation(line: 34, column: 3, scope: !4429)
!4433 = !DILocation(line: 40, column: 3, scope: !4429)
!4434 = distinct !DISubprogram(name: "rpl_calloc", scope: !808, file: !808, line: 42, type: !4191, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !4435)
!4435 = !{!4436, !4437, !4438, !4439}
!4436 = !DILocalVariable(name: "n", arg: 1, scope: !4434, file: !808, line: 42, type: !89)
!4437 = !DILocalVariable(name: "s", arg: 2, scope: !4434, file: !808, line: 42, type: !89)
!4438 = !DILocalVariable(name: "result", scope: !4434, file: !808, line: 44, type: !87)
!4439 = !DILocalVariable(name: "bytes", scope: !4440, file: !808, line: 56, type: !89)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !808, line: 53, column: 5)
!4441 = distinct !DILexicalBlock(scope: !4434, file: !808, line: 47, column: 7)
!4442 = !DILocation(line: 0, scope: !4434)
!4443 = !DILocation(line: 47, column: 9, scope: !4441)
!4444 = !DILocation(line: 47, column: 19, scope: !4441)
!4445 = !DILocation(line: 47, column: 14, scope: !4441)
!4446 = !DILocation(line: 0, scope: !4440)
!4447 = !DILocation(line: 57, column: 21, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4440, file: !808, line: 57, column: 11)
!4449 = !DILocation(line: 57, column: 11, scope: !4440)
!4450 = !DILocation(line: 59, column: 11, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4448, file: !808, line: 58, column: 9)
!4452 = !DILocation(line: 59, column: 17, scope: !4451)
!4453 = !DILocation(line: 65, column: 12, scope: !4434)
!4454 = !DILocation(line: 72, column: 3, scope: !4434)
!4455 = !DILocation(line: 73, column: 1, scope: !4434)
!4456 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !811, file: !811, line: 86, type: !4457, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4463)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!89, !4459, !32, !89, !4460}
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2679, line: 6, baseType: !4462)
!4462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !660, line: 21, baseType: !817)
!4463 = !{!4464, !4465, !4466, !4467, !4468, !4469, !4470}
!4464 = !DILocalVariable(name: "pwc", arg: 1, scope: !4456, file: !811, line: 86, type: !4459)
!4465 = !DILocalVariable(name: "s", arg: 2, scope: !4456, file: !811, line: 86, type: !32)
!4466 = !DILocalVariable(name: "n", arg: 3, scope: !4456, file: !811, line: 86, type: !89)
!4467 = !DILocalVariable(name: "ps", arg: 4, scope: !4456, file: !811, line: 86, type: !4460)
!4468 = !DILocalVariable(name: "ret", scope: !4456, file: !811, line: 88, type: !89)
!4469 = !DILocalVariable(name: "wc", scope: !4456, file: !811, line: 89, type: !2683)
!4470 = !DILocalVariable(name: "uc", scope: !4471, file: !811, line: 156, type: !426)
!4471 = distinct !DILexicalBlock(scope: !4472, file: !811, line: 155, column: 5)
!4472 = distinct !DILexicalBlock(scope: !4456, file: !811, line: 154, column: 7)
!4473 = !DILocation(line: 0, scope: !4456)
!4474 = !DILocation(line: 89, column: 3, scope: !4456)
!4475 = !DILocation(line: 105, column: 9, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4456, file: !811, line: 105, column: 7)
!4477 = !DILocation(line: 105, column: 7, scope: !4456)
!4478 = !DILocation(line: 145, column: 9, scope: !4456)
!4479 = !DILocation(line: 154, column: 19, scope: !4472)
!4480 = !DILocation(line: 154, column: 31, scope: !4472)
!4481 = !DILocation(line: 154, column: 26, scope: !4472)
!4482 = !DILocation(line: 154, column: 41, scope: !4472)
!4483 = !DILocation(line: 154, column: 7, scope: !4456)
!4484 = !DILocation(line: 156, column: 26, scope: !4471)
!4485 = !DILocation(line: 0, scope: !4471)
!4486 = !DILocation(line: 157, column: 14, scope: !4471)
!4487 = !DILocation(line: 157, column: 12, scope: !4471)
!4488 = !DILocation(line: 163, column: 1, scope: !4456)
!4489 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !826, file: !826, line: 49, type: !4490, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4495)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!30, !4492}
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4494)
!4494 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !843)
!4495 = !{!4496, !4497, !4498}
!4496 = !DILocalVariable(name: "ut", arg: 1, scope: !4489, file: !826, line: 49, type: !4492)
!4497 = !DILocalVariable(name: "p", scope: !4489, file: !826, line: 51, type: !30)
!4498 = !DILocalVariable(name: "trimmed_name", scope: !4489, file: !826, line: 51, type: !30)
!4499 = !DILocation(line: 0, scope: !4489)
!4500 = !DILocation(line: 53, column: 18, scope: !4489)
!4501 = !DILocation(line: 54, column: 26, scope: !4489)
!4502 = !DILocalVariable(name: "__dest", arg: 1, scope: !4503, file: !1724, line: 103, type: !1727)
!4503 = distinct !DISubprogram(name: "strncpy", scope: !1724, file: !1724, line: 103, type: !1788, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4504)
!4504 = !{!4502, !4505, !4506}
!4505 = !DILocalVariable(name: "__src", arg: 2, scope: !4503, file: !1724, line: 103, type: !1728)
!4506 = !DILocalVariable(name: "__len", arg: 3, scope: !4503, file: !1724, line: 103, type: !89)
!4507 = !DILocation(line: 0, scope: !4503, inlinedAt: !4508)
!4508 = distinct !DILocation(line: 54, column: 3, scope: !4489)
!4509 = !DILocation(line: 106, column: 10, scope: !4503, inlinedAt: !4508)
!4510 = !DILocation(line: 58, column: 3, scope: !4489)
!4511 = !DILocation(line: 58, column: 39, scope: !4489)
!4512 = !DILocation(line: 59, column: 27, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4489, file: !826, line: 59, column: 3)
!4514 = !DILocation(line: 60, column: 21, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4513, file: !826, line: 59, column: 3)
!4516 = !DILocation(line: 60, column: 25, scope: !4515)
!4517 = !DILocation(line: 59, column: 25, scope: !4513)
!4518 = !DILocation(line: 59, column: 3, scope: !4513)
!4519 = !DILocation(line: 60, column: 28, scope: !4515)
!4520 = !DILocation(line: 60, column: 34, scope: !4515)
!4521 = !DILocation(line: 61, column: 13, scope: !4515)
!4522 = distinct !{!4522, !4518, !4523}
!4523 = !DILocation(line: 62, column: 5, scope: !4513)
!4524 = !DILocation(line: 63, column: 3, scope: !4489)
!4525 = distinct !DISubprogram(name: "read_utmp", scope: !826, file: !826, line: 92, type: !4526, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4530)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!34, !32, !790, !4528, !34}
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4530 = !{!4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538}
!4531 = !DILocalVariable(name: "file", arg: 1, scope: !4525, file: !826, line: 92, type: !32)
!4532 = !DILocalVariable(name: "n_entries", arg: 2, scope: !4525, file: !826, line: 92, type: !790)
!4533 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !4525, file: !826, line: 92, type: !4528)
!4534 = !DILocalVariable(name: "options", arg: 4, scope: !4525, file: !826, line: 93, type: !34)
!4535 = !DILocalVariable(name: "n_read", scope: !4525, file: !826, line: 95, type: !89)
!4536 = !DILocalVariable(name: "n_alloc", scope: !4525, file: !826, line: 96, type: !89)
!4537 = !DILocalVariable(name: "utmp", scope: !4525, file: !826, line: 97, type: !4529)
!4538 = !DILocalVariable(name: "u", scope: !4525, file: !826, line: 98, type: !4529)
!4539 = !DILocation(line: 0, scope: !4525)
!4540 = !DILocation(line: 104, column: 3, scope: !4525)
!4541 = !DILocation(line: 106, column: 3, scope: !4525)
!4542 = !DILocation(line: 108, column: 15, scope: !4525)
!4543 = !DILocation(line: 108, column: 32, scope: !4525)
!4544 = !DILocation(line: 108, column: 3, scope: !4525)
!4545 = !DILocation(line: 0, scope: !4546, inlinedAt: !4554)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !826, line: 72, column: 7)
!4547 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !826, file: !826, line: 69, type: !4548, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4550)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!141, !4492, !34}
!4550 = !{!4551, !4552, !4553}
!4551 = !DILocalVariable(name: "u", arg: 1, scope: !4547, file: !826, line: 69, type: !4492)
!4552 = !DILocalVariable(name: "options", arg: 2, scope: !4547, file: !826, line: 69, type: !34)
!4553 = !DILocalVariable(name: "user_proc", scope: !4547, file: !826, line: 71, type: !141)
!4554 = distinct !DILocation(line: 109, column: 9, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4525, file: !826, line: 109, column: 9)
!4556 = !DILocation(line: 0, scope: !4557, inlinedAt: !4554)
!4557 = distinct !DILexicalBlock(scope: !4547, file: !826, line: 74, column: 7)
!4558 = !DILocation(line: 0, scope: !4547, inlinedAt: !4554)
!4559 = !DILocation(line: 71, column: 20, scope: !4547, inlinedAt: !4554)
!4560 = !DILocation(line: 72, column: 42, scope: !4546, inlinedAt: !4554)
!4561 = !DILocation(line: 75, column: 7, scope: !4557, inlinedAt: !4554)
!4562 = !DILocation(line: 76, column: 14, scope: !4557, inlinedAt: !4554)
!4563 = !DILocation(line: 76, column: 12, scope: !4557, inlinedAt: !4554)
!4564 = !DILocation(line: 77, column: 7, scope: !4557, inlinedAt: !4554)
!4565 = !DILocation(line: 77, column: 11, scope: !4557, inlinedAt: !4554)
!4566 = !DILocation(line: 77, column: 32, scope: !4557, inlinedAt: !4554)
!4567 = !DILocation(line: 77, column: 36, scope: !4557, inlinedAt: !4554)
!4568 = !DILocation(line: 77, column: 39, scope: !4557, inlinedAt: !4554)
!4569 = !DILocation(line: 77, column: 45, scope: !4557, inlinedAt: !4554)
!4570 = !DILocation(line: 74, column: 7, scope: !4547, inlinedAt: !4554)
!4571 = !DILocation(line: 111, column: 20, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !826, line: 111, column: 13)
!4573 = distinct !DILexicalBlock(scope: !4555, file: !826, line: 110, column: 7)
!4574 = !DILocation(line: 111, column: 13, scope: !4573)
!4575 = !DILocation(line: 112, column: 30, scope: !4572)
!4576 = !DILocation(line: 0, scope: !829, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 112, column: 18, scope: !4572)
!4578 = !DILocation(line: 178, column: 9, scope: !4579, inlinedAt: !4577)
!4579 = distinct !DILexicalBlock(scope: !829, file: !210, line: 178, column: 7)
!4580 = !DILocation(line: 178, column: 7, scope: !829, inlinedAt: !4577)
!4581 = !DILocation(line: 180, column: 13, scope: !4582, inlinedAt: !4577)
!4582 = distinct !DILexicalBlock(scope: !4583, file: !210, line: 180, column: 11)
!4583 = distinct !DILexicalBlock(scope: !4579, file: !210, line: 179, column: 5)
!4584 = !DILocation(line: 180, column: 11, scope: !4583, inlinedAt: !4577)
!4585 = !DILocation(line: 191, column: 11, scope: !4586, inlinedAt: !4577)
!4586 = distinct !DILexicalBlock(scope: !4583, file: !210, line: 191, column: 11)
!4587 = !DILocation(line: 191, column: 11, scope: !4583, inlinedAt: !4577)
!4588 = !DILocation(line: 192, column: 9, scope: !4586, inlinedAt: !4577)
!4589 = !DILocation(line: 201, column: 11, scope: !4590, inlinedAt: !4577)
!4590 = distinct !DILexicalBlock(scope: !4591, file: !210, line: 200, column: 11)
!4591 = distinct !DILexicalBlock(scope: !4579, file: !210, line: 195, column: 5)
!4592 = !DILocation(line: 200, column: 11, scope: !4591, inlinedAt: !4577)
!4593 = !DILocation(line: 202, column: 9, scope: !4590, inlinedAt: !4577)
!4594 = !DILocation(line: 203, column: 14, scope: !4591, inlinedAt: !4577)
!4595 = !DILocation(line: 203, column: 18, scope: !4591, inlinedAt: !4577)
!4596 = !DILocation(line: 203, column: 9, scope: !4591, inlinedAt: !4577)
!4597 = !DILocation(line: 207, column: 25, scope: !829, inlinedAt: !4577)
!4598 = !DILocation(line: 207, column: 10, scope: !829, inlinedAt: !4577)
!4599 = !DILocation(line: 112, column: 18, scope: !4572)
!4600 = !DILocation(line: 112, column: 11, scope: !4572)
!4601 = !DILocation(line: 114, column: 20, scope: !4573)
!4602 = !DILocation(line: 114, column: 9, scope: !4573)
!4603 = !DILocation(line: 114, column: 26, scope: !4573)
!4604 = !{i64 0, i64 2, !2929, i64 4, i64 4, !1574, i64 8, i64 32, !1674, i64 40, i64 4, !1674, i64 44, i64 32, !1674, i64 76, i64 256, !1674, i64 332, i64 2, !2929, i64 334, i64 2, !2929, i64 336, i64 4, !1574, i64 340, i64 4, !1574, i64 344, i64 4, !1574, i64 348, i64 16, !1674, i64 364, i64 20, !1674}
!4605 = !DILocation(line: 115, column: 7, scope: !4573)
!4606 = distinct !{!4606, !4544, !4607}
!4607 = !DILocation(line: 115, column: 7, scope: !4525)
!4608 = !DILocation(line: 117, column: 3, scope: !4525)
!4609 = !DILocation(line: 119, column: 14, scope: !4525)
!4610 = !DILocation(line: 120, column: 13, scope: !4525)
!4611 = !DILocation(line: 122, column: 3, scope: !4525)
!4612 = distinct !DISubprogram(name: "close_stream", scope: !870, file: !870, line: 56, type: !4613, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4617)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!34, !4615}
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4066, line: 7, baseType: !877)
!4617 = !{!4618, !4619, !4621, !4622}
!4618 = !DILocalVariable(name: "stream", arg: 1, scope: !4612, file: !870, line: 56, type: !4615)
!4619 = !DILocalVariable(name: "some_pending", scope: !4612, file: !870, line: 58, type: !4620)
!4620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!4621 = !DILocalVariable(name: "prev_fail", scope: !4612, file: !870, line: 59, type: !4620)
!4622 = !DILocalVariable(name: "fclose_fail", scope: !4612, file: !870, line: 60, type: !4620)
!4623 = !DILocation(line: 0, scope: !4612)
!4624 = !DILocation(line: 58, column: 30, scope: !4612)
!4625 = !DILocalVariable(name: "__stream", arg: 1, scope: !4626, file: !4627, line: 135, type: !4615)
!4626 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4627, file: !4627, line: 135, type: !4613, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4628)
!4627 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4628 = !{!4625}
!4629 = !DILocation(line: 0, scope: !4626, inlinedAt: !4630)
!4630 = distinct !DILocation(line: 59, column: 27, scope: !4612)
!4631 = !DILocation(line: 137, column: 10, scope: !4626, inlinedAt: !4630)
!4632 = !{!4633, !1575, i64 0}
!4633 = !{!"_IO_FILE", !1575, i64 0, !1460, i64 8, !1460, i64 16, !1460, i64 24, !1460, i64 32, !1460, i64 40, !1460, i64 48, !1460, i64 56, !1460, i64 64, !1460, i64 72, !1460, i64 80, !1460, i64 88, !1460, i64 96, !1460, i64 104, !1575, i64 112, !1575, i64 116, !1657, i64 120, !1677, i64 128, !1461, i64 130, !1461, i64 131, !1460, i64 136, !1657, i64 144, !1460, i64 152, !1460, i64 160, !1460, i64 168, !1460, i64 176, !1657, i64 184, !1575, i64 192, !1461, i64 196}
!4634 = !DILocation(line: 59, column: 43, scope: !4612)
!4635 = !DILocation(line: 60, column: 29, scope: !4612)
!4636 = !DILocation(line: 60, column: 45, scope: !4612)
!4637 = !DILocation(line: 70, column: 17, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4612, file: !870, line: 70, column: 7)
!4639 = !DILocation(line: 58, column: 50, scope: !4612)
!4640 = !DILocation(line: 70, column: 33, scope: !4638)
!4641 = !DILocation(line: 70, column: 53, scope: !4638)
!4642 = !DILocation(line: 70, column: 59, scope: !4638)
!4643 = !DILocation(line: 70, column: 7, scope: !4612)
!4644 = !DILocation(line: 72, column: 11, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4638, file: !870, line: 71, column: 5)
!4646 = !DILocation(line: 73, column: 9, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4645, file: !870, line: 72, column: 11)
!4648 = !DILocation(line: 73, column: 15, scope: !4647)
!4649 = !DILocation(line: 78, column: 1, scope: !4612)
!4650 = distinct !DISubprogram(name: "locale_charset", scope: !909, file: !909, line: 831, type: !680, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !4651)
!4651 = !{!4652}
!4652 = !DILocalVariable(name: "codeset", scope: !4650, file: !909, line: 833, type: !32)
!4653 = !DILocation(line: 847, column: 13, scope: !4650)
!4654 = !DILocation(line: 0, scope: !4650)
!4655 = !DILocation(line: 911, column: 15, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4650, file: !909, line: 911, column: 7)
!4657 = !DILocation(line: 911, column: 7, scope: !4650)
!4658 = !DILocation(line: 1070, column: 13, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4660, file: !909, line: 1070, column: 13)
!4660 = distinct !DILexicalBlock(scope: !4661, file: !909, line: 1060, column: 7)
!4661 = distinct !DILexicalBlock(scope: !4650, file: !909, line: 1019, column: 3)
!4662 = !DILocation(line: 1070, column: 24, scope: !4659)
!4663 = !DILocation(line: 1070, column: 13, scope: !4660)
!4664 = !DILocation(line: 1158, column: 3, scope: !4650)
!4665 = distinct !DISubprogram(name: "rpl_fclose", scope: !1300, file: !1300, line: 58, type: !4666, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1299, retainedNodes: !4670)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!34, !4668}
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4066, line: 7, baseType: !1306)
!4670 = !{!4671, !4672, !4673, !4674}
!4671 = !DILocalVariable(name: "fp", arg: 1, scope: !4665, file: !1300, line: 58, type: !4668)
!4672 = !DILocalVariable(name: "saved_errno", scope: !4665, file: !1300, line: 60, type: !34)
!4673 = !DILocalVariable(name: "fd", scope: !4665, file: !1300, line: 61, type: !34)
!4674 = !DILocalVariable(name: "result", scope: !4665, file: !1300, line: 62, type: !34)
!4675 = !DILocation(line: 0, scope: !4665)
!4676 = !DILocation(line: 65, column: 8, scope: !4665)
!4677 = !DILocation(line: 66, column: 10, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4665, file: !1300, line: 66, column: 7)
!4679 = !DILocation(line: 66, column: 7, scope: !4665)
!4680 = !DILocation(line: 67, column: 12, scope: !4678)
!4681 = !DILocation(line: 67, column: 5, scope: !4678)
!4682 = !DILocation(line: 72, column: 9, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4665, file: !1300, line: 72, column: 7)
!4684 = !DILocation(line: 72, column: 23, scope: !4683)
!4685 = !DILocation(line: 72, column: 33, scope: !4683)
!4686 = !DILocation(line: 72, column: 26, scope: !4683)
!4687 = !DILocation(line: 72, column: 59, scope: !4683)
!4688 = !DILocation(line: 73, column: 7, scope: !4683)
!4689 = !DILocation(line: 73, column: 10, scope: !4683)
!4690 = !DILocation(line: 72, column: 7, scope: !4665)
!4691 = !DILocation(line: 100, column: 12, scope: !4665)
!4692 = !DILocation(line: 105, column: 7, scope: !4665)
!4693 = !DILocation(line: 74, column: 19, scope: !4683)
!4694 = !DILocation(line: 105, column: 19, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4665, file: !1300, line: 105, column: 7)
!4696 = !DILocation(line: 107, column: 13, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4695, file: !1300, line: 106, column: 5)
!4698 = !DILocation(line: 109, column: 5, scope: !4697)
!4699 = !DILocation(line: 112, column: 1, scope: !4665)
!4700 = distinct !DISubprogram(name: "rpl_fflush", scope: !1343, file: !1343, line: 129, type: !4701, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1342, retainedNodes: !4705)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!34, !4703}
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4066, line: 7, baseType: !1349)
!4705 = !{!4706}
!4706 = !DILocalVariable(name: "stream", arg: 1, scope: !4700, file: !1343, line: 129, type: !4703)
!4707 = !DILocation(line: 0, scope: !4700)
!4708 = !DILocation(line: 150, column: 14, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4700, file: !1343, line: 150, column: 7)
!4710 = !DILocation(line: 150, column: 22, scope: !4709)
!4711 = !DILocation(line: 150, column: 27, scope: !4709)
!4712 = !DILocation(line: 150, column: 7, scope: !4700)
!4713 = !DILocation(line: 151, column: 12, scope: !4709)
!4714 = !DILocation(line: 151, column: 5, scope: !4709)
!4715 = !DILocalVariable(name: "fp", arg: 1, scope: !4716, file: !1343, line: 41, type: !4703)
!4716 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1343, file: !1343, line: 41, type: !4717, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1342, retainedNodes: !4719)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{null, !4703}
!4719 = !{!4715}
!4720 = !DILocation(line: 0, scope: !4716, inlinedAt: !4721)
!4721 = distinct !DILocation(line: 156, column: 3, scope: !4700)
!4722 = !DILocation(line: 43, column: 11, scope: !4723, inlinedAt: !4721)
!4723 = distinct !DILexicalBlock(scope: !4716, file: !1343, line: 43, column: 7)
!4724 = !DILocation(line: 43, column: 18, scope: !4723, inlinedAt: !4721)
!4725 = !DILocation(line: 43, column: 7, scope: !4716, inlinedAt: !4721)
!4726 = !DILocation(line: 45, column: 5, scope: !4723, inlinedAt: !4721)
!4727 = !DILocation(line: 158, column: 10, scope: !4700)
!4728 = !DILocation(line: 158, column: 3, scope: !4700)
!4729 = !DILocation(line: 235, column: 1, scope: !4700)
!4730 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1384, file: !1384, line: 28, type: !4731, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1383, retainedNodes: !4736)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!34, !4733, !4735, !34}
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4066, line: 7, baseType: !1390)
!4735 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !37, line: 63, baseType: !63)
!4736 = !{!4737, !4738, !4739, !4740}
!4737 = !DILocalVariable(name: "fp", arg: 1, scope: !4730, file: !1384, line: 28, type: !4733)
!4738 = !DILocalVariable(name: "offset", arg: 2, scope: !4730, file: !1384, line: 28, type: !4735)
!4739 = !DILocalVariable(name: "whence", arg: 3, scope: !4730, file: !1384, line: 28, type: !34)
!4740 = !DILocalVariable(name: "pos", scope: !4741, file: !1384, line: 117, type: !4735)
!4741 = distinct !DILexicalBlock(scope: !4742, file: !1384, line: 113, column: 5)
!4742 = distinct !DILexicalBlock(scope: !4730, file: !1384, line: 52, column: 7)
!4743 = !DILocation(line: 0, scope: !4730)
!4744 = !DILocation(line: 52, column: 11, scope: !4742)
!4745 = !{!4633, !1460, i64 16}
!4746 = !DILocation(line: 52, column: 31, scope: !4742)
!4747 = !{!4633, !1460, i64 8}
!4748 = !DILocation(line: 52, column: 24, scope: !4742)
!4749 = !DILocation(line: 53, column: 7, scope: !4742)
!4750 = !DILocation(line: 53, column: 14, scope: !4742)
!4751 = !{!4633, !1460, i64 40}
!4752 = !DILocation(line: 53, column: 35, scope: !4742)
!4753 = !{!4633, !1460, i64 32}
!4754 = !DILocation(line: 53, column: 28, scope: !4742)
!4755 = !DILocation(line: 54, column: 7, scope: !4742)
!4756 = !DILocation(line: 54, column: 14, scope: !4742)
!4757 = !{!4633, !1460, i64 72}
!4758 = !DILocation(line: 54, column: 28, scope: !4742)
!4759 = !DILocation(line: 52, column: 7, scope: !4730)
!4760 = !DILocation(line: 117, column: 26, scope: !4741)
!4761 = !DILocation(line: 117, column: 19, scope: !4741)
!4762 = !DILocation(line: 0, scope: !4741)
!4763 = !DILocation(line: 118, column: 15, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4741, file: !1384, line: 118, column: 11)
!4765 = !DILocation(line: 118, column: 11, scope: !4741)
!4766 = !DILocation(line: 129, column: 11, scope: !4741)
!4767 = !DILocation(line: 129, column: 18, scope: !4741)
!4768 = !DILocation(line: 130, column: 11, scope: !4741)
!4769 = !DILocation(line: 130, column: 19, scope: !4741)
!4770 = !{!4633, !1657, i64 144}
!4771 = !DILocation(line: 161, column: 7, scope: !4741)
!4772 = !DILocation(line: 163, column: 10, scope: !4730)
!4773 = !DILocation(line: 163, column: 3, scope: !4730)
!4774 = !DILocation(line: 164, column: 1, scope: !4730)
